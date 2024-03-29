INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob White', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);

INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);

INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Javascript', 'https://i0.wp.com/www.clickguarulhos.com.br/wp-content/uploads/2021/09/20210910-javacurso.jpg?fit=1024%2C683&ssl=1', 'https://blog.raleduc.com.br/wp-content/uploads/2016/06/aaasd.jpg');
INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Oracle PL-SQL', 'https://arquivo.devmedia.com.br/cursos/imagem/curso_1456.jpg', 'http://www.mastertraining.com.br/wp-content/uploads/2013/02/oracle_black.jpg');

INSERT INTO tb_offer(edition, start_moment, end_moment, course_id) VALUES ('JS 2022 - BLACK FRIDAY', TIMESTAMP WITH TIME ZONE '2022-11-01T03:00:01Z', TIMESTAMP WITH TIME ZONE '2022-11-30T02:59:59Z', 1);
INSERT INTO tb_offer(edition, start_moment, end_moment, course_id) VALUES ('JS 2022 - CHRISTMAS', TIMESTAMP WITH TIME ZONE '2022-12-01T03:00:01Z', TIMESTAMP WITH TIME ZONE '2022-12-30T02:59:59Z', 1);
INSERT INTO tb_offer(edition, start_moment, end_moment, course_id) VALUES ('ORCL 2022 - BLACK FRIDAY', TIMESTAMP WITH TIME ZONE '2022-11-01T03:00:01Z', TIMESTAMP WITH TIME ZONE '2022-11-30T02:59:59Z', 2);

INSERT INTO tb_resource(title, description, position, img_uri, type, offer_id) VALUES ('Trilha Javascript Vanilla','Trilha principal do curso JS', 1, 'https://i0.wp.com/www.clickguarulhos.com.br/wp-content/uploads/2021/09/20210910-javacurso.jpg?fit=1024%2C683&ssl=1', 1, 1);
INSERT INTO tb_resource(title, description, position, img_uri, type, offer_id) VALUES ('Forum','Tire suas dúvidas', 2, 'https://i0.wp.com/www.clickguarulhos.com.br/wp-content/uploads/2021/09/20210910-javacurso.jpg?fit=1024%2C683&ssl=1', 2, 1);
INSERT INTO tb_resource(title, description, position, img_uri, type, offer_id) VALUES ('Aulas ao vivo','Lives exclusivas para a turma', 3, 'https://i0.wp.com/www.clickguarulhos.com.br/wp-content/uploads/2021/09/20210910-javacurso.jpg?fit=1024%2C683&ssl=1', 0, 1);

INSERT INTO tb_section(title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Chapter One', 'Basic Sintax', 1, 'https://dkrn4sk0rn31v.cloudfront.net/uploads/2020/09/javascript-console-group.png', 1, null);
INSERT INTO tb_section(title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Chapter Two', 'Escope', 1, 'https://dkrn4sk0rn31v.cloudfront.net/uploads/2020/09/javascript-console-group.png', 1, 1);
INSERT INTO tb_section(title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Chapter Three', 'Variables', 1, 'https://dkrn4sk0rn31v.cloudfront.net/uploads/2020/09/javascript-console-group.png', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES(1, 1, TIMESTAMP WITH TIME ZONE '2022-11-05T13:00:01Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES(2, 1, TIMESTAMP WITH TIME ZONE '2022-11-08T18:22:31Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Class one - Chapter one', 1, 1);
INSERT INTO tb_content(text_content, video_uri, id) VALUES ('Class one - Map structure in Java','https://youtu.be/wzJTpzHHoVg', 1);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Class two - Chapter one', 2, 1);
INSERT INTO tb_content(text_content, video_uri, id) VALUES ('Class two - Bean Validation','https://youtu.be/ulPtCY7nhwM', 2);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Class three - Chapter one', 3, 1);
INSERT INTO tb_content(text_content, video_uri, id) VALUES ('Class three - Instalar Java JDK 2021 no Windows - OpenJDK Zulu','https://youtu.be/laC0fiI-IOM', 3);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Task for Chapter one', 4, 1);
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (4, 'Do a good job', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2022-12-31T23:59:00Z');


INSERT INTO tb_lessons_done(lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done(lesson_id, user_id, offer_id) VALUES (2, 1, 1);


INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('First feedback: Please review', TIMESTAMP WITH TIME ZONE '2022-12-10T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Second feedback: Please review', TIMESTAMP WITH TIME ZONE '2022-12-12T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Third feedback: Please review', TIMESTAMP WITH TIME ZONE '2022-12-14T13:00:00Z', false, '/offers/1/resource/1/sections/1', 1);

INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) VALUES ('https://github.com/devsuperior/bds-dslearn', TIMESTAMP WITH TIME ZONE '2022-12-13T10:00:00Z', 0, null, null, 4, 1, 1);


INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 1', 'Corpo do tópico 1', TIMESTAMP WITH TIME ZONE '2022-12-12T13:00:00Z', 1, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 2', 'Corpo do tópico 2', TIMESTAMP WITH TIME ZONE '2022-12-13T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 3', 'Corpo do tópico 3', TIMESTAMP WITH TIME ZONE '2022-12-14T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 4', 'Corpo do tópico 4', TIMESTAMP WITH TIME ZONE '2022-12-15T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 5', 'Corpo do tópico 5', TIMESTAMP WITH TIME ZONE '2022-12-16T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 6', 'Corpo do tópico 6', TIMESTAMP WITH TIME ZONE '2022-12-17T13:00:00Z', 2, 1, 3);

INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (2, 1);


INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Try reboot your PC', TIMESTAMP WITH TIME ZONE '2022-12-15T13:00:00Z', 1, 2);
INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('It works! Thanks', TIMESTAMP WITH TIME ZONE '2022-12-20T13:00:00Z', 1, 1);

INSERT INTO tb_reply_likes (reply_id, user_id) VALUES (1, 1);

