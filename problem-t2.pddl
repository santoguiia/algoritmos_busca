;---------------------------- Situação 1 - 3 pessoas
; (define (problem elev)
;    (:domain elev)
;    (:objects
;         elevator_1 - elevator
;         p1 p2 p3 - passager    ;ainda nao sei a necessidade
;    )
;    (:init ( = (elevator_at elevator_1) 1)
;           (= (passager_at p1) 10)
;           (= (passager_at p2) 3)
;           (= (passager_at p3) 5)

;           (not (inside_elevator p1))
;           (not (inside_elevator p2))
;           (not (inside_elevator p3))



;           (not (satisfied p1))
;           (not (satisfied p2))
;           (not (satisfied p3))

;           (= (target_pass p1) 1)
;           (= (target_pass p2) 7)
;           (= (target_pass p3) 10)
          
;           (= (max_pas_elevador) 2)
;           (= (highest_floor) 50)
;           (= (num_p_inside) 0)

;           (= (num_moves) 0)
;    )
;    (:goal (and (satisfied p1)
;                (satisfied p2)
;                (satisfied p3)

;           )
;    )
;    (:metric minimize (num_moves))
; )
; ;---------------------------- Situação 2 - uma pessoa
; (define (problem elev)
;    (:domain elev)
;    (:objects
;         elevator_1 - elevator
;         p1  - passager    ;ainda nao sei a necessidade
;    )
;    (:init ( = (elevator_at elevator_1) 1)
;           (= (passager_at p1) 10)
        

;           (not (inside_elevator p1))
 
;           (not (satisfied p1))

;           (= (target_pass p1) 1)
          
;           (= (max_pas_elevador) 2)
;           (= (highest_floor) 50)
;           (= (num_p_inside) 0)

;           (= (num_moves) 0)
;    )
;    (:goal (and (satisfied p1)

;           )
;    )
;    (:metric minimize (num_moves))
; )

;---------------------------- Situação 3 - 10 pessoas 1 dentro
(define (problem elev)
   (:domain elev)
   (:objects
        elevator_1 - elevator
        p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 - passager    ;ainda nao sei a necessidade
   )
   (:init ( = (elevator_at elevator_1) 1)
          (= (passager_at p1) 48)
          (= (passager_at p2) 27)
          (= (passager_at p3) 14)
          (= (passager_at p4) 7)
          (= (passager_at p5) 38)
          (= (passager_at p6) 5)
          (= (passager_at p7) 11)
          (= (passager_at p8) 22)
          (= (passager_at p9) 49)
          (= (passager_at p10) 5)

          (not (inside_elevator p1))
          (not (inside_elevator p2))
          (not (inside_elevator p3))
          (not (inside_elevator p4))
          (not (inside_elevator p5))
          (inside_elevator p6)
          (not (inside_elevator p7))
          (not (inside_elevator p8))
          (not (inside_elevator p9))
          (not (inside_elevator p10))


          (not (satisfied p1))
          (not (satisfied p2))
          (not (satisfied p3))
          (not (satisfied p4))
          (not (satisfied p5))
          (not (satisfied p6))
          (not (satisfied p7))
          (not (satisfied p8))
          (not (satisfied p9))
          (not (satisfied p10))
          
          

          (= (target_pass p1) 38)
          (= (target_pass p2) 49)
          (= (target_pass p3) 17)
          (= (target_pass p4) 28)
          (= (target_pass p5) 41)
          (= (target_pass p6) 13)
          (= (target_pass p7) 5)
          (= (target_pass p8) 29)
          (= (target_pass p9) 18)
          (= (target_pass p10) 23)
          
          
          (= (max_pas_elevador) 4)
          (= (highest_floor) 50)
          (= (num_p_inside) 0)

          (= (num_moves) 0)
   )
   (:goal (and (satisfied p1)
               (satisfied p2)
               (satisfied p3)
               (satisfied p4)
               (satisfied p5)
               (satisfied p6)
               (satisfied p7)
               (satisfied p8)
               (satisfied p9)
               (satisfied p10)
               
          )
   )
   (:metric minimize (num_moves))
)


