*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}            http://webdev.xerago.com/cvm
${browser}        chrome

*** Test Cases ***	
To validate check count response	
    
    ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}   add_argument    headless
    Call Method    ${chrome_options}   add_argument    disable-gpu
    Call Method    ${chrome_options}   add_argument    no-sandbox
    SeleniumLibrary.Create WebDriver  Chrome  chrome_options=${chrome_options}
    SeleniumLibrary.Set Window Size    1920    1080
    SeleniumLibrary.Go to    ${url}     
    SeleniumLibrary.Set Selenium Implicit Wait    60s
    SeleniumLibrary.Wait Until Element Is Enabled    //div[@class='login-footertxt']/p    
    SeleniumLibrary.Input Text    id=form_username    testpurpose
    SeleniumLibrary.Input Text    id=form_password    testpurpose
    SeleniumLibrary.Click Button    id=form_login
    SeleniumLibrary.Wait Until Element Is Visible    xpath=.//span[@class='logo replacea']/img    timeout=50    error=false
    SeleniumLibrary.Click Element    xpath=.//li[@ng-click='createNewProgram()']
    SeleniumLibrary.Wait Until Element Is Enabled    xpath=.//div[@id='productName'][contains(.,'Savings Accounts')]    
    SeleniumLibrary.Click Element    xpath=.//div[@id='productName'][contains(.,'Savings Accounts')]
    SeleniumLibrary.Click Element    xpath=.//div[@class='objectivelist']/div[contains(.,'Cross-sell')]
    SeleniumLibrary.Wait Until Element Is Enabled    xpath=.//div[@class='approach-head']/div[contains(.,'Volatile account balances')]    
    SeleniumLibrary.Click Element    xpath=.//div[@class='approach-head']/div[contains(.,'Volatile account balances')]
    SeleniumLibrary.Click Element    xpath=.//div[@id='fromDate']//div/a[2]
    SeleniumLibrary.Click Element    xpath=.//div[@id='fromDate']//div/a[2]
    SeleniumLibrary.Click Element    xpath=.//div[@id='fromDate']//div/a[2]
    SeleniumLibrary.Click Element    xpath=.//div[@id='fromDate']//div/a[2]
    SeleniumLibrary.Click Element    xpath=.//div[@id='fromDate']//div/a[2]
    SeleniumLibrary.Click Element    xpath=(.//table[@class='ui-datepicker-calendar']/tbody/tr/td[contains(.,'3')])[1]
    SeleniumLibrary.Click Element    xpath=.//input[@name='saveChanges']
    SeleniumLibrary.Click Element    xpath=.//a[@title='Check Count']
    SeleniumLibrary.Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    SeleniumLibrary.Wait Until Page Contains Element    xpath=.//div[@ng-show='showRecordCount']    
    SeleniumLibrary.Wait Until Page Contains Element    xpath=.//div[@ng-repeat='collection in productPercentage'][2]    
    SeleniumLibrary.Close Browser

To validate all login function at all levels
    #Creator Login
    ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}   add_argument    headless
    Call Method    ${chrome_options}   add_argument    disable-gpu
    Call Method    ${chrome_options}   add_argument    no-sandbox
    SeleniumLibrary.Create WebDriver  Chrome  chrome_options=${chrome_options}
    SeleniumLibrary.Set Window Size    1920    1080
    SeleniumLibrary.Go to    ${url} 
    SeleniumLibrary.Set Selenium Implicit Wait    60s
    SeleniumLibrary.Wait Until Element Is Enabled    //div[@class='login-footertxt']/p    
    SeleniumLibrary.Input Text    id=form_username    testpurpose
    SeleniumLibrary.Input Text    id=form_password    testpurpose
    SeleniumLibrary.Click Button    id=form_login
    #Check after login home page display or not
    SeleniumLibrary.Wait Until Element Is Visible    xpath=.//span[@class='logo replacea']/img    timeout=50    error=false
    SeleniumLibrary.Close Browser

	#Admin Login
    ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}   add_argument    headless
    Call Method    ${chrome_options}   add_argument    disable-gpu
    Call Method    ${chrome_options}   add_argument    no-sandbox
    SeleniumLibrary.Create WebDriver  Chrome  chrome_options=${chrome_options}
    SeleniumLibrary.Set Window Size    1920    1080
    SeleniumLibrary.Go to    ${url} 
    SeleniumLibrary.Set Selenium Implicit Wait    60s
    SeleniumLibrary.Wait Until Element Is Enabled    //div[@class='login-footertxt']/p    
    SeleniumLibrary.Input Text    id=form_username    admins
    SeleniumLibrary.Input Text    id=form_password    admins@123
    SeleniumLibrary.Click Button    id=form_login
	#Check after login home page display or not
    SeleniumLibrary.Wait Until Element Is Visible    xpath=.//span[@class='logo replacea']/img    timeout=50    error=false
    SeleniumLibrary.Close Browser
	
    #Reviewer Login
    ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}   add_argument    headless
    Call Method    ${chrome_options}   add_argument    disable-gpu
    Call Method    ${chrome_options}   add_argument    no-sandbox
    SeleniumLibrary.Create WebDriver  Chrome  chrome_options=${chrome_options}
    SeleniumLibrary.Set Window Size    1920    1080
    SeleniumLibrary.Go to    ${url} 
    SeleniumLibrary.Set Selenium Implicit Wait    60s
    SeleniumLibrary.Wait Until Element Is Enabled    //div[@class='login-footertxt']/p    
    SeleniumLibrary.Input Text    id=form_username    reviewers
    SeleniumLibrary.Input Text    id=form_password    reviewers@123
    SeleniumLibrary.Click Button    id=form_login
	#Check after login home page display or not
    SeleniumLibrary.Wait Until Element Is Visible    xpath=.//span[@class='logo replacea']/img    timeout=50    error=false
    SeleniumLibrary.Close Browser
	
	#Admin Creator Login
    ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}   add_argument    headless
    Call Method    ${chrome_options}   add_argument    disable-gpu
    Call Method    ${chrome_options}   add_argument    no-sandbox
    SeleniumLibrary.Create WebDriver  Chrome  chrome_options=${chrome_options}
    SeleniumLibrary.Set Window Size    1920    1080
    SeleniumLibrary.Go to    ${url} 
    SeleniumLibrary.Set Selenium Implicit Wait    60s
    SeleniumLibrary.Wait Until Element Is Enabled    //div[@class='login-footertxt']/p    
    SeleniumLibrary.Input Text    id=form_username    CreatorAdmincreator
    SeleniumLibrary.Input Text    id=form_password    CreatorAdmin123
    SeleniumLibrary.Click Button    id=form_login
	#Check after login home page display or not
    SeleniumLibrary.Wait Until Element Is Visible    xpath=.//span[@class='logo replacea']/img    timeout=50    error=false
    SeleniumLibrary.Close Browser
	
    #compliancehead Login
    ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}   add_argument    headless
    Call Method    ${chrome_options}   add_argument    disable-gpu
    Call Method    ${chrome_options}   add_argument    no-sandbox
    SeleniumLibrary.Create WebDriver  Chrome  chrome_options=${chrome_options}
    SeleniumLibrary.Set Window Size    1920    1080
    SeleniumLibrary.Go to    ${url} 
    SeleniumLibrary.Set Selenium Implicit Wait    60s
    SeleniumLibrary.Wait Until Element Is Enabled    //div[@class='login-footertxt']/p    
    SeleniumLibrary.Input Text    id=form_username    compliancehead
    SeleniumLibrary.Input Text    id=form_password    compliancehead
    SeleniumLibrary.Click Button    id=form_login
	#Check after login home page display or not
    SeleniumLibrary.Wait Until Element Is Visible    xpath=.//span[@class='logo replacea']/img    timeout=50    error=false
    SeleniumLibrary.Close Browser

    #Creatorhead Login
    ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}   add_argument    headless
    Call Method    ${chrome_options}   add_argument    disable-gpu
    Call Method    ${chrome_options}   add_argument    no-sandbox
    SeleniumLibrary.Create WebDriver  Chrome  chrome_options=${chrome_options}
    SeleniumLibrary.Set Window Size    1920    1080
    SeleniumLibrary.Go to    ${url} 
    SeleniumLibrary.Set Selenium Implicit Wait    60s
    SeleniumLibrary.Wait Until Element Is Enabled    //div[@class='login-footertxt']/p    
    SeleniumLibrary.Input Text    id=form_username    creatorhead
    SeleniumLibrary.Input Text    id=form_password    creatorhead
    SeleniumLibrary.Click Button    id=form_login
	#Check after login home page display or not
    SeleniumLibrary.Wait Until Element Is Visible    xpath=.//span[@class='logo replacea']/img    timeout=50    error=false
    SeleniumLibrary.Close Browser
