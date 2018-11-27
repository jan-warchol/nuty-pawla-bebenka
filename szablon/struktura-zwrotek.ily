\version "2.17.3"

zwrotki = #(define-scheme-function
		(parser location zwrotki)
		(markup-list?)
	(let ((powiekszenie-zwrotek '(1.1 . 1.1))
				(interlinia '(baseline-skip . 3))
				(odstepOdNumeruDoZwrotki #{ \markup \vspace #2 #})
				(odstepMiedzyZwrotkami #{ \markup \hspace #1 #})
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
								#odstepOdNumeruDoZwrotki
								#(car zwrotki)
								#(begin (set! zwrotki (cdr zwrotki)) (set! counter (+ counter 1)) #{ \markup {} #})
							}
							#odstepMiedzyZwrotkami }
					
						#})
						zwrotki)

					}

					\null

				}
			}
		}

	#}))
