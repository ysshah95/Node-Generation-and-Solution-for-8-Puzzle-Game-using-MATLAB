function [Status, NewNode] = ActionMoveRight(CurrentNode)
[x y] = BlankTileLocation(CurrentNode);
if y == 3
    Status = false;
    NewNode = [];
else
    Status = true;
    NewNode = CurrentNode;
    NewNode(x,y) = NewNode(x,y+1);
    NewNode(x,y+1) = 0; 
end
