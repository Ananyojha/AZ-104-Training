apt-get update
apt-get install -y nginx
echo "<html><head><title>Demo App on Ec2 / Azure VM</title></head><body><h1> Hey There 👋 you are served by $(hostname)</h1><br><h2>Pls visit /video in URL..</h2></body></html> " | sudo tee /var/www/html/index.html
sudo mkdir -p /var/www/html/video
echo "<html><head><title>My video Page</title></head><body><h1>Hello, world!</h1><h3>A video for you..</h3><iframe width="560" height="315" src="https://www.youtube.com/embed/teHR00DpX2E" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></body></html>" > index.html
