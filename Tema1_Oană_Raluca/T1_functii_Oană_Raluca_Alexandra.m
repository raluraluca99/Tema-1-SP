function [med,pat,tr] = E3(b)
s=0;
for c=1:length(b);
   s=s+real(b(c));
end
med=s/length(b);
pat=b.^(2);
tr=b*b.';
end
