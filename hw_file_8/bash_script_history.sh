ls
cd homework
ls
mkdir task8
ls
cd task8
cd 1
awk -F'\t' '{sum=0; for(i=1;i<=NF;i++) sum+=$i; print sum}' fin > fout
ls
vim fout
awk -F'\t' '{sum=0; for(i=1;i<=NF;i++) sum+=$i; print sum}' fin
cd homework/task8/1
awk -F'\t' '{sum=0; for(i=1;i<=NF;i++) sum+=$i; print sum}' fin
cd ../
echo "Hello, world!" > fout
ls
cd 3
cut -c10 fin > fout
ls
cd ../
cd 4
paste - - < fin | grep '777' > fout
ls
cd ../
cd 5
sort -k2,2V -k3,3n -k4,4n fin > fout
ls
cd ../
cd 6
grep -i '[0-9]' fin | grep -vi '[xy]' | awk '{ total += length($0) } END { print total }'
cd 6.1
grep -i '[0-9]' fin | grep -vi '[xy]' | awk '{ total += length($0) } END { print total }'
cd ../../../../
cd classes/
ls
cd class_8
ls
grep -v '^#' clinvar_20250330.vcf | awk '

= $4; alt = $5;
alts, ",");
(i in alts) {
= alts[i];
(length(a) > length(ref)) {
= length(a) - length(ref);
(len > max_ins) {
= len;
= substr(a, length(ref)+1);

else if (length(ref) > length(a)) {
= length(ref) - length(a);
(len > max_del) {
= len;
= substr(ref, length(a)+1);




{
"Longest insertion:\n" ins_seq > "fout";
"Longest deletion:\n" del_seq >> "fout";

ls
vim fout
history | awk '{$1=""; print substr($0,2)}' > bash_script_history.sh
