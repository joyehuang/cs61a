(define (curry-cook formals body)
  (if (null? (cdr formals))  
      `(lambda (,(car formals)) ,body)  
      `(lambda (,(car formals))  
         ,(curry-cook (cdr formals) body))))

(define (curry-consume curry args)
  (if (null? args)
      curry
      (let ((applied (curry (car args))))  ; Apply first arg explicitly
        (curry-consume applied (cdr args)))))

(define-macro (switch expr options)
  (switch-to-cond (list 'switch expr options)))

(define (switch-to-cond switch-expr)
  (cons 'cond
        (map (lambda (option)
               (list (list 'equal? (car (cdr switch-expr)) (car option))
                     (car (cdr option))))  ; Get just the result using car cdr
             (car (cdr (cdr switch-expr))))))  ; Use nested car/cdr
