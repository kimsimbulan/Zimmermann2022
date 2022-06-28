*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/resourcessanity.robot

*** Test Cases ***
TC01 Login User
    Open Login UK
    maximize browser window
    accept cookie
    sleep    3
    Login To Website
    Save Screenshot Directory EU Sanity
    capture page screenshot    EUTC01.png
    End Test

TC02 Register User
    Open Registration UK
    maximize browser window
    Accept Cookie
    sleep    3
    New Email Address (UK)
    Fill in Registration Form
    Save Screenshot Directory UK Sanity
    capture page screenshot    UKTC02.png
    End Test

TC03 Reset Password
    Open Reset Password UK
    maximize browser window
    Accept Cookie
    sleep    3
    Reset Password
    Save Screenshot Directory EU Sanity
    capture page screenshot    UKTC03.png
    End Test

TC04 Area wise store filter( dropdown)
    Open UK Website
    maximize browser window
    Accept Cookie
    Go to Store Locator UK
    Select Store
    View Area Store Filter UK
    Save Screenshot Directory UK Sanity
    capture page screenshot    UKTC04.png
    End Test

TC05 Store Listing
    Open UK Website
    maximize browser window
    Accept Cookie
    Go to Store Locator UK
    Check the Stores UK & EUROPE
    Save Screenshot Directory UK Sanity
    capture page screenshot    UKTC05.png
    End Test

TC06-08-1 Store details page navigation / Store opening time / Back to store navigation
    Open UK Website
    maximize browser window
    Accept Cookie
    Go to Store Locator
    Select Store
    Check and View Store Details LON, UK
    View Mayfair
    Check Store Details
    Click Find a Store link
    View ALL Stores
    Save Screenshot Directory UK Sanity
    capture page screenshot    UKTC06-08-1.png
    End Test

TC09 Remove items from bag/mini bag
    Open UK Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart UK
    View Bag
    Remove Item on the Bag
    Add Product to Cart UK
    Remove item on the mini bag
    Save Screenshot Directory UK Sanity
    capture page screenshot    UKTC09.png
    End Test

TC10 Moving to Wishlist from Bag
    Open Login UK
    maximize browser window
    Accept Cookie
    sleep    3
    Login To Website
    Add Product to Cart UK
    View Bag
    Move to Wishlist
    Save Screenshot Directory UK Sanity
    capture page screenshot    UKTC10.png
    End Test

TC11 Quantity increment/decrement from bag
    Open UK Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart UK
    View Bag
    Increment/Decrement QTY
    Save Screenshot Directory UK Sanity
    capture page screenshot    UKTC11.png
    End Test

TC12 Adding promo code from bag
    Open UK Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart UK
    View Bag
    Add a Promo to the Bag
    Save Screenshot Directory UK Sanity
    capture page screenshot    UKTC12.png
    End Test

TC13 Checkout from Bag/Mini Bag
    Open Login UK
    maximize browser window
    Accept Cookie
    sleep    3
    Login To Website
    Add Product to Cart UK
    Proceed to Checkout from Mini Bag
    Go to Homepage
    View Bag
    Click Checkout button from Bag
    Save Screenshot Directory UK Sanity
    capture page screenshot    UKTC13.png
    End Test

TC14 View Bag from Mini bag
    Open UK Website
    maximize browser window
    Accept Cookie
    sleep   3
    Add Product to Cart UK
    View Bag
    Save Screenshot Directory UK Sanity
    capture page screenshot    UKTC14.png
    End Test

TC15 Model/Item view switch
    Open UK Website
    maximize browser window
    Accept Cookie
    sleep    3
    View PLP Page UK
    Click View
    Save Screenshot Directory UK Sanity
    capture page screenshot    UKTC15.png
    End Test

TC16 Add to bag from PLP
    Open UK Website
    maximize browser window
    Accept Cookie
    sleep    3
    View PLP Page UK
    Click cart icon on plp
    Save Screenshot Directory UK Sanity
    capture page screenshot    UKTC16.png
    End Test

TC17 Add to wishlist PLP
    Open Login UK
    maximize browser window
    Accept Cookie
    sleep    3
    Login To Website
    View PLP Page UK
    Click wishlist on PLP
    Save Screenshot Directory UK Sanity
    capture page screenshot    UKTC17.png
    End Test

TC18 Size swatch overlay
    Open UK Website
    maximize browser window
    Accept Cookie
    sleep    3
    View PLP Page UK
    Verify Size Swatch Overlay
    Save Screenshot Directory UK Sanity
    capture page screenshot    UKTC18.png
    End Test

TC19 Pagination
    Open UK Website
    maximize browser window
    Accept Cookie
    sleep    3
    View PLP Page UK
    View Pagination
    Save Screenshot Directory UK Sanity
    capture page screenshot   UKTC19.png
    End Test

TC20 View All (Infinite Scroll)
    Open UK Website
    maximize browser window
    Accept Cookie
    sleep    3
    View PLP Page UK
    Click View All
    Save Screenshot Directory UK Sanity
    capture page screenshot    UKTC20.png
    End Test

TC21 Search Results Page - Add to cart
    Open UK Website
    maximize browser window
    Accept Cookie
    sleep    3
    Search a Product
    Click cart icon on PLP (Search Results Page)
    Save Screenshot Directory UK Sanity
    capture page screenshot    UKTC21.png
    End Test

TC22 Search Results Page - Add to Wishlist
    Open Login UK
    maximize browser window
    Accept Cookie
    sleep    3
    Login To Website
    Search a Product
    Click wishlist on PLP
    Save Screenshot Directory UK Sanity
    capture page screenshot    UKTC22.png
    End Test

TC23 On search result page under category filter size
    Open UK Website
    maximize browser window
    Accept Cookie
    sleep    3
    Search a Product
    Search Product on Search Result page
    Save Screenshot Directory UK Sanity
    capture page screenshot    UKTC23.png
    End Test

TC24 Autocomplete
    Open UK Website
    maximize browser window
    Accept Cookie
    sleep    3
    Search a Product
    Check Autocomplete
    Save Screenshot Directory UK Sanity
    capture page screenshot    UKTC24.png
    End Test

TC25 No Search Results Page
    Open UK Website
    maximize browser window
    Accept Cookie
    sleep    3
    Search No Products
    Save Screenshot Directory UK Sanity
    capture page screenshot    UKTC25.png
    End Test

TC29 Accessibility link in footer
    Open UK Website
    maximize browser window
    Accept Cookie
    sleep    3
    Check Accessibility Footer
    Save Screenshot Directory UK Sanity
    capture page screenshot    UKTC29.png
    End Test

TC30 No taxes/duties messaging for non DDP/DDU countries
    Open UK Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart UK
    Proceed to Cart Page
    Continue as a Guest
    Check No taxes/duties messaging for non DDP/DDU countries
    Save Screenshot Directory UK Sanity
    capture page screenshot    UKTC30.png
    End Test

TC31 DDP messaging correctly displays
    Open UK Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart UK
    Proceed to Cart Page
    Continue as a Guest
    Enter International Address UK(DDP-South Africa)
    Check DDP Message
    Save Screenshot Directory UK Sanity
    capture page screenshot    UKTC31.png
    End Test

TC32 DDU messaging correctly displays
    Open UK Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart UK
    Proceed to Cart Page
    Continue as a Guest
    Enter International Address UK(DDU-Afganistan)
    Check DDU Message
    Save Screenshot Directory UK Sanity
    capture page screenshot    UKTC32.png
    End Test

TC42 United Kingdom (non DDP or DDU)
    Open UK Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart UK
    Proceed to Cart Page
    Continue as a Guest
    Check No taxes/duties messaging for non DDP/DDU countries
    Save Screenshot Directory UK Sanity
    capture page screenshot    UKTC42.png
    End Test

TC43 UAE (DDP)
    Open UK Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart UK
    Proceed to Cart Page
    Continue as a Guest
    Enter International Address UK(UAE)
    Check DDP Message
    Save Screenshot Directory UK Sanity
    capture page screenshot    UKTC43.png
    End Test

TC44 South Africa (DDP)
    Open EU Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart UK
    Proceed to Cart Page
    Continue as a Guest
    Enter International Address UK(DDP-South Africa)
    Check DDP Message
    Save Screenshot Directory UK Sanity
    capture page screenshot    UKTC44.png
    End Test
