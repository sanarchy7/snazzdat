# Be sure to restart your server when you modify this file.

Snazzdat::Application.config.session_store :cookie_store, key: '_snazzdat_session', expire_after: 30.minutes
Snazzdat::Application.config.session_store :cookie_store, key: '_snazzdat_my_matches', expire_after: 23.hours
