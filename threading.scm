(define-syntax ~>
  (syntax-rules ()
    ((_ value)
     value)
    ((_ value f)
     (f value))
    ((_ value f1 f2 ...)
     (~> (f1 value) f2 ...))))
