# Organize your automatically uploaded iOS photos into YYYY-MM folders on Dropbox

The default functionality of the Dropbox iOS application is to upload all of your photos into the
'Camera Uploads' folder. One you have more than a couple hundred photos in there it makes it difficult
to browse through them anywhere. This script simply moves your moves your files into a simple monthly
folder structure for easier browsing.

``` shell
$ bundle install && bundle exec ruby ruby.rb
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
