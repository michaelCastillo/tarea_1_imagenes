function [theshholdingImage] = exThreshold(Dx,e,y)
[n,m] = size(Dx);
theshholdingImage = zeros(n,m);
    for i = 1:n
        for j = 1:m
            if Dx(i,j) < e
                theshholdingImage(i,j) = 1;
            else
                theshholdingImage(i,j) = 1 +tanh(y*Dx(i,j));
            end
            
        end
    end
end

