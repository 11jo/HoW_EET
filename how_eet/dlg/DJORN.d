BEGIN ~DJORN~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @23658
  IF ~~ THEN REPLY @23663 GOTO 1
  IF ~~ THEN REPLY @23665 DO ~StartStore("DJorn",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @23667 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @23659
  IF ~~ THEN REPLY @23668 GOTO 2
  IF ~~ THEN REPLY @24069 GOTO 3
  IF ~~ THEN REPLY @23670 DO ~StartStore("DJorn",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @23667 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @23660
  IF ~~ THEN REPLY @23661 GOTO 4
  IF ~~ THEN REPLY @24069 GOTO 3
  IF ~~ THEN REPLY @23670 DO ~StartStore("DJorn",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @23667 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @23672
  IF ~~ THEN REPLY @23670 DO ~StartStore("DJorn",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @23667 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @23673
  IF ~~ THEN REPLY @24069 GOTO 3
  IF ~~ THEN REPLY @23670 DO ~StartStore("DJorn",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @23667 EXIT
END

IF WEIGHT #2
~NumTimesTalkedToGT(0)~ THEN BEGIN 5
  SAY @23679
  IF ~~ THEN REPLY @23680 GOTO 1
  IF ~~ THEN REPLY @23670 DO ~StartStore("DJorn",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @23667 EXIT
END

IF WEIGHT #0
~Global("ID9600_Visited","GLOBAL",1)~ THEN BEGIN 6
  SAY @25799
  IF ~~ THEN REPLY @23670 DO ~StartStore("DJorn",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @25785 GOTO 7
  IF ~~ THEN REPLY @23667 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @25802
  IF ~~ THEN REPLY @23670 DO ~StartStore("DJorn",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @23667 EXIT
END
