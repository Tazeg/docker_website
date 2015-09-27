# Aim of this Docker image

Make a web site to be portable, using Apache/PHP/MySQL.

### Config

- Put your web site into the `www` directory  
(`index.php` is given as sample).
- Change variables in `mysql.sh` : DB_NAME, DB_USER, USER_PASSWD...  
This script will be deleted and not included into the image.
- Replace the `database.sql` with the dump of your database.  
It will be processed once, while compiling the Docker image, then deleted.

### Creating image

Replace IMAGENAME with the lower case name you want :

``` bash
$ cd [path to the Dockerfile]
$ docker build -t [IMAGENAME] .
```

### Start image

``` bash
$ docker run -d -p 80:80 [IMAGENAME]
```

Then open your browser to <http://localhost>.

### Connect to MySQL server

Look at your container id with :

``` bash
docker ps
```
then
``` bash
docker exec -it [CONTAINER ID]
root@d779731e73ac:/# mysql -u myuser -p
```

The user, or root, are those you can manage in the `mysql.sh` file before the build.

### Show Apache logs

``` bash
docker exec -it [CONTAINER ID]
root@d779731e73ac:/# tail -f /var/log/apache2/error.log
root@d779731e73ac:/# tail -f /var/log/apache2/access.log
```

### Documentation
[Docker official site](https://www.docker.com/)
