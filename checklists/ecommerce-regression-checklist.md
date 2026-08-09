# E-Commerce Regression Checklist

Use this checklist after a new build, defect fix, or release candidate is provided.

## Authentication

- [ ] Valid user can log in
- [ ] Invalid credentials are rejected
- [ ] Empty required fields display validation
- [ ] Error messages are clear and readable
- [ ] Logout ends the active session
- [ ] Protected pages are unavailable after logout

## Product Catalog

- [ ] Product names, images, and prices display correctly
- [ ] Product links open the correct details
- [ ] Sorting and filtering controls work as expected
- [ ] Add-to-cart controls respond once per selection
- [ ] Product information remains consistent across pages

## Shopping Cart

- [ ] Added products appear in the cart
- [ ] Cart badge matches the number of selected products
- [ ] Removing a product updates the cart immediately
- [ ] Quantities and totals remain accurate
- [ ] Continue Shopping returns to the catalog
- [ ] Cart contents persist during normal navigation

## Checkout

- [ ] Checkout opens when the cart contains a product
- [ ] Required customer fields are enforced
- [ ] Invalid input produces useful feedback
- [ ] Item prices and subtotal are accurate
- [ ] Order review displays the correct products
- [ ] Successful checkout displays confirmation
- [ ] Cart is cleared after a completed order

## Usability and Accessibility

- [ ] Keyboard focus follows a logical order
- [ ] Buttons and links have understandable labels
- [ ] Text remains readable at browser zoom levels
- [ ] Important messages are not communicated by color alone
- [ ] Forms can be completed without a mouse
- [ ] No content overlaps at common desktop resolutions

## Compatibility and Stability

- [ ] Critical flows work in the primary browser
- [ ] Critical flows work in a secondary browser
- [ ] Refreshing does not create duplicate transactions
- [ ] Browser back and forward actions do not corrupt the cart
- [ ] No unexpected errors appear during critical workflows

## Completion

- [ ] Failed checks have linked defect IDs
- [ ] Fixed defects have been retested
- [ ] Critical workflows have passed
- [ ] Known issues are documented
- [ ] Test results are ready for release review

