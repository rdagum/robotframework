*** Setting ***
Documentation     Tests for variable related functionality in BuiltIn
Suite Setup       Run Tests    \    standard_libraries${/}deprecated_builtin${/}variables.html
Force Tags        regression    jybot    pybot
Resource          atest_resource.txt

*** Variable ***

*** Test Case ***
Fail Unless Variable Exists
    Check Test Case    Fail Unless Variable Exists 1
    Check Test Case    Fail Unless Variable Exists 2
    Check Test Case    Fail Unless Variable Exists 3
    Check Test Case    Fail Unless Variable Exists 4
    Check Test Case    Fail Unless Variable Exists 5

Fail If Variable Exists
    Check Test Case    Fail If Variable Exists 1
    Check Test Case    Fail If Variable Exists 2
    Check Test Case    Fail If Variable Exists 3
    Check Test Case    Fail If Variable Exists 4
    Check Test Case    Fail If Variable Exists 5

*** Keyword ***