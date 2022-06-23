*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/resources.robot

*** Test Cases ***
TC01 Login User
    Open Login HK
    maximize browser window
    accept cookie
    sleep    3
    Login To Website
    Save Screenshot Directory HK
    capture page screenshot    HKTC01.png
    End Test

TC02 Register User
    Open Registration HK
    maximize browser window
    Accept Cookie
    sleep    3
    New Email Address (HK)
    Fill in Registration Form
    Save Screenshot Directory HK
    capture page screenshot    HKTC02.png
    End Test

TC03 Domestic Order (Registered User - Credit Card)
    Open Login HK
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart HK
    Proceed to Cart Page
    Go to Checkout Page
    Enter Domestic Address
    Go to Payment Page
    Select Credit Card
    Place Order
    Verify Order Success Page
    Save Screenshot Directory HK
    capture page screenshot    HKTC03.png
    End Test

TC04 International Order (Registered User - Credit Card)
    Open Login HK
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart HK
    Proceed to Cart Page
    Go to Checkout Page
    Enter International Address HK
    Go to Payment Page
    Select Credit Card
    Place Order
    Verify Order Success Page
    Save Screenshot Directory HK
    capture page screenshot    HKTC04.png
    End Test

TC05 Domestic Order (Registered User - Gift Card)
    Open Login HK
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart HK
    Proceed to Cart Page
    Go to Checkout Page
    Enter Domestic Address
    Go to Payment Page
    Select Gift Card Payment (HK)
    Place Order
    Verify Order Success Page
    Save Screenshot Directory HK
    capture page screenshot    HKTC05.png
    End Test

TC06 International Order (Registered User - Gift Card)
    Open Login HK
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart HK
    Proceed to Cart Page
    Go to Checkout Page
    Enter International Address HK
    Go to Payment Page
    Select Gift Card Payment (HK)
    Place Order
    Verify Order Success Page
    Save Screenshot Directory HK
    capture page screenshot    HKTC06.png
    End Test

TC07 Domestic Order (Registered User - Retail Rewards)
    Open Login HK
    maximize browser window
    Accept Cookie
    Login To Website (Retail Rewards - VIP)
    sleep    3
    Add Product to Cart HK
    Proceed to Cart Page
    Go to Checkout Page
    Enter Domestic Address
    Go to Payment Page
    Place Order
    Verify Order Success Page
    Save Screenshot Directory HK
    capture page screenshot    HKTC07.png
    End Test

TC08 International (Registered User - Retail Rewards)
    Open Login HK
    maximize browser window
    Accept Cookie
    Login To Website (Retail Rewards - VIP)
    sleep    3
    Add Product to Cart HK
    Proceed to Cart Page
    Go to Checkout Page
    Enter International Address HK
    Go to Payment Page
    Place Order
    Verify Order Success Page
    Save Screenshot Directory HK
    capture page screenshot    HKTC08.png
    End Test

TC09 Domestic Order (Guest User - Gift Card)
    Open HK Website
    maximize browser window
    Accept Cookie
    Add Product to Cart HK
    Proceed to Cart Page
    sleep    3
    Continue as Guest User
    Enter Domestic Address
    Go to Payment Page
    Select Gift Card Payment (HK)
    Place Order
    Verify Order Success Page
    Save Screenshot Directory HK
    capture page screenshot    HKTC09.png
    End Test

TC10 International Order (Guest User - Gift Card)
    Open HK Website
    maximize browser window
    Accept Cookie
    Add Product to Cart HK
    Proceed to Cart Page
    sleep    3
    Continue as Guest User
    Enter International Address
    Go to Payment Page
    Select Gift Card Payment (HK)
    Place Order
    Verify Order Success Page
    Save Screenshot Directory HK
    capture page screenshot    HKTC10.png
    End Test

TC69 Purchase a Digital Gift Card (Registered User)
    Open Login HK
    maximize browser window
    Accept Cookie
    Login To Website - Gift Card
    sleep    3
    Select Gift Card HK
    Add Digital Gift Card
    Select Credit Card
    Place Order
    sleep    3
    Verify Order Success Page
    Save Screenshot Directory HK
    capture page screenshot    HKTC69.png
    End Test

TC11 Subscribe from Website (Registered User)
    Open Login HK
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Click Subsription on My Account
    ${count}=   get element count    ${CLICK_TO_UNSUBSCRIBE}
    run keyword if    ${count} > 0  Click unsubscribe
    ...     ELSE    click subscribe
    Save Screenshot Directory HK
    capture page screenshot    HKTC11.png
    End Test

TC12 unsubscribe from Website (Registered User)
    Open Login HK
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Click Subsription on My Account
    ${count}=   get element count    ${CLICK_TO_SUBSCRIBE}
    run keyword if    ${count} > 0  Click subscribe
    ...     ELSE    click unsubscribe
    Save Screenshot Directory HK
    capture page screenshot    HKTC12.png
    End Test

TC13 Subscribe from Website (Footer)
    Open HK Website
    maximize browser window
    Accept Cookie
    Go to Footer
    sleep    3
    Click Continue on Footer
    sleep    3
    Proceed to Subscribe (HK)
    Click Submit button
    sleep    3
    Save Screenshot Directory HK
    capture page screenshot    HKTC13.png
    End Test

TC20 Maps Functionality
    Open HK Website
    maximize browser window
    Accept Cookie
    Check Map Functionality
    Save Screenshot Directory HK
    capture page screenshot    HKTC20.png
    End Test

TC21 Store Page
    Open HK Website
    maximize browser window
    Accept Cookie
    Go to Store Locator
    Check the Stores CHINA
    Check the Stores AUSTRALIA
    Check the Stores UNITED STATES
    Check the Stores UK & EUROPE
    Save Screenshot Directory HK
    capture page screenshot    HKTC21.png
    End Test

TC43 Check and View Store Details SH, CN
    Open HK Website
    maximize browser window
    sleep    3
    Accept Cookie
    Go to Store Locator HK
    Select Store
    Check and View Store Details SH, CN
    View Shanghai
    Check Store Details
    Click Find a Store link
    VIEW ALL STORES
    sleep    3
    Save Screenshot Directory HK
    capture page screenshot    HKTC43.png
    End Test

TC44 Check HK ALL Stores
    Open HK Website
    maximize browser window
    sleep  3
    Accept Cookie
    Go to Store Locator HK
    Select Store
    Check and View Store Details HK ALL
    Check and View HK ALL
    sleep    3
    View ALL Stores
    Save Screenshot Directory HK
    capture page screenshot    HKTC44.png
    End Test

TC65 Pakistan (HK website) - Guest User
    Open HK Website
    maximize browser window
    Accept Cookie
    Add Product to Cart HK
    Proceed to Cart Page
    sleep    3
    Continue as Guest User
    sleep   3
    Select Country Pakistan
    Check DDP
    sleep    3
    Save Screenshot Directory HK
    capture page screenshot    HKTC65.png
    End Test

TC66 Pakistan (HK website) - Registered User
    Open Login HK
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart HK
    Proceed to Cart Page
    Go to Checkout Page
    Select Country Pakistan
    Check DDP
    sleep    3
    Save Screenshot Directory HK
    capture page screenshot    HKTC66.png
    End Test

TC67 Philippines (HK website) - Guest User
    Open HK Website
    maximize browser window
    Accept Cookie
    Add Product to Cart HK
    Proceed to Cart Page
    sleep    3
    Continue as Guest User
    sleep   3
    Select Country Philippines
    Check DDP
    sleep    3
    Save Screenshot Directory HK
    capture page screenshot    HKTC67.png
    End Test

TC68 Philippines (HK website) - Registered User
    Open Login HK
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart HK
    Proceed to Cart Page
    Go to Checkout Page
    Select Country Philippines
    Check DDP
    sleep    3
    Save Screenshot Directory HK
    capture page screenshot    HKTC68.png
    End Test