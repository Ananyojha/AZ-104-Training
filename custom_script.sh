apt-get update
apt-get install -y nginx
echo $(hostname) | sudo tee /var/www/html/index.html
sudo mkdir -p /var/www/html/video
echo "<html><head><title>My video Page</title></head><body><h1>Hello, world!</h1><h3>A video for you..</h3><iframe width="560" height="315" src="https://www.youtube.com/embed/3n5L3cGCbDo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></body></html>" | sudo tee /var/www/html/video/test.html
