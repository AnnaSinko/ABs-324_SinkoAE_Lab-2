;---------------------------------------declorate externs-------------------------------------;
extern printf                                                                                 ;
extern gets                                                                                   ;
                                                                                              ;
;---------------------------------------allocate memory---------------------------------------;
section .data                                                                                 ;
    input_string db 100, 0                                                                    ; Increased buffer size to 100 characters 100 == max. lenght.
    MSG_1 db "Hello! Type ur string: ", 0                                                     ;
    MSG_YES db 0ah, "Yes", 0                                                                  ;
    MSG_Split db 0ah, 0                                                                       ;
    MSG_NO db 0ah, "No", 0                                                                    ;
    MSG_EQUAL db 0ah, "Equal", 0                                                              ;
    ads db '%d', 0                                                                            ;
    not_vow dd 0                                                                              ;
                                                                                              ;
;---------------------------------keeping the actual code (.text)-----------------------------;
section .text                                                                                 ;
    global Start                                                                              ;
                                                                                              ;
Start:                                                                                        ;
;-----------------------------------------MSG: Type num1 -------------------------------------;
    lea     rcx, [MSG_1]        ; Загружаем адрес строки MSG_1 в RCX для вызова printf        ;
    call    printf              ; Вызов функции printf для вывода сообщения                   ;
                                                                                              ;
;-------------------------------------------READ: input_string--------------------------------;
    lea     rax, [input_string] ; Загружаем адрес строки input_string в RAX                   ;
    mov     rcx, rax            ;  Копируем адрес строки input_string в RCX для gets          ;
    call    gets                ; Вызов функции gets для чтения строки                        ;
                                                                                              ;
;----------------------------------------Counting characters----------------------------------;
    xor     rsi, rsi            ; Очищаем RSI (будет использоваться для подсчета гласных)     ;
    xor     rdi, rdi            ; Очищаем RDI (будет использоваться для подсчета согласных)   ;
                                                                                              ;
    ; Loop through the string character by character                                          ;
    mov     rcx, rax            ; Копируем адрес строки в RCX для итерации по символам        ;
    .count_loop:                                                                              ;
        cmp     byte [rcx], 0   ; Проверяем, достигли ли мы конца строки                      ;
        je      .count_done     ; Если да, завершаем подсчет                                  ;
                                                                                              ;
        ; Check if the current character is a vowel (assuming ASCII characters)               ;
        cmp     byte [rcx], 'a' ; Сравниваем текущий символ с 'a'                             ;
        je      .is_vowel       ; Если это гласная, переходим к метке .is_vowel               ;
        jl      .not_lowercase  ; Если символ меньше 'a', переходим к метке .not_lowercase    ;
        cmp     byte [rcx], 'z' ; Сравниваем текущий символ с 'z'                             ;
        jg      .not_lowercase  ; Если символ больше 'z', переходим к метке .not_lowercase    ;
        cmp     byte [rcx], 'e' ; Check if it's a vowel                                       ;
        je      .is_vowel                                                                     ;
        cmp     byte [rcx], 'i'                                                               ;
        je      .is_vowel                                                                     ;
        cmp     byte [rcx], 'o'                                                               ;
        je      .is_vowel                                                                     ;
        cmp     byte [rcx], 'u'                                                               ;
        je      .is_vowel                                                                     ;
        cmp     byte [rcx], 'y'                                                               ;
        je      .is_vowel                                                                     ;
        jmp     .not_vowel                                                                    ;
                                                                                              ;
        .is_vowel:                                                                            ;
            inc     rsi         ; Увеличиваем счетчик гласных                                 ;
            jmp     .char_counted                                                             ;
        .not_vowel:                                                                           ;
            inc     rdi         ; Увеличиваем счетчик согласных                               ;
        .char_counted:                                                                        ;
            inc     rcx         ; Переходим к следующему символу                              ;
            jmp     .count_loop                                                               ;
                                                                                              ;
    .not_lowercase:                                                                           ;
        cmp     byte [rcx], 'A'                                                               ;
        je      .is_vowel                                                                     ;
        jl      .char_counted                                                                 ;
        cmp     byte [rcx], 'Z'                                                               ;
        jg      .char_counted                                                                 ;
        cmp     byte [rcx], 'E' ; Проверяем, является ли это гласной                          ;
        je      .is_vowel                                                                     ;
        cmp     byte [rcx], 'I'                                                               ;
        je      .is_vowel                                                                     ;
        cmp     byte [rcx], 'O'                                                               ;
        je      .is_vowel                                                                     ;
        cmp     byte [rcx], 'U'                                                               ;
        je      .is_vowel                                                                     ;
        cmp     byte [rcx], 'Y'                                                               ;
        je      .is_vowel                                                                     ;
        jmp     .not_vowel                                                                    ;
                                                                                              ;
    .count_done:                                                                              ;
                                                                                              ;
;---------------------------------------MSG: Count Results------------------------------------;
    lea     rdx, [rsi]                                                                        ;
    lea     rcx, ads                                                                          ;
    call    printf                                                                            ;
    lea     rcx, [MSG_Split]                                                                  ;
    call    printf                                                                            ;
    lea     rdx, [rdi]                                                                        ;
    lea     rcx, ads                                                                          ;
    call    printf                                                                            ;
        cmp     rsi, rdi            ; Сравниваем количество гласных с количеством согласных   ;
    je      .equal              ; Если они равны, переходим к выводу "Equal"                  ;
    jg      .vowel_greater      ; Если гласных больше, переходим к выводу "Vowels: %d\n"      ;
    lea     rcx, [MSG_NO]       ; Иначе выводим "Consonants: %d\n"                            ;
    jmp     .print_result                                                                     ;
                                                                                              ;
    .vowel_greater:                                                                           ;
    lea     rcx, [MSG_YES]      ; Выводим "Vowels: %d\n"                                      ;
    jmp     .print_result                                                                     ;
                                                                                              ;
    .equal:                                                                                   ;
    lea     rcx, [MSG_EQUAL]    ; Выводим "Equal"                                             ;
                                                                                              ;
    .print_result:                                                                            ;
    call    printf                                                                            ;
                                                                                              ;
;--------------------------------------------EXIT---------------------------------------------;
    ;simulates return 0                                                                       ;
    mov     rax, 0                                                                            ;
    ret                                                                                       ;
;--------------------------------------------WIN!---------------------------------------------;                                                                                              ;