BEGIN ~DPOLARBE~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @21504
  IF ~~ THEN REPLY @21505 GOTO 1
  IF ~~ THEN REPLY @1428 GOTO 2
  IF ~~ THEN REPLY @21507 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @21508
  IF ~~ THEN REPLY @1428 GOTO 2
  IF ~~ THEN REPLY @21509 GOTO 3
  IF ~~ THEN REPLY @21510 GOTO 4
  IF ~~ THEN REPLY @21511 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @21512
  IF ~~ THEN REPLY @21513 GOTO 3
  IF ~~ THEN REPLY @21510 GOTO 4
  IF ~~ THEN REPLY @21515 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @21516
  IF ~~ THEN REPLY @21517 GOTO 5
  IF ~~ THEN REPLY @21518 GOTO 4
  IF ~~ THEN REPLY @21519 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @21520
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @21521
  IF ~~ THEN REPLY @21522 GOTO 4
  IF ~~ THEN REPLY @21384 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 6
  SAY @21524
  IF ~~ THEN DO ~Enemy()~ EXIT
END
