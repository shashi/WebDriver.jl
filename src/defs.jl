using PyCall

@pyimport selenium.webdriver as wd

immutable Driver
    o::PyObject
end
PyObject(x::Driver) = x.o

for attr in [:session_id, :capabilities, :command_executor, :error_handler]
    @eval $attr(w::Driver) = w.o[:$attr]
end


immutable WebElement
    o::PyObject
end
PyObject(x::WebElement) = x.o


init_phantom(args...) = Driver(wd.PhantomJS(args...))
init_firefox(args...) = Driver(wd.Firefox(args...))
init_chrome(args...) = Driver(wd.Chrome(args...))
init_ie(args...) = Driver(wd.Ie(args...))


immutable ActionChain
    o::PyObject
end

ActionChain(x::Driver) = ActionChain(wd.ActionChains(x.o))

PyObject(x::ActionChain) = x.o
