% Midi
clear all;
close all;
clc;
midi = readmidi('test.midi');
Notas = midiInfo( midi, 0 );
freq = [ midi2freq( Notas(:,3) ) Notas(:,5:6) ];