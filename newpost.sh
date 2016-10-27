((!$#)) && echo Did not create post. Need title. && exit 1
post=blog/$(date +%Y-%m-%d)-$1.markdown
hugo new $post
vim content/$post
