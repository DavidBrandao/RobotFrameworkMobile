*** Settings ***
Documentation        Login

Resource             ../resources/base.resource

Test Setup           Open Page        Formulários
Test Teardown        Finish Session

*** Test Cases ***
Deve logar com sucesso
    Select Screen Option            LOGIN        Olá Padawan, vamos testar o login?
    Submit Login Form               papito@yahoo.com    jedi 
    Wait Until Page Contains        Muito bom, logado você está.   

Senha Incorreta
    Select Screen Option            LOGIN        Olá Padawan, vamos testar o login?
    Submit Login Form               papito@yahoo.com    123456  
    Wait Until Page Contains        Oops! Senha incorreta.
