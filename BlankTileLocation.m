function [X0 Y0] = BlankTileLocation(CurrentNode)
[row column] = find(CurrentNode==0);
X0 = row;
Y0 = column;
end


    
    

