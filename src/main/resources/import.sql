INSERT INTO tb_categoria(descricao) VALUES ('Curso')
INSERT INTO tb_categoria(descricao) VALUES ('Oficina')

INSERT INTO tb_atividade(name, descricao, preco, categoria_id) VALUES ('Curso de HTML', 'Aprenda HTML de forma prática', 80.00, 1)
INSERT INTO tb_atividade(name, descricao, preco, categoria_id) VALUES ('Oficina de Github', 'Controle versões de seus projetos', 50.00, 2)

INSERT INTO tb_bloco(inicio, fim, atividade_id) VALUES (TIMESTAMP WITH TIME ZONE '2022-09-25T11:00:00Z', TIMESTAMP WITH TIME ZONE '2022-09-25T14:00:00Z', 1)
INSERT INTO tb_bloco(inicio, fim, atividade_id) VALUES (TIMESTAMP WITH TIME ZONE '2022-09-25T17:00:00Z', TIMESTAMP WITH TIME ZONE '2022-09-25T21:00:00Z', 2)
INSERT INTO tb_bloco(inicio, fim, atividade_id) VALUES (TIMESTAMP WITH TIME ZONE '2022-09-26T11:00:00Z', TIMESTAMP WITH TIME ZONE '2022-09-26T14:00:00Z', 2)

INSERT INTO tb_participante(name, email) VALUES ('José Silva', 'jose@gmail.com')
INSERT INTO tb_participante(name, email) VALUES ('Tiago Faria', 'tiago@gmail.com')
INSERT INTO tb_participante(name, email) VALUES ('Maria do Rosário', 'maria@gmail.com')
INSERT INTO tb_participante(name, email) VALUES ('Teresa Silva', 'teresa@gmail.com')

INSERT INTO tb_atividade_participantes (atividade_id, participante_id) VALUES (1, 1)
INSERT INTO tb_atividade_participantes (atividade_id, participante_id) VALUES (2, 1)
INSERT INTO tb_atividade_participantes (atividade_id, participante_id) VALUES (1, 2)
INSERT INTO tb_atividade_participantes (atividade_id, participante_id) VALUES (1, 3)
INSERT INTO tb_atividade_participantes (atividade_id, participante_id) VALUES (2, 3)
INSERT INTO tb_atividade_participantes (atividade_id, participante_id) VALUES (2, 4)