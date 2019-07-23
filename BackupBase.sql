PGDMP     %                    w            ProyectoFinalMP2    11.4    11.4      :           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            ;           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            <           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            =           1262    16393    ProyectoFinalMP2    DATABASE     �   CREATE DATABASE "ProyectoFinalMP2" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Colombia.1252' LC_CTYPE = 'Spanish_Colombia.1252';
 "   DROP DATABASE "ProyectoFinalMP2";
             postgres    false            >           0    0    DATABASE "ProyectoFinalMP2"    COMMENT     �   COMMENT ON DATABASE "ProyectoFinalMP2" IS 'Base de datos para el compendio de juegos para la materia Modelos de Programación II';
                  postgres    false    2877            �            1259    16507    _2048    TABLE     q   CREATE TABLE public._2048 (
    jugador character varying(40) NOT NULL,
    puntos integer DEFAULT 0 NOT NULL
);
    DROP TABLE public._2048;
       public         postgres    false            �            1259    16501 
   asteroides    TABLE     v   CREATE TABLE public.asteroides (
    jugador character varying(40) NOT NULL,
    puntos integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.asteroides;
       public         postgres    false            �            1259    16495 
   bomberman2    TABLE     v   CREATE TABLE public.bomberman2 (
    jugador character varying(40) NOT NULL,
    puntos integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.bomberman2;
       public         postgres    false            �            1259    16551    brainchallenge    TABLE     z   CREATE TABLE public.brainchallenge (
    jugador character varying(40) NOT NULL,
    puntos integer DEFAULT 0 NOT NULL
);
 "   DROP TABLE public.brainchallenge;
       public         postgres    false            �            1259    16557    breakout    TABLE     t   CREATE TABLE public.breakout (
    jugador character varying(40) NOT NULL,
    puntos integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.breakout;
       public         postgres    false            �            1259    16519 	   fairygone    TABLE     u   CREATE TABLE public.fairygone (
    jugador character varying(40) NOT NULL,
    puntos integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.fairygone;
       public         postgres    false            �            1259    16525 
   flappybird    TABLE     v   CREATE TABLE public.flappybird (
    jugador character varying(40) NOT NULL,
    puntos integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.flappybird;
       public         postgres    false            �            1259    16513    llorona    TABLE     s   CREATE TABLE public.llorona (
    jugador character varying(40) NOT NULL,
    puntos integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.llorona;
       public         postgres    false            �            1259    16570    mariojumper    TABLE     w   CREATE TABLE public.mariojumper (
    jugador character varying(40) NOT NULL,
    puntos integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.mariojumper;
       public         postgres    false            1          0    16507    _2048 
   TABLE DATA               0   COPY public._2048 (jugador, puntos) FROM stdin;
    public       postgres    false    198   y       0          0    16501 
   asteroides 
   TABLE DATA               5   COPY public.asteroides (jugador, puntos) FROM stdin;
    public       postgres    false    197   �       /          0    16495 
   bomberman2 
   TABLE DATA               5   COPY public.bomberman2 (jugador, puntos) FROM stdin;
    public       postgres    false    196   �       5          0    16551    brainchallenge 
   TABLE DATA               9   COPY public.brainchallenge (jugador, puntos) FROM stdin;
    public       postgres    false    202   �       6          0    16557    breakout 
   TABLE DATA               3   COPY public.breakout (jugador, puntos) FROM stdin;
    public       postgres    false    203           3          0    16519 	   fairygone 
   TABLE DATA               4   COPY public.fairygone (jugador, puntos) FROM stdin;
    public       postgres    false    200   m        4          0    16525 
   flappybird 
   TABLE DATA               5   COPY public.flappybird (jugador, puntos) FROM stdin;
    public       postgres    false    201   �        2          0    16513    llorona 
   TABLE DATA               2   COPY public.llorona (jugador, puntos) FROM stdin;
    public       postgres    false    199   �        7          0    16570    mariojumper 
   TABLE DATA               6   COPY public.mariojumper (jugador, puntos) FROM stdin;
    public       postgres    false    204   �        �
           2606    16512    _2048 pk__2048 
   CONSTRAINT     Q   ALTER TABLE ONLY public._2048
    ADD CONSTRAINT pk__2048 PRIMARY KEY (jugador);
 8   ALTER TABLE ONLY public._2048 DROP CONSTRAINT pk__2048;
       public         postgres    false    198            �
           2606    16506    asteroides pk_asteroides 
   CONSTRAINT     [   ALTER TABLE ONLY public.asteroides
    ADD CONSTRAINT pk_asteroides PRIMARY KEY (jugador);
 B   ALTER TABLE ONLY public.asteroides DROP CONSTRAINT pk_asteroides;
       public         postgres    false    197            �
           2606    16500    bomberman2 pk_bomberman2 
   CONSTRAINT     [   ALTER TABLE ONLY public.bomberman2
    ADD CONSTRAINT pk_bomberman2 PRIMARY KEY (jugador);
 B   ALTER TABLE ONLY public.bomberman2 DROP CONSTRAINT pk_bomberman2;
       public         postgres    false    196            �
           2606    16556     brainchallenge pk_brainchallenge 
   CONSTRAINT     c   ALTER TABLE ONLY public.brainchallenge
    ADD CONSTRAINT pk_brainchallenge PRIMARY KEY (jugador);
 J   ALTER TABLE ONLY public.brainchallenge DROP CONSTRAINT pk_brainchallenge;
       public         postgres    false    202            �
           2606    16562    breakout pk_breakout 
   CONSTRAINT     W   ALTER TABLE ONLY public.breakout
    ADD CONSTRAINT pk_breakout PRIMARY KEY (jugador);
 >   ALTER TABLE ONLY public.breakout DROP CONSTRAINT pk_breakout;
       public         postgres    false    203            �
           2606    16524    fairygone pk_fairygone 
   CONSTRAINT     Y   ALTER TABLE ONLY public.fairygone
    ADD CONSTRAINT pk_fairygone PRIMARY KEY (jugador);
 @   ALTER TABLE ONLY public.fairygone DROP CONSTRAINT pk_fairygone;
       public         postgres    false    200            �
           2606    16530    flappybird pk_flappybird 
   CONSTRAINT     [   ALTER TABLE ONLY public.flappybird
    ADD CONSTRAINT pk_flappybird PRIMARY KEY (jugador);
 B   ALTER TABLE ONLY public.flappybird DROP CONSTRAINT pk_flappybird;
       public         postgres    false    201            �
           2606    16518    llorona pk_llorona 
   CONSTRAINT     U   ALTER TABLE ONLY public.llorona
    ADD CONSTRAINT pk_llorona PRIMARY KEY (jugador);
 <   ALTER TABLE ONLY public.llorona DROP CONSTRAINT pk_llorona;
       public         postgres    false    199            �
           2606    16575    mariojumper pk_mariojumper 
   CONSTRAINT     ]   ALTER TABLE ONLY public.mariojumper
    ADD CONSTRAINT pk_mariojumper PRIMARY KEY (jugador);
 D   ALTER TABLE ONLY public.mariojumper DROP CONSTRAINT pk_mariojumper;
       public         postgres    false    204            1      x��*1V-wO�4276����� 2�*      0      x��*1V-wO�41������ )o�      /      x������ � �      5   %   x��*1V-wO�440�J-P	�R��4rb���� ��5      6   >   x�K-P	�R��4�2�5�
4-7�4�r��L6���*��
�&\.%j^�Q�f\1z\\\ ��*      3      x��*1V-wO�4����� %0�      4      x��*1V-wO�4����� %0�      2      x��*1V-wO�4������ %)�      7   #   x�s���
	/u�4��H�2̎(1������� b�)     