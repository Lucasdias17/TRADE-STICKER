*** Settings ***
Documentation        Testes de negociação de figurinhas da copa

Resource    ../resources/main.resource


*** Test Cases ***
Deve negociar a figurinha Neymar Legend
    Go To Login Page
    Submit Credentials    papito@gmail.com    vaibrasil
    User Logged In

    Search User       legend
    Select Sticker    Neymar Jr
    Sleep    10