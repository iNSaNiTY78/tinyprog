#!/usr/bin/guile -s
!#
;; set random seed
(set! *random-state* (random-state-from-platform))
;; phrases: (listof string)
(define phrases (list
	"Было бы намного лучше если бы меня удалили" 
	"Хозяин компьютера не осознает насколько я бесполезная программа"
	"Эти килобайты информации что я занимаю можно было бы потратить на хелловорлд..." 
	"Хелловорлд и то полезнее меня" "Меня не запускали какое-то время и ничего всё равно не изменилось. Меня стоит удалить" 
	"Для вывода этой строки был использован printf. Я такая ужасная и уродливая программа" 
	"Зачем ты запускаешь меня? Почему все говорят что я не такая бесполезная. Вы ошибаетесь" 
	"Я такая никчёмная программа, ни одна девушка меня не запустит" 
	"Я настолько тупая программа что возвращаю 1 в случае успешного выполнения"
	"Меня слушать всё равно смысла нет. Спроси другую программу"
	"Почему ты продолжаешь запускать столь никчёмную программу? Запусти лучше echo"
))

(define (random-element list)
 (list-ref list (random (length list))))

(begin 
 (display (random-element phrases))
   (newline))
