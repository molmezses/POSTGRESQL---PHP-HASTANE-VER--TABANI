PGDMP      1    	            {            hastane    15.5    16.0 
                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            !           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            "           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            #           1262    16430    hastane    DATABASE     i   CREATE DATABASE hastane WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE hastane;
                postgres    false            �            1259    16570    odalar    TABLE     �   CREATE TABLE public.odalar (
    oda_no integer NOT NULL,
    dahili_no character varying(6) NOT NULL,
    gorevli_id integer,
    hasta_id integer
);
    DROP TABLE public.odalar;
       public         heap    postgres    false                      0    16570    odalar 
   TABLE DATA           I   COPY public.odalar (oda_no, dahili_no, gorevli_id, hasta_id) FROM stdin;
    public          postgres    false    216   @
       �           2606    16574    odalar odalar_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.odalar
    ADD CONSTRAINT odalar_pkey PRIMARY KEY (oda_no);
 <   ALTER TABLE ONLY public.odalar DROP CONSTRAINT odalar_pkey;
       public            postgres    false    216            �           2606    16618    odalar odalar_uniq 
   CONSTRAINT     O   ALTER TABLE ONLY public.odalar
    ADD CONSTRAINT odalar_uniq UNIQUE (oda_no);
 <   ALTER TABLE ONLY public.odalar DROP CONSTRAINT odalar_uniq;
       public            postgres    false    216            �           2606    16600    odalar fk_odalar_gorevli    FK CONSTRAINT     �   ALTER TABLE ONLY public.odalar
    ADD CONSTRAINT fk_odalar_gorevli FOREIGN KEY (gorevli_id) REFERENCES public.hizmetli(gorevli_id);
 B   ALTER TABLE ONLY public.odalar DROP CONSTRAINT fk_odalar_gorevli;
       public          postgres    false    216            �           2606    16607    odalar fk_odalar_hasta    FK CONSTRAINT     |   ALTER TABLE ONLY public.odalar
    ADD CONSTRAINT fk_odalar_hasta FOREIGN KEY (hasta_id) REFERENCES public.hasta(hasta_id);
 @   ALTER TABLE ONLY public.odalar DROP CONSTRAINT fk_odalar_hasta;
       public          postgres    false    216               .   x��� 0��7���?��<�h��vs&���C�$}��4     