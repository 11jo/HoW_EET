BEGIN ~DALPHEUS~

IF ~Global("Kieran_Protected","GLOBAL",1)~ THEN BEGIN 0
  SAY @26475
  IF ~~ THEN EXTERN ~DVAARGLN~ 6
END

IF ~Global("Kieran_Protected","GLOBAL",0)~ THEN BEGIN 1
  SAY @26476
  IF ~~ THEN EXTERN ~DVAARGLN~ 8
END

IF ~~ THEN BEGIN 2
  SAY @26477
  IF ~~ THEN DO ~Enemy()~ EXTERN ~DVAARGLN~ 10
END
