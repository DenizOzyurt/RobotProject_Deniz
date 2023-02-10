*** Settings ***
Library  SeleniumLibrary
Suite Setup    Log    I am inside Test Suite Setup
Suite Teardown    Log     I am inside Test Suite Teardown
Test Setup    Log    I am Test Setup
Test Teardown    Log    I am Test Teardown 
Default Tags    sanity



*** Test Cases ***
MyFirstTest
    [Tags]    smoke
    Log    Hello world....

MySecondTest
    Log    I am inside the second test
    Set Tags    regression1
    # Remove Tags    regression1

MyThirdTest
    Log    I am inside the third test

MyFouthTest
    [Tags]    smoke
    Log    Second somke test

MyFifthTest
    [Tags]    smoke
    Log    Third somke test
    
MySixthTest
    [Tags]    smoke
    Log    Fouth somke test 
