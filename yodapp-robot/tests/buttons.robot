*** Settings ***
Documentation        Login

Resource             ../resources/base.resource

Test Setup           Open Page        Clique em Botões
Test Teardown        Finish Session

*** Test Cases ***
Deve realizar clique simples
    Select Screen Option        CLIQUE SIMPLES        Botão clique simples
    
    Click Element               id=com.qaxperience.android.yodapp:id/short_click
    Wait Until Page Contains    Isso é um clique simples

Deve realizar clique longo
    [Tags]    long

    Select Screen Option           CLIQUE LONGO        Botão clique longo

    Long Press                     id=com.qaxperience.android.yodapp:id/long_click    50
    Long Press                     id=com.qaxperience.android.yodapp:id/long_click    50
    Wait Until Page Contains       Isso é um clique longo
    