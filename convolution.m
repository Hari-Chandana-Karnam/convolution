f=imread('c.jpg');%read image of your choice
figure,imshow(f);
[m,n]=size(f);
P = padarray(f,[1,1]);%padding the image with zeroes 
H=1/9*[0 1 0;1 2 1;0 1 0];
[u,v]=size(H);
G=zeros(m+u-1,m+u-1);%size of the resultant image will be of m+n-1
for i=2:1:m+u-2
    for j=2:1:m+u-2
     	   a=i-1;
        for x=1:1:u
     	       b=j-1;
         		   for y=1:1:u
              	  G(i,j)=G(i,j)+P(a,b)*H(x,y);
                 		b=b+1;
           		 end
            		a=a+1;
        			end
    			end
end
figure,imshow(G);
