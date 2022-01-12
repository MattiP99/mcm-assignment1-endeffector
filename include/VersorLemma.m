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
    double sinTeta;
    double teta;
    errorThresh = 10^-4;
  
    cosTeta = cos((dot(i1,i2) + dot(j1,j2) + dot(k1,k2) -1 )/2);
    sinTeta = norm(((i1*i2) + (j1*j2) + (k1*k2))/2);
    
    
    if cosTeta >= 1 - errorThresh
        teta = 2*pi;
        % it can be whatever 
        c= [1;1;1]; 
    
    elseif abs(cosTeta) < 1- errorThresh
        teta = atan2(sinTeta,cosTeta);
        c = ((i1*i2) + (j1*j2) + (k1*k2)/2);
     
    %Almost -1
    else 
        teta = 0;
        sumComponents = (i1+i2)+(j1+j2)+(k1+k2);
        norm_sumComponents = norm(sumComponents);
        c = (sumComponents/norm_sumComponents);
        
   
    end

end

