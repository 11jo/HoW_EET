BEGIN ~DJEMELD~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @23048
  IF ~~ THEN REPLY @1428 GOTO 1
  IF ~~ THEN REPLY @9817 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @23052
  IF ~~ THEN REPLY @21662 GOTO 2
  IF ~~ THEN REPLY @288 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @23061
  IF ~~ THEN REPLY @288 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 3
  SAY @23071
  IF ~~ THEN REPLY @21662 GOTO 2
  IF ~~ THEN REPLY @607 EXIT
END
