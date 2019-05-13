# git init
touch a.txt b.txt
echo "this is a.txt" > a.txt
echo "this is b.txt" > b.txt
git add .
git commit -m "<message>"
echo "this is new a.txt" > a.txt
echo "this is added to b.txt" >> b.txt
git diff
git add .
git checkout -- .
echo "this is a new chaneg to b.txt" > b.txt
git add .
git reset 
git add .
git commit -m "<messsage>"
