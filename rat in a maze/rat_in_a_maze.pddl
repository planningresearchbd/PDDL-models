(define (problem Rat-in-an-8x8-labyrinth)
    (:domain maze-solver)
    (:objects
        n1 n2 n3 n4 n5 n6 n7 n8     ;row column objects
    )
    (:INIT                                       ;  >>S(2,1)---->G(6,8)
        (at n2 n1)                               ;  [rows]
        (path n2 n1 n3 n1) (path n3 n1 n4 n1)    ;    8 # # _ _ # # # #
        (path n2 n1 n2 n2) (path n2 n2 n2 n3)    ;    7 # # _ # # # _ #    
        (path n2 n4 n3 n4) (path n3 n4 n4 n4)    ;    6 # # _ # _ _ _ G
        (path n4 n4 n4 n3) (path n4 n6 n4 n7)    ;    5 # # _ # _ # # #
        (path n4 n3 n5 n3) (path n5 n3 n6 n3)    ;    4 _ # _ _ _ _ _ #  
        (path n4 n4 n4 n5) (path n4 n5 n4 n6)    ;    3 _ # # _ # # _ _  
        (path n4 n7 n3 n7) (path n3 n7 n3 n8)    ;    2 S _ _ _ _ _ # #
        (path n4 n5 n5 n5) (path n5 n5 n6 n5)    ;    1 # # # # # # # #
        (path n6 n5 n6 n6) (path n6 n6 n6 n7)    ;      1 2 3 4 5 6 7 8 [cols]
        (path n6 n7 n7 n7) (path n6 n7 n6 n8)
        (path n2 n3 n2 n4) (path n2 n4 n2 n5)
        (path n2 n5 n2 n6) (path n6 n3 n7 n3)
        (path n7 n3 n8 n3) (path n8 n3 n8 n4)
    )
(:goal (AND 
        (at n6 n8)
    )
)
)








 
