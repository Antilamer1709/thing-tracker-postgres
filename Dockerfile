FROM postgres:11
WORKDIR /my_dbdata
COPY ./tracker_backup tracker_backup
EXPOSE 5432
