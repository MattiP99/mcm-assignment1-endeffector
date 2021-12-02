%% DirectGeometry Function 
% inputs: 
% - q : current links position;
% - biTri: transformation matrix of link <i> w.r.t. link <i-1> for qi=0; 
% - jointType: 0 for revolute, 1 for prismatic;
% output:
% biTei : transformation matrix of link <i> w.r.t. link <i-1> for the input qi.

function biTei = DirectGeometry(qi, biTri, linkType)
%TODO
    % In this way I will pass the position of each center 
   P = [0,0,0];
   Rz = [cos(qi),-sin(qi),0;
             sin(qi), cos(qi),0;
               0,      0,     1];
   Rx = [1,   0,         0;
         0, cos(qi),  -sin(qi);
         0, sin(qi),  cos(qi)];

   Ry = [cos(qi),  0,   sin(qi) ;
             0,      1,     0
             -sin(qi), 0, cos(qi)];
   if linkType == 0
       R = Rz;
   elseif linkType == 1
        R = Rx*Ry*Rz;
              
   end
    biTei = biTri * [R,transpose(P);
                      0,0,0,1];
end