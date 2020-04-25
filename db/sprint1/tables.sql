DROP TYPE IF EXISTS TipoPessoa;
CREATE TYPE TipoPessoa AS ENUM ('PF', 'PJ');
DROP TABLE IF EXISTS Entidades;
CREATE TABLE Entidades (
    Entidade_ID serial PRIMARY KEY,
    Nome text NOT NULL,
    Tipo_Pessoa TipoPessoa,
    Url_Entidade text,
    Descricao text
);

DROP TYPE IF EXISTS TipoAjuda;
DROP TYPE IF EXISTS FormaAjuda;
CREATE TYPE TipoAjuda AS ENUM ('RECEBE', 'FORNECE');
CREATE TYPE FormaAjuda AS ENUM ('DINHEIRO', 'MATERIAL');
DROP TABLE IF EXISTS Acoes;
CREATE TABLE Acoes (
    Acao_ID serial PRIMARY KEY,
    Entidade_ID integer NOT NULL REFERENCES Entidades,
    Nome_Acao text NOT NULL,
    Imagem_Acao bytea,
    Url_Acao text,
    Descricao text,
    Contato text,
    Tipo_Ajuda TipoAjuda NOT NULL,
    Forma_Ajuda FormaAjuda NOT NULL,
    Data_Insercao timestamp,
    Data_Atualizacao timestamp,
    Forma_Verificacao text,
    Resp_Verificacao text,
    Ativa boolean,
    Permanente boolean,
    Validade text
);

DROP TYPE IF EXISTS TipoBeneficiado;
CREATE TYPE TipoBeneficiado AS ENUM ('PJ');
DROP TABLE IF EXISTS Dados_Bancarios;
CREATE TABLE Dados_Bancarios (
    Dados_Bancarios_ID serial PRIMARY KEY,
    Acao_ID integer NOT NULL REFERENCES Acoes,
    Banco text NOT NULL,
    Agencia text NOT NULL,
    Operacao text,
    Conta text NOT NULL,
    Nome_Beneficiado text NOT NULL,
    Tipo_Beneficiado TipoBeneficiado NOT NULL,
    Id_Beneficiado text
);

DROP TABLE IF EXISTS Localizacoes;
CREATE TABLE Localizacoes (
    Localizacao_ID serial PRIMARY KEY,
    Acao_ID integer NOT NULL REFERENCES Acoes,
    Endereco text NOT NULL,
    Latitute text,
    Longitude text,
    Horario text,
    Obs text
);

DROP TABLE IF EXISTS Na_Midia;
CREATE TABLE Na_Midia (
    Na_Midia_Id serial PRIMARY KEY,
    Acao_ID integer NOT NULL REFERENCES Acoes,
    Midia_Url text NOT NULL,
    Midia text NOT NULL
);
