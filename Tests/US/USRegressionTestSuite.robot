*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/resources.robot

*** Test Cases ***
TC01 Login User
    Open Login US
    maximize browser window
    accept cookie
    sleep    3
    Login To Website
    Save Screenshot Directory US
    capture page screenshot    USTC01.png
    End Test

TC02 Register User
    Open Registration US
    maximize browser window
    Accept Cookie
    sleep    3
    New Email Address (US)
    Fill in Registration Form
    Save Screenshot Directory US
    capture page screenshot    USTC02.png
    End Test

TC03 Domestic Order (Registered User - Credit Card)
    Open Login US
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart US
    Proceed to Cart Page
    Go to Checkout Page
    Enter Domestic Address US
    Go to Payment Page
    Select Credit Card
    Place Order
    Verify Order Success Page
    Save Screenshot Directory US
    capture page screenshot    USTC03.png
    End Test

TC04 International Order (Registered User - Credit Card)
    Open Login US
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart US
    Proceed to Cart Page
    Go to Checkout Page
    Enter International Address US
    Go to Payment Page
    Select Credit Card
    Place Order
    Verify Order Success Page
    Save Screenshot Directory US
    capture page screenshot    USTC04.png
    End Test

TC05 Domestic Order (Registered User - Gift Card)
    Open Login US
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart US
    Proceed to Cart Page
    Go to Checkout Page
    Enter Domestic Address US
    Go to Payment Page
    Select Gift Card Payment (US)
    Place Order
    Verify Order Success Page
    Save Screenshot Directory US
    capture page screenshot    USTC05.png
    End Test

TC06 International Order (Registered User - Gift Card)
    Open Login US
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart US
    Proceed to Cart Page
    Go to Checkout Page
    Enter International Address US
    Go to Payment Page
    Select Gift Card Payment (US)
    Place Order
    Verify Order Success Page
    Save Screenshot Directory US
    capture page screenshot    USTC06.png
    End Test

TC07 Domestic Order (Registered User - Retail Rewards)
    Open Login US
    maximize browser window
    Accept Cookie
    Login To Website (Retail Rewards - VIP)
    sleep    3
    Add Product to Cart US
    Proceed to Cart Page
    Go to Checkout Page
    Enter Domestic Address US
    Go to Payment Page
    Place Order
    Verify Order Success Page
    Save Screenshot Directory US
    capture page screenshot    USTC07.png
    End Test

TC08 International (Registered User - Retail Rewards)
    Open Login US
    maximize browser window
    Accept Cookie
    Login To Website (Retail Rewards - VIP)
    sleep    3
    Add Product to Cart US
    Proceed to Cart Page
    Go to Checkout Page
    Enter International Address US
    Go to Payment Page
    Place Order
    Verify Order Success Page
    Save Screenshot Directory US
    capture page screenshot    USTC08.png
    End Test

TC09 Domestic Order (Guest User - Gift Card)
    Open US Website
    maximize browser window
    Accept Cookie
    Add Product to Cart US
    Proceed to Cart Page
    sleep    3
    Continue as Guest User
    Enter Domestic Address US
    Go to Payment Page
    Select Gift Card Payment (US)
    Place Order
    Verify Order Success Page
    Save Screenshot Directory US
    capture page screenshot    USTC09.png
    End Test

TC10 International Order (Guest User - Gift Card)
    Open US Website
    maximize browser window
    Accept Cookie
    Add Product to Cart US
    Proceed to Cart Page
    sleep    3
    Continue as Guest User
    Enter International Address US
    Go to Payment Page
    Select Gift Card Payment (US)
    Place Order
    Verify Order Success Page
    Save Screenshot Directory US
    capture page screenshot    USTC10.png
    End Test

TC69 Purchase a Digital Gift Card (Registered User)
    Open Login US
    maximize browser window
    Accept Cookie
    Login To Website - Gift Card
    sleep    3
    Select Gift Card US
    Add Digital Gift Card
    Select Credit Card
    Place Order
    sleep    3
    Verify Order Success Page
    Save Screenshot Directory
    capture page screenshot    USTC69.png
    End Test

TC11 Subscribe from Website (Registered User)
    Open Login US
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Click Subsription on My Account
    ${count}=   get element count    ${CLICK_TO_UNSUBSCRIBE}
    run keyword if    ${count} > 0  Click unsubscribe
    ...     ELSE    click subscribe
    Save Screenshot Directory US
    capture page screenshot    USTC11.png
    End Test

TC12 Unsubscribe from Website (Registered User)
    Open Login US
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Click Subsription on My Account
    ${count}=   get element count    ${CLICK_TO_SUBSCRIBE}
    run keyword if    ${count} > 0  Click subscribe
    ...     ELSE    click unsubscribe
    Save Screenshot Directory US
    capture page screenshot    USTC12.png
    End Test

TC13 Subscribe from Website (Footer)
    Open US Website
    maximize browser window
    Accept Cookie
    Go to Footer
    sleep    3
    Click Continue on Footer
    sleep    3
    Proceed to Subscribe (US)
    Click Submit button
    sleep    3
    Save Screenshot Directory US
    capture page screenshot    USTC13.png
    End Test

TC20 Maps Functionality
    Open US Website
    maximize browser window
    Accept Cookie
    Check Map Functionality
    Save Screenshot Directory US
    capture page screenshot    USTC20.png
    End Test

TC21 Store Page
    Open US Website
    maximize browser window
    Accept Cookie
    Go to Store Locator US
    Check the Stores UNITED STATES
    Check the Stores AUSTRALIA
    Check the Stores UK & EUROPE
    Check the Stores CHINA
    Save Screenshot Directory US
    capture page screenshot    USTC21.png
    End Test

TC28 Check and View Store Details CA, US
    Open US Website
    maximize browser window
    sleep    3
    Accept Cookie
    Go to Store Locator US
    Select Store
    Check and View Store Details CA, US
    View Melrose Place
    Check Store Details
    Click Find a Store link
    sleep    3
    View Pacific Palisades
    Check Store Details
    Click Find a Store link
    View San Franciso
    Check Store Details
    Click Find a Store link
    View South Coast Plaza
    Check Store Details
    Click Find a Store link
    VIEW ALL STORES
    sleep    3
    Save Screenshot Directory US
    capture page screenshot    USTC28.png
    End Test

TC29 Check and View Store Details FL, US
    Open US Website
    maximize browser window
    sleep    3
    Accept Cookie
    Go to Store Locator US
    Select Store
    Check and View Store Details FL, US
    View Bal Harbour
    Check Store Details
    Click Find a Store link
    View Palm Beach
    Check Store Details
    Click Find a Store link
    VIEW ALL STORES
    sleep    3
    Save Screenshot Directory US
    capture page screenshot    USTC29.png
    End Test

TC30 Check and View Store Details GA, US
    Open US Website
    maximize browser window
    Accept Cookie
    Go to Store Locator US
    Select Store
    Check and View Store Details GA, US
    View Georgia
    Click Find a Store link
    View ALL Stores
    sleep    3
    Save Screenshot Directory US
    capture page screenshot    USTC30.png
    End Test

TC31 Check and View Store Details HI, US
    Open US Website
    maximize browser window
    Accept Cookie
    Go to Store Locator US
    Select Store
    Check and View Store Details HI, US
    View Hawaii
    Click Find a Store link
    View ALL Stores
    sleep    3
    Save Screenshot Directory US
    capture page screenshot    USTC31.png
    End Test

TC32 Check and View Store Details NJ, US
    Open US Website
    maximize browser window
    sleep    3
    Accept Cookie
    Go to Store Locator US
    Select Store
    Check and View Store Details NJ, US
    View Short Hills
    Click Find a Store link
    View ALL Stores
    sleep    3
    Save Screenshot Directory US
    capture page screenshot    USTC32.png
    End Test

TC33 Check and View Store Details NV, US
    Open US Website
    maximize browser window
    sleep    3
    Accept Cookie
    Go to Store Locator US
    sleep    3
    Select Store
    Check and View Store Details NV, US
    View Wynn Plaza
    Check Store Details
    Click Find a Store link
    View ALL Stores
    sleep    3
    Save Screenshot Directory US
    capture page screenshot    USTC33.png
    End Test

TC34 Check and View Store Details NY, US
    Open US Website
    maximize browser window
    sleep    3
    Accept Cookie
    Go to Store Locator US
    Select Store
    Check and View Store Details NY, US
    View Americana Manhasset
    Check Store Details
    Click Find a Store link
    View East Hampton
    Check Store Details
    Click Find a Store link
    View Madison Avenue
    Check Store Details
    Click Find a Store link
    View Meatpacking
    Check Store Details
    Click Find a Store link
    View SOHO
    Check Store Details
    Click Find a Store link
    View Woodbury Outlet
    Check Store Details
    Click Find a Store link
    View ALL Stores
    sleep    3
    Save Screenshot Directory US
    capture page screenshot    USTC34.png
    End Test

TC35 Check and View Store Details TX, US
    Open US Website
    maximize browser window
    sleep    3
    Accept Cookie
    sleep  3
    Go to Store Locator US
    Select Store
    Check and View Store Details TX, US
    View Dallas
    Check Store Details
    Click Find a Store link
    View ALL Stores
    sleep    3
    Save Screenshot Directory US
    capture page screenshot    USTC35.png
    End Test

TC36 Check US ALL Stores
    Open US Website
    maximize browser window
    sleep  3
    Accept Cookie
    Go to Store Locator US
    Select Store
    Check and View Store Details US ALL
    Check and View US ALL
    sleep    3
    View ALL Stores
    Save Screenshot Directory US
    capture page screenshot    USTC36.png
    End Test

TC49 United States (NON DDP/DDU) - Guest User
    Open US Website
    maximize browser window
    Accept Cookie
    Add Product to Cart US
    Proceed to Cart Page
    sleep    3
    Continue as Guest User
    Enter Domestic Address US
    sleep   3
    Check NON DDU/DDP
    Go to Payment Page
    sleep   3
    Check NON DDU/DDP
    Save Screenshot Directory US
    capture page screenshot    USTC49.png
    End Test

TC50 United States (NON DDP/DDU) - Registered User
    Open Login US
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart US
    Proceed to Cart Page
    sleep    3
    Go to Checkout Page
    Enter Domestic Address US
    sleep    3
    Check NON DDU/DDP
    Go to Payment Page
    sleep    3
    Check NON DDU/DDP
    Save Screenshot Directory US
    capture page screenshot    USTC50.png
    End Test

TC51 Canada (DDP) - Guest User
    Open US Website
    maximize browser window
    Accept Cookie
    Add Product to Cart US
    Proceed to Cart Page
    sleep    3
    Continue as Guest User
    sleep   3
    Select Country Canada
    Check DDP
    sleep    3
    Save Screenshot Directory US
    capture page screenshot    USTC51.png
    End Test

TC52 Canada (DDP) - Registered User
    Open Login US
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart US
    Proceed to Cart Page
    Go to Checkout Page
    Select Country Canada
    Check DDP
    sleep    3
    Save Screenshot Directory US
    capture page screenshot    USTC52.png
    End Test

TC53 Argentina (DDP) - Guest User
    Open US Website
    maximize browser window
    Accept Cookie
    Add Product to Cart US
    Proceed to Cart Page
    sleep    3
    Continue as Guest User
    sleep   3
    Select Country Argentina
    Check DDP
    sleep    3
    Save Screenshot Directory US
    capture page screenshot    USTC53.png
    End Test

TC54 Argentina (DDP) - Registered User
    Open Login US
    maximize browser window
    Accept Cookie
    Login To Website
    sleep    3
    Add Product to Cart US
    Proceed to Cart Page
    Go to Checkout Page
    Select Country Argentina
    Check DDP
    sleep    3
    Save Screenshot Directory US
    capture page screenshot    USTC54.png
    End Test



