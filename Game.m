%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%   T H E   G A M E   O F   L I F E   %%%
%%%   Necessary function                %%%
%%%   - evolve                          %%%
%%%   Additional functions              %%%
%%%   - sprout                          %%%
%%%   - kill                            %%%
%%%                                     %%%
%%%   by M. G. Poirot  , feb 11 2014    %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
set(0,'DefaultFigureWindowStyle','docked') 
clear all;close all;clc;

global n g m 

%% Set matrix size
n = 100;
t = 0.1;

%% Interface
disp('    T H E   G A M E   O F   L I F E');
disp(horzcat('Matrix size          ',int2str(n)));
disp(horzcat('Generation interval  ',num2str(t),'s'));
disp('Commands:')
disp('    "start(game)"    start the game')
disp('    "stop(game)"     stop the game')
disp('    "evolve"         evolve one generation')
disp('    "kill"           kill many by overcrowding')
disp('    "sprout"         generate life from emptness')
disp(' ')

%% Plot
g = 0;
m = round(rand(n,n)-0.3);

imagesc(m);
colormap(flipud(gray));
title(['generation ' num2str(g)])
axis square

%% Timer
game = timer;
game.executionMode = 'fixedRate';
game.period = t;
game.TimerFcn = @(myTimerObj, thisEvent)evolve();