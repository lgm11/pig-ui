rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "update" &&
git branch -M main &&
git remote add origin git@github.com:lgm11/pig-ui-website.git &&
git push -f -u origin main &&
cd -
echo https://lgm11.github.io/pig-ui-website/index.html