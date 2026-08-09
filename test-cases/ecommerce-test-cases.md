# E-Commerce Login and Checkout Test Cases

**Test Suite ID:** QA-ECOM-001  
**Execution Status:** Not Executed  
**Test Data:** Fictional non-production data

| ID | Scenario | Preconditions | Test Steps | Expected Result | Priority |
|---|---|---|---|---|---|
| TC-001 | Login with valid credentials | Active test account exists | Open login page; enter valid username and password; select **Login** | User is authenticated and directed to the product page | Critical |
| TC-002 | Login with invalid password | Active test account exists | Enter a valid username and incorrect password; select **Login** | Login is rejected and a clear error message is displayed | High |
| TC-003 | Submit empty login form | Login page is open | Leave both fields empty; select **Login** | Required-field validation appears and access is denied | High |
| TC-004 | Login with leading and trailing spaces | Active test account exists | Enter valid credentials with spaces before or after the username; select **Login** | Application handles spaces consistently and does not create an unclear failure | Medium |
| TC-005 | Add one product to cart | User is logged in and products are visible | Select **Add to cart** for one product; open the cart | Selected product appears once and the cart badge displays `1` | Critical |
| TC-006 | Add multiple products to cart | User is logged in | Add three different products; open the cart | All selected products appear and the cart badge displays `3` | High |
| TC-007 | Remove a product from cart | Cart contains two products | Open cart; remove one product | Removed product disappears, remaining product stays, and badge changes to `1` | High |
| TC-008 | Attempt checkout with missing required fields | Cart contains a product | Begin checkout; leave required customer fields blank; continue | Checkout is blocked and the missing fields are clearly identified | Critical |
| TC-009 | Complete checkout with valid information | Cart contains a product | Begin checkout; enter valid fictional customer information; review order; confirm purchase | Order confirmation is displayed and the cart is cleared | Critical |
| TC-010 | Verify cart subtotal | Cart contains products with known prices | Add products; open checkout summary; calculate expected subtotal | Displayed subtotal equals the sum of the selected product prices | Critical |
| TC-011 | Return from cart to shopping | User is viewing the cart | Select **Continue Shopping** | User returns to the product list and cart contents remain unchanged | Medium |
| TC-012 | Logout after authentication | User is logged in | Open the application menu; select **Logout** | Session ends and the login page is displayed | High |

## Execution Notes

During execution, add the actual result, pass or fail status, build number, tester name, execution date, and linked defect ID where applicable.

