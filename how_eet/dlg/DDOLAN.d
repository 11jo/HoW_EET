BEGIN ~DDOLAN~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @23162
  IF ~~ THEN REPLY @1428 GOTO 1
  IF ~~ THEN REPLY @23164 GOTO 2
  IF ~~ THEN REPLY @288 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @23178
  IF ~~ THEN REPLY @23180 GOTO 2
  IF ~~ THEN REPLY @23183 GOTO 3
  IF ~~ THEN REPLY @23186 GOTO 4
  IF ~~ THEN REPLY @23187 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @23189
  IF ~~ THEN REPLY @23183 GOTO 3
  IF ~~ THEN REPLY @23186 GOTO 4
  IF ~~ THEN REPLY @23187 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @23193
  IF ~~ THEN REPLY @23186 GOTO 4
  IF ~~ THEN REPLY @23187 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @23196
  IF ~~ THEN REPLY @23187 EXIT
END

IF WEIGHT #2
~NumTimesTalkedToGT(0)~ THEN BEGIN 5
  SAY @23198
  IF ~~ THEN REPLY @23199 GOTO 1
  IF ~~ THEN REPLY @21777 GOTO 2
  IF ~~ THEN REPLY @288 EXIT
END

IF WEIGHT #0
~Global("Body_Count","GLOBAL",1)~ THEN BEGIN 6
  SAY @23202
  IF ~~ THEN REPLY @540 DO ~AddJournalEntry(@23559,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @23204 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @23205
  IF ~~ THEN REPLY @288 DO ~SetGlobal("Know_Digby_Dead","GLOBAL",1)~ EXIT
END
