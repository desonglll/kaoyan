# Echo time information to Changelog file.
time=$(date "+%Y-%m-%d %H:%M:%S")

# echo tree directories to tree.md

echo -e "# Directories\n\n\`\`\`shell\n" > "TREE.md"

tree >> "TREE.md"

echo -e "\n\`\`\`" >> "TREE.md"

# echo username and updated date to README.md

echo -e "\nLast updated by **`whoami`** at: "${time} >> "README.md"

# github deploy

git init
git add .
git commit -m "$(date "+%Y-%m-%d %H:%M:%S")"
git branch -M main
git remote add origin git@github.com:desonglll/kaoyan.git
git push -u origin main -f
