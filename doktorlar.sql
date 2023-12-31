PGDMP      .    	            {            hastane    15.5    16.0     !           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            "           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            #           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            $           1262    16430    hastane    DATABASE     i   CREATE DATABASE hastane WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE hastane;
                postgres    false            �            1259    16631 	   doktorlar    TABLE     R  CREATE TABLE public.doktorlar (
    doktor_id integer NOT NULL,
    doktor_tc character varying(11) NOT NULL,
    doktor_adi character varying(30) NOT NULL,
    doktor_soyadi character varying(30) NOT NULL,
    doktor_brans character varying(20) NOT NULL,
    doktor_telefon character varying(11) NOT NULL,
    oda_no integer NOT NULL
);
    DROP TABLE public.doktorlar;
       public         heap    postgres    false            �            1259    16630    doktorlar_doktor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.doktorlar_doktor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.doktorlar_doktor_id_seq;
       public          postgres    false    220            %           0    0    doktorlar_doktor_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.doktorlar_doktor_id_seq OWNED BY public.doktorlar.doktor_id;
          public          postgres    false    219            �           2604    16634    doktorlar doktor_id    DEFAULT     z   ALTER TABLE ONLY public.doktorlar ALTER COLUMN doktor_id SET DEFAULT nextval('public.doktorlar_doktor_id_seq'::regclass);
 B   ALTER TABLE public.doktorlar ALTER COLUMN doktor_id DROP DEFAULT;
       public          postgres    false    219    220    220                      0    16631 	   doktorlar 
   TABLE DATA           z   COPY public.doktorlar (doktor_id, doktor_tc, doktor_adi, doktor_soyadi, doktor_brans, doktor_telefon, oda_no) FROM stdin;
    public          postgres    false    220   �       &           0    0    doktorlar_doktor_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.doktorlar_doktor_id_seq', 6, true);
          public          postgres    false    219            �           2606    16636    doktorlar doktorlar_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.doktorlar
    ADD CONSTRAINT doktorlar_pkey PRIMARY KEY (doktor_tc, doktor_id);
 B   ALTER TABLE ONLY public.doktorlar DROP CONSTRAINT doktorlar_pkey;
       public            postgres    false    220    220            �           2606    16670    doktorlar uq_hizmetli_doktor_id 
   CONSTRAINT     _   ALTER TABLE ONLY public.doktorlar
    ADD CONSTRAINT uq_hizmetli_doktor_id UNIQUE (doktor_id);
 I   ALTER TABLE ONLY public.doktorlar DROP CONSTRAINT uq_hizmetli_doktor_id;
       public            postgres    false    220            �           2606    16638    doktorlar sahiplik    FK CONSTRAINT     u   ALTER TABLE ONLY public.doktorlar
    ADD CONSTRAINT sahiplik FOREIGN KEY (oda_no) REFERENCES public.odalar(oda_no);
 <   ALTER TABLE ONLY public.doktorlar DROP CONSTRAINT sahiplik;
       public          postgres    false    220               _   x�3�442�!���T *,!NFp6�j###.3NS3ss3SSs3s3N��{�S+3�Rsr3rKS8�lLN,�tN-*J� �h7�6����� 7%�     