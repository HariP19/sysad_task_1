mkdir sys
cd sys
let x=1
while [ $x -lt 101 ];do
touch file_$x;
pwgen 16 1 > file_$x;
truncate -s 10k;
touch -d "2 days ago" file_$x;
chmod 444 file_$x;
let x=x+1;
done

