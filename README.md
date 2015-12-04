# Organize your Camera Uploads on Dropbox

The default functionality of the Dropbox iOS application is to upload all of your photos into the
'Camera Uploads' folder. Once you have more than a couple hundred photos in there it makes it difficult
to browse through them anywhere, desktop or web. This script simply moves your moves your files into a simple monthly
folder structure for easier browsing.

You'll need to create an access token at [developers.dropbox.com](http://developers.dropbox.com). Copy
`.env.example` to `.env` and then add your `API_KEY` to `.env`. Once you've configured that you can
run the script.

``` shell
$ bundle install && bundle exec ruby run.rb
```

The output will be similar to the following:

```
Moving /Camera Uploads/2014-10-28 15.18.18.jpg to /Camera Uploads/2014-10/2014-10-28 15.18.18.jpg
Moving /Camera Uploads/2014-10-29 07.32.12.jpg to /Camera Uploads/2014-10/2014-10-29 07.32.12.jpg
Moving /Camera Uploads/2014-10-29 07.32.15.jpg to /Camera Uploads/2014-10/2014-10-29 07.32.15.jpg
Moving /Camera Uploads/2014-10-29 11.04.50.png to /Camera Uploads/2014-10/2014-10-29 11.04.50.png
Moving /Camera Uploads/2014-10-29 11.05.27.png to /Camera Uploads/2014-10/2014-10-29 11.05.27.png
Moving /Camera Uploads/2014-10-29 14.42.41.jpg to /Camera Uploads/2014-10/2014-10-29 14.42.41.jpg
...
```
