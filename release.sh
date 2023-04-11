hugo
rm -rf public
mv public docs
git add .
git commit -m "ok"
git push -u origin main
mv docs public