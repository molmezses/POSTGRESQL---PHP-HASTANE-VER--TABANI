PGDMP  *    /    	            {            hastane    15.5    16.0                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            !           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            "           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            #           1262    16430    hastane    DATABASE     i   CREATE DATABASE hastane WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE hastane;
                postgres    false            �            1259    16672    muayene    TABLE     �   CREATE TABLE public.muayene (
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
       public          postgres    false    222            $           0    0    muayene_muayene_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.muayene_muayene_id_seq OWNED BY public.muayene.muayene_id;
          public          postgres    false    221            �           2604    16675    muayene muayene_id    DEFAULT     x   ALTER TABLE ONLY public.muayene ALTER COLUMN muayene_id SET DEFAULT nextval('public.muayene_muayene_id_seq'::regclass);
 A   ALTER TABLE public.muayene ALTER COLUMN muayene_id DROP DEFAULT;
       public          postgres    false    222    221    222                      0    16672    muayene 
   TABLE DATA           J   COPY public.muayene (muayene_id, hasta_id, doktor_id, tedavi) FROM stdin;
    public          postgres    false    222   �       %           0    0    muayene_muayene_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.muayene_muayene_id_seq', 13, true);
          public          postgres    false    221            �           2606    16677    muayene muayene_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.muayene
    ADD CONSTRAINT muayene_pkey PRIMARY KEY (muayene_id);
 >   ALTER TABLE ONLY public.muayene DROP CONSTRAINT muayene_pkey;
       public            postgres    false    222            �           2606    16683    muayene muayene_doktor_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.muayene
    ADD CONSTRAINT muayene_doktor_id_fkey FOREIGN KEY (doktor_id) REFERENCES public.doktorlar(doktor_id);
 H   ALTER TABLE ONLY public.muayene DROP CONSTRAINT muayene_doktor_id_fkey;
       public          postgres    false    222            �           2606    16678    muayene muayene_hasta_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.muayene
    ADD CONSTRAINT muayene_hasta_id_fkey FOREIGN KEY (hasta_id) REFERENCES public.hasta(hasta_id);
 G   ALTER TABLE ONLY public.muayene DROP CONSTRAINT muayene_hasta_id_fkey;
       public          postgres    false    222               �   x�3�46�4�t/�,P��IL>�Q�$5%�,�8S�˄�ؐӔ3���4O�2����\ JI�S��/*��MDRkJ�Z3�����))�i\��d�%�����V�eh��5D��r�A�1��I,K�+I:��|�׸b���� eII�     