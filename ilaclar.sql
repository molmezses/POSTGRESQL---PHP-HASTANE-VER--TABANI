PGDMP  :    0    	            {            hastane    15.5    16.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            !           1262    16430    hastane    DATABASE     i   CREATE DATABASE hastane WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE hastane;
                postgres    false            �            1259    16724    ilaclar    TABLE     x   CREATE TABLE public.ilaclar (
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
       public          postgres    false    226            "           0    0    ilaclar_ilac_kodu_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.ilaclar_ilac_kodu_seq OWNED BY public.ilaclar.ilac_kodu;
          public          postgres    false    225            �           2604    16727    ilaclar ilac_kodu    DEFAULT     v   ALTER TABLE ONLY public.ilaclar ALTER COLUMN ilac_kodu SET DEFAULT nextval('public.ilaclar_ilac_kodu_seq'::regclass);
 @   ALTER TABLE public.ilaclar ALTER COLUMN ilac_kodu DROP DEFAULT;
       public          postgres    false    225    226    226                      0    16724    ilaclar 
   TABLE DATA           @   COPY public.ilaclar (ilac_kodu, ilac_adi, aciklama) FROM stdin;
    public          postgres    false    226   �
       #           0    0    ilaclar_ilac_kodu_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.ilaclar_ilac_kodu_seq', 3, true);
          public          postgres    false    225            �           2606    16731    ilaclar ilaclar_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.ilaclar
    ADD CONSTRAINT ilaclar_pkey PRIMARY KEY (ilac_kodu);
 >   ALTER TABLE ONLY public.ilaclar DROP CONSTRAINT ilaclar_pkey;
       public            postgres    false    226               C   x�3��M-�/�ϭL����LV�<:�$�ˈ3�8�8�8�$:26�2�,OI���*΁�tp��qqq �h�     