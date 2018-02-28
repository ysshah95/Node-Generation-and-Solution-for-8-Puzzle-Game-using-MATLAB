function [Status, NewNode] = ActionMoveUp(CurrentNode)
[x y] = BlankTileLocation(CurrentNode);
if x == 1
    Status = false;
    NewNode = [];
else
    Status = true;
    NewNode = CurrentNode;
    NewNode(x,y) = NewNode(x-1,y);
    NewNode(x-1,y) = 0; 
end