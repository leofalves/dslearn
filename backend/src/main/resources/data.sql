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

