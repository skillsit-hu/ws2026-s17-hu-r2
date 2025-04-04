# Module C - Design and frontend

In this module, your task is to develop a **visually engaging and user-friendly website** that showcases Sudsy’s locations and their details. The backend for this module is available at `https://module-a-Y-solution.sudsy.com`, where `Y` is your workstation number.

All necessary media assets, icons, and text are provided in the [`assets/module-c`](./assets/module-c/) - you are free to use them as needed.

Unlike the first round, you are not restricted in your choice of technologies. You can use any provided framework or library to build the frontend.

---

- [Module C - Design and frontend](#module-c---design-and-frontend)
  - [1 General information](#1-general-information)
    - [1.1 Design](#11-design)
      - [1.1.1 Custom font](#111-custom-font)
    - [1.2 Responsiveness](#12-responsiveness)
    - [1.3 Accessibility](#13-accessibility)
    - [1.4 SEO Best Practices](#14-seo-best-practices)
    - [1.5 Layout](#15-layout)
      - [1.5.1 Header, navigation](#151-header-navigation)
        - [1.5.1.1 Desktop view](#1511-desktop-view)
        - [1.5.1.2 Mobile view (hamburger)](#1512-mobile-view-hamburger)
      - [1.5.2 Footer](#152-footer)
    - [1.6 Coming soon pages](#16-coming-soon-pages)
    - [1.7 404 pages](#17-404-pages)
  - [2 Index page](#2-index-page)
    - [2.1 Hero section](#21-hero-section)
    - [2.2 Locations section](#22-locations-section)
    - [2.3 Download section](#23-download-section)
    - [2.4 Subscribe section](#24-subscribe-section)
  - [3 Location page](#3-location-page)

---

## 1 General information

### 1.1 Design

Sudsy’s graphic designer has **prepared the design**. Your task is to implement this design with **pixel-perfect precision**. The design assets are provided in the [`assets/module-c/design`](./assets/module-c/design/) folder.

#### 1.1.1 Custom font

The media files include a custom font, [PlusJakartaSans](./assets/module-c/fonts/PlusJakartaSans-VariableFont_wght.ttf), which must be used throughout the website. Ensure the font is embedded directly so users can view it seamlessly without needing to install it on their devices.

### 1.2 Responsiveness

- Implement responsive design techniques to ensure the website looks appealing across **the two viewports**
- The design is provided for **two specific viewports**: `1440px` and `402px`. We will use these viewports to assess your work.

### 1.3 Accessibility

You should meticulously **apply accessibility standards** (WCAG) to ensure that the website is inclusive and can be used by all users, regardless of their abilities. This will involve providing alternative text for images, semantic HTML elements, and proper ARIA attributes.

### 1.4 SEO Best Practices

Incorporate SEO best practices into the website's **HTML structure (semantic HTML elements)** and **meta tags**, optimizing it for search engine visibility and ranking. This will increase Sudsy's online presence and attract organic traffic.

### 1.5 Layout

Each page should include a **header** and a **footer**, framing the main content. The header remains **sticky** at the top of the page.

#### 1.5.1 Header, navigation

##### 1.5.1.1 Desktop view

The header is sticky, so it stays at the top even after scrolling down.

The header includes:

- Logo
- 3 links for navigation: `Locations`, `Download`, and `Subscribe`, each smoothly scrolling to the corresponding section.
- A `Log In` button (links to the `/login` page).
- Hovering over the navigation links triggers an animation that underlines the hovered item animating the width from the center.

##### 1.5.1.2 Mobile view (hamburger)

On mobile view, a hamburger menu is used to save up space in the header.

- Only the logo and a hamburger icon are visible initially.
- **Clicking** the hamburger button opens a menu styled according to the [design](./assets/module-c/design/hamburger.png).
- The menu can be **closed** by **clicking the `X` button or by clicking outside the menu** _(on the blurred background)_.

#### 1.5.2 Footer

A simple footer containing a logo, copyright note, and three links. The link should actually link to the corresponding pages.

### 1.6 Coming soon pages

Certain pages are not required for implementation at this stage. Instead, they should display a "Coming Soon" message, following the provided [design](./assets/module-c/design/coming-soon.png).

**These pages are coming-soon:**

- `login`
- `privacy`
- `terms-and-conditions`
- `cookie-policy`

### 1.7 404 pages

A 404 page should be displayed for any non-existent route. **Additionally, if a user navigates to a location that does not exist, the same 404 page should be shown.** The [design](./assets/module-c/design/404.png) for this page has been provided.

## 2 Index page

### 2.1 Hero section

- Includes a **title**, a short **description**, and two buttons that scroll smoothly to relevant sections.
- Features subtle **gradients** and background elements for added visual appeal.

### 2.2 Locations section

**This section consists of:**

- A search form
- A list of location cards
- A pagination component at the bottom

**Server-Side Pagination and Search Behavior**  
The list of locations is retrieved from the Paginated Locations API, meaning all search queries and pagination actions should trigger a request to the backend rather than filtering data on the client side.

- **Fetching Data**

  - The application should request new data from the backend whenever the user searches or navigates between pages.
  - While waiting for the API response, all buttons and input fields should be disabled to prevent multiple simultaneous requests.
  - Once the data is loaded, the interface updates with the new results.

- **Search Functionality**

  - When the user enters a new search query, the results should refresh, and the pagination should reset to page 1.
  - The search query should be included in the API request, ensuring that only relevant results are returned.

- **Pagination Behavior**

  - Clicking a page number loads the corresponding page.
  - Clicking the next or previous buttons navigates one page forward or backward.
  - If there are no more pages available, the next/previous buttons should be disabled to prevent unnecessary API calls.

**Location Cards**

- Each location is displayed as a card.
- Clicking a location card should navigate the user to that location’s detailed page.
- Since the description is stored as an HTML string, it should be properly rendered so that users see the formatted content instead of raw HTML tags.

### 2.3 Download section

- This section contains a **title** with a short **description**, two **buttons** and an **image** with a greyish border.
- The two buttons (Apple Store and Google Player, not linked yet) should have a subtle scaling effect when hovering.
- The image should also have a scaling zoom effect, without changing the size of the image.

### 2.4 Subscribe section

This section includes:

- An **input field** for the email address
- A **Submit button**

**Behavior**

- Clicking the **Submit** button sends the form data to the Subscribe API endpoint **without client-side validation**.
- If the API request **fails**, the input field's **border and text color turn red** to indicate an error.
- If the request **succeeds**, the following happens:
  - The **Submit button is disabled**.
  - The **input field turns green** to indicate success.
  - After a few seconds, the input field **returns to its original state**.

The provided [design assets](./assets/module-c/design/landing-subscribe-success.png) include images showcasing the **error and success states**.

## 3 Location page

This page presents details for a **single location**.

- The **URL format** should be `/locations/:slug`, where `slug` is the unique identifier for the location.
- While fetching the location data, a **circular, spinning progress indicator** should be displayed at the **center of the page**.
- Once the data is successfully loaded, the page should display **all location details** according to the provided [design](./assets/module-c/design/location-desktop.png).
