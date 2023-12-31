PGDMP  1    .    	            {            hastane    15.5    16.0     %           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            &           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            '           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            (           1262    16430    hastane    DATABASE     i   CREATE DATABASE hastane WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE hastane;
                postgres    false            �            1259    16508    hasta    TABLE     �  CREATE TABLE public.hasta (
    hasta_id integer NOT NULL,
    hasta_tc bigint NOT NULL,
    hasta_adi character varying(40) NOT NULL,
    hasta_soyadi character varying(40) NOT NULL,
    hasta_telefon character varying(11) NOT NULL,
    klinik character varying(30) NOT NULL,
    hasta_adres character varying(200) NOT NULL,
    randevu_gun date NOT NULL,
    randevu_saat time(6) with time zone NOT NULL,
    taburcu_tarih date NOT NULL,
    hemsire_id integer
);
    DROP TABLE public.hasta;
       public         heap    postgres    false            �            1259    16507    hasta_hasta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hasta_hasta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hasta_hasta_id_seq;
       public          postgres    false    215            )           0    0    hasta_hasta_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.hasta_hasta_id_seq OWNED BY public.hasta.hasta_id;
          public          postgres    false    214            �           2604    16511    hasta hasta_id    DEFAULT     p   ALTER TABLE ONLY public.hasta ALTER COLUMN hasta_id SET DEFAULT nextval('public.hasta_hasta_id_seq'::regclass);
 =   ALTER TABLE public.hasta ALTER COLUMN hasta_id DROP DEFAULT;
       public          postgres    false    214    215    215            "          0    16508    hasta 
   TABLE DATA           �   COPY public.hasta (hasta_id, hasta_tc, hasta_adi, hasta_soyadi, hasta_telefon, klinik, hasta_adres, randevu_gun, randevu_saat, taburcu_tarih, hemsire_id) FROM stdin;
    public          postgres    false    215   '       *           0    0    hasta_hasta_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hasta_hasta_id_seq', 43, true);
          public          postgres    false    214            �           2606    16513    hasta hasta_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.hasta
    ADD CONSTRAINT hasta_pkey PRIMARY KEY (hasta_id, hasta_tc);
 :   ALTER TABLE ONLY public.hasta DROP CONSTRAINT hasta_pkey;
       public            postgres    false    215    215            �           2606    16606    hasta uq_hasta_id 
   CONSTRAINT     P   ALTER TABLE ONLY public.hasta
    ADD CONSTRAINT uq_hasta_id UNIQUE (hasta_id);
 ;   ALTER TABLE ONLY public.hasta DROP CONSTRAINT uq_hasta_id;
       public            postgres    false    215            �           2606    16696    hasta uq_hasta_uniq 
   CONSTRAINT     R   ALTER TABLE ONLY public.hasta
    ADD CONSTRAINT uq_hasta_uniq UNIQUE (hasta_tc);
 =   ALTER TABLE ONLY public.hasta DROP CONSTRAINT uq_hasta_uniq;
       public            postgres    false    215            �           2606    16668    hasta uq_hizmetli_hasta_id 
   CONSTRAINT     Y   ALTER TABLE ONLY public.hasta
    ADD CONSTRAINT uq_hizmetli_hasta_id UNIQUE (hasta_id);
 D   ALTER TABLE ONLY public.hasta DROP CONSTRAINT uq_hizmetli_hasta_id;
       public            postgres    false    215            �           2606    16773    hasta bilgi_takip    FK CONSTRAINT     }   ALTER TABLE ONLY public.hasta
    ADD CONSTRAINT bilgi_takip FOREIGN KEY (hemsire_id) REFERENCES public.hemsire(hemsire_id);
 ;   ALTER TABLE ONLY public.hasta DROP CONSTRAINT bilgi_takip;
       public          postgres    false    215            "   c  x��R=O�0�/��;��wv�
$Y,�V?�FʥH�CX�Y����KB۴B"��r�-�˽w��6���1�G�(�G� �Ir�΅$��=θo�D	�J� �-6.:h��2<b@����n���.S}�L�%he�1��Y60�xʠR.rߝPgS[ 5"�6�]��0c��:�bվ��L
%�b36�L'Z@���H�N�C���-�,&s�JA�	�+������r�0F?�o� ���˱�*��h��u�Ai�\_aSWE�Z�<�:``�[�"�dV�/��c��L�1Wծ)����W+�,�)���$r$;�V�f��;��� zM/�@�_�E$��Y�$_����     