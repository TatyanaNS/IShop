insert into TANOVIKOVA.user_role(user_id, role_id)
values((select id from TANOVIKOVA.users where email = 'admin@gmail.com'), (select id from TANOVIKOVA.roles where role_name = 'admin'));