; Answers for 3-4-1

; Exercise 3.38

; a)

; Peter, Paul, Mary:    100 + 10 = 110
;                       110 - 20 = 90
;                       90 - (90/2) = 45

; Peter, Mary, Paul:    100 + 10 = 110
;                       110 - (110/2) = 55
;                       110 - 20 = 35

; Mary, Peter, Paul:    100 - (100/2) = 50
;                       50 + 10 = 60
;                       60 - 20 = 40

; b)

; There's too many different possibilities for me to bother to enumerate them all.

; e.g., if they all simultaneously access the balance:

 ;;               Mary                  Bank         Peter                     Paul
 ;;   |                               +------+
 ;;   |               .---------------| $100 |----------+-------------------------.
 ;;   |               |               +------+          |                         |
 ;;   |               |                                 |                         |
 ;;   |               v                                 v                         v
 ;;   |    +----------------------+         +----------------------+    +----------------------+
 ;;   |    | Access balance: $100 |         | Access balance: $100 |    | Access balance: $100 |
 ;;   |    +----------------------+         +----------------------+    +----------------------+
 ;;   |               |                                 |                         |
 ;;   |               v                                 v                         v
 ;;   |    +-----------------------+        +-----------------------+   +----------------------+
 ;;   |    | new value: 100-50=50  |        | new value: 100+10=110 |   | new value: 100-20=80 |
 ;;   |    +-----------------------+        +-----------------------+   +----------------------+
 ;;   |               |                                 |                         |
 ;;   |               v                                 |                         |
 ;;   |    +-----------------------+                    |                         |
 ;;   |    | set! balance to 50    |                    |                         |
 ;;   |    +-----------------------+                    |                         |
 ;;   |               |              +------+           |                         |
 ;;   |               `------------->| $50  |           |                         |
 ;;   |                              +------+           |                         |
 ;;   |                                                 v                         |
 ;;   |                                     +----------------------+              |
 ;;   |                                     | set! balance to 110  |              |
 ;;   |                                     +----------------------+              |
 ;;   |                             +------+            |                         v
 ;;   |                             | $110 |<-----------'              +--------------------+
 ;;   |                             +------+                           | set! balance to 80 |
 ;;   |                                                                +--------------------+
 ;;   |                             +------+                                      |
 ;;   |                             | $80  |<-------------------------------------'
 ;;   |                             +------+
 ;;   |
 ;;   |
 ;;   |
 ;;   v
 ;; time


; The set! operations could occur in any order here, so the balance could end
; up as $50, $110, or $80.

; There would be more options for if any of the accesses occurred after a set!, etc.
