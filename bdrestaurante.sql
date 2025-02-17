PGDMP     8                    |            bdrestaurante    10.23    10.23 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16415    bdrestaurante    DATABASE     �   CREATE DATABASE bdrestaurante WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Bolivia.1252' LC_CTYPE = 'Spanish_Bolivia.1252';
    DROP DATABASE bdrestaurante;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false                       0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16897    administrativo    TABLE     �   CREATE TABLE public.administrativo (
    codadministrativo integer NOT NULL,
    codcargo integer,
    idpersonal integer,
    descripcargo character varying(50)
);
 "   DROP TABLE public.administrativo;
       public         postgres    false    3            �            1259    16895 $   administrativo_codadministrativo_seq    SEQUENCE     �   CREATE SEQUENCE public.administrativo_codadministrativo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.administrativo_codadministrativo_seq;
       public       postgres    false    3    218                       0    0 $   administrativo_codadministrativo_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.administrativo_codadministrativo_seq OWNED BY public.administrativo.codadministrativo;
            public       postgres    false    217            �            1259    16923    bebida    TABLE     w   CREATE TABLE public.bebida (
    codbeb integer NOT NULL,
    descbeb character varying(100),
    codtipbeb integer
);
    DROP TABLE public.bebida;
       public         postgres    false    3            �            1259    16921    bebida_codbeb_seq    SEQUENCE     �   CREATE SEQUENCE public.bebida_codbeb_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.bebida_codbeb_seq;
       public       postgres    false    222    3                       0    0    bebida_codbeb_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.bebida_codbeb_seq OWNED BY public.bebida.codbeb;
            public       postgres    false    221            �            1259    16889    cargo    TABLE     e   CREATE TABLE public.cargo (
    codcargo integer NOT NULL,
    descripcargo character varying(50)
);
    DROP TABLE public.cargo;
       public         postgres    false    3            �            1259    16887    cargo_codcargo_seq    SEQUENCE     �   CREATE SEQUENCE public.cargo_codcargo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.cargo_codcargo_seq;
       public       postgres    false    216    3                       0    0    cargo_codcargo_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.cargo_codcargo_seq OWNED BY public.cargo.codcargo;
            public       postgres    false    215            �            1259    16755    cliente    TABLE     5  CREATE TABLE public.cliente (
    idcliente integer NOT NULL,
    ci character varying(20),
    nombre character varying(50),
    apellidop character varying(50),
    apellidom character varying(50),
    telefono character varying(50),
    direccion character varying(50),
    correo character varying(50)
);
    DROP TABLE public.cliente;
       public         postgres    false    3            �            1259    16753    cliente_idcliente_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_idcliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.cliente_idcliente_seq;
       public       postgres    false    3    197                       0    0    cliente_idcliente_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.cliente_idcliente_seq OWNED BY public.cliente.idcliente;
            public       postgres    false    196            �            1259    17058    delivery    TABLE     �   CREATE TABLE public.delivery (
    iddelivery integer NOT NULL,
    nombre character varying(50),
    apellidop character varying(50),
    apellidom character varying(50),
    identrega integer
);
    DROP TABLE public.delivery;
       public         postgres    false    3            �            1259    17056    delivery_iddelivery_seq    SEQUENCE     �   CREATE SEQUENCE public.delivery_iddelivery_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.delivery_iddelivery_seq;
       public       postgres    false    235    3                       0    0    delivery_iddelivery_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.delivery_iddelivery_seq OWNED BY public.delivery.iddelivery;
            public       postgres    false    234            �            1259    16960    detalleventabebidadirecta    TABLE     �   CREATE TABLE public.detalleventabebidadirecta (
    codvendirec integer NOT NULL,
    codpresentbebida integer NOT NULL,
    codbeb integer NOT NULL
);
 -   DROP TABLE public.detalleventabebidadirecta;
       public         postgres    false    3            �            1259    16852    detalleventacomidadirec    TABLE     �   CREATE TABLE public.detalleventacomidadirec (
    codvendirec integer NOT NULL,
    codplato integer NOT NULL,
    idprogram integer NOT NULL,
    cantsol integer
);
 +   DROP TABLE public.detalleventacomidadirec;
       public         postgres    false    3            �            1259    17018    detalleventacomidapedido    TABLE     �   CREATE TABLE public.detalleventacomidapedido (
    codvenpedid integer NOT NULL,
    codplato integer NOT NULL,
    idprogram integer NOT NULL,
    cantsol integer
);
 ,   DROP TABLE public.detalleventacomidapedido;
       public         postgres    false    3            �            1259    16993    detallventabebidapedido    TABLE     �   CREATE TABLE public.detallventabebidapedido (
    codvenpedid integer NOT NULL,
    codpresent integer NOT NULL,
    codpresentbebida integer NOT NULL,
    codbeb integer NOT NULL
);
 +   DROP TABLE public.detallventabebidapedido;
       public         postgres    false    3            �            1259    17040    entregas    TABLE     �   CREATE TABLE public.entregas (
    identrega integer NOT NULL,
    codadministrativo integer,
    fechaentrega date,
    horaentrega time without time zone,
    codvenpedid integer
);
    DROP TABLE public.entregas;
       public         postgres    false    3            �            1259    17038    entregas_identrega_seq    SEQUENCE     �   CREATE SEQUENCE public.entregas_identrega_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.entregas_identrega_seq;
       public       postgres    false    233    3            	           0    0    entregas_identrega_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.entregas_identrega_seq OWNED BY public.entregas.identrega;
            public       postgres    false    232            �            1259    17088    menu    TABLE     �   CREATE TABLE public.menu (
    idmenu integer NOT NULL,
    descripcion character varying(20),
    ruta character varying(50),
    habilitado character(1)
);
    DROP TABLE public.menu;
       public         postgres    false    3            �            1259    17086    menu_idmenu_seq    SEQUENCE     �   CREATE SEQUENCE public.menu_idmenu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.menu_idmenu_seq;
       public       postgres    false    237    3            
           0    0    menu_idmenu_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.menu_idmenu_seq OWNED BY public.menu.idmenu;
            public       postgres    false    236            �            1259    17096    menuser    TABLE     �   CREATE TABLE public.menuser (
    idmenuser integer NOT NULL,
    idmenu integer,
    idmenup integer,
    descripcion character varying(20),
    ruta character varying(50),
    habilitado character(1),
    idpersonal integer
);
    DROP TABLE public.menuser;
       public         postgres    false    3            �            1259    17094    menuser_idmenuser_seq    SEQUENCE     �   CREATE SEQUENCE public.menuser_idmenuser_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.menuser_idmenuser_seq;
       public       postgres    false    3    239                       0    0    menuser_idmenuser_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.menuser_idmenuser_seq OWNED BY public.menuser.idmenuser;
            public       postgres    false    238            �            1259    16763    mesa    TABLE     �   CREATE TABLE public.mesa (
    codmesa integer NOT NULL,
    descripmes character varying(25),
    estado character varying(25),
    imagen character varying(25)
);
    DROP TABLE public.mesa;
       public         postgres    false    3            �            1259    16761    mesa_codmesa_seq    SEQUENCE     �   CREATE SEQUENCE public.mesa_codmesa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.mesa_codmesa_seq;
       public       postgres    false    199    3                       0    0    mesa_codmesa_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.mesa_codmesa_seq OWNED BY public.mesa.codmesa;
            public       postgres    false    198            �            1259    16789    mesero    TABLE     �   CREATE TABLE public.mesero (
    codmesero integer NOT NULL,
    codpersonal integer,
    codmesa integer,
    descripcion character varying(50)
);
    DROP TABLE public.mesero;
       public         postgres    false    3            �            1259    16787    mesero_codmesero_seq    SEQUENCE     �   CREATE SEQUENCE public.mesero_codmesero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.mesero_codmesero_seq;
       public       postgres    false    204    3                       0    0    mesero_codmesero_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.mesero_codmesero_seq OWNED BY public.mesero.codmesero;
            public       postgres    false    203            �            1259    16982    pedidos    TABLE     �   CREATE TABLE public.pedidos (
    codvenpedid integer NOT NULL,
    importetot numeric(10,2),
    fechapedid date,
    horapedid time without time zone,
    idcliente integer,
    estado character varying(15)
);
    DROP TABLE public.pedidos;
       public         postgres    false    3            �            1259    16980    pedidos_codvenpedid_seq    SEQUENCE     �   CREATE SEQUENCE public.pedidos_codvenpedid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.pedidos_codvenpedid_seq;
       public       postgres    false    229    3                       0    0    pedidos_codvenpedid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.pedidos_codvenpedid_seq OWNED BY public.pedidos.codvenpedid;
            public       postgres    false    228            �            1259    16776    personal    TABLE     p  CREATE TABLE public.personal (
    idpersonal integer NOT NULL,
    clave character varying(50),
    ci character varying(50),
    nombre character varying(20),
    telefono character varying(20),
    email character varying(20),
    tipoper character(3),
    avatar character varying(50),
    usrreg character varying(20),
    fechareg timestamp without time zone
);
    DROP TABLE public.personal;
       public         postgres    false    3            �            1259    16774    personal_idpersonal_seq    SEQUENCE     �   CREATE SEQUENCE public.personal_idpersonal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.personal_idpersonal_seq;
       public       postgres    false    3    202                       0    0    personal_idpersonal_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.personal_idpersonal_seq OWNED BY public.personal.idpersonal;
            public       postgres    false    201            �            1259    16833    plato    TABLE     �   CREATE TABLE public.plato (
    codplato integer NOT NULL,
    descripplat character varying(50),
    imagen character varying(25),
    precio numeric(10,2),
    codtipplato integer
);
    DROP TABLE public.plato;
       public         postgres    false    3            �            1259    16831    plato_codplato_seq    SEQUENCE     �   CREATE SEQUENCE public.plato_codplato_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.plato_codplato_seq;
       public       postgres    false    3    210                       0    0    plato_codplato_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.plato_codplato_seq OWNED BY public.plato.codplato;
            public       postgres    false    209            �            1259    16872    platoprograrn    TABLE     ~   CREATE TABLE public.platoprograrn (
    codplato integer NOT NULL,
    idprogram integer NOT NULL,
    cantprogram integer
);
 !   DROP TABLE public.platoprograrn;
       public         postgres    false    3            �            1259    16936    presentacion    TABLE     n   CREATE TABLE public.presentacion (
    codpresent integer NOT NULL,
    descpresent character varying(100)
);
     DROP TABLE public.presentacion;
       public         postgres    false    3            �            1259    16934    presentacion_codpresent_seq    SEQUENCE     �   CREATE SEQUENCE public.presentacion_codpresent_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.presentacion_codpresent_seq;
       public       postgres    false    224    3                       0    0    presentacion_codpresent_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.presentacion_codpresent_seq OWNED BY public.presentacion.codpresent;
            public       postgres    false    223            �            1259    16944    presentbebida    TABLE     �   CREATE TABLE public.presentbebida (
    codpresentbebida integer NOT NULL,
    codbeb integer,
    codpresent integer,
    cantexist integer,
    preciouniventa numeric(10,2),
    preciounicompra numeric(10,2)
);
 !   DROP TABLE public.presentbebida;
       public         postgres    false    3            �            1259    16942 "   presentbebida_codpresentbebida_seq    SEQUENCE     �   CREATE SEQUENCE public.presentbebida_codpresentbebida_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.presentbebida_codpresentbebida_seq;
       public       postgres    false    226    3                       0    0 "   presentbebida_codpresentbebida_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.presentbebida_codpresentbebida_seq OWNED BY public.presentbebida.codpresentbebida;
            public       postgres    false    225            �            1259    16846    programacion    TABLE     U   CREATE TABLE public.programacion (
    idprogram integer NOT NULL,
    fecha date
);
     DROP TABLE public.programacion;
       public         postgres    false    3            �            1259    16844    programacion_idprogram_seq    SEQUENCE     �   CREATE SEQUENCE public.programacion_idprogram_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.programacion_idprogram_seq;
       public       postgres    false    212    3                       0    0    programacion_idprogram_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.programacion_idprogram_seq OWNED BY public.programacion.idprogram;
            public       postgres    false    211            �            1259    16915 
   tipobebida    TABLE     �   CREATE TABLE public.tipobebida (
    codtipbeb integer NOT NULL,
    descripcion character varying(100),
    imagen character varying(55)
);
    DROP TABLE public.tipobebida;
       public         postgres    false    3            �            1259    16913    tipobebida_codtipbeb_seq    SEQUENCE     �   CREATE SEQUENCE public.tipobebida_codtipbeb_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tipobebida_codtipbeb_seq;
       public       postgres    false    3    220                       0    0    tipobebida_codtipbeb_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.tipobebida_codtipbeb_seq OWNED BY public.tipobebida.codtipbeb;
            public       postgres    false    219            �            1259    16769    tipopersonal    TABLE     w   CREATE TABLE public.tipopersonal (
    idtipopersonal character(3) NOT NULL,
    descripcion character varying(100)
);
     DROP TABLE public.tipopersonal;
       public         postgres    false    3            �            1259    16825 	   tipoplato    TABLE     �   CREATE TABLE public.tipoplato (
    codtipplato integer NOT NULL,
    descripplat character varying(50),
    imagen character varying(55)
);
    DROP TABLE public.tipoplato;
       public         postgres    false    3            �            1259    16823    tipoplato_codtipplato_seq    SEQUENCE     �   CREATE SEQUENCE public.tipoplato_codtipplato_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tipoplato_codtipplato_seq;
       public       postgres    false    3    208                       0    0    tipoplato_codtipplato_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.tipoplato_codtipplato_seq OWNED BY public.tipoplato.codtipplato;
            public       postgres    false    207            �            1259    16807    ventadirectacomida    TABLE     �   CREATE TABLE public.ventadirectacomida (
    codvendirec integer NOT NULL,
    importetot numeric(10,2),
    fechavent date,
    horavent time without time zone,
    idcliente integer,
    codmesero integer
);
 &   DROP TABLE public.ventadirectacomida;
       public         postgres    false    3            �            1259    16805 "   ventadirectacomida_codvendirec_seq    SEQUENCE     �   CREATE SEQUENCE public.ventadirectacomida_codvendirec_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.ventadirectacomida_codvendirec_seq;
       public       postgres    false    3    206                       0    0 "   ventadirectacomida_codvendirec_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.ventadirectacomida_codvendirec_seq OWNED BY public.ventadirectacomida.codvendirec;
            public       postgres    false    205            �
           2604    16900     administrativo codadministrativo    DEFAULT     �   ALTER TABLE ONLY public.administrativo ALTER COLUMN codadministrativo SET DEFAULT nextval('public.administrativo_codadministrativo_seq'::regclass);
 O   ALTER TABLE public.administrativo ALTER COLUMN codadministrativo DROP DEFAULT;
       public       postgres    false    217    218    218            �
           2604    16926    bebida codbeb    DEFAULT     n   ALTER TABLE ONLY public.bebida ALTER COLUMN codbeb SET DEFAULT nextval('public.bebida_codbeb_seq'::regclass);
 <   ALTER TABLE public.bebida ALTER COLUMN codbeb DROP DEFAULT;
       public       postgres    false    222    221    222            �
           2604    16892    cargo codcargo    DEFAULT     p   ALTER TABLE ONLY public.cargo ALTER COLUMN codcargo SET DEFAULT nextval('public.cargo_codcargo_seq'::regclass);
 =   ALTER TABLE public.cargo ALTER COLUMN codcargo DROP DEFAULT;
       public       postgres    false    216    215    216            �
           2604    16758    cliente idcliente    DEFAULT     v   ALTER TABLE ONLY public.cliente ALTER COLUMN idcliente SET DEFAULT nextval('public.cliente_idcliente_seq'::regclass);
 @   ALTER TABLE public.cliente ALTER COLUMN idcliente DROP DEFAULT;
       public       postgres    false    197    196    197                       2604    17061    delivery iddelivery    DEFAULT     z   ALTER TABLE ONLY public.delivery ALTER COLUMN iddelivery SET DEFAULT nextval('public.delivery_iddelivery_seq'::regclass);
 B   ALTER TABLE public.delivery ALTER COLUMN iddelivery DROP DEFAULT;
       public       postgres    false    235    234    235                       2604    17043    entregas identrega    DEFAULT     x   ALTER TABLE ONLY public.entregas ALTER COLUMN identrega SET DEFAULT nextval('public.entregas_identrega_seq'::regclass);
 A   ALTER TABLE public.entregas ALTER COLUMN identrega DROP DEFAULT;
       public       postgres    false    233    232    233                       2604    17091    menu idmenu    DEFAULT     j   ALTER TABLE ONLY public.menu ALTER COLUMN idmenu SET DEFAULT nextval('public.menu_idmenu_seq'::regclass);
 :   ALTER TABLE public.menu ALTER COLUMN idmenu DROP DEFAULT;
       public       postgres    false    237    236    237                       2604    17099    menuser idmenuser    DEFAULT     v   ALTER TABLE ONLY public.menuser ALTER COLUMN idmenuser SET DEFAULT nextval('public.menuser_idmenuser_seq'::regclass);
 @   ALTER TABLE public.menuser ALTER COLUMN idmenuser DROP DEFAULT;
       public       postgres    false    239    238    239            �
           2604    16766    mesa codmesa    DEFAULT     l   ALTER TABLE ONLY public.mesa ALTER COLUMN codmesa SET DEFAULT nextval('public.mesa_codmesa_seq'::regclass);
 ;   ALTER TABLE public.mesa ALTER COLUMN codmesa DROP DEFAULT;
       public       postgres    false    199    198    199            �
           2604    16792    mesero codmesero    DEFAULT     t   ALTER TABLE ONLY public.mesero ALTER COLUMN codmesero SET DEFAULT nextval('public.mesero_codmesero_seq'::regclass);
 ?   ALTER TABLE public.mesero ALTER COLUMN codmesero DROP DEFAULT;
       public       postgres    false    204    203    204                        2604    16985    pedidos codvenpedid    DEFAULT     z   ALTER TABLE ONLY public.pedidos ALTER COLUMN codvenpedid SET DEFAULT nextval('public.pedidos_codvenpedid_seq'::regclass);
 B   ALTER TABLE public.pedidos ALTER COLUMN codvenpedid DROP DEFAULT;
       public       postgres    false    228    229    229            �
           2604    16779    personal idpersonal    DEFAULT     z   ALTER TABLE ONLY public.personal ALTER COLUMN idpersonal SET DEFAULT nextval('public.personal_idpersonal_seq'::regclass);
 B   ALTER TABLE public.personal ALTER COLUMN idpersonal DROP DEFAULT;
       public       postgres    false    202    201    202            �
           2604    16836    plato codplato    DEFAULT     p   ALTER TABLE ONLY public.plato ALTER COLUMN codplato SET DEFAULT nextval('public.plato_codplato_seq'::regclass);
 =   ALTER TABLE public.plato ALTER COLUMN codplato DROP DEFAULT;
       public       postgres    false    210    209    210            �
           2604    16939    presentacion codpresent    DEFAULT     �   ALTER TABLE ONLY public.presentacion ALTER COLUMN codpresent SET DEFAULT nextval('public.presentacion_codpresent_seq'::regclass);
 F   ALTER TABLE public.presentacion ALTER COLUMN codpresent DROP DEFAULT;
       public       postgres    false    223    224    224            �
           2604    16947    presentbebida codpresentbebida    DEFAULT     �   ALTER TABLE ONLY public.presentbebida ALTER COLUMN codpresentbebida SET DEFAULT nextval('public.presentbebida_codpresentbebida_seq'::regclass);
 M   ALTER TABLE public.presentbebida ALTER COLUMN codpresentbebida DROP DEFAULT;
       public       postgres    false    225    226    226            �
           2604    16849    programacion idprogram    DEFAULT     �   ALTER TABLE ONLY public.programacion ALTER COLUMN idprogram SET DEFAULT nextval('public.programacion_idprogram_seq'::regclass);
 E   ALTER TABLE public.programacion ALTER COLUMN idprogram DROP DEFAULT;
       public       postgres    false    212    211    212            �
           2604    16918    tipobebida codtipbeb    DEFAULT     |   ALTER TABLE ONLY public.tipobebida ALTER COLUMN codtipbeb SET DEFAULT nextval('public.tipobebida_codtipbeb_seq'::regclass);
 C   ALTER TABLE public.tipobebida ALTER COLUMN codtipbeb DROP DEFAULT;
       public       postgres    false    220    219    220            �
           2604    16828    tipoplato codtipplato    DEFAULT     ~   ALTER TABLE ONLY public.tipoplato ALTER COLUMN codtipplato SET DEFAULT nextval('public.tipoplato_codtipplato_seq'::regclass);
 D   ALTER TABLE public.tipoplato ALTER COLUMN codtipplato DROP DEFAULT;
       public       postgres    false    207    208    208            �
           2604    16810    ventadirectacomida codvendirec    DEFAULT     �   ALTER TABLE ONLY public.ventadirectacomida ALTER COLUMN codvendirec SET DEFAULT nextval('public.ventadirectacomida_codvendirec_seq'::regclass);
 M   ALTER TABLE public.ventadirectacomida ALTER COLUMN codvendirec DROP DEFAULT;
       public       postgres    false    206    205    206            �          0    16897    administrativo 
   TABLE DATA               _   COPY public.administrativo (codadministrativo, codcargo, idpersonal, descripcargo) FROM stdin;
    public       postgres    false    218   +�       �          0    16923    bebida 
   TABLE DATA               <   COPY public.bebida (codbeb, descbeb, codtipbeb) FROM stdin;
    public       postgres    false    222   ��       �          0    16889    cargo 
   TABLE DATA               7   COPY public.cargo (codcargo, descripcargo) FROM stdin;
    public       postgres    false    216   ��       �          0    16755    cliente 
   TABLE DATA               k   COPY public.cliente (idcliente, ci, nombre, apellidop, apellidom, telefono, direccion, correo) FROM stdin;
    public       postgres    false    197   ��       �          0    17058    delivery 
   TABLE DATA               W   COPY public.delivery (iddelivery, nombre, apellidop, apellidom, identrega) FROM stdin;
    public       postgres    false    235   �       �          0    16960    detalleventabebidadirecta 
   TABLE DATA               Z   COPY public.detalleventabebidadirecta (codvendirec, codpresentbebida, codbeb) FROM stdin;
    public       postgres    false    227   !�       �          0    16852    detalleventacomidadirec 
   TABLE DATA               \   COPY public.detalleventacomidadirec (codvendirec, codplato, idprogram, cantsol) FROM stdin;
    public       postgres    false    213   >�       �          0    17018    detalleventacomidapedido 
   TABLE DATA               ]   COPY public.detalleventacomidapedido (codvenpedid, codplato, idprogram, cantsol) FROM stdin;
    public       postgres    false    231   [�       �          0    16993    detallventabebidapedido 
   TABLE DATA               d   COPY public.detallventabebidapedido (codvenpedid, codpresent, codpresentbebida, codbeb) FROM stdin;
    public       postgres    false    230   x�       �          0    17040    entregas 
   TABLE DATA               h   COPY public.entregas (identrega, codadministrativo, fechaentrega, horaentrega, codvenpedid) FROM stdin;
    public       postgres    false    233   ��       �          0    17088    menu 
   TABLE DATA               E   COPY public.menu (idmenu, descripcion, ruta, habilitado) FROM stdin;
    public       postgres    false    237   ��       �          0    17096    menuser 
   TABLE DATA               h   COPY public.menuser (idmenuser, idmenu, idmenup, descripcion, ruta, habilitado, idpersonal) FROM stdin;
    public       postgres    false    239   ��       �          0    16763    mesa 
   TABLE DATA               C   COPY public.mesa (codmesa, descripmes, estado, imagen) FROM stdin;
    public       postgres    false    199   ��       �          0    16789    mesero 
   TABLE DATA               N   COPY public.mesero (codmesero, codpersonal, codmesa, descripcion) FROM stdin;
    public       postgres    false    204   	�       �          0    16982    pedidos 
   TABLE DATA               d   COPY public.pedidos (codvenpedid, importetot, fechapedid, horapedid, idcliente, estado) FROM stdin;
    public       postgres    false    229   &�       �          0    16776    personal 
   TABLE DATA               u   COPY public.personal (idpersonal, clave, ci, nombre, telefono, email, tipoper, avatar, usrreg, fechareg) FROM stdin;
    public       postgres    false    202   C�       �          0    16833    plato 
   TABLE DATA               S   COPY public.plato (codplato, descripplat, imagen, precio, codtipplato) FROM stdin;
    public       postgres    false    210   ��       �          0    16872    platoprograrn 
   TABLE DATA               I   COPY public.platoprograrn (codplato, idprogram, cantprogram) FROM stdin;
    public       postgres    false    214   ��       �          0    16936    presentacion 
   TABLE DATA               ?   COPY public.presentacion (codpresent, descpresent) FROM stdin;
    public       postgres    false    224   �       �          0    16944    presentbebida 
   TABLE DATA               y   COPY public.presentbebida (codpresentbebida, codbeb, codpresent, cantexist, preciouniventa, preciounicompra) FROM stdin;
    public       postgres    false    226   *�       �          0    16846    programacion 
   TABLE DATA               8   COPY public.programacion (idprogram, fecha) FROM stdin;
    public       postgres    false    212   G�       �          0    16915 
   tipobebida 
   TABLE DATA               D   COPY public.tipobebida (codtipbeb, descripcion, imagen) FROM stdin;
    public       postgres    false    220   d�       �          0    16769    tipopersonal 
   TABLE DATA               C   COPY public.tipopersonal (idtipopersonal, descripcion) FROM stdin;
    public       postgres    false    200   ��       �          0    16825 	   tipoplato 
   TABLE DATA               E   COPY public.tipoplato (codtipplato, descripplat, imagen) FROM stdin;
    public       postgres    false    208   ��       �          0    16807    ventadirectacomida 
   TABLE DATA               p   COPY public.ventadirectacomida (codvendirec, importetot, fechavent, horavent, idcliente, codmesero) FROM stdin;
    public       postgres    false    206   ��                  0    0 $   administrativo_codadministrativo_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.administrativo_codadministrativo_seq', 1, false);
            public       postgres    false    217                       0    0    bebida_codbeb_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.bebida_codbeb_seq', 1, false);
            public       postgres    false    221                       0    0    cargo_codcargo_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.cargo_codcargo_seq', 1, true);
            public       postgres    false    215                       0    0    cliente_idcliente_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.cliente_idcliente_seq', 4, true);
            public       postgres    false    196                       0    0    delivery_iddelivery_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.delivery_iddelivery_seq', 1, false);
            public       postgres    false    234                       0    0    entregas_identrega_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.entregas_identrega_seq', 1, false);
            public       postgres    false    232                       0    0    menu_idmenu_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.menu_idmenu_seq', 1, false);
            public       postgres    false    236                       0    0    menuser_idmenuser_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.menuser_idmenuser_seq', 1, false);
            public       postgres    false    238                       0    0    mesa_codmesa_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.mesa_codmesa_seq', 4, true);
            public       postgres    false    198                        0    0    mesero_codmesero_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.mesero_codmesero_seq', 4, true);
            public       postgres    false    203            !           0    0    pedidos_codvenpedid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.pedidos_codvenpedid_seq', 1, false);
            public       postgres    false    228            "           0    0    personal_idpersonal_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.personal_idpersonal_seq', 8, true);
            public       postgres    false    201            #           0    0    plato_codplato_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.plato_codplato_seq', 2, true);
            public       postgres    false    209            $           0    0    presentacion_codpresent_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.presentacion_codpresent_seq', 1, false);
            public       postgres    false    223            %           0    0 "   presentbebida_codpresentbebida_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.presentbebida_codpresentbebida_seq', 1, false);
            public       postgres    false    225            &           0    0    programacion_idprogram_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.programacion_idprogram_seq', 2, true);
            public       postgres    false    211            '           0    0    tipobebida_codtipbeb_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.tipobebida_codtipbeb_seq', 1, false);
            public       postgres    false    219            (           0    0    tipoplato_codtipplato_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.tipoplato_codtipplato_seq', 2, true);
            public       postgres    false    207            )           0    0 "   ventadirectacomida_codvendirec_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.ventadirectacomida_codvendirec_seq', 2, true);
            public       postgres    false    205                       2606    16902 "   administrativo administrativo_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.administrativo
    ADD CONSTRAINT administrativo_pkey PRIMARY KEY (codadministrativo);
 L   ALTER TABLE ONLY public.administrativo DROP CONSTRAINT administrativo_pkey;
       public         postgres    false    218            "           2606    16928    bebida bebida_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.bebida
    ADD CONSTRAINT bebida_pkey PRIMARY KEY (codbeb);
 <   ALTER TABLE ONLY public.bebida DROP CONSTRAINT bebida_pkey;
       public         postgres    false    222                       2606    16894    cargo cargo_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.cargo
    ADD CONSTRAINT cargo_pkey PRIMARY KEY (codcargo);
 :   ALTER TABLE ONLY public.cargo DROP CONSTRAINT cargo_pkey;
       public         postgres    false    216                       2606    16760    cliente cliente_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (idcliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public         postgres    false    197            2           2606    17063    delivery delivery_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.delivery
    ADD CONSTRAINT delivery_pkey PRIMARY KEY (iddelivery);
 @   ALTER TABLE ONLY public.delivery DROP CONSTRAINT delivery_pkey;
       public         postgres    false    235            (           2606    16964 8   detalleventabebidadirecta detalleventabebidadirecta_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.detalleventabebidadirecta
    ADD CONSTRAINT detalleventabebidadirecta_pkey PRIMARY KEY (codvendirec, codpresentbebida, codbeb);
 b   ALTER TABLE ONLY public.detalleventabebidadirecta DROP CONSTRAINT detalleventabebidadirecta_pkey;
       public         postgres    false    227    227    227                       2606    16856 4   detalleventacomidadirec detalleventacomidadirec_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.detalleventacomidadirec
    ADD CONSTRAINT detalleventacomidadirec_pkey PRIMARY KEY (codvendirec, codplato, idprogram);
 ^   ALTER TABLE ONLY public.detalleventacomidadirec DROP CONSTRAINT detalleventacomidadirec_pkey;
       public         postgres    false    213    213    213            .           2606    17022 6   detalleventacomidapedido detalleventacomidapedido_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.detalleventacomidapedido
    ADD CONSTRAINT detalleventacomidapedido_pkey PRIMARY KEY (codvenpedid, codplato, idprogram);
 `   ALTER TABLE ONLY public.detalleventacomidapedido DROP CONSTRAINT detalleventacomidapedido_pkey;
       public         postgres    false    231    231    231            ,           2606    16997 4   detallventabebidapedido detallventabebidapedido_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.detallventabebidapedido
    ADD CONSTRAINT detallventabebidapedido_pkey PRIMARY KEY (codvenpedid, codpresent, codpresentbebida, codbeb);
 ^   ALTER TABLE ONLY public.detallventabebidapedido DROP CONSTRAINT detallventabebidapedido_pkey;
       public         postgres    false    230    230    230    230            0           2606    17045    entregas entregas_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.entregas
    ADD CONSTRAINT entregas_pkey PRIMARY KEY (identrega);
 @   ALTER TABLE ONLY public.entregas DROP CONSTRAINT entregas_pkey;
       public         postgres    false    233            4           2606    17093    menu menu_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.menu
    ADD CONSTRAINT menu_pkey PRIMARY KEY (idmenu);
 8   ALTER TABLE ONLY public.menu DROP CONSTRAINT menu_pkey;
       public         postgres    false    237            6           2606    17101    menuser menuser_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.menuser
    ADD CONSTRAINT menuser_pkey PRIMARY KEY (idmenuser);
 >   ALTER TABLE ONLY public.menuser DROP CONSTRAINT menuser_pkey;
       public         postgres    false    239                       2606    16768    mesa mesa_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.mesa
    ADD CONSTRAINT mesa_pkey PRIMARY KEY (codmesa);
 8   ALTER TABLE ONLY public.mesa DROP CONSTRAINT mesa_pkey;
       public         postgres    false    199                       2606    16794    mesero mesero_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.mesero
    ADD CONSTRAINT mesero_pkey PRIMARY KEY (codmesero);
 <   ALTER TABLE ONLY public.mesero DROP CONSTRAINT mesero_pkey;
       public         postgres    false    204            *           2606    16987    pedidos pedidos_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_pkey PRIMARY KEY (codvenpedid);
 >   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pedidos_pkey;
       public         postgres    false    229                       2606    16781    personal personal_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.personal
    ADD CONSTRAINT personal_pkey PRIMARY KEY (idpersonal);
 @   ALTER TABLE ONLY public.personal DROP CONSTRAINT personal_pkey;
       public         postgres    false    202                       2606    16838    plato plato_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.plato
    ADD CONSTRAINT plato_pkey PRIMARY KEY (codplato);
 :   ALTER TABLE ONLY public.plato DROP CONSTRAINT plato_pkey;
       public         postgres    false    210                       2606    16876     platoprograrn platoprograrn_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.platoprograrn
    ADD CONSTRAINT platoprograrn_pkey PRIMARY KEY (codplato, idprogram);
 J   ALTER TABLE ONLY public.platoprograrn DROP CONSTRAINT platoprograrn_pkey;
       public         postgres    false    214    214            $           2606    16941    presentacion presentacion_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.presentacion
    ADD CONSTRAINT presentacion_pkey PRIMARY KEY (codpresent);
 H   ALTER TABLE ONLY public.presentacion DROP CONSTRAINT presentacion_pkey;
       public         postgres    false    224            &           2606    16949     presentbebida presentbebida_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.presentbebida
    ADD CONSTRAINT presentbebida_pkey PRIMARY KEY (codpresentbebida);
 J   ALTER TABLE ONLY public.presentbebida DROP CONSTRAINT presentbebida_pkey;
       public         postgres    false    226                       2606    16851    programacion programacion_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.programacion
    ADD CONSTRAINT programacion_pkey PRIMARY KEY (idprogram);
 H   ALTER TABLE ONLY public.programacion DROP CONSTRAINT programacion_pkey;
       public         postgres    false    212                        2606    16920    tipobebida tipobebida_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.tipobebida
    ADD CONSTRAINT tipobebida_pkey PRIMARY KEY (codtipbeb);
 D   ALTER TABLE ONLY public.tipobebida DROP CONSTRAINT tipobebida_pkey;
       public         postgres    false    220            
           2606    16773    tipopersonal tipopersonal_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.tipopersonal
    ADD CONSTRAINT tipopersonal_pkey PRIMARY KEY (idtipopersonal);
 H   ALTER TABLE ONLY public.tipopersonal DROP CONSTRAINT tipopersonal_pkey;
       public         postgres    false    200                       2606    16830    tipoplato tipoplato_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.tipoplato
    ADD CONSTRAINT tipoplato_pkey PRIMARY KEY (codtipplato);
 B   ALTER TABLE ONLY public.tipoplato DROP CONSTRAINT tipoplato_pkey;
       public         postgres    false    208                       2606    16812 *   ventadirectacomida ventadirectacomida_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.ventadirectacomida
    ADD CONSTRAINT ventadirectacomida_pkey PRIMARY KEY (codvendirec);
 T   ALTER TABLE ONLY public.ventadirectacomida DROP CONSTRAINT ventadirectacomida_pkey;
       public         postgres    false    206            B           2606    16903 &   administrativo fk_administrativo_cargo    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrativo
    ADD CONSTRAINT fk_administrativo_cargo FOREIGN KEY (codcargo) REFERENCES public.cargo(codcargo);
 P   ALTER TABLE ONLY public.administrativo DROP CONSTRAINT fk_administrativo_cargo;
       public       postgres    false    2844    216    218            C           2606    16908 )   administrativo fk_administrativo_personal    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrativo
    ADD CONSTRAINT fk_administrativo_personal FOREIGN KEY (idpersonal) REFERENCES public.personal(idpersonal);
 S   ALTER TABLE ONLY public.administrativo DROP CONSTRAINT fk_administrativo_personal;
       public       postgres    false    2828    202    218            D           2606    16929    bebida fk_bebida_tipobebida    FK CONSTRAINT     �   ALTER TABLE ONLY public.bebida
    ADD CONSTRAINT fk_bebida_tipobebida FOREIGN KEY (codtipbeb) REFERENCES public.tipobebida(codtipbeb);
 E   ALTER TABLE ONLY public.bebida DROP CONSTRAINT fk_bebida_tipobebida;
       public       postgres    false    220    2848    222            T           2606    17064    delivery fk_delivery_entregas    FK CONSTRAINT     �   ALTER TABLE ONLY public.delivery
    ADD CONSTRAINT fk_delivery_entregas FOREIGN KEY (identrega) REFERENCES public.entregas(identrega);
 G   ALTER TABLE ONLY public.delivery DROP CONSTRAINT fk_delivery_entregas;
       public       postgres    false    2864    235    233            I           2606    16975 =   detalleventabebidadirecta fk_detalleventabebidadirecta_bebida    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalleventabebidadirecta
    ADD CONSTRAINT fk_detalleventabebidadirecta_bebida FOREIGN KEY (codbeb) REFERENCES public.bebida(codbeb);
 g   ALTER TABLE ONLY public.detalleventabebidadirecta DROP CONSTRAINT fk_detalleventabebidadirecta_bebida;
       public       postgres    false    222    2850    227            H           2606    16970 D   detalleventabebidadirecta fk_detalleventabebidadirecta_presentbebida    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalleventabebidadirecta
    ADD CONSTRAINT fk_detalleventabebidadirecta_presentbebida FOREIGN KEY (codpresentbebida) REFERENCES public.presentbebida(codpresentbebida);
 n   ALTER TABLE ONLY public.detalleventabebidadirecta DROP CONSTRAINT fk_detalleventabebidadirecta_presentbebida;
       public       postgres    false    2854    226    227            G           2606    16965 I   detalleventabebidadirecta fk_detalleventabebidadirecta_ventadirectacomida    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalleventabebidadirecta
    ADD CONSTRAINT fk_detalleventabebidadirecta_ventadirectacomida FOREIGN KEY (codvendirec) REFERENCES public.ventadirectacomida(codvendirec);
 s   ALTER TABLE ONLY public.detalleventabebidadirecta DROP CONSTRAINT fk_detalleventabebidadirecta_ventadirectacomida;
       public       postgres    false    206    227    2832            >           2606    16862 8   detalleventacomidadirec fk_detalleventacomidadirec_plato    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalleventacomidadirec
    ADD CONSTRAINT fk_detalleventacomidadirec_plato FOREIGN KEY (codplato) REFERENCES public.plato(codplato);
 b   ALTER TABLE ONLY public.detalleventacomidadirec DROP CONSTRAINT fk_detalleventacomidadirec_plato;
       public       postgres    false    2836    213    210            ?           2606    16867 ?   detalleventacomidadirec fk_detalleventacomidadirec_programacion    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalleventacomidadirec
    ADD CONSTRAINT fk_detalleventacomidadirec_programacion FOREIGN KEY (idprogram) REFERENCES public.programacion(idprogram);
 i   ALTER TABLE ONLY public.detalleventacomidadirec DROP CONSTRAINT fk_detalleventacomidadirec_programacion;
       public       postgres    false    2838    213    212            =           2606    16857 E   detalleventacomidadirec fk_detalleventacomidadirec_ventadirectacomida    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalleventacomidadirec
    ADD CONSTRAINT fk_detalleventacomidadirec_ventadirectacomida FOREIGN KEY (codvendirec) REFERENCES public.ventadirectacomida(codvendirec);
 o   ALTER TABLE ONLY public.detalleventacomidadirec DROP CONSTRAINT fk_detalleventacomidadirec_ventadirectacomida;
       public       postgres    false    2832    206    213            O           2606    17023 <   detalleventacomidapedido fk_detalleventacomidapedido_pedidos    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalleventacomidapedido
    ADD CONSTRAINT fk_detalleventacomidapedido_pedidos FOREIGN KEY (codvenpedid) REFERENCES public.pedidos(codvenpedid);
 f   ALTER TABLE ONLY public.detalleventacomidapedido DROP CONSTRAINT fk_detalleventacomidapedido_pedidos;
       public       postgres    false    2858    229    231            P           2606    17028 :   detalleventacomidapedido fk_detalleventacomidapedido_plato    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalleventacomidapedido
    ADD CONSTRAINT fk_detalleventacomidapedido_plato FOREIGN KEY (codplato) REFERENCES public.plato(codplato);
 d   ALTER TABLE ONLY public.detalleventacomidapedido DROP CONSTRAINT fk_detalleventacomidapedido_plato;
       public       postgres    false    2836    231    210            Q           2606    17033 A   detalleventacomidapedido fk_detalleventacomidapedido_programacion    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalleventacomidapedido
    ADD CONSTRAINT fk_detalleventacomidapedido_programacion FOREIGN KEY (idprogram) REFERENCES public.programacion(idprogram);
 k   ALTER TABLE ONLY public.detalleventacomidapedido DROP CONSTRAINT fk_detalleventacomidapedido_programacion;
       public       postgres    false    231    212    2838            N           2606    17013 9   detallventabebidapedido fk_detallventabebidapedido_bebida    FK CONSTRAINT     �   ALTER TABLE ONLY public.detallventabebidapedido
    ADD CONSTRAINT fk_detallventabebidapedido_bebida FOREIGN KEY (codbeb) REFERENCES public.bebida(codbeb);
 c   ALTER TABLE ONLY public.detallventabebidapedido DROP CONSTRAINT fk_detallventabebidapedido_bebida;
       public       postgres    false    222    230    2850            K           2606    16998 :   detallventabebidapedido fk_detallventabebidapedido_pedidos    FK CONSTRAINT     �   ALTER TABLE ONLY public.detallventabebidapedido
    ADD CONSTRAINT fk_detallventabebidapedido_pedidos FOREIGN KEY (codvenpedid) REFERENCES public.pedidos(codvenpedid);
 d   ALTER TABLE ONLY public.detallventabebidapedido DROP CONSTRAINT fk_detallventabebidapedido_pedidos;
       public       postgres    false    2858    230    229            L           2606    17003 ?   detallventabebidapedido fk_detallventabebidapedido_presentacion    FK CONSTRAINT     �   ALTER TABLE ONLY public.detallventabebidapedido
    ADD CONSTRAINT fk_detallventabebidapedido_presentacion FOREIGN KEY (codpresent) REFERENCES public.presentacion(codpresent);
 i   ALTER TABLE ONLY public.detallventabebidapedido DROP CONSTRAINT fk_detallventabebidapedido_presentacion;
       public       postgres    false    2852    230    224            M           2606    17008 @   detallventabebidapedido fk_detallventabebidapedido_presentbebida    FK CONSTRAINT     �   ALTER TABLE ONLY public.detallventabebidapedido
    ADD CONSTRAINT fk_detallventabebidapedido_presentbebida FOREIGN KEY (codpresentbebida) REFERENCES public.presentbebida(codpresentbebida);
 j   ALTER TABLE ONLY public.detallventabebidapedido DROP CONSTRAINT fk_detallventabebidapedido_presentbebida;
       public       postgres    false    226    230    2854            R           2606    17046 #   entregas fk_entregas_administrativo    FK CONSTRAINT     �   ALTER TABLE ONLY public.entregas
    ADD CONSTRAINT fk_entregas_administrativo FOREIGN KEY (codadministrativo) REFERENCES public.administrativo(codadministrativo);
 M   ALTER TABLE ONLY public.entregas DROP CONSTRAINT fk_entregas_administrativo;
       public       postgres    false    218    233    2846            S           2606    17051    entregas fk_entregas_pedidos    FK CONSTRAINT     �   ALTER TABLE ONLY public.entregas
    ADD CONSTRAINT fk_entregas_pedidos FOREIGN KEY (codvenpedid) REFERENCES public.pedidos(codvenpedid);
 F   ALTER TABLE ONLY public.entregas DROP CONSTRAINT fk_entregas_pedidos;
       public       postgres    false    2858    229    233            U           2606    17102    menuser fk_menuser_menu    FK CONSTRAINT     x   ALTER TABLE ONLY public.menuser
    ADD CONSTRAINT fk_menuser_menu FOREIGN KEY (idmenu) REFERENCES public.menu(idmenu);
 A   ALTER TABLE ONLY public.menuser DROP CONSTRAINT fk_menuser_menu;
       public       postgres    false    237    239    2868            V           2606    17107    menuser fk_menuser_personal    FK CONSTRAINT     �   ALTER TABLE ONLY public.menuser
    ADD CONSTRAINT fk_menuser_personal FOREIGN KEY (idpersonal) REFERENCES public.personal(idpersonal);
 E   ALTER TABLE ONLY public.menuser DROP CONSTRAINT fk_menuser_personal;
       public       postgres    false    2828    239    202            9           2606    16800    mesero fk_mesero_mesa    FK CONSTRAINT     x   ALTER TABLE ONLY public.mesero
    ADD CONSTRAINT fk_mesero_mesa FOREIGN KEY (codmesa) REFERENCES public.mesa(codmesa);
 ?   ALTER TABLE ONLY public.mesero DROP CONSTRAINT fk_mesero_mesa;
       public       postgres    false    199    204    2824            8           2606    16795    mesero fk_mesero_personal    FK CONSTRAINT     �   ALTER TABLE ONLY public.mesero
    ADD CONSTRAINT fk_mesero_personal FOREIGN KEY (codpersonal) REFERENCES public.personal(idpersonal);
 C   ALTER TABLE ONLY public.mesero DROP CONSTRAINT fk_mesero_personal;
       public       postgres    false    204    202    2828            J           2606    16988    pedidos fk_pedidos_cliente    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT fk_pedidos_cliente FOREIGN KEY (idcliente) REFERENCES public.cliente(idcliente);
 D   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT fk_pedidos_cliente;
       public       postgres    false    229    2822    197            7           2606    16782 !   personal fk_personal_tipopersonal    FK CONSTRAINT     �   ALTER TABLE ONLY public.personal
    ADD CONSTRAINT fk_personal_tipopersonal FOREIGN KEY (tipoper) REFERENCES public.tipopersonal(idtipopersonal);
 K   ALTER TABLE ONLY public.personal DROP CONSTRAINT fk_personal_tipopersonal;
       public       postgres    false    2826    202    200            <           2606    16839    plato fk_plato_tipoplato    FK CONSTRAINT     �   ALTER TABLE ONLY public.plato
    ADD CONSTRAINT fk_plato_tipoplato FOREIGN KEY (codtipplato) REFERENCES public.tipoplato(codtipplato);
 B   ALTER TABLE ONLY public.plato DROP CONSTRAINT fk_plato_tipoplato;
       public       postgres    false    210    208    2834            @           2606    16877 $   platoprograrn fk_platoprograrn_plato    FK CONSTRAINT     �   ALTER TABLE ONLY public.platoprograrn
    ADD CONSTRAINT fk_platoprograrn_plato FOREIGN KEY (codplato) REFERENCES public.plato(codplato);
 N   ALTER TABLE ONLY public.platoprograrn DROP CONSTRAINT fk_platoprograrn_plato;
       public       postgres    false    2836    214    210            A           2606    16882 +   platoprograrn fk_platoprograrn_programacion    FK CONSTRAINT     �   ALTER TABLE ONLY public.platoprograrn
    ADD CONSTRAINT fk_platoprograrn_programacion FOREIGN KEY (idprogram) REFERENCES public.programacion(idprogram);
 U   ALTER TABLE ONLY public.platoprograrn DROP CONSTRAINT fk_platoprograrn_programacion;
       public       postgres    false    214    2838    212            E           2606    16950 %   presentbebida fk_presentbebida_bebida    FK CONSTRAINT     �   ALTER TABLE ONLY public.presentbebida
    ADD CONSTRAINT fk_presentbebida_bebida FOREIGN KEY (codbeb) REFERENCES public.bebida(codbeb);
 O   ALTER TABLE ONLY public.presentbebida DROP CONSTRAINT fk_presentbebida_bebida;
       public       postgres    false    226    2850    222            F           2606    16955 +   presentbebida fk_presentbebida_presentacion    FK CONSTRAINT     �   ALTER TABLE ONLY public.presentbebida
    ADD CONSTRAINT fk_presentbebida_presentacion FOREIGN KEY (codpresent) REFERENCES public.presentacion(codpresent);
 U   ALTER TABLE ONLY public.presentbebida DROP CONSTRAINT fk_presentbebida_presentacion;
       public       postgres    false    224    226    2852            :           2606    16813 0   ventadirectacomida fk_ventadirectacomida_cliente    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventadirectacomida
    ADD CONSTRAINT fk_ventadirectacomida_cliente FOREIGN KEY (idcliente) REFERENCES public.cliente(idcliente);
 Z   ALTER TABLE ONLY public.ventadirectacomida DROP CONSTRAINT fk_ventadirectacomida_cliente;
       public       postgres    false    197    206    2822            ;           2606    16818 /   ventadirectacomida fk_ventadirectacomida_mesero    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventadirectacomida
    ADD CONSTRAINT fk_ventadirectacomida_mesero FOREIGN KEY (codmesero) REFERENCES public.mesero(codmesero);
 Y   ALTER TABLE ONLY public.ventadirectacomida DROP CONSTRAINT fk_ventadirectacomida_mesero;
       public       postgres    false    204    2830    206            �   E   x�3�4�4�t�HMS(��K�,H��2�4���M-N-��2�4�p�KN,JOL�WHIUpJ,�����  !/      �      x������ � �      �   :   x�3�t�HMS(��K�,H��2��M-N-��2�t�KN,JOL�WHIUpJ,����� �F�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x���;�0 ��9hd;q>�`�,V�U�
*���^�aҵ;/!&8>�m�0��/O��T�p��H���u!;��s�6`d�a��{
��YB�>C�A�c�CSț��O�߀�N��S3�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   "   x�300�t�O��K-��200��M-1c���� x,�      �      x������ � �      �      x������ � �     