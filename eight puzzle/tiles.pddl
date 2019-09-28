(define (domain tiles)
    (:requirements :strips :negative-preconditions)
    (:predicates
        (is-valid ?t1 ?t2)
        (at ?x ?t)
        (is-empty ?t)
    )
    
    (:action swap
        :parameters (?x ?t1 ?y ?t2)
        :precondition (and 
            (is-empty ?t1)
            (at ?x ?t1)
            (at ?y ?t2)
            (or (is-valid ?t1 ?t2)(is-valid ?t2 ?t1))
            )
        :effect (and
            (not (is-empty ?t1))
            (is-empty ?t2)
            (not (at ?x ?t1))
            (at ?x ?t2)
            (not (at ?y ?t2))
            (at ?y ?t1)
        )
    )
)