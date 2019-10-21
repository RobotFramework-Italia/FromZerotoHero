***Keywords***
I Open a new Chrome session to stackoverflow
    Open Browser        ${url}      Chrome
I land on stackoverflow
    Wait    Location should be    https://stackoverflow.com/
I see the logged-out homepage
    ${source}=  Get source
    Should contain     ${source}    home-page unified-theme
I input a problem in the search bar
    Input text          css:#search > div > input   ${question}
I press "Enter" key
    Press Keys          css:#search > div > input      ENTER
I land on "Questions tagged with ${question}" page
    Wait  Location should contain  ${question}
I click "stackoverflow" logo
    click element       css:span.-img._glyph
Wait
    [Arguments]     ${keyword}  ${arguments}
    Wait until keyword succeeds     1 min   5 sec   ${keyword}   ${arguments}