BEGIN ~DYOUNGNE~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @21699
  IF ~~ THEN REPLY @21700 DO ~SetGlobal("Ned_Talky","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @21662 DO ~SetGlobal("Ned_Talky","GLOBAL",1)~ GOTO 2
  IF ~!Global("Drunk_Quest","GLOBAL",0)~ THEN REPLY @21702 DO ~SetGlobal("Ned_Talky","GLOBAL",1)~ GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @21703
  IF ~!Global("Hjollder_Banished","GLOBAL",1)~ THEN REPLY @26838 GOTO 4
  IF ~Global("Hjollder_Banished","GLOBAL",1)~ THEN REPLY @26839 GOTO 5
  IF ~~ THEN REPLY @21662 GOTO 2
  IF ~!Global("Drunk_Quest","GLOBAL",0)~ THEN REPLY @21707 GOTO 3
  IF ~~ THEN REPLY @21708 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @21709
  IF ~~ THEN REPLY @21710 GOTO 6
  IF ~~ THEN REPLY @265 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @21712
  IF ~~ THEN REPLY @21713 GOTO 7
  IF ~~ THEN REPLY @21714 GOTO 8
  IF ~~ THEN REPLY @21715 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @21716
  IF ~~ THEN REPLY @21662 GOTO 2
  IF ~~ THEN REPLY @21717 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @21718
  IF ~~ THEN REPLY @21719 GOTO 9
  IF ~~ THEN REPLY @21662 GOTO 2
  IF ~~ THEN REPLY @21721 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @21722
  IF ~~ THEN REPLY @283 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @21723
  IF ~~ THEN REPLY @21662 GOTO 2
  IF ~~ THEN REPLY @21708 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @21725
  IF ~~ THEN REPLY @21662 GOTO 2
  IF ~~ THEN REPLY @21708 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @21727
  IF ~~ THEN REPLY @21728 GOTO 10
  IF ~~ THEN REPLY @21729 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @21730
  IF ~~ THEN REPLY @21731 DO ~SetGlobal("In_9300","GLOBAL",1)
                              StartCutSceneMode()
                              StartCutScene("lwNedTvl")~ EXIT
  IF ~~ THEN REPLY @21732 EXIT
END

IF WEIGHT #0
~Global("Ned_Talky","GLOBAL",1)~ THEN BEGIN 11
  SAY @21733
  IF ~~ THEN REPLY @21662 GOTO 2
  IF ~Global("Hjollder_Banished","GLOBAL",1)
      !Global("In_9300","GLOBAL",1)
      !Global("ID9300_Visited","GLOBAL",1)~ THEN REPLY @21734 GOTO 9
  IF ~Global("Hjollder_Banished","GLOBAL",1)
      !Global("In_9300","GLOBAL",1)
      Global("ID9300_Visited","GLOBAL",1)~ THEN REPLY @21734 GOTO 10
  IF ~Global("Press_Preview","GLOBAL",0)
      Global("In_9300","GLOBAL",1)~ THEN REPLY @21736 GOTO 12
  IF ~!Global("Drunk_Quest","GLOBAL",0)~ THEN REPLY @21702 GOTO 3
  IF ~~ THEN REPLY @21738 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @21739
  IF ~~ THEN REPLY @21740 DO ~SetGlobal("In_9300","GLOBAL",0)
                              StartCutSceneMode()
                              StartCutScene("biNedTvl")~ EXIT
  IF ~~ THEN REPLY @19527 EXIT
END
