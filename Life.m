%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%   G A M E   O F   L I F E           %%%
%%%                                     %%%
%%%   by M. G. Poirot  , feb 11 2014    %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
set(0,'DefaultFigureWindowStyle','docked') 
clear all 
close all
clc

disp('       G A M E   O F   L I F E');
disp('"evolve"          evolve one generation')
disp('"start(game)"     start the game')
disp('"stop(game)"      stop the game')
disp('"kill"            kill many by overcrowding')
disp('"sprout"          generate life from emptness')
disp('"Life" or "Game"  (re)start Game Of Life ')

global g m n
n = 100;
g = 0;
m = round(rand(n)-0.4);

imagesc(m);
colormap(flipud(gray));
title(['generation ' num2str(g)])
axis square

game = timer;
game.executionMode = 'fixedRate';
game.period = 0.1;
game.TimerFcn = @(myTimerObj, thisEvent)evolve();