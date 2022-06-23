*** Settings ***
Library  SeleniumLibrary
Library     DateTime

*** Variables ***
${BROWSER}        chrome
${URL}            https://staging3.zimmermann.com
${US_URL}         https://staging3.zimmermann.com/us
${UK_URL}         https://staging3.zimmermann.com/uk
${EU_URL}         https://staging3.zimmermann.com/eu
${HK_URL}         https://staging3.zimmermann.com/hk
${PDP_URL_AU}  https://staging3.zimmermann.com/new-arrivals/nina-bandeau-buckle-bra-hot-coral.html
${PDP_URL_US}  https://staging3.zimmermann.com/us/swim/swimwear/bikinis/shelly-mini-tri-bikini-yellow-tie-dye.html
${PDP_URL_EU}  https://staging3.zimmermann.com/eu/new-arrivals/nina-spliced-mini-tri-bikini-spliced.html
${PDP_URL_UK}  https://staging3.zimmermann.com/uk/new-arrivals/shelly-scoop-buckle-1pc-teal-leopard.html
${PDP_URL_HK}  https://staging3.zimmermann.com/hk/new-arrivals/nina-bandeau-buckle-bra-hot-coral.html
${PDP_GC_AU}   https://staging3.zimmermann.com/digital-gift-card.html
${PDP_GC_US}   https://staging3.zimmermann.com/us/digital-gift-card.html
${PDP_GC_EU}   https://staging3.zimmermann.com/eu/digital-gift-card.html
${PDP_GC_UK}   https://staging3.zimmermann.com/uk/digital-gift-card.html
${PDP_GC_HK}   https://staging3.zimmermann.com/hk/digital-gift-card.html
${STORE_LOCATOR_URL}    https://staging3.zimmermann.com/store/locate-store/
${STORE_LOCATOR_US_URL}    https://staging3.zimmermann.com/us/store/locate-store/
${STORE_LOCATOR_EU_URL}    https://staging3.zimmermann.com/eu/store/locate-store/
${STORE_LOCATOR_UK_URL}    https://staging3.zimmermann.com/uk/store/locate-store/
${STORE_LOCATOR_HK_URL}    https://staging3.zimmermann.com/hk/store/locate-store/
${EXPRESS PM}   matrixrate_matrixrate_6148
${AU_EMAIL_ADDRESS_REGISTRATION}   kimc.simbulan+SignUpAutomationTestAU6@gmail.com
${US_EMAIL_ADDRESS_REGISTRATION}   kimc.simbulan+SignUpAutomationTestUS6@gmail.com
${UK_EMAIL_ADDRESS_REGISTRATION}   kimc.simbulan+SignUpAutomationTestUK6@gmail.com
${EU_EMAIL_ADDRESS_REGISTRATION}   kimc.simbulan+SignUpAutomationTestEU6@gmail.com
${HK_EMAIL_ADDRESS_REGISTRATION}   kimc.simbulan+SignUpAutomationTestHK6@gmail.com
${AU_DOMESTIC}    120 Dunning Avenue Rosebery, NSW 2018
${US_DOMESTIC}    120 Waterman Ave Apt 1
${UK_DOMESTIC}    120 Ducks Hill Road
${EU_DOMESTIC}    1 Place Roger Gouzy Doyen des Fra
${HK_DOMESTIC}    Hongkong
${AU_INTERNATIONAL_ADDRESS}    120 Stranges Road Christchurch
${US_INTERNATIONAL_ADDRESS}    Canada
${UK_INTERNATIONAL_ADDRESS}    120 Street
${EU_INTERNATIONAL_ADDRESS}    Turkey
${HK_INTERNATIONAL_ADDRESS}    120 Dunning Avenue Rosebery, NSW 2018
${GUEST_FIRSTNAME}     xpath://html/body/div[5]/main/div/div/div[2]/div[2]/div[2]/ol/li[1]/div/form[2]/div/div[1]/div/div/input
${GUEST_LASTNAME}      xpath://html/body/div[5]/main/div/div/div[2]/div[2]/div[2]/ol/li[1]/div/form[2]/div/div[2]/div/div/input
${GUEST_MOBILE}        xpath://html/body/div[5]/main/div/div/div[2]/div[2]/div[2]/ol/li[1]/div/form[2]/div/div[12]/div/div/input
${GUEST_CONTINUE_BUTTON}    xpath://*[@id="checkout"]/div[2]/div[2]/div[2]/div[2]/form/div[2]/button
${CLICK_TO_UNSUBSCRIBE}     xpath://button[@class='dropdown-list__label dropdown-list__label--normal u-pr--section u-pr--unrelated@xl']
${CLICK_TO_SUBSCRIBE}       xpath://*[@id="form-validate"]/div/button
${AU_GIFT_CARD_NUMBER}      600057503
${AU_GIFT_CARD_PIN}         3049
${US_GIFT_CARD_NUMBER}      600100872
${US_GIFT_CARD_PIN}         1463
${UK_GIFT_CARD_NUMBER}      600090678
${UK_GIFT_CARD_PIN}         5170
${EU_GIFT_CARD_NUMBER}      6000090669
${EU_GIFT_CARD_PIN}         7397
${HK_GIFT_CARD_NUMBER}      600111847
${HK_GIFT_CARD_PIN}         2954
${AU_EMAILADDRESS_SUBSCRIBE_FOOTER}     xpath://*[@class='control input']/input[@class='input__field']
${US_EMAILADDRESS_SUBSCRIBE_FOOTER}     xpath://*[@class='control input']/input[@class='input__field']
${UK_EMAILADDRESS_SUBSCRIBE_FOOTER}     xpath://*[@class='control input']/input[@class='input__field']
${EU_EMAILADDRESS_SUBSCRIBE_FOOTER}     xpath://*[@class='control input']/input[@class='input__field']
${HK_EMAILADDRESS_SUBSCRIBE_FOOTER}     xpath://*[@class='control input']/input[@class='input__field']
${US_NEW_ZEALAND_COUNTRY}   xpath://input[@class='select__field-input input__field choices__input--cloned']     New Zealand
${AUTHENTICATION_WINDOW}    id:Cardinal-ElementContainer
${OTP_FIELD}    xpath://*[@id="content"]/div[2]/form[1]/input[1]

*** Keywords ***
Open Website
    open browser    ${URL}  chrome

Open US Website
    open browser    ${US_URL}  chrome

Open UK Website
    open browser    ${UK_URL}  chrome

Open EU Website
    open browser    ${EU_URL}  chrome

Open HK Website
    open browser    ${HK_URL}  chrome

Open Login
    open browser    https://staging3.zimmermann.com/customer/account/login/     ${BROWSER}

Open Login US
    open browser    https://staging3.zimmermann.com/us/customer/account/login/  ${BROWSER}

Open Login UK
    open browser    https://staging3.zimmermann.com/uk/customer/account/login/  ${BROWSER}

Open Login EU
    open browser    https://staging3.zimmermann.com/eu/customer/account/login/  ${BROWSER}

Open Login HK
    open browser    https://staging3.zimmermann.com/hk/customer/account/login/  ${BROWSER}

Open Registration
    open browser    https://staging3.zimmermann.com/customer/account/create/    ${BROWSER}

Open Registration US
    open browser    https://staging3.zimmermann.com/us/customer/account/create/    ${BROWSER}

Open Registration UK
    open browser    https://staging3.zimmermann.com/uk/customer/account/create/    ${BROWSER}

Open Registration EU
    open browser    https://staging3.zimmermann.com/eu/customer/account/create/    ${BROWSER}

Open Registration HK
    open browser    https://staging3.zimmermann.com/hk/customer/account/create/    ${BROWSER}

Accept Cookie
    sleep    3
    mouse over       id:btn-cookie-accept
    click element    id:btn-cookie-accept

Login To Website
    input text    id:email  kim.simbulan@zimmermann.com
    input text    id:pass   Password12!
    click element    id:send2
    sleep    3

Login To Website - Gift Card
    input text    id:email  kimc.simbulan@gmail.com
    input text    id:pass   Password12!
    click element    id:send2
    sleep    3

Login To Website (Retail Rewards - VIP)
    input text    id:email  kimc.simbulan+1@gmail.com
    input text    id:pass   Password12!
    click element    id:send2
    sleep    3

Save Screenshot Directory
    ${date}     Get Current Date    result_format=%d%m%y
    set screenshot directory    ./Screenshots/AU/${date}

Save Screenshot Directory US
    ${date}     Get Current Date    result_format=%d%m%y
    set screenshot directory    ./Screenshots/US/${date}

Save Screenshot Directory UK
    ${date}     Get Current Date    result_format=%d%m%y
    set screenshot directory    ./Screenshots/UK/${date}

Save Screenshot Directory EU
    ${date}     Get Current Date    result_format=%d%m%y
    set screenshot directory    ./Screenshots/EU/${date}

Save Screenshot Directory HK
    ${date}     Get Current Date    result_format=%d%m%y
    set screenshot directory    ./Screenshots/HK/${date}

Continue as Guest User
    input text    id:guest-email    kim.simbulan@zimmermann.com
    click button    ${GUEST_CONTINUE_BUTTON}
    sleep    10
    wait until element is visible    ${GUEST_FIRSTNAME}
    input text  ${GUEST_FIRSTNAME}     Guest Kim
    input text  ${GUEST_LASTNAME}     Simbulan
    input text  ${GUEST_MOBILE}     452162514
    sleep    3

Fill in Registration Form
    input text    id:firstname  Kimmy
    input text    id:lastname   Simbs
    input text    id:telephone  452162525
    input text    id:password   Password12!
    input text    id:password-confirmation  Password12!
    sleep   5
    wait until page contains element    xpath://*[@id="form-validate"]/div/button
    click element    xpath://*[@id="form-validate"]/div/button

New Email Address (AU)
    input text    xpath://*[@id="email_address"]    ${AU_EMAIL_ADDRESS_REGISTRATION}

New Email Address (US)
    input text    xpath://*[@id="email_address"]    ${US_EMAIL_ADDRESS_REGISTRATION}

New Email Address (EU)
    input text    xpath://*[@id="email_address"]    ${EU_EMAIL_ADDRESS_REGISTRATION}

New Email Address (UK)
    input text    xpath://*[@id="email_address"]    ${UK_EMAIL_ADDRESS_REGISTRATION}

New Email Address (HK)
    input text    xpath://*[@id="email_address"]    ${HK_EMAIL_ADDRESS_REGISTRATION}

Add Product to Cart AU
    go to    ${PDP_URL_AU}

Add Product to Cart US
    go to    ${PDP_URL_US}

Add Product to Cart UK
    go to    ${PDP_URL_UK}

Add Product to Cart EU
    go to    ${PDP_URL_EU}

Add Product to Cart HK
    go to    ${PDP_URL_HK}


Proceed to Cart Page
    sleep    3
    click element    id:option-label-size-1091-item-5123
    click element    id:product-addtocart-button
    sleep    5
    mouse over      xpath://a[@class='header-button popup-trigger']
    wait until element is visible       xpath://a[@class='header-button popup-trigger']
    mouse over      xpath://a[@class='header-button popup-trigger']
    #sleep    10
    click element    id:top-cart-btn-checkout
    sleep    3

Select Gift Card AU
    go to   ${PDP_GC_AU}
    sleep   3

Select Gift Card US
    go to   ${PDP_GC_US}
    sleep   3

Select Gift Card EU
    go to   ${PDP_GC_EU}
    sleep   3

Select Gift Card UK
    go to   ${PDP_GC_UK}
    sleep   3

Select Gift Card HK
    go to   ${PDP_GC_HK}
    sleep   3

Add Digital Gift Card
    click element    xpath://*[@id="product-options-wrapper"]/div[1]/fieldset/div/div/div[1]
    wait until element is visible    xpath://input[@class='select__field-input input__field choices__input--cloned']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   500
    press keys    NONE   ENTER
    input text    id:giftcard_sender_name   Kim Simbulan
    input text    id:giftcard_recipient_name    Kimmy
    input text    id:giftcard_recipient_email   kim.simbulan@zimmermann.com
    input text    id:giftcard-message   Happy Birthday!
    click button    id:product-addtocart-button
    sleep    3
    mouse over    xpath://a[@class='header-button popup-trigger']
    click element    id:top-cart-btn-checkout
    sleep    10

Go to Checkout Page
    sleep    5
    click element    xpath://a[@class='link__button checkout-shipping-address__action-buttons']
    sleep    10

Enter Domestic Address
    input text    xpath://input[@class='input__field required']    ${AU_DOMESTIC}
    sleep   3
    wait until element is visible    xpath://li[@class='js-pca__item pca__item'][1]
    click element    xpath://li[@class='js-pca__item pca__item'][1]

Enter Domestic Address US
    input text    xpath://input[@class='input__field required']    ${US_DOMESTIC}
    sleep   3
    wait until element is visible    xpath://li[@class='js-pca__item pca__item'][1]
    click element    xpath://li[@class='js-pca__item pca__item'][1]

Enter Domestic Address UK
    input text    xpath://input[@class='input__field required']    ${UK_DOMESTIC}
    sleep   3
    wait until element is visible    xpath://li[@class='js-pca__item pca__item'][1]
    click element    xpath://li[@class='js-pca__item pca__item'][1]

Enter Domestic Address EU
    input text    xpath://input[@class='input__field required']    ${UK_DOMESTIC}
    sleep   3
    wait until element is visible    xpath://li[@class='js-pca__item pca__item'][1]
    click element    xpath://li[@class='js-pca__item pca__item'][1]

Enter International Address
    click element       xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     New Zealand
    sleep    3
    press keys    NONE  ENTER
    sleep   3
    input text  xpath://input[@class='input__field required']    ${AU_INTERNATIONAL_ADDRESS}}
    sleep   10
    click element    xpath://li[@class='js-pca__item pca__item'][1]

Enter International Address US
    click element       xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     Canada
    sleep    3
    press keys    NONE  ENTER
    sleep   3
    input text  xpath://input[@class='input__field required']    ${US_INTERNATIONAL_ADDRESS}
    sleep   10
    click element    xpath://li[@class='js-pca__item pca__item'][1]

Enter International Address UK
    click element       xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     Jordan
    sleep    3
    press keys    NONE  ENTER
    sleep   3
    input text  xpath://input[@class='input__field required']    ${UK_INTERNATIONAL_ADDRESS}}
    sleep   10
    click element    xpath://li[@class='js-pca__item pca__item'][1]

Enter International Address EU
    click element       xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     Turkey
    sleep    3
    press keys    NONE  ENTER
    sleep   3
    input text  xpath://input[@class='input__field required']    ${EU_INTERNATIONAL_ADDRESS}
    sleep   10
    click element    xpath://li[@class='js-pca__item pca__item'][1]

Enter International Address HK
    click element       xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     Australia
    sleep    3
    press keys    NONE  ENTER
    sleep   3
    input text  xpath://input[@class='input__field required']    ${HK_INTERNATIONAL_ADDRESS}
    sleep   10
    click element    xpath://li[@class='js-pca__item pca__item'][1]

Select Country Australia
    click element   xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     Australia
    press keys    NONE  ENTER
    sleep   3

Select Country New Zealand
    click element   xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     New Zealand
    press keys    NONE  ENTER
    sleep   3

Select Country Canada
    click element   xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     Canada
    press keys    NONE  ENTER
    sleep   3

Select Country Argentina
    click element   xpath://div[@class='select__field-item choices__item--selectable']
    sleep    3
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     Argentina
    press keys    NONE  ENTER
    sleep   3

Select Country Jordan
    click element   xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     Jordan
    press keys    NONE  ENTER
    sleep   3

Select Country Azerbaijan
    click element   xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     Azerbaijan
    press keys    NONE  ENTER
    sleep   3

Select Country Switzerland
    click element   xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     Switzerland
    press keys    NONE  ENTER
    sleep   3

Select Country Turkey
    click element   xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     Turkey
    press keys    NONE  ENTER
    sleep   3

Select Country Norway
    click element   xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     Norway
    press keys    NONE  ENTER
    sleep   3

Select Country Pakistan
    click element   xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     Pakistan
    press keys    NONE  ENTER
    sleep   3

Select Country Philippines
    click element   xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     Philippines
    press keys    NONE  ENTER
    sleep   3

Go to Payment Page
    sleep    3
    execute javascript    window.scrollTo(0,1500)
    sleep   10
    click button    xpath://button[@class='button continue button--fluid']
    sleep    3

Select Credit Card
    wait until element is visible    xpath://div[@class='payment-cards-dropdown choices']
    click element    xpath://div[@class='payment-cards-dropdown choices']
    wait until element is visible    xpath://*[@id="payment-method-braintree-cc-vault"]/div[1]/label
    click element    xpath://*[@id="payment-method-braintree-cc-vault"]/div[1]/label
    sleep    3

Select Gift Card Payment (AU)
    click element   xpath://*[@id="co-payment-form"]/fieldset/div[4]/span
    sleep    3
    input text    id:giftcard-code  ${AU_GIFT_CARD_NUMBER}
    input text    id:giftcard-pin   ${AU_GIFT_CARD_PIN}
    click button    xpath://button[@class='button button--secondary button--giftcard']
    sleep    5

Select Gift Card Payment (US)
    click element   xpath://*[@id="co-payment-form"]/fieldset/div[4]/span
    sleep    3
    input text    id:giftcard-code  ${US_GIFT_CARD_NUMBER}
    input text    id:giftcard-pin   ${US_GIFT_CARD_PIN}
    click button    xpath://button[@class='button button--secondary button--giftcard']
    sleep    5

Select Gift Card Payment (UK)
    click element   xpath://*[@id="co-payment-form"]/fieldset/div[4]/span
    sleep    3
    input text    id:giftcard-code  ${UK_GIFT_CARD_NUMBER}
    input text    id:giftcard-pin   ${UK_GIFT_CARD_PIN}
    click button    xpath://button[@class='button button--secondary button--giftcard']
    sleep    5

Select Gift Card Payment (EU)
    click element   xpath://*[@id="co-payment-form"]/fieldset/div[4]/span
    sleep    3
    input text    id:giftcard-code  ${EU_GIFT_CARD_NUMBER}
    input text    id:giftcard-pin   ${EU_GIFT_CARD_PIN}
    click button    xpath://button[@class='button button--secondary button--giftcard']
    sleep    5

Select Gift Card Payment (HK)
    click element   xpath://*[@id="co-payment-form"]/fieldset/div[4]/span
    sleep    3
    input text    id:giftcard-code  ${HK_GIFT_CARD_NUMBER}
    input text    id:giftcard-pin   ${HK_GIFT_CARD_PIN}
    click button    xpath://button[@class='button button--secondary button--giftcard']
    sleep    5

Select Paypal
    sleep    20
    click element    xpath://*[@id="payment-method-braintree-paypal"]/div[1]/label
    sleep    20
    click button    xpath://*[@id="buttons-container"]
    sleep    3
    switch browser    https://www.sandbox.paypal.com/

Place Order
    sleep    3
    execute javascript    window.scrollTo(0,1500)
    click button    xpath://div[@class='place-order']/button[@class='button button--fluid button--strong']
    sleep   5

Verify Order Success Page
    sleep   5

Click Subsription on My Account
    click element    xpath://*[@id="maincontent"]/div[2]/div[1]/div[1]/div/div/div[2]/ul/li[11]/a
    #go to   https://staging3.zimmermann.com/newsletter/manage/

Click unsubscribe
    click element    ${CLICK_TO_UNSUBSCRIBE}
    sleep    3
    click button    xpath://button[@class='button button--secondary button--fluid']
    set focus to element    id:subscription
    click element    xpath://html/body/div[3]/main/div[2]/div[2]/div[3]/ul/li/div/form/div[1]/label
    click button    xpath://button[@class='button button--secondary button--fluid']
    sleep   3
    page should contain    You are not subscribed to the ZIMMERMANN newsletter.
    capture page screenshot    C:\Users\kim.simbulan\PycharmProjects\Automation\Results\AU\TC09.png

Click subscribe
    click element    ${CLICK_TO_SUBSCRIBE}
    sleep   3
    page should contain    You are subscribed to the ZIMMERMANN newsletter.
    capture page screenshot     AUTC10.png

Go to Footer
    execute javascript    window.scrollTo(0,1500)

Click Continue on Footer
    click button    id:newsletter-footer-button

Proceed to Subscribe (AU)
    input text    ${AU_EMAILADDRESS_SUBSCRIBE_FOOTER}   kimc.simbulan+subscribeFooterAutomationAU6@gmail.com

Proceed to Subscribe (US)
    input text    ${US_EMAILADDRESS_SUBSCRIBE_FOOTER}   kimc.simbulan+subscribeFooterAutomationUS6@gmail.com

Proceed to Subscribe (UK)
    input text    ${UK_EMAILADDRESS_SUBSCRIBE_FOOTER}   kimc.simbulan+subscribeFooterAutomationUK6@gmail.com

Proceed to Subscribe (EU)
    input text    ${EU_EMAILADDRESS_SUBSCRIBE_FOOTER}   kimc.simbulan+subscribeFooterAutomationEU6@gmail.com

Proceed to Subscribe (HK)
    input text    ${HK_EMAILADDRESS_SUBSCRIBE_FOOTER}   kimc.simbulan+subscribeFooterAutomationHK6@gmail.com

Click Submit button
    click element    xpath://*[@id="newsletter-validate-detail"]/div[2]/button

Check NON DDU/DDP
    page should not contain     xpath://div[@class='totals duty-text']

Check DDP
    page should contain element    xpath://div[@class='totals duty-text']
    element text should be    xpath://div[@class='totals duty-text']    DUTIES AND TAXES ARE INCLUDED

Check Map Functionality
    go to   ${STORE_LOCATOR_URL}
    execute javascript    window.scrollTo(0,300)
    sleep    3
    page should contain element    xpath://*[@id="map"]/div/div/div[2]/div[2]
    mouse over  xpath://*[@id="map"]/div/div/div[2]/div[2]/div/div[3]/div[24]/img
    click element   xpath://*[@id="map"]/div/div/div[2]/div[2]/div/div[3]/div[24]/img
    sleep   3
    click element    xpath:/html/body/div[3]/main/div[3]/div/div[3]/div/div/div/div[2]/div[2]/div/div[4]/div/div/div[2]/div/a
    sleep    3
    element should be visible   xpath://h1[@class='heading heading--page store-details__name']

Go to Store Locator
    go to   ${STORE_LOCATOR_URL}
    sleep    3

Go to Store Locator US
    go to   ${STORE_LOCATOR_US_URL}
    sleep    3

Go to Store Locator UK
    go to   ${STORE_LOCATOR_UK_URL}
    sleep    3

Go to Store Locator EU
    go to   ${STORE_LOCATOR_EU_URL}
    sleep    3

Go to Store Locator HK
    go to   ${STORE_LOCATOR_HK_URL}
    sleep    3

Check the Stores AUSTRALIA
    execute javascript        window.scrollTo(0,300)
    element text should be    xpath://*[contains(text(),'AUSTRALIA')]           AUSTRALIA
    execute javascript        window.scrollTo(0,1200)
    element text should be    xpath://a[contains(text(),'ADELAIDE')]            ADELAIDE
    element text should be    xpath://a[contains(text(),'ARMADALE')]            ARMADALE
    element text should be    xpath://a[contains(text(),'BONDI')]               BONDI
    element text should be    xpath://a[contains(text(),'BRISBANE')]            BRISBANE
    element text should be    xpath://a[contains(text(),'CHADSTONE')]           CHADSTONE
    element text should be    xpath://a[contains(text(),'CHATSWOOD')]           CHATSWOOD
    element text should be    xpath://a[contains(text(),'CLAREMONT')]           CLAREMONT
    element text should be    xpath://a[contains(text(),'Doncaster')]           DONCASTER
    element text should be    xpath://a[contains(text(),'Emporium')]            EMPORIUM
    execute javascript        window.scrollTo(0,1600)
    element text should be    xpath://a[contains(text(),'Indooroopilly')]       INDOOROOPILLY
    element text should be    xpath://a[contains(text(),'James St')]            JAMES ST
    element text should be    xpath://a[contains(text(),'Macquarie')]           MACQUARIE
    execute javascript        window.scrollTo(0,2000)
    element text should be    xpath://a[contains(text(),'MELBOURNE OUTLET')]    MELBOURNE OUTLET
    element text should be    xpath://a[contains(text(),'MIRANDA')]             MIRANDA
    element text should be    xpath://a[contains(text(),'PACIFIC FAIR')]        PACIFIC FAIR
    element text should be    xpath://a[contains(text(),'Paddington')]          PADDINGTON
    element text should be    xpath://a[contains(text(),'QV')]                  QV
    element text should be    xpath://a[contains(text(),'South Yarra')]         SOUTH YARRA
    element text should be    xpath://a[contains(text(),'YDNEY CBD')]           SYDNEY CBD
    element text should be    xpath://a[contains(text(),'SYDNEY OUTLET')]       SYDNEY OUTLET
    element text should be    xpath://a[contains(text(),'Warringah Mall')]      WARRINGAH MALL
    sleep    3

Check the Stores CHINA
    execute javascript      window.scrollTo(0,3000)
    element text should be  xpath://*[contains(text(),'CHINA')]     CHINA
    element text should be  xpath://a[contains(text(),'Shanghai')]  SHANGHAI
    sleep   3

Check the Stores UNITED STATES
    execute javascript    window.scrollTo(0,3500)
    element text should be    xpath://*[contains(text(),'UNITED STATES')]           UNITED STATES
    element should contain    xpath://a[contains(text(),'Americana Manhasset')]     AMERICANA MANHASSET
    element should contain    xpath://a[contains(text(),'BAL HARBOUR')]             BAL HARBOUR
    element should contain    xpath://a[contains(text(),'Dallas')]                  DALLAS
    element should contain    xpath://a[contains(text(),'East Hampton')]            EAST HAMPTON
    element should contain    xpath://a[contains(text(),'GEORGIA')]                 GEORGIA
    element should contain    xpath://a[contains(text(),'Hawaii')]                  HAWAII
    element should contain    xpath://a[contains(text(),'Madison Avenue')]          MADISON AVENUE
    element should contain    xpath://a[contains(text(),'Meatpacking')]             MEATPACKING
    element should contain    xpath://a[contains(text(),'Melrose Place')]           MELROSE PLACE
    element should contain    xpath://a[contains(text(),'Pacific Palisades')]       PACIFIC PALISADES
    element should contain    xpath://a[contains(text(),'Palm Beach')]              PALM BEACH
    element should contain    xpath://a[contains(text(),'San Francisco')]           SAN FRANCISCO
    element should contain    xpath://a[contains(text(),'Short Hills')]             SHORT HILLS
    element should contain    xpath://a[contains(text(),'SOHO')]                    SOHO
    element should contain    xpath://a[contains(text(),'South Coast Plaza')]       SOUTH COAST PLAZA
    element should contain    xpath://a[contains(text(),'Woodbury Outlet')]         WOODBURY OUTLET
    element should contain    xpath://a[contains(text(),'Wynn Plaza')]              WYNN PLAZA

Check the Stores UK & EUROPE
    execute javascript        window.scrollTo(0,5500)
    element text should be    xpath://*[contains(text(),'UK & EUROPE')]         UK & EUROPE
    element text should be    xpath://a[contains(text(),'Cannes')]              CANNES
    element text should be    xpath://a[contains(text(),'Capri')]               CAPRI
    element text should be    xpath://a[contains(text(),'Forte Dei Marmi')]     FORTE DEI MARMI
    element text should be    xpath://a[contains(text(),'MAYFAIR')]             MAYFAIR
    element text should be    xpath://a[contains(text(),'Milan')]               MILAN
    element text should be    xpath://a[contains(text(),'Paris')]               PARIS
    element text should be    xpath://a[contains(text(),'Puerto Banus')]        PUERTO BANUS
    element text should be    xpath://a[contains(text(),'SPAIN')]               SPAIN
    element text should be    xpath://a[contains(text(),'St Tropez')]           ST TROPEZ

#Check the Stores UNITED STATES 1
#    execute javascript        window.scrollTo(0,1000)
#    element text should be    xpath://*[contains(text(),'UNITED STATES')]           UNITED STATES
#    element should contain    xpath://a[contains(text(),'Americana Manhasset')]     AMERICANA MANHASSET
#    element should contain    xpath://a[contains(text(),'BAL HARBOUR')]             BAL HARBOUR
#    element should contain    xpath://a[contains(text(),'Dallas')]                  DALLAS
#    element should contain    xpath://a[contains(text(),'East Hampton')]            EAST HAMPTON
#    element should contain    xpath://a[contains(text(),'GEORGIA')]                 GEORGIA
#    element should contain    xpath://a[contains(text(),'Hawaii')]                  HAWAII
#    element should contain    xpath://a[contains(text(),'Madison Avenue')]          MADISON AVENUE
#    element should contain    xpath://a[contains(text(),'Meatpacking')]             MEATPACKING
#    element should contain    xpath://a[contains(text(),'Melrose Place')]           MELROSE PLACE
#    element should contain    xpath://a[contains(text(),'Pacific Palisades')]       PACIFIC PALISADES
#    element should contain    xpath://a[contains(text(),'Palm Beach')]              PALM BEACH
#    element should contain    xpath://a[contains(text(),'San Francisco')]           SAN FRANCISCO
#    execute javascript        window.scrollTo(0,1800)
#    element should contain    xpath://a[contains(text(),'Short Hills')]             SHORT HILLS
#    element should contain    xpath://a[contains(text(),'SOHO')]                    SOHO
#    element should contain    xpath://a[contains(text(),'South Coast Plaza')]       SOUTH COAST PLAZA
#    element should contain    xpath://a[contains(text(),'Woodbury Outlet')]         WOODBURY OUTLET
#    element should contain    xpath://a[contains(text(),'Wynn Plaza')]              WYNN PLAZA

#Check the Stores AUSTRALIA (US)
#    execute javascript      window.scrollTo(0,300)
#    element text should be    xpath://*[@id="maincontent"]/div[3]/div/div[5]/div[1]     AUSTRALIA
#    execute javascript      window.scrollTo(0,1200)
#    element text should be    xpath://*[@id="maincontent"]/div[3]/div/div[5]/div[2]/div[1]/div/a[1]     ADELAIDE
#    element text should be    xpath://*[@id="maincontent"]/div[3]/div/div[5]/div[2]/div[2]/div/a[1]     ARMADALE
#    element text should be    xpath://*[@id="maincontent"]/div[3]/div/div[5]/div[2]/div[3]/div/a[1]     BONDI
#    element text should be    xpath://*[@id="maincontent"]/div[3]/div/div[5]/div[2]/div[4]/div/a[1]     BRISBANE
#    element text should be    xpath://*[@id="maincontent"]/div[3]/div/div[5]/div[2]/div[5]/div/a[1]     CHADSTONE
#    element text should be    xpath://*[@id="maincontent"]/div[3]/div/div[5]/div[2]/div[6]/div/a[1]     CHATSWOOD
#    element text should be    xpath://*[@id="maincontent"]/div[3]/div/div[5]/div[2]/div[7]/div/a[1]     CLAREMONT
#    element text should be    xpath://*[@id="maincontent"]/div[3]/div/div[5]/div[2]/div[8]/div/a[1]     DONCASTER
#    element text should be    xpath://*[@id="maincontent"]/div[3]/div/div[5]/div[2]/div[9]/div/a[1]     EMPORIUM
#    element text should be    xpath://*[@id="maincontent"]/div[3]/div/div[5]/div[2]/div[10]/div/a[1]    INDOOROOPILLY
#    element text should be    xpath://*[@id="maincontent"]/div[3]/div/div[5]/div[2]/div[11]/div/a[1]    JAMES ST
#    element text should be    xpath://*[@id="maincontent"]/div[3]/div/div[5]/div[2]/div[12]/div/a[1]    MACQUARIE
#    execute javascript      window.scrollTo(0,1600)
#    element text should be    xpath://*[@id="maincontent"]/div[3]/div/div[5]/div[2]/div[13]/div/a[1]    MELBOURNE OUTLET
#    element text should be    xpath://*[@id="maincontent"]/div[3]/div/div[5]/div[2]/div[14]/div/a[1]    MIRANDA
#    element text should be    xpath://*[@id="maincontent"]/div[3]/div/div[5]/div[2]/div[15]/div/a[1]    PACIFIC FAIR
#    element text should be    xpath://*[@id="maincontent"]/div[3]/div/div[5]/div[2]/div[16]/div/a[1]    PADDINGTON
#    element text should be    xpath://*[@id="maincontent"]/div[3]/div/div[5]/div[2]/div[17]/div/a[1]    QV
#    element text should be    xpath://*[@id="maincontent"]/div[3]/div/div[5]/div[2]/div[18]/div/a[1]    SOUTH YARRA
#    element text should be    xpath://*[@id="maincontent"]/div[3]/div/div[5]/div[2]/div[19]/div/a[1]    SYDNEY CBD
#    element text should be    xpath://*[@id="maincontent"]/div[3]/div/div[5]/div[2]/div[20]/div/a[1]    SYDNEY OUTLET
#    element text should be    xpath://*[@id="maincontent"]/div[3]/div/div[5]/div[2]/div[21]/div/a[1]    WARRINGAH MALL
#    sleep    3

Select Store
    click element    xpath://*[@id="state_search"]/div/div/div[1]/div/div

Check and View Store Details NSW
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   NSW
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element text should be    xpath://*[contains(text(),'New South Wales')]    NEW SOUTH WALES

Check and View Store Details QLD
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   QLD
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element text should be    xpath://*[contains(text(),'Queensland')]     QUEENSLAND

Check and View Store Details SA
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   SA
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element text should be    xpath://*[contains(text(),'South Australia')]     SOUTH AUSTRALIA

Check and View Store Details VIC
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   VIC
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element text should be    xpath://*[contains(text(),'Victoria')]     VICTORIA

Check and View Store Details WA
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   WA
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element text should be    xpath://*[contains(text(),'Western Australia')]     WESTERN AUSTRALIA

Check and View Store Details AU ALL
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   C
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)

Check and View AU ALL
    element text should be    xpath://*[contains(text(),'New South Wales')]     NEW SOUTH WALES
    execute javascript    window.scrollTo(0,500)
    element text should be    xpath://*[contains(text(),'Queensland')]          QUEENSLAND
    execute javascript    window.scrollTo(0,1500)
    element text should be    xpath://*[contains(text(),'South Australia')]     SOUTH AUSTRALIA
    execute javascript    window.scrollTo(0,2000)
    element text should be    xpath://*[contains(text(),'Victoria')]            VICTORIA
    execute javascript    window.scrollTo(0,2500)
    element text should be    xpath://*[contains(text(),'Western Australia')]   WESTERN AUSTRALIA

View Bondi
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'BONDI')]   BONDI

View Chatswood
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'CHATSWOOD')]   CHATSWOOD

View Macquarie
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[3]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[3]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Macquarie')]   MACQUARIE

View Miranda
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[4]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[4]/div/a[2]/span
    sleep    3
    element text should be   xpath://h1[contains(text(),'MIRANDA')]   MIRANDA

View Paddington
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[5]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[5]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Paddington')]   PADDINGTON

View Sydney CBD
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[6]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[6]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'SYDNEY CBD')]   SYDNEY CBD

View Sydney Outlet
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[7]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[7]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'SYDNEY OUTLET')]   SYDNEY OUTLET

View Warringah Mall
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[8]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[8]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Warringah Mall')]   WARRINGAH MALL

View Brisbane
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'BRISBANE')]   BRISBANE

View Indooroopily
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Indooroopilly')]   INDOOROOPILLY

View James St
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[3]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[3]/div/a[2]/span
    sleep    3
    element text should be   xpath://h1[contains(text(),'James St')]   JAMES ST

View Pacific Fair
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[4]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[4]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'PACIFIC FAIR')]   PACIFIC FAIR

View Adelaide
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'ADELAIDE')]   ADELAIDE

View Armadale
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'ARMADALE')]   ARMADALE

View Chadstone
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'CHADSTONE')]   CHADSTONE

View Doncaster
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[3]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[3]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Doncaster')]   DONCASTER

View Emporium
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[4]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[4]/div/a[2]/span
    sleep    3
    element text should be   xpath://h1[contains(text(),'Emporium')]   EMPORIUM

View Melbourne Outlet
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[5]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[5]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'MELBOURNE OUTLET')]   MELBOURNE OUTLET

View QV
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[6]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[6]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'QV')]   QV

View South Yarra
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[7]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[7]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'South Yarra')]   SOUTH YARRA

View Claremont
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'CLAREMONT')]   CLAREMONT

Check Store Details
    element text should be  xpath://*[@id="store-details"]/div[2]/div[2]/div[1]     STORE DETAILS
    element text should be  xpath://*[@class='store-details__contact']/div[@class='store-details__label'][1]    ADDRESS
    element text should be  xpath://*[@class='store-details__contact']/div[@class='store-details__label'][2]    PHONE
    element text should be  xpath://*[@class='store-details__contact']/div[@class='store-details__label'][3]    EMAIL
    element text should be  xpath://*[@class='store-details__trading']/div[@class='store-details__label']       OPENING HOURS
    sleep    3

Click Find a Store link
    click element    xpath://*[@id="store-details"]/div[1]/a/span
    sleep   3
    execute javascript    window.scrollTo(0,0)

View ALL Stores
    execute javascript    window.scrollTo(0,1000)

Check and View Store Details CA, US
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   CA
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element text should be    xpath://*[contains(text(),'California')]    CALIFORNIA

Check and View Store Details FL, US
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   FL
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element text should be    xpath://*[contains(text(),'Florida')]    FLORIDA

Check and View Store Details GA, US
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   GA
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element text should be    xpath://*[contains(text(),'Georgia')]    GEORGIA

Check and View Store Details HI, US
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   HI
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element text should be    xpath://*[contains(text(),'Hawaii')]    HAWAII

Check and View Store Details NJ, US
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   NJ
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element text should be    xpath://*[contains(text(),'New Jersey')]    NEW JERSEY

Check and View Store Details NV, US
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   NV
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element text should be    xpath://*[contains(text(),'Nevada')]    NEVADA

Check and View Store Details NY, US
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   NY
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element text should be    xpath://*[contains(text(),'New York')]    NEW YORK

Check and View Store Details TX, US
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   TX
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element text should be    xpath://*[contains(text(),'Texas')]    TEXAS

Check and View Store Details LON, UK
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   C
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element text should be    xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[1]    UK

Check and View Store Details FR, EU
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   FR
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element should contain    xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[1]    FRANCE

Check and View Store Details IT, EU
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   IT
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element should contain    xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[1]    ITALY

Check and View Store Details SP, EU
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   SP
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element should contain    xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[1]    SPAIN

Check and View Store Details SH, CN
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   C
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element should contain    xpath://*[contains(text(),'Shanghai')]   SHANGHAI

Check and View Store Details US ALL
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   C
    press keys    NONE  ARROW_DOWN
    sleep    3
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)

Check and View Store Details UK ALL
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   C
    press keys    NONE  ARROW_DOWN
    sleep    3
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)

Check and View Store Details EU ALL
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   w
    press keys    NONE  ARROW_DOWN
    sleep    3
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)

Check and View Store Details HK ALL
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   w
    press keys    NONE  ARROW_DOWN
    sleep    3
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)

Check and View US ALL
    element text should be    xpath://*[contains(text(),'California')]      CALIFORNIA
    execute javascript    window.scrollTo(0,500)
    element text should be    xpath://*[contains(text(),'Florida')]         FLORIDA
    execute javascript    window.scrollTo(0,1500)
    element text should be    xpath://*[contains(text(),'Georgia')]         GEORGIA
    execute javascript    window.scrollTo(0,2000)
    element text should be    xpath://*[contains(text(),'Hawaii')]          HAWAII
    execute javascript    window.scrollTo(0,2500)
    element text should be    xpath://*[contains(text(),'New Jersey')]      NEW JERSEY
    execute javascript    window.scrollTo(0,2800)
    element text should be    xpath://*[contains(text(),'Nevada')]          NEVADA
    execute javascript    window.scrollTo(0,3000)
    element text should be    xpath://*[contains(text(),'New York')]        NEW YORK
    execute javascript    window.scrollTo(0,3500)
    element text should be    xpath://*[contains(text(),'Texas')]           TEXAS

Check and View UK ALL
    element should contain    xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[1]      UK
    execute javascript    window.scrollTo(0,500)

Check and View EU ALL
    element should contain    xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[1]      EUROPE
    execute javascript    window.scrollTo(0,500)

Check and View HK ALL
    element should contain    xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[1]      CHINA
    execute javascript    window.scrollTo(0,500)

View Melrose Place
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Melrose Place')]   MELROSE PLACE

View Pacific Palisades
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Pacific Palisades')]   PACIFIC PALISADES

View San Franciso
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[3]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[3]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'San Francisco')]   SAN FRANCISCO

View South Coast Plaza
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[4]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[4]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'South Coast Plaza')]   SOUTH COAST PLAZA

View Bal Harbour
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'BAL HARBOUR')]   BAL HARBOUR

View Palm Beach
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Palm Beach')]   PALM BEACH

View Georgia
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'GEORGIA')]   GEORGIA

View Hawaii
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Hawaii')]   HAWAII

View Short Hills
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Short Hills')]   SHORT HILLS

View Wynn Plaza
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Wynn Plaza')]   WYNN PLAZA

View Americana Manhasset
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Americana Manhasset')]   AMERICANA MANHASSET

View East Hampton
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'East Hampton')]   EAST HAMPTON

View Madison Avenue
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[3]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[3]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Madison Avenue')]   MADISON AVENUE

View Meatpacking
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[4]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[4]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Meatpacking')]   MEATPACKING

View SOHO
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[5]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[5]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'SOHO')]   SOHO

View Woodbury Outlet
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[6]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[6]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Woodbury Outlet')]   WOODBURY OUTLET

View Dallas
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Dallas')]   DALLAS

View Mayfair
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'MAYFAIR')]   MAYFAIR

View Cannes
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Cannes')]   CANNES

View Paris
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Paris')]   PARIS

View St Tropez
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[3]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[3]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'St Tropez')]   ST TROPEZ

View Capri
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Capri')]   CAPRI

View Forte Dei Marmi
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Forte Dei Marmi')]   FORTE DEI MARMI

View Milan
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[3]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[3]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Milan')]   MILAN

View Puerto Banus
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Puerto Banus')]   PUERTO BANUS

View Spain
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'SPAIN')]   SPAIN

View Shanghai
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Shanghai')]   SHANGHAI

End Test
    close browser