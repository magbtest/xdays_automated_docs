# Przewodnik po Nowej Funkcji: Logowanie przez Google

Ten dokument opisuje, jak działa nowa funkcja logowania przez Google i jak ją włączyć.

## 1. Omówienie Funkcji

Użytkownicy mogą teraz logować się do naszej aplikacji jednym kliknięciem, używając swojego konta Google. Eliminuje to potrzebę pamiętania hasła i przyspiesza proces onboardingu.

## 2. Jak Włączyć (dla Administratorów)

Aby włączyć tę funkcję, musisz:

1.  Przejść do panelu `Ustawienia > Integracje`.
2.  Wprowadzić swój `Google Client ID` oraz `Client Secret`.
3.  Zapisać zmiany i odświeżyć stronę.

## 3. Zmiany w API

Dodano nowy endpoint:

* `POST /auth/google/callback`
    * Oczekuje na `token` autoryzacyjny od Google.
    * Zwraca `JWT` użytkownika w naszej aplikacji.

---
*Prosimy o przetestowanie tej funkcji na środowisku stagingowym przed wdrożeniem na produkcję.*
