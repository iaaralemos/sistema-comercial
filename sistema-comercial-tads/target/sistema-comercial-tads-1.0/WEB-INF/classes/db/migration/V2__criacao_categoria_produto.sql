CREATE TABLE public.categoria
(
    id SERIAL primary key,    
    nome character varying(80) NOT NULL,
    categoria_id integer REFERENCES public.categoria(id)
);
CREATE TABLE public.produto
(
    id SERIAL primary key,    
    nome character varying(80) NOT NULL,
    marca character varying(60) NOT NULL,
    codigo_barras character varying(30) NOT NULL,
    unidade_medida character varying(2) NOT NULL,
    categoria_id integer NOT NULL REFERENCES public.categoria(id)
);

insert into categoria (id, nome) values (default, 'Higiene');
insert into categoria (id, nome) values (default, 'Limpeza');
insert into categoria (id, nome) values (default, 'Industrializado');