BEGIN ~DMEBD~

IF ~NumTimesTalkedTo(0)
    Global("Press_Preview","GLOBAL",0)~ THEN BEGIN 0
  SAY @21336
  IF ~~ THEN REPLY @1428 DO ~SetGlobal("Know_Soul","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @21337 DO ~SetGlobal("Know_Soul","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @21338 DO ~SetGlobal("Know_Soul","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @21339
  IF ~~ THEN REPLY @21337 GOTO 2
  IF ~~ THEN REPLY @21341 GOTO 4
  IF ~~ THEN REPLY @21342 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @21343
  IF ~~ THEN DO ~SetGlobal("Know_Soul","GLOBAL",1)~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @21344
  IF ~~ THEN REPLY @21341 DO ~AddJournalEntry(@34114,QUEST)
                              Enemy()~ GOTO 5
  IF ~~ THEN REPLY @21345 DO ~AddJournalEntry(@34114,QUEST)
                              Enemy()~ GOTO 5
  IF ~~ THEN REPLY @21346 DO ~AddJournalEntry(@34114,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @21347
  IF ~~ THEN REPLY @21348 GOTO 6
  IF ~~ THEN REPLY @21349 DO ~Enemy()~ GOTO 5
  IF ~~ THEN REPLY @21350 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @21351
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @21352
  IF ~~ THEN REPLY @21353 DO ~Enemy()~ GOTO 5
  IF ~~ THEN REPLY @21349 DO ~Enemy()~ GOTO 5
  IF ~~ THEN REPLY @21355 EXIT
END

IF ~NumTimesTalkedToGT(0)
    Global("Press_Preview","GLOBAL",0)~ THEN BEGIN 7
  SAY @21356
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~Global("Press_Preview","GLOBAL",1)~ THEN BEGIN 8
  SAY @26532
  IF ~~ THEN REPLY @26533 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @26534
  IF ~~ THEN REPLY @26535 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @26536
  IF ~~ THEN REPLY @26537 EXIT
END
