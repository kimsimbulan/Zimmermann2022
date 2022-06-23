*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/resources.robot

*** Test Cases ***
TC01 Login User
    Open Login
    maximize browser window
    accept cookie
    sleep    3
    Login To Website
    Save Screenshot Directory
    capture page screenshot    AUTC01.png
    End Test

TC02 Register User
    Open Registration
    maximize browser window
    Accept Cookie
    sleep    3
    New Email Address (AU)
    Fill in Registration Form
    Save Screenshot Directory
    capture page screenshot    AUTC02.png
    End Test

TC03 Domestic Order (Registered User - Credit Card)
    Open Login
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart AU
    Proceed to Cart Page
    Go to Checkout Page
    Enter Domestic Address
    Go to Payment Page
    Select Credit Card
    Place Order
    Verify Order Success Page
    Save Screenshot Directory
    capture page screenshot    AUTC03.png
    End Test

TC04 International Order (Registered User - Credit Card)
    Open Login
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart AU
    Proceed to Cart Page
    Go to Checkout Page
    Enter International Address
    Go to Payment Page
    Select Credit Card
    Place Order
    Verify Order Success Page
    Save Screenshot Directory
    capture page screenshot    AUTC04.png
    End Test

TC05 Domestic Order (Registered User - Gift Card)
    Open Login
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart AU
    Proceed to Cart Page
    Go to Checkout Page
    Enter Domestic Address
    Go to Payment Page
    Select Gift Card Payment (AU)
    Place Order
    Verify Order Success Page
    Save Screenshot Directory
    capture page screenshot    AUTC05.png
    End Test

TC06 International Order (Registered User - Gift Card)
    Open Login
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart AU
    Proceed to Cart Page
    Go to Checkout Page
    Enter International Address
    Go to Payment Page
    Select Gift Card Payment (AU)
    Place Order
    Verify Order Success Page
    Save Screenshot Directory
    capture page screenshot    AUTC06.png
    End Test

TC07 Domestic Order (Registered User - Retail Rewards)
    Open Login
    maximize browser window
    Accept Cookie
    Login To Website (Retail Rewards - VIP)
    sleep    3
    Add Product to Cart AU
    Proceed to Cart Page
    Go to Checkout Page
    Enter Domestic Address
    Go to Payment Page
    Place Order
    Verify Order Success Page
    Save Screenshot Directory
    capture page screenshot    AUTC07.png
    End Test

TC08 International (Registered User - Retail Rewards)
    Open Login
    maximize browser window
    Accept Cookie
    Login To Website (Retail Rewards - VIP)
    sleep    3
    Add Product to Cart AU
    Proceed to Cart Page
    Go to Checkout Page
    Enter International Address
    Go to Payment Page
    Place Order
    Verify Order Success Page
    Save Screenshot Directory
    capture page screenshot    AUTC08.png
    End Test

TC09 Domestic Order (Guest User - Gift Card)
    Open Website
    maximize browser window
    Accept Cookie
    Add Product to Cart AU
    Proceed to Cart Page
    sleep    3
    Continue as Guest User
    Enter Domestic Address
    Go to Payment Page
    Select Gift Card Payment (AU)
    Place Order
    Verify Order Success Page
    Save Screenshot Directory
    capture page screenshot    AUTC09.png
    End Test

TC10 International Order (Guest User - Gift Card)
    Open Website
    maximize browser window
    Accept Cookie
    Add Product to Cart AU
    Proceed to Cart Page
    sleep    3
    Continue as Guest User
    Enter International Address
    Go to Payment Page
    Select Gift Card Payment (AU)
    Place Order
    Verify Order Success Page
    Save Screenshot Directory
    capture page screenshot    AUTC10.png
    End Test

TC69 Purchase a Digital Gift Card (Registered User)
    Open Login
    maximize browser window
    Accept Cookie
    Login To Website - Gift Card
    sleep    3
    Select Gift Card AU
    Add Digital Gift Card
    Select Credit Card
    Place Order
    sleep    3
    Verify Order Success Page
    Save Screenshot Directory
    capture page screenshot    AUTC69.png
    End Test

TC11 Subscribe from Website (Registered User)
    Open Login
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Click Subsription on My Account
    ${count}=   get element count    ${CLICK_TO_UNSUBSCRIBE}
    run keyword if    ${count} > 0  Click unsubscribe
    ...     ELSE    click subscribe
    Save Screenshot Directory
    capture page screenshot    AUTC11.png
    End Test

TC12 unsubscribe from Website (Registered User)
    Open Login
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Click Subsription on My Account
    ${count}=   get element count    ${CLICK_TO_SUBSCRIBE}
    run keyword if    ${count} > 0  Click subscribe
    ...     ELSE    click unsubscribe
    Save Screenshot Directory
    capture page screenshot    AUTC12.png
    End Test

TC13 Subscribe from Website (Footer)
    Open Website
    maximize browser window
    Accept Cookie
    Go to Footer
    sleep    3
    Click Continue on Footer
    sleep    3
    Proceed to Subscribe (AU)
    Click Submit button
    sleep    3
    Save Screenshot Directory
    capture page screenshot    AUTC13.png
    End Test

TC20 Maps Functionality
    Open Website
    maximize browser window
    Accept Cookie
    Check Map Functionality
    Save Screenshot Directory
    capture page screenshot    AUTC20.png
    End Test

TC21 Store Page
    Open Website
    maximize browser window
    Accept Cookie
    Go to Store Locator
    Check the Stores AUSTRALIA
    Check the Stores CHINA
    Check the Stores UNITED STATES
    Check the Stores UK & EUROPE
    Save Screenshot Directory
    capture page screenshot    AUTC21.png
    End Test

TC22 Check and View Store Details NSW
    Open Website
    maximize browser window
    Accept Cookie
    Go to Store Locator
    Select Store
    Check and View Store Details NSW
    View Bondi
    Check Store Details
    Click Find a Store link
    Select Store
    View Chatswood
    Check Store Details
    Click Find a Store link
    Select Store
    View Macquarie
    Check Store Details
    Click Find a Store link
    Select Store
    View Miranda
    Check Store Details
    Click Find a Store link
    Select Store
    View Paddington
    Check Store Details
    Click Find a Store link
    Select Store
    View Sydney CBD
    Check Store Details
    Click Find a Store link
    Select Store
    View Sydney Outlet
    Check Store Details
    Click Find a Store link
    Select Store
    View Warringah Mall
    Click Find a Store link
    sleep   3
    View ALL Stores
    Save Screenshot Directory
    capture page screenshot    AUTC22.png
    End Test

TC23 Check and View Store Details QLD
    Open Website
    maximize browser window
    Accept Cookie
    Go to Store Locator
    Select Store
    Check and View Store Details QLD
    View Brisbane
    Check Store Details
    Click Find a Store link
    View Indooroopily
    Check Store Details
    Click Find a Store link
    View James St
    Check Store Details
    Click Find a Store link
    View Pacific Fair
    Check Store Details
    Click Find a Store link
    sleep   3
    View ALL Stores
    Save Screenshot Directory
    capture page screenshot    AUTC23.png
    End Test

TC24 Check and View Store Details SA
    Open Website
    maximize browser window
    Accept Cookie
    Go to Store Locator
    Select Store
    Check and View Store Details SA
    View Adelaide
    Check Store Details
    Click Find a Store link
    sleep    3
    View ALL Stores
    Save Screenshot Directory
    capture page screenshot    AUTC24.png
    End Test

TC25 Check and View Store Details VIC
    Open Website
    maximize browser window
    Accept Cookie
    Go to Store Locator
    Select Store
    Check and View Store Details VIC
    View Armadale
    Check Store Details
    Click Find a Store link
    View Chadstone
    Check Store Details
    Click Find a Store link
    View Doncaster
    Check Store Details
    Click Find a Store link
    View Emporium
    Check Store Details
    Click Find a Store link
    View Melbourne Outlet
    Check Store Details
    Click Find a Store link
    View QV
    Check Store Details
    Click Find a Store link
    View South Yarra
    Check Store Details
    Click Find a Store link
    sleep    3
    View ALL Stores
    Save Screenshot Directory
    capture page screenshot    AUTC25.png
    End Test

TC26 Check and View Store Details WA
    Open Website
    maximize browser window
    Accept Cookie
    Go to Store Locator
    Select Store
    Check and View Store Details WA
    View Claremont
    Check Store Details
    Click Find a Store link
    sleep    3
    View ALL Stores
    Save Screenshot Directory
    capture page screenshot    AUTC26.png
    End Test

TC27 Check AU ALL Stores
    Open Website
    maximize browser window
    Accept Cookie
    Go to Store Locator
    Select Store
    Check and View Store Details AU ALL
    Check and View AU ALL
    sleep    3
    View ALL Stores
    Save Screenshot Directory
    capture page screenshot    AUTC27.png
    End Test

TC45 Australia (NON DDP/DDU) - Guest User
    Open Website
    maximize browser window
    Accept Cookie
    Add Product to Cart AU
    Proceed to Cart Page
    sleep    3
    Continue as Guest User
    Select Country Australia
    Check NON DDU/DDP
    sleep   3
    Save Screenshot Directory
    capture page screenshot    AUTC45.png
    End Test

TC46 Australia (NON DDP/DDU) - Registered User
    Open Login
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart AU
    Proceed to Cart Page
    Go to Checkout Page
    Select Country Australia
    Check NON DDU/DDP
    sleep    3
    Save Screenshot Directory
    capture page screenshot    AUTC46.png
    End Test

TC47 New Zealand (DDP) - Guest User
    Open Website
    maximize browser window
    Accept Cookie
    Add Product to Cart AU
    Proceed to Cart Page
    sleep    3
    Continue as Guest User
    sleep   3
    Select Country New Zealand
    Check DDP
    sleep   3
    Save Screenshot Directory
    capture page screenshot    AUTC47.png
    End Test

TC48 New Zealand (DDP) - Registered User
    Open Login
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart AU
    Proceed to Cart Page
    Go to Checkout Page
    Select Country New Zealand
    Check DDP
    sleep    3
    Save Screenshot Directory
    capture page screenshot    AUTC48.png
    End Test

