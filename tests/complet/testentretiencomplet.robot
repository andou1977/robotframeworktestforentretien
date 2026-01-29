*** Settings ***
Library    RequestsLibrary
Library    DatabaseLibrary
Library    OperatingSystem
Library    FileVerify.py


*** Keywords ***

*** Variables ***
${password}

*** Test Cases ***
MyApi
   Create Session   myapi   https://6957bb19f7ea690182d2e402.mockapi.io/api/andouv1
   ${myapi}=  Get Request    myapi    /andouv1api/3
   Status Should Be    200
   ${mysession}=  To Json    ${myapi.content}
   Should Be Equal    ${mysession['name']}    andou


Mydatabase
   Connect To Database   pymysql   bank   root   ${password}  localhost   3306
   ${mybase}=   Query    select * from transaction where id=4 and description='description 100'
   Should Not Be Empty    ${mybase}

verifier log
   ${myfile}=   Get File   C:\\Users\\GENIUS\\IdeaProjects\\robotframeworktestforentretien\\tests\\file\\myfile.log
   Should Contain    ${myfile}    mon premier fichier log dans robot

verifier log via librarie python
    ${myfilelibraies}=   Myfilenow
    Should Contain    ${myfilelibraies}    mon premier fichier log dans robot pour maintenant











