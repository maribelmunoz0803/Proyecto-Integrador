PGDMP                          {         
   latratoria    15.3    15.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16700 
   latratoria    DATABASE     }   CREATE DATABASE latratoria WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE latratoria;
                postgres    false            �            1259    16795 	   ambientes    TABLE     m   CREATE TABLE public.ambientes (
    idambiente integer NOT NULL,
    nombreambiente character varying(20)
);
    DROP TABLE public.ambientes;
       public         heap    postgres    false            �            1259    16794    ambientes_idambiente_seq    SEQUENCE     �   CREATE SEQUENCE public.ambientes_idambiente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.ambientes_idambiente_seq;
       public          postgres    false    217                       0    0    ambientes_idambiente_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.ambientes_idambiente_seq OWNED BY public.ambientes.idambiente;
          public          postgres    false    216            �            1259    16788 
   comensales    TABLE        CREATE TABLE public.comensales (
    idcedula integer NOT NULL,
    nombre character varying(20),
    apellido character varying(20),
    telefono character varying(10),
    correo character varying(50),
    descripciondealergias character varying(200)
);
    DROP TABLE public.comensales;
       public         heap    postgres    false            �            1259    16787    comensales_idcedula_seq    SEQUENCE     �   CREATE SEQUENCE public.comensales_idcedula_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.comensales_idcedula_seq;
       public          postgres    false    215                       0    0    comensales_idcedula_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.comensales_idcedula_seq OWNED BY public.comensales.idcedula;
          public          postgres    false    214            �            1259    16804    reservas    TABLE     �   CREATE TABLE public.reservas (
    idreserva integer NOT NULL,
    fecha date,
    cantidadepersonas integer,
    idcedula integer,
    idambiente integer
);
    DROP TABLE public.reservas;
       public         heap    postgres    false            �            1259    16803    reservas_idreserva_seq    SEQUENCE     �   CREATE SEQUENCE public.reservas_idreserva_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.reservas_idreserva_seq;
       public          postgres    false    219                       0    0    reservas_idreserva_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.reservas_idreserva_seq OWNED BY public.reservas.idreserva;
          public          postgres    false    218            p           2604    16798    ambientes idambiente    DEFAULT     |   ALTER TABLE ONLY public.ambientes ALTER COLUMN idambiente SET DEFAULT nextval('public.ambientes_idambiente_seq'::regclass);
 C   ALTER TABLE public.ambientes ALTER COLUMN idambiente DROP DEFAULT;
       public          postgres    false    217    216    217            o           2604    16791    comensales idcedula    DEFAULT     z   ALTER TABLE ONLY public.comensales ALTER COLUMN idcedula SET DEFAULT nextval('public.comensales_idcedula_seq'::regclass);
 B   ALTER TABLE public.comensales ALTER COLUMN idcedula DROP DEFAULT;
       public          postgres    false    215    214    215            q           2604    16807    reservas idreserva    DEFAULT     x   ALTER TABLE ONLY public.reservas ALTER COLUMN idreserva SET DEFAULT nextval('public.reservas_idreserva_seq'::regclass);
 A   ALTER TABLE public.reservas ALTER COLUMN idreserva DROP DEFAULT;
       public          postgres    false    218    219    219                      0    16795 	   ambientes 
   TABLE DATA           ?   COPY public.ambientes (idambiente, nombreambiente) FROM stdin;
    public          postgres    false    217   j       	          0    16788 
   comensales 
   TABLE DATA           i   COPY public.comensales (idcedula, nombre, apellido, telefono, correo, descripciondealergias) FROM stdin;
    public          postgres    false    215   �                 0    16804    reservas 
   TABLE DATA           ]   COPY public.reservas (idreserva, fecha, cantidadepersonas, idcedula, idambiente) FROM stdin;
    public          postgres    false    219   M                   0    0    ambientes_idambiente_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.ambientes_idambiente_seq', 3, true);
          public          postgres    false    216                       0    0    comensales_idcedula_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.comensales_idcedula_seq', 1, false);
          public          postgres    false    214                       0    0    reservas_idreserva_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.reservas_idreserva_seq', 13, true);
          public          postgres    false    218            u           2606    16802    ambientes ambientes_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.ambientes
    ADD CONSTRAINT ambientes_pkey PRIMARY KEY (idambiente);
 B   ALTER TABLE ONLY public.ambientes DROP CONSTRAINT ambientes_pkey;
       public            postgres    false    217            s           2606    16793    comensales comensales_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.comensales
    ADD CONSTRAINT comensales_pkey PRIMARY KEY (idcedula);
 D   ALTER TABLE ONLY public.comensales DROP CONSTRAINT comensales_pkey;
       public            postgres    false    215            w           2606    16809    reservas reservas_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.reservas
    ADD CONSTRAINT reservas_pkey PRIMARY KEY (idreserva);
 @   ALTER TABLE ONLY public.reservas DROP CONSTRAINT reservas_pkey;
       public            postgres    false    219            x           2606    16815 !   reservas reservas_idambiente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservas
    ADD CONSTRAINT reservas_idambiente_fkey FOREIGN KEY (idambiente) REFERENCES public.ambientes(idambiente);
 K   ALTER TABLE ONLY public.reservas DROP CONSTRAINT reservas_idambiente_fkey;
       public          postgres    false    219    217    3189            y           2606    16810    reservas reservas_idcedula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservas
    ADD CONSTRAINT reservas_idcedula_fkey FOREIGN KEY (idcedula) REFERENCES public.comensales(idcedula);
 I   ALTER TABLE ONLY public.reservas DROP CONSTRAINT reservas_idcedula_fkey;
       public          postgres    false    219    3187    215               )   x�3�tN�+��K�2�I-*J��J�2�t.M���qqq ��	�      	   �  x���;n�0���)tA���l'A�l�:͈�w)�$L��o�3�b!���F��3���DLlGFܚ�0��SIE��_�J(N�dp��~Y�\�����2X_0�:���sG*��J%���ʏ��"%�T������K�Oo`1�Kɶq�T�#�O��e��m%�L�L����ѣ��{B���/_��&l���l�5����8���%&m_!o��{L	+�2��)������Ũ���`i�?-�3M�4SƅT��0��#����ϒM��ǚYpk!�y��N����_�o[���Ǉ��t���ӫ�)�gX=����/	0!iK��]U�ǊL��������RB�Tmi�K�L�JR��p�>��؝n�Ȗ�
����`��kL����uIU��]���<�i         [   x�M���@�7�r����:�,9����cY-si�3̈����
�L�&2�8���y�չ���x�������w��KU��V     