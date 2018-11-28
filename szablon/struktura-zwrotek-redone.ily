\version "2.17.3"

zwrotki = #(define-scheme-function
    (parser location zwrotki)
    (markup-list?)
  (let ((powiekszenie-zwrotek '(1.1 . 1.1))
    (interlinia '(baseline-skip . 3))
    (odstepOdNumeruDoZwrotki 1)
    (odstepMiedzyZwrotkami 2)
    (counter 2))
  #{
    \markup {
      \fill-line {
        \scale #powiekszenie-zwrotek {
          \null

          \override #interlinia
          \column {
            
            #(map
              (lambda (x) #{ \markup {
              \line {
                \bold
                { #(object->string counter)  "."}
                \hspace #odstepOdNumeruDoZwrotki
                #(car zwrotki)
                #(begin (set! zwrotki (cdr zwrotki)) (set! counter (+ counter 1)) #{ \markup {} #})
              }
              \vspace #odstepMiedzyZwrotkami }
          
            #})
            zwrotki)

          }

          \null

        }
      }
    }

  #}))
