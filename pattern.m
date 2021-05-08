for i=1:5
    for j=i:5
        fprintf(' ');
    end
    for k=1:(i*2-1)
        fprintf('%d',k);
    end
    fprintf('\n');
end
for i=4:-1:1
    for j=5:-1:i
        fprintf(' ');
    end
    for k=1:(i*2-1)
        fprintf('%d',k);
    end
    fprintf('\n');
end