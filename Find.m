%==========================================================================

% MATLAB code for Project 1 (Planning Class)
% Written by Yash Shah (115710498)
% email ID: ysshah95@umd.edu

% The given code finds the solution of the given 8-Puzzle. 

%==========================================================================
clc
clear all

% Load the Nodes and NodesInfo variables to the workspace
load('NodeSet.mat','Nodes','NodesInfo');

% Randomly generated initial Node
InitialNode = reshape(randperm(9),3,3);
[x, y] = find(InitialNode==9);
InitialNode(x,y)  = 0;

% Initial Node of your choice to find the solution of 
% InitialNode = [0 8 4;1 6 5;3 2 7];

% Find the node number of the intial node from Nodes array
k = find(all(all(bsxfun(@eq,Nodes,InitialNode))));
count = 0;




% If the Initial node is randomly generated, it also generates the
% unsolvable configurations. In such conditions display the message given
% below. 
if isempty(k)
    disp('The given configuration is not solvable.');
else
    disp('Follow these Steps to solve the given puzzle.');
end

% Create a while loop until goal node is reached. Node number of GoalNode 
% is 1. 
while k ~= 1 
    %NodesInfo(:,:,k)
    % Find the parent node number of the given node.
    info = NodesInfo((4*(k-1))+2);
    % Find which move was used to create this node. 
    move = NodesInfo((4*(k-1))+4);
    count = count+1;
    % Display moves based on moves from its parent node. 
    % That  is if blank tile moved left(4) from its parent node, then to go
    % from that node to its parent node we have to move right. 
    if move == 4
        disp('Move Right');
    end
    if move == 2
        disp('Move Down');
    end
    if move == 8
        disp('Move Up');
    end
    if move == 6
        disp('Move Left');
    end
    % change the parent node number. 
    k = info;
end
% Display in how many moves it will solve the given puzzle. 
count