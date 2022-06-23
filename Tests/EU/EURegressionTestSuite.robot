*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/resources.robot

*** Test Cases ***
TC01 Login User
    Open Login EU
    maximize browser window
    accept cookie
    sleep    3
    Login To Website
    Save Screenshot Directory EU
    capture page screenshot    EUTC01.png
    End Test

TC02 Register User
    Open Registration EU
    maximize browser window
    Accept Cookie
    sleep    3
    New Email Address (EU)
    Fill in Registration Form
    Save Screenshot Directory EU
    capture page screenshot    EUTC02.png
    End Test

TC03 Domestic Order (Registered User - Credit Card)
    Open Login EU
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart EU
    Proceed to Cart Page
    Go to Checkout Page
    Enter Domestic Address EU
    Go to Payment Page
    Select Credit Card
    Place Order
    Verify Order Success Page
    Save Screenshot Directory EU
    capture page screenshot    EUTC03.png
    End Test

TC04 International Order (Registered User - Credit Card)
    Open Login EU
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart EU
    Proceed to Cart Page
    Go to Checkout Page
    Enter International Address EU
    Go to Payment Page
    Select Credit Card
    Place Order
    Verify Order Success Page
    Save Screenshot Directory EU
    capture page screenshot    EUTC04.png
    End Test

TC05 Domestic Order (Registered User - Gift Card)
    Open Login EU
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart EU
    Proceed to Cart Page
    Go to Checkout Page
    Enter Domestic Address EU
    Go to Payment Page
    Select Gift Card Payment (EU)
    Place Order
    Verify Order Success Page
    Save Screenshot Directory EU
    capture page screenshot    EUTC05.png
    End Test

TC06 International Order (Registered User - Gift Card)
    Open Login EU
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart EU
    Proceed to Cart Page
    Go to Checkout Page
    Enter International Address EU
    Go to Payment Page
    Select Gift Card Payment (EU)
    Place Order
    Verify Order Success Page
    Save Screenshot Directory EU
    capture page screenshot    EUTC06.png
    End Test

TC07 Domestic Order (Registered User - Retail Rewards)
    Open Login EU
    maximize browser window
    Accept Cookie
    Login To Website (Retail Rewards - VIP)
    sleep    3
    Add Product to Cart EU
    Proceed to Cart Page
    Go to Checkout Page
    Enter Domestic Address EU
    Go to Payment Page
    Place Order
    Verify Order Success Page
    Save Screenshot Directory Eu
    capture page screenshot    EUTC07.png
    End Test

TC08 International (Registered User - Retail Rewards)
    Open Login EU
    maximize browser window
    Accept Cookie
    Login To Website (Retail Rewards - VIP)
    sleep    3
    Add Product to Cart EU
    Proceed to Cart Page
    Go to Checkout Page
    Enter International Address EU
    Go to Payment Page
    Place Order
    Verify Order Success Page
    Save Screenshot Directory EU
    capture page screenshot    EUTC08.png
    End Test

TC09 Domestic Order (Guest User - Gift Card)
    Open EU Website
    maximize browser window
    Accept Cookie
    Add Product to Cart EU
    Proceed to Cart Page
    sleep    3
    Continue as Guest User
    Enter Domestic Address EU
    Go to Payment Page
   Select Gift Card Payment (EU)
    Place Order
    Verify Order Success Page
    Save Screenshot Directory EU
    capture page screenshot    EUTC09.png
    End Test

TC10 International Order (Guest User - Gift Card)
    Open EU Website
    maximize browser window
    Accept Cookie
    Add Product to Cart EU
    Proceed to Cart Page
    sleep    3
    Continue as Guest User
    Enter International Address EU
    Go to Payment Page
    Select Gift Card Payment (EU)
    Place Order
    Verify Order Success Page
    Save Screenshot Directory EU
    capture page screenshot    EUTC10.png
    End Test

TC69 Purchase a Digital Gift Card (Registered User)
    Open Login EU
    maximize browser window
    Accept Cookie
    Login To Website - Gift Card
    sleep    3
    Select Gift Card EU
    Add Digital Gift Card
    Select Credit Card
    Place Order
    sleep    3
    Verify Order Success Page
    Save Screenshot Directory EU
    capture page screenshot    EUTC69.png
    End Test

TC11 Subscribe from Website (Registered User)
    Open Login EU
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Click Subsription on My Account
    ${count}=   get element count    ${CLICK_TO_UNSUBSCRIBE}
    run keyword if    ${count} > 0  Click unsubscribe
    ...     ELSE    click subscribe
    Save Screenshot Directory EU
    capture page screenshot    EUTC11.png
    End Test

TC12 unsubscribe from Website (Registered User)
    Open Login EU
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Click Subsription on My Account
    ${count}=   get element count    ${CLICK_TO_SUBSCRIBE}
    run keyword if    ${count} > 0  Click subscribe
    ...     ELSE    click unsubscribe
    Save Screenshot Directory EU
    capture page screenshot    EUTC12.png
    End Test

TC13 Subscribe from Website (Footer)
    Open EU Website
    maximize browser window
    Accept Cookie
    Go to Footer
    sleep    3
    Click Continue on Footer
    sleep    3
    Proceed to Subscribe (EU)
    Click Submit button
    sleep    3
    Save Screenshot Directory EU
    capture page screenshot    EUTC13.png
    End Test

TC20 Maps Functionality
    Open EU Website
    maximize browser window
    Accept Cookie
    Check Map Functionality
    Save Screenshot Directory EU
    capture page screenshot    EUTC20.png
    End Test

TC21 Store Page
    Open EU Website
    maximize browser window
    Accept Cookie
    Go to Store Locator EU
    Check the Stores UK & EUROPE
    Check the Stores AUSTRALIA
    Check the Stores UNITED STATES
    Check the Stores CHINA
    Save Screenshot Directory EU
    capture page screenshot    EUTC21.png
    End Test

TC39 Check and View Store Details FR, EU
    Open EU Website
    maximize browser window
    sleep    3
    Accept Cookie
    Go to Store Locator EU
    Select Store
    Check and View Store Details FR, EU
    View Cannes
    Check Store Details
    Click Find a Store link
    View Paris
    Check Store Details
    Click Find a Store link
    View St Tropez
    Check Store Details
    Click Find a Store link
    VIEW ALL STORES
    sleep    3
    Save Screenshot Directory EU
    capture page screenshot    EUTC37.png
    End Test

TC40 Check and View Store Details IT, EU
    Open EU Website
    maximize browser window
    sleep    3
    Accept Cookie
    Go to Store Locator EU
    Select Store
    Check and View Store Details IT, EU
    View Capri
    Check Store Details
    Click Find a Store link
    View Forte Dei Marmi
    Check Store Details
    Click Find a Store link
    View Milan
    Check Store Details
    Click Find a Store link
    VIEW ALL STORES
    sleep    3
    Save Screenshot Directory EU
    capture page screenshot    EUTC40.png
    End Test

TC41 Check and View Store Details SP, EU
    Open EU Website
    maximize browser window
    sleep    3
    Accept Cookie
    Go to Store Locator EU
    Select Store
    Check and View Store Details SP, EU
    View Puerto Banus
    Check Store Details
    Click Find a Store link
    View Spain
    Check Store Details
    Click Find a Store link
    VIEW ALL STORES
    sleep    3
    Save Screenshot Directory EU
    capture page screenshot    EUTC41.png
    End Test

TC42 Check EU ALL Stores
    Open EU Website
    maximize browser window
    sleep  3
    Accept Cookie
    Go to Store Locator EU
    Select Store
    Check and View Store Details EU ALL
    Check and View EU ALL
    sleep    3
    View ALL Stores
    Save Screenshot Directory EU
    capture page screenshot    EUTC42.png
    End Test

TC59 Switzerland (DDP) - Guest User
    Open EU Website
    maximize browser window
    Accept Cookie
    Add Product to Cart EU
    Proceed to Cart Page
    sleep    3
    Continue as Guest User
    sleep   3
    Select Country Switzerland
    Check DDP
    sleep    3
    Save Screenshot Directory EU
    capture page screenshot    EUTC59.png
    End Test

TC60 Switzerland (DDP) - Registered User
    Open Login EU
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart EU
    Proceed to Cart Page
    Go to Checkout Page
    Select Country Switzerland
    Check DDP
    sleep    3
    Save Screenshot Directory EU
    capture page screenshot    EUTC60.png
    End Test

TC61 Turkey (DDP) - Guest User
    Open EU Website
    maximize browser window
    Accept Cookie
    Add Product to Cart EU
    Proceed to Cart Page
    sleep    3
    Continue as Guest User
    sleep   3
    Select Country Turkey
    Check DDP
    sleep    3
    Save Screenshot Directory EU
    capture page screenshot    EUTC61.png
    End Test

TC62 Turkey (DDP) - Registered User
    Open Login EU
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart EU
    Proceed to Cart Page
    Go to Checkout Page
    Select Country Turkey
    Check DDP
    sleep    3
    Save Screenshot Directory EU
    capture page screenshot    EUTC62.png
    End Test

TC63 Norway (DDP) - Guest User
    Open EU Website
    maximize browser window
    Accept Cookie
    Add Product to Cart EU
    Proceed to Cart Page
    sleep    3
    Continue as Guest User
    sleep   3
    Select Country Norway
    Check DDP
    sleep    3
    Save Screenshot Directory EU
    capture page screenshot    EUTC63.png
    End Test

TC64 Norway (DDP) - Registered User
    Open Login EU
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart EU
    Proceed to Cart Page
    Go to Checkout Page
    Select Country Norway
    Check DDP
    sleep    3
    Save Screenshot Directory EU
    capture page screenshot    EUTC64.png
    End Test

