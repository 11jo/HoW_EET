BEGIN ~DSKALD~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @21357
  IF ~~ THEN REPLY @1428 GOTO 1
  IF ~~ THEN REPLY @21358 GOTO 2
  IF ~Global("Know_Edion","GLOBAL",1)~ THEN REPLY @21359 GOTO 3
  IF ~~ THEN REPLY @21360 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @21361
  IF ~~ THEN REPLY @21362 GOTO 2
  IF ~GlobalLT("Hjollder_Quest","GLOBAL",8)~ THEN REPLY @21363 GOTO 4
  IF ~~ THEN REPLY @21364 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @21365
  IF ~GlobalLT("Hjollder_Quest","GLOBAL",8)~ THEN REPLY @21366 DO ~SetGlobal("Know_Soul","GLOBAL",1)
                                                                   AddJournalEntry(@34118,QUEST)~ GOTO 4
  IF ~~ THEN REPLY @21367 DO ~SetGlobal("Know_Soul","GLOBAL",1)
                              AddJournalEntry(@34118,QUEST)~ GOTO 5
  IF ~~ THEN REPLY @21369 DO ~SetGlobal("Know_Soul","GLOBAL",1)
                              AddJournalEntry(@34118,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @21370
  IF ~~ THEN REPLY @1428 GOTO 1
  IF ~GlobalLT("Hjollder_Quest","GLOBAL",8)~ THEN REPLY @21366 GOTO 4
  IF ~~ THEN REPLY @21372 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @21373
  IF ~~ THEN REPLY @21374 GOTO 6
  IF ~~ THEN REPLY @21375 GOTO 6
  IF ~~ THEN REPLY @21376 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @21377
  IF ~~ THEN REPLY @21378 GOTO 6
  IF ~~ THEN REPLY @21380 GOTO 6
  IF ~~ THEN REPLY @21381 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @21382
  IF ~~ THEN REPLY @21383 GOTO 7
  IF ~~ THEN REPLY @21384 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @21385
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 8
  SAY @21388
  IF ~~ THEN REPLY @21389 GOTO 7
  IF ~~ THEN REPLY @21390 GOTO 7
  IF ~~ THEN REPLY @21391 EXIT
END

IF ~NumTimesTalkedToGT(1)~ THEN BEGIN 9
  SAY @21392
  IF ~~ THEN DO ~Enemy()~ EXIT
END
