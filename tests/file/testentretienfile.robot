

*** Settings ***
Library    RPA.Desktop
Library    OperatingSystem
Library    Process

*** Variables ***
${myjmeter}   C:\\Users\\GENIUS\\IdeaProjects\\robotframeworktestforentretien\\tests\\file\\View Results Tree.jmx
*** Keywords ***
le fichier log
   ${my file}=  Get File   C:\\Users\\GENIUS\\IdeaProjects\\robotframeworktestforentretien\\tests\\file\\myfile.log
   Should Contain    ${my file}    mon premier fichier log dans robot
   Should Not Contain   ${my file}  erreur critique


*** Test Cases ***
le fichier
   le fichier log


