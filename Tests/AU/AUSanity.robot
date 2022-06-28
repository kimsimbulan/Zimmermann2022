*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/resourcessanity.robot

*** Test Cases ***
TC01 Login User
    Open Login AU
    maximize browser window
    accept cookie
    sleep    3
    Login To Website
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC01.png
    End Test

TC02 Register User
    Open Registration AU
    maximize browser window
    Accept Cookie
    sleep    3
    New Email Address (AU)
    Fill in Registration Form
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC02.png
    End Test

TC03 Reset Password
    Open Reset Password AU
    maximize browser window
    Accept Cookie
    sleep    3
    Reset Password
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC03.png
    End Test

TC04 Area wise store filter( dropdown)
    Open AU Website
    maximize browser window
    Accept Cookie
    Go to Store Locator
    Select Store
    View Area Store Filter AU
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC04.png
    End Test

TC05 Store Listing
    Open AU Website
    maximize browser window
    Accept Cookie
    Go to Store Locator
    Check the Stores AUSTRALIA
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC05.png
    End Test

TC06-08-1 Store details page navigation / Store opening time / Back to store navigation
    Open AU Website
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
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC06-08-1.png
    End Test

TC06-08-2 Store details page navigation / Store opening time / Back to store navigation
    Open AU Website
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
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC06-08-2.png
    End Test

TC06-08-3 Store details page navigation / Store opening time / Back to store navigation
    Open AU Website
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
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC06-08-3.png
    End Test

TC06-08-4 Store details page navigation / Store opening time / Back to store navigation
    Open AU Website
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
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC06-08-4.png
    End Test

TC06-08-5 Store details page navigation / Store opening time / Back to store navigation
    Open AU Website
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
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC06-08-5.png
    End Test

TC09 Remove items from bag/mini bag
    Open AU Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart AU
    View Bag
    Remove Item on the Bag
    Add Product to Cart AU
    Remove item on the mini bag
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC09.png
    End Test

TC10 Moving to Wishlist from Bag
    Open Login AU
    maximize browser window
    Accept Cookie
    sleep    3
    Login To Website
    Add Product to Cart AU
    View Bag
    Move to Wishlist
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC10.png
    End Test

TC11 Quantity increment/decrement from bag
    Open AU Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart AU
    View Bag
    Increment/Decrement QTY
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC11.png
    End Test

TC12 Adding promo code from bag
    Open AU Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart AU
    View Bag
    Add a Promo to the Bag
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC12.png
    End Test

TC13 Checkout from Bag/Mini Bag
    Open Login AU
    maximize browser window
    Accept Cookie
    sleep    3
    Login To Website
    Add Product to Cart AU
    Proceed to Checkout from Mini Bag
    Go to Homepage
    View Bag
    Click Checkout button from Bag
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC13.png
    End Test

TC14 View Bag from Mini bag
    Open AU Website
    maximize browser window
    Accept Cookie
    sleep   3
    Add Product to Cart AU
    View Bag
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC14.png
    End Test

TC15 Model/Item view switch
    Open AU Website
    maximize browser window
    Accept Cookie
    sleep    3
    View PLP Page
    Click View
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC15.png
    End Test

TC16 Add to bag from PLP
    Open AU Website
    maximize browser window
    Accept Cookie
    sleep    3
    View PLP Page
    Click cart icon on plp
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC16.png
    End Test

TC17 Add to wishlist PLP
    Open Login AU
    maximize browser window
    Accept Cookie
    sleep    3
    Login To Website
    View PLP Page
    Click wishlist on PLP
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC17.png
    End Test

TC18 Size swatch overlay
    Open AU Website
    maximize browser window
    Accept Cookie
    sleep    3
    View PLP Page
    Verify Size Swatch Overlay
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC18.png
    End Test

TC19 Pagination
    Open AU Website
    maximize browser window
    Accept Cookie
    sleep    3
    View PLP Page
    View Pagination
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC19.png
    End Test

TC20 View All (Infinite Scroll)
    Open AU Website
    maximize browser window
    Accept Cookie
    sleep    3
    View PLP Page
    Click View All
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC20.png
    End Test

TC21 Search Results Page - Add to cart
    Open AU Website
    maximize browser window
    Accept Cookie
    sleep    3
    Search a Product
    Click cart icon on PLP (Search Results Page)
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC21.png
    End Test

TC22 Search Results Page - Add to Wishlist
    Open Login AU
    maximize browser window
    Accept Cookie
    sleep    3
    Login To Website
    Search a Product
    Click wishlist on PLP
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC22.png
    End Test

TC23 On search result page under category filter size
    Open AU Website
    maximize browser window
    Accept Cookie
    sleep    3
    Search a Product
    Search Product on Search Result page
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC23.png
    End Test

TC24 Autocomplete
    Open AU Website
    maximize browser window
    Accept Cookie
    sleep    3
    Search a Product
    Check Autocomplete
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC24.png
    End Test

TC25 No Search Results Page
    Open AU Website
    maximize browser window
    Accept Cookie
    sleep    3
    Search No Products
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC25.png
    End Test

TC29 Accessibility link in footer
    Open AU Website
    maximize browser window
    Accept Cookie
    sleep    3
    Check Accessibility Footer
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC29.png
    End Test

TC30 No taxes/duties messaging for non DDP/DDU countries
    Open AU Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart AU
    Proceed to Cart Page
    Continue as a Guest
    Check No taxes/duties messaging for non DDP/DDU countries
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC30.png
    End Test

TC31 DDP messaging correctly displays
    Open AU Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart AU
    Proceed to Cart Page
    Continue as a Guest
    Enter International Address(DDP)
    Check DDP Message
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC31.png
    End Test

TC32 DDU messaging correctly displays
    Open AU Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart AU
    Proceed to Cart Page
    Continue as a Guest
    Enter International Address(DDU)
    Check DDU Message
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC32.png
    End Test

TC34 Australia (non DDP or DDU)
    Open AU Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart AU
    Proceed to Cart Page
    Continue as a Guest
    Check No taxes/duties messaging for non DDP/DDU countries
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC34.png
    End Test

TC35 New Zealand > $1000 (DDP)
    Open AU Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart AU
    Proceed to Cart Page
    Continue as a Guest
    Enter International Address(DDP-New Caledonia)
    Check DDP Message
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC35.png
    End Test

