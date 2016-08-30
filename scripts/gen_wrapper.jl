using PyCall

@pyimport selenium.webdriver as wd

function gen_wrapper(class, objarg, doc_section; jl_wrap=(x,y)->y, curry=false)
    methods = doc_section[:find_elements_by_css_selector](".method")
    attr = doc_section[:find_elements_by_css_selector](".attribute")

    ms = map(f->gen_method(class, f, objarg; jl_wrap=jl_wrap, curry=curry), methods)
    as = map(f->gen_method(class, f, objarg, true; jl_wrap=jl_wrap, curry=curry), attr)
    names = vcat(map(first, ms), map(first, as))
    code = vcat(map(last, ms), map(last, as))
    "export " * join(names, ",") *"\n\n"* join(code, "\n\n")
end

find(x, q) = x[:find_element_by_css_selector](q)
findall(x, q) = x[:find_elements_by_css_selector](q)

cleanup_quotes(str) = replace(str, r"“|”|‘|’|'", "\"")

function strip_default(arg)
    idx = findfirst(arg, '=')
    maybe_splat(idx == 0 ? arg : arg[1:idx-1])
end

maybe_splat(x) =
    if startswith(x, "**")
        "; $(x[3:end])..."
    elseif startswith(x, "*")
        "$(x[3:end])..."
    else
        x
    end

function rewrite_default(arg)
    idx = findfirst(arg, '=')
    if idx == 0 
        return maybe_splat(arg)
    else
        k = arg[1:idx-1]
        argval = rewrite_val(arg[idx+1:end])
        return "$k = $argval"
    end
end

function rewrite_val(v)
    if v == "None"
        "nothing"
    elseif v in ("False", "True")
        lowercase(v)
    else
        cleanup_quotes(v)
    end
end


function gen_method(class, el, objarg, attr=false; jl_wrap=(fn, x)->x, curry=false)
    fn = find(el, ".descname")[:text]
    args = map(x->x[:text], findall(el, "em"))
    doc = cleanup_quotes(find(el, "dd")[:text])
    expr = if attr
        """$objarg.o[:$fn]"""
    else
        """$objarg.o[:$fn]($(join(map(strip_default, args), ", ")))"""
    end

    expr = jl_wrap(fn, expr)
    method2 = if curry
        """

        $fn($(join(map(rewrite_default, args), ", "))) = $objarg -> $expr
        """
    else
        ""
    end

    fn => ("""
    \"\"\"
    $doc
    \"\"\"
    $fn($objarg::$class, $(join(map(rewrite_default, args), ", "))) = $expr
    """ * method2)

end

code = ""
#### Remote WebDriver

driver = wd.PhantomJS("phantomjs")

driver[:get]("http://selenium-python.readthedocs.io/api.html")

remote_section =
    driver[:find_element_by_id]("module-selenium.webdriver.remote.webdriver")

function wrap_elem(fn, expr)
    if startswith(fn, "find_elements")
        expr = "map(WebElement, $expr)"
    elseif startswith(fn, "find_element")
        expr = "WebElement($expr)"
    end
end


code *= gen_wrapper(:Driver, :driver, remote_section, jl_wrap=wrap_elem)


#### WebElement

webel_section =
    driver[:find_element_by_id]("module-selenium.webdriver.remote.webelement")

code *= gen_wrapper(:WebElement, :elem, webel_section)


#### Action chains

action_chain_section =
    driver[:find_element_by_id]("module-selenium.webdriver.common.action_chains")

function chain_wrapper(fn, x)
    if fn == "perform"
        x
    else
        "ActionChain($x)"
    end
end

code *= gen_wrapper(:ActionChain, :chain, action_chain_section; jl_wrap=chain_wrapper, curry=true)

println(code)