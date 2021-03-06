PGDMP         7                t            Supli    9.5.1    9.5.1 2    f           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            g           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            h           1262    41016    Supli    DATABASE     �   CREATE DATABASE "Supli" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE "Supli";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            i           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            j           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    12355    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            k           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    41211 	   categoria    TABLE     n   CREATE TABLE categoria (
    categoria integer NOT NULL,
    nome_categoria character varying(30) NOT NULL
);
    DROP TABLE public.categoria;
       public         postgres    false    6            �            1259    41209    categoria_categoria_seq    SEQUENCE     y   CREATE SEQUENCE categoria_categoria_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.categoria_categoria_seq;
       public       postgres    false    182    6            l           0    0    categoria_categoria_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE categoria_categoria_seq OWNED BY categoria.categoria;
            public       postgres    false    181            �            1259    41257    cliente    TABLE     �   CREATE TABLE cliente (
    nome character varying(70) NOT NULL,
    email character varying(48) NOT NULL,
    cliente integer NOT NULL
);
    DROP TABLE public.cliente;
       public         postgres    false    6            �            1259    41255    cliente_cliente_seq    SEQUENCE     u   CREATE SEQUENCE cliente_cliente_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.cliente_cliente_seq;
       public       postgres    false    6    191            m           0    0    cliente_cliente_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE cliente_cliente_seq OWNED BY cliente.cliente;
            public       postgres    false    190            �            1259    41239 	   supleente    TABLE     �   CREATE TABLE supleente (
    supleente integer NOT NULL,
    comentario character varying(1000) NOT NULL,
    avaliacao integer NOT NULL,
    suplemento integer NOT NULL,
    cliente integer NOT NULL
);
    DROP TABLE public.supleente;
       public         postgres    false    6            �            1259    41237    supleente_cliente_seq    SEQUENCE     w   CREATE SEQUENCE supleente_cliente_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.supleente_cliente_seq;
       public       postgres    false    189    6            n           0    0    supleente_cliente_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE supleente_cliente_seq OWNED BY supleente.cliente;
            public       postgres    false    188            �            1259    41233    supleente_supleente_seq    SEQUENCE     y   CREATE SEQUENCE supleente_supleente_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.supleente_supleente_seq;
       public       postgres    false    189    6            o           0    0    supleente_supleente_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE supleente_supleente_seq OWNED BY supleente.supleente;
            public       postgres    false    186            �            1259    41235    supleente_suplemento_seq    SEQUENCE     z   CREATE SEQUENCE supleente_suplemento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.supleente_suplemento_seq;
       public       postgres    false    189    6            p           0    0    supleente_suplemento_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE supleente_suplemento_seq OWNED BY supleente.suplemento;
            public       postgres    false    187            �            1259    41221 
   suplemento    TABLE     �   CREATE TABLE suplemento (
    nome_suple character varying(100) NOT NULL,
    suplemento integer NOT NULL,
    quantidade integer NOT NULL,
    categoria integer NOT NULL
);
    DROP TABLE public.suplemento;
       public         postgres    false    6            �            1259    41219    suplemento_categoria_seq    SEQUENCE     z   CREATE SEQUENCE suplemento_categoria_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.suplemento_categoria_seq;
       public       postgres    false    185    6            q           0    0    suplemento_categoria_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE suplemento_categoria_seq OWNED BY suplemento.categoria;
            public       postgres    false    184            �            1259    41217    suplemento_suplemento_seq    SEQUENCE     {   CREATE SEQUENCE suplemento_suplemento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.suplemento_suplemento_seq;
       public       postgres    false    185    6            r           0    0    suplemento_suplemento_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE suplemento_suplemento_seq OWNED BY suplemento.suplemento;
            public       postgres    false    183            �           2604    41214 	   categoria    DEFAULT     l   ALTER TABLE ONLY categoria ALTER COLUMN categoria SET DEFAULT nextval('categoria_categoria_seq'::regclass);
 B   ALTER TABLE public.categoria ALTER COLUMN categoria DROP DEFAULT;
       public       postgres    false    182    181    182            �           2604    41260    cliente    DEFAULT     d   ALTER TABLE ONLY cliente ALTER COLUMN cliente SET DEFAULT nextval('cliente_cliente_seq'::regclass);
 >   ALTER TABLE public.cliente ALTER COLUMN cliente DROP DEFAULT;
       public       postgres    false    190    191    191            �           2604    41242 	   supleente    DEFAULT     l   ALTER TABLE ONLY supleente ALTER COLUMN supleente SET DEFAULT nextval('supleente_supleente_seq'::regclass);
 B   ALTER TABLE public.supleente ALTER COLUMN supleente DROP DEFAULT;
       public       postgres    false    186    189    189            �           2604    41243 
   suplemento    DEFAULT     n   ALTER TABLE ONLY supleente ALTER COLUMN suplemento SET DEFAULT nextval('supleente_suplemento_seq'::regclass);
 C   ALTER TABLE public.supleente ALTER COLUMN suplemento DROP DEFAULT;
       public       postgres    false    187    189    189            �           2604    41244    cliente    DEFAULT     h   ALTER TABLE ONLY supleente ALTER COLUMN cliente SET DEFAULT nextval('supleente_cliente_seq'::regclass);
 @   ALTER TABLE public.supleente ALTER COLUMN cliente DROP DEFAULT;
       public       postgres    false    188    189    189            �           2604    41224 
   suplemento    DEFAULT     p   ALTER TABLE ONLY suplemento ALTER COLUMN suplemento SET DEFAULT nextval('suplemento_suplemento_seq'::regclass);
 D   ALTER TABLE public.suplemento ALTER COLUMN suplemento DROP DEFAULT;
       public       postgres    false    183    185    185            �           2604    41225 	   categoria    DEFAULT     n   ALTER TABLE ONLY suplemento ALTER COLUMN categoria SET DEFAULT nextval('suplemento_categoria_seq'::regclass);
 C   ALTER TABLE public.suplemento ALTER COLUMN categoria DROP DEFAULT;
       public       postgres    false    185    184    185            Z          0    41211 	   categoria 
   TABLE DATA               7   COPY categoria (categoria, nome_categoria) FROM stdin;
    public       postgres    false    182   �3       s           0    0    categoria_categoria_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('categoria_categoria_seq', 28, true);
            public       postgres    false    181            c          0    41257    cliente 
   TABLE DATA               0   COPY cliente (nome, email, cliente) FROM stdin;
    public       postgres    false    191   ;4       t           0    0    cliente_cliente_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('cliente_cliente_seq', 1, false);
            public       postgres    false    190            a          0    41239 	   supleente 
   TABLE DATA               S   COPY supleente (supleente, comentario, avaliacao, suplemento, cliente) FROM stdin;
    public       postgres    false    189   X4       u           0    0    supleente_cliente_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('supleente_cliente_seq', 1, false);
            public       postgres    false    188            v           0    0    supleente_supleente_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('supleente_supleente_seq', 1, false);
            public       postgres    false    186            w           0    0    supleente_suplemento_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('supleente_suplemento_seq', 1, false);
            public       postgres    false    187            ]          0    41221 
   suplemento 
   TABLE DATA               L   COPY suplemento (nome_suple, suplemento, quantidade, categoria) FROM stdin;
    public       postgres    false    185   u4       x           0    0    suplemento_categoria_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('suplemento_categoria_seq', 1, false);
            public       postgres    false    184            y           0    0    suplemento_suplemento_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('suplemento_suplemento_seq', 1, false);
            public       postgres    false    183            �           2606    41216    categoria_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (categoria);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public         postgres    false    182    182            �           2606    41262    cliente_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (cliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public         postgres    false    191    191            �           2606    41249    supleente_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY supleente
    ADD CONSTRAINT supleente_pkey PRIMARY KEY (supleente);
 B   ALTER TABLE ONLY public.supleente DROP CONSTRAINT supleente_pkey;
       public         postgres    false    189    189            �           2606    41227    suplemento_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY suplemento
    ADD CONSTRAINT suplemento_pkey PRIMARY KEY (suplemento);
 D   ALTER TABLE ONLY public.suplemento DROP CONSTRAINT suplemento_pkey;
       public         postgres    false    185    185            �           2606    41250    supleente_suplemento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY supleente
    ADD CONSTRAINT supleente_suplemento_fkey FOREIGN KEY (suplemento) REFERENCES suplemento(suplemento);
 M   ALTER TABLE ONLY public.supleente DROP CONSTRAINT supleente_suplemento_fkey;
       public       postgres    false    2016    189    185            �           2606    41228    suplemento_categoria_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY suplemento
    ADD CONSTRAINT suplemento_categoria_fkey FOREIGN KEY (categoria) REFERENCES categoria(categoria);
 N   ALTER TABLE ONLY public.suplemento DROP CONSTRAINT suplemento_categoria_fkey;
       public       postgres    false    185    182    2014            Z   Z   x�32��H��22�t�I*���K�22�t.JM,�M9=2R��so.�L��22�tJNʘs����^����/-)�/����� ���      c      x������ � �      a      x������ � �      ]      x������ � �     