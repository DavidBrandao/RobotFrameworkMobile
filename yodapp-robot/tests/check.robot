*** Settings ***
Documentation        Checkbox

Resource             ../resources/base.resource

Test Setup           Open Page        Check e Radio
Test Teardown        Finish Session

*** Test Cases ***
Marcar tech robot framework
    Select Screen Option        CHECKBOX        Marque as techs que usam Appium
    Mark CheckBox               Robot Framework