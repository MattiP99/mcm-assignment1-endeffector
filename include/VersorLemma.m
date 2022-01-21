%% VersorLemma function
% inputs:
% - r1: the first rotation matrix
% - r2: the second rotation matrix
% output:
% - c: the Vect3 representing the axis around which r1 should rotate to reach r2, where its modulus is the angle

function c = VersorLemma(r1, r2)
%TODO
    i1 = r1(:,1);
    j1 = r1(:,2);
    k1 = r1(:,3);
    i2 = r2(:,1);
    j2 = r2(:,2);
    k2 = r2(:,3);
    
   
    
    double cosTeta;
    double v_sinTeta;
    double teta;
    double v;
    errorThresh = 10^-4;
  
    cosTeta = cos((dot(i1,i2) + dot(j1,j2) + dot(k1,k2) -1 )/2);
    
    
    if cosTeta >= 1 - errorThresh
        teta = 0;
        v = [0,0,0];
        % it can be whatever 
        c= v*teta; 
    
    elseif abs(cosTeta) < 1- errorThresh
       
        v_sinTeta = norm((cross(i1,i2) + cross(j1,j2) + cross(k1,k2))/2);
        sinTeta = sin(angle(v_sinTeta));
        teta = atan2(sinTeta, cosTeta);
        v = v_sinTeta/abs(v_sinTeta);
        c = v*teta;
    %Almost -1
    else 
        teta = pi;
        sumComponents = (i1+i2)+(j1+j2)+(k1+k2);
        norm_sumComponents = norm(sumComponents);
        v = (sumComponents/norm_sumComponents);
        c = v*teta;
        
   
    end

end

