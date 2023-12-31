PGDMP      0    	            {            hastane    15.5    16.0                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            !           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            "           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            #           1262    16430    hastane    DATABASE     i   CREATE DATABASE hastane WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE hastane;
                postgres    false            �            1259    16712 	   receteler    TABLE     �   CREATE TABLE public.receteler (
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
       public          postgres    false    224            $           0    0    receteler_recete_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.receteler_recete_id_seq OWNED BY public.receteler.recete_id;
          public          postgres    false    223            �           2604    16715    receteler recete_id    DEFAULT     z   ALTER TABLE ONLY public.receteler ALTER COLUMN recete_id SET DEFAULT nextval('public.receteler_recete_id_seq'::regclass);
 B   ALTER TABLE public.receteler ALTER COLUMN recete_id DROP DEFAULT;
       public          postgres    false    224    223    224                      0    16712 	   receteler 
   TABLE DATA           Q   COPY public.receteler (recete_id, ilac_kodu, recete_sahibi_hasta_tc) FROM stdin;
    public          postgres    false    224   �       %           0    0    receteler_recete_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.receteler_recete_id_seq', 2, true);
          public          postgres    false    223            �           2606    16717    receteler receteler_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.receteler
    ADD CONSTRAINT receteler_pkey PRIMARY KEY (recete_id);
 B   ALTER TABLE ONLY public.receteler DROP CONSTRAINT receteler_pkey;
       public            postgres    false    224            �           2606    16718    receteler fk_recete_hasta    FK CONSTRAINT     �   ALTER TABLE ONLY public.receteler
    ADD CONSTRAINT fk_recete_hasta FOREIGN KEY (recete_sahibi_hasta_tc) REFERENCES public.hasta(hasta_tc);
 C   ALTER TABLE ONLY public.receteler DROP CONSTRAINT fk_recete_hasta;
       public          postgres    false    224            �           2606    16732    receteler fk_receteler_ilaclar    FK CONSTRAINT     �   ALTER TABLE ONLY public.receteler
    ADD CONSTRAINT fk_receteler_ilaclar FOREIGN KEY (ilac_kodu) REFERENCES public.ilaclar(ilac_kodu);
 H   ALTER TABLE ONLY public.receteler DROP CONSTRAINT fk_receteler_ilaclar;
       public          postgres    false    224                  x�3�4�416345�03�0����� '{p     