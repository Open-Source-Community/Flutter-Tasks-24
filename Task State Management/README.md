## Home Screen
On this screen, there are two buttons:
1. Register
2. Follow Up

When clicking on "Follow Up," it opens a dialog containing:
- A text field to input the email.
- A button labeled "Get Status."

Upon pressing the button, a loading indicator appears inside the dialog, and a request is sent to the server to retrieve the status.

Possible statuses are: Approved, Rejected, Pending, Invalid.

Once the response is received, the status is displayed in a Text widget within the dialog, along with an icon representing the status. Below that, there's an "OK" button to close the dialog.

## Register Page
This page consists of an app bar displaying the current stage number.

### First Stage:
This stage contains 6 text fields:
- First Name
- Last Name
- Email
- Phone
- Password
- Confirm Password

Icons are provided next to the password fields to toggle visibility. Below them, there's a "Next" button. Upon pressing it, a loading indicator appears in place of the button, and the data is sent to the server. If the server response is true, the user proceeds to the next stage.

### Second Stage:
This stage includes:
- Three dropdown buttons for:
  - City (with any three cities)
  - Account Type (Personal, Business, Non-Commercial)
  - Membership Duration (Year, Month, Week)
- Two radio buttons for Gender and Third Parties (Yes/No). If "Yes" is selected, a text field appears for additional information.
- Below them, there's a "Next" button, functioning similarly to the previous stage.

### Third Stage:
This stage simply displays a text instructing the user to agree to the terms and conditions along with a checkbox. Below that, there's a "Next" button.

If the server response is true, a page appears confirming the registration completion and instructing the user to wait for approval. An "OK" button returns the user to the home screen.
