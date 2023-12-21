*** Settings ***




*** Test Cases ***
TC1 User Registerarion test
    [Tags]  regression
    log to console  This is user reg test
    log to console  User reg is over
TC2 Login Test
    [Tags]  sanity
    log to console  This is login test
    log to console  Login test is over
TC3 Change user settings
    [Tags]  regression
    log to console  This is changing user settings test
    log to console  Change settings is over
TC4 Logout test
    [Tags]  sanity
    log to console  This is logout test
    log to console  Logout is over

#    Give command in terminal --> robot --include=sanity TestCases\Tags.robot
#   robot --include=regression TestCases\Tags.robot
#   robot -i sanity -i regression TestCases\Tags.robot
#   robot -e regression TestCases\Tags.robot
#   robot -e sanity -i regression TestCases\Tags.robot





