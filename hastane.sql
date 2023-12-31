PGDMP  0    :                 {            hastane    15.5    16.0 H    _           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            `           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            a           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            b           1262    16430    hastane    DATABASE     i   CREATE DATABASE hastane WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
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
       public          postgres    false    220            c           0    0    doktorlar_doktor_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.doktorlar_doktor_id_seq OWNED BY public.doktorlar.doktor_id;
          public          postgres    false    219            �            1259    16508    hasta    TABLE     �  CREATE TABLE public.hasta (
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
       public          postgres    false    215            d           0    0    hasta_hasta_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.hasta_hasta_id_seq OWNED BY public.hasta.hasta_id;
          public          postgres    false    214            �            1259    16761    hemsire    TABLE     *  CREATE TABLE public.hemsire (
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
       public          postgres    false    228            e           0    0    hemsire_hemsire_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.hemsire_hemsire_id_seq OWNED BY public.hemsire.hemsire_id;
          public          postgres    false    227            �            1259    16588    hizmetli    TABLE     �   CREATE TABLE public.hizmetli (
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
       public          postgres    false    218            f           0    0    hizmetli_gorevli_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.hizmetli_gorevli_id_seq OWNED BY public.hizmetli.gorevli_id;
          public          postgres    false    217            �            1259    16724    ilaclar    TABLE     x   CREATE TABLE public.ilaclar (
    ilac_kodu integer NOT NULL,
    ilac_adi character varying(255),
    aciklama text
);
    DROP TABLE public.ilaclar;
       public         heap    postgres    false            �            1259    16723    ilaclar_ilac_kodu_seq    SEQUENCE     �   CREATE SEQUENCE public.ilaclar_ilac_kodu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.ilaclar_ilac_kodu_seq;
       public          postgres    false    226            g           0    0    ilaclar_ilac_kodu_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.ilaclar_ilac_kodu_seq OWNED BY public.ilaclar.ilac_kodu;
          public          postgres    false    225            �            1259    16672    muayene    TABLE     �   CREATE TABLE public.muayene (
    muayene_id integer NOT NULL,
    hasta_id integer,
    doktor_id integer,
    tedavi character varying(255)
);
    DROP TABLE public.muayene;
       public         heap    postgres    false            �            1259    16671    muayene_muayene_id_seq    SEQUENCE     �   CREATE SEQUENCE public.muayene_muayene_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.muayene_muayene_id_seq;
       public          postgres    false    222            h           0    0    muayene_muayene_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.muayene_muayene_id_seq OWNED BY public.muayene.muayene_id;
          public          postgres    false    221            �            1259    16570    odalar    TABLE     �   CREATE TABLE public.odalar (
    oda_no integer NOT NULL,
    dahili_no character varying(6) NOT NULL,
    gorevli_id integer,
    hasta_id integer
);
    DROP TABLE public.odalar;
       public         heap    postgres    false            �            1259    16712 	   receteler    TABLE     �   CREATE TABLE public.receteler (
    recete_id integer NOT NULL,
    ilac_kodu integer NOT NULL,
    recete_sahibi_hasta_tc bigint NOT NULL
);
    DROP TABLE public.receteler;
       public         heap    postgres    false            �            1259    16711    receteler_recete_id_seq    SEQUENCE     �   CREATE SEQUENCE public.receteler_recete_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.receteler_recete_id_seq;
       public          postgres    false    224            i           0    0    receteler_recete_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.receteler_recete_id_seq OWNED BY public.receteler.recete_id;
          public          postgres    false    223            �           2604    16634    doktorlar doktor_id    DEFAULT     z   ALTER TABLE ONLY public.doktorlar ALTER COLUMN doktor_id SET DEFAULT nextval('public.doktorlar_doktor_id_seq'::regclass);
 B   ALTER TABLE public.doktorlar ALTER COLUMN doktor_id DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    16511    hasta hasta_id    DEFAULT     p   ALTER TABLE ONLY public.hasta ALTER COLUMN hasta_id SET DEFAULT nextval('public.hasta_hasta_id_seq'::regclass);
 =   ALTER TABLE public.hasta ALTER COLUMN hasta_id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    16764    hemsire hemsire_id    DEFAULT     x   ALTER TABLE ONLY public.hemsire ALTER COLUMN hemsire_id SET DEFAULT nextval('public.hemsire_hemsire_id_seq'::regclass);
 A   ALTER TABLE public.hemsire ALTER COLUMN hemsire_id DROP DEFAULT;
       public          postgres    false    228    227    228            �           2604    16591    hizmetli gorevli_id    DEFAULT     z   ALTER TABLE ONLY public.hizmetli ALTER COLUMN gorevli_id SET DEFAULT nextval('public.hizmetli_gorevli_id_seq'::regclass);
 B   ALTER TABLE public.hizmetli ALTER COLUMN gorevli_id DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    16727    ilaclar ilac_kodu    DEFAULT     v   ALTER TABLE ONLY public.ilaclar ALTER COLUMN ilac_kodu SET DEFAULT nextval('public.ilaclar_ilac_kodu_seq'::regclass);
 @   ALTER TABLE public.ilaclar ALTER COLUMN ilac_kodu DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    16675    muayene muayene_id    DEFAULT     x   ALTER TABLE ONLY public.muayene ALTER COLUMN muayene_id SET DEFAULT nextval('public.muayene_muayene_id_seq'::regclass);
 A   ALTER TABLE public.muayene ALTER COLUMN muayene_id DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    16715    receteler recete_id    DEFAULT     z   ALTER TABLE ONLY public.receteler ALTER COLUMN recete_id SET DEFAULT nextval('public.receteler_recete_id_seq'::regclass);
 B   ALTER TABLE public.receteler ALTER COLUMN recete_id DROP DEFAULT;
       public          postgres    false    224    223    224            T          0    16631 	   doktorlar 
   TABLE DATA           z   COPY public.doktorlar (doktor_id, doktor_tc, doktor_adi, doktor_soyadi, doktor_brans, doktor_telefon, oda_no) FROM stdin;
    public          postgres    false    220   �U       O          0    16508    hasta 
   TABLE DATA           �   COPY public.hasta (hasta_id, hasta_tc, hasta_adi, hasta_soyadi, hasta_telefon, klinik, hasta_adres, randevu_gun, randevu_saat, taburcu_tarih, hemsire_id) FROM stdin;
    public          postgres    false    215   V       \          0    16761    hemsire 
   TABLE DATA           v   COPY public.hemsire (hemsire_id, hemsire_tc, hemsire_adi, hemsire_soyadi, hemsire_adres, hemsire_telefon) FROM stdin;
    public          postgres    false    228   uW       R          0    16588    hizmetli 
   TABLE DATA           Q   COPY public.hizmetli (gorevli_id, tc, hizmetli_adi, hizmetli_soyadi) FROM stdin;
    public          postgres    false    218   �W       Z          0    16724    ilaclar 
   TABLE DATA           @   COPY public.ilaclar (ilac_kodu, ilac_adi, aciklama) FROM stdin;
    public          postgres    false    226   \X       V          0    16672    muayene 
   TABLE DATA           J   COPY public.muayene (muayene_id, hasta_id, doktor_id, tedavi) FROM stdin;
    public          postgres    false    222   �X       P          0    16570    odalar 
   TABLE DATA           I   COPY public.odalar (oda_no, dahili_no, gorevli_id, hasta_id) FROM stdin;
    public          postgres    false    216   EY       X          0    16712 	   receteler 
   TABLE DATA           Q   COPY public.receteler (recete_id, ilac_kodu, recete_sahibi_hasta_tc) FROM stdin;
    public          postgres    false    224   �Y       j           0    0    doktorlar_doktor_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.doktorlar_doktor_id_seq', 6, true);
          public          postgres    false    219            k           0    0    hasta_hasta_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hasta_hasta_id_seq', 43, true);
          public          postgres    false    214            l           0    0    hemsire_hemsire_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.hemsire_hemsire_id_seq', 5, true);
          public          postgres    false    227            m           0    0    hizmetli_gorevli_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.hizmetli_gorevli_id_seq', 4, true);
          public          postgres    false    217            n           0    0    ilaclar_ilac_kodu_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.ilaclar_ilac_kodu_seq', 3, true);
          public          postgres    false    225            o           0    0    muayene_muayene_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.muayene_muayene_id_seq', 13, true);
          public          postgres    false    221            p           0    0    receteler_recete_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.receteler_recete_id_seq', 2, true);
          public          postgres    false    223            �           2606    16636    doktorlar doktorlar_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.doktorlar
    ADD CONSTRAINT doktorlar_pkey PRIMARY KEY (doktor_tc, doktor_id);
 B   ALTER TABLE ONLY public.doktorlar DROP CONSTRAINT doktorlar_pkey;
       public            postgres    false    220    220            �           2606    16513    hasta hasta_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.hasta
    ADD CONSTRAINT hasta_pkey PRIMARY KEY (hasta_id, hasta_tc);
 :   ALTER TABLE ONLY public.hasta DROP CONSTRAINT hasta_pkey;
       public            postgres    false    215    215            �           2606    16770    hemsire hemsire_hemsire_tc_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.hemsire
    ADD CONSTRAINT hemsire_hemsire_tc_key UNIQUE (hemsire_tc);
 H   ALTER TABLE ONLY public.hemsire DROP CONSTRAINT hemsire_hemsire_tc_key;
       public            postgres    false    228            �           2606    16768    hemsire hemsire_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.hemsire
    ADD CONSTRAINT hemsire_pkey PRIMARY KEY (hemsire_id);
 >   ALTER TABLE ONLY public.hemsire DROP CONSTRAINT hemsire_pkey;
       public            postgres    false    228            �           2606    16593    hizmetli hizmetli_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.hizmetli
    ADD CONSTRAINT hizmetli_pkey PRIMARY KEY (gorevli_id, tc);
 @   ALTER TABLE ONLY public.hizmetli DROP CONSTRAINT hizmetli_pkey;
       public            postgres    false    218    218            �           2606    16731    ilaclar ilaclar_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.ilaclar
    ADD CONSTRAINT ilaclar_pkey PRIMARY KEY (ilac_kodu);
 >   ALTER TABLE ONLY public.ilaclar DROP CONSTRAINT ilaclar_pkey;
       public            postgres    false    226            �           2606    16677    muayene muayene_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.muayene
    ADD CONSTRAINT muayene_pkey PRIMARY KEY (muayene_id);
 >   ALTER TABLE ONLY public.muayene DROP CONSTRAINT muayene_pkey;
       public            postgres    false    222            �           2606    16574    odalar odalar_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.odalar
    ADD CONSTRAINT odalar_pkey PRIMARY KEY (oda_no);
 <   ALTER TABLE ONLY public.odalar DROP CONSTRAINT odalar_pkey;
       public            postgres    false    216            �           2606    16618    odalar odalar_uniq 
   CONSTRAINT     O   ALTER TABLE ONLY public.odalar
    ADD CONSTRAINT odalar_uniq UNIQUE (oda_no);
 <   ALTER TABLE ONLY public.odalar DROP CONSTRAINT odalar_uniq;
       public            postgres    false    216            �           2606    16717    receteler receteler_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.receteler
    ADD CONSTRAINT receteler_pkey PRIMARY KEY (recete_id);
 B   ALTER TABLE ONLY public.receteler DROP CONSTRAINT receteler_pkey;
       public            postgres    false    224            �           2606    16606    hasta uq_hasta_id 
   CONSTRAINT     P   ALTER TABLE ONLY public.hasta
    ADD CONSTRAINT uq_hasta_id UNIQUE (hasta_id);
 ;   ALTER TABLE ONLY public.hasta DROP CONSTRAINT uq_hasta_id;
       public            postgres    false    215            �           2606    16696    hasta uq_hasta_uniq 
   CONSTRAINT     R   ALTER TABLE ONLY public.hasta
    ADD CONSTRAINT uq_hasta_uniq UNIQUE (hasta_tc);
 =   ALTER TABLE ONLY public.hasta DROP CONSTRAINT uq_hasta_uniq;
       public            postgres    false    215            �           2606    16772    hemsire uq_hemsire_id 
   CONSTRAINT     V   ALTER TABLE ONLY public.hemsire
    ADD CONSTRAINT uq_hemsire_id UNIQUE (hemsire_id);
 ?   ALTER TABLE ONLY public.hemsire DROP CONSTRAINT uq_hemsire_id;
       public            postgres    false    228            �           2606    16670    doktorlar uq_hizmetli_doktor_id 
   CONSTRAINT     _   ALTER TABLE ONLY public.doktorlar
    ADD CONSTRAINT uq_hizmetli_doktor_id UNIQUE (doktor_id);
 I   ALTER TABLE ONLY public.doktorlar DROP CONSTRAINT uq_hizmetli_doktor_id;
       public            postgres    false    220            �           2606    16599    hizmetli uq_hizmetli_gorevli_id 
   CONSTRAINT     `   ALTER TABLE ONLY public.hizmetli
    ADD CONSTRAINT uq_hizmetli_gorevli_id UNIQUE (gorevli_id);
 I   ALTER TABLE ONLY public.hizmetli DROP CONSTRAINT uq_hizmetli_gorevli_id;
       public            postgres    false    218            �           2606    16668    hasta uq_hizmetli_hasta_id 
   CONSTRAINT     Y   ALTER TABLE ONLY public.hasta
    ADD CONSTRAINT uq_hizmetli_hasta_id UNIQUE (hasta_id);
 D   ALTER TABLE ONLY public.hasta DROP CONSTRAINT uq_hizmetli_hasta_id;
       public            postgres    false    215            �           2606    16773    hasta bilgi_takip    FK CONSTRAINT     }   ALTER TABLE ONLY public.hasta
    ADD CONSTRAINT bilgi_takip FOREIGN KEY (hemsire_id) REFERENCES public.hemsire(hemsire_id);
 ;   ALTER TABLE ONLY public.hasta DROP CONSTRAINT bilgi_takip;
       public          postgres    false    215    228    3509            �           2606    16600    odalar fk_odalar_gorevli    FK CONSTRAINT     �   ALTER TABLE ONLY public.odalar
    ADD CONSTRAINT fk_odalar_gorevli FOREIGN KEY (gorevli_id) REFERENCES public.hizmetli(gorevli_id);
 B   ALTER TABLE ONLY public.odalar DROP CONSTRAINT fk_odalar_gorevli;
       public          postgres    false    3495    218    216            �           2606    16607    odalar fk_odalar_hasta    FK CONSTRAINT     |   ALTER TABLE ONLY public.odalar
    ADD CONSTRAINT fk_odalar_hasta FOREIGN KEY (hasta_id) REFERENCES public.hasta(hasta_id);
 @   ALTER TABLE ONLY public.odalar DROP CONSTRAINT fk_odalar_hasta;
       public          postgres    false    216    215    3483            �           2606    16718    receteler fk_recete_hasta    FK CONSTRAINT     �   ALTER TABLE ONLY public.receteler
    ADD CONSTRAINT fk_recete_hasta FOREIGN KEY (recete_sahibi_hasta_tc) REFERENCES public.hasta(hasta_tc);
 C   ALTER TABLE ONLY public.receteler DROP CONSTRAINT fk_recete_hasta;
       public          postgres    false    224    3485    215            �           2606    16732    receteler fk_receteler_ilaclar    FK CONSTRAINT     �   ALTER TABLE ONLY public.receteler
    ADD CONSTRAINT fk_receteler_ilaclar FOREIGN KEY (ilac_kodu) REFERENCES public.ilaclar(ilac_kodu);
 H   ALTER TABLE ONLY public.receteler DROP CONSTRAINT fk_receteler_ilaclar;
       public          postgres    false    226    224    3505            �           2606    16683    muayene muayene_doktor_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.muayene
    ADD CONSTRAINT muayene_doktor_id_fkey FOREIGN KEY (doktor_id) REFERENCES public.doktorlar(doktor_id);
 H   ALTER TABLE ONLY public.muayene DROP CONSTRAINT muayene_doktor_id_fkey;
       public          postgres    false    3499    222    220            �           2606    16678    muayene muayene_hasta_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.muayene
    ADD CONSTRAINT muayene_hasta_id_fkey FOREIGN KEY (hasta_id) REFERENCES public.hasta(hasta_id);
 G   ALTER TABLE ONLY public.muayene DROP CONSTRAINT muayene_hasta_id_fkey;
       public          postgres    false    215    222    3483            �           2606    16638    doktorlar sahiplik    FK CONSTRAINT     u   ALTER TABLE ONLY public.doktorlar
    ADD CONSTRAINT sahiplik FOREIGN KEY (oda_no) REFERENCES public.odalar(oda_no);
 <   ALTER TABLE ONLY public.doktorlar DROP CONSTRAINT sahiplik;
       public          postgres    false    220    216    3489            T   _   x�3�442�!���T *,!NFp6�j###.3NS3ss3SSs3s3N��{�S+3�Rsr3rKS8�lLN,�tN-*J� �h7�6����� 7%�      O   c  x��R=O�0�/��;��wv�
$Y,�V?�FʥH�CX�Y����KB۴B"��r�-�˽w��6���1�G�(�G� �Ir�΅$��=θo�D	�J� �-6.:h��2<b@����n���.S}�L�%he�1��Y60�xʠR.rߝPgS[ 5"�6�]��0c��:�bվ��L
%�b36�L'Z@���H�N�C���-�,&s�JA�	�+������r�0F?�o� ���˱�*��h��u�Ai�\_aSWE�Z�<�:``�[�"�dV�/��c��L�1Wծ)����W+�,�)���$r$;�V�f��;��� zM/�@�_�E$��Y�$_����      \   e   x�eͱ
�0���1B��t�?\
��"b����"�����Tc�c\jٰ�s�N�<��:�p�_�)��a��!�g��J;`i��SR�h��6�~����n7b4�      R   b   x�3�442�!�Č��Σ�32󸌡R&�f�����qF&V٘|d#�	������������oiFb.P��oiqIbZ�PyNnjUqj1W� �2      Z   C   x�3��M-�/�ϭL����LV�<:�$�ˈ3�8�8�8�$:26�2�,OI���*΁�tp��qqq �h�      V   �   x�3�46�4�t/�,P��IL>�Q�$5%�,�8S�˄�ؐӔ3���4O�2����\ JI�S��/*��MDRkJ�Z3�����))�i\��d�%�����V�eh��5D��r�A�1��I,K�+I:��|�׸b���� eII�      P   .   x��� 0��7���?��<�h��vs&���C�$}��4      X      x�3�4�416345�03�0����� '{p     