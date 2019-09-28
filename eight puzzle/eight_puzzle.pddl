(define (problem eight-puzzle)
    (:domain tiles)
    (:objects 
        T1 T2 T3 T4 T5 T6 T7 T8 T9
        N1 N2 N3 N4 N5 N6 N7 N8 E
    )
    (:init
        (is-empty T4)                           ; Initial State:
        (at N1 T1)(at N8 T2)(at N2 T3)          ;    1 | 8 | 2
                                                ;   -----------
        (at E T4)(at N4 T5)(at N3 T6)           ;    _ | 4 | 3
                                                ;   -----------
        (at N7 T7)(at N6 T8)(at N5 T9)          ;    7 | 6 | 5

        (is-valid T1 T2)(is-valid T1 T4)
        (is-valid T2 T3)(is-valid T2 T5)
        (is-valid T3 T6)
        (is-valid T4 T5)(is-valid T4 T7)
        (is-valid T5 T6)(is-valid T5 T8)
        (is-valid T6 T9)
        (is-valid T7 T8)
        (is-valid T8 T9)
    )
    (:goal
        (and                                    ; Goal State:
            (at N1 T1)(at N2 T2)(at N3 T3)      ;    1 | 2 | 3
                                                ;   -----------
            (at N4 T4)(at N5 T5)(at N6 T6)      ;    4 | 5 | 6
                                                ;   -----------
            (at N7 T7)(at N8 T8)(at E T9)       ;    7 | 8 | 9
        )
    )
)