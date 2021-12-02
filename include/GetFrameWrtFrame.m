%% GetFrameWrtFrame function 
% inputs: 
% - linkNumber_i : number of ith link 
% - linkNumber_j: number of jth link 
% - biTei: vector of matrices containing the transformation matrices of link <i> w.r.t. link <i-1> for the current q.
% output:
% iTj : transformationMatrix from link i and link j for the configuration
% described in biTei.

function [iTj]=GetFrameWrtFrame(linkNumber_i, linkNumber_j,biTei)
%TODO
    T_i = GetTransormationWrtBase(biTei(4,4,linkNumber_i));
    T_j = GetTransormationWrtBase(biTei(4,4,linkNumber_j));
   for i=1:1:7
       iTj = inv(T_i)*T_j;
   end
   
   
end