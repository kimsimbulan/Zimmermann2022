*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/resourcessanity.robot

*** Test Cases ***
TC01 Login User
    Open Login US
    maximize browser window
    accept cookie
    sleep    3
    Login To Website
    Save Screenshot Directory US Sanity
    capture page screenshot    USTC01.png
    End Test

TC02 Register User
    Open Registration US
    maximize browser window
    Accept Cookie
    sleep    3
    New Email Address (US)
    Fill in Registration Form
    Save Screenshot Directory EU Sanity
    capture page screenshot    USTC02.png
    End Test

TC03 Reset Password
    Open Reset Password US
    maximize browser window
    Accept Cookie
    sleep    3
    Reset Password
    Save Screenshot Directory US Sanity
    capture page screenshot    USTC03.png
    End Test

TC04 Area wise store filter( dropdown)
    Open US Website
    maximize browser window
    Accept Cookie
    Go to Store Locator US
    Select Store
    View Area Store Filter US
    Save Screenshot Directory US Sanity
    capture page screenshot    USTC04.png
    End Test

TC05 Store Listing
    Open US Website
    maximize browser window
    Accept Cookie
    Go to Store Locator US
    Check the Stores UNITED STATES
    Save Screenshot Directory US Sanity
    capture page screenshot    USTC05.png
    End Test

TC06-08-1 Store details page navigation / Store opening time / Back to store navigation
    Open US Website
    maximize browser window
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
    View ALL Stores
    Save Screenshot Directory US Sanity
    capture page screenshot    USTC06-08-1.png
    End Test

TC06-08-2 Store details page navigation / Store opening time / Back to store navigation
    Open US Website
    maximize browser window
    Accept Cookie
    Go to Store Locator US
    Select Store
    Check and View Store Details FL, US
    View Bal Harbour
    Check Store Details
    Click Find a Store link
#    View Palm Beach
#    Check Store Details
#    Click Find a Store link
    View ALL Stores
    Save Screenshot Directory US Sanity
    capture page screenshot    USTC06-08-2.png
    End Test

#TC06-08-3 Store details page navigation / Store opening time / Back to store navigation
##not added yet on prod
#    Open US Website
#    maximize browser window
#    Accept Cookie
#    Go to Store Locator US
#    Select Store
#    Check and View Store Details GA, US
#    View Georgia
#    Click Find a Store link
#    View ALL Stores
#    Save Screenshot Directory US Sanity
#    capture page screenshot    USTC06-08-3.png
#    End Test
#
#TC06-08-4 Store details page navigation / Store opening time / Back to store navigation
##not added yet on prod
#    Open US Website
#    maximize browser window
#    Accept Cookie
#    Go to Store Locator US
#    Select Store
#    Check and View Store Details HI, US
#    View Hawaii
#    Click Find a Store link
#    View ALL Stores
#    Save Screenshot Directory US Sanity
#    capture page screenshot    USTC06-08-4.png
#    End Test
#
#TC06-08-5 Store details page navigation / Store opening time / Back to store navigation
##not yet added on prod
#    Open US Website
#    maximize browser window
#    Accept Cookie
#    Go to Store Locator US
#    Select Store
#    Check and View Store Details NJ, US
#    View Short Hills
#    Click Find a Store link
#    View ALL Stores
#    Save Screenshot Directory US Sanity
#    capture page screenshot    USTC06-08-5.png
#    End Test

TC06-08-6 Store details page navigation / Store opening time / Back to store navigation
    Open US Website
    maximize browser window
    Accept Cookie
    Go to Store Locator US
    Select Store
    Check and View Store Details NV, US
    View Wynn Plaza
    Check Store Details
    Click Find a Store link
    View ALL Stores
    Save Screenshot Directory US Sanity
    capture page screenshot    USTC06-08-6.png
    End Test

TC06-08-7 Store details page navigation / Store opening time / Back to store navigation
    Open US Website
    maximize browser window
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
    Save Screenshot Directory US Sanity
    capture page screenshot    USTC06-08-7.png
    End Test

TC06-08-8 Store details page navigation / Store opening time / Back to store navigation
    Open US Website
    maximize browser window
    Accept Cookie
    Go to Store Locator US
    Select Store
    Check and View Store Details TX, US
    View Dallas
    Check Store Details
    Click Find a Store link
    View ALL Stores
    Save Screenshot Directory US Sanity
    capture page screenshot    USTC06-08-8.png
    End Test

TC09 Remove items from bag/mini bag
    Open US Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart US
    View Bag
    Remove Item on the Bag
    Add Product to Cart US
    Remove item on the mini bag
    Save Screenshot Directory US Sanity
    capture page screenshot    USTC09.png
    End Test

TC10 Moving to Wishlist from Bag
    Open Login US
    maximize browser window
    Accept Cookie
    sleep    3
    Login To Website
    Add Product to Cart US
    View Bag
    Move to Wishlist
    Save Screenshot Directory US Sanity
    capture page screenshot    USTC10.png
    End Test

TC11 Quantity increment/decrement from bag
    Open US Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart US
    View Bag
    Increment/Decrement QTY
    Save Screenshot Directory US Sanity
    capture page screenshot    USTC11.png
    End Test

TC12 Adding promo code from bag
    Open US Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart US
    View Bag
    Add a Promo to the Bag
    Verify message on on the bag
    Save Screenshot Directory US Sanity
    capture page screenshot    USTC12.png
    End Test

TC13 Checkout from Bag/Mini Bag
    Open Login US
    maximize browser window
    Accept Cookie
    sleep    3
    Login To Website
    Add Product to Cart US
    Proceed to Checkout from Mini Bag
    Go to Homepage
    View Bag
    Click Checkout button from Bag
    Save Screenshot Directory US Sanity
    capture page screenshot    USTC13.png
    End Test

TC14 View Bag from Mini bag
    Open US Website
    maximize browser window
    Accept Cookie
    sleep   3
    Add Product to Cart US
    View Bag
    Save Screenshot Directory US Sanity
    capture page screenshot    UKTC14.png
    End Test

TC15 Model/Item view switch
    Open US Website
    maximize browser window
    Accept Cookie
    sleep    3
    View PLP Page US
    Click View
    Save Screenshot Directory US Sanity
    capture page screenshot    USTC15.png
    End Test

TC16 Add to bag from PLP
    Open US Website
    maximize browser window
    Accept Cookie
    sleep    3
    View PLP Page US
    Click cart icon on PLP
    Save Screenshot Directory US Sanity
    capture page screenshot    USTC16.png
    End Test

TC17 Add to wishlist PLP
    Open Login US
    maximize browser window
    Accept Cookie
    sleep    3
    Login To Website
    View PLP Page US
    Click wishlist on PLP (US)
    Save Screenshot Directory US Sanity
    capture page screenshot    USTC17.png
    End Test

TC18 Size swatch overlay
    Open US Website
    maximize browser window
    Accept Cookie
    sleep    3
    View PLP Page US
    Verify Size Swatch Overlay
    Save Screenshot Directory US Sanity
    capture page screenshot    USTC18.png
    End Test

TC19 Pagination
    Open US Website
    maximize browser window
    Accept Cookie
    sleep    3
    View PLP Page US
    View Pagination
    Save Screenshot Directory US Sanity
    capture page screenshot   USTC19.png
    End Test

TC20 View All (Infinite Scroll)
    Open US Website
    maximize browser window
    Accept Cookie
    sleep    3
    View PLP Page US
    Click View All
    Save Screenshot Directory US Sanity
    capture page screenshot    USTC20.png
    End Test

TC21 Search Results Page - Add to cart
    Open US Website
    maximize browser window
    Accept Cookie
    sleep    3
    Search a Product
    Click cart icon on PLP (Search Results Page)
    Save Screenshot Directory US Sanity
    capture page screenshot    USTC21.png
    End Test

TC22 Search Results Page - Add to Wishlist
    Open Login US
    maximize browser window
    Accept Cookie
    sleep    3
    Login To Website
    Search a Product
    Click cart icon on PLP (Search Results Page)
    Save Screenshot Directory US Sanity
    capture page screenshot    USTC22.png
    End Test

TC23 On search result page under category filter size
    Open US Website
    maximize browser window
    Accept Cookie
    sleep    3
    Search a Product
    Search Product on Search Result page
    Save Screenshot Directory US Sanity
    capture page screenshot    USTC23.png
    End Test

TC24 Autocomplete
    Open US Website
    maximize browser window
    Accept Cookie
    sleep    3
    Search a Product
    Check Autocomplete
    Save Screenshot Directory US Sanity
    capture page screenshot    USTC24.png
    End Test

TC25 No Search Results Page
    Open US Website
    maximize browser window
    Accept Cookie
    sleep    3
    Search No Products
    Save Screenshot Directory US Sanity
    capture page screenshot    USTC25.png
    End Test

TC29 Accessibility link in footer
    Open US Website
    maximize browser window
    Accept Cookie
    sleep    3
    Check Accessibility Footer
    Save Screenshot Directory US Sanity
    capture page screenshot    USTC29.png
    End Test

TC30 No taxes/duties messaging for non DDP/DDU countries
    Open US Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart US
    Proceed to Cart Page
    Continue as a Guest
    Check No taxes/duties messaging for non DDP/DDU countries
    Save Screenshot Directory US Sanity
    capture page screenshot    USTC30.png
    End Test

TC31 DDP messaging correctly displays
    Open US Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart US
    Proceed to Cart Page
    Continue as a Guest
    Enter International Address US(DDP-Canada)
    Check DDP Message
    Save Screenshot Directory US Sanity
    capture page screenshot    USTC31.png
    End Test

TC32 DDU messaging correctly displays
    Open US Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart US
    Proceed to Cart Page
    Continue as a Guest
    Enter International Address US(DDU-Aruba)
    Check DDU Message
    Save Screenshot Directory US Sanity
    capture page screenshot    USTC32.png
    End Test

TC45 United States (non DDP or DDU)
    Open US Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart US
    Proceed to Cart Page
    Continue as a Guest
    Check No taxes/duties messaging for non DDP/DDU countries
    Save Screenshot Directory US Sanity
    capture page screenshot    USTC45.png
    End Test

TC46 Canada (DDP)
    Open US Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart US
    Proceed to Cart Page
    Continue as a Guest
    Enter International Address US(DDP-Canada)
    Check DDP Message
    Save Screenshot Directory US Sanity
    capture page screenshot    USTC46.png
    End Test

TC47 Chile (DDU)
    Open US Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart US
    Proceed to Cart Page
    Continue as a Guest
    Enter International Address US(DDP-Chile)
    Check DDP Message
    Save Screenshot Directory US Sanity
    capture page screenshot    USTC47.png
    End Test
