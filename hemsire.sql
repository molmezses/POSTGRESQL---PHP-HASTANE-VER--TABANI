PGDMP       /    	            {            hastane    15.5    16.0     "           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            #           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            $           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            %           1262    16430    hastane    DATABASE     i   CREATE DATABASE hastane WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE hastane;
                postgres    false            �            1259    16761    hemsire    TABLE     *  CREATE TABLE public.hemsire (
    hemsire_id integer NOT NULL,
    hemsire_tc character varying(11) NOT NULL,
    hemsire_adi character varying(255) NOT NULL,
    hemsire_soyadi character varying(255) NOT NULL,
    hemsire_adres text NOT NULL,
    hemsire_telefon character varying(20) NOT NULL
);
    DROP TABLE public.hemsire;
       public         heap    postgres    false            �            1259    16760    hemsire_hemsire_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hemsire_hemsire_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.hemsire_hemsire_id_seq;
       public          postgres    false    228            &           0    0    hemsire_hemsire_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.hemsire_hemsire_id_seq OWNED BY public.hemsire.hemsire_id;
          public          postgres    false    227            �           2604    16764    hemsire hemsire_id    DEFAULT     x   ALTER TABLE ONLY public.hemsire ALTER COLUMN hemsire_id SET DEFAULT nextval('public.hemsire_hemsire_id_seq'::regclass);
 A   ALTER TABLE public.hemsire ALTER COLUMN hemsire_id DROP DEFAULT;
       public          postgres    false    228    227    228                      0    16761    hemsire 
   TABLE DATA           v   COPY public.hemsire (hemsire_id, hemsire_tc, hemsire_adi, hemsire_soyadi, hemsire_adres, hemsire_telefon) FROM stdin;
    public          postgres    false    228           '           0    0    hemsire_hemsire_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.hemsire_hemsire_id_seq', 5, true);
          public          postgres    false    227            �           2606    16770    hemsire hemsire_hemsire_tc_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.hemsire
    ADD CONSTRAINT hemsire_hemsire_tc_key UNIQUE (hemsire_tc);
 H   ALTER TABLE ONLY public.hemsire DROP CONSTRAINT hemsire_hemsire_tc_key;
       public            postgres    false    228            �           2606    16768    hemsire hemsire_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.hemsire
    ADD CONSTRAINT hemsire_pkey PRIMARY KEY (hemsire_id);
 >   ALTER TABLE ONLY public.hemsire DROP CONSTRAINT hemsire_pkey;
       public            postgres    false    228            �           2606    16772    hemsire uq_hemsire_id 
   CONSTRAINT     V   ALTER TABLE ONLY public.hemsire
    ADD CONSTRAINT uq_hemsire_id UNIQUE (hemsire_id);
 ?   ALTER TABLE ONLY public.hemsire DROP CONSTRAINT uq_hemsire_id;
       public            postgres    false    228               e   x�eͱ
�0���1B��t�?\
��"b����"�����Tc�c\jٰ�s�N�<��:�p�_�)��a��!�g��J;`i��SR�h��6�~����n7b4�     