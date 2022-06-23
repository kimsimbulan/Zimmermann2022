*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/resources.robot

*** Test Cases ***
TC01 Login User
    Open Login UK
    maximize browser window
    accept cookie
    sleep    3
    Login To Website
    Save Screenshot Directory UK
    capture page screenshot    UKTC01.png
    End Test

TC02 Register User
    Open Registration UK
    maximize browser window
    Accept Cookie
    sleep    3
    New Email Address (UK)
    Fill in Registration Form
    Save Screenshot Directory UK
    capture page screenshot    UKTC02.png
    End Test

TC03 Domestic Order (Registered User - Credit Card)
    Open Login UK
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart UK
    Proceed to Cart Page
    Go to Checkout Page
    Enter Domestic Address UK
    Go to Payment Page
    Select Credit Card
    Place Order
    Verify Order Success Page
    Save Screenshot Directory UK
    capture page screenshot    UKTC03.png
    End Test

TC04 International Order (Registered User - Credit Card)
    Open Login UK
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart UK
    Proceed to Cart Page
    Go to Checkout Page
    Enter International Address UK
    Go to Payment Page
    Select Credit Card
    Place Order
    Verify Order Success Page
    Save Screenshot Directory UK
    capture page screenshot    UKTC04.png
    End Test

TC05 Domestic Order (Registered User - Gift Card)
    Open Login UK
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart UK
    Proceed to Cart Page
    Go to Checkout Page
    Enter Domestic Address UK
    Go to Payment Page
    Select Gift Card Payment (UK)
    Place Order
    Verify Order Success Page
    Save Screenshot Directory UK
    capture page screenshot    UKTC05.png
    End Test

TC06 International Order (Registered User - Gift Card)
    Open Login UK
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart UK
    Proceed to Cart Page
    Go to Checkout Page
    Enter International Address UK
    Go to Payment Page
    Select Gift Card Payment (UK)
    Place Order
    Verify Order Success Page
    Save Screenshot Directory UK
    capture page screenshot    UKTC06.png
    End Test

TC07 Domestic Order (Registered User - Retail Rewards)
    Open Login UK
    maximize browser window
    Accept Cookie
    Login To Website (Retail Rewards - VIP)
    sleep    3
    Add Product to Cart UK
    Proceed to Cart Page
    Go to Checkout Page
    Enter Domestic Address UK
    Go to Payment Page
    Place Order
    Verify Order Success Page
    Save Screenshot Directory UK
    capture page screenshot    UKTC07.png
    End Test

TC08 International (Registered User - Retail Rewards)
    Open Login UK
    maximize browser window
    Accept Cookie
    Login To Website (Retail Rewards - VIP)
    sleep    3
    Add Product to Cart UK
    Proceed to Cart Page
    Go to Checkout Page
    Enter International Address UK
    Go to Payment Page
    Place Order
    Verify Order Success Page
    Save Screenshot Directory UK
    capture page screenshot    UKTC08.png
    End Test

TC09 Domestic Order (Guest User - Gift Card)
    Open UK Website
    maximize browser window
    Accept Cookie
    Add Product to Cart UK
    Proceed to Cart Page
    sleep    3
    Continue as Guest User
    Enter Domestic Address UK
    Go to Payment Page
   Select Gift Card Payment (UK)
    Place Order
    Verify Order Success Page
    Save Screenshot Directory UK
    capture page screenshot    UKTC09.png
    End Test

TC10 International Order (Guest User - Gift Card)
    Open UK Website
    maximize browser window
    Accept Cookie
    Add Product to Cart UK
    Proceed to Cart Page
    sleep    3
    Continue as Guest User
    Enter International Address UK
    Go to Payment Page
    Select Gift Card Payment (UK)
    Place Order
    Verify Order Success Page
    Save Screenshot Directory UK
    capture page screenshot    UKTC10.png
    End Test

TC69 Purchase a Digital Gift Card (Registered User)
    Open Login UK
    maximize browser window
    Accept Cookie
    Login To Website - Gift Card
    sleep    3
    Select Gift Card UK
    Add Digital Gift Card
    Select Credit Card
    Place Order
    sleep    3
    Verify Order Success Page
    Save Screenshot Directory UK
    capture page screenshot    UKTC69.png
    End Test

TC11 Subscribe from Website (Registered User)
    Open Login UK
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Click Subsription on My Account
    ${count}=   get element count    ${CLICK_TO_UNSUBSCRIBE}
    run keyword if    ${count} > 0  Click unsubscribe
    ...     ELSE    click subscribe
    Save Screenshot Directory UK
    capture page screenshot    UKTC11.png
    End Test

TC12 unsubscribe from Website (Registered User)
    Open Login UK
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Click Subsription on My Account
    ${count}=   get element count    ${CLICK_TO_SUBSCRIBE}
    run keyword if    ${count} > 0  Click subscribe
    ...     ELSE    click unsubscribe
    Save Screenshot Directory UK
    capture page screenshot    UKTC12.png
    End Test

TC13 Subscribe from Website (Footer)
    Open UK Website
    maximize browser window
    Accept Cookie
    Go to Footer
    sleep    3
    Click Continue on Footer
    sleep    3
    Proceed to Subscribe (UK)
    Click Submit button
    sleep    3
    Save Screenshot Directory UK
    capture page screenshot    UKTC13.png
    End Test

TC20 Maps Functionality
    Open UK Website
    maximize browser window
    Accept Cookie
    Check Map Functionality
    Save Screenshot Directory UK
    capture page screenshot    UKTC20.png
    End Test

TC21 Store Page
    Open UK Website
    maximize browser window
    Accept Cookie
    Go to Store Locator UK
    Check the Stores UK & EUROPE
    Check the Stores AUSTRALIA
    Check the Stores UNITED STATES
    Check the Stores CHINA
    Save Screenshot Directory UK
    capture page screenshot    UKTC21.png
    End Test

TC37 Check and View Store Details LON, UK
    Open UK Website
    maximize browser window
    Accept Cookie
    Go to Store Locator UK
    Select Store
    Check and View Store Details LON, UK
    View Mayfair
    Check Store Details
    Click Find a Store link
    VIEW ALL STORES
    sleep    3
    Save Screenshot Directory UK
    capture page screenshot    UKTC37.png
    End Test

TC38 Check UK ALL Stores
    Open UK Website
    maximize browser window
    Accept Cookie
    Go to Store Locator UK
    Select Store
    Check and View Store Details UK ALL
    Check and View UK ALL
    sleep    3
    View ALL Stores
    Save Screenshot Directory UK
    capture page screenshot    UKTC38.png
    End Test

TC55 Jordan (DDP) - Guest User
    Open UK Website
    maximize browser window
    Accept Cookie
    Add Product to Cart UK
    Proceed to Cart Page
    sleep    3
    Continue as Guest User
    sleep   3
    Select Country Jordan
    Check DDP
    sleep    3
    Save Screenshot Directory UK
    capture page screenshot    UKTC55.png
    End Test

TC56 Jordan (DDP) - Registered User
    Open Login UK
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart UK
    Proceed to Cart Page
    Go to Checkout Page
    Select Country Jordan
    Check DDP
    sleep    3
    Save Screenshot Directory UK
    capture page screenshot    UKTC56.png
    End Test

TC57 Azerbaijan (DDP) - Guest User
    Open UK Website
    maximize browser window
    Accept Cookie
    Add Product to Cart UK
    Proceed to Cart Page
    sleep    3
    Continue as Guest User
    sleep   3
    Select Country Azerbaijan
    Check DDP
    sleep    3
    Save Screenshot Directory UK
    capture page screenshot    UKTC57.png
    End Test

TC58 Azerbaijan (DDP) - Registered User
    Open Login UK
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart UK
    Proceed to Cart Page
    Go to Checkout Page
    Select Country Azerbaijan
    Check DDP
    sleep    3
    Save Screenshot Directory UK
    capture page screenshot    UKTC58.png
    End Test

