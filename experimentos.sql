-- ------------------------------------------------ --
-- Script SQL para experimentações com comandos SQL --
-- ------------------------------------------------ --

-- Apaga todas as tabelas do banco de dados
-- ATENÇÃO! Só use isso no banco de dados de desenvolvimento
DROP TABLE IF EXISTS pads;
DROP TABLE IF EXISTS owners;

-- Cria a tabela "owners"
-- Precisa ser criada primeiro porque "pads" depende dela
CREATE TABLE owners (
	own_id INTEGER PRIMARY KEY AUTOINCREMENT,
	own_uid TEXT UNIQUE NOT NULL,
	own_display_name TEXT,
	own_email TEXT UNIQUE NOT NULL,
	-- URL da foto do usuário
	own_photo_url TEXT,
	-- 'DEFAULT' significa que vai ser preechido automaticamente
	own_created_at TEXT DEFAULT CURRENT_TIMESTAMP,
	own_last_login_at TEXT DEFAULT CURRENT_TIMESTAMP,
	own_status TEXT NOT NULL DEFAULT 'ON' CHECK (own_status IN ('ON', 'OFF', 'DEL')),
	-- Reservado para uso futuro
	own_metadata TEXT
);

-- Insere alguns registros em "owners" para teste
INSERT INTO owners (
	own_uid,
	own_display_name,
	own_email,
	own_photo_url
) VALUES (
	'92U33H8E839H',
	'Joca da Silva',
	'jocasilva@gmail.com',
	'img/fotojoca.jpg'
), (
	'96u0108319hd011',
	'Lorran eduardo',
	'elorran321@gmai.com',
	'img/fotolorran.jpg'
);
-- Lista todos os registros de 'owners'
SELECT * FROM owners
