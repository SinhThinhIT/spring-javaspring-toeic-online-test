create database toeic_online;
use toeic_online;
create table users(
	id_user int(11) auto_increment not null primary key,
    username nvarchar(30) not null,
    password nvarchar(30) not null,
    isAdmin boolean,
    active boolean,
    email nvarchar(200) not null,
    address nvarchar(255),
    count int(11),
    phone varchar(45),
    -- id_admin int(11) not null, -- xong bang users
    created_date datetime,
    update_date datetime,
    id_role int(11) not null,
    CONSTRAINT fk_1role_Nusers
    FOREIGN KEY (id_role) 
        REFERENCES role(id_role)
        ON UPDATE CASCADE
        ON DELETE CASCADE
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
COMMENT = 'Đây là users';
create table avatar (
	id_avartar int(11) auto_increment not null primary key,
    name nvarchar(60) not null,
    image_file_name varchar(45),
    information nvarchar(255) not null,
    address nvarchar(200),
    active boolean,
    id_user int(11) not null, -- dung
    create_date datetime,
    update_date datetime,
    CONSTRAINT fk_1user_1avatar
    FOREIGN KEY (id_user) 
        REFERENCES users(id_user)
        ON UPDATE CASCADE
        ON DELETE CASCADE
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
COMMENT = 'Day la avartar';
create table category(
	id_category int(11) auto_increment not null primary key,
    title nvarchar(255) not null,
    image_file_name varchar(45),
    count int(5),
    -- id_admin int(11) not null, --  dung
    id_user int(11) not null,
    create_date datetime,
    update_date datetime,
    CONSTRAINT fk_1user_Ncategory
    FOREIGN KEY (id_user) 
        REFERENCES users(id_user)
        ON UPDATE CASCADE
        ON DELETE CASCADE
)ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
COMMENT = 'Day la category';
create table post (
	id_post int(11) auto_increment not null primary key,
    title nvarchar(255) not null,
    descrition nchar(255) not null,
    paragraph text not null,
    image_file_name varchar(45),
    id_category int(11) not null, -- xong cate
    create_date datetime,
    update_date datetime,
    CONSTRAINT fk_1cate_Npost
    FOREIGN KEY (id_category) 
        REFERENCES category(id_category)
        ON UPDATE CASCADE
        ON DELETE CASCADE
)ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
COMMENT = 'Day la post';
create table level_toeic (
	id_level int(11) auto_increment not null primary key,
    title nvarchar(255) not null,
    -- id_admin int(11) not null,-- dung
    id_user int(11) not null,
    create_date datetime,
    update_date datetime,
    CONSTRAINT fk_1user_Ngener
    FOREIGN KEY (id_user) 
        REFERENCES users(id_user)
        ON UPDATE CASCADE
        ON DELETE CASCADE
)ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
COMMENT = 'Day la level toeic';
create table exam (
	id_exam int(11) auto_increment not null primary key,
    nameExam nvarchar(40) not null,
    question varchar(100) not null,
    answer char(70) not null,
    point bit(5) not null,
    sumPoint bit(5) not null,
    count int(11) not null,
    image_file_name varchar(45),
    -- id_admin int(11) not null,-- dung
    id_user int(11) not null,
    id_level int(11) not null,-- dung
    create_date datetime,
    update_date datetime,
    CONSTRAINT fk_1user_Nexam
    FOREIGN KEY (id_user) 
       REFERENCES users(id_user),
	CONSTRAINT fk_1level_Nexam
    FOREIGN KEY (id_level) 
        REFERENCES level_toeic(id_level)
        ON UPDATE CASCADE
        ON DELETE CASCADE
)ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
COMMENT = 'Day la exam';
create table comment (
	id_comment int(11) auto_increment not null primary key,
    paragraph nvarchar(255) not null,
    id_post int(11) not null, -- xong
    id_user int(11) not null, -- dung 
    id_avartar int(11) not null, -- dung
    like_commet boolean,
    sumLikeComment int(11),
    -- id_admin int(11) not null, -- dung
    create_date datetime,
    update_date datetime,
    CONSTRAINT fk_1user_Ncommnet
    FOREIGN KEY (id_user) 
        REFERENCES users(id_user),
	CONSTRAINT fk_1post_Ncomment
    FOREIGN KEY (id_post) 
        REFERENCES post(id_post),
	CONSTRAINT fk_1avartar_1comment
    FOREIGN KEY (id_avartar) 
        REFERENCES avatar(id_avartar)
        ON UPDATE CASCADE
        ON DELETE CASCADE
)ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
COMMENT = 'Day la comment';
create table profile_user (
	id_profile int(11) auto_increment not null primary key,
    total_point int(11),
    rank_profile int(11),
    image_file_name varchar(45),
    id_user int(11) not null, -- dung
    id_exam int(11) not null,
    -- id_admin int(11) not null, -- xong
    create_date date,
    update_date date,
	CONSTRAINT fk_1exam_1profile
    FOREIGN KEY (id_exam) 
        REFERENCES exam(id_exam),
    CONSTRAINT fk_1user_1profile
    FOREIGN KEY (id_user) 
        REFERENCES users(id_user)
        ON UPDATE CASCADE
        ON DELETE CASCADE
)ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
COMMENT = 'Day la profile_user';
create table manger_exam (
	id_user int(11) not null,
    id_exam int(11) not null,
	-- time_last time,
--     created_date datetime,
    primary key(id_user,id_exam),
    CONSTRAINT fk_1manger_Nuser
    FOREIGN KEY (id_user) 
        REFERENCES users(id_user),
	CONSTRAINT fk_1manger_Nexam
    FOREIGN KEY (id_exam) 
        REFERENCES exam(id_exam)
        ON UPDATE CASCADE
        ON DELETE CASCADE
)ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
COMMENT = 'Day la manger_exam';

create table role(
	id_role int(11)auto_increment not null primary key,
    name nvarchar(255) not null,
    descrition nchar(255)
)ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
COMMENT = 'Day la role';

create table password_reset_token (
	id_token int(11) auto_increment not null primary key,
    token nvarchar(255),
	id_user int(11) not null,
    CONSTRAINT fk_1user_Npass_reset
    FOREIGN KEY (id_user) 
       REFERENCES users(id_user)
)ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
COMMENT = 'Day la password_reset_token';

-- count,max, min
-- select ... from ...where... order by... limit
-- limit
-- select * from post where id=(select max(id_post) from post);
-- select * from post order by 'create_date' ASC limit 1;-- desc giam dan
-- inner join,left join, right join