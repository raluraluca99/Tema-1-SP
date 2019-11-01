
% d) 
nr_nivele=8; 

t=0:0.002:nr_nivele+1; 
j=1;
for i=1:length(t) 
    if t(i)<=j*0.25 
        if j<=length(t)
        s(i)=t(j);
    else
        s(i)=0;
        end
    else
        if j<=length(t)
            s(i)=t(j);
        end
        j=j+1; 
    end
end
s=s*200-7  

plot(t,s), grid %reprezentam grafic semnalul