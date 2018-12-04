\version "2.19.82"

debug = #(define-scheme-function
    (parser location lista-zwrotek liczbaKolumn)
    (markup-list? number?)
  (let ((powiekszenie-zwrotek '(1.1 . 1.1))
    (interlinia '(baseline-skip . 3))
    (odstepOdNumeruDoZwrotki 1)
    (odstepMiedzyZwrotkami 2)
    (counter 2)
    (out #{ \markup {} #}))
  #{
    \markup {
      \fill-line {
        \scale #powiekszenie-zwrotek {
          \null

          #(map
            (lambda (kolumna) #{ \markup {
          
          \override #interlinia
          \column {
            
            #(map
              (lambda (zwrotka) #{ \markup {
              \line {
                \bold
                \concat { #(object->string counter)  "."}
                \hspace #odstepOdNumeruDoZwrotki
                #zwrotka
                #(begin (set! counter (+ counter 1)) #{ \markup {} #})
              }
              \vspace #odstepMiedzyZwrotkami
            }
          
            #})
            kolumna)

          }

          \null
          
          }
          #})
            (podzielNaKolumny lista-zwrotek liczbaKolumn))

        }
      }
    }

  #}))
  
podzielNaKolumny = #(define-scheme-function
    (parser location lista-zwrotek liczbaKolumn)
    (markup-list? number?)
  (let* ((liczba-zwrotek (length lista-zwrotek))
        (wysokosc-kolumny (+ (quotient liczba-zwrotek liczbaKolumn) (if (= (modulo liczba-zwrotek liczbaKolumn) 0) 0 1))))
  (if (null? lista-zwrotek) (list '())
  (if (= liczbaKolumn 1) (list lista-zwrotek)
    (append (list (list-head lista-zwrotek wysokosc-kolumny)) (podzielNaKolumny (list-tail lista-zwrotek wysokosc-kolumny) (- liczbaKolumn 1)) )))))


zwrotki = #(define-scheme-function
    (parser location lista-zwrotek liczbaKolumn)
    (markup-list? number?)
  (let ((powiekszenie-zwrotek '(1.1 . 1.1))
    (interlinia '(baseline-skip . 3))
    (odstepOdNumeruDoZwrotki 1)
    (odstepMiedzyZwrotkami 2)
    (counter 2)
    (out #{ \markup {} #}))
  #{
    \markup {
      \fill-line {
        \scale #powiekszenie-zwrotek {
          \null

          #(map
            (lambda (kolumna) #{ \markup {
          
          \override #interlinia
          \column {
            
            #(map
              (lambda (zwrotka) #{ \markup {
              \line {
                \bold
                \concat { #(object->string counter)  "."}
                \hspace #odstepOdNumeruDoZwrotki
                #zwrotka
                #(begin (set! counter (+ counter 1)) #{ \markup {} #})
              }
              \vspace #odstepMiedzyZwrotkami
            }
          
            #})
            kolumna)

          }

          \null
          
          }
          #})
            (podzielNaKolumny lista-zwrotek liczbaKolumn))

        }
      }
    }

  #}))
