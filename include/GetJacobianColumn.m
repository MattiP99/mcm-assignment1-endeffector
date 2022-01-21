%% Inverse Kinematic Function
% Function computing the end effector jacobian column for the input
% parameters.
%
% Inputs
% - biTei : transformation matrix of link <i> w.r.t. link <i-1> for the input qi.
% - bTe: tranformation matrix from the base to the end effector
% - jointType: 0 if the joint is revolute, 1 if the joint is prismatic (is
%   referred to the joint corresponding to bTe).
%
% Output
% - h: Jacobian column h(1:3) angular part, h(4:6) linear

function [h] = GetJacobianColumn(biTei, bTe, jointType)
    %% TODO
    %ki = zeros(3,1);
    h = zeros(6,1);
    %rei = zeros(3,1);
    nullVector = zeros(3,1);
    ri= biTei(1:3,4);
    rei = bTe(1:3,4);


    r = rei - ri;
    ki = biTei(1:3,3);
     
    
    if jointType == 0
            h(1:3,1) = ki;
            h(4:6,1) = cross(ki,r);
        
    elseif jointType == 1
        
            h(1:3,1) = nullVector;
            h(4:6,1) = ki;
    elseif jointType == 2

            h(1:3,1) = nullVector;
            h(4:6,1) = nullVector;

            

    end

  end

