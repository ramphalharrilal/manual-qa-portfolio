# E-Commerce Application Test Plan

**Document ID:** QA-TP-001  
**Version:** 1.0  
**Author:** Ramphal Harrilal  
**Test Type:** Manual Functional Testing  
**Application:** Fictional E-Commerce Web Application

## 1. Purpose

This test plan defines the manual testing approach for a sample e-commerce application. The goal is to confirm that customers can sign in, browse products, manage a shopping cart, complete checkout, and receive clear feedback when information is invalid or missing.

## 2. Objectives

- Verify that critical customer workflows function as expected
- Identify defects that could prevent login, shopping, or checkout
- Validate positive, negative, and required-field scenarios
- Confirm that calculations and cart quantities remain accurate
- Assess whether messages and controls are understandable to users

## 3. In Scope

- Valid and invalid login attempts
- Required-field validation
- Product list display and navigation
- Adding and removing products from the cart
- Cart quantity and subtotal calculations
- Checkout information validation
- Successful order confirmation
- Logout and session behavior
- Basic desktop-browser usability

## 4. Out of Scope

- Real payment processing
- Production customer data
- Performance and load testing
- Penetration testing
- Native mobile applications
- Third-party shipping integrations

## 5. Test Approach

Testing will be performed manually using risk-based prioritization. Critical purchase-path scenarios will be tested first, followed by negative, validation, usability, and regression scenarios.

The approach includes:

- Functional testing
- Positive and negative testing
- Boundary and required-field testing
- End-to-end workflow testing
- Exploratory testing
- Regression testing after fixes

## 6. Test Environment

| Component | Example Configuration |
|---|---|
| Operating system | Windows 11 desktop |
| Primary browser | Microsoft Edge |
| Secondary browser | Google Chrome |
| Network | Stable broadband connection |
| Test data | Fictional non-production users and addresses |

## 7. Entry Criteria

- Test environment is accessible
- A stable test build is available
- Required test accounts and sample products exist
- Test cases have been reviewed
- Known limitations have been documented

## 8. Exit Criteria

- All critical and high-priority test cases have been executed
- No unresolved blocker or critical defects remain
- High-severity defects have documented workarounds or approval
- Failed test cases have linked defect reports
- Regression testing is complete for fixed areas
- A test summary has been prepared

## 9. Risks and Mitigation

| Risk | Impact | Mitigation |
|---|---|---|
| Unstable test build | Blocks execution and creates unreliable results | Confirm build version before testing and record interruptions |
| Missing test data | Prevents checkout and account scenarios | Prepare reusable fictional accounts and addresses |
| Browser-specific behavior | Defects may be missed | Repeat critical flows in a secondary browser |
| Limited testing time | Lower-priority coverage may be reduced | Test authentication, cart, and checkout first |

## 10. Deliverables

- Approved test plan
- Manual test cases
- Defect reports
- Regression checklist
- Test execution summary

