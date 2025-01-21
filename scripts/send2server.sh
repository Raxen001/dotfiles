#rsync -azPr Movies/ raven@debian-server:~/media/movies/
rsync -azPr --append --remove-source-files tmp/ raven@raven:~/media/tvshows/
