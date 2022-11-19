# from appium.webdriver.common.touch_action import TouchAction

# from AppiumLibrary.locators import ElementFinder
# from .keywordgroup import KeywordGroup



# @KeywordGroup["My Long Press"]
# def long_press(self, locator, duration=1000):
#         """*DEPRECATED!!* Since selenium v4, use other keywords.
#         Long press the element with optional duration """
#         driver = self._current_application()
#         element = self._element_find(locator, True, True)
#         action = TouchAction(driver)
#         action.press(element).wait(duration).release().perform()