# clean up
trgt="../public"
rm -f $trgt/{favicon.png,index.html,index.xml,sitemap.xml}
rm -rf $trgt/{blog,notes,css,categories,images,page,post,tags,about}

# build
hugo -d ../public

# commit and push to origin
git add -A
git commit -a
git push origin master

echo "Now, 'cd ../public' and 'deploy.sh'"
