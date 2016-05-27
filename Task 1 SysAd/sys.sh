mkdir task1
cd task1
random_string(){
cat /dev/urandom | tr -cd 'a-zA-Z0-9' | head -c $1
}
x=1
while [ $x -lt 101 ];do
touch file$x;
random_string 16 > file$x;
truncate -s 10k file$x;
touch -d "2 days ago" file$x;
chmod 444 file$x;
let x=$x+1;
done
