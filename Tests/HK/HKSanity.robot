*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/resourcessanity.robot

*** Test Cases ***
TC01 Login User
    Open Login HK
    maximize browser window
    accept cookie
    sleep    3
    Login To Website
    Save Screenshot Directory HK Sanity
    capture page screenshot    HKTC01.png
    End Test

TC02 Register User
    Open Registration HK
    maximize browser window
    Accept Cookie
    sleep    3
    New Email Address (HK)
    Fill in Registration Form
    Save Screenshot Directory HK Sanity
    capture page screenshot    HKTC02.png
    End Test

TC03 Reset Password
    Open Reset Password HK
    maximize browser window
    Accept Cookie
    sleep    3
    Reset Password
    Save Screenshot Directory HK Sanity
    capture page screenshot    HKTC03.png
    End Test

TC04 Area wise store filter( dropdown)
    Open HK Website
    maximize browser window
    Accept Cookie
    Go to Store Locator HK
    Select Store
    View Area Store Filter HK
    Save Screenshot Directory HK Sanity
    capture page screenshot    HKTC04.png
    End Test

TC05 Store Listing
    Open HK Website
    maximize browser window
    Accept Cookie
    Go to Store Locator HK
    Check the Stores CHINA
    Save Screenshot Directory HK Sanity
    capture page screenshot    HKTC05.png
    End Test

TC06-08-1 Store details page navigation / Store opening time / Back to store navigation
    Open HK Website
    maximize browser window
    Accept Cookie
    Go to Store Locator HK
    Select Store
    Check and View Store Details SH, CN
    View Shanghai
    Check Store Details
    Click Find a Store link
    View ALL Stores
    Save Screenshot Directory HK Sanity
    capture page screenshot    HKTC06-08-1.png
    End Test

TC09 Remove items from bag/mini bag
    Open HK Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart HK
    View Bag
    Remove Item on the Bag
    Add Product to Cart US
    Remove item on the mini bag
    Save Screenshot Directory HK Sanity
    capture page screenshot    HKTC09.png
    End Test

TC10 Moving to Wishlist from Bag
    Open Login HK
    maximize browser window
    Accept Cookie
    sleep    3
    Login To Website
    Add Product to Cart HK
    View Bag
    Move to Wishlist
    Save Screenshot Directory HK Sanity
    capture page screenshot    HKTC10.png
    End Test

TC11 Quantity increment/decrement from bag
    Open HK Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart HK
    View Bag
    Increment/Decrement QTY
    Save Screenshot Directory HK Sanity
    capture page screenshot    HKTC11.png
    End Test

TC12 Adding promo code from bag
    Open HK Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart HK
    View Bag
    Add a Promo to the Bag
    Verify message on on the bag
    Save Screenshot Directory HK Sanity
    capture page screenshot    HKTC12.png
    End Test

TC13 Checkout from Bag/Mini Bag
    Open Login HK
    maximize browser window
    Accept Cookie
    sleep    3
    Login To Website
    Add Product to Cart HK
    Proceed to Checkout from Mini Bag
    Go to Homepage
    View Bag
    Click Checkout button from Bag
    Save Screenshot Directory HK Sanity
    capture page screenshot    HKTC13.png
    End Test

TC14 View Bag from Mini bag
    Open HK Website
    maximize browser window
    Accept Cookie
    sleep   3
    Add Product to Cart HK
    View Bag
    Save Screenshot Directory HK Sanity
    capture page screenshot    HKTC14.png
    End Test

TC15 Model/Item view switch
    Open HK Website
    maximize browser window
    Accept Cookie
    sleep    3
    View PLP Page HK
    Click View
    Save Screenshot Directory HK Sanity
    capture page screenshot    HKTC15.png
    End Test

TC16 Add to bag from PLP
    Open HK Website
    maximize browser window
    Accept Cookie
    sleep    3
    View PLP Page HK
    Click cart icon on plp
    Save Screenshot Directory HK Sanity
    capture page screenshot    HKTC16.png
    End Test

TC17 Add to wishlist PLP
    Open Login HK
    maximize browser window
    Accept Cookie
    sleep    3
    Login To Website
    View PLP Page HK
    Click wishlist on PLP (AU)
    Save Screenshot Directory HK Sanity
    capture page screenshot    HKTC17.png
    End Test

TC18 Size swatch overlay
    Open HK Website
    maximize browser window
    Accept Cookie
    sleep    3
    View PLP Page HK
    Verify Size Swatch Overlay
    Save Screenshot Directory HK Sanity
    capture page screenshot    HKTC18.png
    End Test

TC19 Pagination
    Open HK Website
    maximize browser window
    Accept Cookie
    sleep    3
    View PLP Page HK
    View Pagination
    Save Screenshot Directory HK Sanity
    capture page screenshot   HKTC19.png
    End Test

TC20 View All (Infinite Scroll)
    Open HK Website
    maximize browser window
    Accept Cookie
    sleep    3
    View PLP Page HK
    Click View All HK
    Save Screenshot Directory HK Sanity
    capture page screenshot    HKTC20.png
    End Test

TC21 Search Results Page - Add to cart
    Open HK Website
    maximize browser window
    Accept Cookie
    sleep    3
    Search a Product
    Click cart icon on PLP (Search Results Page)
    Save Screenshot Directory HK Sanity
    capture page screenshot    HKTC21.png
    End Test

TC22 Search Results Page - Add to Wishlist
    Open Login HK
    maximize browser window
    Accept Cookie
    sleep    3
    Login To Website
    Search a Product
    Click wishlist on PLP (Search Results Page) (AU)
    Save Screenshot Directory HK Sanity
    capture page screenshot    HKTC22.png
    End Test

TC23 On search result page under category filter size
    Open HK Website
    maximize browser window
    Accept Cookie
    sleep    3
    Search a Product
    Search Product on Search Result page
    Save Screenshot Directory HK Sanity
    capture page screenshot    HKTC23.png
    End Test

TC24 Autocomplete
    Open HK Website
    maximize browser window
    Accept Cookie
    sleep    3
    Search a Product
    Check Autocomplete
    Save Screenshot Directory HK Sanity
    capture page screenshot    HKTC24.png
    End Test

TC25 No Search Results Page
    Open HK Website
    maximize browser window
    Accept Cookie
    sleep    3
    Search No Products
    Save Screenshot Directory HK Sanity
    capture page screenshot    HKTC25.png
    End Test

TC29 Accessibility link in footer
    Open HK Website
    maximize browser window
    Accept Cookie
    sleep    3
    Check Accessibility Footer
    Save Screenshot Directory HK Sanity
    capture page screenshot    HKTC29.png
    End Test

TC30 No taxes/duties messaging for non DDP/DDU countries
    Open HK Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart HK
    Proceed to Cart Page
    Continue as a Guest
    Check No taxes/duties messaging for non DDP/DDU countries
    Save Screenshot Directory HK Sanity
    capture page screenshot    USTC30.png
    End Test

TC31 DDP messaging correctly displays
    Open HK Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart HK
    Proceed to Cart Page
    Continue as a Guest
    Enter International Address HK(DDP-Taiwan)
    Check DDP Message
    Save Screenshot Directory HK Sanity
    capture page screenshot    HKTC31.png
    End Test

TC32 DDU messaging correctly displays
    Open HK Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart HK
    Proceed to Cart Page
    Continue as a Guest
    Enter International Address HK(DDU-Bangladesh)
    Check DDU Message
    Save Screenshot Directory HK Sanity
    capture page screenshot    HKTC32.png
    End Test

TC48 Hong Kong (non DDP or DDU)
    Open Login HK
    maximize browser window
    Accept Cookie
    sleep    3
    Login To Website
    Add Product to Cart HK
    Proceed to Cart Page
    Check No taxes/duties messaging for non DDP/DDU countries
    Save Screenshot Directory HK Sanity
    capture page screenshot    HKTC48.png
    End Test

TC49 Taiwan (DDP)
    Open HK Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart HK
    Proceed to Cart Page
    Continue as a Guest
    Enter International Address HK(DDP-Taiwan)
    Check DDP Message
    Save Screenshot Directory HK Sanity
    capture page screenshot    HKTC49.png
    End Test
