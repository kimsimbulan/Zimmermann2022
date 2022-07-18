*** Settings ***
Library  SeleniumLibrary
Library     DateTime

*** Variables ***
${BROWSER}        chrome
${URL}            https://www.zimmermann.com/
${US_URL}         https://www.zimmermann.com/us
${UK_URL}         https://www.zimmermann.com/uk
${EU_URL}         https://www.zimmermann.com/eu
${HK_URL}         https://www.zimmermann.com/hk
${AU_PLP_PAGE}    https://www.zimmermann.com/new-arrivals
${EU_PLP_PAGE}    https://www.zimmermann.com/eu/new-arrivals
${UK_PLP_PAGE}    https://www.zimmermann.com/uk/new-arrivals
${US_PLP_PAGE}    https://www.zimmermann.com/us/new-arrivals
${HK_PLP_PAGE}    https://www.zimmermann.com/hk/new-arrivals
${AU_LOGIN_PAGE}    https://www.zimmermann.com/customer/account/login
${EU_LOGIN_PAGE}    https://www.zimmermann.com/eu/customer/account/login
${UK_LOGIN_PAGE}    https://www.zimmermann.com/uk/customer/account/login
${US_LOGIN_PAGE}    https://www.zimmermann.com/us/customer/account/login
${HK_LOGIN_PAGE}    https://www.zimmermann.com/hk/customer/account/login
${AU_EMAIL_ADDRESS_REGISTRATION}   kimc.simbulan+SignUpAutomationTestAU7@gmail.com
${US_EMAIL_ADDRESS_REGISTRATION}   kimc.simbulan+SignUpAutomationTestUS7@gmail.com
${UK_EMAIL_ADDRESS_REGISTRATION}   kimc.simbulan+SignUpAutomationTestUK7@gmail.com
${EU_EMAIL_ADDRESS_REGISTRATION}   kimc.simbulan+SignUpAutomationTestEU7@gmail.com
${HK_EMAIL_ADDRESS_REGISTRATION}   kimc.simbulan+SignUpAutomationTestHK7@gmail.com
${STORE_LOCATOR_AU_URL}        https://www.zimmermann.com/store/locate-store/
${STORE_LOCATOR_US_URL}     https://www.zimmermann.com/us/store/locate-store/
${STORE_LOCATOR_EU_URL}     https://www.zimmermann.com/eu/store/locate-store/
${STORE_LOCATOR_UK_URL}     https://www.zimmermann.com/uk/store/locate-store/
${STORE_LOCATOR_HK_URL}     https://www.zimmermann.com/hk/store/locate-store/
${RESET_PASSWORD_EMAIL}     kim.simbulan@zimmermann.com
${EMPTY}    CTRL+a+BACKSPACE
${PDP_URL_AU}      https://www.zimmermann.com/new-arrivals/jeannie-ruched-side-bikini-bouquet-floral.html
${PDP_URL_EU}      https://www.zimmermann.com/eu/swim/swimwear/jeannie-terry-scoop-bikini-mustard.html
${PDP_URL_UK}      https://www.zimmermann.com/uk/new-arrivals/jeannie-tie-bandeau-dress-mustard.html
${PDP_URL_US}      https://www.zimmermann.com/us/new-arrivals/jeannie-ruched-side-bikini-bouquet-floral.html
${PDP_URL_HK}      https://www.zimmermann.com/hk/new-arrivals/jeannie-ruched-side-bikini-bouquet-floral.html
${PRODUCT_NAME}     JEANNIE RUCHED SIDE BIKINI
${PRODUCT_NAME_UK}     JEANNIE TIE BANDEAU DRESS
${PROMO_CODE}   FREESHIP21

*** Keywords ***
Open Login AU
    open browser    ${AU_LOGIN_PAGE}   ${BROWSER}

Open Login US
    open browser    ${US_LOGIN_PAGE}   ${BROWSER}

Open Login UK
    open browser    ${UK_LOGIN_PAGE}   ${BROWSER}

Open Login EU
    open browser    ${EU_LOGIN_PAGE}   ${BROWSER}

Open Login HK
    open browser    ${HK_LOGIN_PAGE}   ${BROWSER}

Open AU Website
    open browser    ${URL}  chrome

Open US Website
    open browser    ${US_URL}  chrome

Open UK Website
    open browser    ${UK_URL}  chrome

Open EU Website
    open browser    ${EU_URL}  chrome

Open HK Website
    open browser    ${HK_URL}  chrome

Accept Cookie
    sleep    3
    mouse over       id:btn-cookie-accept
    click element    id:btn-cookie-accept

Go to Homepage
    click element    xpath://a[@class='logo header__logo']
    sleep    3

Login To Website
    input text    id:email  kim.simbulan@zimmermann.com
    input text    id:pass   Password12!
    click element    id:send2
    sleep    3

Open Registration AU
    open browser    https:/www.zimmermann.com/customer/account/create/    ${BROWSER}

Open Registration US
    open browser    https://www.zimmermann.com/us/customer/account/create/    ${BROWSER}

Open Registration UK
    open browser    https://www.zimmermann.com/uk/customer/account/create/    ${BROWSER}

Open Registration EU
    open browser    https://www.zimmermann.com/eu/customer/account/create/    ${BROWSER}

Open Registration HK
    open browser    https://www.zimmermann.com/hk/customer/account/create/    ${BROWSER}

Open Reset Password AU
    open browser    https://www.zimmermann.com/customer/account/forgotpassword/    ${BROWSER}

Open Reset Password EU
    open browser    https://www.zimmermann.com/eu/customer/account/forgotpassword/    ${BROWSER}

Open Reset Password UK
    open browser    https://www.zimmermann.com/uk/customer/account/forgotpassword/    ${BROWSER}

Open Reset Password US
    open browser    https://www.zimmermann.com/us/customer/account/forgotpassword/    ${BROWSER}

Open Reset Password HK
    open browser    https://www.zimmermann.com/hk/customer/account/forgotpassword/    ${BROWSER}

New Email Address (AU)
    input text    xpath://*[@id="email_address"]    ${AU_EMAIL_ADDRESS_REGISTRATION}

New Email Address (US)
    input text    xpath://*[@id="email_address"]    ${US_EMAIL_ADDRESS_REGISTRATION}

New Email Address (EU)
    input text    xpath://*[@id="email_address"]    ${EU_EMAIL_ADDRESS_REGISTRATION}

New Email Address (UK)
    input text    xpath://*[@id="email_address"]    ${UK_EMAIL_ADDRESS_REGISTRATION}

New Email Address (HK)
    input text    xpath://*[@id="email_address"]    ${HK_EMAIL_ADDRESS_REGISTRATION}

Add Product to Cart AU
    sleep    3
    go to    ${PDP_URL_AU}
    sleep    3
    click element    id:option-label-size-1091-item-5123
    click element    id:product-addtocart-button
    sleep    5

Add Product to Cart EU
    sleep    3
    go to    ${PDP_URL_EU}
    sleep    3
    click element    id:option-label-size-1091-item-5123
    click element    id:product-addtocart-button
    sleep    5

Add Product to Cart UK
    sleep       3
    go to    ${PDP_URL_UK}
    sleep    3
    click element    id:option-label-size-1091-item-5123
    click element    id:product-addtocart-button
    sleep    5

Add Product to Cart US
    sleep    3
    go to    ${PDP_URL_US}
    sleep    3
    click element    id:option-label-size-1091-item-5123
    click element    id:product-addtocart-button
    sleep    5

Add Product to Cart HK
    sleep    3
    go to    ${PDP_URL_HK}
    sleep    3
    click element    id:option-label-size-1091-item-5123
    click element    id:product-addtocart-button
    sleep    5

View Bag
    sleep    3
    mouse over      xpath://a[@class='header-button popup-trigger']
    wait until element is visible       xpath://a[@class='header-button popup-trigger']
    click element    xpath://a[@class='link__button minicart-content__edit']
    sleep    3

Remove Item on the Bag
    click element    xpath://button[@class='button--icon cart-list-item__actions-item js-loader-init u-ml--unrelated']
    sleep    3
    page should contain    You have no items in your bag.
    page should contain    Click here to continue shopping

Remove item on the mini bag
    mouse over      xpath://a[@class='header-button popup-trigger']
    wait until element is visible       xpath://a[@class='header-button popup-trigger']
    click element    xpath://a[@class='link__button action delete action--auto']
    sleep    3
    click button    xpath://button[@class='action-primary action-accept button action__button button--fluid u-width-6-col@m u-ml--related@m']
    sleep    3
    click element    xpath://a[@class='header-button popup-trigger']
    page should contain    You have no items in your bag.
    page should contain    Click here to continue shopping

Move to Wishlist
    click element    xpath://button[@class='button--icon cart-list-item__actions-item']
    sleep    3
    element should be visible    xpath://*[@id="maincontent"]/div[1]/div[2]/div[1]/div/div

Increment/Decrement QTY
    click element    xpath ://button[@class='button button--icon quantity-update__button quantity-update__button--plus quantity-update__button--cart']
    sleep    3
    element attribute value should be    xpath://input[@class='input__field cart-list-item__qty-input quantity-update__input quantity-update__input--cart']     value    2
    sleep    3
    click element    xpath://button[@class='button button--icon quantity-update__button quantity-update__button--minus quantity-update__button--cart']
    sleep    3
    element attribute value should be    xpath://input[@class='input__field cart-list-item__qty-input quantity-update__input quantity-update__input--cart']     value    1
    sleep    3

Add more products
    click element    xpath ://button[@class='button button--icon quantity-update__button quantity-update__button--plus quantity-update__button--cart']
    click element    xpath ://button[@class='button button--icon quantity-update__button quantity-update__button--plus quantity-update__button--cart']
    click element    xpath ://button[@class='button button--icon quantity-update__button quantity-update__button--plus quantity-update__button--cart']
    click element    xpath ://button[@class='button button--icon quantity-update__button quantity-update__button--plus quantity-update__button--cart']
    click element    xpath ://button[@class='button button--icon quantity-update__button quantity-update__button--plus quantity-update__button--cart']
    sleep    3

Add a Promo to the Bag
    click element    xpath://div[@class='discount__title discount-code__title']
    input text    id:coupon_code    ${PROMO_CODE}
    click element    xpath://button[@class='button button--secondary action-apply action apply']
    sleep    3

Verify message on the bag (AU)
    element should contain    xpath://p[@class='text-align--center text-align--right@m u-mb--lines paragraph--disclimer']     'FREESHIP21' promotion has been applied to this item in the order subtotal.

Verify message on on the bag
    element should contain    xpath://p[@class='text-align--center text-align--right@m u-mb--lines paragraph--disclimer']       'FREESHIP21' promotion has been applied in the item price.

Proceed to Checkout from Mini Bag
    mouse over      xpath://a[@class='header-button popup-trigger']
    wait until element is visible       xpath://a[@class='header-button popup-trigger']
    mouse over      xpath://a[@class='header-button popup-trigger']
    click element    id:top-cart-btn-checkout
    sleep    3
    element should be visible    xpath://ul[@class='opc-progress-bar u-pl--none']

Proceed to Cart Page
    mouse over      xpath://a[@class='header-button popup-trigger']
    wait until element is visible       xpath://a[@class='header-button popup-trigger']
    mouse over      xpath://a[@class='header-button popup-trigger']
    click element    id:top-cart-btn-checkout
    sleep    3

Click Checkout button from Bag
    click element    xpath://*[@id="maincontent"]/div[2]/div/div[3]/div[2]/button
    sleep    3
    element should be visible   xpath://ul[@class='opc-progress-bar u-pl--none']

View PLP Page
    go to     ${AU_PLP_PAGE}
    sleep    3

View PLP Page EU
    go to     ${EU_PLP_PAGE}
    sleep    3

View PLP Page UK
    go to     ${UK_PLP_PAGE}
    sleep    3

View PLP Page US
    go to     ${US_PLP_PAGE}
    sleep    3

View PLP Page HK
    go to     ${HK_PLP_PAGE}
    sleep    3

Click View
    click element    xpath://button[@class='button--no-bg button--link-view u-pr--none u-pl--none']
    sleep    3

Click cart icon on PLP
#to update product if not available (New Arrivals)
    sleep   3
    click element    xpath://*[@id="js-button--icon-cart-869155"]
    click element    id:option-label-size-1091-item-5132
    sleep    10
    element should be visible    xpath://*[@id="html-body"]/div[4]/div[1]/div/header/div/div/div[2]/div[3]/div/a/span
    sleep    3

Click cart icon on PLP (EU)
#to update product if not available (New Arrivals)
    sleep   3
    click element    xpath://*[@id="js-button--icon-cart-869155"]
    click element    id:option-label-size-1091-item-5132
    sleep    10
    element should be visible    xpath://*[@id="html-body"]/div[4]/div[1]/div/header/div/div/div[2]/div[3]/div/a/span
    sleep    3

Click cart icon on PLP (UK)
#to update product if not available (New Arrivals)
    sleep   3
    click element    xpath://*[@id="js-button--icon-cart-869155"]
    click element    id:option-label-size-1091-item-5129
    sleep    10
    element should be visible    xpath://*[@id="html-body"]/div[4]/div[1]/div/header/div/div/div[2]/div[3]/div/a/span
    sleep    3

Click cart icon on PLP (Search Results Page)
#to update this product 871246 if no longer available https://www.zimmermann.com/lyre-terry-towel-dress-mint-cream.html
    click element    xpath://*[@id="js-button--icon-cart-871246"]
    click element    id:option-label-size-1091-item-5132
    sleep    10
    element should be visible    xpath://*[@id="html-body"]/div[4]/div[1]/div/header/div/div/div[2]/div[3]/div/a/span
    sleep    3

Click cart icon on PLP (Search Results Page) (EU)
#to update this product if no longer available https://www.zimmermann.com/lyre-terry-towel-dress-mint-cream.html
    click element    xpath://*[@id="js-button--icon-cart-871246"]
    click element    id:option-label-size-1091-item-5132
    sleep    10
    element should be visible    xpath://*[@id="html-body"]/div[4]/div[1]/div/header/div/div/div[2]/div[3]/div/a/span
    sleep    3

Click wishlist on PLP (Search Results Page) (AU)
#to update this product if no longer available
    sleep    3
    click element    xpath://button[@class='button--icon-wishlist-show button--icon-wishlist-hide button button--icon js-add-wishlist js-wishlist-871246']
    sleep    10
    element should be visible    xpath://*[@id="html-body"]/div[4]/div[1]/div/header/div/div/div[2]/div[2]/a/span
    sleep    3

Click wishlist on PLP (Search Results Page) (EU)
#to update this product 867574 if no longer available
    sleep    3
    click element    xpath://button[@class='button--icon-wishlist-show button--icon-wishlist-hide button button--icon js-add-wishlist js-wishlist-870637']
    sleep    10
    element should be visible    xpath://*[@id="html-body"]/div[4]/div[1]/div/header/div/div/div[2]/div[2]/a/span
    sleep    3

Click wishlist on PLP (Search Results Page) (UK)
#to update this product 867574 if no longer available
    sleep    3
    click element    xpath://button[@class='button--icon-wishlist-show button--icon-wishlist-hide button button--icon js-add-wishlist js-wishlist-870637']
    sleep    10
    element should be visible    xpath://*[@id="html-body"]/div[4]/div[1]/div/header/div/div/div[2]/div[2]/a/span
    sleep    3

Click wishlist on PLP (AU)
#to update this product if no longer available
    click element    xpath://button[@class='button button--icon button--icon-wishlist-hide js-add-wishlist js-wishlist-869155 button--icon-wishlist-show']
    sleep    10
    element should be visible    xpath://*[@id="html-body"]/div[4]/div[1]/div/header/div/div/div[2]/div[2]/a/span
    sleep    3

Click wishlist on PLP (US)
#to update this product 871246 if no longer available https://www.zimmermann.com/lyre-terry-towel-dress-mint-cream.html
    sleep    3
    click element    xpath://button[@class='button button--icon button--icon-wishlist-hide js-add-wishlist js-wishlist-869155 button--icon-wishlist-show']
    sleep    10
    element should be visible    xpath://*[@id="html-body"]/div[4]/div[1]/div/header/div/div/div[2]/div[2]/a/span
    sleep    3

Click wishlist on PLP (EU)
#to update this product 867574 if no longer available
    click element    xpath://button[@class='button button--icon button--icon-wishlist-hide js-add-wishlist js-wishlist-869155 button--icon-wishlist-show']
    sleep    10
    element should be visible    xpath://*[@id="html-body"]/div[4]/div[1]/div/header/div/div/div[2]/div[2]/a/span
    sleep    3

Click wishlist on PLP (UK)
#to update this product if no longer available
    click element    xpath://button[@class='button button--icon button--icon-wishlist-hide js-add-wishlist js-wishlist-869155 button--icon-wishlist-show']
    sleep    10
    element should be visible    xpath://*[@id="html-body"]/div[4]/div[1]/div/header/div/div/div[2]/div[2]/a/span
    sleep    3

Verify Size Swatch Overlay
    click element    xpath://*[@id="js-button--icon-cart-869155"]
    element should be visible    xpath://div[@class='catalog-grid-item__options catalog-grid-item__options-869155 catalog-grid-item__options-show']
    sleep    3

View Pagination
    execute javascript    window.scrollTo(0,6000)
    sleep    5
    element should be visible    xpath://*[@id="amasty-shopby-product-list"]/div[2]/div[1]/ul

Click View All
    execute javascript    window.scrollTo(0,6000)
    sleep    5
    click element    xpath://*[@id="amasty-shopby-product-list"]/div[2]/div[1]/ul/li[7]/a
    sleep    5
    execute javascript    window.scrollTo(0,6000)
    sleep    5
    element should not be visible    xpath://*[@id="amasty-shopby-product-list"]/div[2]/div[1]/ul
    sleep    3

Click View All HK
    execute javascript    window.scrollTo(0,6000)
    sleep    5
    click element    xpath://*[@id="amasty-shopby-product-list"]/div[2]/div[1]/ul/li[6]/a
    sleep    5
    execute javascript    window.scrollTo(0,6000)
    sleep    5
    element should not be visible    xpath://*[@id="amasty-shopby-product-list"]/div[2]/div[1]/ul/li[6]/a
    sleep    3

Search a Product
    click element    xpath://div[@class='header__search js-search']
    input text    id:search     Jeannie Tie Bandeau
    sleep    5
    click element    xpath://*[@id="search_mini_form"]/div[1]/div/div[1]/div/div[2]/h2/div/a
    sleep    3

Search Product on Search Result page
    execute javascript    window.scrollTo(0,500)
    click element    xpath://*[@id="maincontent"]/div[3]/div/div[2]/div/div/div/div/div[1]/div[2]/div/ul/li[1]/a
    sleep    3
    element should contain    xpath://span[@class='base ng-binding']    SEARCH RESULTS FOR NEW ARRIVALS
    sleep    3

Check Autocomplete
    click element    xpath://div[@class='header__search js-search']
    input text    id:search     Jeannie Tie Bandeau
    sleep    10
    element should be visible    xpath://*[@id="search_mini_form"]/div[1]/div/div[1]/div/div[1]/div/div[1]/div/div
    #element should contain    xpath://*[@id="search_mini_form"]/div[1]/div/div[1]/div/div[1]/div/div[1]/div/div[1]/a/span   Dress

Search No Products
    click element    xpath://div[@class='header__search js-search']
    input text    id:search     Hello
    press keys    NONE  ENTER
    sleep    3
    element should contain    xpath://span[@class='base ng-binding']     WE CAN'T FIND ANY RESULTS FOR 'HELLO'
    sleep    3

Check Accessibility Footer (AU)
    execute javascript    window.scrollTo(0,6000)
    sleep    3
    click element    xpath://*[@id="html-body"]/footer/div/section[1]/div/div[3]/nav/ul/li[6]/a/span
    sleep    3
    element should be visible    xpath://*[@id="html-body"]/div[10]/div[1]

Check Accessibility Footer
    execute javascript    window.scrollTo(0,6000)
    sleep    3
    click element    xpath://*[@id="ui-id-30"]
    sleep    3
    element should be visible    xpath://*[@id="html-body"]/div[10]/div[1]

Continue as a Guest
    sleep    3
    input text    id:guest-email    kim.simbulan@zimmermann.com
    click element    xpath://*[@id="checkout"]/div[2]/div[2]/div[2]/div[2]/form/div[2]/button
    sleep   3

Click Add New button
    sleep    5
    click element    xpath://a[@class='link__button checkout-shipping-address__action-buttons']
    sleep    10

Check No taxes/duties messaging for non DDP/DDU countries
    element should not be visible    class:totals duty-text
    sleep    3

Check DDP Message
    element should be visible    xpath://*[@id="opc-sidebar"]/div[1]/div/div[2]/div[3]/div[7]/div
    sleep    3
    element should contain    xpath://*[@id="opc-sidebar"]/div[1]/div/div[2]/div[3]/div[7]/div     DUTIES AND TAXES ARE INCLUDED
    sleep    3

Check DDU Message
    element should be visible    xpath://*[@id="opc-sidebar"]/div[1]/div/div[2]/div[3]/div[7]/div
    sleep    3
    element should contain    xpath://*[@id="opc-sidebar"]/div[1]/div/div[2]/div[3]/div[7]/div    DUTIES AND TAXES ARE EXCLUDED AND MAY BE PAYABLE AT TIME OF ARRIVAL
    sleep    3

Enter International Address(Non DDU/DDP - Australia)
    click element       xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     Australia
    sleep    3
    press keys    NONE  ENTER
    sleep   3

Enter International Address(DDP-New Zealand)
    click element       xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     New Zealand
    sleep    3
    press keys    NONE  ENTER
    sleep   3

Enter International Address EU(DDP)
    click element       xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     Norway
    sleep    3
    press keys    NONE  ENTER
    sleep   3

Enter International Address UK(DDP-South Africa)
    click element       xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     South Africa
    sleep    3
    press keys    NONE  ENTER
    sleep   3

Enter International Address US(DDP-Canada)
    click element       xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     Canada
    sleep    3
    press keys    NONE  ENTER
    sleep   3

Enter International Address US(DDP-Chile)
    click element       xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     Chile
    sleep    3
    press keys    NONE  ENTER
    sleep   3

Enter International Address US(DDU-Aruba)
    click element       xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     Aruba
    sleep    3
    press keys    NONE  ENTER
    sleep   3

Enter International Address(DDP-New Caledonia)
    click element       xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     New Caledonia
    sleep    3
    press keys    NONE  ENTER
    sleep   3

Enter International Address(DDU)
    click element       xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     American Samoa
    sleep    3
    press keys    NONE  ENTER
    sleep   3

Enter International Address EU(DDU)
    click element       xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     Albania
    sleep    3
    press keys    NONE  ENTER
    sleep   3

Enter International Address UK(DDU-Afganistan)
    click element       xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     Afghanistan
    sleep    3
    press keys    NONE  ENTER
    sleep   3

Enter International Address UK(UAE)
    click element       xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     United Arab Emirates
    sleep    3
    press keys    NONE  ENTER
    sleep   3

Enter International Address EU(Germany)
    click element       xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     Germany
    sleep    3
    press keys    NONE  ENTER
    sleep   3

Enter International Address EU(DDP-Turkey)
    click element       xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     Turkey
    sleep    3
    press keys    NONE  ENTER
    sleep   3

Enter International Address EU(DDU-Iceland)
    click element       xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     Iceland
    sleep    3
    press keys    NONE  ENTER
    sleep   3

Enter International Address HK(DDP-Taiwan)
    click element       xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     Taiwan
    sleep    3
    press keys    NONE  ENTER
    sleep   3

Enter International Address HK(DDU-Bangladesh)
    click element       xpath://div[@class='select__field-item choices__item--selectable']
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']     Bangladesh
    sleep    3
    press keys    NONE  ENTER
    sleep   3

Go to Store Locator
    go to   ${STORE_LOCATOR_AU_URL}
    sleep    3

Go to Store Locator US
    sleep    3
    go to   ${STORE_LOCATOR_US_URL}
    sleep    3

Go to Store Locator UK
    go to   ${STORE_LOCATOR_UK_URL}
    sleep    3

Go to Store Locator EU
    go to   ${STORE_LOCATOR_EU_URL}
    sleep    3

Go to Store Locator HK
    go to   ${STORE_LOCATOR_HK_URL}
    sleep    3

Fill in Registration Form
    input text    id:firstname  Kimmy
    input text    id:lastname   Simbs
    input text    id:telephone  452162525
    input text    id:password   Password12!
    input text    id:password-confirmation  Password12!
    sleep   5
    wait until page contains element    xpath://*[@id="form-validate"]/div/button
    click element    xpath://*[@id="form-validate"]/div/button

Reset Password
    input text    xpath://*[@id="email-address"]    ${RESET_PASSWORD_EMAIL}
    click button  xpath://*[@id="form-validate"]/button
    sleep    3
    page should contain    If there is an account associated with ${RESET_PASSWORD_EMAIL} you will receive an email with a link to reset your password.
    sleep    3

Select Store
    click element    xpath://*[@id="state_search"]/div/div/div[1]/div/div

View Area Store Filter AU
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   NSW
    element text should be    xpath://*[contains(text(),'NSW, AU')]    NSW, AU
    press keys    xpath://input[@class='select__field-input input__field choices__input--cloned']    ${EMPTY}
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   QLD
    element text should be    xpath://*[contains(text(),'QLD, AU')]    QLD, AU
    press keys    xpath://input[@class='select__field-input input__field choices__input--cloned']    ${EMPTY}
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   SA
    element text should be    xpath://*[contains(text(),'SA, AU')]     SA, AU
    press keys    xpath://input[@class='select__field-input input__field choices__input--cloned']    ${EMPTY}
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   VIC
    element text should be    xpath://*[contains(text(),'VIC, AU')]    VIC, AU
    press keys    xpath://input[@class='select__field-input input__field choices__input--cloned']    ${EMPTY}
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   WA
    element text should be    xpath://*[contains(text(),'WA, AU')]     WA, AU
    press keys    xpath://input[@class='select__field-input input__field choices__input--cloned']    ${EMPTY}
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   C
    element should contain    id:choices-state_attr-item-choice-6     ALL, AU
    press keys    xpath://input[@class='select__field-input input__field choices__input--cloned']    ${EMPTY}
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   World
    element should contain    id:choices-state_attr-item-choice-7   WORLDWIDE
    press keys    xpath://input[@class='select__field-input input__field choices__input--cloned']    ${EMPTY}
    sleep    3

Check the Stores AUSTRALIA
    execute javascript        window.scrollTo(0,300)
    element text should be    xpath://*[contains(text(),'AUSTRALIA')]           AUSTRALIA
    execute javascript        window.scrollTo(0,1200)
    element text should be    xpath://a[contains(text(),'ADELAIDE')]            ADELAIDE
    element text should be    xpath://a[contains(text(),'ARMADALE')]            ARMADALE
    element text should be    xpath://a[contains(text(),'BONDI')]               BONDI
    element text should be    xpath://a[contains(text(),'BRISBANE')]            BRISBANE
    element text should be    xpath://a[contains(text(),'CHADSTONE')]           CHADSTONE
    element text should be    xpath://a[contains(text(),'CHATSWOOD')]           CHATSWOOD
    element text should be    xpath://a[contains(text(),'CLAREMONT')]           CLAREMONT
    element text should be    xpath://a[contains(text(),'Doncaster')]           DONCASTER
    element text should be    xpath://a[contains(text(),'Emporium')]            EMPORIUM
    execute javascript        window.scrollTo(0,1600)
    element text should be    xpath://a[contains(text(),'Indooroopilly')]       INDOOROOPILLY
    element text should be    xpath://a[contains(text(),'James St')]            JAMES ST
    element text should be    xpath://a[contains(text(),'Macquarie')]           MACQUARIE
    execute javascript        window.scrollTo(0,2000)
    element text should be    xpath://a[contains(text(),'MELBOURNE OUTLET')]    MELBOURNE OUTLET
    element text should be    xpath://a[contains(text(),'MIRANDA')]             MIRANDA
    element text should be    xpath://a[contains(text(),'PACIFIC FAIR')]        PACIFIC FAIR
    element text should be    xpath://a[contains(text(),'Paddington')]          PADDINGTON
    element text should be    xpath://a[contains(text(),'QV')]                  QV
    element text should be    xpath://a[contains(text(),'South Yarra')]         SOUTH YARRA
    element text should be    xpath://a[contains(text(),'YDNEY CBD')]           SYDNEY CBD
    element text should be    xpath://a[contains(text(),'SYDNEY OUTLET')]       SYDNEY OUTLET
    element text should be    xpath://a[contains(text(),'Warringah Mall')]      WARRINGAH MALL
    sleep    3

Check and View Store Details NSW
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   NSW
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element text should be    xpath://*[contains(text(),'New South Wales')]    NEW SOUTH WALES

Check and View Store Details QLD
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   QLD
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element text should be    xpath://*[contains(text(),'Queensland')]     QUEENSLAND

Check and View Store Details SA
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   SA
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element text should be    xpath://*[contains(text(),'South Australia')]     SOUTH AUSTRALIA

Check and View Store Details VIC
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   VIC
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element text should be    xpath://*[contains(text(),'Victoria')]     VICTORIA

Check and View Store Details WA
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   WA
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element text should be    xpath://*[contains(text(),'Western Australia')]     WESTERN AUSTRALIA

View Bondi
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'BONDI')]   BONDI

View Chatswood
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'CHATSWOOD')]   CHATSWOOD

View Macquarie
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[3]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[3]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Macquarie')]   MACQUARIE

View Miranda
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[4]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[4]/div/a[2]/span
    sleep    3
    element text should be   xpath://h1[contains(text(),'MIRANDA')]   MIRANDA

View Paddington
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[5]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[5]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Paddington')]   PADDINGTON

View Sydney CBD
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[6]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[6]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'SYDNEY CBD')]   SYDNEY CBD

View Sydney Outlet
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[7]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[7]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'SYDNEY OUTLET')]   SYDNEY OUTLET

View Warringah Mall
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[8]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[8]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Warringah Mall')]   WARRINGAH MALL

View Brisbane
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'BRISBANE')]   BRISBANE

View Indooroopily
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Indooroopilly')]   INDOOROOPILLY

View James St
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[3]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[3]/div/a[2]/span
    sleep    3
    element text should be   xpath://h1[contains(text(),'James St')]   JAMES ST

View Pacific Fair
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[4]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[4]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'PACIFIC FAIR')]   PACIFIC FAIR

View Adelaide
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'ADELAIDE')]   ADELAIDE

View Armadale
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'ARMADALE')]   ARMADALE

View Chadstone
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'CHADSTONE')]   CHADSTONE

View Doncaster
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[3]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[3]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Doncaster')]   DONCASTER

View Emporium
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[4]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[4]/div/a[2]/span
    sleep    3
    element text should be   xpath://h1[contains(text(),'Emporium')]   EMPORIUM

View Melbourne Outlet
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[5]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[5]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'MELBOURNE OUTLET')]   MELBOURNE OUTLET

View QV
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[6]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[6]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'QV')]   QV

View South Yarra
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[7]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[7]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'South Yarra')]   SOUTH YARRA

View Claremont
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'CLAREMONT')]   CLAREMONT

Check Store Details
    element text should be  xpath://*[@id="store-details"]/div[2]/div[2]/div[1]     STORE DETAILS
    element text should be  xpath://*[@class='store-details__contact']/div[@class='store-details__label'][1]    ADDRESS
    element text should be  xpath://*[@class='store-details__contact']/div[@class='store-details__label'][2]    PHONE
    element text should be  xpath://*[@class='store-details__contact']/div[@class='store-details__label'][3]    EMAIL
    element text should be  xpath://*[@class='store-details__trading']/div[@class='store-details__label']       OPENING HOURS
    sleep    3

Click Find a Store link
    click element    xpath://*[@id="store-details"]/div[1]/a/span
    sleep   3
    execute javascript    window.scrollTo(0,0)

View ALL Stores
    execute javascript    window.scrollTo(0,1000)

View Area Store Filter EU
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   FR
    element text should be    xpath://*[contains(text(),'FR, EU')]    FR, EU
    press keys    xpath://input[@class='select__field-input input__field choices__input--cloned']    ${EMPTY}
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   IT
    element text should be    xpath://*[contains(text(),'IT, EU')]    IT, EU
    press keys    xpath://input[@class='select__field-input input__field choices__input--cloned']    ${EMPTY}
     input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   SP
    element text should be    xpath://*[contains(text(),'SP, EU')]    SP, EU
    press keys    xpath://input[@class='select__field-input input__field choices__input--cloned']    ${EMPTY}
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   World
    element should contain    id:choices-state_attr-item-choice-4   WORLDWIDE
    press keys    xpath://input[@class='select__field-input input__field choices__input--cloned']    ${EMPTY}
    sleep    3

View Area Store Filter UK
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   C
    element text should be    xpath://*[contains(text(),'LON, UK')]    LON, UK
    press keys    xpath://input[@class='select__field-input input__field choices__input--cloned']    ${EMPTY}
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   World
    element should contain    id:choices-state_attr-item-choice-2   WORLDWIDE
    press keys    xpath://input[@class='select__field-input input__field choices__input--cloned']    ${EMPTY}
    sleep    3

View Area Store Filter US
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   CA
    element text should be    xpath://*[contains(text(),'CA, US')]    CA, US
    press keys    xpath://input[@class='select__field-input input__field choices__input--cloned']    ${EMPTY}
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   FL
    element text should be    xpath://*[contains(text(),'FL, US')]    FL, US
    press keys    xpath://input[@class='select__field-input input__field choices__input--cloned']    ${EMPTY}
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   NV
    element text should be    xpath://*[contains(text(),'NV, US')]    NV, US
    press keys    xpath://input[@class='select__field-input input__field choices__input--cloned']    ${EMPTY}
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   NY
    element text should be    xpath://*[contains(text(),'NY, US')]    NY, US
    press keys    xpath://input[@class='select__field-input input__field choices__input--cloned']    ${EMPTY}
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   TX
    element text should be    xpath://*[contains(text(),'TX, US')]    TX, US
    press keys    xpath://input[@class='select__field-input input__field choices__input--cloned']    ${EMPTY}
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   World
    element should contain    id:choices-state_attr-item-choice-7   WORLDWIDE
    press keys    xpath://input[@class='select__field-input input__field choices__input--cloned']    ${EMPTY}
    sleep    3

View Area Store Filter HK
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']  C
    element should contain    id:choices-state_attr-item-choice-1    SH, CN
    press keys    xpath://input[@class='select__field-input input__field choices__input--cloned']    ${EMPTY}
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   World
    element should contain    id:choices-state_attr-item-choice-2   WORLDWIDE
    press keys    xpath://input[@class='select__field-input input__field choices__input--cloned']    ${EMPTY}
    sleep    3

Check the Stores UK & EUROPE
    execute javascript        window.scrollTo(0,5500)
    element text should be    xpath://*[contains(text(),'UK & EUROPE')]         UK & EUROPE
    element text should be    xpath://a[contains(text(),'Cannes')]              CANNES
    element text should be    xpath://a[contains(text(),'Capri')]               CAPRI
    element text should be    xpath://a[contains(text(),'Forte Dei Marmi')]     FORTE DEI MARMI
    element text should be    xpath://a[contains(text(),'MAYFAIR')]             MAYFAIR
    element text should be    xpath://a[contains(text(),'Milan')]               MILAN
    element text should be    xpath://a[contains(text(),'Paris')]               PARIS
    element text should be    xpath://a[contains(text(),'Puerto Banus')]        PUERTO BANUS
    element text should be    xpath://a[contains(text(),'Rome')]                ROME
    element text should be    xpath://a[contains(text(),'Serravalle')]          SERRAVALLE
    element text should be    xpath://a[contains(text(),'St Tropez')]           ST TROPEZ

Check the Stores UNITED STATES
    execute javascript    window.scrollTo(0,3500)
    element text should be    xpath://*[contains(text(),'UNITED STATES')]           UNITED STATES
    element should contain    xpath://a[contains(text(),'Americana Manhasset')]     AMERICANA MANHASSET
    element should contain    xpath://a[contains(text(),'BAL HARBOUR')]             BAL HARBOUR
    element should contain    xpath://a[contains(text(),'Dallas')]                  DALLAS
    element should contain    xpath://a[contains(text(),'East Hampton')]            EAST HAMPTON
    #element should contain    xpath://a[contains(text(),'GEORGIA')]                 GEORGIA
    #element should contain    xpath://a[contains(text(),'Hawaii')]                  HAWAII
    element should contain    xpath://a[contains(text(),'Madison Avenue')]          MADISON AVENUE
    element should contain    xpath://a[contains(text(),'Meatpacking')]             MEATPACKING
    element should contain    xpath://a[contains(text(),'Melrose Place')]           MELROSE PLACE
    element should contain    xpath://a[contains(text(),'Pacific Palisades')]       PACIFIC PALISADES
    element should contain    xpath://a[contains(text(),'Palm Beach')]              PALM BEACH
    element should contain    xpath://a[contains(text(),'San Francisco')]           SAN FRANCISCO
    #element should contain    xpath://a[contains(text(),'Short Hills')]             SHORT HILLS
    element should contain    xpath://a[contains(text(),'SOHO')]                    SOHO
    element should contain    xpath://a[contains(text(),'South Coast Plaza')]       SOUTH COAST PLAZA
    element should contain    xpath://a[contains(text(),'Woodbury Outlet')]         WOODBURY OUTLET
    element should contain    xpath://a[contains(text(),'Wynn Plaza')]              WYNN PLAZA

Check the Stores CHINA
    execute javascript      window.scrollTo(0,3000)
    element text should be  xpath://*[contains(text(),'CHINA')]     CHINA
    element text should be  xpath://a[contains(text(),'Shanghai')]  SHANGHAI
    sleep   3

Check and View Store Details FR, EU
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   FR
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element should contain    xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[1]    FRANCE

Check and View Store Details IT, EU
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   IT
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element should contain    xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[1]    ITALY

Check and View Store Details SP, EU
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   SP
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element should contain    xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[1]    SPAIN

View Cannes
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Cannes')]   CANNES

View Paris
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Paris')]   PARIS

View St Tropez
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[3]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[3]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'St Tropez')]   ST TROPEZ

View Capri
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Capri')]   CAPRI

View Forte Dei Marmi
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Forte Dei Marmi')]   FORTE DEI MARMI

View Milan
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[3]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[3]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Milan')]   MILAN

View Puerto Banus
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Puerto Banus')]   PUERTO BANUS

View Madrid
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Madrid')]   MADRID

Check and View Store Details LON, UK
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   C
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element text should be    xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[1]    UK

Check and View Store Details CA, US
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   CA
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element text should be    xpath://*[contains(text(),'California')]    CALIFORNIA

Check and View Store Details FL, US
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   FL
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element text should be    xpath://*[contains(text(),'Florida')]    FLORIDA

Check and View Store Details GA, US
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   GA
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element text should be    xpath://*[contains(text(),'Georgia')]    GEORGIA

Check and View Store Details HI, US
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   HI
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element text should be    xpath://*[contains(text(),'Hawaii')]    HAWAII

Check and View Store Details NJ, US
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   NJ
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element text should be    xpath://*[contains(text(),'New Jersey')]    NEW JERSEY

Check and View Store Details NV, US
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   NV
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element text should be    xpath://*[contains(text(),'Nevada')]    NEVADA

Check and View Store Details NY, US
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   NY
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element text should be    xpath://*[contains(text(),'New York')]    NEW YORK

Check and View Store Details TX, US
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   TX
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element text should be    xpath://*[contains(text(),'Texas')]    TEXAS

Check and View Store Details SH, CN
    input text    xpath://input[@class='select__field-input input__field choices__input--cloned']   C
    press keys    NONE  ENTER
    sleep    3
    execute javascript    window.scrollTo(0,1000)
    element should be visible    xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[1]

View Shanghai
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Shanghai')]   SHANGHAI

View Mayfair
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'MAYFAIR')]   MAYFAIR

View Melrose Place
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Melrose Place')]   MELROSE PLACE

View Pacific Palisades
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Pacific Palisades')]   PACIFIC PALISADES

View San Franciso
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[3]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[3]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'San Francisco')]   SAN FRANCISCO

View South Coast Plaza
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[4]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[4]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'South Coast Plaza')]   SOUTH COAST PLAZA

View Bal Harbour
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'BAL HARBOUR')]   BAL HARBOUR

View Palm Beach
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Palm Beach')]   PALM BEACH

View Georgia
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'GEORGIA')]   GEORGIA

View Hawaii
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Hawaii')]   HAWAII

View Short Hills
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Short Hills')]   SHORT HILLS

View Wynn Plaza
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Wynn Plaza')]   WYNN PLAZA

View Americana Manhasset
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Americana Manhasset')]   AMERICANA MANHASSET

View East Hampton
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[2]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'East Hampton')]   EAST HAMPTON

View Madison Avenue
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[3]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[3]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Madison Avenue')]   MADISON AVENUE

View Meatpacking
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[4]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[4]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Meatpacking')]   MEATPACKING

View SOHO
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[5]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[5]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'SOHO')]   SOHO

View Woodbury Outlet
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[6]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[6]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Woodbury Outlet')]   WOODBURY OUTLET

View Dallas
    mouse over      xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    click element   xpath://*[@id="maincontent"]/div[3]/div/div[4]/div[2]/div[1]/div/a[2]/span
    sleep    3
    element text should be    xpath://h1[contains(text(),'Dallas')]   DALLAS

Save Screenshot Directory AU Sanity
    ${date}     Get Current Date    result_format=%d%m%y
    set screenshot directory    ./Screenshots/Sanity/AU/${date}

Save Screenshot Directory US Sanity
    ${date}     Get Current Date    result_format=%d%m%y
    set screenshot directory    ./Screenshots/Sanity/US${date}

Save Screenshot Directory UK Sanity
    ${date}     Get Current Date    result_format=%d%m%y
    set screenshot directory    ./Screenshots/Sanity/UK/${date}

Save Screenshot Directory EU Sanity
    ${date}     Get Current Date    result_format=%d%m%y
    set screenshot directory   ./Screenshots/Sanity/EU/${date}

Save Screenshot Directory HK Sanity
    ${date}     Get Current Date    result_format=%d%m%y
    set screenshot directory    ./Screenshots/Sanity/HK/${date}

End Test
    close browser