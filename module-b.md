# Module B - Admin

In this module, competitors must develop an **admin** application for Sudsy’s staff, **utilizing the backend** provided at `https://module-a-Y-solution.sudsy.com`, where `Y` is your workstation number. **Do not use the backend you developed in Module A;** instead, use the fully functional backend provided.

---

- [Module B - Admin](#module-b---admin)
  - [1 General information](#1-general-information)
    - [1.1 Design](#11-design)
    - [1.2 Authentication](#12-authentication)
    - [1.3 Layout](#13-layout)
    - [1.4 Toasts](#14-toasts)
    - [1.5 Form validation](#15-form-validation)
    - [1.6 Navigation](#16-navigation)
  - [2. Pages](#2-pages)
    - [2.1 Login Page](#21-login-page)
    - [2.2 Subscriptions (index) page](#22-subscriptions-index-page)
      - [2.2.1 Subscriptions table](#221-subscriptions-table)
      - [2.2.2 Subscription deletion](#222-subscription-deletion)
    - [2.3 Admins page](#23-admins-page)
    - [2.4 Create admin page](#24-create-admin-page)
    - [2.5 Locations page](#25-locations-page)
      - [2.5.1 Machines table](#251-machines-table)
      - [2.5.2 Locations table](#252-locations-table)
    - [2.6 Create location page](#26-create-location-page)
    - [2.7 Edit location page](#27-edit-location-page)

---

## 1 General information

### 1.1 Design

The visual design is not the primary focus - Sudsy prioritizes functionality. **However, a clean, readable, and user-friendly interface with basic styling is expected**. Follow the provided wireframes, which can be found in the [`assets/module-b/wireframes`](./assets/module-b/wireframes/) folder.

### 1.2 Authentication

- All pages except the login page are protected and **inaccessible** to unauthenticated users.
- After a successful login, the token must be stored in the browser to maintain authentication across page reloads.
- The token must be included in the `Authorization` header for all requests: `Authorization: Bearer <token>`
- Behavior:
  - **Logged-out users** are redirected to the login page when attempting to access protected pages.
  - **Logged-in users** cannot access the login page and should be redirected to the index page.

### 1.3 Layout

Every page _(except the login page)_ includes a layout with:

- "Sudsy Admin" title
- Navigation links that point to the appropriate page:
  - Subscriptions
  - Admins
  - Locations
- The logged-in admin's name
- A logout button, which logs out the user and redirects to the login page.

### 1.4 Toasts

Toasts display success messages in the bottom-right corner for 3 seconds after specific actions.  
Actions requiring a toast:

- Login: `Successfully logged in`
- Logout: `Successfully logged out`
- Subscription deletion: `Subscription deleted successfully`
- Admin creation: `Admin created successfully`
- Location creation: `Location created successfully`
- Location update: `Location updated successfully`
- Location deletion: `Location deleted successfully`

### 1.5 Form validation

- All form validation is handled by the backend.
- When the API returns a `422` validation error, the relevant error messages should be displayed beneath the respective input fields.

### 1.6 Navigation

The URL must reflect the current page so that **refreshing the browser reloads the same page**.

## 2. Pages

### 2.1 Login Page

- Contains two input fields: **Username** and **Password**
- Submitting the form sends the credentials to the backend.
- **Upon successful login:**
  - The token is stored in the browser.
  - The user is redirected to the **index page**.
- **If authentication fails:**
  - An error message is displayed.
  - Field validation errors _(if any)_ are shown as described in section [**1.5**](#15-form-validation).

**Example credentials for testing:**

- Username: `admin`
- Password: `admin`

### 2.2 Subscriptions (index) page

#### 2.2.1 Subscriptions table

Displays a table listing the **user subscriptions** fetched from the backend. The table includes the following fields:

- Nickname
- Display Email
- Email
- Created At

#### 2.2.2 Subscription deletion

Each row contains a `Delete` button, which removes a subscription.

### 2.3 Admins page

Displays a list of **administrators** with the following columns:

- Name
- Username
- Last Login At
- Created At

A **Create Admin** button is available, linking to the [Create Admin Page](#24-create-admin-page).

### 2.4 Create admin page

Contains a form with the following fields:

- Name
- Username
- Password

Field validation is performed as outlined in section [1.5](#15-form-validation).  
Upon successful admin creation, the user is redirected back to the [Admins Page](#23-admins-page).

### 2.5 Locations page

This page contains two tables:

#### 2.5.1 Machines table

Lists all available machines, displaying **Type** and **Size** fields.

#### 2.5.2 Locations table

Lists all available locations, displaying:

- Name
- City
- Created At

**Additional features:**

- **Create Location Button** → Redirects to the [Create Location Page](#26-create-location-page).
- **Filter Input** → Filters locations by `Name` and `City` _(client-side filtering)_.
- **Edit Button** → Opens the [Edit Location Page](#27-edit-location-page) for the selected location.
- **Delete Button** → Removes a location after user confirmation using JavaScript's `confirm()` function

### 2.6 Create location page

A form for adding new locations, including the following fields:

- Name
- Description (textarea)
- Opens At (hh:mm)
- Closes At (hh:mm)
- Postal code
- City
- Address

**Additional features:**

- **Amenities Selection (Checkboxes)**:

  - Accessible
  - Easy Parking
  - Lounge Area
  - Music
  - Wi-Fi

- **Machine Selection**:
  - The list of available machines is loaded dynamically.
  - Clicking a machine adds it to the **Selected machines** list
  - **Multiple machines of the same type can be selected.**
  - Selected machines are displayed above the list and can be removed by clicking on them.

### 2.7 Edit location page

Identical to the [Create Location Page](#26-create-location-page), except that fields are pre-filled with existing data for better user experience. Submitting the form updates the location details.
