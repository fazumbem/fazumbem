CREATE TYPE "TipoPessoa" AS ENUM (
  'PF',
  'PJ'
);

CREATE TYPE "TipoAjuda" AS ENUM (
  'RECEBE',
  'FORNECE'
);

CREATE TYPE "FormaAjuda" AS ENUM (
  'DINHEIRO',
  'MATERIAL'
);

CREATE TYPE "TipoBeneficiado" AS ENUM (
  'PJ'
);

CREATE TABLE "Entidades" (
  "Entidade_ID" serial PRIMARY KEY,
  "Nome" text NOT NULL,
  "Tipo_Pessoa" TipoPessoa,
  "Url_Entidade" text,
  "Descricao" text
);

CREATE TABLE "Acoes" (
  "Acao_ID" serial PRIMARY KEY,
  "Entidade_ID" integer NOT NULL,
  "Nome_Acao" text NOT NULL,
  "Imagem_Acao" bytea,
  "Url_Acao" text,
  "Descricao" text,
  "Contato" text,
  "Tipo_Ajuda" TipoAjuda NOT NULL,
  "Forma_Ajuda" FormaAjuda NOT NULL,
  "Data_Insercao" timestamp,
  "Data_Atualizacao" timestamp,
  "Forma_Verificacao" text,
  "Resp_Verificacao" text,
  "Ativa" boolean,
  "Permanente" boolean,
  "Validade" text
);

CREATE TABLE "Dados_Bancarios" (
  "Dados_Bancarios_ID" serial PRIMARY KEY,
  "Acao_ID" integer NOT NULL,
  "Banco" text NOT NULL,
  "Agencia" text NOT NULL,
  "Operacao" text,
  "Conta" text NOT NULL,
  "Nome_Beneficiado" text NOT NULL,
  "Tipo_Beneficiado" TipoBeneficiado NOT NULL,
  "Id_Beneficiado" text
);

CREATE TABLE "Localizacoes" (
  "Localizacao_ID" serial PRIMARY KEY,
  "Acao_ID" integer NOT NULL,
  "Endereco" text NOT NULL,
  "Latitute" text,
  "Longitude" text,
  "Horario" text,
  "Obs" text
);

CREATE TABLE "Na_Midia" (
  "Na_Midia_Id" serial PRIMARY KEY,
  "Acao_ID" integer NOT NULL,
  "Midia_Url" text NOT NULL,
  "Midia" text NOT NULL
);

ALTER TABLE "Acoes" ADD FOREIGN KEY ("Entidade_ID") REFERENCES "Entidades" ("Entidade_ID");

ALTER TABLE "Dados_Bancarios" ADD FOREIGN KEY ("Acao_ID") REFERENCES "Acoes" ("Acao_ID");

ALTER TABLE "Localizacoes" ADD FOREIGN KEY ("Acao_ID") REFERENCES "Acoes" ("Acao_ID");

ALTER TABLE "Na_Midia" ADD FOREIGN KEY ("Acao_ID") REFERENCES "Acoes" ("Acao_ID");
