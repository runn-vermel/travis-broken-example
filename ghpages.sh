 #!/bin/bash

echo "running script"
git checkout gh-pages #move to the right branch
rm -rf $COMPONENT #remove the older instance we are forwarding to from the main index.html
git clone https://github.com/runn-vermel/$COMPONENT  #clone the new and improved repo
cd $COMPONENT #go into component
rm -rf .git #and remove the .git folder to avoid submodules
cd ..

#and commit and push the gh-pages branch.
git add .
git commit -m "updated component"
git push origin gh-pages
