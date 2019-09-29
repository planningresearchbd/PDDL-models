(define (domain maze-solver)
  (:requirements :strips)
  (:predicates 
    (at ?row ?col)
    (path ?x1 ?y1 ?x2 ?y2)
    
  )

  (:action blindly-run
	     :parameters (?x1 ?y1 ?x2 ?y2)
	     :precondition (and(at ?x1 ?y1)(path ?x1 ?y1 ?x2 ?y2))
	     :effect
	     (and 
	        (not (at ?x1 ?y1))
	        (at ?x2 ?y2)
	     )
  )
)
