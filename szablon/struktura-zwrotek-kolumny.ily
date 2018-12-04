\version "2.19.82"

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
  (let* ((powiekszenie-zwrotek '(1.1 . 1.1))
    (interlinia '(baseline-skip . 3))
    (odstepOdNumeruDoZwrotki 1)
    (odstepMiedzyZwrotkami 2)
    (counter 2)
    
    (kolumna-markup (define-scheme-function
    (parser location lista-zwrotek)
    (markup-list?)
    #{ \markup {
        \override #interlinia
        \column #(apply append (map 
            (lambda (zwrotka) (list 
              #{ \markup {
                \bold
                \concat { #(object->string counter)  "."}
                \hspace #odstepOdNumeruDoZwrotki
                #zwrotka
                #(begin (set! counter (+ counter 1)) (markup) )}
              #}
              #{\markup { \vspace #odstepMiedzyZwrotkami } #}
            )) lista-zwrotek
            
            ))}
    #})))
  #{ \markup {
      \fill-line
        \scale #powiekszenie-zwrotek
        #(append (list #{\markup \null #}) 
          (apply append (map 
            (lambda (kolumna) (list 
              (kolumna-markup kolumna)
              #{\markup \null #}
            )) (podzielNaKolumny lista-zwrotek liczbaKolumn)
            )))

   }#}))