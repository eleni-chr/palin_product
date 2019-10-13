function n = palin_product(dig,lim)

% The function returns the largest palindrome smaller than lim that is the
% product of two dig digit numbers. If no such number exists, the function
% returns 0. Note: A palindromic number reads the same both ways. For
% example, the largest palindrome made from the product of two 2-digit
% numbers is 9009 = 91 × 99.

pp=[];
for a=1*(10.^(dig-1)):1*(10.^dig)-1
    for b=1*(10.^(dig-1)):1*(10.^dig)-1
        product=a*b;
        p=num2str(product);
        palindrome=fliplr(p);
        comparison=strcmp(p,palindrome);
        if comparison==1
            pp=[pp,product];
        end
    end
end
if isempty(pp)
    n=0;
else
    max=0;
    for i=1:length(pp)
        if pp(i)>max && pp(i)<lim
            max=pp(i);
        end
    end
    n=max;
end
end