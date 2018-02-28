function [Status, NewNode] = ActionMoveLeft(CurrentNode)
[x y] = BlankTileLocation(CurrentNode);
if y == 1
    Status = false;
    NewNode = [];
else
    Status = true;
    NewNode = CurrentNode;
    NewNode(x,y) = NewNode(x,y-1);
    NewNode(x,y-1) = 0; 
end
