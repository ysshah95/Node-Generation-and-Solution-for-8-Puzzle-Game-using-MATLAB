# Node-Generation-and-Solution-for-8-Puzzle-Game-using-MATLAB

Author:
Yash Shah

About the Project:
I have implemented nodes tree generation algorithm for 8-Puzzle game and search algorithm for finding a solution for any given state of the game. 

Running The Program:

1) Open MATLAB and open [main.m] file in MATLAB. 
2) Change the working directory to folder that contains [main.m] file.
3) Run the program
4) This program generates a node tree that contains all the possible nodes of this 8-Puzzle game starting from the goal node.
5) The variables Nodes and NodesInfo are saved in NodeSet.mat file. 
6) The program takes around 35-40 mins to generates all the possible nodes. The command window will continuously show how many nodes have been generated.

To find the solution for this puzzle follow these steps.

1) Open [Find.m] file in MATLAB. 
2) Change the working directory to folder that contains [Find.m] file.
3) Run the program.
4) This program loads the variables Nodes and NodesInfo to the workspace. And it randomly generates the state of the game that is to be solved. 
5) After running the program, command window shows steps to follow to solve the given game and the number of steps to reach the goal node.
 

Contact: 
For more details and help contact (ysshah95@umd.edu).
