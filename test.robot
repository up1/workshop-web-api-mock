*** Settings ***
Library  SeleniumLibrary
Library  SeleniumScreenshots

*** Test Case ***
Capture full page
    Open browser  about:blank  browser=headlesschrome
    Go to  https://robotframework.org
    # Wait Until Element Is Visible  xpath://div[@class="row no-gutters"]
    # ${width}	${height}=  Get Element Size	xpath://div[@class="row no-gutters"]
    # Log To Console  ${height}
    # Set Window Size   1024   13000
    ${width}=  Execute JavaScript  return document.body.parentNode.scrollWidth
    ${height}=  Execute JavaScript  return document.body.parentNode.scrollHeight
    Log To Console  ${width}, ${height}
    Set Window Size   ${width}   ${height}
    Capture Element Screenshot   xpath://body  3.png