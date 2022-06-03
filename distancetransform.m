A =imread('input2.png');


B = A;


%finding borderline
for i = 1:length(A)
    for j = 1:length(A)
        if B(i,j) ~= 255
            if (B(i,j+1)== 255 || B(i+1,j)== 255 || B(i-1,j)== 255 || B(i,j-1)== 255)
                A(i,j,1) = 1;
                A(i,j,2) = 1;
                A(i,j,3) = 1;
            end
        end
    end
end
k=2;
while k <= 225
    for i = 3:length(A)-3
        for j = 3:length(A)-3
            if (A(i,j)> k-1||A(i,j)==0 )&& A(i,j) ~= 255
                if A(i,j+1)== k-1 || A(i+1,j)== k-1 || A(i-1,j)== k-1 || A(i,j-1)== k-1
                    A(i,j,1) = k;
                    A(i,j,2) = k;
                    A(i,j,3) = k;
                end
            end
        end
    end
    k=k+1;
end
C=A(:,:,1);
D=A(:,:,2);
E=A(:,:,3);

A = 0.2989 *A(:,:,1) + 0.5870 *A(:,:,2) + 0.1140 * A(:,:,3);
normalizedimage = uint8((double(A) / 110) * 255);

imshow(normalizedimage);




