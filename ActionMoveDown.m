function [Status, NewNode] = ActionMoveDown(CurrentNode)
[x y] = BlankTileLocation(CurrentNode);
if x == 3
    Status = false;
    NewNode = [];
else
    Status = true;
    NewNode = CurrentNode;
    NewNode(x,y) = NewNode(x+1,y);
    NewNode(x+1,y) = 0; 
end