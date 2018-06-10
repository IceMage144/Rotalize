sudo docker run -it --rm --link rotalize_postgres_1:postgres postgres psql -c "
insert into locals values (1000, 'Paris', 'France', 'Euro', 'paris.png', current_timestamp, current_timestamp);
insert into locals values (1001, 'London', 'England', 'Pound', 'london.png', current_timestamp, current_timestamp);
insert into places values (DEFAULT, 'Arco do Triunfo', 0, make_time(10, 0, 0.0), make_time(18, 0, 0.0), 'triunph.png', 'A big arch', 'Rua do matão 1010', 10.0, current_timestamp, current_timestamp, 1000);
insert into places values (DEFAULT, 'Torre Eiffel', 0, make_time(10, 0, 0.0), make_time(18, 0, 0.0), 'eiffel.png', 'A big tower', 'Rua do matão 1010', 10.0, current_timestamp, current_timestamp, 1000);
insert into places values (DEFAULT, 'London Eye', 0, make_time(10, 0, 0.0), make_time(18, 0, 0.0), 'eye.png', 'A big ferris wheel', 'Rua do matão 1010', 10.0, current_timestamp, current_timestamp, 1001);
insert into places values (DEFAULT, 'Museu de história natural', 0, make_time(10, 0, 0.0), make_time(18, 0, 0.0), 'museum.png', 'A big ferris museum', 'Rua do matão 1010', 10.0, current_timestamp, current_timestamp, 1001);
" -h postgres -U postgres
