hugo

if [ $? -ne 0 ]; then
    echo "Hugo build failed"
    exit 1
fi
if [ -d "public" ]; then
    rm -rf public
fi
mv public docs
git add .
git commit -m "ok"
git push -u origin main