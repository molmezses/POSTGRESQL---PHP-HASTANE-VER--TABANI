PGDMP      /    	            {            hastane    15.5    16.0                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            !           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            "           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            #           1262    16430    hastane    DATABASE     i   CREATE DATABASE hastane WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE hastane;
                postgres    false            �            1259    16588    hizmetli    TABLE     �   CREATE TABLE public.hizmetli (
    gorevli_id integer NOT NULL,
    tc character varying(11) NOT NULL,
    hizmetli_adi character varying(30) NOT NULL,
    hizmetli_soyadi character varying(30) NOT NULL
);
    DROP TABLE public.hizmetli;
       public         heap    postgres    false            �            1259    16587    hizmetli_gorevli_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hizmetli_gorevli_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.hizmetli_gorevli_id_seq;
       public          postgres    false    218            $           0    0    hizmetli_gorevli_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.hizmetli_gorevli_id_seq OWNED BY public.hizmetli.gorevli_id;
          public          postgres    false    217            �           2604    16591    hizmetli gorevli_id    DEFAULT     z   ALTER TABLE ONLY public.hizmetli ALTER COLUMN gorevli_id SET DEFAULT nextval('public.hizmetli_gorevli_id_seq'::regclass);
 B   ALTER TABLE public.hizmetli ALTER COLUMN gorevli_id DROP DEFAULT;
       public          postgres    false    218    217    218                      0    16588    hizmetli 
   TABLE DATA           Q   COPY public.hizmetli (gorevli_id, tc, hizmetli_adi, hizmetli_soyadi) FROM stdin;
    public          postgres    false    218   �       %           0    0    hizmetli_gorevli_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.hizmetli_gorevli_id_seq', 4, true);
          public          postgres    false    217            �           2606    16593    hizmetli hizmetli_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.hizmetli
    ADD CONSTRAINT hizmetli_pkey PRIMARY KEY (gorevli_id, tc);
 @   ALTER TABLE ONLY public.hizmetli DROP CONSTRAINT hizmetli_pkey;
       public            postgres    false    218    218            �           2606    16599    hizmetli uq_hizmetli_gorevli_id 
   CONSTRAINT     `   ALTER TABLE ONLY public.hizmetli
    ADD CONSTRAINT uq_hizmetli_gorevli_id UNIQUE (gorevli_id);
 I   ALTER TABLE ONLY public.hizmetli DROP CONSTRAINT uq_hizmetli_gorevli_id;
       public            postgres    false    218               b   x�3�442�!�Č��Σ�32󸌡R&�f�����qF&V٘|d#�	������������oiFb.P��oiqIbZ�PyNnjUqj1W� �2     