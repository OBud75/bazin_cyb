section .data
    prompt db 'entre ton nom: ', 0
    greeting db 'bonjour ', 0

section .bss
    nom resb 100

section .text
    global _start

_start:
    ; Afficher le message d'invite
    mov eax, 4
    mov ebx, 1
    mov ecx, prompt
    mov edx, 16
    int 0x80

    ; Lire l'entrée utilisateur
    mov eax, 3
    mov ebx, 0
    mov ecx, nom
    mov edx, 100
    int 0x80

    ; Afficher le message de salutation
    mov eax, 4
    mov ebx, 1
    mov ecx, greeting
    mov edx, 8
    int 0x80

    ; Afficher le nom saisi
    mov eax, 4
    mov ebx, 1
    mov ecx, nom
    mov edx, 100
    int 0x80

    ; Quitter le programme
    mov eax, 1
    mov ebx, 0
    int 0x80

; Vous pouvez créer des fonctions (read_input, quit ...)