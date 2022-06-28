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
    Save Screenshot Directory UK Sanity
    capture page screenshot    UKTC01.png
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
    Save Screenshot Directory UK Sanity
    capture page screenshot    UKTC03.png
    End Test

TC04 Area wise store filter( dropdown)
    Open UK Website
    maximize browser window
    Accept Cookie
    Go to Store Locator UK
    Select Store
    View Area Store Filter EU
    Save Screenshot Directory UK Sanity
    capture page screenshot    UKTC04.png
    End Test

TC05 Store Listing
    Open EU Website
    maximize browser window
    Accept Cookie
    Go to Store Locator EU
    Check the Stores UK & EUROPE
    Save Screenshot Directory EU Sanity
    capture page screenshot    EUTC05.png
    End Test

TC06-08-1 Store details page navigation / Store opening time / Back to store navigation
    Open EU Website
    maximize browser window
    Accept Cookie
    Go to Store Locator
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
    View ALL Stores
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC06-08-1.png
    End Test

TC06-08-2 Store details page navigation / Store opening time / Back to store navigation
    Open EU Website
    maximize browser window
    Accept Cookie
    Go to Store Locator
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
    View ALL Stores
    Save Screenshot Directory EU Sanity
    capture page screenshot    EUTC06-08-2.png
    End Test

TC06-08-3 Store details page navigation / Store opening time / Back to store navigation
    Open EU Website
    maximize browser window
    Accept Cookie
    Go to Store Locator
    Select Store
    Check and View Store Details SP, EU
    View Puerto Banus
    Check Store Details
    Click Find a Store link
    View Spain
    Check Store Details
    Click Find a Store link
    View ALL Stores
    Save Screenshot Directory EU Sanity
    capture page screenshot    EUTC06-08-3.png
    End Test

TC09 Remove items from bag/mini bag
    Open EU Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart EU
    View Bag
    Remove Item on the Bag
    Add Product to Cart EU
    Remove item on the mini bag
    Save Screenshot Directory EU Sanity
    capture page screenshot    EUTC09.png
    End Test

TC10 Moving to Wishlist from Bag
    Open Login EU
    maximize browser window
    Accept Cookie
    sleep    3
    Login To Website
    Add Product to Cart EU
    View Bag
    Move to Wishlist
    Save Screenshot Directory EU Sanity
    capture page screenshot    EUTC10.png
    End Test

TC11 Quantity increment/decrement from bag
    Open EU Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart EU
    View Bag
    Increment/Decrement QTY
    Save Screenshot Directory EU Sanity
    capture page screenshot    EUTC11.png
    End Test

TC12 Adding promo code from bag
    Open EU Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart EU
    View Bag
    Add a Promo to the Bag
    Save Screenshot Directory EU Sanity
    capture page screenshot    EUTC12.png
    End Test

TC13 Checkout from Bag/Mini Bag
    Open Login EU
    maximize browser window
    Accept Cookie
    sleep    3
    Login To Website
    Add Product to Cart EU
    Proceed to Checkout from Mini Bag
    Go to Homepage
    View Bag
    Click Checkout button from Bag
    Save Screenshot Directory EU Sanity
    capture page screenshot    EUTC13.png
    End Test

TC14 View Bag from Mini bag
    Open EU Website
    maximize browser window
    Accept Cookie
    sleep   3
    Add Product to Cart EU
    View Bag
    Save Screenshot Directory EU Sanity
    capture page screenshot    EUTC14.png
    End Test

TC15 Model/Item view switch
    Open EU Website
    maximize browser window
    Accept Cookie
    sleep    3
    View PLP Page EU
    Click View
    Save Screenshot Directory EU Sanity
    capture page screenshot    EUTC15.png
    End Test

TC16 Add to bag from PLP
    Open EU Website
    maximize browser window
    Accept Cookie
    sleep    3
    View PLP Page EU
    Click cart icon on plp
    Save Screenshot Directory EU Sanity
    capture page screenshot    EUTC16.png
    End Test

TC17 Add to wishlist PLP
    Open Login EU
    maximize browser window
    Accept Cookie
    sleep    3
    Login To Website
    View PLP Page EU
    Click wishlist on PLP
    Save Screenshot Directory EU Sanity
    capture page screenshot    EUTC17.png
    End Test

TC18 Size swatch overlay
    Open EU Website
    maximize browser window
    Accept Cookie
    sleep    3
    View PLP Page EU
    Verify Size Swatch Overlay
    Save Screenshot Directory EU Sanity
    capture page screenshot    EUTC18.png
    End Test

TC19 Pagination
    Open EU Website
    maximize browser window
    Accept Cookie
    sleep    3
    View PLP Page EU
    View Pagination
    Save Screenshot Directory EU Sanity
    capture page screenshot    EUTC19.png
    End Test

TC20 View All (Infinite Scroll)
    Open EU Website
    maximize browser window
    Accept Cookie
    sleep    3
    View PLP Page EU
    Click View All
    Save Screenshot Directory AU Sanity
    capture page screenshot    AUTC20.png
    End Test

TC21 Search Results Page - Add to cart
    Open EU Website
    maximize browser window
    Accept Cookie
    sleep    3
    Search a Product
    Click cart icon on PLP (Search Results Page)
    Save Screenshot Directory EU Sanity
    capture page screenshot    EUTC21.png
    End Test

TC22 Search Results Page - Add to Wishlist
    Open Login EU
    maximize browser window
    Accept Cookie
    sleep    3
    Login To Website
    Search a Product
    Click wishlist on PLP
    Save Screenshot Directory EU Sanity
    capture page screenshot    EUTC22.png
    End Test

TC23 On search result page under category filter size
    Open EU Website
    maximize browser window
    Accept Cookie
    sleep    3
    Search a Product
    Search Product on Search Result page
    Save Screenshot Directory EU Sanity
    capture page screenshot    EUTC23.png
    End Test

TC24 Autocomplete
    Open EU Website
    maximize browser window
    Accept Cookie
    sleep    3
    Search a Product
    Check Autocomplete
    Save Screenshot Directory EU Sanity
    capture page screenshot    EUTC24.png
    End Test

TC25 No Search Results Page
    Open EU Website
    maximize browser window
    Accept Cookie
    sleep    3
    Search No Products
    Save Screenshot Directory EU Sanity
    capture page screenshot    EUTC25.png
    End Test

TC29 Accessibility link in footer
    Open EU Website
    maximize browser window
    Accept Cookie
    sleep    3
    Check Accessibility Footer
    Save Screenshot Directory EU Sanity
    capture page screenshot    EUTC29.png
    End Test

TC30 No taxes/duties messaging for non DDP/DDU countries
    Open EU Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart EU
    Proceed to Cart Page
    Continue as a Guest
    Check No taxes/duties messaging for non DDP/DDU countries
    Save Screenshot Directory EU Sanity
    capture page screenshot    AUTC30.png
    End Test

TC31 DDP messaging correctly displays
    Open EU Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart EU
    Proceed to Cart Page
    Continue as a Guest
    Enter International Address EU(DDP)
    Check DDP Message
    Save Screenshot Directory EU Sanity
    capture page screenshot    EUTC31.png
    End Test

TC32 DDU messaging correctly displays
    Open EU Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart EU
    Proceed to Cart Page
    Continue as a Guest
    Enter International Address EU(DDU)
    Check DDU Message
    Save Screenshot Directory EU Sanity
    capture page screenshot    EUTC32.png
    End Test

TC37 France (non DDP or DDU)
    Open EU Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart EU
    Proceed to Cart Page
    Continue as a Guest
    Check No taxes/duties messaging for non DDP/DDU countries
    Save Screenshot Directory EU Sanity
    capture page screenshot    EUTC37.png
    End Test

TC38 Germany (non DDP or DDU)
    Open EU Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart EU
    Proceed to Cart Page
    Continue as a Guest
    Enter International Address EU(Germany)
    Check No taxes/duties messaging for non DDP/DDU countries
    Save Screenshot Directory EU Sanity
    capture page screenshot    EUTC38.png
    End Test

TC39 Norway (DDP)
    Open EU Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart EU
    Proceed to Cart Page
    Continue as a Guest
    Enter International Address EU(DDP)
    Check DDP Message
    Save Screenshot Directory EU Sanity
    capture page screenshot    EUTC39.png
    End Test

TC40 Turkey > $1000 (DDP)
    Open EU Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart EU
    Add Product to Cart EU
    Add Product to Cart EU
    Add Product to Cart EU
    Add Product to Cart EU
    Proceed to Cart Page
    Continue as a Guest
    Enter International Address EU(DDP-Turkey)
    Check DDP Message
    Save Screenshot Directory EU Sanity
    capture page screenshot    EUTC40.png
    End Test

TC41 Iceland (DDU)
    Open EU Website
    maximize browser window
    Accept Cookie
    sleep    3
    Add Product to Cart EU
    Proceed to Cart Page
    Continue as a Guest
    Enter International Address EU(DDU-Iceland)
    Check DDU Message
    Save Screenshot Directory EU Sanity
    capture page screenshot    EUTC41.png
    End Test