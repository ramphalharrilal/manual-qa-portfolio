# Sample Bug Report: Cart Badge Does Not Update

> This is an illustrative defect report for a fictional e-commerce application.

| Field | Details |
|---|---|
| Bug ID | BUG-CART-001 |
| Title | Cart badge remains at `1` after the final product is removed |
| Module | Shopping Cart |
| Severity | Medium |
| Priority | High |
| Status | New |
| Frequency | 5 out of 5 attempts |
| Example environment | Windows 11, Microsoft Edge desktop |

## Preconditions

- User is logged in
- Product catalog is available
- Shopping cart is empty

## Steps to Reproduce

1. Add one product to the shopping cart.
2. Confirm that the cart badge displays `1`.
3. Open the shopping cart.
4. Remove the only product.
5. Observe the cart badge without refreshing the page.

## Expected Result

The product is removed and the cart badge immediately disappears or changes to `0`.

## Actual Result

The product is removed, but the cart badge continues to display `1` until the page is refreshed.

## User and Business Impact

The incorrect count may cause users to believe an item remains in the cart. This creates confusion during checkout and reduces confidence in cart accuracy.

## Suggested Evidence

- Screenshot showing an empty cart with a badge count of `1`
- Short screen recording of the add and remove flow
- Browser console output, if relevant
- Build number and timestamp

## Retest Guidance

After a fix, repeat the scenario with one product and multiple products. Confirm that the badge updates after removing items from the cart page, product page, and checkout flow.

