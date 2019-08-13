function write2txt(filename,head,choice)
%% filename : the file of saving the results
%% head : the cur degree of the heading
%% choice : the choiced degree of the heading
fid = fopen(filename,'wt+');
if(fid < 0)
    return;
end
size =length(head);
for i = 1:size
    fprintf(fid,'%d\t',head(i));
    fprintf(fid,'%d\n',choice(i));
end
fclose(fid);