

*** Test Cases ***
ForLoop1
    : FOR   ${i}    IN RANGE    1   10
    \   log to console  ${i}

ForLoop2
    @{items}    create list  1  2  3  4  5
    : FOR   ${i}    IN  @{items}
    \   log to console  ${i}

ForLoop3
    : FOR   ${i}    IN  john    david   smith   scott
    \   log to console  ${i}

ForLoop4
    @{namelist}    create list  john    david   smith   scott
    : FOR   ${i}    IN   @{namelist}
    \   log to console  ${i}

ForLoop5
    @{items}    create list  1  2  3  4  5
    : FOR   ${i}    IN  @{items}
    \   log to console  ${i}
    \   exit for loop if    ${i}==3



