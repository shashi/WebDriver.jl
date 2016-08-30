export add_cookie,back,close,create_web_element,delete_all_cookies,delete_cookie,execute,execute_async_script,execute_script,file_detector_context,find_element,find_element_by_class_name,find_element_by_css_selector,find_element_by_id,find_element_by_link_text,find_element_by_name,find_element_by_partial_link_text,find_element_by_tag_name,find_element_by_xpath,find_elements,find_elements_by_class_name,find_elements_by_css_selector,find_elements_by_id,find_elements_by_link_text,find_elements_by_name,find_elements_by_partial_link_text,find_elements_by_tag_name,find_elements_by_xpath,forward,get,get_cookie,get_cookies,get_log,get_screenshot_as_base64,get_screenshot_as_file,get_screenshot_as_png,get_window_position,get_window_size,implicitly_wait,maximize_window,quit,refresh,save_screenshot,set_page_load_timeout,set_script_timeout,set_window_position,set_window_size,start_client,start_session,stop_client,switch_to_active_element,switch_to_alert,switch_to_default_content,switch_to_frame,switch_to_window,application_cache,current_url,current_window_handle,desired_capabilities,file_detector,log_types,mobile,name,orientation,page_source,switch_to,title,window_handles

"""
Adds a cookie to your current session.
Args:
cookie_dict: A dictionary object, with required keys - "name" and "value";
optional keys - "path", "domain", "secure", "expiry"
Usage:
driver.add_cookie({"name" : "foo", "value" : "bar"}) driver.add_cookie({"name" : "foo", "value" : "bar", "path" : "/"}) driver.add_cookie({"name" : "foo", "value" : "bar", "path" : "/", "secure":True})
"""
add_cookie(driver::Driver, cookie_dict) = driver.o[:add_cookie](cookie_dict)


"""
Goes one step backward in the browser history.
Usage: driver.back()
"""
back(driver::Driver, ) = driver.o[:back]()


"""
Closes the current window.
Usage: driver.close()
"""
close(driver::Driver, ) = driver.o[:close]()


"""
Creates a web element with the specified element_id.
"""
create_web_element(driver::Driver, element_id) = driver.o[:create_web_element](element_id)


"""
Delete all cookies in the scope of the session.
Usage: driver.delete_all_cookies()
"""
delete_all_cookies(driver::Driver, ) = driver.o[:delete_all_cookies]()


"""
Deletes a single cookie with the given name.
Usage: driver.delete_cookie("my_cookie")
"""
delete_cookie(driver::Driver, name) = driver.o[:delete_cookie](name)


"""
Sends a command to be executed by a command.CommandExecutor.
Args:
driver_command: The name of the command to execute as a string.
params: A dictionary of named parameters to send with the command.
Returns:
The command"s JSON response loaded into a dictionary object.
"""
execute(driver::Driver, driver_command, params = nothing) = driver.o[:execute](driver_command, params)


"""
Asynchronously Executes JavaScript in the current window/frame.
Args:
script: The JavaScript to execute.
*args: Any applicable arguments for your JavaScript.
Usage:
driver.execute_async_script("document.title")
"""
execute_async_script(driver::Driver, script, args...) = driver.o[:execute_async_script](script, args...)


"""
Synchronously Executes JavaScript in the current window/frame.
Args:
script: The JavaScript to execute.
*args: Any applicable arguments for your JavaScript.
Usage:
driver.execute_script("document.title")
"""
execute_script(driver::Driver, script, args...) = driver.o[:execute_script](script, args...)


"""
Overrides the current file detector (if necessary) in limited context. Ensures the original file detector is set afterwards.
Example:
with webdriver.file_detector_context(UselessFileDetector):
someinput.send_keys("/etc/hosts")
Args:
file_detector_class - Class of the desired file detector. If the class is different
from the current file_detector, then the class is instantiated with args and kwargs and used as a file detector during the duration of the context manager.
args - Optional arguments that get passed to the file detector class during
instantiation.
kwargs - Keyword arguments, passed the same way as args.
"""
file_detector_context(driver::Driver, args..., ; kwds...) = driver.o[:file_detector_context](args..., ; kwds...)


"""
"Private" method used by the find_element_by_* methods.
Usage: Use the corresponding find_element_by_* instead of this.
Return type: WebElement
"""
find_element(driver::Driver, by = "id", value = nothing) = WebElement(driver.o[:find_element](by, value))


"""
Finds an element by class name.
Args:
name: The class name of the element to find.
Usage:
driver.find_element_by_class_name("foo")
"""
find_element_by_class_name(driver::Driver, name) = WebElement(driver.o[:find_element_by_class_name](name))


"""
Finds an element by css selector.
Args:
css_selector: The css selector to use when finding elements.
Usage:
driver.find_element_by_css_selector("#foo")
"""
find_element_by_css_selector(driver::Driver, css_selector) = WebElement(driver.o[:find_element_by_css_selector](css_selector))


"""
Finds an element by id.
Args:
id_ - The id of the element to be found.
Usage:
driver.find_element_by_id("foo")
"""
find_element_by_id(driver::Driver, id_) = WebElement(driver.o[:find_element_by_id](id_))


"""
Finds an element by link text.
Args:
link_text: The text of the element to be found.
Usage:
driver.find_element_by_link_text("Sign In")
"""
find_element_by_link_text(driver::Driver, link_text) = WebElement(driver.o[:find_element_by_link_text](link_text))


"""
Finds an element by name.
Args:
name: The name of the element to find.
Usage:
driver.find_element_by_name("foo")
"""
find_element_by_name(driver::Driver, name) = WebElement(driver.o[:find_element_by_name](name))


"""
Finds an element by a partial match of its link text.
Args:
link_text: The text of the element to partially match on.
Usage:
driver.find_element_by_partial_link_text("Sign")
"""
find_element_by_partial_link_text(driver::Driver, link_text) = WebElement(driver.o[:find_element_by_partial_link_text](link_text))


"""
Finds an element by tag name.
Args:
name: The tag name of the element to find.
Usage:
driver.find_element_by_tag_name("foo")
"""
find_element_by_tag_name(driver::Driver, name) = WebElement(driver.o[:find_element_by_tag_name](name))


"""
Finds an element by xpath.
Args:
xpath - The xpath locator of the element to find.
Usage:
driver.find_element_by_xpath("//div/td[1]")
"""
find_element_by_xpath(driver::Driver, xpath) = WebElement(driver.o[:find_element_by_xpath](xpath))


"""
"Private" method used by the find_elements_by_* methods.
Usage: Use the corresponding find_elements_by_* instead of this.
Return type: list of WebElement
"""
find_elements(driver::Driver, by = "id", value = nothing) = map(WebElement, driver.o[:find_elements](by, value))


"""
Finds elements by class name.
Args:
name: The class name of the elements to find.
Usage:
driver.find_elements_by_class_name("foo")
"""
find_elements_by_class_name(driver::Driver, name) = map(WebElement, driver.o[:find_elements_by_class_name](name))


"""
Finds elements by css selector.
Args:
css_selector: The css selector to use when finding elements.
Usage:
driver.find_elements_by_css_selector(".foo")
"""
find_elements_by_css_selector(driver::Driver, css_selector) = map(WebElement, driver.o[:find_elements_by_css_selector](css_selector))


"""
Finds multiple elements by id.
Args:
id_ - The id of the elements to be found.
Usage:
driver.find_elements_by_id("foo")
"""
find_elements_by_id(driver::Driver, id_) = map(WebElement, driver.o[:find_elements_by_id](id_))


"""
Finds elements by link text.
Args:
link_text: The text of the elements to be found.
Usage:
driver.find_elements_by_link_text("Sign In")
"""
find_elements_by_link_text(driver::Driver, text) = map(WebElement, driver.o[:find_elements_by_link_text](text))


"""
Finds elements by name.
Args:
name: The name of the elements to find.
Usage:
driver.find_elements_by_name("foo")
"""
find_elements_by_name(driver::Driver, name) = map(WebElement, driver.o[:find_elements_by_name](name))


"""
Finds elements by a partial match of their link text.
Args:
link_text: The text of the element to partial match on.
Usage:
driver.find_element_by_partial_link_text("Sign")
"""
find_elements_by_partial_link_text(driver::Driver, link_text) = map(WebElement, driver.o[:find_elements_by_partial_link_text](link_text))


"""
Finds elements by tag name.
Args:
name: The tag name the use when finding elements.
Usage:
driver.find_elements_by_tag_name("foo")
"""
find_elements_by_tag_name(driver::Driver, name) = map(WebElement, driver.o[:find_elements_by_tag_name](name))


"""
Finds multiple elements by xpath.
Args:
xpath - The xpath locator of the elements to be found.
Usage:
driver.find_elements_by_xpath("//div[contains(@class, "foo")]")
"""
find_elements_by_xpath(driver::Driver, xpath) = map(WebElement, driver.o[:find_elements_by_xpath](xpath))


"""
Goes one step forward in the browser history.
Usage: driver.forward()
"""
forward(driver::Driver, ) = driver.o[:forward]()


"""
Loads a web page in the current browser session.
"""
get(driver::Driver, url) = driver.o[:get](url)


"""
Get a single cookie by name. Returns the cookie if found, None if not.
Usage: driver.get_cookie("my_cookie")
"""
get_cookie(driver::Driver, name) = driver.o[:get_cookie](name)


"""
Returns a set of dictionaries, corresponding to cookies visible in the current session.
Usage: driver.get_cookies()
"""
get_cookies(driver::Driver, ) = driver.o[:get_cookies]()


"""
Gets the log for a given log type
Args:
log_type: type of log that which will be returned
Usage:
driver.get_log("browser") driver.get_log("driver") driver.get_log("client") driver.get_log("server")
"""
get_log(driver::Driver, log_type) = driver.o[:get_log](log_type)


"""
Gets the screenshot of the current window as a base64 encoded string
which is useful in embedded images in HTML.
Usage: driver.get_screenshot_as_base64()
"""
get_screenshot_as_base64(driver::Driver, ) = driver.o[:get_screenshot_as_base64]()


"""
Gets the screenshot of the current window. Returns False if there is
any IOError, else returns True. Use full paths in your filename.
Args:
filename: The full path you wish to save your screenshot to.
Usage:
driver.get_screenshot_as_file("/Screenshots/foo.png")
"""
get_screenshot_as_file(driver::Driver, filename) = driver.o[:get_screenshot_as_file](filename)


"""
Gets the screenshot of the current window as a binary data.
Usage: driver.get_screenshot_as_png()
"""
get_screenshot_as_png(driver::Driver, ) = driver.o[:get_screenshot_as_png]()


"""
Gets the x,y position of the current window.
Usage: driver.get_window_position()
"""
get_window_position(driver::Driver, windowHandle = "current") = driver.o[:get_window_position](windowHandle)


"""
Gets the width and height of the current window.
Usage: driver.get_window_size()
"""
get_window_size(driver::Driver, windowHandle = "current") = driver.o[:get_window_size](windowHandle)


"""
Sets a sticky timeout to implicitly wait for an element to be found,
or a command to complete. This method only needs to be called one time per session. To set the timeout for calls to execute_async_script, see set_script_timeout.
Args:
time_to_wait: Amount of time to wait (in seconds)
Usage:
driver.implicitly_wait(30)
"""
implicitly_wait(driver::Driver, time_to_wait) = driver.o[:implicitly_wait](time_to_wait)


"""
Maximizes the current window that webdriver is using
"""
maximize_window(driver::Driver, ) = driver.o[:maximize_window]()


"""
Quits the driver and closes every associated window.
Usage: driver.quit()
"""
quit(driver::Driver, ) = driver.o[:quit]()


"""
Refreshes the current page.
Usage: driver.refresh()
"""
refresh(driver::Driver, ) = driver.o[:refresh]()


"""
Gets the screenshot of the current window. Returns False if there is
any IOError, else returns True. Use full paths in your filename.
Args:
filename: The full path you wish to save your screenshot to.
Usage:
driver.get_screenshot_as_file("/Screenshots/foo.png")
"""
save_screenshot(driver::Driver, filename) = driver.o[:save_screenshot](filename)


"""
Set the amount of time to wait for a page load to complete
before throwing an error.
Args:
time_to_wait: The amount of time to wait
Usage:
driver.set_page_load_timeout(30)
"""
set_page_load_timeout(driver::Driver, time_to_wait) = driver.o[:set_page_load_timeout](time_to_wait)


"""
Set the amount of time that the script should wait during an
execute_async_script call before throwing an error.
Args:
time_to_wait: The amount of time to wait (in seconds)
Usage:
driver.set_script_timeout(30)
"""
set_script_timeout(driver::Driver, time_to_wait) = driver.o[:set_script_timeout](time_to_wait)


"""
Sets the x,y position of the current window. (window.moveTo)
Args:
x: the x-coordinate in pixels to set the window position
y: the y-coordinate in pixels to set the window position
Usage:
driver.set_window_position(0,0)
"""
set_window_position(driver::Driver, x, y, windowHandle = "current") = driver.o[:set_window_position](x, y, windowHandle)


"""
Sets the width and height of the current window. (window.resizeTo)
Args:
width: the width in pixels to set the window to
height: the height in pixels to set the window to
Usage:
driver.set_window_size(800,600)
"""
set_window_size(driver::Driver, width, height, windowHandle = "current") = driver.o[:set_window_size](width, height, windowHandle)


"""
Called before starting a new session. This method may be overridden to define custom startup behavior.
"""
start_client(driver::Driver, ) = driver.o[:start_client]()


"""
Creates a new session with the desired capabilities.
Args:
browser_name - The name of the browser to request.
version - Which browser version to request.
platform - Which platform to request the browser on.
javascript_enabled - Whether the new session should support JavaScript.
browser_profile - A selenium.webdriver.firefox.firefox_profile.FirefoxProfile object. Only used if Firefox is requested.
"""
start_session(driver::Driver, desired_capabilities, browser_profile = nothing) = driver.o[:start_session](desired_capabilities, browser_profile)


"""
Called after executing a quit command. This method may be overridden to define custom shutdown behavior.
"""
stop_client(driver::Driver, ) = driver.o[:stop_client]()


"""
Deprecated use driver.switch_to.active_element
"""
switch_to_active_element(driver::Driver, ) = driver.o[:switch_to_active_element]()


"""
Deprecated use driver.switch_to.alert
"""
switch_to_alert(driver::Driver, ) = driver.o[:switch_to_alert]()


"""
Deprecated use driver.switch_to.default_content
"""
switch_to_default_content(driver::Driver, ) = driver.o[:switch_to_default_content]()


"""
Deprecated use driver.switch_to.frame
"""
switch_to_frame(driver::Driver, frame_reference) = driver.o[:switch_to_frame](frame_reference)


"""
Deprecated use driver.switch_to.window
"""
switch_to_window(driver::Driver, window_name) = driver.o[:switch_to_window](window_name)


"""
Returns a ApplicationCache Object to interact with the browser app cache
"""
application_cache(driver::Driver, ) = driver.o[:application_cache]


"""
Gets the URL of the current page.
Usage: driver.current_url
"""
current_url(driver::Driver, ) = driver.o[:current_url]


"""
Returns the handle of the current window.
Usage: driver.current_window_handle
"""
current_window_handle(driver::Driver, ) = driver.o[:current_window_handle]


"""
returns the drivers current desired capabilities being used
"""
desired_capabilities(driver::Driver, ) = driver.o[:desired_capabilities]


"""

"""
file_detector(driver::Driver, ) = driver.o[:file_detector]


"""
Gets a list of the available log types
Usage: driver.log_types
"""
log_types(driver::Driver, ) = driver.o[:log_types]


"""

"""
mobile(driver::Driver, ) = driver.o[:mobile]


"""
Returns the name of the underlying browser for this instance.
Usage:
driver.name
"""
name(driver::Driver, ) = driver.o[:name]


"""
Gets the current orientation of the device
Usage: orientation = driver.orientation
"""
orientation(driver::Driver, ) = driver.o[:orientation]


"""
Gets the source of the current page.
Usage: driver.page_source
"""
page_source(driver::Driver, ) = driver.o[:page_source]


"""

"""
switch_to(driver::Driver, ) = driver.o[:switch_to]


"""
Returns the title of the current page.
Usage: driver.title
"""
title(driver::Driver, ) = driver.o[:title]


"""
Returns the handles of all windows within the current session.
Usage: driver.window_handles
"""
window_handles(driver::Driver, ) = driver.o[:window_handles]
export clear,click,find_element,find_element_by_class_name,find_element_by_css_selector,find_element_by_id,find_element_by_link_text,find_element_by_name,find_element_by_partial_link_text,find_element_by_tag_name,find_element_by_xpath,find_elements,find_elements_by_class_name,find_elements_by_css_selector,find_elements_by_id,find_elements_by_link_text,find_elements_by_name,find_elements_by_partial_link_text,find_elements_by_tag_name,find_elements_by_xpath,get_attribute,is_displayed,is_enabled,is_selected,screenshot,send_keys,submit,value_of_css_property,id,location,location_once_scrolled_into_view,parent,rect,screenshot_as_base64,screenshot_as_png,size,tag_name,text

"""
Clears the text if it"s a text entry element.
"""
clear(elem::WebElement, ) = elem.o[:clear]()


"""
Clicks the element.
"""
click(elem::WebElement, ) = elem.o[:click]()


"""

"""
find_element(elem::WebElement, by = "id", value = nothing) = elem.o[:find_element](by, value)


"""
Finds element within this element"s children by class name.
Args:
name - class name to search for.
"""
find_element_by_class_name(elem::WebElement, name) = elem.o[:find_element_by_class_name](name)


"""
Finds element within this element"s children by CSS selector.
Args:
css_selector - CSS selctor string, ex: "a.nav#home"
"""
find_element_by_css_selector(elem::WebElement, css_selector) = elem.o[:find_element_by_css_selector](css_selector)


"""
Finds element within this element"s children by ID.
Args:
id_ - ID of child element to locate.
"""
find_element_by_id(elem::WebElement, id_) = elem.o[:find_element_by_id](id_)


"""
Finds element within this element"s children by visible link text.
Args:
link_text - Link text string to search for.
"""
find_element_by_link_text(elem::WebElement, link_text) = elem.o[:find_element_by_link_text](link_text)


"""
Finds element within this element"s children by name.
Args:
name - name property of the element to find.
"""
find_element_by_name(elem::WebElement, name) = elem.o[:find_element_by_name](name)


"""
Finds element within this element"s children by partially visible link text.
Args:
link_text - Link text string to search for.
"""
find_element_by_partial_link_text(elem::WebElement, link_text) = elem.o[:find_element_by_partial_link_text](link_text)


"""
Finds element within this element"s children by tag name.
Args:
name - name of html tag (eg: h1, a, span)
"""
find_element_by_tag_name(elem::WebElement, name) = elem.o[:find_element_by_tag_name](name)


"""
Finds element by xpath.
Args: xpath - xpath of element to locate. "//input[@class="myelement"]"
Note: The base path will be relative to this element"s location.
This will select the first link under this element.
myelement.find_elements_by_xpath(".//a")
However, this will select the first link on the page.
myelement.find_elements_by_xpath("//a")
"""
find_element_by_xpath(elem::WebElement, xpath) = elem.o[:find_element_by_xpath](xpath)


"""

"""
find_elements(elem::WebElement, by = "id", value = nothing) = elem.o[:find_elements](by, value)


"""
Finds a list of elements within this element"s children by class name.
Args:
name - class name to search for.
"""
find_elements_by_class_name(elem::WebElement, name) = elem.o[:find_elements_by_class_name](name)


"""
Finds a list of elements within this element"s children by CSS selector.
Args:
css_selector - CSS selctor string, ex: "a.nav#home"
"""
find_elements_by_css_selector(elem::WebElement, css_selector) = elem.o[:find_elements_by_css_selector](css_selector)


"""
Finds a list of elements within this element"s children by ID.
Args:
id_ - Id of child element to find.
"""
find_elements_by_id(elem::WebElement, id_) = elem.o[:find_elements_by_id](id_)


"""
Finds a list of elements within this element"s children by visible link text.
Args:
link_text - Link text string to search for.
"""
find_elements_by_link_text(elem::WebElement, link_text) = elem.o[:find_elements_by_link_text](link_text)


"""
Finds a list of elements within this element"s children by name.
Args:
name - name property to search for.
"""
find_elements_by_name(elem::WebElement, name) = elem.o[:find_elements_by_name](name)


"""
Finds a list of elements within this element"s children by link text.
Args:
link_text - Link text string to search for.
"""
find_elements_by_partial_link_text(elem::WebElement, link_text) = elem.o[:find_elements_by_partial_link_text](link_text)


"""
Finds a list of elements within this element"s children by tag name.
Args:
name - name of html tag (eg: h1, a, span)
"""
find_elements_by_tag_name(elem::WebElement, name) = elem.o[:find_elements_by_tag_name](name)


"""
Finds elements within the element by xpath.
Args:
xpath - xpath locator string.
Note: The base path will be relative to this element"s location.
This will select all links under this element.
myelement.find_elements_by_xpath(".//a")
However, this will select all links in the page itself.
myelement.find_elements_by_xpath("//a")
"""
find_elements_by_xpath(elem::WebElement, xpath) = elem.o[:find_elements_by_xpath](xpath)


"""
Gets the given attribute or property of the element.
This method will first try to return the value of a property with the given name. If a property with that name doesn"t exist, it returns the value of the attribute with the same name. If there"s no attribute with that name, None is returned.
Values which are considered truthy, that is equals "true" or "false", are returned as booleans. All other non-None values are returned as strings. For attributes or properties which do not exist, None is returned.
Args:
name - Name of the attribute/property to retrieve.
Example:
# Check if the "active" CSS class is applied to an element.
is_active = "active" in target_element.get_attribute("class")
"""
get_attribute(elem::WebElement, name) = elem.o[:get_attribute](name)


"""
Whether the element is visible to a user.
"""
is_displayed(elem::WebElement, ) = elem.o[:is_displayed]()


"""
Returns whether the element is enabled.
"""
is_enabled(elem::WebElement, ) = elem.o[:is_enabled]()


"""
Returns whether the element is selected.
Can be used to check if a checkbox or radio button is selected.
"""
is_selected(elem::WebElement, ) = elem.o[:is_selected]()


"""
Gets the screenshot of the current element. Returns False if there is
any IOError, else returns True. Use full paths in your filename.
Args:
filename: The full path you wish to save your screenshot to.
Usage:
element.screenshot("/Screenshots/foo.png")
"""
screenshot(elem::WebElement, filename) = elem.o[:screenshot](filename)


"""
Simulates typing into the element.
Args:
value - A string for typing, or setting form fields. For setting
file inputs, this could be a local file path.
Use this to send simple key events or to fill out form fields:
form_textfield = driver.find_element_by_name("username")
form_textfield.send_keys("admin")
This can also be used to set file inputs.
file_input = driver.find_element_by_name("profilePic")
file_input.send_keys("path/to/profilepic.gif")
# Generally it"s better to wrap the file path in one of the methods
# in os.path to return the actual path to support cross OS testing.
# file_input.send_keys(os.path.abspath("path/to/profilepic.gif"))
"""
send_keys(elem::WebElement, value...) = elem.o[:send_keys](value...)


"""
Submits a form.
"""
submit(elem::WebElement, ) = elem.o[:submit]()


"""
The value of a CSS property.
"""
value_of_css_property(elem::WebElement, property_name) = elem.o[:value_of_css_property](property_name)


"""
Internal ID used by selenium.
This is mainly for internal use. Simple use cases such as checking if 2 webelements refer to the same element, can be done using ==:
if element1 == element2:
    print("These 2 are equal")
"""
id(elem::WebElement, ) = elem.o[:id]


"""
The location of the element in the renderable canvas.
"""
location(elem::WebElement, ) = elem.o[:location]


"""
THIS PROPERTY MAY CHANGE WITHOUT WARNING. Use this to discover where on the screen an element is so that we can click it. This method should cause the element to be scrolled into view.
Returns the top lefthand corner location on the screen, or None if the element is not visible.
"""
location_once_scrolled_into_view(elem::WebElement, ) = elem.o[:location_once_scrolled_into_view]


"""
Internal reference to the WebDriver instance this element was found from.
"""
parent(elem::WebElement, ) = elem.o[:parent]


"""
A dictionary with the size and location of the element.
"""
rect(elem::WebElement, ) = elem.o[:rect]


"""
Gets the screenshot of the current element as a base64 encoded string.
Usage: img_b64 = element.screenshot_as_base64
"""
screenshot_as_base64(elem::WebElement, ) = elem.o[:screenshot_as_base64]


"""
Gets the screenshot of the current element as a binary data.
Usage: element_png = element.screenshot_as_png
"""
screenshot_as_png(elem::WebElement, ) = elem.o[:screenshot_as_png]


"""
The size of the element.
"""
size(elem::WebElement, ) = elem.o[:size]


"""
This element"s tagName property.
"""
tag_name(elem::WebElement, ) = elem.o[:tag_name]


"""
The text of the element.
"""
text(elem::WebElement, ) = elem.o[:text]
export click,click_and_hold,context_click,double_click,drag_and_drop,drag_and_drop_by_offset,key_down,key_up,move_by_offset,move_to_element,move_to_element_with_offset,perform,release,send_keys,send_keys_to_element

"""
Clicks an element.
Args:
on_element: The element to click. If None, clicks on current mouse position.
"""
click(chain::ActionChain, on_element = nothing) = ActionChain(chain.o[:click](on_element))

click(on_element = nothing) = chain -> ActionChain(chain.o[:click](on_element))


"""
Holds down the left mouse button on an element.
Args:
on_element: The element to mouse down. If None, clicks on current mouse position.
"""
click_and_hold(chain::ActionChain, on_element = nothing) = ActionChain(chain.o[:click_and_hold](on_element))

click_and_hold(on_element = nothing) = chain -> ActionChain(chain.o[:click_and_hold](on_element))


"""
Performs a context-click (right click) on an element.
Args:
on_element: The element to context-click. If None, clicks on current mouse position.
"""
context_click(chain::ActionChain, on_element = nothing) = ActionChain(chain.o[:context_click](on_element))

context_click(on_element = nothing) = chain -> ActionChain(chain.o[:context_click](on_element))


"""
Double-clicks an element.
Args:
on_element: The element to double-click. If None, clicks on current mouse position.
"""
double_click(chain::ActionChain, on_element = nothing) = ActionChain(chain.o[:double_click](on_element))

double_click(on_element = nothing) = chain -> ActionChain(chain.o[:double_click](on_element))


"""
Holds down the left mouse button on the source element,
then moves to the target element and releases the mouse button.
Args:
source: The element to mouse down.
target: The element to mouse up.
"""
drag_and_drop(chain::ActionChain, source, target) = ActionChain(chain.o[:drag_and_drop](source, target))

drag_and_drop(source, target) = chain -> ActionChain(chain.o[:drag_and_drop](source, target))


"""
Holds down the left mouse button on the source element,
then moves to the target offset and releases the mouse button.
Args:
source: The element to mouse down.
xoffset: X offset to move to.
yoffset: Y offset to move to.
"""
drag_and_drop_by_offset(chain::ActionChain, source, xoffset, yoffset) = ActionChain(chain.o[:drag_and_drop_by_offset](source, xoffset, yoffset))

drag_and_drop_by_offset(source, xoffset, yoffset) = chain -> ActionChain(chain.o[:drag_and_drop_by_offset](source, xoffset, yoffset))


"""
Sends a key press only, without releasing it.
Should only be used with modifier keys (Control, Alt and Shift).
Args:
value: The modifier key to send. Values are defined in Keys class.
element: The element to send keys. If None, sends a key to current focused element.
Example, pressing ctrl+c:
ActionChains(driver).key_down(Keys.CONTROL).send_keys("c").key_up(Keys.CONTROL).perform()
"""
key_down(chain::ActionChain, value, element = nothing) = ActionChain(chain.o[:key_down](value, element))

key_down(value, element = nothing) = chain -> ActionChain(chain.o[:key_down](value, element))


"""
Releases a modifier key.
Args:
value: The modifier key to send. Values are defined in Keys class.
element: The element to send keys. If None, sends a key to current focused element.
Example, pressing ctrl+c:
ActionChains(driver).key_down(Keys.CONTROL).send_keys("c").key_up(Keys.CONTROL).perform()
"""
key_up(chain::ActionChain, value, element = nothing) = ActionChain(chain.o[:key_up](value, element))

key_up(value, element = nothing) = chain -> ActionChain(chain.o[:key_up](value, element))


"""
Moving the mouse to an offset from current mouse position.
Args:
xoffset: X offset to move to, as a positive or negative integer.
yoffset: Y offset to move to, as a positive or negative integer.
"""
move_by_offset(chain::ActionChain, xoffset, yoffset) = ActionChain(chain.o[:move_by_offset](xoffset, yoffset))

move_by_offset(xoffset, yoffset) = chain -> ActionChain(chain.o[:move_by_offset](xoffset, yoffset))


"""
Moving the mouse to the middle of an element.
Args:
to_element: The WebElement to move to.
"""
move_to_element(chain::ActionChain, to_element) = ActionChain(chain.o[:move_to_element](to_element))

move_to_element(to_element) = chain -> ActionChain(chain.o[:move_to_element](to_element))


"""
Move the mouse by an offset of the specified element.
Offsets are relative to the top-left corner of the element.
Args:
to_element: The WebElement to move to.
xoffset: X offset to move to.
yoffset: Y offset to move to.
"""
move_to_element_with_offset(chain::ActionChain, to_element, xoffset, yoffset) = ActionChain(chain.o[:move_to_element_with_offset](to_element, xoffset, yoffset))

move_to_element_with_offset(to_element, xoffset, yoffset) = chain -> ActionChain(chain.o[:move_to_element_with_offset](to_element, xoffset, yoffset))


"""
Performs all stored actions.
"""
perform(chain::ActionChain, ) = chain.o[:perform]()

perform() = chain -> chain.o[:perform]()


"""
Releasing a held mouse button on an element.
Args:
on_element: The element to mouse up. If None, releases on current mouse position.
"""
release(chain::ActionChain, on_element = nothing) = ActionChain(chain.o[:release](on_element))

release(on_element = nothing) = chain -> ActionChain(chain.o[:release](on_element))


"""
Sends keys to current focused element.
Args:
keys_to_send: The keys to send. Modifier keys constants can be found in the
"Keys" class.
"""
send_keys(chain::ActionChain, keys_to_send...) = ActionChain(chain.o[:send_keys](keys_to_send...))

send_keys(keys_to_send...) = chain -> ActionChain(chain.o[:send_keys](keys_to_send...))


"""
Sends keys to an element.
Args:
element: The element to send keys.
keys_to_send: The keys to send. Modifier keys constants can be found in the
"Keys" class.
"""
send_keys_to_element(chain::ActionChain, element, keys_to_send...) = ActionChain(chain.o[:send_keys_to_element](element, keys_to_send...))

send_keys_to_element(element, keys_to_send...) = chain -> ActionChain(chain.o[:send_keys_to_element](element, keys_to_send...))

