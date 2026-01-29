
*** Settings ***
Library    RequestsLibrary


*** Variables ***
${IDEMPOTENCY_KEY}    123e4567-e89b-12d3-a456-426614174000
${url}    https://6957bb19f7ea690182d2e402.mockapi.io/api/andouv1
${date}   2026-01-02T09:48:47.130Z



*** Keywords ***
create my user
       Create Session   sendpost   ${url}
      ${sendvalue}=   Create Dictionary   name=andou   avatar=https://avatars.githubusercontent.com/u/30204827  createdAt=${date}
      ${myvalue}=   POST On Session   sendpost   /andouv1api   json=${sendvalue}
      Status Should Be    201   ${myvalue}
      ${verifierchamp}=   To Json    ${myvalue.content}
      Should Be Equal    ${verifierchamp['name']}    andou





*** Test Cases ***
envoie requette post et verification

    create my user





