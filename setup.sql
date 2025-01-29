create table categories (
    category_id integer primary key,
    name varchar(20) not null
);

create table exerciseCategories (
    exercise_id integer,
    category_id integer,
    primary key (exercise_id, category_id),
    foreign key (exercise_id) references exercise (exercise_id),
    foreign key (category_id) references categories (category_id)
);

create table exercise (
    exercise_id integer primary key,
    name varchar(250) not null,
    description text not null,
    equipment varchar(250) not null,
    intensity varchar(250) not null,
    target_muscles varchar(250) not null,
    foreign key (person_id) references person (person_id)
);

create table userExercises (
    user_id integer,
    exercise_id integer,
    sets integer not null,
    reps integer not null,
    created_At date,
    primary key (user_id, exercise_id),
    foreign key (user_id) references user (user_id),
    foreign key (exercise_id) references exercise (exercise_id)
);

create table user (
    user_id integer primary key,
    email varchar(250) not null,
    name varchar(250) not null,
    gender boolean not null,
    password varchar(250) not null
);
