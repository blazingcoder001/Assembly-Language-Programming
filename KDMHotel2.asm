org 100h

; add your code here
 
.MODEL LARGE
.STACK 1000H
.DATA
MSG1 DB 10,13,10,13,'                 ****Welcome to KDM Hotel****$',10,13 
MSG2 DB 10,13,10,13,'Enter your Requirements: $'

MSG3 DB 10,13,'  **                 1.FOOD                    **$' 
MSG4 DB 10,13,'  **                 2.ROOM                    **$'
MSG5 DB 10,13,'  **                 3.FACILITIES              **$'
MSG6 DB 10,13,'  **                 4.MISCELLANEOUS           **$'
MSG7 DB 10,13,'  **                 5.FUNCTIONS               **$'  
               
               
MSG8 DB 10,13,10,13,'***Choose your specific needs (All prices are in k)***$'
  
;FOOD 
MSG9 DB 10,13,'  **               1.NORTH INDIAN               10/-               **$'
MSG10 DB 10,13,'  **               2.SOUTH INDIAN               10/-               **$'
MSG11 DB 10,13,'  **               3.FRENCH                     10/-               **$'
MSG12 DB 10,13,'  **               4.CHINESE                    10/-               **$'
MSG13 DB 10,13,'  **               5.ORIENTAL                   20/-               **$'
MSG14 DB 10,13,'  **               6.SPECIAL                    20/-               **$'
MSG15 DB 10,13,'  **               7.ITALIAN                    10/-               **$'  



;ROOMS 

MSG25 DB 10,13,'  **               1.SUITE                      90/-               **$' 
MSG26 DB 10,13,'  **               2.PENTHOUSE                  90/-               **$' 
MSG27 DB 10,13,'  **               3.CONFERENCE                 30/-               **$' 
MSG28 DB 10,13,'  **               4.QUEEN                      90/-               **$'
MSG29 DB 10,13,'  **               5.KING                       90/-               **$'
MSG30 DB 10,13,'  **               6.BASIC                      10/-               **$'
MSG31 DB 10,13,'  **               7.STUDIO                     30/-               **$'
MSG32 DB 10,13,'  **               8.APARTMENT                  30/-               **$'
MSG33 DB 10,13,'  **               9.TWIN                       30/-               **$'
 

 
 
;FACILITIES

MSG18 DB 10,13,'  **                1.SPA                     60/-                 **$'
MSG19 DB 10,13,'  **                2.BAR                     80/-                 **$'
MSG20 DB 10,13,'  **                3.BILLIARDS               90/-                 **$' 
MSG21 DB 10,13,'  **                4.SWIMMING                40/-                 **$'
MSG22 DB 10,13,'  **                5.MASSAGE                 50/-                 **$'
MSG23 DB 10,13,'  **                6.TRANSPORT               70/-                 **$'
MSG34 DB 10,13,'  **                7.SAUNA                   60/-                 **$'
MSG35 DB 10,13,'  **                8.SPORTS GROUND           60/-                 **$'
MSG36 DB 10,13,'  **                9.BANQUET                 10/-                 **$'
 
 
;MISCELLANEOUS

MSG41 DB 10,13,'  **        1.HOME THEATRE           8/-      **$'
MSG42 DB 10,13,'  **        2.TOUR OF CITY           80/-     **$'
MSG43 DB 10,13,'  **        3.SALON                  5/-      **$'
MSG44 DB 10,13,'  **        4.LAUNDRY                10/-     **$'


;FUNCTIONS
MSG49 DB 10,13,'  **       1.BIRTHDAY               20/-      **$'
MSG60 DB 10,13,'  **       2.WEDDING ANNIVERSARY    10/-      **$'
MSG61 DB 10,13,'  **       3.FUNDRAISER             9/-       **$'
MSG62 DB 10,13,'  **       4.RECEPTION              9/-       **$'
MSG63 DB 10,13,'  **       5.EXHIBITION             7/-       **$'
MSG64 DB 10,13,'  **       6.BOARD MEETINGS         5/-       **$'



;INVALID
MSG65 DB 10,13,10,13,'***     CHOICE NOT AVAILABLE        ***$'
MSG66 DB 10,13,      '***     Please Run Program Again    ***$'



MSG67 DB 10,13,10,13,'Enter your order: $'
MSG68 DB 10,13,'No. of Bookings: $'
MSG69 DB 10,13,'Total Price: $'


DRINK DB ?
QUANTITY DB ?


MSG70 DB 10,13,10,13,'1.Go Back to Main Menu$'
MSG71 DB 10,13,'2.EXIT$'

;STAR RESIZE


MR1 DB 10,13,'  **                                           **$'
MR2 DB 10,13,'  ***********************************************$'

MR3 DB 10,13,'  **                                           **$'


MR4 DB 10,13,'  **                                                               **$'
MR5 DB 10,13,'  *******************************************************************$'



MR6 DB 10,13,'  **                                          **$'
MR7 DB 10,13,'  **********************************************$'


SEJ DB 10,13,10,13,' $'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
  TOP:
    MOV DS:[3000H],2
    MOV DS:[3004H],2
    MOV DS:[3008H],2
    MOV DS:[3012H],2
    MOV DS:[3016H],2
    MOV DS:[3020H],2
    MOV DS:[3024H],2
    MOV DS:[3028H],2
    MOV DS:[3032H],2
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR2
    MOV AH,9
    INT 21H
       
    LEA DX,MR2
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR3
    MOV AH,9
    INT 21H   
    
    
     
    
    LEA DX,MSG3
    MOV AH,9
    INT 21H
    
    LEA DX,MSG4
    MOV AH,9
    INT 21H
    
    LEA DX,MSG5
    MOV AH,9
    INT 21H
    
    LEA DX,MSG6
    MOV AH,9
    INT 21H
    
    LEA DX,MSG7
    MOV AH,9
    INT 21H
    
    LEA DX,MR1
    MOV AH,9
    INT 21H
    
    LEA DX,MR2
    MOV AH,9
    INT 21H
    
    LEA DX,MR2
    MOV AH,9
    INT 21H
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
     
     
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48
    
    CMP BH,1
    JE FOOD
    
    CMP BH,2
    JE ROOM   
     
    CMP BH,3
    JE FACILITIES 
    
    
    CMP BH,4
    JE MISC
    
    CMP BH,5
    JE FUNCTIONS
    
    
    JMP INVALID
    
   FOOD:
    
    
    LEA DX,MSG8    ;FOOD STARTS
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
   
    LEA DX,MSG9    ;item 1
    MOV AH,9
    INT 21H 
    
    
    LEA DX,MSG10  ;item 2
    MOV AH,9
    INT 21H
    
    LEA DX,MSG11
    MOV AH,9          ;3nd
    INT 21H 
    
    LEA DX,MSG12
    MOV AH,9           ;4rd
    INT 21H
    
    
    LEA DX,MSG13         ;5th
    MOV AH,9
    INT 21H
    
    
    LEA DX,MSG14     ;6th
    MOV AH,9
    INT 21H
            
    
    LEA DX,MSG15
    MOV AH,9           ;7th
    INT 21H
          
    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    
    LEA DX,MSG67              
    MOV AH,9
    INT 21H 
    
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,48 
    
    CMP BL,1
    JE TEN
    
    CMP BL,2
    JE TEN
    
    CMP BL,3
    JE TEN 
    
    CMP BL,4
    JE TEN
    
    CMP BL,5
    JE TWENTY
    
    CMP BL,6
    JE TWENTY
    
    CMP BL,7
    JE TEN
    
    CMP BL,8
    JE TWENTY 
    
    CMP BL,9
    JE SIXTY
     
    JMP INVALID 
      
   FOURTY:
    MOV BL,4
    LEA DX,MSG68              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,MSG69              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK TO MAIN MENU
    
    LEA DX,MSG70
    MOV AH,9
    INT 21H
    
    LEA DX,MSG71
    MOV AH,9
    INT 21H
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H             ;MAIN MENU
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT
             
   FIFTY:
    MOV BL,4
    LEA DX,MSG68              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,MSG69              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H 
    
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
           
           
    ;GO BACK TO MAIN MENU
    
    LEA DX,MSG70
    MOV AH,9
    INT 21H
    
    LEA DX,MSG71
    MOV AH,9
    INT 21H
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48    ;MAIN  MENU
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT
             
   SEVENTY:
    MOV BL,7
    LEA DX,MSG68              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,MSG69              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H 
    
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK TO MAIN MENU 
    
    LEA DX,MSG70
    MOV AH,9
    INT 21H
    
    LEA DX,MSG71
    MOV AH,9
    INT 21H
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H       ;MAIN MENU
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT
         
   EIGHTY:
    MOV BL,8
    LEA DX,MSG68              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,MSG69              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK TO MAIN MENU
    
    LEA DX,MSG70
    MOV AH,9
    INT 21H
    
    LEA DX,MSG71
    MOV AH,9
    INT 21H
    
    LEA DX,MSG2    ;MAIN MENU
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    

    CMP AL,1
    JE TOP
    
    JMP EXIT         
     
    ROOM:
                    ;ROOM
    LEA DX,MSG8
    MOV AH,9
    INT 21H
    
    
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
     
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
     
    LEA DX,MR5
    MOV AH,9
    INT 21H
                  ;STAR BORDER
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
                              
     
    
    LEA DX,MSG25               ;1th
    MOV AH,9
    INT 21H 
    
    LEA DX,MSG26               ;2th
    MOV AH,9
    INT 21H
    
    LEA DX,MSG27               ;3rd
    MOV AH,9
    INT 21H  
    
    LEA DX,MSG28               ;4th
    MOV AH,9
    INT 21H 
    
    LEA DX,MSG29               ;5th
    MOV AH,9
    INT 21H                        
    
    
    LEA DX,MSG30               ;6th
    MOV AH,9
    INT 21H 
    
    LEA DX,MSG31               ;7th
    MOV AH,9
    INT 21H 
    
    LEA DX,MSG32               ;8th
    MOV AH,9
    INT 21H  
    
    LEA DX,MSG33               ;9th
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
                    ;STAR BORDER
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H 
    
    
    LEA DX,MSG67              
    MOV AH,9
    INT 21H 
    
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    SUB BL,48 
    MOV DS:[3048H],BL
    CMP BL,1
    
    JE NINETY
    
    CMP BL,2
    JE NINETY
    
    CMP BL,3
    JE THIRTY
    
    CMP BL,4
    JE NINETY
    
    CMP BL,5
    JE NINETY
    
    CMP BL,6
    JE TEN
    
    CMP BL,7
    JE THIRTY
    
    CMP BL,8
    JE THIRTY 
    
    CMP BL,9
    JE THIRTY
      
    JMP INVALID
    
   TEN:
    MOV BL,1
    LEA DX,MSG68              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,MSG69              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H  
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
     
    ;GO BACK TO MAIN MENU 
    
    LEA DX,MSG70
    MOV AH,9
    INT 21H
    
    LEA DX,MSG71
    MOV AH,9
    INT 21H
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H          
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT
  
   
    
   TWENTY:
   
    MOV BL,2
    LEA DX,MSG68              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,MSG69              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK TO MAIN MENU
    LEA DX,MSG70
    MOV AH,9
    INT 21H
    
    LEA DX,MSG71
    MOV AH,9
    INT 21H
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT 
    
   THIRTY:
   
    MOV BL,3
    LEA DX,MSG68              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,MSG69              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H  
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK TO MAIN MENU
    
    LEA DX,MSG70
    MOV AH,9
    INT 21H
    
    LEA DX,MSG71
    MOV AH,9
    INT 21H
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT
    
    
   SIXTY: 
   
    MOV BL,6
   
    LEA DX,MSG68              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,MSG69              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H 
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK TO MAIN MENU 
    
    LEA DX,MSG70
    MOV AH,9
    INT 21H
    
    LEA DX,MSG71
    MOV AH,9
    INT 21H             ;MAIN MENU
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT
    
      
   NINETY:
    MOV BL,9
    
    LEA DX,MSG68              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
    CMP DS:[3048H],1
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,MSG69              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H 
    
    ;GO BACK TO MAIN MENU
    
    LEA DX,MSG70
    MOV AH,9
    INT 21H
    
    LEA DX,MSG71
    MOV AH,9
    INT 21H
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT 
  
    FACILITIES:
    LEA DX,MSG8
    MOV AH,9         ;FACILITIES STARTS
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H      ;BORDER
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    
    
    LEA DX,MSG18         ;1th
    MOV AH,9
    INT 21H 
    
    LEA DX,MSG19
    MOV AH,9              ;12th
    INT 21H
    
    
    LEA DX,MSG20          ;3th
    MOV AH,9
    INT 21H
    
    LEA DX,MSG21
    MOV AH,9                ;4th
    INT 21H  
    
    
    LEA DX,MSG22              ;5th
    MOV AH,9
    INT 21H 
    
    
    LEA DX,MSG23               ;6th
    MOV AH,9
    INT 21H
    
     
    LEA DX,MSG34               ;10th
    MOV AH,9
    INT 21H
    
    
    LEA DX,MSG35               ;11th
    MOV AH,9
    INT 21H 
    
    LEA DX,MSG36               ;12th
    MOV AH,9
    INT 21H
    
    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5   ;BORDER
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H   
    
    
    
    
    LEA DX,MSG67              
    MOV AH,9
    INT 21H 
    
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,48 
    
    CMP BL,1
    JE SIXTY
    
    CMP BL,2
    JE EIGHTY
    
    CMP BL,3
    JE EIGHTY 
    
    CMP BL,4
    JE FOURTY
    
    CMP BL,5
    JE FIFTY
    
    CMP BL,6
    JE SEVENTY
    
    CMP BL,7
    JE SIXTY
    
    CMP BL,8
    JE SIXTY 
    
    CMP BL,9
    JE SIXTY
    
    
  MISC:
    LEA DX,MSG8
    MOV AH,9         ;MISC STARTS
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR7
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR7
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR6
    MOV AH,9
    INT 21H
    
    
    LEA DX,MSG41               ;1th
    MOV AH,9
    INT 21H 
    
    LEA DX,MSG42               ;2th
    MOV AH,9
    INT 21H                         
    
    LEA DX,MSG43               ;3th
    MOV AH,9
    INT 21H
    
    LEA DX,MSG44               ;4th
    MOV AH,9
    INT 21H
    
    LEA DX,MR6
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR7
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR7
    MOV AH,9
    INT 21H 
    
    LEA DX,MSG67              
    MOV AH,9
    INT 21H 
    
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,48 
    
    CMP BL,1
    JE L1
    
    CMP BL,2
    JE L2
    
    CMP BL,3
    JE L3
    
    CMP BL,4
    JE L3
    
    JMP INVALID
    
    
   L1: 
    MOV BL,8
    JMP L4
   
   L2:
    MOV BL,8
    LEA DX,MSG68              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,MSG69              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK TO MAIN MENU
    
    LEA DX,MSG70
    MOV AH,9
    INT 21H
    
    LEA DX,MSG71
    MOV AH,9
    INT 21H
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT 
    
   
   L3:
   MOV BL,5
   JMP L4 
   
   
   L4:
    LEA DX,MSG68              
    MOV AH,9
    INT 21H 
  
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,MSG69              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    
    ;GO BACK TO MAIN MENU
    
    
    LEA DX,MSG70
    MOV AH,9
    INT 21H
    
    LEA DX,MSG71
    MOV AH,9
    INT 21H
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP

    JMP EXIT
    
    
  
   FUNCTIONS:  
    LEA DX,MSG8
    MOV AH,9            ;FUNCTIONS STARTS
    INT 21H 
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR7
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR7
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR6
    MOV AH,9
    INT 21H
   
   
    LEA DX,MSG49               ;1th
    MOV AH,9
    INT 21H 
    
    LEA DX,MSG60               ;2th
    MOV AH,9
    INT 21H                         
    
    LEA DX,MSG61               ;3th
    MOV AH,9
    INT 21H
    
    LEA DX,MSG62               ;4th
    MOV AH,9
    INT 21H 
    
    LEA DX,MSG63               ;5th
    MOV AH,9
    INT 21H
    
    LEA DX,MSG64               ;6th
    MOV AH,9
    INT 21H
    
    LEA DX,MR6
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR7
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR7
    MOV AH,9
    INT 21H
    
    LEA DX,MSG67              
    MOV AH,9
    INT 21H 
    
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,48 
    
    CMP BL,1
    JE BDAY
    
    CMP BL,2
    JE WEDDING
    
    CMP BL,3
    JE FUNDRAISER
    
    CMP BL,4
    JE RECEPTION
    
    CMP BL,5
    JE EXHIBITION 
    
    CMP BL,6
    JE BOARD 
    
    JMP INVALID
    
   BDAY:
    MOV BL,8
    JMP COMMON
    
   WEDDING:
    MOV BL,6
    JMP COMMON
   
    
   FUNDRAISER:
    MOV BL,9
    JMP COMMON
    
   RECEPTION:
    MOV BL,9
    JMP COMMON
    
    
   EXHIBITION:
    MOV BL,7
    JMP COMMON
    
 
   BOARD:
    MOV BL,5
    JMP COMMON
 
    
   COMMON: 
    LEA DX,MSG68              
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,MSG69              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H 
    
    
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK TO MAIN MENU
    
    LEA DX,MSG70
    MOV AH,9
    INT 21H
    
    LEA DX,MSG71
    MOV AH,9
    INT 21H
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT:
    
    
   INVALID:
   
    LEA DX,MSG65
    MOV AH,9
    INT 21H 
    
    
    LEA DX,MSG66 
    MOV AH,9
    INT 21H 
    
    
    
    JMP EXIT 
    
            
    
     EXIT:
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN


 
ret
