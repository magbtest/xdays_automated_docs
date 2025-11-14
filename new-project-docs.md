# New Feature Guide: Google Sign-In

This document describes how the new Google Sign-In feature works and how to enable it.

## 1. Feature Overview

Users can now log into our application with a single click using their Google account. This eliminates the need to remember a password and speeds up the onboarding process.

## 2. How to Enable (for Administrators)

To enable this feature, you must:
1.  Go to the `Settings > Integrations` panel.
2.  Enter your `Google Client ID` and `Client Secret`.
3.  Save the changes and refresh the page.

## 3. API Changes

A new endpoint has been added:
* `POST /auth/google/callback`
    * Expects an authorization `token` from Google.
    * Returns a user `JWT` for our application.
