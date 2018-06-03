create table g13_records ( 
    id bigint not null auto_increment, 
    article varchar(255), 
    editor varchar(255), 
    notified timestamp default now(), 
    nominated timestamp,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

create unique index g13_notify on g13_records (article,editor);
