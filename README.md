# WebDriver

This is a wrapper around [Selenium WebDriver](http://www.seleniumhq.org/projects/webdriver/)'s [python bindings](http://selenium-python.readthedocs.io/api.html). It can be used to write web-browser interaction tests in Julia.

This wrapper is auto-generated from the [API documentation page](http://selenium-python.readthedocs.io/api.html) and provides some nieceties that Julia programmers are used to. See [usage](#usage) section for more.


## Installation

- you will need to install the `selenium` python package.
- you will need to set up ChromeDriver to use the google chrome for running web driver
- a good backend to use to run the web driver is [PhantomJS]()
- if you have firefox already installed, you should be able to use the Firefox backend. See below to learn how to use different backends to run webdriver scripts.
- Clone this repository into "~/.julia/v0.6/"; replace 0.6 with the appropriate version number
- Rename the clone repository into WebDriver (from WebDriver.jl)

```julia
Pkg.add("PyCall") # to make Python calls
```

## Usage

### Initialization

You will need to driver object first to use the other methods. The `init_*` functions start off different browsers and give you back a `Driver` object.
```julia
using WebDriver

driver = init_phantomjs() # assuming phantomjs is in path, otherwise you can pass in the path as the first argument
driver = init_firefox()
driver = init_chrome() # needs ChromeDriver
```

### Opening a page

```julia
julia> d = init_firefox()
julia> get(d, "https://duckduckgo.com")
```

### Finding elements

`find` and `findall` are shorthands for `find_element_by_css_selector` and `find_elements_by_css_selector` respectively. It might remind you of `jQuery.$`. These provide the most convenient way to look up elements in the DOM.

```julia
julia> search_box = find(d, "[name=q]")
```
### Sending keys

```julia
julia> send_keys(search_box, "Julia")
julia> get(d, "[name=x]") |> submit # find the search form and submit it
julia> find(find(d, "#r1-1"), ".result__title") |> text
"The Julia Language"
```

### Chaining actions

You can chain a bunch of actions together and `perform` them at once using the `ActionChain` object.

```julia
actions = ActionChain(driver)
move_to_element(actions, menu)
click(actions, hidden_submenu)
perform(actions)
```

There are curried methods for these functions to make for a "fluent" way of writing these.

```julia
ActionChain(driver) |>
  move_to_element(menu) |>
  click() |>
  send_keys(Keys.TAB) |>
  perform
```
