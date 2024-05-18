(define (domain elev)
(:requirements :strips :typing :fluents :equality :action-costs :disjunctive-preconditions :conditional-effects)

(:types elevator passager ) 


(:predicates
       (inside_elevator ?p - passager)
       (satisfied ?p - passager)  
       
)

(:functions
       (elevator_at ?e - elevator)    
       (passager_at ?p - passager)
       
       (target_pass ?p - passager)          ;target floor
       (max_pas_elevador)                   ;para comparar
       (highest_floor)                      ;para comparar
       (num_p_inside)                 ;numero de pessoas no elevador
       (num_moves)                           ;para mimizar
       - number
)       

(:action up
    :parameters (?e - elevator )        
    :precondition (and (<= (elevator_at ?e) (highest_floor))    

    )
    :effect (and (increase (elevator_at ?e) 1)
                (increase (num_moves) 1)
                )
  )
 

 
(:action down
    :parameters (?e - elevator )
    :precondition (>= (elevator_at ?e) 0)
    :effect (and (decrease (elevator_at ?e) 1) 
                (increase (num_moves) 1))
    
 )


(:action in
    :parameters (?e - elevator ?p - passager)
    :precondition (and (= (elevator_at ?e) (passager_at ?p))
                  (< (num_p_inside) (max_pas_elevador))
    )
    :effect (and (inside_elevator ?p) 
                (increase (num_p_inside) 1)
    ) 
  )

(:action out
    :parameters (?p - passager ?e - elevator)
    :precondition (and (= (target_pass ?p) (elevator_at ?e))           
                  (inside_elevator ?p)
    
    )
    :effect (and  (not (inside_elevator ?p))
                  (decrease (num_p_inside) 1)
                  (satisfied ?p)
                  
         
  ))

)



