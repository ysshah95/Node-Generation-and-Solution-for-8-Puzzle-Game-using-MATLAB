%==========================================================================

% MATLAB code for Project 1 (Planning Class)
% Written by Yash Shah (115710498)
% email ID: ysshah95@umd.edu

% The give code generated a tree for 8-Puzzle game nodes. The node on the
% top is the goal node.

%==========================================================================
clc
clear all

% Initialize the variables. 
Nodes = [];
NodesInfo = [];

% Initialize the top most node of the tree.
Nodes(:,:,1) = [1 2 3; 4 5 6; 7 8 0];
% NodesInfo = [Node#, ParentNode#, CostToCome, Number based on movement of the blank slide from Parent Node]
% The last column is used for the search algorithm. 
NodesInfo(:,:,1) = [1, 0, 0, 0];

% Initialize the child and parent node number variables.
i = 2; % Child node number variable
j = 1; % Parent Node Number Variable

% Total 9!/2 (i.e. 181440) nodes will be present in this tree, because 
% other 9!/2 nodes are not solvable. 

while i <= 181440
    % Initialize the parent node in each loop
    CurrentNodes = Nodes(:,:,j);
    [StatusL, NewNodeL] = ActionMoveLeft(CurrentNodes);
    if StatusL == true
        % Search if the NewNode generated is present in Nodes array or not. 
        if any(all(all(bsxfun(@eq,Nodes,NewNodeL)))) == false
            % Add the NewNode to the Nodes array.
            Nodes(:,:,i) = NewNodeL;
            % Since this node is created by left movement of blank tile,
            % the 4th column of NodesInfo is equal to 4
            NodesInfo(:,:,i) = [i,j,0,4];
            % Increament the child node variable
            i = i+1;
        end
    end
    [StatusR, NewNodeR] = ActionMoveRight(CurrentNodes);
    if StatusR == true
        if any(all(all(bsxfun(@eq,Nodes,NewNodeR)))) == false
            Nodes(:,:,i) = NewNodeR;
            % Since this node is created by right movement of blank tile,
            % the 4th column of NodesInfo is equal to 6
            NodesInfo(:,:,i) = [i,j,0,6];
            i = i+1;
        end
    end
    [StatusU, NewNodeU] = ActionMoveUp(CurrentNodes);
    if StatusU == true
        if any(all(all(bsxfun(@eq,Nodes,NewNodeU)))) == false
            Nodes(:,:,i) = NewNodeU;
            % Since this node is created by up movement of blank tile,
            % the 4th column of NodesInfo is equal to 2
            NodesInfo(:,:,i) = [i,j,0,2];
            i = i+1;
        end
    end
    [StatusD, NewNodeD] = ActionMoveDown(CurrentNodes);
    if StatusD == true
        if any(all(all(bsxfun(@eq,Nodes,NewNodeD)))) == false
            Nodes(:,:,i) = NewNodeD;
            % Since this node is created by down movement of blank tile,
            % the 4th column of NodesInfo is equal to 8
            NodesInfo(:,:,i) = [i,j,0,8];
            i = i+1;
        end
    end
    % Increament parent Node variable
    j=j+1;
    i
end

% save the Nodes and NodesInfo to the directory folder to a NodeSet.mat file 
% save('NodeSet.mat','Nodes','NodesInfo')   
NodeSet.Nodes = Nodes;
NodeSet.NodeInfo = NodesInfo; 
