*** Settings ***
Suite Setup       Run Tests    ${EMPTY}    running/return.robot
Resource          atest_resource.robot

*** Test Cases ***
Simple
    ${tc} =    Check Test Case    ${TESTNAME}
    Should Be Equal    ${tc.body[0].body[1].type}      RETURN
    Should Be Equal    ${tc.body[0].body[1].status}    PASS
    Should Be Equal    ${tc.body[0].body[2].status}    NOT RUN

Return value
    Check Test Case    ${TESTNAME}

Return value as variable
    Check Test Case    ${TESTNAME}

Return multiple values
    Check Test Case    ${TESTNAME}

In IF
    ${tc} =    Check Test Case    ${TESTNAME}
    Should Be Equal    ${tc.body[0].body[0].body[0].body[0].type}      RETURN
    Should Be Equal    ${tc.body[0].body[0].body[0].body[0].status}    PASS
    Should Be Equal    ${tc.body[0].body[0].body[0].body[1].status}    NOT RUN
    Should Be Equal    ${tc.body[0].body[1].status}                    NOT RUN
    Should Be Equal    ${tc.body[2].body[0].body[1].body[0].type}      RETURN
    Should Be Equal    ${tc.body[2].body[0].body[1].body[0].status}    PASS
    Should Be Equal    ${tc.body[2].body[0].body[1].body[1].status}    NOT RUN
    Should Be Equal    ${tc.body[2].body[1].status}                    NOT RUN

In inline IF
    Check Test Case    ${TESTNAME}

In FOR
    ${tc} =    Check Test Case    ${TESTNAME}
    Should Be Equal    ${tc.body[0].body[0].body[0].body[0].type}      RETURN
    Should Be Equal    ${tc.body[0].body[0].body[0].body[0].status}    PASS
    Should Be Equal    ${tc.body[0].body[0].body[0].body[1].status}    NOT RUN
    Should Be Equal    ${tc.body[0].body[1].status}                    NOT RUN

In nested FOR/IF structure
    Check Test Case    ${TESTNAME}

In test
    ${tc} =    Check Test Case    ${TESTNAME}
    Check Keyword Data    ${tc.body[0]}    Reserved.Return    status=FAIL

In test with values
    ${tc} =    Check Test Case    ${TESTNAME}
    Check Keyword Data    ${tc.body[0]}    Reserved.Return    status=FAIL    args=v1, v2

In test inside IF
    Check Test Case    ${TESTNAME}

In test inside FOR
    Check Test Case    ${TESTNAME}
