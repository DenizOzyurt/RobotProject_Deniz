*** Settings ***
Library  SeleniumLibrary
Suite Setup    Log    I am inside Test Suite Setup
Suite Teardown    Log     I am inside Test Suite Teardown
Test Setup    Log    I am Test Setup
Test Teardown    Log    I am Test Teardown 



*** Test Cases ***
MyFirstTest
    Log    Hello world....

TC1 Connexion         
    [documentation]    This is a simple test for Google  
#    Log    Login

    Open Browser    https://google.com  firefox
    click button  id=L2AGLb
    Set Browser Implicit Wait    10
    Input Text    name=q     Automation step by step
  # To close the scrollbar 
    Set Browser Implicit Wait    5 
  #  Press Keys    name=q    ESCAPE   
    Press Keys    name=q    ENTER   
    Set Browser Implicit Wait    5
  #  click button    name=btnK    

    Close Browser
    Log    Test Complited

TC2_Sample_Login_Test

    [Documentation]    This is a sample login test
    LoginKW    
    Click Button    xpath=//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    Click Element    class=oxd-userdropdown-tab
    #Click Element       xpath=//*[@id="app"]/div[1]/div[1]/header/div[1]/div[2]/ul/li/ul/li[1]/a

    Sleep    3   
    Click Element    link=Logout 
    Close Browser
    Log    This test executed by %{username} on %{os}.  

*** Variables ***
${URL}     https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${Browser}    firefox
@{Credentials}     Admin     admin123 
&{UserData}     Username=Admin     Password=admin123

*** Keywords ***
LoginKW
    Open Browser    ${URL}    ${Browser}   
    Set Browser Implicit Wait    10
  #  Input Text    name=username    Admin
    Input Text    name=username     ${Credentials}[0]
    Input Text    name=password     ${UserData}[Password]
