*** Settings ***
Documentation    Testes de login

Library    Browser
*** Variables ***
${veri_login}    Aquela figurinha incrível a um clique de distância.
*** Test Cases ***
Deve logar com sucesso
    New Browser        headless=false
    New Page        https://trade-sticker-dev.vercel.app/

    Fill Text        css=input[name=email]           papito@gmail.com
    Fill Text        css=input[name=password]        vaibrasil
    Click            xpath=//button[@class='button']
    Sleep        5    

    Get Text         css=.header-content strong       equal     ${veri_login} 

   