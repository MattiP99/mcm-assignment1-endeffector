%% GetBasicVectorWrtBase function 
% inputs :
% - biTei: vector of matrices containing the transformation matrices of link <i> w.r.t. link <i-1>. The
% size of biTri is equal to (4,4,numberOfLinks)
% - linkNumber: number of link for which computing the basic vector from the
% base to the joint
% output:
% r : basic vector from the base to the input joint 

function [r]=GetBasicVectorWrtBase(biTei, linkNumber)
%TODO
    r = biTei(1:3,4,linkNumber);
end