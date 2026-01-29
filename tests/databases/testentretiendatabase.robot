*** Settings ***
Library    DatabaseLibrary


*** Keywords ***

*** Variables ***
${passord}

*** Test Cases ***
verify in database
    Connect To Database   pymysql   bank   root  ${passord}   localhost   3306
    ${myquery}=  Query   select * from transaction where id=6 and description='description 200' and amount=400.566
    Should Not Be Empty    ${myquery}
