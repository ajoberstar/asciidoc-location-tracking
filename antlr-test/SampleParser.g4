parser grammar SampleParser;
options { tokenVocab=SampleLexer; }

document : empty_line* heading_line? empty_line* text_line*;
empty_line : EOL ;
text : (WORD SPACE*)+ ;
text_line : text EOL ;
title : text ;
heading_line : HASH+ SPACE title EOL ;
