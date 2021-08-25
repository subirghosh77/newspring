select * from channels;

alter table channels modify column xml varchar(100);

insert into channels(name,baseurl,xml,logopath,description) 
values('economictimes','https://economictimes.indiatimes.com/','news/science/rssfeeds/39872847.cms','','science');