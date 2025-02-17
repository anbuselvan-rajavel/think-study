--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS '';


--
-- Name: enum__pages_v_blocks_archive_populate_by; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum__pages_v_blocks_archive_populate_by AS ENUM (
    'collection',
    'selection'
);


ALTER TYPE public.enum__pages_v_blocks_archive_populate_by OWNER TO postgres;

--
-- Name: enum__pages_v_blocks_archive_relation_to; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum__pages_v_blocks_archive_relation_to AS ENUM (
    'posts'
);


ALTER TYPE public.enum__pages_v_blocks_archive_relation_to OWNER TO postgres;

--
-- Name: enum__pages_v_blocks_content_columns_link_appearance; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum__pages_v_blocks_content_columns_link_appearance AS ENUM (
    'default',
    'outline'
);


ALTER TYPE public.enum__pages_v_blocks_content_columns_link_appearance OWNER TO postgres;

--
-- Name: enum__pages_v_blocks_content_columns_link_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum__pages_v_blocks_content_columns_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum__pages_v_blocks_content_columns_link_type OWNER TO postgres;

--
-- Name: enum__pages_v_blocks_content_columns_size; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum__pages_v_blocks_content_columns_size AS ENUM (
    'oneThird',
    'half',
    'twoThirds',
    'full'
);


ALTER TYPE public.enum__pages_v_blocks_content_columns_size OWNER TO postgres;

--
-- Name: enum__pages_v_blocks_cta_links_link_appearance; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum__pages_v_blocks_cta_links_link_appearance AS ENUM (
    'default',
    'outline'
);


ALTER TYPE public.enum__pages_v_blocks_cta_links_link_appearance OWNER TO postgres;

--
-- Name: enum__pages_v_blocks_cta_links_link_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum__pages_v_blocks_cta_links_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum__pages_v_blocks_cta_links_link_type OWNER TO postgres;

--
-- Name: enum__pages_v_blocks_study_abroad_block_cards_image_position; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum__pages_v_blocks_study_abroad_block_cards_image_position AS ENUM (
    'left',
    'right'
);


ALTER TYPE public.enum__pages_v_blocks_study_abroad_block_cards_image_position OWNER TO postgres;

--
-- Name: enum__pages_v_blocks_study_abroad_block_title_font; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum__pages_v_blocks_study_abroad_block_title_font AS ENUM (
    'Inter',
    'Roboto',
    'Open Sans',
    'Montserrat'
);


ALTER TYPE public.enum__pages_v_blocks_study_abroad_block_title_font OWNER TO postgres;

--
-- Name: enum__pages_v_version_hero_description_font_family; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum__pages_v_version_hero_description_font_family AS ENUM (
    'Inter',
    'Roboto',
    'Open Sans',
    'Montserrat'
);


ALTER TYPE public.enum__pages_v_version_hero_description_font_family OWNER TO postgres;

--
-- Name: enum__pages_v_version_hero_heading_font_family; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum__pages_v_version_hero_heading_font_family AS ENUM (
    'Inter',
    'Roboto',
    'Open Sans',
    'Montserrat'
);


ALTER TYPE public.enum__pages_v_version_hero_heading_font_family OWNER TO postgres;

--
-- Name: enum__pages_v_version_hero_links_link_appearance; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum__pages_v_version_hero_links_link_appearance AS ENUM (
    'default',
    'outline'
);


ALTER TYPE public.enum__pages_v_version_hero_links_link_appearance OWNER TO postgres;

--
-- Name: enum__pages_v_version_hero_links_link_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum__pages_v_version_hero_links_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum__pages_v_version_hero_links_link_type OWNER TO postgres;

--
-- Name: enum__pages_v_version_hero_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum__pages_v_version_hero_type AS ENUM (
    'none',
    'highImpact',
    'mediumImpact',
    'lowImpact'
);


ALTER TYPE public.enum__pages_v_version_hero_type OWNER TO postgres;

--
-- Name: enum__pages_v_version_status; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum__pages_v_version_status AS ENUM (
    'draft',
    'published'
);


ALTER TYPE public.enum__pages_v_version_status OWNER TO postgres;

--
-- Name: enum__posts_v_version_status; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum__posts_v_version_status AS ENUM (
    'draft',
    'published'
);


ALTER TYPE public.enum__posts_v_version_status OWNER TO postgres;

--
-- Name: enum_footer_about_link_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_footer_about_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum_footer_about_link_type OWNER TO postgres;

--
-- Name: enum_footer_help_link_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_footer_help_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum_footer_help_link_type OWNER TO postgres;

--
-- Name: enum_footer_legal_link_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_footer_legal_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum_footer_legal_link_type OWNER TO postgres;

--
-- Name: enum_footer_services_link_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_footer_services_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum_footer_services_link_type OWNER TO postgres;

--
-- Name: enum_footer_social_link_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_footer_social_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum_footer_social_link_type OWNER TO postgres;

--
-- Name: enum_forms_confirmation_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_forms_confirmation_type AS ENUM (
    'message',
    'redirect'
);


ALTER TYPE public.enum_forms_confirmation_type OWNER TO postgres;

--
-- Name: enum_header_nav_items_link_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_header_nav_items_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum_header_nav_items_link_type OWNER TO postgres;

--
-- Name: enum_pages_blocks_archive_populate_by; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_pages_blocks_archive_populate_by AS ENUM (
    'collection',
    'selection'
);


ALTER TYPE public.enum_pages_blocks_archive_populate_by OWNER TO postgres;

--
-- Name: enum_pages_blocks_archive_relation_to; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_pages_blocks_archive_relation_to AS ENUM (
    'posts'
);


ALTER TYPE public.enum_pages_blocks_archive_relation_to OWNER TO postgres;

--
-- Name: enum_pages_blocks_content_columns_link_appearance; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_pages_blocks_content_columns_link_appearance AS ENUM (
    'default',
    'outline'
);


ALTER TYPE public.enum_pages_blocks_content_columns_link_appearance OWNER TO postgres;

--
-- Name: enum_pages_blocks_content_columns_link_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_pages_blocks_content_columns_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum_pages_blocks_content_columns_link_type OWNER TO postgres;

--
-- Name: enum_pages_blocks_content_columns_size; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_pages_blocks_content_columns_size AS ENUM (
    'oneThird',
    'half',
    'twoThirds',
    'full'
);


ALTER TYPE public.enum_pages_blocks_content_columns_size OWNER TO postgres;

--
-- Name: enum_pages_blocks_cta_links_link_appearance; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_pages_blocks_cta_links_link_appearance AS ENUM (
    'default',
    'outline'
);


ALTER TYPE public.enum_pages_blocks_cta_links_link_appearance OWNER TO postgres;

--
-- Name: enum_pages_blocks_cta_links_link_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_pages_blocks_cta_links_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum_pages_blocks_cta_links_link_type OWNER TO postgres;

--
-- Name: enum_pages_blocks_study_abroad_block_cards_image_position; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_pages_blocks_study_abroad_block_cards_image_position AS ENUM (
    'left',
    'right'
);


ALTER TYPE public.enum_pages_blocks_study_abroad_block_cards_image_position OWNER TO postgres;

--
-- Name: enum_pages_blocks_study_abroad_block_title_font; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_pages_blocks_study_abroad_block_title_font AS ENUM (
    'Inter',
    'Roboto',
    'Open Sans',
    'Montserrat'
);


ALTER TYPE public.enum_pages_blocks_study_abroad_block_title_font OWNER TO postgres;

--
-- Name: enum_pages_hero_description_font_family; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_pages_hero_description_font_family AS ENUM (
    'Inter',
    'Roboto',
    'Open Sans',
    'Montserrat'
);


ALTER TYPE public.enum_pages_hero_description_font_family OWNER TO postgres;

--
-- Name: enum_pages_hero_heading_font_family; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_pages_hero_heading_font_family AS ENUM (
    'Inter',
    'Roboto',
    'Open Sans',
    'Montserrat'
);


ALTER TYPE public.enum_pages_hero_heading_font_family OWNER TO postgres;

--
-- Name: enum_pages_hero_links_link_appearance; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_pages_hero_links_link_appearance AS ENUM (
    'default',
    'outline'
);


ALTER TYPE public.enum_pages_hero_links_link_appearance OWNER TO postgres;

--
-- Name: enum_pages_hero_links_link_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_pages_hero_links_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum_pages_hero_links_link_type OWNER TO postgres;

--
-- Name: enum_pages_hero_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_pages_hero_type AS ENUM (
    'none',
    'highImpact',
    'mediumImpact',
    'lowImpact'
);


ALTER TYPE public.enum_pages_hero_type OWNER TO postgres;

--
-- Name: enum_pages_status; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_pages_status AS ENUM (
    'draft',
    'published'
);


ALTER TYPE public.enum_pages_status OWNER TO postgres;

--
-- Name: enum_payload_jobs_log_state; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_payload_jobs_log_state AS ENUM (
    'failed',
    'succeeded'
);


ALTER TYPE public.enum_payload_jobs_log_state OWNER TO postgres;

--
-- Name: enum_payload_jobs_log_task_slug; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_payload_jobs_log_task_slug AS ENUM (
    'inline',
    'schedulePublish'
);


ALTER TYPE public.enum_payload_jobs_log_task_slug OWNER TO postgres;

--
-- Name: enum_payload_jobs_task_slug; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_payload_jobs_task_slug AS ENUM (
    'inline',
    'schedulePublish'
);


ALTER TYPE public.enum_payload_jobs_task_slug OWNER TO postgres;

--
-- Name: enum_posts_status; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_posts_status AS ENUM (
    'draft',
    'published'
);


ALTER TYPE public.enum_posts_status OWNER TO postgres;

--
-- Name: enum_redirects_to_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_redirects_to_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum_redirects_to_type OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: _pages_v; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v (
    id integer NOT NULL,
    parent_id integer,
    version_title character varying,
    version_hero_type public.enum__pages_v_version_hero_type DEFAULT 'lowImpact'::public.enum__pages_v_version_hero_type,
    version_hero_heading_content character varying,
    version_hero_heading_font_family public.enum__pages_v_version_hero_heading_font_family DEFAULT 'Inter'::public.enum__pages_v_version_hero_heading_font_family,
    version_hero_heading_font_size character varying DEFAULT '1rem'::character varying,
    version_hero_description_content character varying,
    version_hero_description_font_family public.enum__pages_v_version_hero_description_font_family DEFAULT 'Inter'::public.enum__pages_v_version_hero_description_font_family,
    version_hero_description_font_size character varying DEFAULT '1rem'::character varying,
    version_hero_media_id integer,
    version_meta_title character varying,
    version_meta_image_id integer,
    version_meta_description character varying,
    version_published_at timestamp(3) with time zone,
    version_slug character varying,
    version_slug_lock boolean DEFAULT true,
    version_updated_at timestamp(3) with time zone,
    version_created_at timestamp(3) with time zone,
    version__status public.enum__pages_v_version_status DEFAULT 'draft'::public.enum__pages_v_version_status,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    latest boolean,
    autosave boolean
);


ALTER TABLE public._pages_v OWNER TO postgres;

--
-- Name: _pages_v_blocks_appointment_block; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_appointment_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    left_content_title character varying,
    left_content_sub_title character varying,
    left_content_highlight_text character varying,
    left_content_extra_text character varying,
    left_content_button_text character varying,
    left_content_button_url character varying,
    right_schedule_date timestamp(3) with time zone,
    right_schedule_day character varying,
    bottom_text character varying,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_appointment_block OWNER TO postgres;

--
-- Name: _pages_v_blocks_appointment_block_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_appointment_block_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_appointment_block_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_appointment_block_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_appointment_block_id_seq OWNED BY public._pages_v_blocks_appointment_block.id;


--
-- Name: _pages_v_blocks_appointment_block_left_content_paragraphs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_appointment_block_left_content_paragraphs (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    text character varying,
    _uuid character varying
);


ALTER TABLE public._pages_v_blocks_appointment_block_left_content_paragraphs OWNER TO postgres;

--
-- Name: _pages_v_blocks_appointment_block_left_content_paragraph_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_appointment_block_left_content_paragraph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_appointment_block_left_content_paragraph_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_appointment_block_left_content_paragraph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_appointment_block_left_content_paragraph_id_seq OWNED BY public._pages_v_blocks_appointment_block_left_content_paragraphs.id;


--
-- Name: _pages_v_blocks_appointment_block_right_schedule_slots; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_appointment_block_right_schedule_slots (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    "time" character varying,
    _uuid character varying
);


ALTER TABLE public._pages_v_blocks_appointment_block_right_schedule_slots OWNER TO postgres;

--
-- Name: _pages_v_blocks_appointment_block_right_schedule_slots_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_appointment_block_right_schedule_slots_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_appointment_block_right_schedule_slots_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_appointment_block_right_schedule_slots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_appointment_block_right_schedule_slots_id_seq OWNED BY public._pages_v_blocks_appointment_block_right_schedule_slots.id;


--
-- Name: _pages_v_blocks_appointment_block_right_universities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_appointment_block_right_universities (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    img_id integer,
    alt character varying,
    _uuid character varying
);


ALTER TABLE public._pages_v_blocks_appointment_block_right_universities OWNER TO postgres;

--
-- Name: _pages_v_blocks_appointment_block_right_universities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_appointment_block_right_universities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_appointment_block_right_universities_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_appointment_block_right_universities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_appointment_block_right_universities_id_seq OWNED BY public._pages_v_blocks_appointment_block_right_universities.id;


--
-- Name: _pages_v_blocks_archive; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_archive (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    intro_content jsonb,
    populate_by public.enum__pages_v_blocks_archive_populate_by DEFAULT 'collection'::public.enum__pages_v_blocks_archive_populate_by,
    relation_to public.enum__pages_v_blocks_archive_relation_to DEFAULT 'posts'::public.enum__pages_v_blocks_archive_relation_to,
    "limit" numeric DEFAULT 10,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_archive OWNER TO postgres;

--
-- Name: _pages_v_blocks_archive_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_archive_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_archive_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_archive_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_archive_id_seq OWNED BY public._pages_v_blocks_archive.id;


--
-- Name: _pages_v_blocks_content; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_content (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_content OWNER TO postgres;

--
-- Name: _pages_v_blocks_content_columns; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_content_columns (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    size public.enum__pages_v_blocks_content_columns_size DEFAULT 'oneThird'::public.enum__pages_v_blocks_content_columns_size,
    rich_text jsonb,
    enable_link boolean,
    link_type public.enum__pages_v_blocks_content_columns_link_type DEFAULT 'reference'::public.enum__pages_v_blocks_content_columns_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum__pages_v_blocks_content_columns_link_appearance DEFAULT 'default'::public.enum__pages_v_blocks_content_columns_link_appearance,
    _uuid character varying
);


ALTER TABLE public._pages_v_blocks_content_columns OWNER TO postgres;

--
-- Name: _pages_v_blocks_content_columns_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_content_columns_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_content_columns_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_content_columns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_content_columns_id_seq OWNED BY public._pages_v_blocks_content_columns.id;


--
-- Name: _pages_v_blocks_content_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_content_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_content_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_content_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_content_id_seq OWNED BY public._pages_v_blocks_content.id;


--
-- Name: _pages_v_blocks_counseling_block; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_counseling_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    heading character varying,
    description character varying,
    button_text character varying,
    button_url character varying,
    background_image_id integer,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_counseling_block OWNER TO postgres;

--
-- Name: _pages_v_blocks_counseling_block_cards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_counseling_block_cards (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    title character varying,
    course_name character varying,
    card_image_id integer,
    icon_id integer,
    _uuid character varying
);


ALTER TABLE public._pages_v_blocks_counseling_block_cards OWNER TO postgres;

--
-- Name: _pages_v_blocks_counseling_block_cards_countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_counseling_block_cards_countries (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    name character varying,
    _uuid character varying
);


ALTER TABLE public._pages_v_blocks_counseling_block_cards_countries OWNER TO postgres;

--
-- Name: _pages_v_blocks_counseling_block_cards_countries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_counseling_block_cards_countries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_counseling_block_cards_countries_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_counseling_block_cards_countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_counseling_block_cards_countries_id_seq OWNED BY public._pages_v_blocks_counseling_block_cards_countries.id;


--
-- Name: _pages_v_blocks_counseling_block_cards_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_counseling_block_cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_counseling_block_cards_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_counseling_block_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_counseling_block_cards_id_seq OWNED BY public._pages_v_blocks_counseling_block_cards.id;


--
-- Name: _pages_v_blocks_counseling_block_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_counseling_block_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_counseling_block_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_counseling_block_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_counseling_block_id_seq OWNED BY public._pages_v_blocks_counseling_block.id;


--
-- Name: _pages_v_blocks_cta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_cta (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    rich_text jsonb,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_cta OWNER TO postgres;

--
-- Name: _pages_v_blocks_cta_block; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_cta_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    tagline character varying,
    image_id integer,
    brand_logo_id integer,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_cta_block OWNER TO postgres;

--
-- Name: _pages_v_blocks_cta_block_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_cta_block_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_cta_block_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_cta_block_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_cta_block_id_seq OWNED BY public._pages_v_blocks_cta_block.id;


--
-- Name: _pages_v_blocks_cta_block_offices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_cta_block_offices (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    location character varying,
    _uuid character varying
);


ALTER TABLE public._pages_v_blocks_cta_block_offices OWNER TO postgres;

--
-- Name: _pages_v_blocks_cta_block_offices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_cta_block_offices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_cta_block_offices_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_cta_block_offices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_cta_block_offices_id_seq OWNED BY public._pages_v_blocks_cta_block_offices.id;


--
-- Name: _pages_v_blocks_cta_block_phone_numbers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_cta_block_phone_numbers (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    number character varying,
    _uuid character varying
);


ALTER TABLE public._pages_v_blocks_cta_block_phone_numbers OWNER TO postgres;

--
-- Name: _pages_v_blocks_cta_block_phone_numbers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_cta_block_phone_numbers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_cta_block_phone_numbers_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_cta_block_phone_numbers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_cta_block_phone_numbers_id_seq OWNED BY public._pages_v_blocks_cta_block_phone_numbers.id;


--
-- Name: _pages_v_blocks_cta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_cta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_cta_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_cta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_cta_id_seq OWNED BY public._pages_v_blocks_cta.id;


--
-- Name: _pages_v_blocks_cta_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_cta_links (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    link_type public.enum__pages_v_blocks_cta_links_link_type DEFAULT 'reference'::public.enum__pages_v_blocks_cta_links_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum__pages_v_blocks_cta_links_link_appearance DEFAULT 'default'::public.enum__pages_v_blocks_cta_links_link_appearance,
    _uuid character varying
);


ALTER TABLE public._pages_v_blocks_cta_links OWNER TO postgres;

--
-- Name: _pages_v_blocks_cta_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_cta_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_cta_links_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_cta_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_cta_links_id_seq OWNED BY public._pages_v_blocks_cta_links.id;


--
-- Name: _pages_v_blocks_form_block; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_form_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    form_id integer,
    enable_intro boolean,
    intro_content jsonb,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_form_block OWNER TO postgres;

--
-- Name: _pages_v_blocks_form_block_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_form_block_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_form_block_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_form_block_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_form_block_id_seq OWNED BY public._pages_v_blocks_form_block.id;


--
-- Name: _pages_v_blocks_get_started_block; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_get_started_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    heading character varying DEFAULT 'Let''''s make it happen!'::character varying,
    title character varying DEFAULT 'Start your journey today!'::character varying,
    footer_text character varying DEFAULT 'And so much more to make your journey hassle-free!'::character varying,
    image_id integer,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_get_started_block OWNER TO postgres;

--
-- Name: _pages_v_blocks_get_started_block_features; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_get_started_block_features (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    text character varying,
    _uuid character varying
);


ALTER TABLE public._pages_v_blocks_get_started_block_features OWNER TO postgres;

--
-- Name: _pages_v_blocks_get_started_block_features_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_get_started_block_features_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_get_started_block_features_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_get_started_block_features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_get_started_block_features_id_seq OWNED BY public._pages_v_blocks_get_started_block_features.id;


--
-- Name: _pages_v_blocks_get_started_block_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_get_started_block_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_get_started_block_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_get_started_block_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_get_started_block_id_seq OWNED BY public._pages_v_blocks_get_started_block.id;


--
-- Name: _pages_v_blocks_ielts_block; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_ielts_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    title character varying DEFAULT 'Master English. Ace IELTS.'::character varying,
    subtitle character varying DEFAULT 'Prep Smarter, Score Higher.'::character varying,
    description character varying,
    ielts_text character varying DEFAULT 'IELTS'::character varying,
    ielts_image_id integer,
    learning_type_title character varying DEFAULT 'Hybrid Learning'::character varying,
    learning_type_subtitle character varying DEFAULT 'Classroom Or Online (Seamlessly Combined)'::character varying,
    cta_button_text character varying DEFAULT 'Join The Classes'::character varying,
    cta_button_href character varying DEFAULT '/join'::character varying,
    image_id integer,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_ielts_block OWNER TO postgres;

--
-- Name: _pages_v_blocks_ielts_block_features; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_ielts_block_features (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    text character varying,
    _uuid character varying
);


ALTER TABLE public._pages_v_blocks_ielts_block_features OWNER TO postgres;

--
-- Name: _pages_v_blocks_ielts_block_features_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_ielts_block_features_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_ielts_block_features_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_ielts_block_features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_ielts_block_features_id_seq OWNED BY public._pages_v_blocks_ielts_block_features.id;


--
-- Name: _pages_v_blocks_ielts_block_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_ielts_block_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_ielts_block_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_ielts_block_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_ielts_block_id_seq OWNED BY public._pages_v_blocks_ielts_block.id;


--
-- Name: _pages_v_blocks_ielts_block_study_modes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_ielts_block_study_modes (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    label character varying,
    value character varying,
    _uuid character varying
);


ALTER TABLE public._pages_v_blocks_ielts_block_study_modes OWNER TO postgres;

--
-- Name: _pages_v_blocks_ielts_block_study_modes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_ielts_block_study_modes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_ielts_block_study_modes_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_ielts_block_study_modes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_ielts_block_study_modes_id_seq OWNED BY public._pages_v_blocks_ielts_block_study_modes.id;


--
-- Name: _pages_v_blocks_map_block; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_map_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    heading character varying DEFAULT 'Visit Us'::character varying,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_map_block OWNER TO postgres;

--
-- Name: _pages_v_blocks_map_block_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_map_block_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_map_block_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_map_block_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_map_block_id_seq OWNED BY public._pages_v_blocks_map_block.id;


--
-- Name: _pages_v_blocks_map_block_offices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_map_block_offices (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    name character varying,
    address character varying,
    map_iframe character varying,
    _uuid character varying
);


ALTER TABLE public._pages_v_blocks_map_block_offices OWNER TO postgres;

--
-- Name: _pages_v_blocks_map_block_offices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_map_block_offices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_map_block_offices_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_map_block_offices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_map_block_offices_id_seq OWNED BY public._pages_v_blocks_map_block_offices.id;


--
-- Name: _pages_v_blocks_media_block; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_media_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    media_id integer,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_media_block OWNER TO postgres;

--
-- Name: _pages_v_blocks_media_block_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_media_block_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_media_block_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_media_block_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_media_block_id_seq OWNED BY public._pages_v_blocks_media_block.id;


--
-- Name: _pages_v_blocks_study_abroad_block; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_study_abroad_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    heading character varying,
    subheading character varying,
    description character varying,
    title_content character varying,
    title_font public.enum__pages_v_blocks_study_abroad_block_title_font DEFAULT 'Inter'::public.enum__pages_v_blocks_study_abroad_block_title_font,
    title_size character varying DEFAULT '1rem'::character varying,
    title_description character varying,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_study_abroad_block OWNER TO postgres;

--
-- Name: _pages_v_blocks_study_abroad_block_cards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_study_abroad_block_cards (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    course_description character varying,
    description character varying,
    button_text character varying DEFAULT 'Get Course List'::character varying,
    button_link character varying,
    image_id integer,
    image_position public.enum__pages_v_blocks_study_abroad_block_cards_image_position DEFAULT 'right'::public.enum__pages_v_blocks_study_abroad_block_cards_image_position,
    _uuid character varying
);


ALTER TABLE public._pages_v_blocks_study_abroad_block_cards OWNER TO postgres;

--
-- Name: _pages_v_blocks_study_abroad_block_cards_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_study_abroad_block_cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_study_abroad_block_cards_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_study_abroad_block_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_study_abroad_block_cards_id_seq OWNED BY public._pages_v_blocks_study_abroad_block_cards.id;


--
-- Name: _pages_v_blocks_study_abroad_block_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_study_abroad_block_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_study_abroad_block_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_study_abroad_block_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_study_abroad_block_id_seq OWNED BY public._pages_v_blocks_study_abroad_block.id;


--
-- Name: _pages_v_blocks_testimonials_block; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_testimonials_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    heading character varying,
    description character varying,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_testimonials_block OWNER TO postgres;

--
-- Name: _pages_v_blocks_testimonials_block_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_testimonials_block_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_testimonials_block_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_testimonials_block_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_testimonials_block_id_seq OWNED BY public._pages_v_blocks_testimonials_block.id;


--
-- Name: _pages_v_blocks_testimonials_block_testimonials; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_testimonials_block_testimonials (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    image_id integer,
    review character varying,
    name character varying,
    course character varying,
    university_image_id integer,
    _uuid character varying
);


ALTER TABLE public._pages_v_blocks_testimonials_block_testimonials OWNER TO postgres;

--
-- Name: _pages_v_blocks_testimonials_block_testimonials_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_testimonials_block_testimonials_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_testimonials_block_testimonials_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_testimonials_block_testimonials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_testimonials_block_testimonials_id_seq OWNED BY public._pages_v_blocks_testimonials_block_testimonials.id;


--
-- Name: _pages_v_blocks_universities_block; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_universities_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    main_heading character varying,
    sub_heading character varying,
    description character varying,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_universities_block OWNER TO postgres;

--
-- Name: _pages_v_blocks_universities_block_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_universities_block_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_universities_block_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_universities_block_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_universities_block_id_seq OWNED BY public._pages_v_blocks_universities_block.id;


--
-- Name: _pages_v_blocks_universities_block_stats; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_universities_block_stats (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    value character varying,
    label character varying,
    _uuid character varying
);


ALTER TABLE public._pages_v_blocks_universities_block_stats OWNER TO postgres;

--
-- Name: _pages_v_blocks_universities_block_stats_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_universities_block_stats_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_universities_block_stats_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_universities_block_stats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_universities_block_stats_id_seq OWNED BY public._pages_v_blocks_universities_block_stats.id;


--
-- Name: _pages_v_blocks_universities_block_universities_images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_universities_block_universities_images (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    image_id integer,
    _uuid character varying
);


ALTER TABLE public._pages_v_blocks_universities_block_universities_images OWNER TO postgres;

--
-- Name: _pages_v_blocks_universities_block_universities_images_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_universities_block_universities_images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_universities_block_universities_images_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_universities_block_universities_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_universities_block_universities_images_id_seq OWNED BY public._pages_v_blocks_universities_block_universities_images.id;


--
-- Name: _pages_v_blocks_world_student_block; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_world_student_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    background_image_id integer,
    title jsonb,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_world_student_block OWNER TO postgres;

--
-- Name: _pages_v_blocks_world_student_block_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_world_student_block_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_world_student_block_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_world_student_block_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_world_student_block_id_seq OWNED BY public._pages_v_blocks_world_student_block.id;


--
-- Name: _pages_v_blocks_world_student_block_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_blocks_world_student_block_items (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    image_id integer,
    title character varying,
    z_index numeric DEFAULT 10,
    top numeric,
    bottom numeric,
    "right" numeric,
    "left" numeric,
    _uuid character varying
);


ALTER TABLE public._pages_v_blocks_world_student_block_items OWNER TO postgres;

--
-- Name: _pages_v_blocks_world_student_block_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_blocks_world_student_block_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_world_student_block_items_id_seq OWNER TO postgres;

--
-- Name: _pages_v_blocks_world_student_block_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_blocks_world_student_block_items_id_seq OWNED BY public._pages_v_blocks_world_student_block_items.id;


--
-- Name: _pages_v_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_id_seq OWNER TO postgres;

--
-- Name: _pages_v_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_id_seq OWNED BY public._pages_v.id;


--
-- Name: _pages_v_rels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    posts_id integer,
    categories_id integer
);


ALTER TABLE public._pages_v_rels OWNER TO postgres;

--
-- Name: _pages_v_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_rels_id_seq OWNER TO postgres;

--
-- Name: _pages_v_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_rels_id_seq OWNED BY public._pages_v_rels.id;


--
-- Name: _pages_v_version_hero_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._pages_v_version_hero_links (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    link_type public.enum__pages_v_version_hero_links_link_type DEFAULT 'reference'::public.enum__pages_v_version_hero_links_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum__pages_v_version_hero_links_link_appearance DEFAULT 'default'::public.enum__pages_v_version_hero_links_link_appearance,
    _uuid character varying
);


ALTER TABLE public._pages_v_version_hero_links OWNER TO postgres;

--
-- Name: _pages_v_version_hero_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._pages_v_version_hero_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_version_hero_links_id_seq OWNER TO postgres;

--
-- Name: _pages_v_version_hero_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._pages_v_version_hero_links_id_seq OWNED BY public._pages_v_version_hero_links.id;


--
-- Name: _posts_v; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._posts_v (
    id integer NOT NULL,
    parent_id integer,
    version_title character varying,
    version_hero_image_id integer,
    version_content jsonb,
    version_meta_title character varying,
    version_meta_image_id integer,
    version_meta_description character varying,
    version_published_at timestamp(3) with time zone,
    version_slug character varying,
    version_slug_lock boolean DEFAULT true,
    version_updated_at timestamp(3) with time zone,
    version_created_at timestamp(3) with time zone,
    version__status public.enum__posts_v_version_status DEFAULT 'draft'::public.enum__posts_v_version_status,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    latest boolean,
    autosave boolean
);


ALTER TABLE public._posts_v OWNER TO postgres;

--
-- Name: _posts_v_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._posts_v_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._posts_v_id_seq OWNER TO postgres;

--
-- Name: _posts_v_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._posts_v_id_seq OWNED BY public._posts_v.id;


--
-- Name: _posts_v_rels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._posts_v_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    posts_id integer,
    categories_id integer,
    users_id integer
);


ALTER TABLE public._posts_v_rels OWNER TO postgres;

--
-- Name: _posts_v_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._posts_v_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._posts_v_rels_id_seq OWNER TO postgres;

--
-- Name: _posts_v_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._posts_v_rels_id_seq OWNED BY public._posts_v_rels.id;


--
-- Name: _posts_v_version_populated_authors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._posts_v_version_populated_authors (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    _uuid character varying,
    name character varying
);


ALTER TABLE public._posts_v_version_populated_authors OWNER TO postgres;

--
-- Name: _posts_v_version_populated_authors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public._posts_v_version_populated_authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._posts_v_version_populated_authors_id_seq OWNER TO postgres;

--
-- Name: _posts_v_version_populated_authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public._posts_v_version_populated_authors_id_seq OWNED BY public._posts_v_version_populated_authors.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    title character varying NOT NULL,
    slug character varying,
    slug_lock boolean DEFAULT true,
    parent_id integer,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- Name: categories_breadcrumbs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories_breadcrumbs (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    doc_id integer,
    url character varying,
    label character varying
);


ALTER TABLE public.categories_breadcrumbs OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_id_seq OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: footer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.footer (
    id integer NOT NULL,
    description character varying,
    copyright character varying DEFAULT '┬⌐ 2024 Your Company Name. All rights reserved.'::character varying NOT NULL,
    updated_at timestamp(3) with time zone,
    created_at timestamp(3) with time zone
);


ALTER TABLE public.footer OWNER TO postgres;

--
-- Name: footer_about; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.footer_about (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_footer_about_link_type DEFAULT 'reference'::public.enum_footer_about_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying NOT NULL
);


ALTER TABLE public.footer_about OWNER TO postgres;

--
-- Name: footer_help; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.footer_help (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_footer_help_link_type DEFAULT 'reference'::public.enum_footer_help_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying NOT NULL
);


ALTER TABLE public.footer_help OWNER TO postgres;

--
-- Name: footer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.footer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.footer_id_seq OWNER TO postgres;

--
-- Name: footer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.footer_id_seq OWNED BY public.footer.id;


--
-- Name: footer_legal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.footer_legal (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_footer_legal_link_type DEFAULT 'reference'::public.enum_footer_legal_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying NOT NULL
);


ALTER TABLE public.footer_legal OWNER TO postgres;

--
-- Name: footer_rels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.footer_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    posts_id integer
);


ALTER TABLE public.footer_rels OWNER TO postgres;

--
-- Name: footer_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.footer_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.footer_rels_id_seq OWNER TO postgres;

--
-- Name: footer_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.footer_rels_id_seq OWNED BY public.footer_rels.id;


--
-- Name: footer_services; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.footer_services (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_footer_services_link_type DEFAULT 'reference'::public.enum_footer_services_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying NOT NULL
);


ALTER TABLE public.footer_services OWNER TO postgres;

--
-- Name: footer_social; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.footer_social (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_footer_social_link_type DEFAULT 'reference'::public.enum_footer_social_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying NOT NULL
);


ALTER TABLE public.footer_social OWNER TO postgres;

--
-- Name: form_submissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.form_submissions (
    id integer NOT NULL,
    form_id integer NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.form_submissions OWNER TO postgres;

--
-- Name: form_submissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.form_submissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.form_submissions_id_seq OWNER TO postgres;

--
-- Name: form_submissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.form_submissions_id_seq OWNED BY public.form_submissions.id;


--
-- Name: form_submissions_submission_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.form_submissions_submission_data (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    field character varying NOT NULL,
    value character varying NOT NULL
);


ALTER TABLE public.form_submissions_submission_data OWNER TO postgres;

--
-- Name: forms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.forms (
    id integer NOT NULL,
    title character varying NOT NULL,
    submit_button_label character varying,
    confirmation_type public.enum_forms_confirmation_type DEFAULT 'message'::public.enum_forms_confirmation_type,
    confirmation_message jsonb,
    redirect_url character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.forms OWNER TO postgres;

--
-- Name: forms_blocks_checkbox; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.forms_blocks_checkbox (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    required boolean,
    default_value boolean,
    block_name character varying
);


ALTER TABLE public.forms_blocks_checkbox OWNER TO postgres;

--
-- Name: forms_blocks_country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.forms_blocks_country (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    required boolean,
    block_name character varying
);


ALTER TABLE public.forms_blocks_country OWNER TO postgres;

--
-- Name: forms_blocks_email; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.forms_blocks_email (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    required boolean,
    block_name character varying
);


ALTER TABLE public.forms_blocks_email OWNER TO postgres;

--
-- Name: forms_blocks_message; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.forms_blocks_message (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    message jsonb,
    block_name character varying
);


ALTER TABLE public.forms_blocks_message OWNER TO postgres;

--
-- Name: forms_blocks_number; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.forms_blocks_number (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    default_value numeric,
    required boolean,
    block_name character varying
);


ALTER TABLE public.forms_blocks_number OWNER TO postgres;

--
-- Name: forms_blocks_select; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.forms_blocks_select (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    default_value character varying,
    required boolean,
    block_name character varying
);


ALTER TABLE public.forms_blocks_select OWNER TO postgres;

--
-- Name: forms_blocks_select_options; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.forms_blocks_select_options (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    label character varying NOT NULL,
    value character varying NOT NULL
);


ALTER TABLE public.forms_blocks_select_options OWNER TO postgres;

--
-- Name: forms_blocks_state; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.forms_blocks_state (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    required boolean,
    block_name character varying
);


ALTER TABLE public.forms_blocks_state OWNER TO postgres;

--
-- Name: forms_blocks_text; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.forms_blocks_text (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    default_value character varying,
    required boolean,
    block_name character varying
);


ALTER TABLE public.forms_blocks_text OWNER TO postgres;

--
-- Name: forms_blocks_textarea; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.forms_blocks_textarea (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    default_value character varying,
    required boolean,
    block_name character varying
);


ALTER TABLE public.forms_blocks_textarea OWNER TO postgres;

--
-- Name: forms_emails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.forms_emails (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    email_to character varying,
    cc character varying,
    bcc character varying,
    reply_to character varying,
    email_from character varying,
    subject character varying DEFAULT 'You''''ve received a new message.'::character varying NOT NULL,
    message jsonb
);


ALTER TABLE public.forms_emails OWNER TO postgres;

--
-- Name: forms_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.forms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.forms_id_seq OWNER TO postgres;

--
-- Name: forms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.forms_id_seq OWNED BY public.forms.id;


--
-- Name: header; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.header (
    id integer NOT NULL,
    updated_at timestamp(3) with time zone,
    created_at timestamp(3) with time zone
);


ALTER TABLE public.header OWNER TO postgres;

--
-- Name: header_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.header_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.header_id_seq OWNER TO postgres;

--
-- Name: header_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.header_id_seq OWNED BY public.header.id;


--
-- Name: header_nav_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.header_nav_items (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_header_nav_items_link_type DEFAULT 'reference'::public.enum_header_nav_items_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying NOT NULL
);


ALTER TABLE public.header_nav_items OWNER TO postgres;

--
-- Name: header_rels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.header_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    posts_id integer
);


ALTER TABLE public.header_rels OWNER TO postgres;

--
-- Name: header_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.header_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.header_rels_id_seq OWNER TO postgres;

--
-- Name: header_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.header_rels_id_seq OWNED BY public.header_rels.id;


--
-- Name: media; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.media (
    id integer NOT NULL,
    alt character varying,
    caption jsonb,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    url character varying,
    thumbnail_u_r_l character varying,
    filename character varying,
    mime_type character varying,
    filesize numeric,
    width numeric,
    height numeric,
    focal_x numeric,
    focal_y numeric,
    sizes_thumbnail_url character varying,
    sizes_thumbnail_width numeric,
    sizes_thumbnail_height numeric,
    sizes_thumbnail_mime_type character varying,
    sizes_thumbnail_filesize numeric,
    sizes_thumbnail_filename character varying,
    sizes_square_url character varying,
    sizes_square_width numeric,
    sizes_square_height numeric,
    sizes_square_mime_type character varying,
    sizes_square_filesize numeric,
    sizes_square_filename character varying,
    sizes_small_url character varying,
    sizes_small_width numeric,
    sizes_small_height numeric,
    sizes_small_mime_type character varying,
    sizes_small_filesize numeric,
    sizes_small_filename character varying,
    sizes_medium_url character varying,
    sizes_medium_width numeric,
    sizes_medium_height numeric,
    sizes_medium_mime_type character varying,
    sizes_medium_filesize numeric,
    sizes_medium_filename character varying,
    sizes_large_url character varying,
    sizes_large_width numeric,
    sizes_large_height numeric,
    sizes_large_mime_type character varying,
    sizes_large_filesize numeric,
    sizes_large_filename character varying,
    sizes_xlarge_url character varying,
    sizes_xlarge_width numeric,
    sizes_xlarge_height numeric,
    sizes_xlarge_mime_type character varying,
    sizes_xlarge_filesize numeric,
    sizes_xlarge_filename character varying,
    sizes_og_url character varying,
    sizes_og_width numeric,
    sizes_og_height numeric,
    sizes_og_mime_type character varying,
    sizes_og_filesize numeric,
    sizes_og_filename character varying
);


ALTER TABLE public.media OWNER TO postgres;

--
-- Name: media_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.media_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.media_id_seq OWNER TO postgres;

--
-- Name: media_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.media_id_seq OWNED BY public.media.id;


--
-- Name: pages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages (
    id integer NOT NULL,
    title character varying,
    hero_type public.enum_pages_hero_type DEFAULT 'lowImpact'::public.enum_pages_hero_type,
    hero_heading_content character varying,
    hero_heading_font_family public.enum_pages_hero_heading_font_family DEFAULT 'Inter'::public.enum_pages_hero_heading_font_family,
    hero_heading_font_size character varying DEFAULT '1rem'::character varying,
    hero_description_content character varying,
    hero_description_font_family public.enum_pages_hero_description_font_family DEFAULT 'Inter'::public.enum_pages_hero_description_font_family,
    hero_description_font_size character varying DEFAULT '1rem'::character varying,
    hero_media_id integer,
    meta_title character varying,
    meta_image_id integer,
    meta_description character varying,
    published_at timestamp(3) with time zone,
    slug character varying,
    slug_lock boolean DEFAULT true,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    _status public.enum_pages_status DEFAULT 'draft'::public.enum_pages_status
);


ALTER TABLE public.pages OWNER TO postgres;

--
-- Name: pages_blocks_appointment_block; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_appointment_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    left_content_title character varying,
    left_content_sub_title character varying,
    left_content_highlight_text character varying,
    left_content_extra_text character varying,
    left_content_button_text character varying,
    left_content_button_url character varying,
    right_schedule_date timestamp(3) with time zone,
    right_schedule_day character varying,
    bottom_text character varying,
    block_name character varying
);


ALTER TABLE public.pages_blocks_appointment_block OWNER TO postgres;

--
-- Name: pages_blocks_appointment_block_left_content_paragraphs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_appointment_block_left_content_paragraphs (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    text character varying
);


ALTER TABLE public.pages_blocks_appointment_block_left_content_paragraphs OWNER TO postgres;

--
-- Name: pages_blocks_appointment_block_right_schedule_slots; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_appointment_block_right_schedule_slots (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    "time" character varying
);


ALTER TABLE public.pages_blocks_appointment_block_right_schedule_slots OWNER TO postgres;

--
-- Name: pages_blocks_appointment_block_right_universities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_appointment_block_right_universities (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    img_id integer,
    alt character varying
);


ALTER TABLE public.pages_blocks_appointment_block_right_universities OWNER TO postgres;

--
-- Name: pages_blocks_archive; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_archive (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    intro_content jsonb,
    populate_by public.enum_pages_blocks_archive_populate_by DEFAULT 'collection'::public.enum_pages_blocks_archive_populate_by,
    relation_to public.enum_pages_blocks_archive_relation_to DEFAULT 'posts'::public.enum_pages_blocks_archive_relation_to,
    "limit" numeric DEFAULT 10,
    block_name character varying
);


ALTER TABLE public.pages_blocks_archive OWNER TO postgres;

--
-- Name: pages_blocks_content; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_content (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    block_name character varying
);


ALTER TABLE public.pages_blocks_content OWNER TO postgres;

--
-- Name: pages_blocks_content_columns; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_content_columns (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    size public.enum_pages_blocks_content_columns_size DEFAULT 'oneThird'::public.enum_pages_blocks_content_columns_size,
    rich_text jsonb,
    enable_link boolean,
    link_type public.enum_pages_blocks_content_columns_link_type DEFAULT 'reference'::public.enum_pages_blocks_content_columns_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum_pages_blocks_content_columns_link_appearance DEFAULT 'default'::public.enum_pages_blocks_content_columns_link_appearance
);


ALTER TABLE public.pages_blocks_content_columns OWNER TO postgres;

--
-- Name: pages_blocks_counseling_block; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_counseling_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    heading character varying,
    description character varying,
    button_text character varying,
    button_url character varying,
    background_image_id integer,
    block_name character varying
);


ALTER TABLE public.pages_blocks_counseling_block OWNER TO postgres;

--
-- Name: pages_blocks_counseling_block_cards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_counseling_block_cards (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    title character varying,
    course_name character varying,
    card_image_id integer,
    icon_id integer
);


ALTER TABLE public.pages_blocks_counseling_block_cards OWNER TO postgres;

--
-- Name: pages_blocks_counseling_block_cards_countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_counseling_block_cards_countries (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    name character varying
);


ALTER TABLE public.pages_blocks_counseling_block_cards_countries OWNER TO postgres;

--
-- Name: pages_blocks_cta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_cta (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    rich_text jsonb,
    block_name character varying
);


ALTER TABLE public.pages_blocks_cta OWNER TO postgres;

--
-- Name: pages_blocks_cta_block; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_cta_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    tagline character varying,
    image_id integer,
    brand_logo_id integer,
    block_name character varying
);


ALTER TABLE public.pages_blocks_cta_block OWNER TO postgres;

--
-- Name: pages_blocks_cta_block_offices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_cta_block_offices (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    location character varying
);


ALTER TABLE public.pages_blocks_cta_block_offices OWNER TO postgres;

--
-- Name: pages_blocks_cta_block_phone_numbers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_cta_block_phone_numbers (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    number character varying
);


ALTER TABLE public.pages_blocks_cta_block_phone_numbers OWNER TO postgres;

--
-- Name: pages_blocks_cta_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_cta_links (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_pages_blocks_cta_links_link_type DEFAULT 'reference'::public.enum_pages_blocks_cta_links_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum_pages_blocks_cta_links_link_appearance DEFAULT 'default'::public.enum_pages_blocks_cta_links_link_appearance
);


ALTER TABLE public.pages_blocks_cta_links OWNER TO postgres;

--
-- Name: pages_blocks_form_block; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_form_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    form_id integer,
    enable_intro boolean,
    intro_content jsonb,
    block_name character varying
);


ALTER TABLE public.pages_blocks_form_block OWNER TO postgres;

--
-- Name: pages_blocks_get_started_block; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_get_started_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    heading character varying DEFAULT 'Let''''s make it happen!'::character varying,
    title character varying DEFAULT 'Start your journey today!'::character varying,
    footer_text character varying DEFAULT 'And so much more to make your journey hassle-free!'::character varying,
    image_id integer,
    block_name character varying
);


ALTER TABLE public.pages_blocks_get_started_block OWNER TO postgres;

--
-- Name: pages_blocks_get_started_block_features; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_get_started_block_features (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    text character varying
);


ALTER TABLE public.pages_blocks_get_started_block_features OWNER TO postgres;

--
-- Name: pages_blocks_ielts_block; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_ielts_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    title character varying DEFAULT 'Master English. Ace IELTS.'::character varying,
    subtitle character varying DEFAULT 'Prep Smarter, Score Higher.'::character varying,
    description character varying,
    ielts_text character varying DEFAULT 'IELTS'::character varying,
    ielts_image_id integer,
    learning_type_title character varying DEFAULT 'Hybrid Learning'::character varying,
    learning_type_subtitle character varying DEFAULT 'Classroom Or Online (Seamlessly Combined)'::character varying,
    cta_button_text character varying DEFAULT 'Join The Classes'::character varying,
    cta_button_href character varying DEFAULT '/join'::character varying,
    image_id integer,
    block_name character varying
);


ALTER TABLE public.pages_blocks_ielts_block OWNER TO postgres;

--
-- Name: pages_blocks_ielts_block_features; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_ielts_block_features (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    text character varying
);


ALTER TABLE public.pages_blocks_ielts_block_features OWNER TO postgres;

--
-- Name: pages_blocks_ielts_block_study_modes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_ielts_block_study_modes (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    label character varying,
    value character varying
);


ALTER TABLE public.pages_blocks_ielts_block_study_modes OWNER TO postgres;

--
-- Name: pages_blocks_map_block; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_map_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    heading character varying DEFAULT 'Visit Us'::character varying,
    block_name character varying
);


ALTER TABLE public.pages_blocks_map_block OWNER TO postgres;

--
-- Name: pages_blocks_map_block_offices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_map_block_offices (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    name character varying,
    address character varying,
    map_iframe character varying
);


ALTER TABLE public.pages_blocks_map_block_offices OWNER TO postgres;

--
-- Name: pages_blocks_media_block; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_media_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    media_id integer,
    block_name character varying
);


ALTER TABLE public.pages_blocks_media_block OWNER TO postgres;

--
-- Name: pages_blocks_study_abroad_block; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_study_abroad_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    heading character varying,
    subheading character varying,
    description character varying,
    title_content character varying,
    title_font public.enum_pages_blocks_study_abroad_block_title_font DEFAULT 'Inter'::public.enum_pages_blocks_study_abroad_block_title_font,
    title_size character varying DEFAULT '1rem'::character varying,
    title_description character varying,
    block_name character varying
);


ALTER TABLE public.pages_blocks_study_abroad_block OWNER TO postgres;

--
-- Name: pages_blocks_study_abroad_block_cards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_study_abroad_block_cards (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    course_description character varying,
    description character varying,
    button_text character varying DEFAULT 'Get Course List'::character varying,
    button_link character varying,
    image_id integer,
    image_position public.enum_pages_blocks_study_abroad_block_cards_image_position DEFAULT 'right'::public.enum_pages_blocks_study_abroad_block_cards_image_position
);


ALTER TABLE public.pages_blocks_study_abroad_block_cards OWNER TO postgres;

--
-- Name: pages_blocks_testimonials_block; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_testimonials_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    heading character varying,
    description character varying,
    block_name character varying
);


ALTER TABLE public.pages_blocks_testimonials_block OWNER TO postgres;

--
-- Name: pages_blocks_testimonials_block_testimonials; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_testimonials_block_testimonials (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    image_id integer,
    review character varying,
    name character varying,
    course character varying,
    university_image_id integer
);


ALTER TABLE public.pages_blocks_testimonials_block_testimonials OWNER TO postgres;

--
-- Name: pages_blocks_universities_block; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_universities_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    main_heading character varying,
    sub_heading character varying,
    description character varying,
    block_name character varying
);


ALTER TABLE public.pages_blocks_universities_block OWNER TO postgres;

--
-- Name: pages_blocks_universities_block_stats; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_universities_block_stats (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    value character varying,
    label character varying
);


ALTER TABLE public.pages_blocks_universities_block_stats OWNER TO postgres;

--
-- Name: pages_blocks_universities_block_universities_images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_universities_block_universities_images (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    image_id integer
);


ALTER TABLE public.pages_blocks_universities_block_universities_images OWNER TO postgres;

--
-- Name: pages_blocks_world_student_block; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_world_student_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    background_image_id integer,
    title jsonb,
    block_name character varying
);


ALTER TABLE public.pages_blocks_world_student_block OWNER TO postgres;

--
-- Name: pages_blocks_world_student_block_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_blocks_world_student_block_items (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    image_id integer,
    title character varying,
    z_index numeric DEFAULT 10,
    top numeric,
    bottom numeric,
    "right" numeric,
    "left" numeric
);


ALTER TABLE public.pages_blocks_world_student_block_items OWNER TO postgres;

--
-- Name: pages_hero_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_hero_links (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_pages_hero_links_link_type DEFAULT 'reference'::public.enum_pages_hero_links_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum_pages_hero_links_link_appearance DEFAULT 'default'::public.enum_pages_hero_links_link_appearance
);


ALTER TABLE public.pages_hero_links OWNER TO postgres;

--
-- Name: pages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pages_id_seq OWNER TO postgres;

--
-- Name: pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pages_id_seq OWNED BY public.pages.id;


--
-- Name: pages_rels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    posts_id integer,
    categories_id integer
);


ALTER TABLE public.pages_rels OWNER TO postgres;

--
-- Name: pages_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pages_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pages_rels_id_seq OWNER TO postgres;

--
-- Name: pages_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pages_rels_id_seq OWNED BY public.pages_rels.id;


--
-- Name: payload_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payload_jobs (
    id integer NOT NULL,
    input jsonb,
    completed_at timestamp(3) with time zone,
    total_tried numeric DEFAULT 0,
    has_error boolean DEFAULT false,
    error jsonb,
    task_slug public.enum_payload_jobs_task_slug,
    queue character varying DEFAULT 'default'::character varying,
    wait_until timestamp(3) with time zone,
    processing boolean DEFAULT false,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.payload_jobs OWNER TO postgres;

--
-- Name: payload_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payload_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payload_jobs_id_seq OWNER TO postgres;

--
-- Name: payload_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payload_jobs_id_seq OWNED BY public.payload_jobs.id;


--
-- Name: payload_jobs_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payload_jobs_log (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    executed_at timestamp(3) with time zone NOT NULL,
    completed_at timestamp(3) with time zone NOT NULL,
    task_slug public.enum_payload_jobs_log_task_slug NOT NULL,
    task_i_d character varying NOT NULL,
    input jsonb,
    output jsonb,
    state public.enum_payload_jobs_log_state NOT NULL,
    error jsonb
);


ALTER TABLE public.payload_jobs_log OWNER TO postgres;

--
-- Name: payload_locked_documents; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payload_locked_documents (
    id integer NOT NULL,
    global_slug character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.payload_locked_documents OWNER TO postgres;

--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payload_locked_documents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payload_locked_documents_id_seq OWNER TO postgres;

--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payload_locked_documents_id_seq OWNED BY public.payload_locked_documents.id;


--
-- Name: payload_locked_documents_rels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payload_locked_documents_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    posts_id integer,
    media_id integer,
    categories_id integer,
    users_id integer,
    redirects_id integer,
    forms_id integer,
    form_submissions_id integer,
    search_id integer,
    payload_jobs_id integer
);


ALTER TABLE public.payload_locked_documents_rels OWNER TO postgres;

--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payload_locked_documents_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payload_locked_documents_rels_id_seq OWNER TO postgres;

--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payload_locked_documents_rels_id_seq OWNED BY public.payload_locked_documents_rels.id;


--
-- Name: payload_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payload_migrations (
    id integer NOT NULL,
    name character varying,
    batch numeric,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.payload_migrations OWNER TO postgres;

--
-- Name: payload_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payload_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payload_migrations_id_seq OWNER TO postgres;

--
-- Name: payload_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payload_migrations_id_seq OWNED BY public.payload_migrations.id;


--
-- Name: payload_preferences; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payload_preferences (
    id integer NOT NULL,
    key character varying,
    value jsonb,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.payload_preferences OWNER TO postgres;

--
-- Name: payload_preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payload_preferences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payload_preferences_id_seq OWNER TO postgres;

--
-- Name: payload_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payload_preferences_id_seq OWNED BY public.payload_preferences.id;


--
-- Name: payload_preferences_rels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payload_preferences_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    users_id integer
);


ALTER TABLE public.payload_preferences_rels OWNER TO postgres;

--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payload_preferences_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payload_preferences_rels_id_seq OWNER TO postgres;

--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payload_preferences_rels_id_seq OWNED BY public.payload_preferences_rels.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    title character varying,
    hero_image_id integer,
    content jsonb,
    meta_title character varying,
    meta_image_id integer,
    meta_description character varying,
    published_at timestamp(3) with time zone,
    slug character varying,
    slug_lock boolean DEFAULT true,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    _status public.enum_posts_status DEFAULT 'draft'::public.enum_posts_status
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.posts_id_seq OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: posts_populated_authors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts_populated_authors (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    name character varying
);


ALTER TABLE public.posts_populated_authors OWNER TO postgres;

--
-- Name: posts_rels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    posts_id integer,
    categories_id integer,
    users_id integer
);


ALTER TABLE public.posts_rels OWNER TO postgres;

--
-- Name: posts_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posts_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.posts_rels_id_seq OWNER TO postgres;

--
-- Name: posts_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posts_rels_id_seq OWNED BY public.posts_rels.id;


--
-- Name: redirects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.redirects (
    id integer NOT NULL,
    "from" character varying NOT NULL,
    to_type public.enum_redirects_to_type DEFAULT 'reference'::public.enum_redirects_to_type,
    to_url character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.redirects OWNER TO postgres;

--
-- Name: redirects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.redirects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.redirects_id_seq OWNER TO postgres;

--
-- Name: redirects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.redirects_id_seq OWNED BY public.redirects.id;


--
-- Name: redirects_rels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.redirects_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    posts_id integer
);


ALTER TABLE public.redirects_rels OWNER TO postgres;

--
-- Name: redirects_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.redirects_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.redirects_rels_id_seq OWNER TO postgres;

--
-- Name: redirects_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.redirects_rels_id_seq OWNED BY public.redirects_rels.id;


--
-- Name: search; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.search (
    id integer NOT NULL,
    title character varying,
    priority numeric,
    slug character varying,
    meta_title character varying,
    meta_description character varying,
    meta_image_id integer,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.search OWNER TO postgres;

--
-- Name: search_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.search_categories (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    relation_to character varying,
    title character varying
);


ALTER TABLE public.search_categories OWNER TO postgres;

--
-- Name: search_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.search_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.search_id_seq OWNER TO postgres;

--
-- Name: search_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.search_id_seq OWNED BY public.search.id;


--
-- Name: search_rels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.search_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    posts_id integer
);


ALTER TABLE public.search_rels OWNER TO postgres;

--
-- Name: search_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.search_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.search_rels_id_seq OWNER TO postgres;

--
-- Name: search_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.search_rels_id_seq OWNED BY public.search_rels.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    email character varying NOT NULL,
    reset_password_token character varying,
    reset_password_expiration timestamp(3) with time zone,
    salt character varying,
    hash character varying,
    login_attempts numeric DEFAULT 0,
    lock_until timestamp(3) with time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: _pages_v id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v ALTER COLUMN id SET DEFAULT nextval('public._pages_v_id_seq'::regclass);


--
-- Name: _pages_v_blocks_appointment_block id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_appointment_block ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_appointment_block_id_seq'::regclass);


--
-- Name: _pages_v_blocks_appointment_block_left_content_paragraphs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_appointment_block_left_content_paragraphs ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_appointment_block_left_content_paragraph_id_seq'::regclass);


--
-- Name: _pages_v_blocks_appointment_block_right_schedule_slots id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_appointment_block_right_schedule_slots ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_appointment_block_right_schedule_slots_id_seq'::regclass);


--
-- Name: _pages_v_blocks_appointment_block_right_universities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_appointment_block_right_universities ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_appointment_block_right_universities_id_seq'::regclass);


--
-- Name: _pages_v_blocks_archive id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_archive ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_archive_id_seq'::regclass);


--
-- Name: _pages_v_blocks_content id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_content ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_content_id_seq'::regclass);


--
-- Name: _pages_v_blocks_content_columns id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_content_columns ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_content_columns_id_seq'::regclass);


--
-- Name: _pages_v_blocks_counseling_block id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_counseling_block ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_counseling_block_id_seq'::regclass);


--
-- Name: _pages_v_blocks_counseling_block_cards id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_counseling_block_cards ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_counseling_block_cards_id_seq'::regclass);


--
-- Name: _pages_v_blocks_counseling_block_cards_countries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_counseling_block_cards_countries ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_counseling_block_cards_countries_id_seq'::regclass);


--
-- Name: _pages_v_blocks_cta id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_cta ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_cta_id_seq'::regclass);


--
-- Name: _pages_v_blocks_cta_block id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_cta_block ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_cta_block_id_seq'::regclass);


--
-- Name: _pages_v_blocks_cta_block_offices id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_cta_block_offices ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_cta_block_offices_id_seq'::regclass);


--
-- Name: _pages_v_blocks_cta_block_phone_numbers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_cta_block_phone_numbers ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_cta_block_phone_numbers_id_seq'::regclass);


--
-- Name: _pages_v_blocks_cta_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_cta_links ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_cta_links_id_seq'::regclass);


--
-- Name: _pages_v_blocks_form_block id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_form_block ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_form_block_id_seq'::regclass);


--
-- Name: _pages_v_blocks_get_started_block id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_get_started_block ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_get_started_block_id_seq'::regclass);


--
-- Name: _pages_v_blocks_get_started_block_features id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_get_started_block_features ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_get_started_block_features_id_seq'::regclass);


--
-- Name: _pages_v_blocks_ielts_block id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_ielts_block ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_ielts_block_id_seq'::regclass);


--
-- Name: _pages_v_blocks_ielts_block_features id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_ielts_block_features ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_ielts_block_features_id_seq'::regclass);


--
-- Name: _pages_v_blocks_ielts_block_study_modes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_ielts_block_study_modes ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_ielts_block_study_modes_id_seq'::regclass);


--
-- Name: _pages_v_blocks_map_block id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_map_block ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_map_block_id_seq'::regclass);


--
-- Name: _pages_v_blocks_map_block_offices id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_map_block_offices ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_map_block_offices_id_seq'::regclass);


--
-- Name: _pages_v_blocks_media_block id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_media_block ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_media_block_id_seq'::regclass);


--
-- Name: _pages_v_blocks_study_abroad_block id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_study_abroad_block ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_study_abroad_block_id_seq'::regclass);


--
-- Name: _pages_v_blocks_study_abroad_block_cards id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_study_abroad_block_cards ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_study_abroad_block_cards_id_seq'::regclass);


--
-- Name: _pages_v_blocks_testimonials_block id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_testimonials_block ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_testimonials_block_id_seq'::regclass);


--
-- Name: _pages_v_blocks_testimonials_block_testimonials id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_testimonials_block_testimonials ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_testimonials_block_testimonials_id_seq'::regclass);


--
-- Name: _pages_v_blocks_universities_block id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_universities_block ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_universities_block_id_seq'::regclass);


--
-- Name: _pages_v_blocks_universities_block_stats id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_universities_block_stats ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_universities_block_stats_id_seq'::regclass);


--
-- Name: _pages_v_blocks_universities_block_universities_images id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_universities_block_universities_images ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_universities_block_universities_images_id_seq'::regclass);


--
-- Name: _pages_v_blocks_world_student_block id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_world_student_block ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_world_student_block_id_seq'::regclass);


--
-- Name: _pages_v_blocks_world_student_block_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_world_student_block_items ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_world_student_block_items_id_seq'::regclass);


--
-- Name: _pages_v_rels id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_rels ALTER COLUMN id SET DEFAULT nextval('public._pages_v_rels_id_seq'::regclass);


--
-- Name: _pages_v_version_hero_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_version_hero_links ALTER COLUMN id SET DEFAULT nextval('public._pages_v_version_hero_links_id_seq'::regclass);


--
-- Name: _posts_v id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._posts_v ALTER COLUMN id SET DEFAULT nextval('public._posts_v_id_seq'::regclass);


--
-- Name: _posts_v_rels id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._posts_v_rels ALTER COLUMN id SET DEFAULT nextval('public._posts_v_rels_id_seq'::regclass);


--
-- Name: _posts_v_version_populated_authors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._posts_v_version_populated_authors ALTER COLUMN id SET DEFAULT nextval('public._posts_v_version_populated_authors_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: footer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer ALTER COLUMN id SET DEFAULT nextval('public.footer_id_seq'::regclass);


--
-- Name: footer_rels id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_rels ALTER COLUMN id SET DEFAULT nextval('public.footer_rels_id_seq'::regclass);


--
-- Name: form_submissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.form_submissions ALTER COLUMN id SET DEFAULT nextval('public.form_submissions_id_seq'::regclass);


--
-- Name: forms id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms ALTER COLUMN id SET DEFAULT nextval('public.forms_id_seq'::regclass);


--
-- Name: header id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.header ALTER COLUMN id SET DEFAULT nextval('public.header_id_seq'::regclass);


--
-- Name: header_rels id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.header_rels ALTER COLUMN id SET DEFAULT nextval('public.header_rels_id_seq'::regclass);


--
-- Name: media id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.media ALTER COLUMN id SET DEFAULT nextval('public.media_id_seq'::regclass);


--
-- Name: pages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages ALTER COLUMN id SET DEFAULT nextval('public.pages_id_seq'::regclass);


--
-- Name: pages_rels id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_rels ALTER COLUMN id SET DEFAULT nextval('public.pages_rels_id_seq'::regclass);


--
-- Name: payload_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payload_jobs ALTER COLUMN id SET DEFAULT nextval('public.payload_jobs_id_seq'::regclass);


--
-- Name: payload_locked_documents id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payload_locked_documents ALTER COLUMN id SET DEFAULT nextval('public.payload_locked_documents_id_seq'::regclass);


--
-- Name: payload_locked_documents_rels id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payload_locked_documents_rels ALTER COLUMN id SET DEFAULT nextval('public.payload_locked_documents_rels_id_seq'::regclass);


--
-- Name: payload_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payload_migrations ALTER COLUMN id SET DEFAULT nextval('public.payload_migrations_id_seq'::regclass);


--
-- Name: payload_preferences id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payload_preferences ALTER COLUMN id SET DEFAULT nextval('public.payload_preferences_id_seq'::regclass);


--
-- Name: payload_preferences_rels id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payload_preferences_rels ALTER COLUMN id SET DEFAULT nextval('public.payload_preferences_rels_id_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: posts_rels id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts_rels ALTER COLUMN id SET DEFAULT nextval('public.posts_rels_id_seq'::regclass);


--
-- Name: redirects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.redirects ALTER COLUMN id SET DEFAULT nextval('public.redirects_id_seq'::regclass);


--
-- Name: redirects_rels id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.redirects_rels ALTER COLUMN id SET DEFAULT nextval('public.redirects_rels_id_seq'::regclass);


--
-- Name: search id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.search ALTER COLUMN id SET DEFAULT nextval('public.search_id_seq'::regclass);


--
-- Name: search_rels id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.search_rels ALTER COLUMN id SET DEFAULT nextval('public.search_rels_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: _pages_v; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v (id, parent_id, version_title, version_hero_type, version_hero_heading_content, version_hero_heading_font_family, version_hero_heading_font_size, version_hero_description_content, version_hero_description_font_family, version_hero_description_font_size, version_hero_media_id, version_meta_title, version_meta_image_id, version_meta_description, version_published_at, version_slug, version_slug_lock, version_updated_at, version_created_at, version__status, created_at, updated_at, latest, autosave) FROM stdin;
89	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-15 15:29:59.864+05:30	2025-02-14 14:28:13.925+05:30	published	2025-02-15 15:30:00.201+05:30	2025-02-15 15:30:00.205+05:30	t	f
87	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-15 15:19:38.552+05:30	2025-02-14 14:28:13.925+05:30	published	2025-02-15 15:19:38.93+05:30	2025-02-15 15:19:38.933+05:30	f	f
45	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 15:32:03.432+05:30	2025-02-14 14:28:13.925+05:30	draft	2025-02-14 15:27:11.095+05:30	2025-02-14 15:32:03.473+05:30	f	t
68	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 16:39:07.129+05:30	2025-02-14 14:28:13.925+05:30	published	2025-02-14 16:39:07.431+05:30	2025-02-14 16:39:07.433+05:30	f	f
85	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-15 12:38:03.983+05:30	2025-02-14 14:28:13.925+05:30	published	2025-02-15 12:38:04.281+05:30	2025-02-15 12:38:04.287+05:30	f	f
80	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 17:32:33.393+05:30	2025-02-14 14:28:13.925+05:30	published	2025-02-14 17:32:33.769+05:30	2025-02-14 17:32:33.771+05:30	f	f
47	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 15:32:20.058+05:30	2025-02-14 14:28:13.925+05:30	published	2025-02-14 15:32:20.144+05:30	2025-02-14 15:32:20.146+05:30	f	f
81	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-15 10:09:07.556+05:30	2025-02-14 14:28:13.925+05:30	published	2025-02-15 10:09:07.826+05:30	2025-02-15 10:09:07.829+05:30	f	f
53	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 15:43:31.898+05:30	2025-02-14 14:28:13.925+05:30	draft	2025-02-14 15:43:22.962+05:30	2025-02-14 15:43:31.938+05:30	f	t
67	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 16:38:56.595+05:30	2025-02-14 14:28:13.925+05:30	draft	2025-02-14 16:38:19.956+05:30	2025-02-14 16:38:56.627+05:30	f	t
54	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 15:43:39.469+05:30	2025-02-14 14:28:13.925+05:30	published	2025-02-14 15:43:39.796+05:30	2025-02-14 15:43:39.803+05:30	f	f
84	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-15 11:19:47.375+05:30	2025-02-14 14:28:13.925+05:30	published	2025-02-15 11:19:47.705+05:30	2025-02-15 11:19:47.708+05:30	f	f
74	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 16:50:47.281+05:30	2025-02-14 14:28:13.925+05:30	published	2025-02-14 16:50:47.43+05:30	2025-02-14 16:50:47.433+05:30	f	f
72	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 16:47:13.685+05:30	2025-02-14 14:28:13.925+05:30	published	2025-02-14 16:47:14.006+05:30	2025-02-14 16:47:14.008+05:30	f	f
75	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 17:17:25.139+05:30	2025-02-14 14:28:13.925+05:30	draft	2025-02-14 17:16:36.271+05:30	2025-02-14 17:17:25.165+05:30	f	t
58	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 15:54:02.934+05:30	2025-02-14 14:28:13.925+05:30	published	2025-02-14 15:54:03.282+05:30	2025-02-14 15:54:03.285+05:30	f	f
40	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 15:25:58.093+05:30	2025-02-14 14:28:13.925+05:30	draft	2025-02-14 15:20:42.674+05:30	2025-02-14 15:25:58.12+05:30	f	t
57	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 15:53:22.886+05:30	2025-02-14 14:28:13.925+05:30	draft	2025-02-14 15:50:47.09+05:30	2025-02-14 15:53:22.916+05:30	f	t
79	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 17:32:28.607+05:30	2025-02-14 14:28:13.925+05:30	draft	2025-02-14 17:32:16.088+05:30	2025-02-14 17:32:28.64+05:30	f	t
86	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-15 15:19:15.539+05:30	2025-02-14 14:28:13.925+05:30	draft	2025-02-15 12:38:04.688+05:30	2025-02-15 15:19:15.568+05:30	f	t
78	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 17:25:45.77+05:30	2025-02-14 14:28:13.925+05:30	published	2025-02-14 17:25:46.105+05:30	2025-02-14 17:25:46.11+05:30	f	f
82	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-15 10:12:00.821+05:30	2025-02-14 14:28:13.925+05:30	published	2025-02-15 10:12:01.117+05:30	2025-02-15 10:12:01.12+05:30	f	f
43	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 15:26:39.963+05:30	2025-02-14 14:28:13.925+05:30	published	2025-02-14 15:26:40.254+05:30	2025-02-14 15:26:40.255+05:30	f	f
61	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 16:33:21.262+05:30	2025-02-14 14:28:13.925+05:30	draft	2025-02-14 16:32:42.88+05:30	2025-02-14 16:33:21.307+05:30	f	t
55	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 15:44:52.246+05:30	2025-02-14 14:28:13.925+05:30	draft	2025-02-14 15:44:10.187+05:30	2025-02-14 15:44:52.275+05:30	f	t
42	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 15:26:38.156+05:30	2025-02-14 14:28:13.925+05:30	draft	2025-02-14 15:26:38.156+05:30	2025-02-14 15:26:38.185+05:30	f	t
76	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 17:17:32.575+05:30	2025-02-14 14:28:13.925+05:30	published	2025-02-14 17:17:32.941+05:30	2025-02-14 17:17:32.943+05:30	f	f
63	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 16:34:54.406+05:30	2025-02-14 14:28:13.925+05:30	draft	2025-02-14 16:34:23.307+05:30	2025-02-14 16:34:54.431+05:30	f	t
62	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 16:33:27.194+05:30	2025-02-14 14:28:13.925+05:30	published	2025-02-14 16:33:27.43+05:30	2025-02-14 16:33:27.434+05:30	f	f
52	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 15:38:52.284+05:30	2025-02-14 14:28:13.925+05:30	published	2025-02-14 15:38:52.567+05:30	2025-02-14 15:38:52.569+05:30	f	f
69	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 16:40:41.74+05:30	2025-02-14 14:28:13.925+05:30	draft	2025-02-14 16:39:08.106+05:30	2025-02-14 16:40:41.772+05:30	f	t
77	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 17:25:40.166+05:30	2025-02-14 14:28:13.925+05:30	draft	2025-02-14 17:17:33.224+05:30	2025-02-14 17:25:40.202+05:30	f	t
64	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 16:35:02.119+05:30	2025-02-14 14:28:13.925+05:30	published	2025-02-14 16:35:02.255+05:30	2025-02-14 16:35:02.257+05:30	f	f
70	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 16:40:45.905+05:30	2025-02-14 14:28:13.925+05:30	published	2025-02-14 16:40:46.239+05:30	2025-02-14 16:40:46.241+05:30	f	f
83	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-15 11:19:45.833+05:30	2025-02-14 14:28:13.925+05:30	draft	2025-02-15 11:19:35.836+05:30	2025-02-15 11:19:45.862+05:30	f	t
49	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 15:33:53.763+05:30	2025-02-14 14:28:13.925+05:30	published	2025-02-14 15:33:54.097+05:30	2025-02-14 15:33:54.1+05:30	f	f
48	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 15:33:48.892+05:30	2025-02-14 14:28:13.925+05:30	draft	2025-02-14 15:33:48.892+05:30	2025-02-14 15:33:48.93+05:30	f	t
60	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 16:31:56.73+05:30	2025-02-14 14:28:13.925+05:30	published	2025-02-14 16:31:56.993+05:30	2025-02-14 16:31:56.995+05:30	f	f
88	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-15 15:28:43.827+05:30	2025-02-14 14:28:13.925+05:30	draft	2025-02-15 15:19:39.273+05:30	2025-02-15 15:28:43.859+05:30	f	t
66	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 16:38:19.515+05:30	2025-02-14 14:28:13.925+05:30	published	2025-02-14 16:38:19.751+05:30	2025-02-14 16:38:19.752+05:30	f	f
73	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 16:50:33.059+05:30	2025-02-14 14:28:13.925+05:30	draft	2025-02-14 16:50:16.703+05:30	2025-02-14 16:50:33.099+05:30	f	t
65	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 16:36:43.165+05:30	2025-02-14 14:28:13.925+05:30	draft	2025-02-14 16:36:20.879+05:30	2025-02-14 16:36:43.199+05:30	f	t
44	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 15:27:10.541+05:30	2025-02-14 14:28:13.925+05:30	published	2025-02-14 15:27:10.847+05:30	2025-02-14 15:27:10.848+05:30	f	f
56	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 15:44:52.859+05:30	2025-02-14 14:28:13.925+05:30	published	2025-02-14 15:44:53.165+05:30	2025-02-14 15:44:53.167+05:30	f	f
59	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 16:31:55.448+05:30	2025-02-14 14:28:13.925+05:30	draft	2025-02-14 15:54:03.505+05:30	2025-02-14 16:31:55.495+05:30	f	t
71	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 16:47:11.917+05:30	2025-02-14 14:28:13.925+05:30	draft	2025-02-14 16:41:31.318+05:30	2025-02-14 16:47:11.951+05:30	f	t
41	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 15:25:58.834+05:30	2025-02-14 14:28:13.925+05:30	published	2025-02-14 15:25:59.121+05:30	2025-02-14 15:25:59.123+05:30	f	f
51	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 15:38:50.823+05:30	2025-02-14 14:28:13.925+05:30	draft	2025-02-14 15:37:37.536+05:30	2025-02-14 15:38:50.849+05:30	f	t
50	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 15:37:37.03+05:30	2025-02-14 14:28:13.925+05:30	published	2025-02-14 15:37:37.217+05:30	2025-02-14 15:37:37.219+05:30	f	f
46	4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-14 15:32:08.72+05:30	2025-02-14 14:28:13.925+05:30	published	2025-02-14 15:32:09.023+05:30	2025-02-14 15:32:09.027+05:30	f	f
\.


--
-- Data for Name: _pages_v_blocks_appointment_block; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_appointment_block (_order, _parent_id, _path, id, left_content_title, left_content_sub_title, left_content_highlight_text, left_content_extra_text, left_content_button_text, left_content_button_url, right_schedule_date, right_schedule_day, bottom_text, _uuid, block_name) FROM stdin;
2	40	version.layout	128	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	41	version.layout	129	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	42	version.layout	130	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	43	version.layout	131	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	44	version.layout	132	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	48	version.layout	137	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	45	version.layout	134	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	46	version.layout	135	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	47	version.layout	136	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	49	version.layout	138	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	50	version.layout	139	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	74	version.layout	224	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	51	version.layout	148	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	52	version.layout	149	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	53	version.layout	152	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	54	version.layout	153	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	55	version.layout	163	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	56	version.layout	164	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	57	version.layout	181	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	58	version.layout	182	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	59	version.layout	185	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	60	version.layout	186	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	61	version.layout	188	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	62	version.layout	189	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	73	version.layout	223	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	63	version.layout	193	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	64	version.layout	194	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	65	version.layout	198	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	66	version.layout	199	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	67	version.layout	201	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	68	version.layout	202	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	75	version.layout	232	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	76	version.layout	233	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	69	version.layout	208	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	70	version.layout	209	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	71	version.layout	220	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	72	version.layout	221	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	77	version.layout	245	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	78	version.layout	246	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	79	version.layout	250	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	80	version.layout	251	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
1	81	version.layout	252	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	82	version.layout	253	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	83	version.layout	256	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	84	version.layout	257	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	85	version.layout	258	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	86	version.layout	260	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	87	version.layout	261	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	88	version.layout	264	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
2	89	version.layout	265	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	67af06636e7f6bb2991c0556	\N
\.


--
-- Data for Name: _pages_v_blocks_appointment_block_left_content_paragraphs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_appointment_block_left_content_paragraphs (_order, _parent_id, id, text, _uuid) FROM stdin;
1	181	523	Discuss courses & career paths	67af067c6e7f6bb2991c0558
1	250	730	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	250	731	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	250	732	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	251	733	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	251	734	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	251	735	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	233	679	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	233	680	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	233	681	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	253	739	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	253	740	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	253	741	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	256	748	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	256	749	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	256	750	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	257	751	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	257	752	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	257	753	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	260	760	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	260	761	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	260	762	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	265	775	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	265	776	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	265	777	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	128	364	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	128	365	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	128	366	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	129	367	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	129	368	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	129	369	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	130	370	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	130	371	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	130	372	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	131	373	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	131	374	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	131	375	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	132	376	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	132	377	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	132	378	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
2	181	524	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	181	525	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	134	382	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	134	383	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	134	384	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	135	385	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	135	386	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	135	387	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	136	388	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	136	389	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	136	390	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	137	391	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	137	392	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	137	393	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	138	394	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	138	395	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	138	396	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	139	397	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	139	398	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	139	399	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	182	526	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	182	527	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	182	528	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	152	436	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	152	437	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	152	438	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	153	439	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	153	440	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	153	441	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	223	649	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	223	650	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	223	651	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	252	736	Discuss courses & career paths	67af067c6e7f6bb2991c0558
1	185	535	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	185	536	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	185	537	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	186	538	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	186	539	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	186	540	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	148	424	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	148	425	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	148	426	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	149	427	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	149	428	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	149	429	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	188	544	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	188	545	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	188	546	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	189	547	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	189	548	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	189	549	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	163	469	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	163	470	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	163	471	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	164	472	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	164	473	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	164	474	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	193	559	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	193	560	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	193	561	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	194	562	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	194	563	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	194	564	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	198	574	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	198	575	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	198	576	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	199	577	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	199	578	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	199	579	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	201	583	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	201	584	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	201	585	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	202	586	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	202	587	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	202	588	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	224	652	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	224	653	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	224	654	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
2	252	737	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	252	738	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	258	754	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	258	755	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	258	756	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	261	763	Discuss courses & career paths	67af067c6e7f6bb2991c0558
1	208	604	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	208	605	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	208	606	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	209	607	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	209	608	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	209	609	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
2	261	764	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	261	765	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	232	676	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	232	677	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	232	678	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	264	772	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	264	773	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	264	774	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	245	715	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	245	716	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	245	717	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	246	718	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	246	719	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	246	720	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	220	640	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	220	641	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	220	642	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
1	221	643	Discuss courses & career paths	67af067c6e7f6bb2991c0558
2	221	644	Get real insights from students already studying there	67af06856e7f6bb2991c055a
3	221	645	 Understand your next steps with expert guidance	67af068c6e7f6bb2991c055c
\.


--
-- Data for Name: _pages_v_blocks_appointment_block_right_schedule_slots; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_appointment_block_right_schedule_slots (_order, _parent_id, id, "time", _uuid) FROM stdin;
1	181	338	11am to 2pm	67af06a36e7f6bb2991c055e
2	181	339	2pm to 5pm	67af06b16e7f6bb2991c0560
1	182	340	11am to 2pm	67af06a36e7f6bb2991c055e
1	233	442	11am to 2pm	67af06a36e7f6bb2991c055e
2	233	443	2pm to 5pm	67af06b16e7f6bb2991c0560
2	182	341	2pm to 5pm	67af06b16e7f6bb2991c0560
1	185	346	11am to 2pm	67af06a36e7f6bb2991c055e
2	185	347	2pm to 5pm	67af06b16e7f6bb2991c0560
1	128	232	11am to 2pm	67af06a36e7f6bb2991c055e
2	128	233	2pm to 5pm	67af06b16e7f6bb2991c0560
1	129	234	11am to 2pm	67af06a36e7f6bb2991c055e
2	129	235	2pm to 5pm	67af06b16e7f6bb2991c0560
1	130	236	11am to 2pm	67af06a36e7f6bb2991c055e
2	130	237	2pm to 5pm	67af06b16e7f6bb2991c0560
1	131	238	11am to 2pm	67af06a36e7f6bb2991c055e
2	131	239	2pm to 5pm	67af06b16e7f6bb2991c0560
1	132	240	11am to 2pm	67af06a36e7f6bb2991c055e
2	132	241	2pm to 5pm	67af06b16e7f6bb2991c0560
1	186	348	11am to 2pm	67af06a36e7f6bb2991c055e
2	186	349	2pm to 5pm	67af06b16e7f6bb2991c0560
1	134	244	11am to 2pm	67af06a36e7f6bb2991c055e
2	134	245	2pm to 5pm	67af06b16e7f6bb2991c0560
1	135	246	11am to 2pm	67af06a36e7f6bb2991c055e
2	135	247	2pm to 5pm	67af06b16e7f6bb2991c0560
1	136	248	11am to 2pm	67af06a36e7f6bb2991c055e
2	136	249	2pm to 5pm	67af06b16e7f6bb2991c0560
1	137	250	11am to 2pm	67af06a36e7f6bb2991c055e
2	137	251	2pm to 5pm	67af06b16e7f6bb2991c0560
1	138	252	11am to 2pm	67af06a36e7f6bb2991c055e
2	138	253	2pm to 5pm	67af06b16e7f6bb2991c0560
1	139	254	11am to 2pm	67af06a36e7f6bb2991c055e
2	139	255	2pm to 5pm	67af06b16e7f6bb2991c0560
1	188	352	11am to 2pm	67af06a36e7f6bb2991c055e
2	188	353	2pm to 5pm	67af06b16e7f6bb2991c0560
1	189	354	11am to 2pm	67af06a36e7f6bb2991c055e
2	189	355	2pm to 5pm	67af06b16e7f6bb2991c0560
1	193	362	11am to 2pm	67af06a36e7f6bb2991c055e
2	193	363	2pm to 5pm	67af06b16e7f6bb2991c0560
1	194	364	11am to 2pm	67af06a36e7f6bb2991c055e
2	194	365	2pm to 5pm	67af06b16e7f6bb2991c0560
1	148	272	11am to 2pm	67af06a36e7f6bb2991c055e
2	148	273	2pm to 5pm	67af06b16e7f6bb2991c0560
1	149	274	11am to 2pm	67af06a36e7f6bb2991c055e
2	149	275	2pm to 5pm	67af06b16e7f6bb2991c0560
1	250	476	11am to 2pm	67af06a36e7f6bb2991c055e
2	250	477	2pm to 5pm	67af06b16e7f6bb2991c0560
1	251	478	11am to 2pm	67af06a36e7f6bb2991c055e
2	251	479	2pm to 5pm	67af06b16e7f6bb2991c0560
1	152	280	11am to 2pm	67af06a36e7f6bb2991c055e
2	152	281	2pm to 5pm	67af06b16e7f6bb2991c0560
1	153	282	11am to 2pm	67af06a36e7f6bb2991c055e
2	153	283	2pm to 5pm	67af06b16e7f6bb2991c0560
1	252	480	11am to 2pm	67af06a36e7f6bb2991c055e
2	252	481	2pm to 5pm	67af06b16e7f6bb2991c0560
1	198	372	11am to 2pm	67af06a36e7f6bb2991c055e
2	198	373	2pm to 5pm	67af06b16e7f6bb2991c0560
1	199	374	11am to 2pm	67af06a36e7f6bb2991c055e
2	199	375	2pm to 5pm	67af06b16e7f6bb2991c0560
1	201	378	11am to 2pm	67af06a36e7f6bb2991c055e
2	201	379	2pm to 5pm	67af06b16e7f6bb2991c0560
1	202	380	11am to 2pm	67af06a36e7f6bb2991c055e
2	202	381	2pm to 5pm	67af06b16e7f6bb2991c0560
1	258	492	11am to 2pm	67af06a36e7f6bb2991c055e
2	258	493	2pm to 5pm	67af06b16e7f6bb2991c0560
1	261	498	11am to 2pm	67af06a36e7f6bb2991c055e
2	261	499	2pm to 5pm	67af06b16e7f6bb2991c0560
1	163	302	11am to 2pm	67af06a36e7f6bb2991c055e
2	163	303	2pm to 5pm	67af06b16e7f6bb2991c0560
1	164	304	11am to 2pm	67af06a36e7f6bb2991c055e
2	164	305	2pm to 5pm	67af06b16e7f6bb2991c0560
1	264	504	11am to 2pm	67af06a36e7f6bb2991c055e
2	264	505	2pm to 5pm	67af06b16e7f6bb2991c0560
1	208	392	11am to 2pm	67af06a36e7f6bb2991c055e
2	208	393	2pm to 5pm	67af06b16e7f6bb2991c0560
1	209	394	11am to 2pm	67af06a36e7f6bb2991c055e
2	209	395	2pm to 5pm	67af06b16e7f6bb2991c0560
1	245	466	11am to 2pm	67af06a36e7f6bb2991c055e
2	245	467	2pm to 5pm	67af06b16e7f6bb2991c0560
1	246	468	11am to 2pm	67af06a36e7f6bb2991c055e
2	246	469	2pm to 5pm	67af06b16e7f6bb2991c0560
1	253	482	11am to 2pm	67af06a36e7f6bb2991c055e
2	253	483	2pm to 5pm	67af06b16e7f6bb2991c0560
1	256	488	11am to 2pm	67af06a36e7f6bb2991c055e
1	220	416	11am to 2pm	67af06a36e7f6bb2991c055e
2	220	417	2pm to 5pm	67af06b16e7f6bb2991c0560
1	221	418	11am to 2pm	67af06a36e7f6bb2991c055e
2	221	419	2pm to 5pm	67af06b16e7f6bb2991c0560
2	256	489	2pm to 5pm	67af06b16e7f6bb2991c0560
1	257	490	11am to 2pm	67af06a36e7f6bb2991c055e
1	223	422	11am to 2pm	67af06a36e7f6bb2991c055e
2	223	423	2pm to 5pm	67af06b16e7f6bb2991c0560
1	224	424	11am to 2pm	67af06a36e7f6bb2991c055e
2	224	425	2pm to 5pm	67af06b16e7f6bb2991c0560
2	257	491	2pm to 5pm	67af06b16e7f6bb2991c0560
1	260	496	11am to 2pm	67af06a36e7f6bb2991c055e
2	260	497	2pm to 5pm	67af06b16e7f6bb2991c0560
1	265	506	11am to 2pm	67af06a36e7f6bb2991c055e
2	265	507	2pm to 5pm	67af06b16e7f6bb2991c0560
1	232	440	11am to 2pm	67af06a36e7f6bb2991c055e
2	232	441	2pm to 5pm	67af06b16e7f6bb2991c0560
\.


--
-- Data for Name: _pages_v_blocks_appointment_block_right_universities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_appointment_block_right_universities (_order, _parent_id, id, img_id, alt, _uuid) FROM stdin;
1	181	336	25	\N	67af06b86e7f6bb2991c0562
1	233	440	25	\N	67af06b86e7f6bb2991c0562
2	233	441	21	\N	67af06c26e7f6bb2991c0564
2	181	337	21	\N	67af06c26e7f6bb2991c0564
1	182	338	25	\N	67af06b86e7f6bb2991c0562
2	182	339	21	\N	67af06c26e7f6bb2991c0564
1	185	344	25	\N	67af06b86e7f6bb2991c0562
2	185	345	21	\N	67af06c26e7f6bb2991c0564
1	128	230	25	\N	67af06b86e7f6bb2991c0562
2	128	231	21	\N	67af06c26e7f6bb2991c0564
1	129	232	25	\N	67af06b86e7f6bb2991c0562
2	129	233	21	\N	67af06c26e7f6bb2991c0564
1	130	234	25	\N	67af06b86e7f6bb2991c0562
2	130	235	21	\N	67af06c26e7f6bb2991c0564
1	131	236	25	\N	67af06b86e7f6bb2991c0562
2	131	237	21	\N	67af06c26e7f6bb2991c0564
1	132	238	25	\N	67af06b86e7f6bb2991c0562
2	132	239	21	\N	67af06c26e7f6bb2991c0564
1	186	346	25	\N	67af06b86e7f6bb2991c0562
2	186	347	21	\N	67af06c26e7f6bb2991c0564
1	134	242	25	\N	67af06b86e7f6bb2991c0562
2	134	243	21	\N	67af06c26e7f6bb2991c0564
1	135	244	25	\N	67af06b86e7f6bb2991c0562
2	135	245	21	\N	67af06c26e7f6bb2991c0564
1	136	246	25	\N	67af06b86e7f6bb2991c0562
2	136	247	21	\N	67af06c26e7f6bb2991c0564
1	137	248	25	\N	67af06b86e7f6bb2991c0562
2	137	249	21	\N	67af06c26e7f6bb2991c0564
1	138	250	25	\N	67af06b86e7f6bb2991c0562
2	138	251	21	\N	67af06c26e7f6bb2991c0564
1	139	252	25	\N	67af06b86e7f6bb2991c0562
2	139	253	21	\N	67af06c26e7f6bb2991c0564
1	188	350	25	\N	67af06b86e7f6bb2991c0562
2	188	351	21	\N	67af06c26e7f6bb2991c0564
1	189	352	25	\N	67af06b86e7f6bb2991c0562
2	189	353	21	\N	67af06c26e7f6bb2991c0564
1	193	360	25	\N	67af06b86e7f6bb2991c0562
2	193	361	21	\N	67af06c26e7f6bb2991c0564
1	194	362	25	\N	67af06b86e7f6bb2991c0562
2	194	363	21	\N	67af06c26e7f6bb2991c0564
1	148	270	25	\N	67af06b86e7f6bb2991c0562
2	148	271	21	\N	67af06c26e7f6bb2991c0564
1	149	272	25	\N	67af06b86e7f6bb2991c0562
2	149	273	21	\N	67af06c26e7f6bb2991c0564
1	152	278	25	\N	67af06b86e7f6bb2991c0562
2	152	279	21	\N	67af06c26e7f6bb2991c0564
1	153	280	25	\N	67af06b86e7f6bb2991c0562
2	153	281	21	\N	67af06c26e7f6bb2991c0564
1	245	464	25	\N	67af06b86e7f6bb2991c0562
2	245	465	21	\N	67af06c26e7f6bb2991c0564
1	198	370	25	\N	67af06b86e7f6bb2991c0562
2	198	371	21	\N	67af06c26e7f6bb2991c0564
1	199	372	25	\N	67af06b86e7f6bb2991c0562
2	199	373	21	\N	67af06c26e7f6bb2991c0564
1	246	466	25	\N	67af06b86e7f6bb2991c0562
2	246	467	21	\N	67af06c26e7f6bb2991c0564
1	201	376	25	\N	67af06b86e7f6bb2991c0562
2	201	377	21	\N	67af06c26e7f6bb2991c0564
1	202	378	25	\N	67af06b86e7f6bb2991c0562
2	202	379	21	\N	67af06c26e7f6bb2991c0564
1	250	474	25	\N	67af06b86e7f6bb2991c0562
2	250	475	21	\N	67af06c26e7f6bb2991c0564
1	163	300	25	\N	67af06b86e7f6bb2991c0562
2	163	301	21	\N	67af06c26e7f6bb2991c0564
1	164	302	25	\N	67af06b86e7f6bb2991c0562
2	164	303	21	\N	67af06c26e7f6bb2991c0564
1	251	476	25	\N	67af06b86e7f6bb2991c0562
2	251	477	21	\N	67af06c26e7f6bb2991c0564
1	208	390	25	\N	67af06b86e7f6bb2991c0562
2	208	391	21	\N	67af06c26e7f6bb2991c0564
1	209	392	25	\N	67af06b86e7f6bb2991c0562
2	209	393	21	\N	67af06c26e7f6bb2991c0564
1	252	478	25	\N	67af06b86e7f6bb2991c0562
2	252	479	21	\N	67af06c26e7f6bb2991c0564
1	253	480	25	\N	67af06b86e7f6bb2991c0562
2	253	481	21	\N	67af06c26e7f6bb2991c0564
1	256	486	25	\N	67af06b86e7f6bb2991c0562
2	256	487	21	\N	67af06c26e7f6bb2991c0564
1	257	488	25	\N	67af06b86e7f6bb2991c0562
2	257	489	21	\N	67af06c26e7f6bb2991c0564
1	258	490	25	\N	67af06b86e7f6bb2991c0562
2	258	491	21	\N	67af06c26e7f6bb2991c0564
1	260	494	25	\N	67af06b86e7f6bb2991c0562
2	260	495	21	\N	67af06c26e7f6bb2991c0564
1	261	496	25	\N	67af06b86e7f6bb2991c0562
2	261	497	21	\N	67af06c26e7f6bb2991c0564
1	220	414	25	\N	67af06b86e7f6bb2991c0562
2	220	415	21	\N	67af06c26e7f6bb2991c0564
1	221	416	25	\N	67af06b86e7f6bb2991c0562
2	221	417	21	\N	67af06c26e7f6bb2991c0564
1	223	420	25	\N	67af06b86e7f6bb2991c0562
2	223	421	21	\N	67af06c26e7f6bb2991c0564
1	224	422	25	\N	67af06b86e7f6bb2991c0562
2	224	423	21	\N	67af06c26e7f6bb2991c0564
1	264	502	25	\N	67af06b86e7f6bb2991c0562
2	264	503	21	\N	67af06c26e7f6bb2991c0564
1	265	504	25	\N	67af06b86e7f6bb2991c0562
2	265	505	21	\N	67af06c26e7f6bb2991c0564
1	232	438	25	\N	67af06b86e7f6bb2991c0562
2	232	439	21	\N	67af06c26e7f6bb2991c0564
\.


--
-- Data for Name: _pages_v_blocks_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_archive (_order, _parent_id, _path, id, intro_content, populate_by, relation_to, "limit", _uuid, block_name) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_content; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_content (_order, _parent_id, _path, id, _uuid, block_name) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_content_columns; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_content_columns (_order, _parent_id, id, size, rich_text, enable_link, link_type, link_new_tab, link_url, link_label, link_appearance, _uuid) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_counseling_block; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_counseling_block (_order, _parent_id, _path, id, heading, description, button_text, button_url, background_image_id, _uuid, block_name) FROM stdin;
3	81	version.layout	225	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	83	version.layout	229	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	84	version.layout	230	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	86	version.layout	233	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	89	version.layout	238	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	40	version.layout	101	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	41	version.layout	102	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	42	version.layout	103	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	43	version.layout	104	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	44	version.layout	105	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	45	version.layout	107	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	46	version.layout	108	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	47	version.layout	109	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	48	version.layout	110	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	49	version.layout	111	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	50	version.layout	112	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	82	version.layout	226	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	51	version.layout	121	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	52	version.layout	122	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	57	version.layout	154	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	53	version.layout	125	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	54	version.layout	126	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	58	version.layout	155	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	59	version.layout	158	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	60	version.layout	159	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	61	version.layout	161	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	62	version.layout	162	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	55	version.layout	136	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	56	version.layout	137	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	63	version.layout	166	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	64	version.layout	167	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	65	version.layout	171	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	66	version.layout	172	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	67	version.layout	174	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	68	version.layout	175	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	69	version.layout	181	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	70	version.layout	182	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	85	version.layout	231	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	87	version.layout	234	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	88	version.layout	237	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	71	version.layout	193	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	72	version.layout	194	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	73	version.layout	196	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	74	version.layout	197	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	75	version.layout	205	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	76	version.layout	206	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	77	version.layout	218	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	78	version.layout	219	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	79	version.layout	223	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
4	80	version.layout	224	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	67af099e6e7f6bb2991c056c	\N
\.


--
-- Data for Name: _pages_v_blocks_counseling_block_cards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_counseling_block_cards (_order, _parent_id, id, title, course_name, card_image_id, icon_id, _uuid) FROM stdin;
1	231	675	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	231	676	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	231	677	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
4	231	678	Selecting the best Choices available	MEDICAL	24	8	67b02aeaba0984afdd898446
5	231	679	Selecting the best Choices available	MEDICAL	24	8	67b02aecba0984afdd898460
6	231	680	Selecting the best Choices available	MEDICAL	24	8	67b02af2ba0984afdd89847a
7	231	681	Selecting the best Choices available	MEDICAL	24	8	67b02af7ba0984afdd898494
1	234	696	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	234	697	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	234	698	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
4	234	699	Selecting the best Choices available	MEDICAL	24	8	67b02aeaba0984afdd898446
5	234	700	Selecting the best Choices available	MEDICAL	24	8	67b02aecba0984afdd898460
6	234	701	Selecting the best Choices available	MEDICAL	24	8	67b02af2ba0984afdd89847a
7	234	702	Selecting the best Choices available	MEDICAL	24	8	67b02af7ba0984afdd898494
1	237	717	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	237	718	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	237	719	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
4	237	720	Selecting the best Choices available	MEDICAL	24	8	67b02aeaba0984afdd898446
5	237	721	Selecting the best Choices available	MEDICAL	24	8	67b02aecba0984afdd898460
6	237	722	Selecting the best Choices available	MEDICAL	24	8	67b02af2ba0984afdd89847a
7	237	723	Selecting the best Choices available	MEDICAL	24	8	67b02af7ba0984afdd898494
1	238	724	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	238	725	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	238	726	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
4	238	727	Selecting the best Choices available	MEDICAL	24	8	67b02aeaba0984afdd898446
5	238	728	Selecting the best Choices available	MEDICAL	24	8	67b02aecba0984afdd898460
6	238	729	Selecting the best Choices available	MEDICAL	24	8	67b02af2ba0984afdd89847a
7	238	730	Selecting the best Choices available	MEDICAL	24	8	67b02af7ba0984afdd898494
1	101	273	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	101	274	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	101	275	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	102	276	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	102	277	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	102	278	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	103	279	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	103	280	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	103	281	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	104	282	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	104	283	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	104	284	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	105	285	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	105	286	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	105	287	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	107	291	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	107	292	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	107	293	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	108	294	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	108	295	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	108	296	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	109	297	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	109	298	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	109	299	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	110	300	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	110	301	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	110	302	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	111	303	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	111	304	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	111	305	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	112	306	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	112	307	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	112	308	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	154	432	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	154	433	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	154	434	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	155	435	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	155	436	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	155	437	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	125	345	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	125	346	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	125	347	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	126	348	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	126	349	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	126	350	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	197	561	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	197	562	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	197	563	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	158	444	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	158	445	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	158	446	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	159	447	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	159	448	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	159	449	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	121	333	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	121	334	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	121	335	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	122	336	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	122	337	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	122	338	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	161	453	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	161	454	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	161	455	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	162	456	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	162	457	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	162	458	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	136	378	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	136	379	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	136	380	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	137	381	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	137	382	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	137	383	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	166	468	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	166	469	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	166	470	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	167	471	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	167	472	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	167	473	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	171	483	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	171	484	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	171	485	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	172	486	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	172	487	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	172	488	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	174	492	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	174	493	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	174	494	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	175	495	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	175	496	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	175	497	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	196	558	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	196	559	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	196	560	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	229	661	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	229	662	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	229	663	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
4	229	664	Selecting the best Choices available	MEDICAL	24	8	67b02aeaba0984afdd898446
1	181	513	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	181	514	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	181	515	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	182	516	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	182	517	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	182	518	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
5	229	665	Selecting the best Choices available	MEDICAL	24	8	67b02aecba0984afdd898460
6	229	666	Selecting the best Choices available	MEDICAL	24	8	67b02af2ba0984afdd89847a
7	229	667	Selecting the best Choices available	MEDICAL	24	8	67b02af7ba0984afdd898494
1	230	668	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	230	669	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	230	670	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
4	230	671	Selecting the best Choices available	MEDICAL	24	8	67b02aeaba0984afdd898446
5	230	672	Selecting the best Choices available	MEDICAL	24	8	67b02aecba0984afdd898460
6	230	673	Selecting the best Choices available	MEDICAL	24	8	67b02af2ba0984afdd89847a
7	230	674	Selecting the best Choices available	MEDICAL	24	8	67b02af7ba0984afdd898494
1	233	689	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
1	205	585	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	205	586	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	205	587	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	206	588	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	206	589	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	206	590	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
2	233	690	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	233	691	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
4	233	692	Selecting the best Choices available	MEDICAL	24	8	67b02aeaba0984afdd898446
5	233	693	Selecting the best Choices available	MEDICAL	24	8	67b02aecba0984afdd898460
6	233	694	Selecting the best Choices available	MEDICAL	24	8	67b02af2ba0984afdd89847a
7	233	695	Selecting the best Choices available	MEDICAL	24	8	67b02af7ba0984afdd898494
1	193	549	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	193	550	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	193	551	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	194	552	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	194	553	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	194	554	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	218	624	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	218	625	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	218	626	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	219	627	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	219	628	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	219	629	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	223	639	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	223	640	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	223	641	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	224	642	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	224	643	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	224	644	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	225	645	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	225	646	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	225	647	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
1	226	648	Selecting the best Choices available	MEDICAL	24	8	67af0b886e7f6bb2991c056e
2	226	649	Selecting the best Choices available	MEDICAL	24	8	67af0cce6e7f6bb2991c05a3
3	226	650	Selecting the best Choices available	MEDICAL	24	8	67af0ccc6e7f6bb2991c0589
\.


--
-- Data for Name: _pages_v_blocks_counseling_block_cards_countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_counseling_block_cards_countries (_order, _parent_id, id, name, _uuid) FROM stdin;
1	724	3603	US	67af0c716e7f6bb2991c0570
2	724	3604	UK	67af0c746e7f6bb2991c0572
3	724	3605	NZ	67af0c766e7f6bb2991c0574
4	724	3606	AUS	67af0c796e7f6bb2991c0576
5	724	3607	EUROPE	67af0c7b6e7f6bb2991c0578
1	725	3608	US	67af0cce6e7f6bb2991c05a5
2	725	3609	UK	67af0cce6e7f6bb2991c05a7
3	725	3610	NZ	67af0cce6e7f6bb2991c05a9
4	725	3611	AUS	67af0cce6e7f6bb2991c05ab
5	725	3612	EUROPE	67af0cce6e7f6bb2991c05ad
1	726	3613	US	67af0ccc6e7f6bb2991c058b
2	726	3614	UK	67af0ccc6e7f6bb2991c058d
3	726	3615	NZ	67af0ccc6e7f6bb2991c058f
4	726	3616	AUS	67af0ccc6e7f6bb2991c0591
5	726	3617	EUROPE	67af0ccc6e7f6bb2991c0593
1	727	3618	US	67b02aeaba0984afdd898448
2	727	3619	UK	67b02aeaba0984afdd89844a
3	727	3620	NZ	67b02aeaba0984afdd89844c
4	727	3621	AUS	67b02aeaba0984afdd89844e
5	727	3622	EUROPE	67b02aeaba0984afdd898450
1	728	3623	US	67b02aecba0984afdd898462
2	728	3624	UK	67b02aecba0984afdd898464
3	728	3625	NZ	67b02aecba0984afdd898466
4	728	3626	AUS	67b02aecba0984afdd898468
5	728	3627	EUROPE	67b02aecba0984afdd89846a
1	729	3628	US	67b02af2ba0984afdd89847c
2	729	3629	UK	67b02af2ba0984afdd89847e
3	729	3630	NZ	67b02af2ba0984afdd898480
4	729	3631	AUS	67b02af2ba0984afdd898482
1	696	3463	US	67af0c716e7f6bb2991c0570
2	696	3464	UK	67af0c746e7f6bb2991c0572
3	696	3465	NZ	67af0c766e7f6bb2991c0574
4	696	3466	AUS	67af0c796e7f6bb2991c0576
5	696	3467	EUROPE	67af0c7b6e7f6bb2991c0578
1	697	3468	US	67af0cce6e7f6bb2991c05a5
2	697	3469	UK	67af0cce6e7f6bb2991c05a7
3	697	3470	NZ	67af0cce6e7f6bb2991c05a9
4	697	3471	AUS	67af0cce6e7f6bb2991c05ab
5	697	3472	EUROPE	67af0cce6e7f6bb2991c05ad
1	698	3473	US	67af0ccc6e7f6bb2991c058b
2	698	3474	UK	67af0ccc6e7f6bb2991c058d
3	698	3475	NZ	67af0ccc6e7f6bb2991c058f
5	729	3632	EUROPE	67b02af2ba0984afdd898484
1	730	3633	US	67b02af7ba0984afdd898496
2	730	3634	UK	67b02af7ba0984afdd898498
3	730	3635	NZ	67b02af7ba0984afdd89849a
4	730	3636	AUS	67b02af7ba0984afdd89849c
5	730	3637	EUROPE	67b02af7ba0984afdd89849e
1	279	1378	US	67af0c716e7f6bb2991c0570
2	279	1379	UK	67af0c746e7f6bb2991c0572
3	279	1380	NZ	67af0c766e7f6bb2991c0574
4	279	1381	AUS	67af0c796e7f6bb2991c0576
5	279	1382	EUROPE	67af0c7b6e7f6bb2991c0578
1	280	1383	US	67af0cce6e7f6bb2991c05a5
2	280	1384	UK	67af0cce6e7f6bb2991c05a7
3	280	1385	NZ	67af0cce6e7f6bb2991c05a9
4	280	1386	AUS	67af0cce6e7f6bb2991c05ab
5	280	1387	EUROPE	67af0cce6e7f6bb2991c05ad
1	281	1388	US	67af0ccc6e7f6bb2991c058b
2	281	1389	UK	67af0ccc6e7f6bb2991c058d
3	281	1390	NZ	67af0ccc6e7f6bb2991c058f
4	281	1391	AUS	67af0ccc6e7f6bb2991c0591
5	281	1392	EUROPE	67af0ccc6e7f6bb2991c0593
1	282	1393	US	67af0c716e7f6bb2991c0570
2	282	1394	UK	67af0c746e7f6bb2991c0572
3	282	1395	NZ	67af0c766e7f6bb2991c0574
4	282	1396	AUS	67af0c796e7f6bb2991c0576
5	282	1397	EUROPE	67af0c7b6e7f6bb2991c0578
1	283	1398	US	67af0cce6e7f6bb2991c05a5
2	283	1399	UK	67af0cce6e7f6bb2991c05a7
3	283	1400	NZ	67af0cce6e7f6bb2991c05a9
4	283	1401	AUS	67af0cce6e7f6bb2991c05ab
5	283	1402	EUROPE	67af0cce6e7f6bb2991c05ad
1	284	1403	US	67af0ccc6e7f6bb2991c058b
2	284	1404	UK	67af0ccc6e7f6bb2991c058d
3	284	1405	NZ	67af0ccc6e7f6bb2991c058f
4	284	1406	AUS	67af0ccc6e7f6bb2991c0591
5	284	1407	EUROPE	67af0ccc6e7f6bb2991c0593
1	291	1438	US	67af0c716e7f6bb2991c0570
2	291	1439	UK	67af0c746e7f6bb2991c0572
3	291	1440	NZ	67af0c766e7f6bb2991c0574
4	291	1441	AUS	67af0c796e7f6bb2991c0576
5	291	1442	EUROPE	67af0c7b6e7f6bb2991c0578
1	292	1443	US	67af0cce6e7f6bb2991c05a5
2	292	1444	UK	67af0cce6e7f6bb2991c05a7
3	292	1445	NZ	67af0cce6e7f6bb2991c05a9
4	292	1446	AUS	67af0cce6e7f6bb2991c05ab
5	292	1447	EUROPE	67af0cce6e7f6bb2991c05ad
1	293	1448	US	67af0ccc6e7f6bb2991c058b
2	293	1449	UK	67af0ccc6e7f6bb2991c058d
3	293	1450	NZ	67af0ccc6e7f6bb2991c058f
4	293	1451	AUS	67af0ccc6e7f6bb2991c0591
1	661	3288	US	67af0c716e7f6bb2991c0570
2	661	3289	UK	67af0c746e7f6bb2991c0572
3	661	3290	NZ	67af0c766e7f6bb2991c0574
4	661	3291	AUS	67af0c796e7f6bb2991c0576
5	661	3292	EUROPE	67af0c7b6e7f6bb2991c0578
1	285	1408	US	67af0c716e7f6bb2991c0570
2	285	1409	UK	67af0c746e7f6bb2991c0572
3	285	1410	NZ	67af0c766e7f6bb2991c0574
4	285	1411	AUS	67af0c796e7f6bb2991c0576
5	285	1412	EUROPE	67af0c7b6e7f6bb2991c0578
1	286	1413	US	67af0cce6e7f6bb2991c05a5
2	286	1414	UK	67af0cce6e7f6bb2991c05a7
3	286	1415	NZ	67af0cce6e7f6bb2991c05a9
4	286	1416	AUS	67af0cce6e7f6bb2991c05ab
1	662	3293	US	67af0cce6e7f6bb2991c05a5
2	662	3294	UK	67af0cce6e7f6bb2991c05a7
3	662	3295	NZ	67af0cce6e7f6bb2991c05a9
4	662	3296	AUS	67af0cce6e7f6bb2991c05ab
5	662	3297	EUROPE	67af0cce6e7f6bb2991c05ad
1	663	3298	US	67af0ccc6e7f6bb2991c058b
2	663	3299	UK	67af0ccc6e7f6bb2991c058d
3	663	3300	NZ	67af0ccc6e7f6bb2991c058f
4	663	3301	AUS	67af0ccc6e7f6bb2991c0591
5	663	3302	EUROPE	67af0ccc6e7f6bb2991c0593
1	664	3303	US	67b02aeaba0984afdd898448
2	664	3304	UK	67b02aeaba0984afdd89844a
3	664	3305	NZ	67b02aeaba0984afdd89844c
4	664	3306	AUS	67b02aeaba0984afdd89844e
5	664	3307	EUROPE	67b02aeaba0984afdd898450
5	286	1417	EUROPE	67af0cce6e7f6bb2991c05ad
1	287	1418	US	67af0ccc6e7f6bb2991c058b
2	287	1419	UK	67af0ccc6e7f6bb2991c058d
3	287	1420	NZ	67af0ccc6e7f6bb2991c058f
4	287	1421	AUS	67af0ccc6e7f6bb2991c0591
5	287	1422	EUROPE	67af0ccc6e7f6bb2991c0593
1	432	2143	US	67af0c716e7f6bb2991c0570
2	432	2144	UK	67af0c746e7f6bb2991c0572
3	432	2145	NZ	67af0c766e7f6bb2991c0574
4	432	2146	AUS	67af0c796e7f6bb2991c0576
5	432	2147	EUROPE	67af0c7b6e7f6bb2991c0578
1	433	2148	US	67af0cce6e7f6bb2991c05a5
2	433	2149	UK	67af0cce6e7f6bb2991c05a7
3	433	2150	NZ	67af0cce6e7f6bb2991c05a9
4	433	2151	AUS	67af0cce6e7f6bb2991c05ab
5	433	2152	EUROPE	67af0cce6e7f6bb2991c05ad
1	434	2153	US	67af0ccc6e7f6bb2991c058b
2	434	2154	UK	67af0ccc6e7f6bb2991c058d
3	434	2155	NZ	67af0ccc6e7f6bb2991c058f
4	434	2156	AUS	67af0ccc6e7f6bb2991c0591
5	434	2157	EUROPE	67af0ccc6e7f6bb2991c0593
5	293	1452	EUROPE	67af0ccc6e7f6bb2991c0593
1	294	1453	US	67af0c716e7f6bb2991c0570
2	294	1454	UK	67af0c746e7f6bb2991c0572
3	294	1455	NZ	67af0c766e7f6bb2991c0574
4	294	1456	AUS	67af0c796e7f6bb2991c0576
5	294	1457	EUROPE	67af0c7b6e7f6bb2991c0578
1	295	1458	US	67af0cce6e7f6bb2991c05a5
2	295	1459	UK	67af0cce6e7f6bb2991c05a7
3	295	1460	NZ	67af0cce6e7f6bb2991c05a9
4	295	1461	AUS	67af0cce6e7f6bb2991c05ab
5	295	1462	EUROPE	67af0cce6e7f6bb2991c05ad
1	296	1463	US	67af0ccc6e7f6bb2991c058b
2	296	1464	UK	67af0ccc6e7f6bb2991c058d
3	296	1465	NZ	67af0ccc6e7f6bb2991c058f
4	296	1466	AUS	67af0ccc6e7f6bb2991c0591
5	296	1467	EUROPE	67af0ccc6e7f6bb2991c0593
1	297	1468	US	67af0c716e7f6bb2991c0570
2	297	1469	UK	67af0c746e7f6bb2991c0572
3	297	1470	NZ	67af0c766e7f6bb2991c0574
4	297	1471	AUS	67af0c796e7f6bb2991c0576
5	297	1472	EUROPE	67af0c7b6e7f6bb2991c0578
1	298	1473	US	67af0cce6e7f6bb2991c05a5
2	298	1474	UK	67af0cce6e7f6bb2991c05a7
3	298	1475	NZ	67af0cce6e7f6bb2991c05a9
4	298	1476	AUS	67af0cce6e7f6bb2991c05ab
5	298	1477	EUROPE	67af0cce6e7f6bb2991c05ad
1	299	1478	US	67af0ccc6e7f6bb2991c058b
2	299	1479	UK	67af0ccc6e7f6bb2991c058d
3	299	1480	NZ	67af0ccc6e7f6bb2991c058f
4	299	1481	AUS	67af0ccc6e7f6bb2991c0591
5	299	1482	EUROPE	67af0ccc6e7f6bb2991c0593
1	300	1483	US	67af0c716e7f6bb2991c0570
2	300	1484	UK	67af0c746e7f6bb2991c0572
3	300	1485	NZ	67af0c766e7f6bb2991c0574
4	300	1486	AUS	67af0c796e7f6bb2991c0576
5	300	1487	EUROPE	67af0c7b6e7f6bb2991c0578
1	301	1488	US	67af0cce6e7f6bb2991c05a5
2	301	1489	UK	67af0cce6e7f6bb2991c05a7
3	301	1490	NZ	67af0cce6e7f6bb2991c05a9
4	301	1491	AUS	67af0cce6e7f6bb2991c05ab
5	301	1492	EUROPE	67af0cce6e7f6bb2991c05ad
1	302	1493	US	67af0ccc6e7f6bb2991c058b
2	302	1494	UK	67af0ccc6e7f6bb2991c058d
3	302	1495	NZ	67af0ccc6e7f6bb2991c058f
1	273	1348	US	67af0c716e7f6bb2991c0570
2	273	1349	UK	67af0c746e7f6bb2991c0572
3	273	1350	NZ	67af0c766e7f6bb2991c0574
4	273	1351	AUS	67af0c796e7f6bb2991c0576
5	273	1352	EUROPE	67af0c7b6e7f6bb2991c0578
1	274	1353	US	67af0cce6e7f6bb2991c05a5
2	274	1354	UK	67af0cce6e7f6bb2991c05a7
3	274	1355	NZ	67af0cce6e7f6bb2991c05a9
4	274	1356	AUS	67af0cce6e7f6bb2991c05ab
5	274	1357	EUROPE	67af0cce6e7f6bb2991c05ad
1	275	1358	US	67af0ccc6e7f6bb2991c058b
2	275	1359	UK	67af0ccc6e7f6bb2991c058d
3	275	1360	NZ	67af0ccc6e7f6bb2991c058f
4	275	1361	AUS	67af0ccc6e7f6bb2991c0591
5	275	1362	EUROPE	67af0ccc6e7f6bb2991c0593
1	276	1363	US	67af0c716e7f6bb2991c0570
2	276	1364	UK	67af0c746e7f6bb2991c0572
3	276	1365	NZ	67af0c766e7f6bb2991c0574
4	276	1366	AUS	67af0c796e7f6bb2991c0576
5	276	1367	EUROPE	67af0c7b6e7f6bb2991c0578
1	277	1368	US	67af0cce6e7f6bb2991c05a5
2	277	1369	UK	67af0cce6e7f6bb2991c05a7
3	277	1370	NZ	67af0cce6e7f6bb2991c05a9
4	277	1371	AUS	67af0cce6e7f6bb2991c05ab
5	277	1372	EUROPE	67af0cce6e7f6bb2991c05ad
1	278	1373	US	67af0ccc6e7f6bb2991c058b
2	278	1374	UK	67af0ccc6e7f6bb2991c058d
3	278	1375	NZ	67af0ccc6e7f6bb2991c058f
4	278	1376	AUS	67af0ccc6e7f6bb2991c0591
5	278	1377	EUROPE	67af0ccc6e7f6bb2991c0593
4	302	1496	AUS	67af0ccc6e7f6bb2991c0591
5	302	1497	EUROPE	67af0ccc6e7f6bb2991c0593
1	303	1498	US	67af0c716e7f6bb2991c0570
2	303	1499	UK	67af0c746e7f6bb2991c0572
3	303	1500	NZ	67af0c766e7f6bb2991c0574
4	303	1501	AUS	67af0c796e7f6bb2991c0576
5	303	1502	EUROPE	67af0c7b6e7f6bb2991c0578
1	304	1503	US	67af0cce6e7f6bb2991c05a5
2	304	1504	UK	67af0cce6e7f6bb2991c05a7
3	304	1505	NZ	67af0cce6e7f6bb2991c05a9
4	304	1506	AUS	67af0cce6e7f6bb2991c05ab
5	304	1507	EUROPE	67af0cce6e7f6bb2991c05ad
1	305	1508	US	67af0ccc6e7f6bb2991c058b
2	305	1509	UK	67af0ccc6e7f6bb2991c058d
3	305	1510	NZ	67af0ccc6e7f6bb2991c058f
4	305	1511	AUS	67af0ccc6e7f6bb2991c0591
5	305	1512	EUROPE	67af0ccc6e7f6bb2991c0593
1	306	1513	US	67af0c716e7f6bb2991c0570
2	306	1514	UK	67af0c746e7f6bb2991c0572
3	306	1515	NZ	67af0c766e7f6bb2991c0574
4	306	1516	AUS	67af0c796e7f6bb2991c0576
5	306	1517	EUROPE	67af0c7b6e7f6bb2991c0578
1	307	1518	US	67af0cce6e7f6bb2991c05a5
2	307	1519	UK	67af0cce6e7f6bb2991c05a7
3	307	1520	NZ	67af0cce6e7f6bb2991c05a9
4	307	1521	AUS	67af0cce6e7f6bb2991c05ab
5	307	1522	EUROPE	67af0cce6e7f6bb2991c05ad
1	308	1523	US	67af0ccc6e7f6bb2991c058b
2	308	1524	UK	67af0ccc6e7f6bb2991c058d
3	308	1525	NZ	67af0ccc6e7f6bb2991c058f
4	308	1526	AUS	67af0ccc6e7f6bb2991c0591
5	308	1527	EUROPE	67af0ccc6e7f6bb2991c0593
1	435	2158	US	67af0c716e7f6bb2991c0570
2	435	2159	UK	67af0c746e7f6bb2991c0572
3	435	2160	NZ	67af0c766e7f6bb2991c0574
4	435	2161	AUS	67af0c796e7f6bb2991c0576
5	435	2162	EUROPE	67af0c7b6e7f6bb2991c0578
1	436	2163	US	67af0cce6e7f6bb2991c05a5
2	436	2164	UK	67af0cce6e7f6bb2991c05a7
3	436	2165	NZ	67af0cce6e7f6bb2991c05a9
4	436	2166	AUS	67af0cce6e7f6bb2991c05ab
5	436	2167	EUROPE	67af0cce6e7f6bb2991c05ad
1	437	2168	US	67af0ccc6e7f6bb2991c058b
2	437	2169	UK	67af0ccc6e7f6bb2991c058d
3	437	2170	NZ	67af0ccc6e7f6bb2991c058f
4	437	2171	AUS	67af0ccc6e7f6bb2991c0591
5	437	2172	EUROPE	67af0ccc6e7f6bb2991c0593
1	345	1708	US	67af0c716e7f6bb2991c0570
2	345	1709	UK	67af0c746e7f6bb2991c0572
3	345	1710	NZ	67af0c766e7f6bb2991c0574
4	345	1711	AUS	67af0c796e7f6bb2991c0576
5	345	1712	EUROPE	67af0c7b6e7f6bb2991c0578
1	346	1713	US	67af0cce6e7f6bb2991c05a5
2	346	1714	UK	67af0cce6e7f6bb2991c05a7
3	346	1715	NZ	67af0cce6e7f6bb2991c05a9
4	346	1716	AUS	67af0cce6e7f6bb2991c05ab
5	346	1717	EUROPE	67af0cce6e7f6bb2991c05ad
1	347	1718	US	67af0ccc6e7f6bb2991c058b
2	347	1719	UK	67af0ccc6e7f6bb2991c058d
3	347	1720	NZ	67af0ccc6e7f6bb2991c058f
4	347	1721	AUS	67af0ccc6e7f6bb2991c0591
5	347	1722	EUROPE	67af0ccc6e7f6bb2991c0593
1	348	1723	US	67af0c716e7f6bb2991c0570
2	348	1724	UK	67af0c746e7f6bb2991c0572
3	348	1725	NZ	67af0c766e7f6bb2991c0574
4	348	1726	AUS	67af0c796e7f6bb2991c0576
5	348	1727	EUROPE	67af0c7b6e7f6bb2991c0578
1	349	1728	US	67af0cce6e7f6bb2991c05a5
2	349	1729	UK	67af0cce6e7f6bb2991c05a7
3	349	1730	NZ	67af0cce6e7f6bb2991c05a9
4	349	1731	AUS	67af0cce6e7f6bb2991c05ab
5	349	1732	EUROPE	67af0cce6e7f6bb2991c05ad
1	350	1733	US	67af0ccc6e7f6bb2991c058b
2	350	1734	UK	67af0ccc6e7f6bb2991c058d
3	350	1735	NZ	67af0ccc6e7f6bb2991c058f
4	350	1736	AUS	67af0ccc6e7f6bb2991c0591
5	350	1737	EUROPE	67af0ccc6e7f6bb2991c0593
1	444	2203	US	67af0c716e7f6bb2991c0570
2	444	2204	UK	67af0c746e7f6bb2991c0572
3	444	2205	NZ	67af0c766e7f6bb2991c0574
1	333	1648	US	67af0c716e7f6bb2991c0570
2	333	1649	UK	67af0c746e7f6bb2991c0572
3	333	1650	NZ	67af0c766e7f6bb2991c0574
4	333	1651	AUS	67af0c796e7f6bb2991c0576
5	333	1652	EUROPE	67af0c7b6e7f6bb2991c0578
1	334	1653	US	67af0cce6e7f6bb2991c05a5
2	334	1654	UK	67af0cce6e7f6bb2991c05a7
3	334	1655	NZ	67af0cce6e7f6bb2991c05a9
4	334	1656	AUS	67af0cce6e7f6bb2991c05ab
5	334	1657	EUROPE	67af0cce6e7f6bb2991c05ad
1	335	1658	US	67af0ccc6e7f6bb2991c058b
2	335	1659	UK	67af0ccc6e7f6bb2991c058d
3	335	1660	NZ	67af0ccc6e7f6bb2991c058f
4	335	1661	AUS	67af0ccc6e7f6bb2991c0591
5	335	1662	EUROPE	67af0ccc6e7f6bb2991c0593
1	336	1663	US	67af0c716e7f6bb2991c0570
2	336	1664	UK	67af0c746e7f6bb2991c0572
3	336	1665	NZ	67af0c766e7f6bb2991c0574
4	336	1666	AUS	67af0c796e7f6bb2991c0576
5	336	1667	EUROPE	67af0c7b6e7f6bb2991c0578
1	337	1668	US	67af0cce6e7f6bb2991c05a5
2	337	1669	UK	67af0cce6e7f6bb2991c05a7
3	337	1670	NZ	67af0cce6e7f6bb2991c05a9
4	337	1671	AUS	67af0cce6e7f6bb2991c05ab
5	337	1672	EUROPE	67af0cce6e7f6bb2991c05ad
1	338	1673	US	67af0ccc6e7f6bb2991c058b
2	338	1674	UK	67af0ccc6e7f6bb2991c058d
3	338	1675	NZ	67af0ccc6e7f6bb2991c058f
4	338	1676	AUS	67af0ccc6e7f6bb2991c0591
5	338	1677	EUROPE	67af0ccc6e7f6bb2991c0593
1	665	3308	US	67b02aecba0984afdd898462
2	665	3309	UK	67b02aecba0984afdd898464
3	665	3310	NZ	67b02aecba0984afdd898466
4	665	3311	AUS	67b02aecba0984afdd898468
5	665	3312	EUROPE	67b02aecba0984afdd89846a
1	666	3313	US	67b02af2ba0984afdd89847c
2	666	3314	UK	67b02af2ba0984afdd89847e
3	666	3315	NZ	67b02af2ba0984afdd898480
4	666	3316	AUS	67b02af2ba0984afdd898482
5	666	3317	EUROPE	67b02af2ba0984afdd898484
1	667	3318	US	67b02af7ba0984afdd898496
2	667	3319	UK	67b02af7ba0984afdd898498
3	667	3320	NZ	67b02af7ba0984afdd89849a
4	667	3321	AUS	67b02af7ba0984afdd89849c
5	667	3322	EUROPE	67b02af7ba0984afdd89849e
4	444	2206	AUS	67af0c796e7f6bb2991c0576
5	444	2207	EUROPE	67af0c7b6e7f6bb2991c0578
1	445	2208	US	67af0cce6e7f6bb2991c05a5
2	445	2209	UK	67af0cce6e7f6bb2991c05a7
3	445	2210	NZ	67af0cce6e7f6bb2991c05a9
4	445	2211	AUS	67af0cce6e7f6bb2991c05ab
5	445	2212	EUROPE	67af0cce6e7f6bb2991c05ad
1	446	2213	US	67af0ccc6e7f6bb2991c058b
2	446	2214	UK	67af0ccc6e7f6bb2991c058d
3	446	2215	NZ	67af0ccc6e7f6bb2991c058f
4	446	2216	AUS	67af0ccc6e7f6bb2991c0591
5	446	2217	EUROPE	67af0ccc6e7f6bb2991c0593
1	447	2218	US	67af0c716e7f6bb2991c0570
2	447	2219	UK	67af0c746e7f6bb2991c0572
3	447	2220	NZ	67af0c766e7f6bb2991c0574
4	447	2221	AUS	67af0c796e7f6bb2991c0576
5	447	2222	EUROPE	67af0c7b6e7f6bb2991c0578
1	448	2223	US	67af0cce6e7f6bb2991c05a5
2	448	2224	UK	67af0cce6e7f6bb2991c05a7
3	448	2225	NZ	67af0cce6e7f6bb2991c05a9
4	448	2226	AUS	67af0cce6e7f6bb2991c05ab
5	448	2227	EUROPE	67af0cce6e7f6bb2991c05ad
1	449	2228	US	67af0ccc6e7f6bb2991c058b
2	449	2229	UK	67af0ccc6e7f6bb2991c058d
3	449	2230	NZ	67af0ccc6e7f6bb2991c058f
4	449	2231	AUS	67af0ccc6e7f6bb2991c0591
5	449	2232	EUROPE	67af0ccc6e7f6bb2991c0593
1	453	2248	US	67af0c716e7f6bb2991c0570
2	453	2249	UK	67af0c746e7f6bb2991c0572
3	453	2250	NZ	67af0c766e7f6bb2991c0574
4	453	2251	AUS	67af0c796e7f6bb2991c0576
5	453	2252	EUROPE	67af0c7b6e7f6bb2991c0578
1	454	2253	US	67af0cce6e7f6bb2991c05a5
2	454	2254	UK	67af0cce6e7f6bb2991c05a7
3	454	2255	NZ	67af0cce6e7f6bb2991c05a9
4	454	2256	AUS	67af0cce6e7f6bb2991c05ab
5	454	2257	EUROPE	67af0cce6e7f6bb2991c05ad
1	455	2258	US	67af0ccc6e7f6bb2991c058b
2	455	2259	UK	67af0ccc6e7f6bb2991c058d
3	455	2260	NZ	67af0ccc6e7f6bb2991c058f
4	455	2261	AUS	67af0ccc6e7f6bb2991c0591
5	455	2262	EUROPE	67af0ccc6e7f6bb2991c0593
1	456	2263	US	67af0c716e7f6bb2991c0570
2	456	2264	UK	67af0c746e7f6bb2991c0572
3	456	2265	NZ	67af0c766e7f6bb2991c0574
4	456	2266	AUS	67af0c796e7f6bb2991c0576
5	456	2267	EUROPE	67af0c7b6e7f6bb2991c0578
1	457	2268	US	67af0cce6e7f6bb2991c05a5
2	457	2269	UK	67af0cce6e7f6bb2991c05a7
3	457	2270	NZ	67af0cce6e7f6bb2991c05a9
4	457	2271	AUS	67af0cce6e7f6bb2991c05ab
5	457	2272	EUROPE	67af0cce6e7f6bb2991c05ad
1	458	2273	US	67af0ccc6e7f6bb2991c058b
2	458	2274	UK	67af0ccc6e7f6bb2991c058d
3	458	2275	NZ	67af0ccc6e7f6bb2991c058f
4	458	2276	AUS	67af0ccc6e7f6bb2991c0591
5	458	2277	EUROPE	67af0ccc6e7f6bb2991c0593
1	561	2788	US	67af0c716e7f6bb2991c0570
2	561	2789	UK	67af0c746e7f6bb2991c0572
3	561	2790	NZ	67af0c766e7f6bb2991c0574
4	561	2791	AUS	67af0c796e7f6bb2991c0576
5	561	2792	EUROPE	67af0c7b6e7f6bb2991c0578
1	562	2793	US	67af0cce6e7f6bb2991c05a5
2	562	2794	UK	67af0cce6e7f6bb2991c05a7
3	562	2795	NZ	67af0cce6e7f6bb2991c05a9
4	562	2796	AUS	67af0cce6e7f6bb2991c05ab
5	562	2797	EUROPE	67af0cce6e7f6bb2991c05ad
1	563	2798	US	67af0ccc6e7f6bb2991c058b
2	563	2799	UK	67af0ccc6e7f6bb2991c058d
3	563	2800	NZ	67af0ccc6e7f6bb2991c058f
4	563	2801	AUS	67af0ccc6e7f6bb2991c0591
5	563	2802	EUROPE	67af0ccc6e7f6bb2991c0593
1	668	3323	US	67af0c716e7f6bb2991c0570
2	668	3324	UK	67af0c746e7f6bb2991c0572
3	668	3325	NZ	67af0c766e7f6bb2991c0574
4	668	3326	AUS	67af0c796e7f6bb2991c0576
5	668	3327	EUROPE	67af0c7b6e7f6bb2991c0578
1	669	3328	US	67af0cce6e7f6bb2991c05a5
2	669	3329	UK	67af0cce6e7f6bb2991c05a7
3	669	3330	NZ	67af0cce6e7f6bb2991c05a9
4	669	3331	AUS	67af0cce6e7f6bb2991c05ab
5	669	3332	EUROPE	67af0cce6e7f6bb2991c05ad
1	670	3333	US	67af0ccc6e7f6bb2991c058b
2	670	3334	UK	67af0ccc6e7f6bb2991c058d
3	670	3335	NZ	67af0ccc6e7f6bb2991c058f
4	670	3336	AUS	67af0ccc6e7f6bb2991c0591
5	670	3337	EUROPE	67af0ccc6e7f6bb2991c0593
1	378	1873	US	67af0c716e7f6bb2991c0570
2	378	1874	UK	67af0c746e7f6bb2991c0572
3	378	1875	NZ	67af0c766e7f6bb2991c0574
4	378	1876	AUS	67af0c796e7f6bb2991c0576
5	378	1877	EUROPE	67af0c7b6e7f6bb2991c0578
1	379	1878	US	67af0cce6e7f6bb2991c05a5
2	379	1879	UK	67af0cce6e7f6bb2991c05a7
3	379	1880	NZ	67af0cce6e7f6bb2991c05a9
4	379	1881	AUS	67af0cce6e7f6bb2991c05ab
5	379	1882	EUROPE	67af0cce6e7f6bb2991c05ad
1	380	1883	US	67af0ccc6e7f6bb2991c058b
2	380	1884	UK	67af0ccc6e7f6bb2991c058d
3	380	1885	NZ	67af0ccc6e7f6bb2991c058f
4	380	1886	AUS	67af0ccc6e7f6bb2991c0591
5	380	1887	EUROPE	67af0ccc6e7f6bb2991c0593
1	381	1888	US	67af0c716e7f6bb2991c0570
2	381	1889	UK	67af0c746e7f6bb2991c0572
3	381	1890	NZ	67af0c766e7f6bb2991c0574
4	381	1891	AUS	67af0c796e7f6bb2991c0576
5	381	1892	EUROPE	67af0c7b6e7f6bb2991c0578
1	382	1893	US	67af0cce6e7f6bb2991c05a5
2	382	1894	UK	67af0cce6e7f6bb2991c05a7
3	382	1895	NZ	67af0cce6e7f6bb2991c05a9
4	382	1896	AUS	67af0cce6e7f6bb2991c05ab
5	382	1897	EUROPE	67af0cce6e7f6bb2991c05ad
1	383	1898	US	67af0ccc6e7f6bb2991c058b
2	383	1899	UK	67af0ccc6e7f6bb2991c058d
3	383	1900	NZ	67af0ccc6e7f6bb2991c058f
4	383	1901	AUS	67af0ccc6e7f6bb2991c0591
5	383	1902	EUROPE	67af0ccc6e7f6bb2991c0593
1	468	2323	US	67af0c716e7f6bb2991c0570
2	468	2324	UK	67af0c746e7f6bb2991c0572
3	468	2325	NZ	67af0c766e7f6bb2991c0574
4	468	2326	AUS	67af0c796e7f6bb2991c0576
5	468	2327	EUROPE	67af0c7b6e7f6bb2991c0578
1	469	2328	US	67af0cce6e7f6bb2991c05a5
2	469	2329	UK	67af0cce6e7f6bb2991c05a7
3	469	2330	NZ	67af0cce6e7f6bb2991c05a9
4	469	2331	AUS	67af0cce6e7f6bb2991c05ab
5	469	2332	EUROPE	67af0cce6e7f6bb2991c05ad
1	470	2333	US	67af0ccc6e7f6bb2991c058b
2	470	2334	UK	67af0ccc6e7f6bb2991c058d
3	470	2335	NZ	67af0ccc6e7f6bb2991c058f
4	470	2336	AUS	67af0ccc6e7f6bb2991c0591
5	470	2337	EUROPE	67af0ccc6e7f6bb2991c0593
1	471	2338	US	67af0c716e7f6bb2991c0570
2	471	2339	UK	67af0c746e7f6bb2991c0572
3	471	2340	NZ	67af0c766e7f6bb2991c0574
4	471	2341	AUS	67af0c796e7f6bb2991c0576
5	471	2342	EUROPE	67af0c7b6e7f6bb2991c0578
1	472	2343	US	67af0cce6e7f6bb2991c05a5
2	472	2344	UK	67af0cce6e7f6bb2991c05a7
3	472	2345	NZ	67af0cce6e7f6bb2991c05a9
4	472	2346	AUS	67af0cce6e7f6bb2991c05ab
5	472	2347	EUROPE	67af0cce6e7f6bb2991c05ad
1	473	2348	US	67af0ccc6e7f6bb2991c058b
2	473	2349	UK	67af0ccc6e7f6bb2991c058d
3	473	2350	NZ	67af0ccc6e7f6bb2991c058f
4	473	2351	AUS	67af0ccc6e7f6bb2991c0591
5	473	2352	EUROPE	67af0ccc6e7f6bb2991c0593
1	483	2398	US	67af0c716e7f6bb2991c0570
2	483	2399	UK	67af0c746e7f6bb2991c0572
3	483	2400	NZ	67af0c766e7f6bb2991c0574
4	483	2401	AUS	67af0c796e7f6bb2991c0576
5	483	2402	EUROPE	67af0c7b6e7f6bb2991c0578
1	484	2403	US	67af0cce6e7f6bb2991c05a5
2	484	2404	UK	67af0cce6e7f6bb2991c05a7
3	484	2405	NZ	67af0cce6e7f6bb2991c05a9
4	484	2406	AUS	67af0cce6e7f6bb2991c05ab
5	484	2407	EUROPE	67af0cce6e7f6bb2991c05ad
1	485	2408	US	67af0ccc6e7f6bb2991c058b
2	485	2409	UK	67af0ccc6e7f6bb2991c058d
3	485	2410	NZ	67af0ccc6e7f6bb2991c058f
4	485	2411	AUS	67af0ccc6e7f6bb2991c0591
5	485	2412	EUROPE	67af0ccc6e7f6bb2991c0593
1	486	2413	US	67af0c716e7f6bb2991c0570
2	486	2414	UK	67af0c746e7f6bb2991c0572
3	486	2415	NZ	67af0c766e7f6bb2991c0574
4	486	2416	AUS	67af0c796e7f6bb2991c0576
5	486	2417	EUROPE	67af0c7b6e7f6bb2991c0578
1	487	2418	US	67af0cce6e7f6bb2991c05a5
2	487	2419	UK	67af0cce6e7f6bb2991c05a7
3	487	2420	NZ	67af0cce6e7f6bb2991c05a9
4	487	2421	AUS	67af0cce6e7f6bb2991c05ab
5	487	2422	EUROPE	67af0cce6e7f6bb2991c05ad
1	488	2423	US	67af0ccc6e7f6bb2991c058b
2	488	2424	UK	67af0ccc6e7f6bb2991c058d
3	488	2425	NZ	67af0ccc6e7f6bb2991c058f
4	488	2426	AUS	67af0ccc6e7f6bb2991c0591
5	488	2427	EUROPE	67af0ccc6e7f6bb2991c0593
1	492	2443	US	67af0c716e7f6bb2991c0570
2	492	2444	UK	67af0c746e7f6bb2991c0572
3	492	2445	NZ	67af0c766e7f6bb2991c0574
4	492	2446	AUS	67af0c796e7f6bb2991c0576
5	492	2447	EUROPE	67af0c7b6e7f6bb2991c0578
1	493	2448	US	67af0cce6e7f6bb2991c05a5
2	493	2449	UK	67af0cce6e7f6bb2991c05a7
3	493	2450	NZ	67af0cce6e7f6bb2991c05a9
4	493	2451	AUS	67af0cce6e7f6bb2991c05ab
5	493	2452	EUROPE	67af0cce6e7f6bb2991c05ad
1	494	2453	US	67af0ccc6e7f6bb2991c058b
2	494	2454	UK	67af0ccc6e7f6bb2991c058d
3	494	2455	NZ	67af0ccc6e7f6bb2991c058f
4	494	2456	AUS	67af0ccc6e7f6bb2991c0591
5	494	2457	EUROPE	67af0ccc6e7f6bb2991c0593
1	495	2458	US	67af0c716e7f6bb2991c0570
2	495	2459	UK	67af0c746e7f6bb2991c0572
3	495	2460	NZ	67af0c766e7f6bb2991c0574
4	495	2461	AUS	67af0c796e7f6bb2991c0576
5	495	2462	EUROPE	67af0c7b6e7f6bb2991c0578
1	496	2463	US	67af0cce6e7f6bb2991c05a5
2	496	2464	UK	67af0cce6e7f6bb2991c05a7
3	496	2465	NZ	67af0cce6e7f6bb2991c05a9
4	496	2466	AUS	67af0cce6e7f6bb2991c05ab
5	496	2467	EUROPE	67af0cce6e7f6bb2991c05ad
1	497	2468	US	67af0ccc6e7f6bb2991c058b
2	497	2469	UK	67af0ccc6e7f6bb2991c058d
3	497	2470	NZ	67af0ccc6e7f6bb2991c058f
4	497	2471	AUS	67af0ccc6e7f6bb2991c0591
5	497	2472	EUROPE	67af0ccc6e7f6bb2991c0593
1	513	2548	US	67af0c716e7f6bb2991c0570
2	513	2549	UK	67af0c746e7f6bb2991c0572
3	513	2550	NZ	67af0c766e7f6bb2991c0574
4	513	2551	AUS	67af0c796e7f6bb2991c0576
5	513	2552	EUROPE	67af0c7b6e7f6bb2991c0578
1	514	2553	US	67af0cce6e7f6bb2991c05a5
2	514	2554	UK	67af0cce6e7f6bb2991c05a7
3	514	2555	NZ	67af0cce6e7f6bb2991c05a9
4	514	2556	AUS	67af0cce6e7f6bb2991c05ab
5	514	2557	EUROPE	67af0cce6e7f6bb2991c05ad
1	515	2558	US	67af0ccc6e7f6bb2991c058b
2	515	2559	UK	67af0ccc6e7f6bb2991c058d
3	515	2560	NZ	67af0ccc6e7f6bb2991c058f
4	515	2561	AUS	67af0ccc6e7f6bb2991c0591
5	515	2562	EUROPE	67af0ccc6e7f6bb2991c0593
1	516	2563	US	67af0c716e7f6bb2991c0570
2	516	2564	UK	67af0c746e7f6bb2991c0572
3	516	2565	NZ	67af0c766e7f6bb2991c0574
4	516	2566	AUS	67af0c796e7f6bb2991c0576
5	516	2567	EUROPE	67af0c7b6e7f6bb2991c0578
1	517	2568	US	67af0cce6e7f6bb2991c05a5
2	517	2569	UK	67af0cce6e7f6bb2991c05a7
3	517	2570	NZ	67af0cce6e7f6bb2991c05a9
4	517	2571	AUS	67af0cce6e7f6bb2991c05ab
5	517	2572	EUROPE	67af0cce6e7f6bb2991c05ad
1	518	2573	US	67af0ccc6e7f6bb2991c058b
2	518	2574	UK	67af0ccc6e7f6bb2991c058d
3	518	2575	NZ	67af0ccc6e7f6bb2991c058f
4	518	2576	AUS	67af0ccc6e7f6bb2991c0591
5	518	2577	EUROPE	67af0ccc6e7f6bb2991c0593
1	558	2773	US	67af0c716e7f6bb2991c0570
2	558	2774	UK	67af0c746e7f6bb2991c0572
3	558	2775	NZ	67af0c766e7f6bb2991c0574
4	558	2776	AUS	67af0c796e7f6bb2991c0576
5	558	2777	EUROPE	67af0c7b6e7f6bb2991c0578
1	559	2778	US	67af0cce6e7f6bb2991c05a5
2	559	2779	UK	67af0cce6e7f6bb2991c05a7
3	559	2780	NZ	67af0cce6e7f6bb2991c05a9
4	559	2781	AUS	67af0cce6e7f6bb2991c05ab
5	559	2782	EUROPE	67af0cce6e7f6bb2991c05ad
1	560	2783	US	67af0ccc6e7f6bb2991c058b
2	560	2784	UK	67af0ccc6e7f6bb2991c058d
3	560	2785	NZ	67af0ccc6e7f6bb2991c058f
4	560	2786	AUS	67af0ccc6e7f6bb2991c0591
5	560	2787	EUROPE	67af0ccc6e7f6bb2991c0593
1	671	3338	US	67b02aeaba0984afdd898448
2	671	3339	UK	67b02aeaba0984afdd89844a
3	671	3340	NZ	67b02aeaba0984afdd89844c
4	671	3341	AUS	67b02aeaba0984afdd89844e
5	671	3342	EUROPE	67b02aeaba0984afdd898450
1	585	2908	US	67af0c716e7f6bb2991c0570
2	585	2909	UK	67af0c746e7f6bb2991c0572
3	585	2910	NZ	67af0c766e7f6bb2991c0574
4	585	2911	AUS	67af0c796e7f6bb2991c0576
5	585	2912	EUROPE	67af0c7b6e7f6bb2991c0578
1	586	2913	US	67af0cce6e7f6bb2991c05a5
2	586	2914	UK	67af0cce6e7f6bb2991c05a7
3	586	2915	NZ	67af0cce6e7f6bb2991c05a9
4	586	2916	AUS	67af0cce6e7f6bb2991c05ab
5	586	2917	EUROPE	67af0cce6e7f6bb2991c05ad
1	587	2918	US	67af0ccc6e7f6bb2991c058b
2	587	2919	UK	67af0ccc6e7f6bb2991c058d
3	587	2920	NZ	67af0ccc6e7f6bb2991c058f
4	587	2921	AUS	67af0ccc6e7f6bb2991c0591
5	587	2922	EUROPE	67af0ccc6e7f6bb2991c0593
1	588	2923	US	67af0c716e7f6bb2991c0570
2	588	2924	UK	67af0c746e7f6bb2991c0572
3	588	2925	NZ	67af0c766e7f6bb2991c0574
4	588	2926	AUS	67af0c796e7f6bb2991c0576
5	588	2927	EUROPE	67af0c7b6e7f6bb2991c0578
1	589	2928	US	67af0cce6e7f6bb2991c05a5
2	589	2929	UK	67af0cce6e7f6bb2991c05a7
3	589	2930	NZ	67af0cce6e7f6bb2991c05a9
4	589	2931	AUS	67af0cce6e7f6bb2991c05ab
5	589	2932	EUROPE	67af0cce6e7f6bb2991c05ad
1	590	2933	US	67af0ccc6e7f6bb2991c058b
2	590	2934	UK	67af0ccc6e7f6bb2991c058d
3	590	2935	NZ	67af0ccc6e7f6bb2991c058f
4	590	2936	AUS	67af0ccc6e7f6bb2991c0591
5	590	2937	EUROPE	67af0ccc6e7f6bb2991c0593
1	549	2728	US	67af0c716e7f6bb2991c0570
2	549	2729	UK	67af0c746e7f6bb2991c0572
3	549	2730	NZ	67af0c766e7f6bb2991c0574
4	549	2731	AUS	67af0c796e7f6bb2991c0576
5	549	2732	EUROPE	67af0c7b6e7f6bb2991c0578
1	550	2733	US	67af0cce6e7f6bb2991c05a5
2	550	2734	UK	67af0cce6e7f6bb2991c05a7
3	550	2735	NZ	67af0cce6e7f6bb2991c05a9
4	550	2736	AUS	67af0cce6e7f6bb2991c05ab
5	550	2737	EUROPE	67af0cce6e7f6bb2991c05ad
1	551	2738	US	67af0ccc6e7f6bb2991c058b
2	551	2739	UK	67af0ccc6e7f6bb2991c058d
3	551	2740	NZ	67af0ccc6e7f6bb2991c058f
4	551	2741	AUS	67af0ccc6e7f6bb2991c0591
5	551	2742	EUROPE	67af0ccc6e7f6bb2991c0593
1	552	2743	US	67af0c716e7f6bb2991c0570
2	552	2744	UK	67af0c746e7f6bb2991c0572
3	552	2745	NZ	67af0c766e7f6bb2991c0574
4	552	2746	AUS	67af0c796e7f6bb2991c0576
5	552	2747	EUROPE	67af0c7b6e7f6bb2991c0578
1	553	2748	US	67af0cce6e7f6bb2991c05a5
2	553	2749	UK	67af0cce6e7f6bb2991c05a7
3	553	2750	NZ	67af0cce6e7f6bb2991c05a9
4	553	2751	AUS	67af0cce6e7f6bb2991c05ab
5	553	2752	EUROPE	67af0cce6e7f6bb2991c05ad
1	554	2753	US	67af0ccc6e7f6bb2991c058b
2	554	2754	UK	67af0ccc6e7f6bb2991c058d
3	554	2755	NZ	67af0ccc6e7f6bb2991c058f
4	554	2756	AUS	67af0ccc6e7f6bb2991c0591
5	554	2757	EUROPE	67af0ccc6e7f6bb2991c0593
1	672	3343	US	67b02aecba0984afdd898462
2	672	3344	UK	67b02aecba0984afdd898464
3	672	3345	NZ	67b02aecba0984afdd898466
4	672	3346	AUS	67b02aecba0984afdd898468
5	672	3347	EUROPE	67b02aecba0984afdd89846a
1	673	3348	US	67b02af2ba0984afdd89847c
2	673	3349	UK	67b02af2ba0984afdd89847e
3	673	3350	NZ	67b02af2ba0984afdd898480
4	673	3351	AUS	67b02af2ba0984afdd898482
5	673	3352	EUROPE	67b02af2ba0984afdd898484
1	674	3353	US	67b02af7ba0984afdd898496
2	674	3354	UK	67b02af7ba0984afdd898498
3	674	3355	NZ	67b02af7ba0984afdd89849a
4	674	3356	AUS	67b02af7ba0984afdd89849c
5	674	3357	EUROPE	67b02af7ba0984afdd89849e
1	624	3103	US	67af0c716e7f6bb2991c0570
2	624	3104	UK	67af0c746e7f6bb2991c0572
3	624	3105	NZ	67af0c766e7f6bb2991c0574
4	624	3106	AUS	67af0c796e7f6bb2991c0576
5	624	3107	EUROPE	67af0c7b6e7f6bb2991c0578
1	625	3108	US	67af0cce6e7f6bb2991c05a5
2	625	3109	UK	67af0cce6e7f6bb2991c05a7
3	625	3110	NZ	67af0cce6e7f6bb2991c05a9
4	625	3111	AUS	67af0cce6e7f6bb2991c05ab
5	625	3112	EUROPE	67af0cce6e7f6bb2991c05ad
1	626	3113	US	67af0ccc6e7f6bb2991c058b
2	626	3114	UK	67af0ccc6e7f6bb2991c058d
3	626	3115	NZ	67af0ccc6e7f6bb2991c058f
4	626	3116	AUS	67af0ccc6e7f6bb2991c0591
5	626	3117	EUROPE	67af0ccc6e7f6bb2991c0593
1	627	3118	US	67af0c716e7f6bb2991c0570
2	627	3119	UK	67af0c746e7f6bb2991c0572
3	627	3120	NZ	67af0c766e7f6bb2991c0574
4	627	3121	AUS	67af0c796e7f6bb2991c0576
5	627	3122	EUROPE	67af0c7b6e7f6bb2991c0578
1	628	3123	US	67af0cce6e7f6bb2991c05a5
2	628	3124	UK	67af0cce6e7f6bb2991c05a7
3	628	3125	NZ	67af0cce6e7f6bb2991c05a9
4	628	3126	AUS	67af0cce6e7f6bb2991c05ab
5	628	3127	EUROPE	67af0cce6e7f6bb2991c05ad
1	629	3128	US	67af0ccc6e7f6bb2991c058b
2	629	3129	UK	67af0ccc6e7f6bb2991c058d
3	629	3130	NZ	67af0ccc6e7f6bb2991c058f
4	629	3131	AUS	67af0ccc6e7f6bb2991c0591
5	629	3132	EUROPE	67af0ccc6e7f6bb2991c0593
1	689	3428	US	67af0c716e7f6bb2991c0570
2	689	3429	UK	67af0c746e7f6bb2991c0572
3	689	3430	NZ	67af0c766e7f6bb2991c0574
4	689	3431	AUS	67af0c796e7f6bb2991c0576
5	689	3432	EUROPE	67af0c7b6e7f6bb2991c0578
1	690	3433	US	67af0cce6e7f6bb2991c05a5
2	690	3434	UK	67af0cce6e7f6bb2991c05a7
3	690	3435	NZ	67af0cce6e7f6bb2991c05a9
4	690	3436	AUS	67af0cce6e7f6bb2991c05ab
5	690	3437	EUROPE	67af0cce6e7f6bb2991c05ad
1	691	3438	US	67af0ccc6e7f6bb2991c058b
2	691	3439	UK	67af0ccc6e7f6bb2991c058d
3	691	3440	NZ	67af0ccc6e7f6bb2991c058f
4	691	3441	AUS	67af0ccc6e7f6bb2991c0591
5	691	3442	EUROPE	67af0ccc6e7f6bb2991c0593
1	692	3443	US	67b02aeaba0984afdd898448
2	692	3444	UK	67b02aeaba0984afdd89844a
3	692	3445	NZ	67b02aeaba0984afdd89844c
4	692	3446	AUS	67b02aeaba0984afdd89844e
5	692	3447	EUROPE	67b02aeaba0984afdd898450
1	693	3448	US	67b02aecba0984afdd898462
2	693	3449	UK	67b02aecba0984afdd898464
3	693	3450	NZ	67b02aecba0984afdd898466
4	693	3451	AUS	67b02aecba0984afdd898468
5	693	3452	EUROPE	67b02aecba0984afdd89846a
1	694	3453	US	67b02af2ba0984afdd89847c
2	694	3454	UK	67b02af2ba0984afdd89847e
3	694	3455	NZ	67b02af2ba0984afdd898480
4	694	3456	AUS	67b02af2ba0984afdd898482
5	694	3457	EUROPE	67b02af2ba0984afdd898484
1	695	3458	US	67b02af7ba0984afdd898496
2	695	3459	UK	67b02af7ba0984afdd898498
3	695	3460	NZ	67b02af7ba0984afdd89849a
4	695	3461	AUS	67b02af7ba0984afdd89849c
5	695	3462	EUROPE	67b02af7ba0984afdd89849e
4	698	3476	AUS	67af0ccc6e7f6bb2991c0591
5	698	3477	EUROPE	67af0ccc6e7f6bb2991c0593
1	699	3478	US	67b02aeaba0984afdd898448
2	699	3479	UK	67b02aeaba0984afdd89844a
3	699	3480	NZ	67b02aeaba0984afdd89844c
4	699	3481	AUS	67b02aeaba0984afdd89844e
5	699	3482	EUROPE	67b02aeaba0984afdd898450
1	700	3483	US	67b02aecba0984afdd898462
2	700	3484	UK	67b02aecba0984afdd898464
3	700	3485	NZ	67b02aecba0984afdd898466
4	700	3486	AUS	67b02aecba0984afdd898468
5	700	3487	EUROPE	67b02aecba0984afdd89846a
1	701	3488	US	67b02af2ba0984afdd89847c
2	701	3489	UK	67b02af2ba0984afdd89847e
3	701	3490	NZ	67b02af2ba0984afdd898480
4	701	3491	AUS	67b02af2ba0984afdd898482
5	701	3492	EUROPE	67b02af2ba0984afdd898484
1	702	3493	US	67b02af7ba0984afdd898496
2	702	3494	UK	67b02af7ba0984afdd898498
3	702	3495	NZ	67b02af7ba0984afdd89849a
1	639	3178	US	67af0c716e7f6bb2991c0570
2	639	3179	UK	67af0c746e7f6bb2991c0572
3	639	3180	NZ	67af0c766e7f6bb2991c0574
4	639	3181	AUS	67af0c796e7f6bb2991c0576
5	639	3182	EUROPE	67af0c7b6e7f6bb2991c0578
1	640	3183	US	67af0cce6e7f6bb2991c05a5
2	640	3184	UK	67af0cce6e7f6bb2991c05a7
3	640	3185	NZ	67af0cce6e7f6bb2991c05a9
4	640	3186	AUS	67af0cce6e7f6bb2991c05ab
5	640	3187	EUROPE	67af0cce6e7f6bb2991c05ad
1	641	3188	US	67af0ccc6e7f6bb2991c058b
2	641	3189	UK	67af0ccc6e7f6bb2991c058d
3	641	3190	NZ	67af0ccc6e7f6bb2991c058f
4	641	3191	AUS	67af0ccc6e7f6bb2991c0591
5	641	3192	EUROPE	67af0ccc6e7f6bb2991c0593
1	642	3193	US	67af0c716e7f6bb2991c0570
2	642	3194	UK	67af0c746e7f6bb2991c0572
3	642	3195	NZ	67af0c766e7f6bb2991c0574
4	642	3196	AUS	67af0c796e7f6bb2991c0576
5	642	3197	EUROPE	67af0c7b6e7f6bb2991c0578
1	643	3198	US	67af0cce6e7f6bb2991c05a5
2	643	3199	UK	67af0cce6e7f6bb2991c05a7
3	643	3200	NZ	67af0cce6e7f6bb2991c05a9
4	643	3201	AUS	67af0cce6e7f6bb2991c05ab
5	643	3202	EUROPE	67af0cce6e7f6bb2991c05ad
1	644	3203	US	67af0ccc6e7f6bb2991c058b
2	644	3204	UK	67af0ccc6e7f6bb2991c058d
3	644	3205	NZ	67af0ccc6e7f6bb2991c058f
4	644	3206	AUS	67af0ccc6e7f6bb2991c0591
5	644	3207	EUROPE	67af0ccc6e7f6bb2991c0593
1	645	3208	US	67af0c716e7f6bb2991c0570
2	645	3209	UK	67af0c746e7f6bb2991c0572
3	645	3210	NZ	67af0c766e7f6bb2991c0574
4	645	3211	AUS	67af0c796e7f6bb2991c0576
5	645	3212	EUROPE	67af0c7b6e7f6bb2991c0578
1	646	3213	US	67af0cce6e7f6bb2991c05a5
2	646	3214	UK	67af0cce6e7f6bb2991c05a7
3	646	3215	NZ	67af0cce6e7f6bb2991c05a9
4	646	3216	AUS	67af0cce6e7f6bb2991c05ab
5	646	3217	EUROPE	67af0cce6e7f6bb2991c05ad
1	647	3218	US	67af0ccc6e7f6bb2991c058b
2	647	3219	UK	67af0ccc6e7f6bb2991c058d
3	647	3220	NZ	67af0ccc6e7f6bb2991c058f
4	647	3221	AUS	67af0ccc6e7f6bb2991c0591
5	647	3222	EUROPE	67af0ccc6e7f6bb2991c0593
1	648	3223	US	67af0c716e7f6bb2991c0570
2	648	3224	UK	67af0c746e7f6bb2991c0572
3	648	3225	NZ	67af0c766e7f6bb2991c0574
4	648	3226	AUS	67af0c796e7f6bb2991c0576
5	648	3227	EUROPE	67af0c7b6e7f6bb2991c0578
1	649	3228	US	67af0cce6e7f6bb2991c05a5
2	649	3229	UK	67af0cce6e7f6bb2991c05a7
3	649	3230	NZ	67af0cce6e7f6bb2991c05a9
4	649	3231	AUS	67af0cce6e7f6bb2991c05ab
5	649	3232	EUROPE	67af0cce6e7f6bb2991c05ad
1	650	3233	US	67af0ccc6e7f6bb2991c058b
2	650	3234	UK	67af0ccc6e7f6bb2991c058d
3	650	3235	NZ	67af0ccc6e7f6bb2991c058f
4	650	3236	AUS	67af0ccc6e7f6bb2991c0591
5	650	3237	EUROPE	67af0ccc6e7f6bb2991c0593
1	675	3358	US	67af0c716e7f6bb2991c0570
2	675	3359	UK	67af0c746e7f6bb2991c0572
3	675	3360	NZ	67af0c766e7f6bb2991c0574
4	675	3361	AUS	67af0c796e7f6bb2991c0576
5	675	3362	EUROPE	67af0c7b6e7f6bb2991c0578
1	676	3363	US	67af0cce6e7f6bb2991c05a5
2	676	3364	UK	67af0cce6e7f6bb2991c05a7
3	676	3365	NZ	67af0cce6e7f6bb2991c05a9
4	676	3366	AUS	67af0cce6e7f6bb2991c05ab
5	676	3367	EUROPE	67af0cce6e7f6bb2991c05ad
1	677	3368	US	67af0ccc6e7f6bb2991c058b
2	677	3369	UK	67af0ccc6e7f6bb2991c058d
3	677	3370	NZ	67af0ccc6e7f6bb2991c058f
4	677	3371	AUS	67af0ccc6e7f6bb2991c0591
5	677	3372	EUROPE	67af0ccc6e7f6bb2991c0593
1	678	3373	US	67b02aeaba0984afdd898448
2	678	3374	UK	67b02aeaba0984afdd89844a
3	678	3375	NZ	67b02aeaba0984afdd89844c
4	678	3376	AUS	67b02aeaba0984afdd89844e
5	678	3377	EUROPE	67b02aeaba0984afdd898450
1	679	3378	US	67b02aecba0984afdd898462
2	679	3379	UK	67b02aecba0984afdd898464
3	679	3380	NZ	67b02aecba0984afdd898466
4	679	3381	AUS	67b02aecba0984afdd898468
5	679	3382	EUROPE	67b02aecba0984afdd89846a
1	680	3383	US	67b02af2ba0984afdd89847c
2	680	3384	UK	67b02af2ba0984afdd89847e
3	680	3385	NZ	67b02af2ba0984afdd898480
4	680	3386	AUS	67b02af2ba0984afdd898482
5	680	3387	EUROPE	67b02af2ba0984afdd898484
1	681	3388	US	67b02af7ba0984afdd898496
2	681	3389	UK	67b02af7ba0984afdd898498
3	681	3390	NZ	67b02af7ba0984afdd89849a
4	681	3391	AUS	67b02af7ba0984afdd89849c
5	681	3392	EUROPE	67b02af7ba0984afdd89849e
4	702	3496	AUS	67b02af7ba0984afdd89849c
5	702	3497	EUROPE	67b02af7ba0984afdd89849e
1	717	3568	US	67af0c716e7f6bb2991c0570
2	717	3569	UK	67af0c746e7f6bb2991c0572
3	717	3570	NZ	67af0c766e7f6bb2991c0574
4	717	3571	AUS	67af0c796e7f6bb2991c0576
5	717	3572	EUROPE	67af0c7b6e7f6bb2991c0578
1	718	3573	US	67af0cce6e7f6bb2991c05a5
2	718	3574	UK	67af0cce6e7f6bb2991c05a7
3	718	3575	NZ	67af0cce6e7f6bb2991c05a9
4	718	3576	AUS	67af0cce6e7f6bb2991c05ab
5	718	3577	EUROPE	67af0cce6e7f6bb2991c05ad
1	719	3578	US	67af0ccc6e7f6bb2991c058b
2	719	3579	UK	67af0ccc6e7f6bb2991c058d
3	719	3580	NZ	67af0ccc6e7f6bb2991c058f
4	719	3581	AUS	67af0ccc6e7f6bb2991c0591
5	719	3582	EUROPE	67af0ccc6e7f6bb2991c0593
1	720	3583	US	67b02aeaba0984afdd898448
2	720	3584	UK	67b02aeaba0984afdd89844a
3	720	3585	NZ	67b02aeaba0984afdd89844c
4	720	3586	AUS	67b02aeaba0984afdd89844e
5	720	3587	EUROPE	67b02aeaba0984afdd898450
1	721	3588	US	67b02aecba0984afdd898462
2	721	3589	UK	67b02aecba0984afdd898464
3	721	3590	NZ	67b02aecba0984afdd898466
4	721	3591	AUS	67b02aecba0984afdd898468
5	721	3592	EUROPE	67b02aecba0984afdd89846a
1	722	3593	US	67b02af2ba0984afdd89847c
2	722	3594	UK	67b02af2ba0984afdd89847e
3	722	3595	NZ	67b02af2ba0984afdd898480
4	722	3596	AUS	67b02af2ba0984afdd898482
5	722	3597	EUROPE	67b02af2ba0984afdd898484
1	723	3598	US	67b02af7ba0984afdd898496
2	723	3599	UK	67b02af7ba0984afdd898498
3	723	3600	NZ	67b02af7ba0984afdd89849a
4	723	3601	AUS	67b02af7ba0984afdd89849c
5	723	3602	EUROPE	67b02af7ba0984afdd89849e
\.


--
-- Data for Name: _pages_v_blocks_cta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_cta (_order, _parent_id, _path, id, rich_text, _uuid, block_name) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_cta_block; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_cta_block (_order, _parent_id, _path, id, tagline, image_id, brand_logo_id, _uuid, block_name) FROM stdin;
10	71	version.layout	11	 Call or WhatsApp	27	22	67af24e061ca467582eb75c9	\N
10	72	version.layout	12	 Call or WhatsApp	27	22	67af24e061ca467582eb75c9	\N
10	73	version.layout	14	 Call or WhatsApp	27	35	67af24e061ca467582eb75c9	\N
10	74	version.layout	15	 Call or WhatsApp	27	35	67af24e061ca467582eb75c9	\N
10	75	version.layout	23	 Call or WhatsApp	27	35	67af24e061ca467582eb75c9	\N
10	76	version.layout	24	 Call or WhatsApp	27	35	67af24e061ca467582eb75c9	\N
10	77	version.layout	36	 Call or WhatsApp	27	35	67af24e061ca467582eb75c9	\N
10	78	version.layout	37	 Call or WhatsApp	27	35	67af24e061ca467582eb75c9	\N
10	79	version.layout	41	 Call or WhatsApp	27	35	67af24e061ca467582eb75c9	\N
10	80	version.layout	42	 Call or WhatsApp	27	35	67af24e061ca467582eb75c9	\N
9	81	version.layout	43	 Call or WhatsApp	27	35	67af24e061ca467582eb75c9	\N
10	82	version.layout	44	 Call or WhatsApp	27	35	67af24e061ca467582eb75c9	\N
10	83	version.layout	47	 Call or WhatsApp	27	35	67af24e061ca467582eb75c9	\N
10	84	version.layout	48	 Call or WhatsApp	27	35	67af24e061ca467582eb75c9	\N
10	85	version.layout	49	 Call or WhatsApp	27	35	67af24e061ca467582eb75c9	\N
10	86	version.layout	51	 Call or WhatsApp	27	\N	67af24e061ca467582eb75c9	\N
10	87	version.layout	52	 Call or WhatsApp	27	36	67af24e061ca467582eb75c9	\N
10	88	version.layout	55	 Call or WhatsApp	27	\N	67af24e061ca467582eb75c9	\N
10	89	version.layout	56	 Call or WhatsApp	27	35	67af24e061ca467582eb75c9	\N
\.


--
-- Data for Name: _pages_v_blocks_cta_block_offices; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_cta_block_offices (_order, _parent_id, id, location, _uuid) FROM stdin;
1	49	85	Chennai Office	67af250461ca467582eb75d3
2	49	86	Tirupati Office	67af250761ca467582eb75d5
1	51	89	Chennai Office	67af250461ca467582eb75d3
2	51	90	Tirupati Office	67af250761ca467582eb75d5
1	52	91	Chennai Office	67af250461ca467582eb75d3
2	52	92	Tirupati Office	67af250761ca467582eb75d5
1	11	9	Chennai Office	67af250461ca467582eb75d3
2	11	10	Tirupati Office	67af250761ca467582eb75d5
1	12	11	Chennai Office	67af250461ca467582eb75d3
2	12	12	Tirupati Office	67af250761ca467582eb75d5
1	14	15	Chennai Office	67af250461ca467582eb75d3
2	14	16	Tirupati Office	67af250761ca467582eb75d5
1	15	17	Chennai Office	67af250461ca467582eb75d3
2	15	18	Tirupati Office	67af250761ca467582eb75d5
1	55	97	Chennai Office	67af250461ca467582eb75d3
2	55	98	Tirupati Office	67af250761ca467582eb75d5
1	56	99	Chennai Office	67af250461ca467582eb75d3
2	56	100	Tirupati Office	67af250761ca467582eb75d5
1	23	33	Chennai Office	67af250461ca467582eb75d3
2	23	34	Tirupati Office	67af250761ca467582eb75d5
1	24	35	Chennai Office	67af250461ca467582eb75d3
2	24	36	Tirupati Office	67af250761ca467582eb75d5
1	36	59	Chennai Office	67af250461ca467582eb75d3
2	36	60	Tirupati Office	67af250761ca467582eb75d5
1	37	61	Chennai Office	67af250461ca467582eb75d3
2	37	62	Tirupati Office	67af250761ca467582eb75d5
1	41	69	Chennai Office	67af250461ca467582eb75d3
2	41	70	Tirupati Office	67af250761ca467582eb75d5
1	42	71	Chennai Office	67af250461ca467582eb75d3
2	42	72	Tirupati Office	67af250761ca467582eb75d5
1	43	73	Chennai Office	67af250461ca467582eb75d3
2	43	74	Tirupati Office	67af250761ca467582eb75d5
1	44	75	Chennai Office	67af250461ca467582eb75d3
2	44	76	Tirupati Office	67af250761ca467582eb75d5
1	47	81	Chennai Office	67af250461ca467582eb75d3
2	47	82	Tirupati Office	67af250761ca467582eb75d5
1	48	83	Chennai Office	67af250461ca467582eb75d3
2	48	84	Tirupati Office	67af250761ca467582eb75d5
\.


--
-- Data for Name: _pages_v_blocks_cta_block_phone_numbers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_cta_block_phone_numbers (_order, _parent_id, id, number, _uuid) FROM stdin;
1	24	82	9169169494	67af24e461ca467582eb75cb
2	24	83	9025186185	67af24eb61ca467582eb75cd
3	24	84	9169169494	67af24f061ca467582eb75cf
4	24	85	9025186185	67af24f961ca467582eb75d1
1	49	182	9169169494	67af24e461ca467582eb75cb
2	49	183	9025186185	67af24eb61ca467582eb75cd
3	49	184	9169169494	67af24f061ca467582eb75cf
4	49	185	9025186185	67af24f961ca467582eb75d1
1	51	190	9169169494	67af24e461ca467582eb75cb
2	51	191	9025186185	67af24eb61ca467582eb75cd
3	51	192	9169169494	67af24f061ca467582eb75cf
4	51	193	9025186185	67af24f961ca467582eb75d1
1	52	194	9169169494	67af24e461ca467582eb75cb
2	52	195	9025186185	67af24eb61ca467582eb75cd
3	52	196	9169169494	67af24f061ca467582eb75cf
4	52	197	9025186185	67af24f961ca467582eb75d1
1	55	206	9169169494	67af24e461ca467582eb75cb
1	11	30	9169169494	67af24e461ca467582eb75cb
2	11	31	9025186185	67af24eb61ca467582eb75cd
3	11	32	9169169494	67af24f061ca467582eb75cf
4	11	33	9025186185	67af24f961ca467582eb75d1
1	12	34	9169169494	67af24e461ca467582eb75cb
2	12	35	9025186185	67af24eb61ca467582eb75cd
3	12	36	9169169494	67af24f061ca467582eb75cf
4	12	37	9025186185	67af24f961ca467582eb75d1
2	55	207	9025186185	67af24eb61ca467582eb75cd
3	55	208	9169169494	67af24f061ca467582eb75cf
4	55	209	9025186185	67af24f961ca467582eb75d1
1	56	210	9169169494	67af24e461ca467582eb75cb
1	14	42	9169169494	67af24e461ca467582eb75cb
2	14	43	9025186185	67af24eb61ca467582eb75cd
3	14	44	9169169494	67af24f061ca467582eb75cf
4	14	45	9025186185	67af24f961ca467582eb75d1
1	15	46	9169169494	67af24e461ca467582eb75cb
2	15	47	9025186185	67af24eb61ca467582eb75cd
3	15	48	9169169494	67af24f061ca467582eb75cf
4	15	49	9025186185	67af24f961ca467582eb75d1
2	56	211	9025186185	67af24eb61ca467582eb75cd
3	56	212	9169169494	67af24f061ca467582eb75cf
4	56	213	9025186185	67af24f961ca467582eb75d1
1	36	130	9169169494	67af24e461ca467582eb75cb
2	36	131	9025186185	67af24eb61ca467582eb75cd
3	36	132	9169169494	67af24f061ca467582eb75cf
4	36	133	9025186185	67af24f961ca467582eb75d1
1	37	134	9169169494	67af24e461ca467582eb75cb
2	37	135	9025186185	67af24eb61ca467582eb75cd
3	37	136	9169169494	67af24f061ca467582eb75cf
4	37	137	9025186185	67af24f961ca467582eb75d1
1	23	78	9169169494	67af24e461ca467582eb75cb
2	23	79	9025186185	67af24eb61ca467582eb75cd
3	23	80	9169169494	67af24f061ca467582eb75cf
4	23	81	9025186185	67af24f961ca467582eb75d1
1	41	150	9169169494	67af24e461ca467582eb75cb
2	41	151	9025186185	67af24eb61ca467582eb75cd
3	41	152	9169169494	67af24f061ca467582eb75cf
4	41	153	9025186185	67af24f961ca467582eb75d1
1	42	154	9169169494	67af24e461ca467582eb75cb
2	42	155	9025186185	67af24eb61ca467582eb75cd
3	42	156	9169169494	67af24f061ca467582eb75cf
4	42	157	9025186185	67af24f961ca467582eb75d1
1	43	158	9169169494	67af24e461ca467582eb75cb
2	43	159	9025186185	67af24eb61ca467582eb75cd
3	43	160	9169169494	67af24f061ca467582eb75cf
4	43	161	9025186185	67af24f961ca467582eb75d1
1	44	162	9169169494	67af24e461ca467582eb75cb
2	44	163	9025186185	67af24eb61ca467582eb75cd
3	44	164	9169169494	67af24f061ca467582eb75cf
4	44	165	9025186185	67af24f961ca467582eb75d1
1	47	174	9169169494	67af24e461ca467582eb75cb
2	47	175	9025186185	67af24eb61ca467582eb75cd
3	47	176	9169169494	67af24f061ca467582eb75cf
4	47	177	9025186185	67af24f961ca467582eb75d1
1	48	178	9169169494	67af24e461ca467582eb75cb
2	48	179	9025186185	67af24eb61ca467582eb75cd
3	48	180	9169169494	67af24f061ca467582eb75cf
4	48	181	9025186185	67af24f961ca467582eb75d1
\.


--
-- Data for Name: _pages_v_blocks_cta_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_cta_links (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label, link_appearance, _uuid) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_form_block; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_form_block (_order, _parent_id, _path, id, form_id, enable_intro, intro_content, _uuid, block_name) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_get_started_block; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_get_started_block (_order, _parent_id, _path, id, heading, title, footer_text, image_id, _uuid, block_name) FROM stdin;
8	61	version.layout	3	Let's make it happen!	Start your journey today!	And so much more to make your journey hassle-free!	\N	67af22d00ce74758d4658b59	\N
9	61	version.layout	4	Let's make it happen!	Start your journey today!	And so much more to make your journey hassle-free!	\N	67af22f60ce74758d4658b5e	\N
8	63	version.layout	8	Let's make it happen!	Start your journey today!	And so much more to make your journey hassle-free!	19	67af233461ca467582eb75bb	\N
8	64	version.layout	9	Let's make it happen!	Start your journey today!	And so much more to make your journey hassle-free!	19	67af233461ca467582eb75bb	\N
8	65	version.layout	13	Let's make it happen!	Start your journey today!	And so much more to make your journey hassle-free!	19	67af233461ca467582eb75bb	\N
8	66	version.layout	14	Let's make it happen!	Start your journey today!	And so much more to make your journey hassle-free!	19	67af233461ca467582eb75bb	\N
8	67	version.layout	16	Let's make it happen!	Start your journey today!	And so much more to make your journey hassle-free!	19	67af233461ca467582eb75bb	\N
8	68	version.layout	17	Let's make it happen!	Start your journey today!	And so much more to make your journey hassle-free!	19	67af233461ca467582eb75bb	\N
8	69	version.layout	23	Let's make it happen!	Start your journey today!	And so much more to make your journey hassle-free!	19	67af233461ca467582eb75bb	\N
8	70	version.layout	24	Let's make it happen!	Start your journey today!	And so much more to make your journey hassle-free!	19	67af233461ca467582eb75bb	\N
8	71	version.layout	35	Let's make it happen!	Start your journey today!	And so much more to make your journey hassle-free!	19	67af233461ca467582eb75bb	\N
8	72	version.layout	36	Let's make it happen!	Start your journey today!	And so much more to make your journey hassle-free!	19	67af233461ca467582eb75bb	\N
8	73	version.layout	38	Let's make it happen!	Start your journey today!	And so much more to make your journey hassle-free!	19	67af233461ca467582eb75bb	\N
8	74	version.layout	39	Let's make it happen!	Start your journey today!	And so much more to make your journey hassle-free!	19	67af233461ca467582eb75bb	\N
8	75	version.layout	47	Let's make it happen!	Start your journey today!	And so much more to make your journey hassle-free!	19	67af233461ca467582eb75bb	\N
8	76	version.layout	48	Let's make it happen!	Start your journey today!	And so much more to make your journey hassle-free!	19	67af233461ca467582eb75bb	\N
8	77	version.layout	60	Let's make it happen!	Start your journey today!	And so much more to make your journey hassle-free!	19	67af233461ca467582eb75bb	\N
8	78	version.layout	61	Let's make it happen!	Start your journey today!	And so much more to make your journey hassle-free!	19	67af233461ca467582eb75bb	\N
8	79	version.layout	65	Let's make it happen!	Start your journey today!	And so much more to make your journey hassle-free!	19	67af233461ca467582eb75bb	\N
8	80	version.layout	66	Let's make it happen!	Start your journey today!	And so much more to make your journey hassle-free!	19	67af233461ca467582eb75bb	\N
7	81	version.layout	67	Let's make it happen!	Start your journey today!	And so much more to make your journey hassle-free!	19	67af233461ca467582eb75bb	\N
8	82	version.layout	68	Let's make it happen!	Start your journey today!	And so much more to make your journey hassle-free!	19	67af233461ca467582eb75bb	\N
8	83	version.layout	71	Let's make it happen!	Start your journey today!	And so much more to make your journey hassle-free!	19	67af233461ca467582eb75bb	\N
8	84	version.layout	72	Let's make it happen!	Start your journey today!	And so much more to make your journey hassle-free!	19	67af233461ca467582eb75bb	\N
8	85	version.layout	73	Let's make it happen!	Start your journey today!	And so much more to make your journey hassle-free!	19	67af233461ca467582eb75bb	\N
8	86	version.layout	75	Let's make it happen!	Start your journey today!	And so much more to make your journey hassle-free!	19	67af233461ca467582eb75bb	\N
8	87	version.layout	76	Let's make it happen!	Start your journey today!	And so much more to make your journey hassle-free!	19	67af233461ca467582eb75bb	\N
8	88	version.layout	79	Let's make it happen!	Start your journey today!	And so much more to make your journey hassle-free!	19	67af233461ca467582eb75bb	\N
8	89	version.layout	80	Let's make it happen!	Start your journey today!	And so much more to make your journey hassle-free!	19	67af233461ca467582eb75bb	\N
\.


--
-- Data for Name: _pages_v_blocks_get_started_block_features; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_get_started_block_features (_order, _parent_id, id, text, _uuid) FROM stdin;
1	35	86	Get expert guidanceΓÇöask questions & interact with an experienced counselor!	67af233f61ca467582eb75bd
2	35	87	Stay informed with the latest study abroad news & scholarship updates	67af234761ca467582eb75bf
3	35	88	Track your applications & offers with real-time updates	67af234a61ca467582eb75c1
1	36	89	Get expert guidanceΓÇöask questions & interact with an experienced counselor!	67af233f61ca467582eb75bd
1	8	5	Get expert guidanceΓÇöask questions & interact with an experienced counselor!	67af233f61ca467582eb75bd
2	8	6	Stay informed with the latest study abroad news & scholarship updates	67af234761ca467582eb75bf
3	8	7	Track your applications & offers with real-time updates	67af234a61ca467582eb75c1
1	9	8	Get expert guidanceΓÇöask questions & interact with an experienced counselor!	67af233f61ca467582eb75bd
2	9	9	Stay informed with the latest study abroad news & scholarship updates	67af234761ca467582eb75bf
3	9	10	Track your applications & offers with real-time updates	67af234a61ca467582eb75c1
2	36	90	Stay informed with the latest study abroad news & scholarship updates	67af234761ca467582eb75bf
3	36	91	Track your applications & offers with real-time updates	67af234a61ca467582eb75c1
1	38	95	Get expert guidanceΓÇöask questions & interact with an experienced counselor!	67af233f61ca467582eb75bd
2	38	96	Stay informed with the latest study abroad news & scholarship updates	67af234761ca467582eb75bf
3	38	97	Track your applications & offers with real-time updates	67af234a61ca467582eb75c1
1	39	98	Get expert guidanceΓÇöask questions & interact with an experienced counselor!	67af233f61ca467582eb75bd
1	13	20	Get expert guidanceΓÇöask questions & interact with an experienced counselor!	67af233f61ca467582eb75bd
2	13	21	Stay informed with the latest study abroad news & scholarship updates	67af234761ca467582eb75bf
3	13	22	Track your applications & offers with real-time updates	67af234a61ca467582eb75c1
1	14	23	Get expert guidanceΓÇöask questions & interact with an experienced counselor!	67af233f61ca467582eb75bd
2	14	24	Stay informed with the latest study abroad news & scholarship updates	67af234761ca467582eb75bf
3	14	25	Track your applications & offers with real-time updates	67af234a61ca467582eb75c1
2	39	99	Stay informed with the latest study abroad news & scholarship updates	67af234761ca467582eb75bf
3	39	100	Track your applications & offers with real-time updates	67af234a61ca467582eb75c1
1	16	29	Get expert guidanceΓÇöask questions & interact with an experienced counselor!	67af233f61ca467582eb75bd
2	16	30	Stay informed with the latest study abroad news & scholarship updates	67af234761ca467582eb75bf
3	16	31	Track your applications & offers with real-time updates	67af234a61ca467582eb75c1
1	17	32	Get expert guidanceΓÇöask questions & interact with an experienced counselor!	67af233f61ca467582eb75bd
2	17	33	Stay informed with the latest study abroad news & scholarship updates	67af234761ca467582eb75bf
3	17	34	Track your applications & offers with real-time updates	67af234a61ca467582eb75c1
1	65	176	Get expert guidanceΓÇöask questions & interact with an experienced counselor!	67af233f61ca467582eb75bd
2	65	177	Stay informed with the latest study abroad news & scholarship updates	67af234761ca467582eb75bf
3	65	178	Track your applications & offers with real-time updates	67af234a61ca467582eb75c1
1	66	179	Get expert guidanceΓÇöask questions & interact with an experienced counselor!	67af233f61ca467582eb75bd
2	66	180	Stay informed with the latest study abroad news & scholarship updates	67af234761ca467582eb75bf
3	66	181	Track your applications & offers with real-time updates	67af234a61ca467582eb75c1
1	67	182	Get expert guidanceΓÇöask questions & interact with an experienced counselor!	67af233f61ca467582eb75bd
2	67	183	Stay informed with the latest study abroad news & scholarship updates	67af234761ca467582eb75bf
3	67	184	Track your applications & offers with real-time updates	67af234a61ca467582eb75c1
1	23	50	Get expert guidanceΓÇöask questions & interact with an experienced counselor!	67af233f61ca467582eb75bd
2	23	51	Stay informed with the latest study abroad news & scholarship updates	67af234761ca467582eb75bf
3	23	52	Track your applications & offers with real-time updates	67af234a61ca467582eb75c1
1	24	53	Get expert guidanceΓÇöask questions & interact with an experienced counselor!	67af233f61ca467582eb75bd
2	24	54	Stay informed with the latest study abroad news & scholarship updates	67af234761ca467582eb75bf
3	24	55	Track your applications & offers with real-time updates	67af234a61ca467582eb75c1
1	47	122	Get expert guidanceΓÇöask questions & interact with an experienced counselor!	67af233f61ca467582eb75bd
2	47	123	Stay informed with the latest study abroad news & scholarship updates	67af234761ca467582eb75bf
3	47	124	Track your applications & offers with real-time updates	67af234a61ca467582eb75c1
1	48	125	Get expert guidanceΓÇöask questions & interact with an experienced counselor!	67af233f61ca467582eb75bd
2	48	126	Stay informed with the latest study abroad news & scholarship updates	67af234761ca467582eb75bf
3	48	127	Track your applications & offers with real-time updates	67af234a61ca467582eb75c1
1	60	161	Get expert guidanceΓÇöask questions & interact with an experienced counselor!	67af233f61ca467582eb75bd
2	60	162	Stay informed with the latest study abroad news & scholarship updates	67af234761ca467582eb75bf
3	60	163	Track your applications & offers with real-time updates	67af234a61ca467582eb75c1
1	61	164	Get expert guidanceΓÇöask questions & interact with an experienced counselor!	67af233f61ca467582eb75bd
2	61	165	Stay informed with the latest study abroad news & scholarship updates	67af234761ca467582eb75bf
3	61	166	Track your applications & offers with real-time updates	67af234a61ca467582eb75c1
1	68	185	Get expert guidanceΓÇöask questions & interact with an experienced counselor!	67af233f61ca467582eb75bd
2	68	186	Stay informed with the latest study abroad news & scholarship updates	67af234761ca467582eb75bf
3	68	187	Track your applications & offers with real-time updates	67af234a61ca467582eb75c1
1	71	194	Get expert guidanceΓÇöask questions & interact with an experienced counselor!	67af233f61ca467582eb75bd
2	71	195	Stay informed with the latest study abroad news & scholarship updates	67af234761ca467582eb75bf
3	71	196	Track your applications & offers with real-time updates	67af234a61ca467582eb75c1
1	72	197	Get expert guidanceΓÇöask questions & interact with an experienced counselor!	67af233f61ca467582eb75bd
2	72	198	Stay informed with the latest study abroad news & scholarship updates	67af234761ca467582eb75bf
3	72	199	Track your applications & offers with real-time updates	67af234a61ca467582eb75c1
1	73	200	Get expert guidanceΓÇöask questions & interact with an experienced counselor!	67af233f61ca467582eb75bd
2	73	201	Stay informed with the latest study abroad news & scholarship updates	67af234761ca467582eb75bf
3	73	202	Track your applications & offers with real-time updates	67af234a61ca467582eb75c1
1	75	206	Get expert guidanceΓÇöask questions & interact with an experienced counselor!	67af233f61ca467582eb75bd
2	75	207	Stay informed with the latest study abroad news & scholarship updates	67af234761ca467582eb75bf
3	75	208	Track your applications & offers with real-time updates	67af234a61ca467582eb75c1
1	76	209	Get expert guidanceΓÇöask questions & interact with an experienced counselor!	67af233f61ca467582eb75bd
2	76	210	Stay informed with the latest study abroad news & scholarship updates	67af234761ca467582eb75bf
3	76	211	Track your applications & offers with real-time updates	67af234a61ca467582eb75c1
1	79	218	Get expert guidanceΓÇöask questions & interact with an experienced counselor!	67af233f61ca467582eb75bd
2	79	219	Stay informed with the latest study abroad news & scholarship updates	67af234761ca467582eb75bf
3	79	220	Track your applications & offers with real-time updates	67af234a61ca467582eb75c1
1	80	221	Get expert guidanceΓÇöask questions & interact with an experienced counselor!	67af233f61ca467582eb75bd
2	80	222	Stay informed with the latest study abroad news & scholarship updates	67af234761ca467582eb75bf
3	80	223	Track your applications & offers with real-time updates	67af234a61ca467582eb75c1
\.


--
-- Data for Name: _pages_v_blocks_ielts_block; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_ielts_block (_order, _parent_id, _path, id, title, subtitle, description, ielts_text, ielts_image_id, learning_type_title, learning_type_subtitle, cta_button_text, cta_button_href, image_id, _uuid, block_name) FROM stdin;
7	57	version.layout	17	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	\N	67af18fc0ce74758d4658b45	\N
7	58	version.layout	18	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
7	59	version.layout	21	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
7	60	version.layout	22	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
7	61	version.layout	24	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
7	62	version.layout	25	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
7	63	version.layout	29	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
7	64	version.layout	30	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
7	65	version.layout	34	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
7	66	version.layout	35	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
7	67	version.layout	37	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
7	68	version.layout	38	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
7	69	version.layout	44	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
7	70	version.layout	45	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
7	77	version.layout	81	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
7	78	version.layout	82	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
7	79	version.layout	86	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
7	80	version.layout	87	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
7	71	version.layout	56	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
7	72	version.layout	57	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
7	73	version.layout	59	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
7	74	version.layout	60	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
7	75	version.layout	68	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
7	76	version.layout	69	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
6	81	version.layout	88	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
7	82	version.layout	89	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
7	83	version.layout	92	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
7	84	version.layout	93	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
7	85	version.layout	94	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
7	86	version.layout	96	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
7	87	version.layout	97	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
7	88	version.layout	100	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
7	89	version.layout	101	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	67af18fc0ce74758d4658b45	\N
\.


--
-- Data for Name: _pages_v_blocks_ielts_block_features; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_ielts_block_features (_order, _parent_id, id, text, _uuid) FROM stdin;
1	35	111	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	35	112	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	35	113	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	35	114	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	35	115	Flexible online and offline learning options	67af19900ce74758d4658b55
1	56	216	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	56	217	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	56	218	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	56	219	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	56	220	Flexible online and offline learning options	67af19900ce74758d4658b55
1	37	121	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	37	122	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	37	123	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	37	124	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	37	125	Flexible online and offline learning options	67af19900ce74758d4658b55
1	38	126	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	38	127	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	38	128	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	38	129	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	38	130	Flexible online and offline learning options	67af19900ce74758d4658b55
1	17	21	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	17	22	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	17	23	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	17	24	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	17	25	Flexible online and offline learning options	67af19900ce74758d4658b55
1	18	26	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	18	27	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	18	28	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	18	29	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	18	30	Flexible online and offline learning options	67af19900ce74758d4658b55
1	57	221	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
1	21	41	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	21	42	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	21	43	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	21	44	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	21	45	Flexible online and offline learning options	67af19900ce74758d4658b55
1	22	46	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	22	47	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	22	48	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	22	49	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	22	50	Flexible online and offline learning options	67af19900ce74758d4658b55
1	24	56	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	24	57	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	24	58	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	24	59	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	24	60	Flexible online and offline learning options	67af19900ce74758d4658b55
1	25	61	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	25	62	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	25	63	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	25	64	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	25	65	Flexible online and offline learning options	67af19900ce74758d4658b55
1	29	81	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	29	82	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	29	83	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	29	84	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	29	85	Flexible online and offline learning options	67af19900ce74758d4658b55
1	30	86	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	30	87	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	30	88	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	30	89	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	30	90	Flexible online and offline learning options	67af19900ce74758d4658b55
1	34	106	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	34	107	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	34	108	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	34	109	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	34	110	Flexible online and offline learning options	67af19900ce74758d4658b55
2	57	222	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	57	223	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	57	224	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	57	225	Flexible online and offline learning options	67af19900ce74758d4658b55
1	59	231	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	59	232	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	59	233	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	59	234	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	59	235	Flexible online and offline learning options	67af19900ce74758d4658b55
1	60	236	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	60	237	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	60	238	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	60	239	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	60	240	Flexible online and offline learning options	67af19900ce74758d4658b55
1	44	156	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	44	157	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	44	158	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	44	159	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	44	160	Flexible online and offline learning options	67af19900ce74758d4658b55
1	45	161	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	45	162	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	45	163	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	45	164	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	45	165	Flexible online and offline learning options	67af19900ce74758d4658b55
1	81	341	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	81	342	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	81	343	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	81	344	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	81	345	Flexible online and offline learning options	67af19900ce74758d4658b55
1	82	346	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	82	347	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	82	348	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	82	349	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	82	350	Flexible online and offline learning options	67af19900ce74758d4658b55
1	68	276	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	68	277	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	68	278	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	68	279	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	68	280	Flexible online and offline learning options	67af19900ce74758d4658b55
1	69	281	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	69	282	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	69	283	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	69	284	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	69	285	Flexible online and offline learning options	67af19900ce74758d4658b55
1	86	366	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	86	367	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	86	368	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	86	369	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	86	370	Flexible online and offline learning options	67af19900ce74758d4658b55
1	87	371	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	87	372	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	87	373	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	87	374	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	87	375	Flexible online and offline learning options	67af19900ce74758d4658b55
1	88	376	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	88	377	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	88	378	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	88	379	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	88	380	Flexible online and offline learning options	67af19900ce74758d4658b55
1	89	381	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	89	382	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	89	383	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	89	384	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	89	385	Flexible online and offline learning options	67af19900ce74758d4658b55
1	92	396	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	92	397	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	92	398	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	92	399	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	92	400	Flexible online and offline learning options	67af19900ce74758d4658b55
1	93	401	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	93	402	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	93	403	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	93	404	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	93	405	Flexible online and offline learning options	67af19900ce74758d4658b55
1	94	406	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	94	407	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	94	408	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	94	409	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	94	410	Flexible online and offline learning options	67af19900ce74758d4658b55
1	96	416	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	96	417	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	96	418	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	96	419	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	96	420	Flexible online and offline learning options	67af19900ce74758d4658b55
1	97	421	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	97	422	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	97	423	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	97	424	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	97	425	Flexible online and offline learning options	67af19900ce74758d4658b55
1	100	436	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	100	437	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	100	438	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	100	439	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	100	440	Flexible online and offline learning options	67af19900ce74758d4658b55
1	101	441	Personalized training tailored to your strengths   and weaknesses	67af19750ce74758d4658b4d
2	101	442	Expert-led strategies to boost your IELTS score	67af197e0ce74758d4658b4f
3	101	443	Full-length mock tests with detailed feedback	67af19830ce74758d4658b51
4	101	444	One-on-one speaking and writing improvement  sessions	67af19890ce74758d4658b53
5	101	445	Flexible online and offline learning options	67af19900ce74758d4658b55
\.


--
-- Data for Name: _pages_v_blocks_ielts_block_study_modes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_ielts_block_study_modes (_order, _parent_id, id, label, value, _uuid) FROM stdin;
1	35	87	Masterclass	Masterclass	67af19240ce74758d4658b47
2	35	88	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
3	35	89	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
1	69	189	Masterclass	Masterclass	67af19240ce74758d4658b47
2	69	190	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
3	69	191	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
1	37	93	Masterclass	Masterclass	67af19240ce74758d4658b47
2	37	94	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
3	37	95	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
1	38	96	Masterclass	Masterclass	67af19240ce74758d4658b47
2	38	97	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
3	38	98	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
1	44	114	Masterclass	Masterclass	67af19240ce74758d4658b47
2	44	115	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
3	44	116	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
1	45	117	Masterclass	Masterclass	67af19240ce74758d4658b47
2	45	118	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
1	17	33	Masterclass	Masterclass	67af19240ce74758d4658b47
2	17	34	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
3	17	35	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
1	18	36	Masterclass	Masterclass	67af19240ce74758d4658b47
2	18	37	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
3	18	38	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
3	45	119	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
1	21	45	Masterclass	Masterclass	67af19240ce74758d4658b47
2	21	46	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
3	21	47	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
1	22	48	Masterclass	Masterclass	67af19240ce74758d4658b47
2	22	49	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
3	22	50	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
1	24	54	Masterclass	Masterclass	67af19240ce74758d4658b47
2	24	55	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
3	24	56	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
1	25	57	Masterclass	Masterclass	67af19240ce74758d4658b47
2	25	58	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
3	25	59	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
1	29	69	Masterclass	Masterclass	67af19240ce74758d4658b47
2	29	70	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
3	29	71	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
1	30	72	Masterclass	Masterclass	67af19240ce74758d4658b47
2	30	73	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
3	30	74	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
1	81	225	Masterclass	Masterclass	67af19240ce74758d4658b47
2	81	226	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
3	81	227	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
1	82	228	Masterclass	Masterclass	67af19240ce74758d4658b47
2	82	229	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
3	82	230	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
1	34	84	Masterclass	Masterclass	67af19240ce74758d4658b47
2	34	85	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
3	34	86	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
1	56	150	Masterclass	Masterclass	67af19240ce74758d4658b47
2	56	151	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
3	56	152	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
1	57	153	Masterclass	Masterclass	67af19240ce74758d4658b47
2	57	154	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
3	57	155	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
1	59	159	Masterclass	Masterclass	67af19240ce74758d4658b47
2	59	160	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
3	59	161	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
1	60	162	Masterclass	Masterclass	67af19240ce74758d4658b47
2	60	163	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
3	60	164	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
1	86	240	Masterclass	Masterclass	67af19240ce74758d4658b47
2	86	241	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
3	86	242	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
1	87	243	Masterclass	Masterclass	67af19240ce74758d4658b47
2	87	244	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
3	87	245	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
1	88	246	Masterclass	Masterclass	67af19240ce74758d4658b47
2	88	247	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
3	88	248	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
1	89	249	Masterclass	Masterclass	67af19240ce74758d4658b47
2	89	250	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
1	68	186	Masterclass	Masterclass	67af19240ce74758d4658b47
2	68	187	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
3	68	188	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
3	89	251	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
1	92	258	Masterclass	Masterclass	67af19240ce74758d4658b47
2	92	259	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
3	92	260	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
1	93	261	Masterclass	Masterclass	67af19240ce74758d4658b47
2	93	262	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
3	93	263	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
1	94	264	Masterclass	Masterclass	67af19240ce74758d4658b47
2	94	265	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
3	94	266	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
1	96	270	Masterclass	Masterclass	67af19240ce74758d4658b47
2	96	271	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
3	96	272	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
1	97	273	Masterclass	Masterclass	67af19240ce74758d4658b47
2	97	274	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
3	97	275	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
1	100	282	Masterclass	Masterclass	67af19240ce74758d4658b47
2	100	283	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
3	100	284	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
1	101	285	Masterclass	Masterclass	67af19240ce74758d4658b47
2	101	286	Live Group Classes	Live Group Classes	67af193e0ce74758d4658b49
3	101	287	In-Person Classes	In-Person Classes	67af196c0ce74758d4658b4b
\.


--
-- Data for Name: _pages_v_blocks_map_block; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_map_block (_order, _parent_id, _path, id, heading, _uuid, block_name) FROM stdin;
9	65	version.layout	4	Visit Us	67af23a961ca467582eb75c3	\N
9	66	version.layout	5	Visit Us	67af23a961ca467582eb75c3	\N
9	67	version.layout	7	Visit Us	67af23a961ca467582eb75c3	\N
9	68	version.layout	8	Visit Us	67af23a961ca467582eb75c3	\N
9	69	version.layout	14	Visit Us	67af23a961ca467582eb75c3	\N
9	70	version.layout	15	Visit Us	67af23a961ca467582eb75c3	\N
9	71	version.layout	26	Visit Us	67af23a961ca467582eb75c3	\N
9	72	version.layout	27	Visit Us	67af23a961ca467582eb75c3	\N
9	73	version.layout	29	Visit Us	67af23a961ca467582eb75c3	\N
9	74	version.layout	30	Visit Us	67af23a961ca467582eb75c3	\N
9	75	version.layout	38	Visit Us	67af23a961ca467582eb75c3	\N
9	76	version.layout	39	Visit Us	67af23a961ca467582eb75c3	\N
9	77	version.layout	51	Visit Us	67af23a961ca467582eb75c3	\N
9	78	version.layout	52	Visit Us	67af23a961ca467582eb75c3	\N
9	79	version.layout	56	Visit Us	67af23a961ca467582eb75c3	\N
9	80	version.layout	57	Visit Us	67af23a961ca467582eb75c3	\N
8	81	version.layout	58	Visit Us	67af23a961ca467582eb75c3	\N
9	82	version.layout	59	Visit Us	67af23a961ca467582eb75c3	\N
9	83	version.layout	62	Visit Us	67af23a961ca467582eb75c3	\N
9	84	version.layout	63	Visit Us	67af23a961ca467582eb75c3	\N
9	85	version.layout	64	Visit Us	67af23a961ca467582eb75c3	\N
9	86	version.layout	66	Visit Us	67af23a961ca467582eb75c3	\N
9	87	version.layout	67	Visit Us	67af23a961ca467582eb75c3	\N
9	88	version.layout	70	Visit Us	67af23a961ca467582eb75c3	\N
9	89	version.layout	71	Visit Us	67af23a961ca467582eb75c3	\N
\.


--
-- Data for Name: _pages_v_blocks_map_block_offices; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_map_block_offices (_order, _parent_id, id, name, address, map_iframe, _uuid) FROM stdin;
1	4	3	Think Study Chennai Office	2nd Floor, Yealchur Plaza, \nOpp Dr MGR University, Above KFC,\n126, Poonamalle High Road, \nMaduravoyal,\nChennai, Tamilnadu 600095	\N	67af23ae61ca467582eb75c5
1	5	4	Think Study Chennai Office	2nd Floor, Yealchur Plaza, \nOpp Dr MGR University, Above KFC,\n126, Poonamalle High Road, \nMaduravoyal,\nChennai, Tamilnadu 600095	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3886.4835139312336!2d80.17513478429012!3d13.068513979903363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94f553c50024d89%3A0x2620ac677ba7844d!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531257444!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>	67af23ae61ca467582eb75c5
1	7	6	Think Study Chennai Office	2nd Floor, Yealchur Plaza, \nOpp Dr MGR University, Above KFC,\n126, Poonamalle High Road, \nMaduravoyal,\nChennai, Tamilnadu 600095	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3886.4835139312336!2d80.17513478429012!3d13.068513979903363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94f553c50024d89%3A0x2620ac677ba7844d!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531257444!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>	67af23ae61ca467582eb75c5
1	8	7	Think Study Chennai Office	2nd Floor, Yealchur Plaza, \nOpp Dr MGR University, Above KFC,\n126, Poonamalle High Road, \nMaduravoyal,\nChennai, Tamilnadu 600095	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3886.4835139312336!2d80.17513478429012!3d13.068513979903363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94f553c50024d89%3A0x2620ac677ba7844d!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531257444!5m2!1sen!2sin	67af23ae61ca467582eb75c5
1	62	113	Think Study Chennai Office	2nd Floor, Yealchur Plaza, \nOpp Dr MGR University, Above KFC,\n126, Poonamalle High Road, \nMaduravoyal,\nChennai, Tamilnadu 600095	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3886.4835139312336!2d80.17513478429012!3d13.068513979903363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94f553c50024d89%3A0x2620ac677ba7844d!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531257444!5m2!1sen!2sin	67af23ae61ca467582eb75c5
1	14	17	Think Study Chennai Office	2nd Floor, Yealchur Plaza, \nOpp Dr MGR University, Above KFC,\n126, Poonamalle High Road, \nMaduravoyal,\nChennai, Tamilnadu 600095	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3886.4835139312336!2d80.17513478429012!3d13.068513979903363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94f553c50024d89%3A0x2620ac677ba7844d!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531257444!5m2!1sen!2sin	67af23ae61ca467582eb75c5
2	14	18	Think Study Tirupati Office 	401, Triveni plaza, \n4th floor,\nVk Puram\nVaikuntapuram arch  \nTirupati, Andhra Pradesh 517502	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3877.6971722757417!2d79.40492777574627!3d13.615298200437861!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a4d4b3bb496cb37%3A0xbe346a646f6d6fa0!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531417014!5m2!1sen!2sin	67af248261ca467582eb75c7
1	15	19	Think Study Chennai Office	2nd Floor, Yealchur Plaza, \nOpp Dr MGR University, Above KFC,\n126, Poonamalle High Road, \nMaduravoyal,\nChennai, Tamilnadu 600095	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3886.4835139312336!2d80.17513478429012!3d13.068513979903363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94f553c50024d89%3A0x2620ac677ba7844d!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531257444!5m2!1sen!2sin	67af23ae61ca467582eb75c5
2	15	20	Think Study Tirupati Office 	401, Triveni plaza, \n4th floor,\nVk Puram\nVaikuntapuram arch  \nTirupati, Andhra Pradesh 517502	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3877.6971722757417!2d79.40492777574627!3d13.615298200437861!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a4d4b3bb496cb37%3A0xbe346a646f6d6fa0!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531417014!5m2!1sen!2sin	67af248261ca467582eb75c7
1	58	105	Think Study Chennai Office	2nd Floor, Yealchur Plaza, \nOpp Dr MGR University, Above KFC,\n126, Poonamalle High Road, \nMaduravoyal,\nChennai, Tamilnadu 600095	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3886.4835139312336!2d80.17513478429012!3d13.068513979903363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94f553c50024d89%3A0x2620ac677ba7844d!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531257444!5m2!1sen!2sin	67af23ae61ca467582eb75c5
2	58	106	Think Study Tirupati Office 	401, Triveni plaza, \n4th floor,\nVk Puram\nVaikuntapuram arch  \nTirupati, Andhra Pradesh 517502	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3877.6971722757417!2d79.40492777574627!3d13.615298200437861!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a4d4b3bb496cb37%3A0xbe346a646f6d6fa0!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531417014!5m2!1sen!2sin	67af248261ca467582eb75c7
2	62	114	Think Study Tirupati Office 	401, Triveni plaza, \n4th floor,\nVk Puram\nVaikuntapuram arch  \nTirupati, Andhra Pradesh 517502	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3877.6971722757417!2d79.40492777574627!3d13.615298200437861!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a4d4b3bb496cb37%3A0xbe346a646f6d6fa0!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531417014!5m2!1sen!2sin	67af248261ca467582eb75c7
1	63	115	Think Study Chennai Office	2nd Floor, Yealchur Plaza, \nOpp Dr MGR University, Above KFC,\n126, Poonamalle High Road, \nMaduravoyal,\nChennai, Tamilnadu 600095	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3886.4835139312336!2d80.17513478429012!3d13.068513979903363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94f553c50024d89%3A0x2620ac677ba7844d!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531257444!5m2!1sen!2sin	67af23ae61ca467582eb75c5
2	63	116	Think Study Tirupati Office 	401, Triveni plaza, \n4th floor,\nVk Puram\nVaikuntapuram arch  \nTirupati, Andhra Pradesh 517502	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3877.6971722757417!2d79.40492777574627!3d13.615298200437861!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a4d4b3bb496cb37%3A0xbe346a646f6d6fa0!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531417014!5m2!1sen!2sin	67af248261ca467582eb75c7
1	66	121	Think Study Chennai Office	2nd Floor, Yealchur Plaza, \nOpp Dr MGR University, Above KFC,\n126, Poonamalle High Road, \nMaduravoyal,\nChennai, Tamilnadu 600095	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3886.4835139312336!2d80.17513478429012!3d13.068513979903363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94f553c50024d89%3A0x2620ac677ba7844d!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531257444!5m2!1sen!2sin	67af23ae61ca467582eb75c5
2	66	122	Think Study Tirupati Office 	401, Triveni plaza, \n4th floor,\nVk Puram\nVaikuntapuram arch  \nTirupati, Andhra Pradesh 517502	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3877.6971722757417!2d79.40492777574627!3d13.615298200437861!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a4d4b3bb496cb37%3A0xbe346a646f6d6fa0!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531417014!5m2!1sen!2sin	67af248261ca467582eb75c7
1	71	131	Think Study Chennai Office	2nd Floor, Yealchur Plaza, \nOpp Dr MGR University, Above KFC,\n126, Poonamalle High Road, \nMaduravoyal,\nChennai, Tamilnadu 600095	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3886.4835139312336!2d80.17513478429012!3d13.068513979903363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94f553c50024d89%3A0x2620ac677ba7844d!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531257444!5m2!1sen!2sin	67af23ae61ca467582eb75c5
1	26	41	Think Study Chennai Office	2nd Floor, Yealchur Plaza, \nOpp Dr MGR University, Above KFC,\n126, Poonamalle High Road, \nMaduravoyal,\nChennai, Tamilnadu 600095	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3886.4835139312336!2d80.17513478429012!3d13.068513979903363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94f553c50024d89%3A0x2620ac677ba7844d!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531257444!5m2!1sen!2sin	67af23ae61ca467582eb75c5
2	26	42	Think Study Tirupati Office 	401, Triveni plaza, \n4th floor,\nVk Puram\nVaikuntapuram arch  \nTirupati, Andhra Pradesh 517502	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3877.6971722757417!2d79.40492777574627!3d13.615298200437861!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a4d4b3bb496cb37%3A0xbe346a646f6d6fa0!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531417014!5m2!1sen!2sin	67af248261ca467582eb75c7
1	27	43	Think Study Chennai Office	2nd Floor, Yealchur Plaza, \nOpp Dr MGR University, Above KFC,\n126, Poonamalle High Road, \nMaduravoyal,\nChennai, Tamilnadu 600095	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3886.4835139312336!2d80.17513478429012!3d13.068513979903363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94f553c50024d89%3A0x2620ac677ba7844d!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531257444!5m2!1sen!2sin	67af23ae61ca467582eb75c5
2	27	44	Think Study Tirupati Office 	401, Triveni plaza, \n4th floor,\nVk Puram\nVaikuntapuram arch  \nTirupati, Andhra Pradesh 517502	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3877.6971722757417!2d79.40492777574627!3d13.615298200437861!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a4d4b3bb496cb37%3A0xbe346a646f6d6fa0!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531417014!5m2!1sen!2sin	67af248261ca467582eb75c7
1	29	47	Think Study Chennai Office	2nd Floor, Yealchur Plaza, \nOpp Dr MGR University, Above KFC,\n126, Poonamalle High Road, \nMaduravoyal,\nChennai, Tamilnadu 600095	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3886.4835139312336!2d80.17513478429012!3d13.068513979903363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94f553c50024d89%3A0x2620ac677ba7844d!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531257444!5m2!1sen!2sin	67af23ae61ca467582eb75c5
2	29	48	Think Study Tirupati Office 	401, Triveni plaza, \n4th floor,\nVk Puram\nVaikuntapuram arch  \nTirupati, Andhra Pradesh 517502	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3877.6971722757417!2d79.40492777574627!3d13.615298200437861!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a4d4b3bb496cb37%3A0xbe346a646f6d6fa0!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531417014!5m2!1sen!2sin	67af248261ca467582eb75c7
1	30	49	Think Study Chennai Office	2nd Floor, Yealchur Plaza, \nOpp Dr MGR University, Above KFC,\n126, Poonamalle High Road, \nMaduravoyal,\nChennai, Tamilnadu 600095	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3886.4835139312336!2d80.17513478429012!3d13.068513979903363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94f553c50024d89%3A0x2620ac677ba7844d!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531257444!5m2!1sen!2sin	67af23ae61ca467582eb75c5
2	30	50	Think Study Tirupati Office 	401, Triveni plaza, \n4th floor,\nVk Puram\nVaikuntapuram arch  \nTirupati, Andhra Pradesh 517502	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3877.6971722757417!2d79.40492777574627!3d13.615298200437861!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a4d4b3bb496cb37%3A0xbe346a646f6d6fa0!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531417014!5m2!1sen!2sin	67af248261ca467582eb75c7
1	51	91	Think Study Chennai Office	2nd Floor, Yealchur Plaza, \nOpp Dr MGR University, Above KFC,\n126, Poonamalle High Road, \nMaduravoyal,\nChennai, Tamilnadu 600095	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3886.4835139312336!2d80.17513478429012!3d13.068513979903363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94f553c50024d89%3A0x2620ac677ba7844d!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531257444!5m2!1sen!2sin	67af23ae61ca467582eb75c5
2	51	92	Think Study Tirupati Office 	401, Triveni plaza, \n4th floor,\nVk Puram\nVaikuntapuram arch  \nTirupati, Andhra Pradesh 517502	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3877.6971722757417!2d79.40492777574627!3d13.615298200437861!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a4d4b3bb496cb37%3A0xbe346a646f6d6fa0!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531417014!5m2!1sen!2sin	67af248261ca467582eb75c7
1	52	93	Think Study Chennai Office	2nd Floor, Yealchur Plaza, \nOpp Dr MGR University, Above KFC,\n126, Poonamalle High Road, \nMaduravoyal,\nChennai, Tamilnadu 600095	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3886.4835139312336!2d80.17513478429012!3d13.068513979903363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94f553c50024d89%3A0x2620ac677ba7844d!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531257444!5m2!1sen!2sin	67af23ae61ca467582eb75c5
2	52	94	Think Study Tirupati Office 	401, Triveni plaza, \n4th floor,\nVk Puram\nVaikuntapuram arch  \nTirupati, Andhra Pradesh 517502	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3877.6971722757417!2d79.40492777574627!3d13.615298200437861!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a4d4b3bb496cb37%3A0xbe346a646f6d6fa0!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531417014!5m2!1sen!2sin	67af248261ca467582eb75c7
1	59	107	Think Study Chennai Office	2nd Floor, Yealchur Plaza, \nOpp Dr MGR University, Above KFC,\n126, Poonamalle High Road, \nMaduravoyal,\nChennai, Tamilnadu 600095	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3886.4835139312336!2d80.17513478429012!3d13.068513979903363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94f553c50024d89%3A0x2620ac677ba7844d!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531257444!5m2!1sen!2sin	67af23ae61ca467582eb75c5
2	59	108	Think Study Tirupati Office 	401, Triveni plaza, \n4th floor,\nVk Puram\nVaikuntapuram arch  \nTirupati, Andhra Pradesh 517502	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3877.6971722757417!2d79.40492777574627!3d13.615298200437861!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a4d4b3bb496cb37%3A0xbe346a646f6d6fa0!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531417014!5m2!1sen!2sin	67af248261ca467582eb75c7
1	64	117	Think Study Chennai Office	2nd Floor, Yealchur Plaza, \nOpp Dr MGR University, Above KFC,\n126, Poonamalle High Road, \nMaduravoyal,\nChennai, Tamilnadu 600095	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3886.4835139312336!2d80.17513478429012!3d13.068513979903363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94f553c50024d89%3A0x2620ac677ba7844d!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531257444!5m2!1sen!2sin	67af23ae61ca467582eb75c5
2	64	118	Think Study Tirupati Office 	401, Triveni plaza, \n4th floor,\nVk Puram\nVaikuntapuram arch  \nTirupati, Andhra Pradesh 517502	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3877.6971722757417!2d79.40492777574627!3d13.615298200437861!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a4d4b3bb496cb37%3A0xbe346a646f6d6fa0!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531417014!5m2!1sen!2sin	67af248261ca467582eb75c7
1	38	65	Think Study Chennai Office	2nd Floor, Yealchur Plaza, \nOpp Dr MGR University, Above KFC,\n126, Poonamalle High Road, \nMaduravoyal,\nChennai, Tamilnadu 600095	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3886.4835139312336!2d80.17513478429012!3d13.068513979903363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94f553c50024d89%3A0x2620ac677ba7844d!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531257444!5m2!1sen!2sin	67af23ae61ca467582eb75c5
2	38	66	Think Study Tirupati Office 	401, Triveni plaza, \n4th floor,\nVk Puram\nVaikuntapuram arch  \nTirupati, Andhra Pradesh 517502	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3877.6971722757417!2d79.40492777574627!3d13.615298200437861!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a4d4b3bb496cb37%3A0xbe346a646f6d6fa0!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531417014!5m2!1sen!2sin	67af248261ca467582eb75c7
1	39	67	Think Study Chennai Office	2nd Floor, Yealchur Plaza, \nOpp Dr MGR University, Above KFC,\n126, Poonamalle High Road, \nMaduravoyal,\nChennai, Tamilnadu 600095	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3886.4835139312336!2d80.17513478429012!3d13.068513979903363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94f553c50024d89%3A0x2620ac677ba7844d!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531257444!5m2!1sen!2sin	67af23ae61ca467582eb75c5
2	39	68	Think Study Tirupati Office 	401, Triveni plaza, \n4th floor,\nVk Puram\nVaikuntapuram arch  \nTirupati, Andhra Pradesh 517502	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3877.6971722757417!2d79.40492777574627!3d13.615298200437861!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a4d4b3bb496cb37%3A0xbe346a646f6d6fa0!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531417014!5m2!1sen!2sin	67af248261ca467582eb75c7
1	56	101	Think Study Chennai Office	2nd Floor, Yealchur Plaza, \nOpp Dr MGR University, Above KFC,\n126, Poonamalle High Road, \nMaduravoyal,\nChennai, Tamilnadu 600095	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3886.4835139312336!2d80.17513478429012!3d13.068513979903363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94f553c50024d89%3A0x2620ac677ba7844d!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531257444!5m2!1sen!2sin	67af23ae61ca467582eb75c5
2	56	102	Think Study Tirupati Office 	401, Triveni plaza, \n4th floor,\nVk Puram\nVaikuntapuram arch  \nTirupati, Andhra Pradesh 517502	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3877.6971722757417!2d79.40492777574627!3d13.615298200437861!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a4d4b3bb496cb37%3A0xbe346a646f6d6fa0!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531417014!5m2!1sen!2sin	67af248261ca467582eb75c7
1	57	103	Think Study Chennai Office	2nd Floor, Yealchur Plaza, \nOpp Dr MGR University, Above KFC,\n126, Poonamalle High Road, \nMaduravoyal,\nChennai, Tamilnadu 600095	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3886.4835139312336!2d80.17513478429012!3d13.068513979903363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94f553c50024d89%3A0x2620ac677ba7844d!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531257444!5m2!1sen!2sin	67af23ae61ca467582eb75c5
2	57	104	Think Study Tirupati Office 	401, Triveni plaza, \n4th floor,\nVk Puram\nVaikuntapuram arch  \nTirupati, Andhra Pradesh 517502	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3877.6971722757417!2d79.40492777574627!3d13.615298200437861!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a4d4b3bb496cb37%3A0xbe346a646f6d6fa0!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531417014!5m2!1sen!2sin	67af248261ca467582eb75c7
1	67	123	Think Study Chennai Office	2nd Floor, Yealchur Plaza, \nOpp Dr MGR University, Above KFC,\n126, Poonamalle High Road, \nMaduravoyal,\nChennai, Tamilnadu 600095	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3886.4835139312336!2d80.17513478429012!3d13.068513979903363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94f553c50024d89%3A0x2620ac677ba7844d!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531257444!5m2!1sen!2sin	67af23ae61ca467582eb75c5
2	67	124	Think Study Tirupati Office 	401, Triveni plaza, \n4th floor,\nVk Puram\nVaikuntapuram arch  \nTirupati, Andhra Pradesh 517502	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3877.6971722757417!2d79.40492777574627!3d13.615298200437861!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a4d4b3bb496cb37%3A0xbe346a646f6d6fa0!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531417014!5m2!1sen!2sin	67af248261ca467582eb75c7
1	70	129	Think Study Chennai Office	2nd Floor, Yealchur Plaza, \nOpp Dr MGR University, Above KFC,\n126, Poonamalle High Road, \nMaduravoyal,\nChennai, Tamilnadu 600095	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3886.4835139312336!2d80.17513478429012!3d13.068513979903363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94f553c50024d89%3A0x2620ac677ba7844d!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531257444!5m2!1sen!2sin	67af23ae61ca467582eb75c5
2	70	130	Think Study Tirupati Office 	401, Triveni plaza, \n4th floor,\nVk Puram\nVaikuntapuram arch  \nTirupati, Andhra Pradesh 517502	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3877.6971722757417!2d79.40492777574627!3d13.615298200437861!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a4d4b3bb496cb37%3A0xbe346a646f6d6fa0!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531417014!5m2!1sen!2sin	67af248261ca467582eb75c7
2	71	132	Think Study Tirupati Office 	401, Triveni plaza, \n4th floor,\nVk Puram\nVaikuntapuram arch  \nTirupati, Andhra Pradesh 517502	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3877.6971722757417!2d79.40492777574627!3d13.615298200437861!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a4d4b3bb496cb37%3A0xbe346a646f6d6fa0!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531417014!5m2!1sen!2sin	67af248261ca467582eb75c7
\.


--
-- Data for Name: _pages_v_blocks_media_block; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_media_block (_order, _parent_id, _path, id, media_id, _uuid, block_name) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_study_abroad_block; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_study_abroad_block (_order, _parent_id, _path, id, heading, subheading, description, title_content, title_font, title_size, title_description, _uuid, block_name) FROM stdin;
6	40	version.layout	26	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From |Medical (UG & PG) | and | STEM (UG & PG) |to | | |Management |, <br />\n|Finance, Data Science, AI | and other |Emerging Fields,| including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	41	version.layout	27	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From |Medical (UG & PG) | and | STEM (UG & PG) |to | | |Management |, <br />\n|Finance, Data Science, AI | and other |Emerging Fields,| including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	42	version.layout	28	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From |Medical (UG & PG) | and | STEM (UG & PG) |to |Management |, <br />\n|Finance, Data Science, AI | and other |Emerging Fields,| including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	43	version.layout	29	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From |Medical (UG & PG) | and | STEM (UG & PG) |to |Management |, <br />\n|Finance, Data Science, AI | and other |Emerging Fields,| including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	44	version.layout	30	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From |Medical (UG & PG) | and | STEM (UG & PG) |to |Management |, |Finance, Data Science, AI | and other |Emerging Fields,| including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	45	version.layout	32	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From |Medical (UG & PG)  and | STEM (UG & PG) |to |Management |, |Finance, Data Science, AI | and other |Emerging Fields,| including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	46	version.layout	33	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From Medical (UG & PG) and STEM (UG & PG) to Management,\nFinance, Data Science, AI and other Emerging Fields, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	47	version.layout	34	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG) | and STEM (UG & PG) to Management,\nFinance, Data Science, AI and other Emerging Fields, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	48	version.layout	35	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From Medical (UG & PG) | and STEM (UG & PG) to Management,\nFinance, Data Science, AI and other Emerging Fields, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	49	version.layout	36	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From Medical (UG & PG) and STEM (UG & PG) to Management,\nFinance, Data Science, AI and other Emerging Fields, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	50	version.layout	37	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and STEM (UG & PG) to Management,\nFinance, Data Science, AI and other Emerging Fields, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	57	version.layout	79	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	58	version.layout	80	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	59	version.layout	83	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	60	version.layout	84	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	51	version.layout	46	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	52	version.layout	47	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	53	version.layout	50	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	54	version.layout	51	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	55	version.layout	61	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	56	version.layout	62	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	61	version.layout	86	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	62	version.layout	87	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	63	version.layout	91	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	64	version.layout	92	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	65	version.layout	96	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	66	version.layout	97	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	67	version.layout	99	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	68	version.layout	100	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	69	version.layout	106	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	70	version.layout	107	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	71	version.layout	118	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	72	version.layout	119	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	73	version.layout	121	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	74	version.layout	122	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	75	version.layout	130	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	76	version.layout	131	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	77	version.layout	143	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	78	version.layout	144	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	79	version.layout	148	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	80	version.layout	149	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
5	81	version.layout	150	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	82	version.layout	151	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	83	version.layout	154	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	84	version.layout	155	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	85	version.layout	156	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	86	version.layout	158	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	87	version.layout	159	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	88	version.layout	162	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
6	89	version.layout	163	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	67af112e0ce74758d4658b1f	\N
\.


--
-- Data for Name: _pages_v_blocks_study_abroad_block_cards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_study_abroad_block_cards (_order, _parent_id, id, course_description, description, button_text, button_link, image_id, image_position, _uuid) FROM stdin;
1	79	170	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
2	79	171	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af176f0ce74758d4658b26
3	79	172	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17770ce74758d4658b2c
4	79	173	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af177a0ce74758d4658b32
5	79	174	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17850ce74758d4658b38
1	83	190	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
2	83	191	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af176f0ce74758d4658b26
3	83	192	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17770ce74758d4658b2c
4	83	193	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af177a0ce74758d4658b32
5	83	194	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17850ce74758d4658b38
1	84	195	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
1	26	19	choose the right \ncourse and major, figure out students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
1	27	20	choose the right \ncourse and major, figure out students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
1	28	21	choose the right \ncourse and major, figure out students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
1	29	22	choose the right \ncourse and major, figure out students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
1	30	23	choose the right \ncourse and major, figure out students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
2	84	196	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af176f0ce74758d4658b26
1	32	25	choose the right \ncourse and major, figure out students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
1	33	26	choose the right \ncourse and major, figure out students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
1	34	27	choose the right \ncourse and major, figure out students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
1	35	28	choose the right \ncourse and major, figure out students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
1	36	29	choose the right \ncourse and major, figure out students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
1	37	30	choose the right \ncourse and major, figure out students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
1	46	39	choose the right \ncourse and major, figure out students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
1	47	40	choose the right \ncourse and major, figure out students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
1	50	43	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
1	51	44	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
1	80	175	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
2	80	176	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af176f0ce74758d4658b26
3	80	177	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17770ce74758d4658b2c
4	80	178	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af177a0ce74758d4658b32
5	80	179	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17850ce74758d4658b38
1	131	430	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
3	84	197	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17770ce74758d4658b2c
4	84	198	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af177a0ce74758d4658b32
5	84	199	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17850ce74758d4658b38
1	61	80	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
2	61	81	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af176f0ce74758d4658b26
3	61	82	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17770ce74758d4658b2c
4	61	83	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af177a0ce74758d4658b32
5	61	84	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17850ce74758d4658b38
1	62	85	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
2	62	86	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af176f0ce74758d4658b26
3	62	87	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17770ce74758d4658b2c
4	62	88	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af177a0ce74758d4658b32
5	62	89	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17850ce74758d4658b38
1	86	205	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
2	86	206	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af176f0ce74758d4658b26
3	86	207	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17770ce74758d4658b2c
4	86	208	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af177a0ce74758d4658b32
5	86	209	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17850ce74758d4658b38
1	87	210	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
2	87	211	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af176f0ce74758d4658b26
3	87	212	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17770ce74758d4658b2c
4	87	213	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af177a0ce74758d4658b32
5	87	214	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17850ce74758d4658b38
2	131	431	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af176f0ce74758d4658b26
3	131	432	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17770ce74758d4658b2c
4	131	433	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af177a0ce74758d4658b32
5	131	434	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17850ce74758d4658b38
1	156	555	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af11b60ce74758d4658b21
2	156	556	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af176f0ce74758d4658b26
3	156	557	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af17770ce74758d4658b2c
4	156	558	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af177a0ce74758d4658b32
5	156	559	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af17850ce74758d4658b38
1	91	230	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
2	91	231	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af176f0ce74758d4658b26
3	91	232	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17770ce74758d4658b2c
4	91	233	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af177a0ce74758d4658b32
5	91	234	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17850ce74758d4658b38
1	92	235	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
2	92	236	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af176f0ce74758d4658b26
3	92	237	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17770ce74758d4658b2c
4	92	238	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af177a0ce74758d4658b32
5	92	239	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17850ce74758d4658b38
1	150	525	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af11b60ce74758d4658b21
2	150	526	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af176f0ce74758d4658b26
3	150	527	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af17770ce74758d4658b2c
4	150	528	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af177a0ce74758d4658b32
5	150	529	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af17850ce74758d4658b38
1	96	255	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
2	96	256	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af176f0ce74758d4658b26
3	96	257	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17770ce74758d4658b2c
4	96	258	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af177a0ce74758d4658b32
5	96	259	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17850ce74758d4658b38
1	97	260	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
2	97	261	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af176f0ce74758d4658b26
3	97	262	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17770ce74758d4658b2c
4	97	263	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af177a0ce74758d4658b32
5	97	264	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17850ce74758d4658b38
1	106	305	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
2	106	306	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af176f0ce74758d4658b26
3	106	307	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17770ce74758d4658b2c
4	106	308	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af177a0ce74758d4658b32
5	106	309	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17850ce74758d4658b38
1	99	270	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
2	99	271	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af176f0ce74758d4658b26
3	99	272	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17770ce74758d4658b2c
4	99	273	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af177a0ce74758d4658b32
5	99	274	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17850ce74758d4658b38
1	100	275	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
2	100	276	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af176f0ce74758d4658b26
3	100	277	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17770ce74758d4658b2c
4	100	278	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af177a0ce74758d4658b32
5	100	279	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17850ce74758d4658b38
1	107	310	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
2	107	311	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af176f0ce74758d4658b26
3	107	312	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17770ce74758d4658b2c
4	107	313	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af177a0ce74758d4658b32
5	107	314	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17850ce74758d4658b38
1	162	585	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af11b60ce74758d4658b21
1	143	490	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
2	143	491	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af176f0ce74758d4658b26
3	143	492	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17770ce74758d4658b2c
4	143	493	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af177a0ce74758d4658b32
5	143	494	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17850ce74758d4658b38
1	144	495	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
2	144	496	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af176f0ce74758d4658b26
3	144	497	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17770ce74758d4658b2c
4	144	498	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af177a0ce74758d4658b32
5	144	499	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17850ce74758d4658b38
1	151	530	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af11b60ce74758d4658b21
2	151	531	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af176f0ce74758d4658b26
3	151	532	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af17770ce74758d4658b2c
4	151	533	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af177a0ce74758d4658b32
5	151	534	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af17850ce74758d4658b38
2	162	586	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af176f0ce74758d4658b26
3	162	587	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af17770ce74758d4658b2c
4	162	588	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af177a0ce74758d4658b32
5	162	589	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af17850ce74758d4658b38
1	158	565	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af11b60ce74758d4658b21
2	158	566	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af176f0ce74758d4658b26
1	118	365	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
2	118	366	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af176f0ce74758d4658b26
3	118	367	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17770ce74758d4658b2c
4	118	368	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af177a0ce74758d4658b32
5	118	369	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17850ce74758d4658b38
1	119	370	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
2	119	371	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af176f0ce74758d4658b26
3	119	372	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17770ce74758d4658b2c
4	119	373	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af177a0ce74758d4658b32
5	119	374	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17850ce74758d4658b38
3	158	567	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af17770ce74758d4658b2c
4	158	568	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af177a0ce74758d4658b32
5	158	569	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af17850ce74758d4658b38
1	163	590	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af11b60ce74758d4658b21
2	163	591	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af176f0ce74758d4658b26
1	121	380	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
2	121	381	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af176f0ce74758d4658b26
3	121	382	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17770ce74758d4658b2c
4	121	383	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af177a0ce74758d4658b32
5	121	384	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17850ce74758d4658b38
1	122	385	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
2	122	386	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af176f0ce74758d4658b26
3	122	387	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17770ce74758d4658b2c
4	122	388	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af177a0ce74758d4658b32
5	122	389	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17850ce74758d4658b38
3	163	592	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af17770ce74758d4658b2c
4	163	593	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af177a0ce74758d4658b32
1	159	570	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af11b60ce74758d4658b21
2	159	571	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af176f0ce74758d4658b26
3	159	572	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af17770ce74758d4658b2c
4	159	573	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af177a0ce74758d4658b32
5	159	574	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af17850ce74758d4658b38
5	163	594	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af17850ce74758d4658b38
1	148	515	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af11b60ce74758d4658b21
2	148	516	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af176f0ce74758d4658b26
3	148	517	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af17770ce74758d4658b2c
4	148	518	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af177a0ce74758d4658b32
5	148	519	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17850ce74758d4658b38
1	149	520	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af11b60ce74758d4658b21
2	149	521	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af176f0ce74758d4658b26
3	149	522	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af17770ce74758d4658b2c
4	149	523	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af177a0ce74758d4658b32
5	149	524	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af17850ce74758d4658b38
1	130	425	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af11b60ce74758d4658b21
2	130	426	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af176f0ce74758d4658b26
3	130	427	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17770ce74758d4658b2c
4	130	428	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af177a0ce74758d4658b32
5	130	429	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af17850ce74758d4658b38
1	154	545	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af11b60ce74758d4658b21
2	154	546	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af176f0ce74758d4658b26
3	154	547	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af17770ce74758d4658b2c
4	154	548	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af177a0ce74758d4658b32
5	154	549	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af17850ce74758d4658b38
1	155	550	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af11b60ce74758d4658b21
2	155	551	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af176f0ce74758d4658b26
3	155	552	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af17770ce74758d4658b2c
4	155	553	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right	67af177a0ce74758d4658b32
5	155	554	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left	67af17850ce74758d4658b38
\.


--
-- Data for Name: _pages_v_blocks_testimonials_block; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_testimonials_block (_order, _parent_id, _path, id, heading, description, _uuid, block_name) FROM stdin;
3	77	version.layout	229	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	78	version.layout	230	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	82	version.layout	237	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	83	version.layout	240	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	84	version.layout	241	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	86	version.layout	244	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	89	version.layout	249	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	57	version.layout	165	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	58	version.layout	166	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	59	version.layout	169	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	60	version.layout	170	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	40	version.layout	112	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	41	version.layout	113	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	42	version.layout	114	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	43	version.layout	115	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	44	version.layout	116	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	45	version.layout	118	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	46	version.layout	119	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	47	version.layout	120	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	48	version.layout	121	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	49	version.layout	122	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	50	version.layout	123	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	51	version.layout	132	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	52	version.layout	133	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	53	version.layout	136	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	54	version.layout	137	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	55	version.layout	147	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	56	version.layout	148	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	61	version.layout	172	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	62	version.layout	173	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	79	version.layout	234	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	63	version.layout	177	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	64	version.layout	178	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	80	version.layout	235	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
2	81	version.layout	236	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	65	version.layout	182	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	66	version.layout	183	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	85	version.layout	242	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	67	version.layout	185	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	68	version.layout	186	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	87	version.layout	245	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	88	version.layout	248	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	69	version.layout	192	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	70	version.layout	193	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	71	version.layout	204	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	72	version.layout	205	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	73	version.layout	207	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	74	version.layout	208	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	75	version.layout	216	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
3	76	version.layout	217	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	67af07126e7f6bb2991c0566	\N
\.


--
-- Data for Name: _pages_v_blocks_testimonials_block_testimonials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_testimonials_block_testimonials (_order, _parent_id, id, image_id, review, name, course, university_image_id, _uuid) FROM stdin;
1	217	424	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	217	425	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	114	218	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	114	219	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	115	220	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	115	221	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	116	222	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	116	223	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	118	226	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	118	227	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	119	228	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	119	229	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	120	230	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	120	231	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	112	214	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	112	215	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	113	216	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	113	217	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	121	232	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	121	233	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	122	234	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	122	235	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	123	236	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	123	237	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	165	320	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	165	321	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	132	254	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	132	255	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	133	256	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	133	257	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	166	322	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	166	323	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	136	262	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	136	263	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	137	264	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	137	265	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	147	284	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	147	285	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	148	286	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	148	287	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	169	328	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	169	329	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	170	330	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	170	331	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	172	334	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	172	335	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	173	336	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	173	337	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	177	344	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	177	345	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	178	346	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	178	347	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	182	354	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	182	355	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	183	356	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	183	357	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	185	360	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	185	361	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	186	362	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	186	363	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	192	374	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	192	375	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	193	376	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	193	377	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	204	398	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	204	399	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	205	400	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	205	401	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	207	404	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	207	405	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	208	406	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	208	407	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	216	422	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	216	423	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	229	448	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	229	449	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	230	450	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	230	451	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	234	458	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	234	459	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	235	460	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	235	461	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	236	462	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	236	463	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	237	464	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	237	465	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	240	470	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	240	471	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	241	472	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	241	473	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
1	242	474	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	242	475	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
3	242	476	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67b03d52ba0984afdd8984aa
4	242	477	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67b03d4fba0984afdd8984a4
1	244	482	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	244	483	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
3	244	484	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67b03d52ba0984afdd8984aa
4	244	485	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67b03d4fba0984afdd8984a4
1	245	486	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	245	487	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
3	245	488	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67b03d52ba0984afdd8984aa
4	245	489	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67b03d4fba0984afdd8984a4
1	248	498	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	248	499	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
3	248	500	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67b03d52ba0984afdd8984aa
4	248	501	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67b03d4fba0984afdd8984a4
1	249	502	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25	67af071f6e7f6bb2991c0568
2	249	503	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67af087c6e7f6bb2991c056a
3	249	504	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67b03d52ba0984afdd8984aa
4	249	505	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21	67b03d4fba0984afdd8984a4
\.


--
-- Data for Name: _pages_v_blocks_universities_block; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_universities_block (_order, _parent_id, _path, id, main_heading, sub_heading, description, _uuid, block_name) FROM stdin;
5	57	version.layout	138	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	88	version.layout	221	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	40	version.layout	85	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	41	version.layout	86	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	42	version.layout	87	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	43	version.layout	88	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	44	version.layout	89	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	45	version.layout	91	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	46	version.layout	92	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	47	version.layout	93	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	48	version.layout	94	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	49	version.layout	95	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	50	version.layout	96	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	51	version.layout	105	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	52	version.layout	106	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	53	version.layout	109	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	54	version.layout	110	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	58	version.layout	139	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	59	version.layout	142	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	60	version.layout	143	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	61	version.layout	145	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	62	version.layout	146	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	55	version.layout	120	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	56	version.layout	121	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	63	version.layout	150	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	64	version.layout	151	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	65	version.layout	155	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	66	version.layout	156	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	67	version.layout	158	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	68	version.layout	159	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	69	version.layout	165	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	70	version.layout	166	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	71	version.layout	177	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	72	version.layout	178	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	73	version.layout	180	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	74	version.layout	181	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	75	version.layout	189	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	76	version.layout	190	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	77	version.layout	202	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	78	version.layout	203	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	79	version.layout	207	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	80	version.layout	208	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
4	81	version.layout	209	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	82	version.layout	210	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	89	version.layout	222	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	83	version.layout	213	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	84	version.layout	214	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	85	version.layout	215	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	86	version.layout	217	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
5	87	version.layout	218	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	67af0df96e7f6bb2991c05b4	\N
\.


--
-- Data for Name: _pages_v_blocks_universities_block_stats; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_universities_block_stats (_order, _parent_id, id, value, label, _uuid) FROM stdin;
1	138	535	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
1	85	323	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	85	324	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	85	325	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	85	326	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	86	327	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	86	328	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	86	329	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	86	330	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	87	331	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	87	332	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	87	333	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	87	334	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	88	335	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	88	336	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	88	337	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	88	338	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	89	339	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	89	340	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	89	341	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	89	342	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	91	347	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	91	348	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	91	349	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	91	350	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	92	351	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	92	352	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	92	353	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	92	354	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	93	355	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	93	356	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	93	357	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	93	358	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	94	359	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	94	360	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	94	361	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	94	362	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	95	363	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	95	364	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	95	365	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	95	366	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	96	367	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	96	368	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	96	369	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	96	370	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
2	138	536	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	138	537	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	138	538	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	139	539	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	139	540	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	139	541	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	139	542	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	177	691	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	177	692	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	177	693	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	177	694	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	142	551	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	142	552	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	142	553	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	142	554	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	143	555	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	143	556	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	143	557	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	143	558	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	120	463	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	120	464	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	120	465	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	120	466	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	121	467	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	121	468	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	121	469	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	121	470	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	178	695	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
1	105	403	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	105	404	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	105	405	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	105	406	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	106	407	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	106	408	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	106	409	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	106	410	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
2	178	696	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	178	697	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
1	145	563	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	145	564	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	145	565	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	145	566	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	146	567	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
1	109	419	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	109	420	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	109	421	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	109	422	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	110	423	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	110	424	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	110	425	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	110	426	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
2	146	568	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	146	569	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	146	570	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	150	583	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	150	584	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	150	585	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	150	586	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	151	587	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	151	588	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	151	589	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	151	590	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	155	603	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	155	604	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	155	605	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	155	606	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	156	607	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	156	608	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	156	609	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	156	610	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	158	615	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	158	616	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	158	617	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	158	618	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	159	619	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	159	620	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	159	621	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	159	622	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
4	178	698	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	180	703	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	180	704	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	180	705	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	180	706	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	165	643	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	165	644	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	165	645	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	165	646	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	166	647	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	166	648	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	166	649	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	166	650	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	181	707	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	181	708	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	181	709	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	181	710	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	207	811	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	207	812	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	207	813	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	207	814	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	208	815	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	208	816	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	208	817	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	208	818	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	209	819	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	209	820	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	209	821	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	209	822	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	210	823	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	210	824	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	210	825	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	210	826	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	213	835	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	213	836	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	213	837	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	213	838	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	189	739	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	189	740	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	189	741	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	189	742	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	190	743	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	190	744	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	190	745	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	190	746	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	214	839	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	214	840	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	214	841	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	214	842	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	215	843	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	215	844	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	215	845	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	215	846	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	217	851	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	217	852	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	217	853	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	217	854	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	218	855	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	218	856	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	218	857	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	218	858	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	221	867	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	221	868	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	221	869	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	221	870	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	222	871	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	222	872	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	222	873	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	222	874	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	202	791	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	202	792	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	202	793	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	202	794	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
1	203	795	500+	University Tie-ups	67af0e056e7f6bb2991c05b6
2	203	796	10,000+	Students in our group	67af0e0a6e7f6bb2991c05b8
3	203	797	20+	years experienced Mentors	67af0e106e7f6bb2991c05ba
4	203	798	Current Student	as Mentors	67af0e156e7f6bb2991c05bc
\.


--
-- Data for Name: _pages_v_blocks_universities_block_universities_images; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_universities_block_universities_images (_order, _parent_id, id, image_id, _uuid) FROM stdin;
1	221	8862	7	67af0e1b6e7f6bb2991c05be
2	221	8863	7	67af10426e7f6bb2991c0665
3	221	8864	7	67af0fad6e7f6bb2991c05f5
4	221	8865	7	67af101d6e7f6bb2991c064f
5	221	8866	9	67af0e2f6e7f6bb2991c05c0
6	221	8867	17	67af10216e7f6bb2991c0652
7	221	8868	10	67af0e386e7f6bb2991c05c2
8	221	8869	10	67af10406e7f6bb2991c065f
9	221	8870	11	67af0e426e7f6bb2991c05c4
10	221	8871	11	67af0fce6e7f6bb2991c061f
11	221	8872	11	67af0fcc6e7f6bb2991c0619
12	221	8873	12	67af0e4a6e7f6bb2991c05c6
13	221	8874	13	67af0e526e7f6bb2991c05c8
14	221	8875	14	67af0e596e7f6bb2991c05ca
15	221	8876	15	67af0e606e7f6bb2991c05cc
16	221	8877	10	67af102c6e7f6bb2991c0654
17	221	8878	16	67af0e666e7f6bb2991c05ce
18	221	8879	16	67af103d6e7f6bb2991c0659
19	221	8880	16	67af0fc96e7f6bb2991c0613
20	221	8881	17	67af0e6e6e7f6bb2991c05d0
21	221	8882	17	67af10556e7f6bb2991c067d
22	221	8883	18	67af0e756e7f6bb2991c05d2
23	221	8884	18	67af10516e7f6bb2991c0677
24	221	8885	18	67af101b6e7f6bb2991c0649
25	221	8886	18	67af0fda6e7f6bb2991c0631
26	221	8887	20	67af0e7c6e7f6bb2991c05d4
27	221	8888	20	67af0ee46e7f6bb2991c05d8
28	221	8889	18	67af0ef26e7f6bb2991c05da
29	221	8890	18	67af104d6e7f6bb2991c0671
30	221	8891	18	67af0fdf6e7f6bb2991c0637
31	221	8892	17	67af0efa6e7f6bb2991c05dc
32	221	8893	17	67af0fc66e7f6bb2991c060d
33	221	8894	16	67af0f016e7f6bb2991c05de
34	221	8895	15	67af0f086e7f6bb2991c05e0
35	221	8896	15	67af0fc36e7f6bb2991c0607
36	221	8897	15	67af0fd16e7f6bb2991c0625
37	221	8898	14	67af0f0e6e7f6bb2991c05e2
38	221	8899	13	67af0f156e7f6bb2991c05e4
39	221	8900	12	67af0f1c6e7f6bb2991c05e6
40	221	8901	11	67af0f236e7f6bb2991c05e8
41	221	8902	9	67af0f326e7f6bb2991c05ea
42	221	8903	9	67af0fc16e7f6bb2991c0601
43	221	8904	7	67af0f386e7f6bb2991c05ec
44	221	8905	7	67af0fd46e7f6bb2991c062b
45	221	8906	7	67af10186e7f6bb2991c0643
46	221	8907	16	67af0f426e7f6bb2991c05ee
47	221	8908	16	67af104a6e7f6bb2991c066b
48	221	8909	16	67af10166e7f6bb2991c063d
1	222	8910	7	67af0e1b6e7f6bb2991c05be
2	222	8911	7	67af10426e7f6bb2991c0665
3	222	8912	7	67af0fad6e7f6bb2991c05f5
4	222	8913	7	67af101d6e7f6bb2991c064f
5	222	8914	9	67af0e2f6e7f6bb2991c05c0
6	222	8915	17	67af10216e7f6bb2991c0652
7	222	8916	10	67af0e386e7f6bb2991c05c2
8	222	8917	10	67af10406e7f6bb2991c065f
9	222	8918	11	67af0e426e7f6bb2991c05c4
10	222	8919	11	67af0fce6e7f6bb2991c061f
11	222	8920	11	67af0fcc6e7f6bb2991c0619
12	222	8921	12	67af0e4a6e7f6bb2991c05c6
13	222	8922	13	67af0e526e7f6bb2991c05c8
14	222	8923	14	67af0e596e7f6bb2991c05ca
15	222	8924	15	67af0e606e7f6bb2991c05cc
16	222	8925	10	67af102c6e7f6bb2991c0654
17	222	8926	16	67af0e666e7f6bb2991c05ce
18	222	8927	16	67af103d6e7f6bb2991c0659
19	222	8928	16	67af0fc96e7f6bb2991c0613
20	222	8929	17	67af0e6e6e7f6bb2991c05d0
1	87	2430	7	67af0e1b6e7f6bb2991c05be
2	87	2431	7	67af10426e7f6bb2991c0665
3	87	2432	7	67af0fad6e7f6bb2991c05f5
4	87	2433	7	67af101d6e7f6bb2991c064f
5	87	2434	9	67af0e2f6e7f6bb2991c05c0
6	87	2435	17	67af10216e7f6bb2991c0652
7	87	2436	10	67af0e386e7f6bb2991c05c2
8	87	2437	10	67af10406e7f6bb2991c065f
9	87	2438	11	67af0e426e7f6bb2991c05c4
10	87	2439	11	67af0fce6e7f6bb2991c061f
11	87	2440	11	67af0fcc6e7f6bb2991c0619
12	87	2441	12	67af0e4a6e7f6bb2991c05c6
21	222	8930	17	67af10556e7f6bb2991c067d
22	222	8931	18	67af0e756e7f6bb2991c05d2
23	222	8932	18	67af10516e7f6bb2991c0677
24	222	8933	18	67af101b6e7f6bb2991c0649
25	222	8934	18	67af0fda6e7f6bb2991c0631
26	222	8935	20	67af0e7c6e7f6bb2991c05d4
27	222	8936	20	67af0ee46e7f6bb2991c05d8
28	222	8937	18	67af0ef26e7f6bb2991c05da
29	222	8938	18	67af104d6e7f6bb2991c0671
30	222	8939	18	67af0fdf6e7f6bb2991c0637
31	222	8940	17	67af0efa6e7f6bb2991c05dc
32	222	8941	17	67af0fc66e7f6bb2991c060d
33	222	8942	16	67af0f016e7f6bb2991c05de
34	222	8943	15	67af0f086e7f6bb2991c05e0
35	222	8944	15	67af0fc36e7f6bb2991c0607
36	222	8945	15	67af0fd16e7f6bb2991c0625
37	222	8946	14	67af0f0e6e7f6bb2991c05e2
38	222	8947	13	67af0f156e7f6bb2991c05e4
13	87	2442	13	67af0e526e7f6bb2991c05c8
14	87	2443	14	67af0e596e7f6bb2991c05ca
15	87	2444	15	67af0e606e7f6bb2991c05cc
16	87	2445	10	67af102c6e7f6bb2991c0654
17	87	2446	16	67af0e666e7f6bb2991c05ce
18	87	2447	16	67af103d6e7f6bb2991c0659
19	87	2448	16	67af0fc96e7f6bb2991c0613
20	87	2449	17	67af0e6e6e7f6bb2991c05d0
21	87	2450	17	67af10556e7f6bb2991c067d
22	87	2451	18	67af0e756e7f6bb2991c05d2
23	87	2452	18	67af10516e7f6bb2991c0677
24	87	2453	18	67af101b6e7f6bb2991c0649
25	87	2454	18	67af0fda6e7f6bb2991c0631
26	87	2455	20	67af0e7c6e7f6bb2991c05d4
27	87	2456	20	67af0ee46e7f6bb2991c05d8
28	87	2457	18	67af0ef26e7f6bb2991c05da
29	87	2458	18	67af104d6e7f6bb2991c0671
30	87	2459	18	67af0fdf6e7f6bb2991c0637
31	87	2460	17	67af0efa6e7f6bb2991c05dc
32	87	2461	17	67af0fc66e7f6bb2991c060d
33	87	2462	16	67af0f016e7f6bb2991c05de
34	87	2463	15	67af0f086e7f6bb2991c05e0
35	87	2464	15	67af0fc36e7f6bb2991c0607
36	87	2465	15	67af0fd16e7f6bb2991c0625
37	87	2466	14	67af0f0e6e7f6bb2991c05e2
38	87	2467	13	67af0f156e7f6bb2991c05e4
39	87	2468	12	67af0f1c6e7f6bb2991c05e6
40	87	2469	11	67af0f236e7f6bb2991c05e8
41	87	2470	9	67af0f326e7f6bb2991c05ea
42	87	2471	9	67af0fc16e7f6bb2991c0601
43	87	2472	7	67af0f386e7f6bb2991c05ec
44	87	2473	7	67af0fd46e7f6bb2991c062b
45	87	2474	7	67af10186e7f6bb2991c0643
46	87	2475	16	67af0f426e7f6bb2991c05ee
47	87	2476	16	67af104a6e7f6bb2991c066b
48	87	2477	16	67af10166e7f6bb2991c063d
1	88	2478	7	67af0e1b6e7f6bb2991c05be
2	88	2479	7	67af10426e7f6bb2991c0665
3	88	2480	7	67af0fad6e7f6bb2991c05f5
4	88	2481	7	67af101d6e7f6bb2991c064f
5	88	2482	9	67af0e2f6e7f6bb2991c05c0
6	88	2483	17	67af10216e7f6bb2991c0652
7	88	2484	10	67af0e386e7f6bb2991c05c2
8	88	2485	10	67af10406e7f6bb2991c065f
9	88	2486	11	67af0e426e7f6bb2991c05c4
10	88	2487	11	67af0fce6e7f6bb2991c061f
11	88	2488	11	67af0fcc6e7f6bb2991c0619
12	88	2489	12	67af0e4a6e7f6bb2991c05c6
13	88	2490	13	67af0e526e7f6bb2991c05c8
14	88	2491	14	67af0e596e7f6bb2991c05ca
15	88	2492	15	67af0e606e7f6bb2991c05cc
16	88	2493	10	67af102c6e7f6bb2991c0654
17	88	2494	16	67af0e666e7f6bb2991c05ce
18	88	2495	16	67af103d6e7f6bb2991c0659
19	88	2496	16	67af0fc96e7f6bb2991c0613
20	88	2497	17	67af0e6e6e7f6bb2991c05d0
21	88	2498	17	67af10556e7f6bb2991c067d
39	222	8948	12	67af0f1c6e7f6bb2991c05e6
40	222	8949	11	67af0f236e7f6bb2991c05e8
41	222	8950	9	67af0f326e7f6bb2991c05ea
42	222	8951	9	67af0fc16e7f6bb2991c0601
43	222	8952	7	67af0f386e7f6bb2991c05ec
44	222	8953	7	67af0fd46e7f6bb2991c062b
45	222	8954	7	67af10186e7f6bb2991c0643
46	222	8955	16	67af0f426e7f6bb2991c05ee
47	222	8956	16	67af104a6e7f6bb2991c066b
48	222	8957	16	67af10166e7f6bb2991c063d
22	88	2499	18	67af0e756e7f6bb2991c05d2
23	88	2500	18	67af10516e7f6bb2991c0677
24	88	2501	18	67af101b6e7f6bb2991c0649
25	88	2502	18	67af0fda6e7f6bb2991c0631
26	88	2503	20	67af0e7c6e7f6bb2991c05d4
27	88	2504	20	67af0ee46e7f6bb2991c05d8
28	88	2505	18	67af0ef26e7f6bb2991c05da
29	88	2506	18	67af104d6e7f6bb2991c0671
30	88	2507	18	67af0fdf6e7f6bb2991c0637
31	88	2508	17	67af0efa6e7f6bb2991c05dc
32	88	2509	17	67af0fc66e7f6bb2991c060d
33	88	2510	16	67af0f016e7f6bb2991c05de
34	88	2511	15	67af0f086e7f6bb2991c05e0
35	88	2512	15	67af0fc36e7f6bb2991c0607
36	88	2513	15	67af0fd16e7f6bb2991c0625
37	88	2514	14	67af0f0e6e7f6bb2991c05e2
38	88	2515	13	67af0f156e7f6bb2991c05e4
39	88	2516	12	67af0f1c6e7f6bb2991c05e6
40	88	2517	11	67af0f236e7f6bb2991c05e8
41	88	2518	9	67af0f326e7f6bb2991c05ea
42	88	2519	9	67af0fc16e7f6bb2991c0601
43	88	2520	7	67af0f386e7f6bb2991c05ec
44	88	2521	7	67af0fd46e7f6bb2991c062b
45	88	2522	7	67af10186e7f6bb2991c0643
46	88	2523	16	67af0f426e7f6bb2991c05ee
47	88	2524	16	67af104a6e7f6bb2991c066b
48	88	2525	16	67af10166e7f6bb2991c063d
1	91	2622	7	67af0e1b6e7f6bb2991c05be
2	91	2623	7	67af10426e7f6bb2991c0665
3	91	2624	7	67af0fad6e7f6bb2991c05f5
4	91	2625	7	67af101d6e7f6bb2991c064f
5	91	2626	9	67af0e2f6e7f6bb2991c05c0
6	91	2627	17	67af10216e7f6bb2991c0652
7	91	2628	10	67af0e386e7f6bb2991c05c2
8	91	2629	10	67af10406e7f6bb2991c065f
9	91	2630	11	67af0e426e7f6bb2991c05c4
10	91	2631	11	67af0fce6e7f6bb2991c061f
11	91	2632	11	67af0fcc6e7f6bb2991c0619
12	91	2633	12	67af0e4a6e7f6bb2991c05c6
13	91	2634	13	67af0e526e7f6bb2991c05c8
14	91	2635	14	67af0e596e7f6bb2991c05ca
15	91	2636	15	67af0e606e7f6bb2991c05cc
16	91	2637	10	67af102c6e7f6bb2991c0654
17	91	2638	16	67af0e666e7f6bb2991c05ce
18	91	2639	16	67af103d6e7f6bb2991c0659
19	91	2640	16	67af0fc96e7f6bb2991c0613
20	91	2641	17	67af0e6e6e7f6bb2991c05d0
21	91	2642	17	67af10556e7f6bb2991c067d
22	91	2643	18	67af0e756e7f6bb2991c05d2
23	91	2644	18	67af10516e7f6bb2991c0677
24	91	2645	18	67af101b6e7f6bb2991c0649
25	91	2646	18	67af0fda6e7f6bb2991c0631
26	91	2647	20	67af0e7c6e7f6bb2991c05d4
27	91	2648	20	67af0ee46e7f6bb2991c05d8
28	91	2649	18	67af0ef26e7f6bb2991c05da
29	91	2650	18	67af104d6e7f6bb2991c0671
30	91	2651	18	67af0fdf6e7f6bb2991c0637
31	91	2652	17	67af0efa6e7f6bb2991c05dc
32	91	2653	17	67af0fc66e7f6bb2991c060d
33	91	2654	16	67af0f016e7f6bb2991c05de
34	91	2655	15	67af0f086e7f6bb2991c05e0
35	91	2656	15	67af0fc36e7f6bb2991c0607
36	91	2657	15	67af0fd16e7f6bb2991c0625
37	91	2658	14	67af0f0e6e7f6bb2991c05e2
38	91	2659	13	67af0f156e7f6bb2991c05e4
39	91	2660	12	67af0f1c6e7f6bb2991c05e6
40	91	2661	11	67af0f236e7f6bb2991c05e8
41	91	2662	9	67af0f326e7f6bb2991c05ea
42	91	2663	9	67af0fc16e7f6bb2991c0601
43	91	2664	7	67af0f386e7f6bb2991c05ec
44	91	2665	7	67af0fd46e7f6bb2991c062b
45	91	2666	7	67af10186e7f6bb2991c0643
46	91	2667	16	67af0f426e7f6bb2991c05ee
47	91	2668	16	67af104a6e7f6bb2991c066b
48	91	2669	16	67af10166e7f6bb2991c063d
1	92	2670	7	67af0e1b6e7f6bb2991c05be
2	92	2671	7	67af10426e7f6bb2991c0665
3	92	2672	7	67af0fad6e7f6bb2991c05f5
4	92	2673	7	67af101d6e7f6bb2991c064f
5	92	2674	9	67af0e2f6e7f6bb2991c05c0
6	92	2675	17	67af10216e7f6bb2991c0652
7	92	2676	10	67af0e386e7f6bb2991c05c2
8	92	2677	10	67af10406e7f6bb2991c065f
9	92	2678	11	67af0e426e7f6bb2991c05c4
10	92	2679	11	67af0fce6e7f6bb2991c061f
11	92	2680	11	67af0fcc6e7f6bb2991c0619
12	92	2681	12	67af0e4a6e7f6bb2991c05c6
13	92	2682	13	67af0e526e7f6bb2991c05c8
14	92	2683	14	67af0e596e7f6bb2991c05ca
15	92	2684	15	67af0e606e7f6bb2991c05cc
16	92	2685	10	67af102c6e7f6bb2991c0654
17	92	2686	16	67af0e666e7f6bb2991c05ce
18	92	2687	16	67af103d6e7f6bb2991c0659
19	92	2688	16	67af0fc96e7f6bb2991c0613
20	92	2689	17	67af0e6e6e7f6bb2991c05d0
21	92	2690	17	67af10556e7f6bb2991c067d
22	92	2691	18	67af0e756e7f6bb2991c05d2
23	92	2692	18	67af10516e7f6bb2991c0677
24	92	2693	18	67af101b6e7f6bb2991c0649
25	92	2694	18	67af0fda6e7f6bb2991c0631
26	92	2695	20	67af0e7c6e7f6bb2991c05d4
27	92	2696	20	67af0ee46e7f6bb2991c05d8
28	92	2697	18	67af0ef26e7f6bb2991c05da
29	92	2698	18	67af104d6e7f6bb2991c0671
30	92	2699	18	67af0fdf6e7f6bb2991c0637
31	92	2700	17	67af0efa6e7f6bb2991c05dc
32	92	2701	17	67af0fc66e7f6bb2991c060d
33	92	2702	16	67af0f016e7f6bb2991c05de
34	92	2703	15	67af0f086e7f6bb2991c05e0
35	92	2704	15	67af0fc36e7f6bb2991c0607
36	92	2705	15	67af0fd16e7f6bb2991c0625
37	92	2706	14	67af0f0e6e7f6bb2991c05e2
38	92	2707	13	67af0f156e7f6bb2991c05e4
39	92	2708	12	67af0f1c6e7f6bb2991c05e6
40	92	2709	11	67af0f236e7f6bb2991c05e8
41	92	2710	9	67af0f326e7f6bb2991c05ea
42	92	2711	9	67af0fc16e7f6bb2991c0601
43	92	2712	7	67af0f386e7f6bb2991c05ec
1	89	2526	7	67af0e1b6e7f6bb2991c05be
2	89	2527	7	67af10426e7f6bb2991c0665
3	89	2528	7	67af0fad6e7f6bb2991c05f5
4	89	2529	7	67af101d6e7f6bb2991c064f
5	89	2530	9	67af0e2f6e7f6bb2991c05c0
6	89	2531	17	67af10216e7f6bb2991c0652
7	89	2532	10	67af0e386e7f6bb2991c05c2
8	89	2533	10	67af10406e7f6bb2991c065f
9	89	2534	11	67af0e426e7f6bb2991c05c4
10	89	2535	11	67af0fce6e7f6bb2991c061f
11	89	2536	11	67af0fcc6e7f6bb2991c0619
12	89	2537	12	67af0e4a6e7f6bb2991c05c6
13	89	2538	13	67af0e526e7f6bb2991c05c8
14	89	2539	14	67af0e596e7f6bb2991c05ca
15	89	2540	15	67af0e606e7f6bb2991c05cc
16	89	2541	10	67af102c6e7f6bb2991c0654
17	89	2542	16	67af0e666e7f6bb2991c05ce
18	89	2543	16	67af103d6e7f6bb2991c0659
19	89	2544	16	67af0fc96e7f6bb2991c0613
20	89	2545	17	67af0e6e6e7f6bb2991c05d0
21	89	2546	17	67af10556e7f6bb2991c067d
22	89	2547	18	67af0e756e7f6bb2991c05d2
23	89	2548	18	67af10516e7f6bb2991c0677
24	89	2549	18	67af101b6e7f6bb2991c0649
25	89	2550	18	67af0fda6e7f6bb2991c0631
26	89	2551	20	67af0e7c6e7f6bb2991c05d4
27	89	2552	20	67af0ee46e7f6bb2991c05d8
28	89	2553	18	67af0ef26e7f6bb2991c05da
29	89	2554	18	67af104d6e7f6bb2991c0671
30	89	2555	18	67af0fdf6e7f6bb2991c0637
31	89	2556	17	67af0efa6e7f6bb2991c05dc
32	89	2557	17	67af0fc66e7f6bb2991c060d
33	89	2558	16	67af0f016e7f6bb2991c05de
34	89	2559	15	67af0f086e7f6bb2991c05e0
35	89	2560	15	67af0fc36e7f6bb2991c0607
36	89	2561	15	67af0fd16e7f6bb2991c0625
37	89	2562	14	67af0f0e6e7f6bb2991c05e2
38	89	2563	13	67af0f156e7f6bb2991c05e4
39	89	2564	12	67af0f1c6e7f6bb2991c05e6
40	89	2565	11	67af0f236e7f6bb2991c05e8
41	89	2566	9	67af0f326e7f6bb2991c05ea
42	89	2567	9	67af0fc16e7f6bb2991c0601
43	89	2568	7	67af0f386e7f6bb2991c05ec
44	89	2569	7	67af0fd46e7f6bb2991c062b
45	89	2570	7	67af10186e7f6bb2991c0643
46	89	2571	16	67af0f426e7f6bb2991c05ee
47	89	2572	16	67af104a6e7f6bb2991c066b
48	89	2573	16	67af10166e7f6bb2991c063d
1	85	2334	7	67af0e1b6e7f6bb2991c05be
2	85	2335	7	67af10426e7f6bb2991c0665
3	85	2336	7	67af0fad6e7f6bb2991c05f5
4	85	2337	7	67af101d6e7f6bb2991c064f
5	85	2338	9	67af0e2f6e7f6bb2991c05c0
6	85	2339	17	67af10216e7f6bb2991c0652
7	85	2340	10	67af0e386e7f6bb2991c05c2
8	85	2341	10	67af10406e7f6bb2991c065f
9	85	2342	11	67af0e426e7f6bb2991c05c4
10	85	2343	11	67af0fce6e7f6bb2991c061f
11	85	2344	11	67af0fcc6e7f6bb2991c0619
12	85	2345	12	67af0e4a6e7f6bb2991c05c6
13	85	2346	13	67af0e526e7f6bb2991c05c8
14	85	2347	14	67af0e596e7f6bb2991c05ca
15	85	2348	15	67af0e606e7f6bb2991c05cc
16	85	2349	10	67af102c6e7f6bb2991c0654
17	85	2350	16	67af0e666e7f6bb2991c05ce
18	85	2351	16	67af103d6e7f6bb2991c0659
19	85	2352	16	67af0fc96e7f6bb2991c0613
20	85	2353	17	67af0e6e6e7f6bb2991c05d0
21	85	2354	17	67af10556e7f6bb2991c067d
22	85	2355	18	67af0e756e7f6bb2991c05d2
23	85	2356	18	67af10516e7f6bb2991c0677
24	85	2357	18	67af101b6e7f6bb2991c0649
25	85	2358	18	67af0fda6e7f6bb2991c0631
26	85	2359	20	67af0e7c6e7f6bb2991c05d4
27	85	2360	20	67af0ee46e7f6bb2991c05d8
28	85	2361	18	67af0ef26e7f6bb2991c05da
29	85	2362	18	67af104d6e7f6bb2991c0671
30	85	2363	18	67af0fdf6e7f6bb2991c0637
31	85	2364	17	67af0efa6e7f6bb2991c05dc
32	85	2365	17	67af0fc66e7f6bb2991c060d
33	85	2366	16	67af0f016e7f6bb2991c05de
34	85	2367	15	67af0f086e7f6bb2991c05e0
35	85	2368	15	67af0fc36e7f6bb2991c0607
36	85	2369	15	67af0fd16e7f6bb2991c0625
37	85	2370	14	67af0f0e6e7f6bb2991c05e2
38	85	2371	13	67af0f156e7f6bb2991c05e4
39	85	2372	12	67af0f1c6e7f6bb2991c05e6
40	85	2373	11	67af0f236e7f6bb2991c05e8
41	85	2374	9	67af0f326e7f6bb2991c05ea
42	85	2375	9	67af0fc16e7f6bb2991c0601
43	85	2376	7	67af0f386e7f6bb2991c05ec
44	85	2377	7	67af0fd46e7f6bb2991c062b
45	85	2378	7	67af10186e7f6bb2991c0643
46	85	2379	16	67af0f426e7f6bb2991c05ee
47	85	2380	16	67af104a6e7f6bb2991c066b
48	85	2381	16	67af10166e7f6bb2991c063d
1	86	2382	7	67af0e1b6e7f6bb2991c05be
2	86	2383	7	67af10426e7f6bb2991c0665
3	86	2384	7	67af0fad6e7f6bb2991c05f5
4	86	2385	7	67af101d6e7f6bb2991c064f
5	86	2386	9	67af0e2f6e7f6bb2991c05c0
6	86	2387	17	67af10216e7f6bb2991c0652
7	86	2388	10	67af0e386e7f6bb2991c05c2
8	86	2389	10	67af10406e7f6bb2991c065f
9	86	2390	11	67af0e426e7f6bb2991c05c4
10	86	2391	11	67af0fce6e7f6bb2991c061f
11	86	2392	11	67af0fcc6e7f6bb2991c0619
12	86	2393	12	67af0e4a6e7f6bb2991c05c6
13	86	2394	13	67af0e526e7f6bb2991c05c8
14	86	2395	14	67af0e596e7f6bb2991c05ca
15	86	2396	15	67af0e606e7f6bb2991c05cc
16	86	2397	10	67af102c6e7f6bb2991c0654
17	86	2398	16	67af0e666e7f6bb2991c05ce
18	86	2399	16	67af103d6e7f6bb2991c0659
19	86	2400	16	67af0fc96e7f6bb2991c0613
20	86	2401	17	67af0e6e6e7f6bb2991c05d0
21	86	2402	17	67af10556e7f6bb2991c067d
22	86	2403	18	67af0e756e7f6bb2991c05d2
23	86	2404	18	67af10516e7f6bb2991c0677
24	86	2405	18	67af101b6e7f6bb2991c0649
1	138	4878	7	67af0e1b6e7f6bb2991c05be
2	138	4879	7	67af10426e7f6bb2991c0665
3	138	4880	7	67af0fad6e7f6bb2991c05f5
4	138	4881	7	67af101d6e7f6bb2991c064f
5	138	4882	9	67af0e2f6e7f6bb2991c05c0
6	138	4883	17	67af10216e7f6bb2991c0652
7	138	4884	10	67af0e386e7f6bb2991c05c2
8	138	4885	10	67af10406e7f6bb2991c065f
9	138	4886	11	67af0e426e7f6bb2991c05c4
10	138	4887	11	67af0fce6e7f6bb2991c061f
11	138	4888	11	67af0fcc6e7f6bb2991c0619
12	138	4889	12	67af0e4a6e7f6bb2991c05c6
13	138	4890	13	67af0e526e7f6bb2991c05c8
14	138	4891	14	67af0e596e7f6bb2991c05ca
15	138	4892	15	67af0e606e7f6bb2991c05cc
16	138	4893	10	67af102c6e7f6bb2991c0654
17	138	4894	16	67af0e666e7f6bb2991c05ce
18	138	4895	16	67af103d6e7f6bb2991c0659
19	138	4896	16	67af0fc96e7f6bb2991c0613
20	138	4897	17	67af0e6e6e7f6bb2991c05d0
21	138	4898	17	67af10556e7f6bb2991c067d
22	138	4899	18	67af0e756e7f6bb2991c05d2
23	138	4900	18	67af10516e7f6bb2991c0677
24	138	4901	18	67af101b6e7f6bb2991c0649
25	138	4902	18	67af0fda6e7f6bb2991c0631
26	138	4903	20	67af0e7c6e7f6bb2991c05d4
27	138	4904	20	67af0ee46e7f6bb2991c05d8
28	138	4905	18	67af0ef26e7f6bb2991c05da
29	138	4906	18	67af104d6e7f6bb2991c0671
30	138	4907	18	67af0fdf6e7f6bb2991c0637
31	138	4908	17	67af0efa6e7f6bb2991c05dc
32	138	4909	17	67af0fc66e7f6bb2991c060d
33	138	4910	16	67af0f016e7f6bb2991c05de
34	138	4911	15	67af0f086e7f6bb2991c05e0
35	138	4912	15	67af0fc36e7f6bb2991c0607
36	138	4913	15	67af0fd16e7f6bb2991c0625
37	138	4914	14	67af0f0e6e7f6bb2991c05e2
38	138	4915	13	67af0f156e7f6bb2991c05e4
39	138	4916	12	67af0f1c6e7f6bb2991c05e6
40	138	4917	11	67af0f236e7f6bb2991c05e8
41	138	4918	9	67af0f326e7f6bb2991c05ea
42	138	4919	9	67af0fc16e7f6bb2991c0601
43	138	4920	7	67af0f386e7f6bb2991c05ec
44	138	4921	7	67af0fd46e7f6bb2991c062b
45	138	4922	7	67af10186e7f6bb2991c0643
46	138	4923	16	67af0f426e7f6bb2991c05ee
47	138	4924	16	67af104a6e7f6bb2991c066b
48	138	4925	16	67af10166e7f6bb2991c063d
25	86	2406	18	67af0fda6e7f6bb2991c0631
26	86	2407	20	67af0e7c6e7f6bb2991c05d4
27	86	2408	20	67af0ee46e7f6bb2991c05d8
28	86	2409	18	67af0ef26e7f6bb2991c05da
29	86	2410	18	67af104d6e7f6bb2991c0671
30	86	2411	18	67af0fdf6e7f6bb2991c0637
31	86	2412	17	67af0efa6e7f6bb2991c05dc
32	86	2413	17	67af0fc66e7f6bb2991c060d
33	86	2414	16	67af0f016e7f6bb2991c05de
34	86	2415	15	67af0f086e7f6bb2991c05e0
35	86	2416	15	67af0fc36e7f6bb2991c0607
36	86	2417	15	67af0fd16e7f6bb2991c0625
37	86	2418	14	67af0f0e6e7f6bb2991c05e2
38	86	2419	13	67af0f156e7f6bb2991c05e4
39	86	2420	12	67af0f1c6e7f6bb2991c05e6
40	86	2421	11	67af0f236e7f6bb2991c05e8
41	86	2422	9	67af0f326e7f6bb2991c05ea
42	86	2423	9	67af0fc16e7f6bb2991c0601
43	86	2424	7	67af0f386e7f6bb2991c05ec
44	86	2425	7	67af0fd46e7f6bb2991c062b
45	86	2426	7	67af10186e7f6bb2991c0643
46	86	2427	16	67af0f426e7f6bb2991c05ee
47	86	2428	16	67af104a6e7f6bb2991c066b
48	86	2429	16	67af10166e7f6bb2991c063d
44	92	2713	7	67af0fd46e7f6bb2991c062b
45	92	2714	7	67af10186e7f6bb2991c0643
46	92	2715	16	67af0f426e7f6bb2991c05ee
47	92	2716	16	67af104a6e7f6bb2991c066b
48	92	2717	16	67af10166e7f6bb2991c063d
1	93	2718	7	67af0e1b6e7f6bb2991c05be
2	93	2719	7	67af10426e7f6bb2991c0665
3	93	2720	7	67af0fad6e7f6bb2991c05f5
4	93	2721	7	67af101d6e7f6bb2991c064f
5	93	2722	9	67af0e2f6e7f6bb2991c05c0
6	93	2723	17	67af10216e7f6bb2991c0652
7	93	2724	10	67af0e386e7f6bb2991c05c2
8	93	2725	10	67af10406e7f6bb2991c065f
9	93	2726	11	67af0e426e7f6bb2991c05c4
10	93	2727	11	67af0fce6e7f6bb2991c061f
11	93	2728	11	67af0fcc6e7f6bb2991c0619
12	93	2729	12	67af0e4a6e7f6bb2991c05c6
13	93	2730	13	67af0e526e7f6bb2991c05c8
14	93	2731	14	67af0e596e7f6bb2991c05ca
15	93	2732	15	67af0e606e7f6bb2991c05cc
16	93	2733	10	67af102c6e7f6bb2991c0654
17	93	2734	16	67af0e666e7f6bb2991c05ce
18	93	2735	16	67af103d6e7f6bb2991c0659
19	93	2736	16	67af0fc96e7f6bb2991c0613
20	93	2737	17	67af0e6e6e7f6bb2991c05d0
21	93	2738	17	67af10556e7f6bb2991c067d
22	93	2739	18	67af0e756e7f6bb2991c05d2
23	93	2740	18	67af10516e7f6bb2991c0677
24	93	2741	18	67af101b6e7f6bb2991c0649
25	93	2742	18	67af0fda6e7f6bb2991c0631
26	93	2743	20	67af0e7c6e7f6bb2991c05d4
27	93	2744	20	67af0ee46e7f6bb2991c05d8
28	93	2745	18	67af0ef26e7f6bb2991c05da
29	93	2746	18	67af104d6e7f6bb2991c0671
30	93	2747	18	67af0fdf6e7f6bb2991c0637
31	93	2748	17	67af0efa6e7f6bb2991c05dc
32	93	2749	17	67af0fc66e7f6bb2991c060d
33	93	2750	16	67af0f016e7f6bb2991c05de
34	93	2751	15	67af0f086e7f6bb2991c05e0
35	93	2752	15	67af0fc36e7f6bb2991c0607
36	93	2753	15	67af0fd16e7f6bb2991c0625
37	93	2754	14	67af0f0e6e7f6bb2991c05e2
38	93	2755	13	67af0f156e7f6bb2991c05e4
39	93	2756	12	67af0f1c6e7f6bb2991c05e6
40	93	2757	11	67af0f236e7f6bb2991c05e8
41	93	2758	9	67af0f326e7f6bb2991c05ea
42	93	2759	9	67af0fc16e7f6bb2991c0601
43	93	2760	7	67af0f386e7f6bb2991c05ec
44	93	2761	7	67af0fd46e7f6bb2991c062b
45	93	2762	7	67af10186e7f6bb2991c0643
46	93	2763	16	67af0f426e7f6bb2991c05ee
47	93	2764	16	67af104a6e7f6bb2991c066b
48	93	2765	16	67af10166e7f6bb2991c063d
1	94	2766	7	67af0e1b6e7f6bb2991c05be
2	94	2767	7	67af10426e7f6bb2991c0665
3	94	2768	7	67af0fad6e7f6bb2991c05f5
4	94	2769	7	67af101d6e7f6bb2991c064f
5	94	2770	9	67af0e2f6e7f6bb2991c05c0
6	94	2771	17	67af10216e7f6bb2991c0652
7	94	2772	10	67af0e386e7f6bb2991c05c2
8	94	2773	10	67af10406e7f6bb2991c065f
9	94	2774	11	67af0e426e7f6bb2991c05c4
10	94	2775	11	67af0fce6e7f6bb2991c061f
11	94	2776	11	67af0fcc6e7f6bb2991c0619
12	94	2777	12	67af0e4a6e7f6bb2991c05c6
13	94	2778	13	67af0e526e7f6bb2991c05c8
14	94	2779	14	67af0e596e7f6bb2991c05ca
15	94	2780	15	67af0e606e7f6bb2991c05cc
16	94	2781	10	67af102c6e7f6bb2991c0654
17	94	2782	16	67af0e666e7f6bb2991c05ce
18	94	2783	16	67af103d6e7f6bb2991c0659
19	94	2784	16	67af0fc96e7f6bb2991c0613
20	94	2785	17	67af0e6e6e7f6bb2991c05d0
21	94	2786	17	67af10556e7f6bb2991c067d
22	94	2787	18	67af0e756e7f6bb2991c05d2
23	94	2788	18	67af10516e7f6bb2991c0677
24	94	2789	18	67af101b6e7f6bb2991c0649
25	94	2790	18	67af0fda6e7f6bb2991c0631
26	94	2791	20	67af0e7c6e7f6bb2991c05d4
27	94	2792	20	67af0ee46e7f6bb2991c05d8
28	94	2793	18	67af0ef26e7f6bb2991c05da
29	94	2794	18	67af104d6e7f6bb2991c0671
30	94	2795	18	67af0fdf6e7f6bb2991c0637
31	94	2796	17	67af0efa6e7f6bb2991c05dc
32	94	2797	17	67af0fc66e7f6bb2991c060d
33	94	2798	16	67af0f016e7f6bb2991c05de
34	94	2799	15	67af0f086e7f6bb2991c05e0
35	94	2800	15	67af0fc36e7f6bb2991c0607
36	94	2801	15	67af0fd16e7f6bb2991c0625
37	94	2802	14	67af0f0e6e7f6bb2991c05e2
38	94	2803	13	67af0f156e7f6bb2991c05e4
39	94	2804	12	67af0f1c6e7f6bb2991c05e6
40	94	2805	11	67af0f236e7f6bb2991c05e8
41	94	2806	9	67af0f326e7f6bb2991c05ea
42	94	2807	9	67af0fc16e7f6bb2991c0601
43	94	2808	7	67af0f386e7f6bb2991c05ec
44	94	2809	7	67af0fd46e7f6bb2991c062b
45	94	2810	7	67af10186e7f6bb2991c0643
46	94	2811	16	67af0f426e7f6bb2991c05ee
47	94	2812	16	67af104a6e7f6bb2991c066b
48	94	2813	16	67af10166e7f6bb2991c063d
1	95	2814	7	67af0e1b6e7f6bb2991c05be
2	95	2815	7	67af10426e7f6bb2991c0665
3	95	2816	7	67af0fad6e7f6bb2991c05f5
4	95	2817	7	67af101d6e7f6bb2991c064f
5	95	2818	9	67af0e2f6e7f6bb2991c05c0
6	95	2819	17	67af10216e7f6bb2991c0652
7	95	2820	10	67af0e386e7f6bb2991c05c2
8	95	2821	10	67af10406e7f6bb2991c065f
9	95	2822	11	67af0e426e7f6bb2991c05c4
10	95	2823	11	67af0fce6e7f6bb2991c061f
11	95	2824	11	67af0fcc6e7f6bb2991c0619
12	95	2825	12	67af0e4a6e7f6bb2991c05c6
13	95	2826	13	67af0e526e7f6bb2991c05c8
14	95	2827	14	67af0e596e7f6bb2991c05ca
15	95	2828	15	67af0e606e7f6bb2991c05cc
16	95	2829	10	67af102c6e7f6bb2991c0654
17	95	2830	16	67af0e666e7f6bb2991c05ce
18	95	2831	16	67af103d6e7f6bb2991c0659
19	95	2832	16	67af0fc96e7f6bb2991c0613
20	95	2833	17	67af0e6e6e7f6bb2991c05d0
21	95	2834	17	67af10556e7f6bb2991c067d
22	95	2835	18	67af0e756e7f6bb2991c05d2
23	95	2836	18	67af10516e7f6bb2991c0677
24	95	2837	18	67af101b6e7f6bb2991c0649
25	95	2838	18	67af0fda6e7f6bb2991c0631
26	95	2839	20	67af0e7c6e7f6bb2991c05d4
27	95	2840	20	67af0ee46e7f6bb2991c05d8
28	95	2841	18	67af0ef26e7f6bb2991c05da
29	95	2842	18	67af104d6e7f6bb2991c0671
30	95	2843	18	67af0fdf6e7f6bb2991c0637
31	95	2844	17	67af0efa6e7f6bb2991c05dc
32	95	2845	17	67af0fc66e7f6bb2991c060d
33	95	2846	16	67af0f016e7f6bb2991c05de
34	95	2847	15	67af0f086e7f6bb2991c05e0
35	95	2848	15	67af0fc36e7f6bb2991c0607
36	95	2849	15	67af0fd16e7f6bb2991c0625
37	95	2850	14	67af0f0e6e7f6bb2991c05e2
38	95	2851	13	67af0f156e7f6bb2991c05e4
39	95	2852	12	67af0f1c6e7f6bb2991c05e6
40	95	2853	11	67af0f236e7f6bb2991c05e8
41	95	2854	9	67af0f326e7f6bb2991c05ea
42	95	2855	9	67af0fc16e7f6bb2991c0601
43	95	2856	7	67af0f386e7f6bb2991c05ec
44	95	2857	7	67af0fd46e7f6bb2991c062b
45	95	2858	7	67af10186e7f6bb2991c0643
46	95	2859	16	67af0f426e7f6bb2991c05ee
47	95	2860	16	67af104a6e7f6bb2991c066b
48	95	2861	16	67af10166e7f6bb2991c063d
1	96	2862	7	67af0e1b6e7f6bb2991c05be
2	96	2863	7	67af10426e7f6bb2991c0665
3	96	2864	7	67af0fad6e7f6bb2991c05f5
4	96	2865	7	67af101d6e7f6bb2991c064f
5	96	2866	9	67af0e2f6e7f6bb2991c05c0
6	96	2867	17	67af10216e7f6bb2991c0652
7	96	2868	10	67af0e386e7f6bb2991c05c2
8	96	2869	10	67af10406e7f6bb2991c065f
9	96	2870	11	67af0e426e7f6bb2991c05c4
10	96	2871	11	67af0fce6e7f6bb2991c061f
11	96	2872	11	67af0fcc6e7f6bb2991c0619
12	96	2873	12	67af0e4a6e7f6bb2991c05c6
13	96	2874	13	67af0e526e7f6bb2991c05c8
14	96	2875	14	67af0e596e7f6bb2991c05ca
15	96	2876	15	67af0e606e7f6bb2991c05cc
16	96	2877	10	67af102c6e7f6bb2991c0654
17	96	2878	16	67af0e666e7f6bb2991c05ce
18	96	2879	16	67af103d6e7f6bb2991c0659
19	96	2880	16	67af0fc96e7f6bb2991c0613
20	96	2881	17	67af0e6e6e7f6bb2991c05d0
21	96	2882	17	67af10556e7f6bb2991c067d
22	96	2883	18	67af0e756e7f6bb2991c05d2
23	96	2884	18	67af10516e7f6bb2991c0677
24	96	2885	18	67af101b6e7f6bb2991c0649
25	96	2886	18	67af0fda6e7f6bb2991c0631
26	96	2887	20	67af0e7c6e7f6bb2991c05d4
27	96	2888	20	67af0ee46e7f6bb2991c05d8
28	96	2889	18	67af0ef26e7f6bb2991c05da
29	96	2890	18	67af104d6e7f6bb2991c0671
30	96	2891	18	67af0fdf6e7f6bb2991c0637
31	96	2892	17	67af0efa6e7f6bb2991c05dc
32	96	2893	17	67af0fc66e7f6bb2991c060d
33	96	2894	16	67af0f016e7f6bb2991c05de
34	96	2895	15	67af0f086e7f6bb2991c05e0
35	96	2896	15	67af0fc36e7f6bb2991c0607
36	96	2897	15	67af0fd16e7f6bb2991c0625
37	96	2898	14	67af0f0e6e7f6bb2991c05e2
38	96	2899	13	67af0f156e7f6bb2991c05e4
39	96	2900	12	67af0f1c6e7f6bb2991c05e6
40	96	2901	11	67af0f236e7f6bb2991c05e8
41	96	2902	9	67af0f326e7f6bb2991c05ea
42	96	2903	9	67af0fc16e7f6bb2991c0601
43	96	2904	7	67af0f386e7f6bb2991c05ec
44	96	2905	7	67af0fd46e7f6bb2991c062b
45	96	2906	7	67af10186e7f6bb2991c0643
46	96	2907	16	67af0f426e7f6bb2991c05ee
47	96	2908	16	67af104a6e7f6bb2991c066b
48	96	2909	16	67af10166e7f6bb2991c063d
1	139	4926	7	67af0e1b6e7f6bb2991c05be
2	139	4927	7	67af10426e7f6bb2991c0665
3	139	4928	7	67af0fad6e7f6bb2991c05f5
4	139	4929	7	67af101d6e7f6bb2991c064f
5	139	4930	9	67af0e2f6e7f6bb2991c05c0
6	139	4931	17	67af10216e7f6bb2991c0652
7	139	4932	10	67af0e386e7f6bb2991c05c2
8	139	4933	10	67af10406e7f6bb2991c065f
9	139	4934	11	67af0e426e7f6bb2991c05c4
10	139	4935	11	67af0fce6e7f6bb2991c061f
11	139	4936	11	67af0fcc6e7f6bb2991c0619
12	139	4937	12	67af0e4a6e7f6bb2991c05c6
13	139	4938	13	67af0e526e7f6bb2991c05c8
14	139	4939	14	67af0e596e7f6bb2991c05ca
15	139	4940	15	67af0e606e7f6bb2991c05cc
16	139	4941	10	67af102c6e7f6bb2991c0654
17	139	4942	16	67af0e666e7f6bb2991c05ce
18	139	4943	16	67af103d6e7f6bb2991c0659
19	139	4944	16	67af0fc96e7f6bb2991c0613
20	139	4945	17	67af0e6e6e7f6bb2991c05d0
21	139	4946	17	67af10556e7f6bb2991c067d
22	139	4947	18	67af0e756e7f6bb2991c05d2
23	139	4948	18	67af10516e7f6bb2991c0677
24	139	4949	18	67af101b6e7f6bb2991c0649
25	139	4950	18	67af0fda6e7f6bb2991c0631
26	139	4951	20	67af0e7c6e7f6bb2991c05d4
27	139	4952	20	67af0ee46e7f6bb2991c05d8
28	139	4953	18	67af0ef26e7f6bb2991c05da
29	139	4954	18	67af104d6e7f6bb2991c0671
30	139	4955	18	67af0fdf6e7f6bb2991c0637
31	139	4956	17	67af0efa6e7f6bb2991c05dc
32	139	4957	17	67af0fc66e7f6bb2991c060d
33	139	4958	16	67af0f016e7f6bb2991c05de
34	139	4959	15	67af0f086e7f6bb2991c05e0
35	139	4960	15	67af0fc36e7f6bb2991c0607
36	139	4961	15	67af0fd16e7f6bb2991c0625
37	139	4962	14	67af0f0e6e7f6bb2991c05e2
38	139	4963	13	67af0f156e7f6bb2991c05e4
39	139	4964	12	67af0f1c6e7f6bb2991c05e6
40	139	4965	11	67af0f236e7f6bb2991c05e8
41	139	4966	9	67af0f326e7f6bb2991c05ea
42	139	4967	9	67af0fc16e7f6bb2991c0601
43	139	4968	7	67af0f386e7f6bb2991c05ec
44	139	4969	7	67af0fd46e7f6bb2991c062b
45	139	4970	7	67af10186e7f6bb2991c0643
46	139	4971	16	67af0f426e7f6bb2991c05ee
47	139	4972	16	67af104a6e7f6bb2991c066b
48	139	4973	16	67af10166e7f6bb2991c063d
1	109	3486	7	67af0e1b6e7f6bb2991c05be
2	109	3487	7	67af10426e7f6bb2991c0665
3	109	3488	7	67af0fad6e7f6bb2991c05f5
4	109	3489	7	67af101d6e7f6bb2991c064f
5	109	3490	9	67af0e2f6e7f6bb2991c05c0
6	109	3491	17	67af10216e7f6bb2991c0652
7	109	3492	10	67af0e386e7f6bb2991c05c2
8	109	3493	10	67af10406e7f6bb2991c065f
9	109	3494	11	67af0e426e7f6bb2991c05c4
10	109	3495	11	67af0fce6e7f6bb2991c061f
11	109	3496	11	67af0fcc6e7f6bb2991c0619
12	109	3497	12	67af0e4a6e7f6bb2991c05c6
13	109	3498	13	67af0e526e7f6bb2991c05c8
14	109	3499	14	67af0e596e7f6bb2991c05ca
15	109	3500	15	67af0e606e7f6bb2991c05cc
16	109	3501	10	67af102c6e7f6bb2991c0654
17	109	3502	16	67af0e666e7f6bb2991c05ce
18	109	3503	16	67af103d6e7f6bb2991c0659
19	109	3504	16	67af0fc96e7f6bb2991c0613
20	109	3505	17	67af0e6e6e7f6bb2991c05d0
21	109	3506	17	67af10556e7f6bb2991c067d
22	109	3507	18	67af0e756e7f6bb2991c05d2
23	109	3508	18	67af10516e7f6bb2991c0677
24	109	3509	18	67af101b6e7f6bb2991c0649
25	109	3510	18	67af0fda6e7f6bb2991c0631
26	109	3511	20	67af0e7c6e7f6bb2991c05d4
27	109	3512	20	67af0ee46e7f6bb2991c05d8
28	109	3513	18	67af0ef26e7f6bb2991c05da
29	109	3514	18	67af104d6e7f6bb2991c0671
30	109	3515	18	67af0fdf6e7f6bb2991c0637
31	109	3516	17	67af0efa6e7f6bb2991c05dc
32	109	3517	17	67af0fc66e7f6bb2991c060d
33	109	3518	16	67af0f016e7f6bb2991c05de
34	109	3519	15	67af0f086e7f6bb2991c05e0
35	109	3520	15	67af0fc36e7f6bb2991c0607
36	109	3521	15	67af0fd16e7f6bb2991c0625
37	109	3522	14	67af0f0e6e7f6bb2991c05e2
38	109	3523	13	67af0f156e7f6bb2991c05e4
39	109	3524	12	67af0f1c6e7f6bb2991c05e6
40	109	3525	11	67af0f236e7f6bb2991c05e8
41	109	3526	9	67af0f326e7f6bb2991c05ea
42	109	3527	9	67af0fc16e7f6bb2991c0601
43	109	3528	7	67af0f386e7f6bb2991c05ec
44	109	3529	7	67af0fd46e7f6bb2991c062b
45	109	3530	7	67af10186e7f6bb2991c0643
46	109	3531	16	67af0f426e7f6bb2991c05ee
47	109	3532	16	67af104a6e7f6bb2991c066b
48	109	3533	16	67af10166e7f6bb2991c063d
1	110	3534	7	67af0e1b6e7f6bb2991c05be
2	110	3535	7	67af10426e7f6bb2991c0665
3	110	3536	7	67af0fad6e7f6bb2991c05f5
4	110	3537	7	67af101d6e7f6bb2991c064f
5	110	3538	9	67af0e2f6e7f6bb2991c05c0
6	110	3539	17	67af10216e7f6bb2991c0652
7	110	3540	10	67af0e386e7f6bb2991c05c2
8	110	3541	10	67af10406e7f6bb2991c065f
9	110	3542	11	67af0e426e7f6bb2991c05c4
10	110	3543	11	67af0fce6e7f6bb2991c061f
11	110	3544	11	67af0fcc6e7f6bb2991c0619
12	110	3545	12	67af0e4a6e7f6bb2991c05c6
13	110	3546	13	67af0e526e7f6bb2991c05c8
14	110	3547	14	67af0e596e7f6bb2991c05ca
15	110	3548	15	67af0e606e7f6bb2991c05cc
16	110	3549	10	67af102c6e7f6bb2991c0654
17	110	3550	16	67af0e666e7f6bb2991c05ce
18	110	3551	16	67af103d6e7f6bb2991c0659
19	110	3552	16	67af0fc96e7f6bb2991c0613
20	110	3553	17	67af0e6e6e7f6bb2991c05d0
21	110	3554	17	67af10556e7f6bb2991c067d
22	110	3555	18	67af0e756e7f6bb2991c05d2
23	110	3556	18	67af10516e7f6bb2991c0677
24	110	3557	18	67af101b6e7f6bb2991c0649
25	110	3558	18	67af0fda6e7f6bb2991c0631
26	110	3559	20	67af0e7c6e7f6bb2991c05d4
27	110	3560	20	67af0ee46e7f6bb2991c05d8
28	110	3561	18	67af0ef26e7f6bb2991c05da
29	110	3562	18	67af104d6e7f6bb2991c0671
30	110	3563	18	67af0fdf6e7f6bb2991c0637
31	110	3564	17	67af0efa6e7f6bb2991c05dc
32	110	3565	17	67af0fc66e7f6bb2991c060d
33	110	3566	16	67af0f016e7f6bb2991c05de
34	110	3567	15	67af0f086e7f6bb2991c05e0
35	110	3568	15	67af0fc36e7f6bb2991c0607
36	110	3569	15	67af0fd16e7f6bb2991c0625
37	110	3570	14	67af0f0e6e7f6bb2991c05e2
38	110	3571	13	67af0f156e7f6bb2991c05e4
39	110	3572	12	67af0f1c6e7f6bb2991c05e6
40	110	3573	11	67af0f236e7f6bb2991c05e8
41	110	3574	9	67af0f326e7f6bb2991c05ea
42	110	3575	9	67af0fc16e7f6bb2991c0601
43	110	3576	7	67af0f386e7f6bb2991c05ec
44	110	3577	7	67af0fd46e7f6bb2991c062b
45	110	3578	7	67af10186e7f6bb2991c0643
46	110	3579	16	67af0f426e7f6bb2991c05ee
47	110	3580	16	67af104a6e7f6bb2991c066b
48	110	3581	16	67af10166e7f6bb2991c063d
1	156	5742	7	67af0e1b6e7f6bb2991c05be
2	156	5743	7	67af10426e7f6bb2991c0665
3	156	5744	7	67af0fad6e7f6bb2991c05f5
4	156	5745	7	67af101d6e7f6bb2991c064f
5	156	5746	9	67af0e2f6e7f6bb2991c05c0
6	156	5747	17	67af10216e7f6bb2991c0652
7	156	5748	10	67af0e386e7f6bb2991c05c2
8	156	5749	10	67af10406e7f6bb2991c065f
9	156	5750	11	67af0e426e7f6bb2991c05c4
10	156	5751	11	67af0fce6e7f6bb2991c061f
11	156	5752	11	67af0fcc6e7f6bb2991c0619
12	156	5753	12	67af0e4a6e7f6bb2991c05c6
13	156	5754	13	67af0e526e7f6bb2991c05c8
14	156	5755	14	67af0e596e7f6bb2991c05ca
15	156	5756	15	67af0e606e7f6bb2991c05cc
16	156	5757	10	67af102c6e7f6bb2991c0654
17	156	5758	16	67af0e666e7f6bb2991c05ce
18	156	5759	16	67af103d6e7f6bb2991c0659
19	156	5760	16	67af0fc96e7f6bb2991c0613
20	156	5761	17	67af0e6e6e7f6bb2991c05d0
21	156	5762	17	67af10556e7f6bb2991c067d
22	156	5763	18	67af0e756e7f6bb2991c05d2
23	156	5764	18	67af10516e7f6bb2991c0677
24	156	5765	18	67af101b6e7f6bb2991c0649
25	156	5766	18	67af0fda6e7f6bb2991c0631
26	156	5767	20	67af0e7c6e7f6bb2991c05d4
27	156	5768	20	67af0ee46e7f6bb2991c05d8
28	156	5769	18	67af0ef26e7f6bb2991c05da
29	156	5770	18	67af104d6e7f6bb2991c0671
30	156	5771	18	67af0fdf6e7f6bb2991c0637
31	156	5772	17	67af0efa6e7f6bb2991c05dc
32	156	5773	17	67af0fc66e7f6bb2991c060d
33	156	5774	16	67af0f016e7f6bb2991c05de
34	156	5775	15	67af0f086e7f6bb2991c05e0
35	156	5776	15	67af0fc36e7f6bb2991c0607
36	156	5777	15	67af0fd16e7f6bb2991c0625
37	156	5778	14	67af0f0e6e7f6bb2991c05e2
38	156	5779	13	67af0f156e7f6bb2991c05e4
39	156	5780	12	67af0f1c6e7f6bb2991c05e6
40	156	5781	11	67af0f236e7f6bb2991c05e8
41	156	5782	9	67af0f326e7f6bb2991c05ea
42	156	5783	9	67af0fc16e7f6bb2991c0601
43	156	5784	7	67af0f386e7f6bb2991c05ec
44	156	5785	7	67af0fd46e7f6bb2991c062b
45	156	5786	7	67af10186e7f6bb2991c0643
46	156	5787	16	67af0f426e7f6bb2991c05ee
47	156	5788	16	67af104a6e7f6bb2991c066b
48	156	5789	16	67af10166e7f6bb2991c063d
1	190	7374	7	67af0e1b6e7f6bb2991c05be
2	190	7375	7	67af10426e7f6bb2991c0665
3	190	7376	7	67af0fad6e7f6bb2991c05f5
4	190	7377	7	67af101d6e7f6bb2991c064f
5	190	7378	9	67af0e2f6e7f6bb2991c05c0
6	190	7379	17	67af10216e7f6bb2991c0652
7	190	7380	10	67af0e386e7f6bb2991c05c2
8	190	7381	10	67af10406e7f6bb2991c065f
9	190	7382	11	67af0e426e7f6bb2991c05c4
10	190	7383	11	67af0fce6e7f6bb2991c061f
11	190	7384	11	67af0fcc6e7f6bb2991c0619
12	190	7385	12	67af0e4a6e7f6bb2991c05c6
13	190	7386	13	67af0e526e7f6bb2991c05c8
14	190	7387	14	67af0e596e7f6bb2991c05ca
15	190	7388	15	67af0e606e7f6bb2991c05cc
16	190	7389	10	67af102c6e7f6bb2991c0654
17	190	7390	16	67af0e666e7f6bb2991c05ce
18	190	7391	16	67af103d6e7f6bb2991c0659
19	190	7392	16	67af0fc96e7f6bb2991c0613
20	190	7393	17	67af0e6e6e7f6bb2991c05d0
21	190	7394	17	67af10556e7f6bb2991c067d
22	190	7395	18	67af0e756e7f6bb2991c05d2
23	190	7396	18	67af10516e7f6bb2991c0677
24	190	7397	18	67af101b6e7f6bb2991c0649
25	190	7398	18	67af0fda6e7f6bb2991c0631
26	190	7399	20	67af0e7c6e7f6bb2991c05d4
27	190	7400	20	67af0ee46e7f6bb2991c05d8
28	190	7401	18	67af0ef26e7f6bb2991c05da
29	190	7402	18	67af104d6e7f6bb2991c0671
30	190	7403	18	67af0fdf6e7f6bb2991c0637
31	190	7404	17	67af0efa6e7f6bb2991c05dc
32	190	7405	17	67af0fc66e7f6bb2991c060d
33	190	7406	16	67af0f016e7f6bb2991c05de
34	190	7407	15	67af0f086e7f6bb2991c05e0
35	190	7408	15	67af0fc36e7f6bb2991c0607
36	190	7409	15	67af0fd16e7f6bb2991c0625
37	190	7410	14	67af0f0e6e7f6bb2991c05e2
38	190	7411	13	67af0f156e7f6bb2991c05e4
39	190	7412	12	67af0f1c6e7f6bb2991c05e6
40	190	7413	11	67af0f236e7f6bb2991c05e8
41	190	7414	9	67af0f326e7f6bb2991c05ea
42	190	7415	9	67af0fc16e7f6bb2991c0601
43	190	7416	7	67af0f386e7f6bb2991c05ec
44	190	7417	7	67af0fd46e7f6bb2991c062b
45	190	7418	7	67af10186e7f6bb2991c0643
46	190	7419	16	67af0f426e7f6bb2991c05ee
47	190	7420	16	67af104a6e7f6bb2991c066b
48	190	7421	16	67af10166e7f6bb2991c063d
1	181	6942	7	67af0e1b6e7f6bb2991c05be
2	181	6943	7	67af10426e7f6bb2991c0665
3	181	6944	7	67af0fad6e7f6bb2991c05f5
4	181	6945	7	67af101d6e7f6bb2991c064f
5	181	6946	9	67af0e2f6e7f6bb2991c05c0
6	181	6947	17	67af10216e7f6bb2991c0652
7	181	6948	10	67af0e386e7f6bb2991c05c2
8	181	6949	10	67af10406e7f6bb2991c065f
9	181	6950	11	67af0e426e7f6bb2991c05c4
10	181	6951	11	67af0fce6e7f6bb2991c061f
11	181	6952	11	67af0fcc6e7f6bb2991c0619
12	181	6953	12	67af0e4a6e7f6bb2991c05c6
13	181	6954	13	67af0e526e7f6bb2991c05c8
14	181	6955	14	67af0e596e7f6bb2991c05ca
15	181	6956	15	67af0e606e7f6bb2991c05cc
16	181	6957	10	67af102c6e7f6bb2991c0654
17	181	6958	16	67af0e666e7f6bb2991c05ce
18	181	6959	16	67af103d6e7f6bb2991c0659
19	181	6960	16	67af0fc96e7f6bb2991c0613
20	181	6961	17	67af0e6e6e7f6bb2991c05d0
21	181	6962	17	67af10556e7f6bb2991c067d
22	181	6963	18	67af0e756e7f6bb2991c05d2
23	181	6964	18	67af10516e7f6bb2991c0677
24	181	6965	18	67af101b6e7f6bb2991c0649
25	181	6966	18	67af0fda6e7f6bb2991c0631
26	181	6967	20	67af0e7c6e7f6bb2991c05d4
27	181	6968	20	67af0ee46e7f6bb2991c05d8
28	181	6969	18	67af0ef26e7f6bb2991c05da
29	181	6970	18	67af104d6e7f6bb2991c0671
30	181	6971	18	67af0fdf6e7f6bb2991c0637
31	181	6972	17	67af0efa6e7f6bb2991c05dc
32	181	6973	17	67af0fc66e7f6bb2991c060d
33	181	6974	16	67af0f016e7f6bb2991c05de
34	181	6975	15	67af0f086e7f6bb2991c05e0
35	181	6976	15	67af0fc36e7f6bb2991c0607
36	181	6977	15	67af0fd16e7f6bb2991c0625
37	181	6978	14	67af0f0e6e7f6bb2991c05e2
38	181	6979	13	67af0f156e7f6bb2991c05e4
39	181	6980	12	67af0f1c6e7f6bb2991c05e6
40	181	6981	11	67af0f236e7f6bb2991c05e8
41	181	6982	9	67af0f326e7f6bb2991c05ea
42	181	6983	9	67af0fc16e7f6bb2991c0601
43	181	6984	7	67af0f386e7f6bb2991c05ec
44	181	6985	7	67af0fd46e7f6bb2991c062b
45	181	6986	7	67af10186e7f6bb2991c0643
46	181	6987	16	67af0f426e7f6bb2991c05ee
47	181	6988	16	67af104a6e7f6bb2991c066b
48	181	6989	16	67af10166e7f6bb2991c063d
1	150	5454	7	67af0e1b6e7f6bb2991c05be
2	150	5455	7	67af10426e7f6bb2991c0665
3	150	5456	7	67af0fad6e7f6bb2991c05f5
4	150	5457	7	67af101d6e7f6bb2991c064f
5	150	5458	9	67af0e2f6e7f6bb2991c05c0
6	150	5459	17	67af10216e7f6bb2991c0652
7	150	5460	10	67af0e386e7f6bb2991c05c2
8	150	5461	10	67af10406e7f6bb2991c065f
9	150	5462	11	67af0e426e7f6bb2991c05c4
10	150	5463	11	67af0fce6e7f6bb2991c061f
11	150	5464	11	67af0fcc6e7f6bb2991c0619
12	150	5465	12	67af0e4a6e7f6bb2991c05c6
13	150	5466	13	67af0e526e7f6bb2991c05c8
14	150	5467	14	67af0e596e7f6bb2991c05ca
15	150	5468	15	67af0e606e7f6bb2991c05cc
16	150	5469	10	67af102c6e7f6bb2991c0654
17	150	5470	16	67af0e666e7f6bb2991c05ce
18	150	5471	16	67af103d6e7f6bb2991c0659
19	150	5472	16	67af0fc96e7f6bb2991c0613
20	150	5473	17	67af0e6e6e7f6bb2991c05d0
21	150	5474	17	67af10556e7f6bb2991c067d
22	150	5475	18	67af0e756e7f6bb2991c05d2
23	150	5476	18	67af10516e7f6bb2991c0677
24	150	5477	18	67af101b6e7f6bb2991c0649
1	142	5070	7	67af0e1b6e7f6bb2991c05be
2	142	5071	7	67af10426e7f6bb2991c0665
3	142	5072	7	67af0fad6e7f6bb2991c05f5
4	142	5073	7	67af101d6e7f6bb2991c064f
5	142	5074	9	67af0e2f6e7f6bb2991c05c0
6	142	5075	17	67af10216e7f6bb2991c0652
7	142	5076	10	67af0e386e7f6bb2991c05c2
8	142	5077	10	67af10406e7f6bb2991c065f
9	142	5078	11	67af0e426e7f6bb2991c05c4
10	142	5079	11	67af0fce6e7f6bb2991c061f
11	142	5080	11	67af0fcc6e7f6bb2991c0619
12	142	5081	12	67af0e4a6e7f6bb2991c05c6
13	142	5082	13	67af0e526e7f6bb2991c05c8
14	142	5083	14	67af0e596e7f6bb2991c05ca
15	142	5084	15	67af0e606e7f6bb2991c05cc
1	105	3294	7	67af0e1b6e7f6bb2991c05be
2	105	3295	7	67af10426e7f6bb2991c0665
3	105	3296	7	67af0fad6e7f6bb2991c05f5
4	105	3297	7	67af101d6e7f6bb2991c064f
5	105	3298	9	67af0e2f6e7f6bb2991c05c0
6	105	3299	17	67af10216e7f6bb2991c0652
7	105	3300	10	67af0e386e7f6bb2991c05c2
8	105	3301	10	67af10406e7f6bb2991c065f
9	105	3302	11	67af0e426e7f6bb2991c05c4
10	105	3303	11	67af0fce6e7f6bb2991c061f
11	105	3304	11	67af0fcc6e7f6bb2991c0619
12	105	3305	12	67af0e4a6e7f6bb2991c05c6
13	105	3306	13	67af0e526e7f6bb2991c05c8
14	105	3307	14	67af0e596e7f6bb2991c05ca
15	105	3308	15	67af0e606e7f6bb2991c05cc
16	105	3309	10	67af102c6e7f6bb2991c0654
17	105	3310	16	67af0e666e7f6bb2991c05ce
18	105	3311	16	67af103d6e7f6bb2991c0659
19	105	3312	16	67af0fc96e7f6bb2991c0613
20	105	3313	17	67af0e6e6e7f6bb2991c05d0
21	105	3314	17	67af10556e7f6bb2991c067d
22	105	3315	18	67af0e756e7f6bb2991c05d2
23	105	3316	18	67af10516e7f6bb2991c0677
24	105	3317	18	67af101b6e7f6bb2991c0649
25	105	3318	18	67af0fda6e7f6bb2991c0631
26	105	3319	20	67af0e7c6e7f6bb2991c05d4
27	105	3320	20	67af0ee46e7f6bb2991c05d8
28	105	3321	18	67af0ef26e7f6bb2991c05da
29	105	3322	18	67af104d6e7f6bb2991c0671
30	105	3323	18	67af0fdf6e7f6bb2991c0637
31	105	3324	17	67af0efa6e7f6bb2991c05dc
32	105	3325	17	67af0fc66e7f6bb2991c060d
33	105	3326	16	67af0f016e7f6bb2991c05de
34	105	3327	15	67af0f086e7f6bb2991c05e0
35	105	3328	15	67af0fc36e7f6bb2991c0607
36	105	3329	15	67af0fd16e7f6bb2991c0625
37	105	3330	14	67af0f0e6e7f6bb2991c05e2
38	105	3331	13	67af0f156e7f6bb2991c05e4
39	105	3332	12	67af0f1c6e7f6bb2991c05e6
40	105	3333	11	67af0f236e7f6bb2991c05e8
41	105	3334	9	67af0f326e7f6bb2991c05ea
42	105	3335	9	67af0fc16e7f6bb2991c0601
43	105	3336	7	67af0f386e7f6bb2991c05ec
44	105	3337	7	67af0fd46e7f6bb2991c062b
45	105	3338	7	67af10186e7f6bb2991c0643
46	105	3339	16	67af0f426e7f6bb2991c05ee
47	105	3340	16	67af104a6e7f6bb2991c066b
48	105	3341	16	67af10166e7f6bb2991c063d
1	106	3342	7	67af0e1b6e7f6bb2991c05be
2	106	3343	7	67af10426e7f6bb2991c0665
3	106	3344	7	67af0fad6e7f6bb2991c05f5
4	106	3345	7	67af101d6e7f6bb2991c064f
5	106	3346	9	67af0e2f6e7f6bb2991c05c0
6	106	3347	17	67af10216e7f6bb2991c0652
7	106	3348	10	67af0e386e7f6bb2991c05c2
8	106	3349	10	67af10406e7f6bb2991c065f
9	106	3350	11	67af0e426e7f6bb2991c05c4
10	106	3351	11	67af0fce6e7f6bb2991c061f
11	106	3352	11	67af0fcc6e7f6bb2991c0619
12	106	3353	12	67af0e4a6e7f6bb2991c05c6
13	106	3354	13	67af0e526e7f6bb2991c05c8
14	106	3355	14	67af0e596e7f6bb2991c05ca
15	106	3356	15	67af0e606e7f6bb2991c05cc
16	106	3357	10	67af102c6e7f6bb2991c0654
17	106	3358	16	67af0e666e7f6bb2991c05ce
18	106	3359	16	67af103d6e7f6bb2991c0659
19	106	3360	16	67af0fc96e7f6bb2991c0613
20	106	3361	17	67af0e6e6e7f6bb2991c05d0
21	106	3362	17	67af10556e7f6bb2991c067d
22	106	3363	18	67af0e756e7f6bb2991c05d2
23	106	3364	18	67af10516e7f6bb2991c0677
24	106	3365	18	67af101b6e7f6bb2991c0649
25	106	3366	18	67af0fda6e7f6bb2991c0631
26	106	3367	20	67af0e7c6e7f6bb2991c05d4
27	106	3368	20	67af0ee46e7f6bb2991c05d8
28	106	3369	18	67af0ef26e7f6bb2991c05da
29	106	3370	18	67af104d6e7f6bb2991c0671
30	106	3371	18	67af0fdf6e7f6bb2991c0637
31	106	3372	17	67af0efa6e7f6bb2991c05dc
32	106	3373	17	67af0fc66e7f6bb2991c060d
33	106	3374	16	67af0f016e7f6bb2991c05de
34	106	3375	15	67af0f086e7f6bb2991c05e0
35	106	3376	15	67af0fc36e7f6bb2991c0607
36	106	3377	15	67af0fd16e7f6bb2991c0625
37	106	3378	14	67af0f0e6e7f6bb2991c05e2
38	106	3379	13	67af0f156e7f6bb2991c05e4
39	106	3380	12	67af0f1c6e7f6bb2991c05e6
40	106	3381	11	67af0f236e7f6bb2991c05e8
41	106	3382	9	67af0f326e7f6bb2991c05ea
42	106	3383	9	67af0fc16e7f6bb2991c0601
43	106	3384	7	67af0f386e7f6bb2991c05ec
44	106	3385	7	67af0fd46e7f6bb2991c062b
45	106	3386	7	67af10186e7f6bb2991c0643
46	106	3387	16	67af0f426e7f6bb2991c05ee
47	106	3388	16	67af104a6e7f6bb2991c066b
48	106	3389	16	67af10166e7f6bb2991c063d
16	142	5085	10	67af102c6e7f6bb2991c0654
17	142	5086	16	67af0e666e7f6bb2991c05ce
18	142	5087	16	67af103d6e7f6bb2991c0659
19	142	5088	16	67af0fc96e7f6bb2991c0613
20	142	5089	17	67af0e6e6e7f6bb2991c05d0
21	142	5090	17	67af10556e7f6bb2991c067d
22	142	5091	18	67af0e756e7f6bb2991c05d2
23	142	5092	18	67af10516e7f6bb2991c0677
24	142	5093	18	67af101b6e7f6bb2991c0649
25	142	5094	18	67af0fda6e7f6bb2991c0631
26	142	5095	20	67af0e7c6e7f6bb2991c05d4
27	142	5096	20	67af0ee46e7f6bb2991c05d8
28	142	5097	18	67af0ef26e7f6bb2991c05da
29	142	5098	18	67af104d6e7f6bb2991c0671
30	142	5099	18	67af0fdf6e7f6bb2991c0637
31	142	5100	17	67af0efa6e7f6bb2991c05dc
32	142	5101	17	67af0fc66e7f6bb2991c060d
33	142	5102	16	67af0f016e7f6bb2991c05de
34	142	5103	15	67af0f086e7f6bb2991c05e0
35	142	5104	15	67af0fc36e7f6bb2991c0607
36	142	5105	15	67af0fd16e7f6bb2991c0625
37	142	5106	14	67af0f0e6e7f6bb2991c05e2
38	142	5107	13	67af0f156e7f6bb2991c05e4
39	142	5108	12	67af0f1c6e7f6bb2991c05e6
40	142	5109	11	67af0f236e7f6bb2991c05e8
41	142	5110	9	67af0f326e7f6bb2991c05ea
42	142	5111	9	67af0fc16e7f6bb2991c0601
43	142	5112	7	67af0f386e7f6bb2991c05ec
44	142	5113	7	67af0fd46e7f6bb2991c062b
45	142	5114	7	67af10186e7f6bb2991c0643
46	142	5115	16	67af0f426e7f6bb2991c05ee
47	142	5116	16	67af104a6e7f6bb2991c066b
48	142	5117	16	67af10166e7f6bb2991c063d
1	143	5118	7	67af0e1b6e7f6bb2991c05be
2	143	5119	7	67af10426e7f6bb2991c0665
3	143	5120	7	67af0fad6e7f6bb2991c05f5
4	143	5121	7	67af101d6e7f6bb2991c064f
5	143	5122	9	67af0e2f6e7f6bb2991c05c0
6	143	5123	17	67af10216e7f6bb2991c0652
7	143	5124	10	67af0e386e7f6bb2991c05c2
8	143	5125	10	67af10406e7f6bb2991c065f
9	143	5126	11	67af0e426e7f6bb2991c05c4
10	143	5127	11	67af0fce6e7f6bb2991c061f
11	143	5128	11	67af0fcc6e7f6bb2991c0619
12	143	5129	12	67af0e4a6e7f6bb2991c05c6
13	143	5130	13	67af0e526e7f6bb2991c05c8
14	143	5131	14	67af0e596e7f6bb2991c05ca
15	143	5132	15	67af0e606e7f6bb2991c05cc
16	143	5133	10	67af102c6e7f6bb2991c0654
17	143	5134	16	67af0e666e7f6bb2991c05ce
18	143	5135	16	67af103d6e7f6bb2991c0659
19	143	5136	16	67af0fc96e7f6bb2991c0613
20	143	5137	17	67af0e6e6e7f6bb2991c05d0
21	143	5138	17	67af10556e7f6bb2991c067d
22	143	5139	18	67af0e756e7f6bb2991c05d2
23	143	5140	18	67af10516e7f6bb2991c0677
24	143	5141	18	67af101b6e7f6bb2991c0649
25	143	5142	18	67af0fda6e7f6bb2991c0631
26	143	5143	20	67af0e7c6e7f6bb2991c05d4
27	143	5144	20	67af0ee46e7f6bb2991c05d8
28	143	5145	18	67af0ef26e7f6bb2991c05da
29	143	5146	18	67af104d6e7f6bb2991c0671
30	143	5147	18	67af0fdf6e7f6bb2991c0637
31	143	5148	17	67af0efa6e7f6bb2991c05dc
32	143	5149	17	67af0fc66e7f6bb2991c060d
33	143	5150	16	67af0f016e7f6bb2991c05de
34	143	5151	15	67af0f086e7f6bb2991c05e0
35	143	5152	15	67af0fc36e7f6bb2991c0607
36	143	5153	15	67af0fd16e7f6bb2991c0625
37	143	5154	14	67af0f0e6e7f6bb2991c05e2
38	143	5155	13	67af0f156e7f6bb2991c05e4
39	143	5156	12	67af0f1c6e7f6bb2991c05e6
40	143	5157	11	67af0f236e7f6bb2991c05e8
41	143	5158	9	67af0f326e7f6bb2991c05ea
42	143	5159	9	67af0fc16e7f6bb2991c0601
43	143	5160	7	67af0f386e7f6bb2991c05ec
44	143	5161	7	67af0fd46e7f6bb2991c062b
45	143	5162	7	67af10186e7f6bb2991c0643
46	143	5163	16	67af0f426e7f6bb2991c05ee
47	143	5164	16	67af104a6e7f6bb2991c066b
48	143	5165	16	67af10166e7f6bb2991c063d
25	150	5478	18	67af0fda6e7f6bb2991c0631
26	150	5479	20	67af0e7c6e7f6bb2991c05d4
27	150	5480	20	67af0ee46e7f6bb2991c05d8
28	150	5481	18	67af0ef26e7f6bb2991c05da
29	150	5482	18	67af104d6e7f6bb2991c0671
30	150	5483	18	67af0fdf6e7f6bb2991c0637
31	150	5484	17	67af0efa6e7f6bb2991c05dc
32	150	5485	17	67af0fc66e7f6bb2991c060d
33	150	5486	16	67af0f016e7f6bb2991c05de
34	150	5487	15	67af0f086e7f6bb2991c05e0
35	150	5488	15	67af0fc36e7f6bb2991c0607
36	150	5489	15	67af0fd16e7f6bb2991c0625
37	150	5490	14	67af0f0e6e7f6bb2991c05e2
38	150	5491	13	67af0f156e7f6bb2991c05e4
39	150	5492	12	67af0f1c6e7f6bb2991c05e6
40	150	5493	11	67af0f236e7f6bb2991c05e8
41	150	5494	9	67af0f326e7f6bb2991c05ea
42	150	5495	9	67af0fc16e7f6bb2991c0601
43	150	5496	7	67af0f386e7f6bb2991c05ec
44	150	5497	7	67af0fd46e7f6bb2991c062b
45	150	5498	7	67af10186e7f6bb2991c0643
46	150	5499	16	67af0f426e7f6bb2991c05ee
1	158	5838	7	67af0e1b6e7f6bb2991c05be
2	158	5839	7	67af10426e7f6bb2991c0665
3	158	5840	7	67af0fad6e7f6bb2991c05f5
4	158	5841	7	67af101d6e7f6bb2991c064f
5	158	5842	9	67af0e2f6e7f6bb2991c05c0
6	158	5843	17	67af10216e7f6bb2991c0652
7	158	5844	10	67af0e386e7f6bb2991c05c2
8	158	5845	10	67af10406e7f6bb2991c065f
9	158	5846	11	67af0e426e7f6bb2991c05c4
1	120	4014	7	67af0e1b6e7f6bb2991c05be
2	120	4015	7	67af10426e7f6bb2991c0665
3	120	4016	7	67af0fad6e7f6bb2991c05f5
4	120	4017	7	67af101d6e7f6bb2991c064f
5	120	4018	9	67af0e2f6e7f6bb2991c05c0
6	120	4019	17	67af10216e7f6bb2991c0652
7	120	4020	10	67af0e386e7f6bb2991c05c2
8	120	4021	10	67af10406e7f6bb2991c065f
9	120	4022	11	67af0e426e7f6bb2991c05c4
10	120	4023	11	67af0fce6e7f6bb2991c061f
11	120	4024	11	67af0fcc6e7f6bb2991c0619
12	120	4025	12	67af0e4a6e7f6bb2991c05c6
13	120	4026	13	67af0e526e7f6bb2991c05c8
14	120	4027	14	67af0e596e7f6bb2991c05ca
15	120	4028	15	67af0e606e7f6bb2991c05cc
16	120	4029	10	67af102c6e7f6bb2991c0654
17	120	4030	16	67af0e666e7f6bb2991c05ce
18	120	4031	16	67af103d6e7f6bb2991c0659
19	120	4032	16	67af0fc96e7f6bb2991c0613
20	120	4033	17	67af0e6e6e7f6bb2991c05d0
21	120	4034	17	67af10556e7f6bb2991c067d
22	120	4035	18	67af0e756e7f6bb2991c05d2
23	120	4036	18	67af10516e7f6bb2991c0677
24	120	4037	18	67af101b6e7f6bb2991c0649
25	120	4038	18	67af0fda6e7f6bb2991c0631
26	120	4039	20	67af0e7c6e7f6bb2991c05d4
27	120	4040	20	67af0ee46e7f6bb2991c05d8
28	120	4041	18	67af0ef26e7f6bb2991c05da
29	120	4042	18	67af104d6e7f6bb2991c0671
30	120	4043	18	67af0fdf6e7f6bb2991c0637
31	120	4044	17	67af0efa6e7f6bb2991c05dc
32	120	4045	17	67af0fc66e7f6bb2991c060d
33	120	4046	16	67af0f016e7f6bb2991c05de
34	120	4047	15	67af0f086e7f6bb2991c05e0
35	120	4048	15	67af0fc36e7f6bb2991c0607
36	120	4049	15	67af0fd16e7f6bb2991c0625
37	120	4050	14	67af0f0e6e7f6bb2991c05e2
38	120	4051	13	67af0f156e7f6bb2991c05e4
39	120	4052	12	67af0f1c6e7f6bb2991c05e6
40	120	4053	11	67af0f236e7f6bb2991c05e8
41	120	4054	9	67af0f326e7f6bb2991c05ea
42	120	4055	9	67af0fc16e7f6bb2991c0601
43	120	4056	7	67af0f386e7f6bb2991c05ec
44	120	4057	7	67af0fd46e7f6bb2991c062b
45	120	4058	7	67af10186e7f6bb2991c0643
46	120	4059	16	67af0f426e7f6bb2991c05ee
47	120	4060	16	67af104a6e7f6bb2991c066b
48	120	4061	16	67af10166e7f6bb2991c063d
1	121	4062	7	67af0e1b6e7f6bb2991c05be
2	121	4063	7	67af10426e7f6bb2991c0665
3	121	4064	7	67af0fad6e7f6bb2991c05f5
4	121	4065	7	67af101d6e7f6bb2991c064f
5	121	4066	9	67af0e2f6e7f6bb2991c05c0
6	121	4067	17	67af10216e7f6bb2991c0652
7	121	4068	10	67af0e386e7f6bb2991c05c2
8	121	4069	10	67af10406e7f6bb2991c065f
9	121	4070	11	67af0e426e7f6bb2991c05c4
10	121	4071	11	67af0fce6e7f6bb2991c061f
11	121	4072	11	67af0fcc6e7f6bb2991c0619
12	121	4073	12	67af0e4a6e7f6bb2991c05c6
13	121	4074	13	67af0e526e7f6bb2991c05c8
14	121	4075	14	67af0e596e7f6bb2991c05ca
15	121	4076	15	67af0e606e7f6bb2991c05cc
16	121	4077	10	67af102c6e7f6bb2991c0654
17	121	4078	16	67af0e666e7f6bb2991c05ce
18	121	4079	16	67af103d6e7f6bb2991c0659
19	121	4080	16	67af0fc96e7f6bb2991c0613
20	121	4081	17	67af0e6e6e7f6bb2991c05d0
21	121	4082	17	67af10556e7f6bb2991c067d
22	121	4083	18	67af0e756e7f6bb2991c05d2
23	121	4084	18	67af10516e7f6bb2991c0677
24	121	4085	18	67af101b6e7f6bb2991c0649
25	121	4086	18	67af0fda6e7f6bb2991c0631
26	121	4087	20	67af0e7c6e7f6bb2991c05d4
27	121	4088	20	67af0ee46e7f6bb2991c05d8
28	121	4089	18	67af0ef26e7f6bb2991c05da
29	121	4090	18	67af104d6e7f6bb2991c0671
30	121	4091	18	67af0fdf6e7f6bb2991c0637
31	121	4092	17	67af0efa6e7f6bb2991c05dc
32	121	4093	17	67af0fc66e7f6bb2991c060d
33	121	4094	16	67af0f016e7f6bb2991c05de
34	121	4095	15	67af0f086e7f6bb2991c05e0
35	121	4096	15	67af0fc36e7f6bb2991c0607
36	121	4097	15	67af0fd16e7f6bb2991c0625
37	121	4098	14	67af0f0e6e7f6bb2991c05e2
38	121	4099	13	67af0f156e7f6bb2991c05e4
39	121	4100	12	67af0f1c6e7f6bb2991c05e6
40	121	4101	11	67af0f236e7f6bb2991c05e8
41	121	4102	9	67af0f326e7f6bb2991c05ea
42	121	4103	9	67af0fc16e7f6bb2991c0601
43	121	4104	7	67af0f386e7f6bb2991c05ec
44	121	4105	7	67af0fd46e7f6bb2991c062b
45	121	4106	7	67af10186e7f6bb2991c0643
46	121	4107	16	67af0f426e7f6bb2991c05ee
47	121	4108	16	67af104a6e7f6bb2991c066b
48	121	4109	16	67af10166e7f6bb2991c063d
10	158	5847	11	67af0fce6e7f6bb2991c061f
11	158	5848	11	67af0fcc6e7f6bb2991c0619
12	158	5849	12	67af0e4a6e7f6bb2991c05c6
13	158	5850	13	67af0e526e7f6bb2991c05c8
14	158	5851	14	67af0e596e7f6bb2991c05ca
15	158	5852	15	67af0e606e7f6bb2991c05cc
16	158	5853	10	67af102c6e7f6bb2991c0654
17	158	5854	16	67af0e666e7f6bb2991c05ce
18	158	5855	16	67af103d6e7f6bb2991c0659
19	158	5856	16	67af0fc96e7f6bb2991c0613
20	158	5857	17	67af0e6e6e7f6bb2991c05d0
21	158	5858	17	67af10556e7f6bb2991c067d
22	158	5859	18	67af0e756e7f6bb2991c05d2
23	158	5860	18	67af10516e7f6bb2991c0677
24	158	5861	18	67af101b6e7f6bb2991c0649
25	158	5862	18	67af0fda6e7f6bb2991c0631
26	158	5863	20	67af0e7c6e7f6bb2991c05d4
27	158	5864	20	67af0ee46e7f6bb2991c05d8
28	158	5865	18	67af0ef26e7f6bb2991c05da
29	158	5866	18	67af104d6e7f6bb2991c0671
30	158	5867	18	67af0fdf6e7f6bb2991c0637
31	158	5868	17	67af0efa6e7f6bb2991c05dc
32	158	5869	17	67af0fc66e7f6bb2991c060d
33	158	5870	16	67af0f016e7f6bb2991c05de
34	158	5871	15	67af0f086e7f6bb2991c05e0
35	158	5872	15	67af0fc36e7f6bb2991c0607
36	158	5873	15	67af0fd16e7f6bb2991c0625
37	158	5874	14	67af0f0e6e7f6bb2991c05e2
38	158	5875	13	67af0f156e7f6bb2991c05e4
39	158	5876	12	67af0f1c6e7f6bb2991c05e6
40	158	5877	11	67af0f236e7f6bb2991c05e8
41	158	5878	9	67af0f326e7f6bb2991c05ea
42	158	5879	9	67af0fc16e7f6bb2991c0601
43	158	5880	7	67af0f386e7f6bb2991c05ec
44	158	5881	7	67af0fd46e7f6bb2991c062b
45	158	5882	7	67af10186e7f6bb2991c0643
46	158	5883	16	67af0f426e7f6bb2991c05ee
47	158	5884	16	67af104a6e7f6bb2991c066b
48	158	5885	16	67af10166e7f6bb2991c063d
47	150	5500	16	67af104a6e7f6bb2991c066b
48	150	5501	16	67af10166e7f6bb2991c063d
1	151	5502	7	67af0e1b6e7f6bb2991c05be
2	151	5503	7	67af10426e7f6bb2991c0665
3	151	5504	7	67af0fad6e7f6bb2991c05f5
4	151	5505	7	67af101d6e7f6bb2991c064f
5	151	5506	9	67af0e2f6e7f6bb2991c05c0
6	151	5507	17	67af10216e7f6bb2991c0652
7	151	5508	10	67af0e386e7f6bb2991c05c2
8	151	5509	10	67af10406e7f6bb2991c065f
9	151	5510	11	67af0e426e7f6bb2991c05c4
10	151	5511	11	67af0fce6e7f6bb2991c061f
11	151	5512	11	67af0fcc6e7f6bb2991c0619
12	151	5513	12	67af0e4a6e7f6bb2991c05c6
13	151	5514	13	67af0e526e7f6bb2991c05c8
14	151	5515	14	67af0e596e7f6bb2991c05ca
15	151	5516	15	67af0e606e7f6bb2991c05cc
16	151	5517	10	67af102c6e7f6bb2991c0654
17	151	5518	16	67af0e666e7f6bb2991c05ce
18	151	5519	16	67af103d6e7f6bb2991c0659
19	151	5520	16	67af0fc96e7f6bb2991c0613
20	151	5521	17	67af0e6e6e7f6bb2991c05d0
21	151	5522	17	67af10556e7f6bb2991c067d
22	151	5523	18	67af0e756e7f6bb2991c05d2
23	151	5524	18	67af10516e7f6bb2991c0677
24	151	5525	18	67af101b6e7f6bb2991c0649
25	151	5526	18	67af0fda6e7f6bb2991c0631
26	151	5527	20	67af0e7c6e7f6bb2991c05d4
27	151	5528	20	67af0ee46e7f6bb2991c05d8
28	151	5529	18	67af0ef26e7f6bb2991c05da
29	151	5530	18	67af104d6e7f6bb2991c0671
30	151	5531	18	67af0fdf6e7f6bb2991c0637
31	151	5532	17	67af0efa6e7f6bb2991c05dc
32	151	5533	17	67af0fc66e7f6bb2991c060d
33	151	5534	16	67af0f016e7f6bb2991c05de
34	151	5535	15	67af0f086e7f6bb2991c05e0
35	151	5536	15	67af0fc36e7f6bb2991c0607
36	151	5537	15	67af0fd16e7f6bb2991c0625
37	151	5538	14	67af0f0e6e7f6bb2991c05e2
38	151	5539	13	67af0f156e7f6bb2991c05e4
39	151	5540	12	67af0f1c6e7f6bb2991c05e6
40	151	5541	11	67af0f236e7f6bb2991c05e8
41	151	5542	9	67af0f326e7f6bb2991c05ea
42	151	5543	9	67af0fc16e7f6bb2991c0601
43	151	5544	7	67af0f386e7f6bb2991c05ec
44	151	5545	7	67af0fd46e7f6bb2991c062b
45	151	5546	7	67af10186e7f6bb2991c0643
46	151	5547	16	67af0f426e7f6bb2991c05ee
47	151	5548	16	67af104a6e7f6bb2991c066b
48	151	5549	16	67af10166e7f6bb2991c063d
1	159	5886	7	67af0e1b6e7f6bb2991c05be
2	159	5887	7	67af10426e7f6bb2991c0665
3	159	5888	7	67af0fad6e7f6bb2991c05f5
4	159	5889	7	67af101d6e7f6bb2991c064f
5	159	5890	9	67af0e2f6e7f6bb2991c05c0
6	159	5891	17	67af10216e7f6bb2991c0652
7	159	5892	10	67af0e386e7f6bb2991c05c2
8	159	5893	10	67af10406e7f6bb2991c065f
9	159	5894	11	67af0e426e7f6bb2991c05c4
10	159	5895	11	67af0fce6e7f6bb2991c061f
11	159	5896	11	67af0fcc6e7f6bb2991c0619
12	159	5897	12	67af0e4a6e7f6bb2991c05c6
13	159	5898	13	67af0e526e7f6bb2991c05c8
14	159	5899	14	67af0e596e7f6bb2991c05ca
15	159	5900	15	67af0e606e7f6bb2991c05cc
16	159	5901	10	67af102c6e7f6bb2991c0654
17	159	5902	16	67af0e666e7f6bb2991c05ce
18	159	5903	16	67af103d6e7f6bb2991c0659
19	159	5904	16	67af0fc96e7f6bb2991c0613
20	159	5905	17	67af0e6e6e7f6bb2991c05d0
1	145	5214	7	67af0e1b6e7f6bb2991c05be
2	145	5215	7	67af10426e7f6bb2991c0665
3	145	5216	7	67af0fad6e7f6bb2991c05f5
4	145	5217	7	67af101d6e7f6bb2991c064f
5	145	5218	9	67af0e2f6e7f6bb2991c05c0
6	145	5219	17	67af10216e7f6bb2991c0652
7	145	5220	10	67af0e386e7f6bb2991c05c2
8	145	5221	10	67af10406e7f6bb2991c065f
9	145	5222	11	67af0e426e7f6bb2991c05c4
10	145	5223	11	67af0fce6e7f6bb2991c061f
11	145	5224	11	67af0fcc6e7f6bb2991c0619
12	145	5225	12	67af0e4a6e7f6bb2991c05c6
13	145	5226	13	67af0e526e7f6bb2991c05c8
14	145	5227	14	67af0e596e7f6bb2991c05ca
15	145	5228	15	67af0e606e7f6bb2991c05cc
16	145	5229	10	67af102c6e7f6bb2991c0654
17	145	5230	16	67af0e666e7f6bb2991c05ce
18	145	5231	16	67af103d6e7f6bb2991c0659
19	145	5232	16	67af0fc96e7f6bb2991c0613
20	145	5233	17	67af0e6e6e7f6bb2991c05d0
21	145	5234	17	67af10556e7f6bb2991c067d
22	145	5235	18	67af0e756e7f6bb2991c05d2
23	145	5236	18	67af10516e7f6bb2991c0677
24	145	5237	18	67af101b6e7f6bb2991c0649
25	145	5238	18	67af0fda6e7f6bb2991c0631
26	145	5239	20	67af0e7c6e7f6bb2991c05d4
27	145	5240	20	67af0ee46e7f6bb2991c05d8
28	145	5241	18	67af0ef26e7f6bb2991c05da
29	145	5242	18	67af104d6e7f6bb2991c0671
30	145	5243	18	67af0fdf6e7f6bb2991c0637
31	145	5244	17	67af0efa6e7f6bb2991c05dc
32	145	5245	17	67af0fc66e7f6bb2991c060d
33	145	5246	16	67af0f016e7f6bb2991c05de
34	145	5247	15	67af0f086e7f6bb2991c05e0
35	145	5248	15	67af0fc36e7f6bb2991c0607
36	145	5249	15	67af0fd16e7f6bb2991c0625
37	145	5250	14	67af0f0e6e7f6bb2991c05e2
38	145	5251	13	67af0f156e7f6bb2991c05e4
39	145	5252	12	67af0f1c6e7f6bb2991c05e6
40	145	5253	11	67af0f236e7f6bb2991c05e8
41	145	5254	9	67af0f326e7f6bb2991c05ea
42	145	5255	9	67af0fc16e7f6bb2991c0601
43	145	5256	7	67af0f386e7f6bb2991c05ec
44	145	5257	7	67af0fd46e7f6bb2991c062b
45	145	5258	7	67af10186e7f6bb2991c0643
46	145	5259	16	67af0f426e7f6bb2991c05ee
47	145	5260	16	67af104a6e7f6bb2991c066b
48	145	5261	16	67af10166e7f6bb2991c063d
1	146	5262	7	67af0e1b6e7f6bb2991c05be
2	146	5263	7	67af10426e7f6bb2991c0665
3	146	5264	7	67af0fad6e7f6bb2991c05f5
4	146	5265	7	67af101d6e7f6bb2991c064f
5	146	5266	9	67af0e2f6e7f6bb2991c05c0
6	146	5267	17	67af10216e7f6bb2991c0652
7	146	5268	10	67af0e386e7f6bb2991c05c2
8	146	5269	10	67af10406e7f6bb2991c065f
9	146	5270	11	67af0e426e7f6bb2991c05c4
10	146	5271	11	67af0fce6e7f6bb2991c061f
11	146	5272	11	67af0fcc6e7f6bb2991c0619
12	146	5273	12	67af0e4a6e7f6bb2991c05c6
13	146	5274	13	67af0e526e7f6bb2991c05c8
14	146	5275	14	67af0e596e7f6bb2991c05ca
15	146	5276	15	67af0e606e7f6bb2991c05cc
16	146	5277	10	67af102c6e7f6bb2991c0654
17	146	5278	16	67af0e666e7f6bb2991c05ce
18	146	5279	16	67af103d6e7f6bb2991c0659
19	146	5280	16	67af0fc96e7f6bb2991c0613
20	146	5281	17	67af0e6e6e7f6bb2991c05d0
21	146	5282	17	67af10556e7f6bb2991c067d
22	146	5283	18	67af0e756e7f6bb2991c05d2
23	146	5284	18	67af10516e7f6bb2991c0677
24	146	5285	18	67af101b6e7f6bb2991c0649
25	146	5286	18	67af0fda6e7f6bb2991c0631
26	146	5287	20	67af0e7c6e7f6bb2991c05d4
27	146	5288	20	67af0ee46e7f6bb2991c05d8
28	146	5289	18	67af0ef26e7f6bb2991c05da
29	146	5290	18	67af104d6e7f6bb2991c0671
30	146	5291	18	67af0fdf6e7f6bb2991c0637
31	146	5292	17	67af0efa6e7f6bb2991c05dc
32	146	5293	17	67af0fc66e7f6bb2991c060d
33	146	5294	16	67af0f016e7f6bb2991c05de
34	146	5295	15	67af0f086e7f6bb2991c05e0
35	146	5296	15	67af0fc36e7f6bb2991c0607
36	146	5297	15	67af0fd16e7f6bb2991c0625
37	146	5298	14	67af0f0e6e7f6bb2991c05e2
38	146	5299	13	67af0f156e7f6bb2991c05e4
39	146	5300	12	67af0f1c6e7f6bb2991c05e6
40	146	5301	11	67af0f236e7f6bb2991c05e8
41	146	5302	9	67af0f326e7f6bb2991c05ea
42	146	5303	9	67af0fc16e7f6bb2991c0601
43	146	5304	7	67af0f386e7f6bb2991c05ec
44	146	5305	7	67af0fd46e7f6bb2991c062b
45	146	5306	7	67af10186e7f6bb2991c0643
46	146	5307	16	67af0f426e7f6bb2991c05ee
47	146	5308	16	67af104a6e7f6bb2991c066b
48	146	5309	16	67af10166e7f6bb2991c063d
21	159	5906	17	67af10556e7f6bb2991c067d
22	159	5907	18	67af0e756e7f6bb2991c05d2
23	159	5908	18	67af10516e7f6bb2991c0677
24	159	5909	18	67af101b6e7f6bb2991c0649
25	159	5910	18	67af0fda6e7f6bb2991c0631
26	159	5911	20	67af0e7c6e7f6bb2991c05d4
27	159	5912	20	67af0ee46e7f6bb2991c05d8
28	159	5913	18	67af0ef26e7f6bb2991c05da
29	159	5914	18	67af104d6e7f6bb2991c0671
30	159	5915	18	67af0fdf6e7f6bb2991c0637
31	159	5916	17	67af0efa6e7f6bb2991c05dc
32	159	5917	17	67af0fc66e7f6bb2991c060d
33	159	5918	16	67af0f016e7f6bb2991c05de
34	159	5919	15	67af0f086e7f6bb2991c05e0
35	159	5920	15	67af0fc36e7f6bb2991c0607
36	159	5921	15	67af0fd16e7f6bb2991c0625
37	159	5922	14	67af0f0e6e7f6bb2991c05e2
38	159	5923	13	67af0f156e7f6bb2991c05e4
39	159	5924	12	67af0f1c6e7f6bb2991c05e6
40	159	5925	11	67af0f236e7f6bb2991c05e8
41	159	5926	9	67af0f326e7f6bb2991c05ea
42	159	5927	9	67af0fc16e7f6bb2991c0601
43	159	5928	7	67af0f386e7f6bb2991c05ec
44	159	5929	7	67af0fd46e7f6bb2991c062b
45	159	5930	7	67af10186e7f6bb2991c0643
46	159	5931	16	67af0f426e7f6bb2991c05ee
47	159	5932	16	67af104a6e7f6bb2991c066b
48	159	5933	16	67af10166e7f6bb2991c063d
1	165	6174	7	67af0e1b6e7f6bb2991c05be
2	165	6175	7	67af10426e7f6bb2991c0665
3	165	6176	7	67af0fad6e7f6bb2991c05f5
4	165	6177	7	67af101d6e7f6bb2991c064f
5	165	6178	9	67af0e2f6e7f6bb2991c05c0
6	165	6179	17	67af10216e7f6bb2991c0652
7	165	6180	10	67af0e386e7f6bb2991c05c2
8	165	6181	10	67af10406e7f6bb2991c065f
9	165	6182	11	67af0e426e7f6bb2991c05c4
10	165	6183	11	67af0fce6e7f6bb2991c061f
11	165	6184	11	67af0fcc6e7f6bb2991c0619
12	165	6185	12	67af0e4a6e7f6bb2991c05c6
13	165	6186	13	67af0e526e7f6bb2991c05c8
14	165	6187	14	67af0e596e7f6bb2991c05ca
15	165	6188	15	67af0e606e7f6bb2991c05cc
16	165	6189	10	67af102c6e7f6bb2991c0654
17	165	6190	16	67af0e666e7f6bb2991c05ce
18	165	6191	16	67af103d6e7f6bb2991c0659
19	165	6192	16	67af0fc96e7f6bb2991c0613
20	165	6193	17	67af0e6e6e7f6bb2991c05d0
21	165	6194	17	67af10556e7f6bb2991c067d
22	165	6195	18	67af0e756e7f6bb2991c05d2
23	165	6196	18	67af10516e7f6bb2991c0677
24	165	6197	18	67af101b6e7f6bb2991c0649
25	165	6198	18	67af0fda6e7f6bb2991c0631
26	165	6199	20	67af0e7c6e7f6bb2991c05d4
27	165	6200	20	67af0ee46e7f6bb2991c05d8
28	165	6201	18	67af0ef26e7f6bb2991c05da
29	165	6202	18	67af104d6e7f6bb2991c0671
30	165	6203	18	67af0fdf6e7f6bb2991c0637
31	165	6204	17	67af0efa6e7f6bb2991c05dc
32	165	6205	17	67af0fc66e7f6bb2991c060d
33	165	6206	16	67af0f016e7f6bb2991c05de
34	165	6207	15	67af0f086e7f6bb2991c05e0
35	165	6208	15	67af0fc36e7f6bb2991c0607
36	165	6209	15	67af0fd16e7f6bb2991c0625
37	165	6210	14	67af0f0e6e7f6bb2991c05e2
38	165	6211	13	67af0f156e7f6bb2991c05e4
39	165	6212	12	67af0f1c6e7f6bb2991c05e6
40	165	6213	11	67af0f236e7f6bb2991c05e8
41	165	6214	9	67af0f326e7f6bb2991c05ea
42	165	6215	9	67af0fc16e7f6bb2991c0601
43	165	6216	7	67af0f386e7f6bb2991c05ec
44	165	6217	7	67af0fd46e7f6bb2991c062b
45	165	6218	7	67af10186e7f6bb2991c0643
46	165	6219	16	67af0f426e7f6bb2991c05ee
47	165	6220	16	67af104a6e7f6bb2991c066b
48	165	6221	16	67af10166e7f6bb2991c063d
1	166	6222	7	67af0e1b6e7f6bb2991c05be
2	166	6223	7	67af10426e7f6bb2991c0665
3	166	6224	7	67af0fad6e7f6bb2991c05f5
4	166	6225	7	67af101d6e7f6bb2991c064f
5	166	6226	9	67af0e2f6e7f6bb2991c05c0
6	166	6227	17	67af10216e7f6bb2991c0652
7	166	6228	10	67af0e386e7f6bb2991c05c2
8	166	6229	10	67af10406e7f6bb2991c065f
9	166	6230	11	67af0e426e7f6bb2991c05c4
10	166	6231	11	67af0fce6e7f6bb2991c061f
11	166	6232	11	67af0fcc6e7f6bb2991c0619
12	166	6233	12	67af0e4a6e7f6bb2991c05c6
13	166	6234	13	67af0e526e7f6bb2991c05c8
14	166	6235	14	67af0e596e7f6bb2991c05ca
15	166	6236	15	67af0e606e7f6bb2991c05cc
16	166	6237	10	67af102c6e7f6bb2991c0654
17	166	6238	16	67af0e666e7f6bb2991c05ce
18	166	6239	16	67af103d6e7f6bb2991c0659
19	166	6240	16	67af0fc96e7f6bb2991c0613
20	166	6241	17	67af0e6e6e7f6bb2991c05d0
21	166	6242	17	67af10556e7f6bb2991c067d
22	166	6243	18	67af0e756e7f6bb2991c05d2
23	166	6244	18	67af10516e7f6bb2991c0677
24	166	6245	18	67af101b6e7f6bb2991c0649
25	166	6246	18	67af0fda6e7f6bb2991c0631
26	166	6247	20	67af0e7c6e7f6bb2991c05d4
27	166	6248	20	67af0ee46e7f6bb2991c05d8
28	166	6249	18	67af0ef26e7f6bb2991c05da
29	166	6250	18	67af104d6e7f6bb2991c0671
30	166	6251	18	67af0fdf6e7f6bb2991c0637
31	166	6252	17	67af0efa6e7f6bb2991c05dc
32	166	6253	17	67af0fc66e7f6bb2991c060d
33	166	6254	16	67af0f016e7f6bb2991c05de
34	166	6255	15	67af0f086e7f6bb2991c05e0
35	166	6256	15	67af0fc36e7f6bb2991c0607
36	166	6257	15	67af0fd16e7f6bb2991c0625
37	166	6258	14	67af0f0e6e7f6bb2991c05e2
38	166	6259	13	67af0f156e7f6bb2991c05e4
39	166	6260	12	67af0f1c6e7f6bb2991c05e6
40	166	6261	11	67af0f236e7f6bb2991c05e8
1	177	6750	7	67af0e1b6e7f6bb2991c05be
2	177	6751	7	67af10426e7f6bb2991c0665
3	177	6752	7	67af0fad6e7f6bb2991c05f5
4	177	6753	7	67af101d6e7f6bb2991c064f
5	177	6754	9	67af0e2f6e7f6bb2991c05c0
6	177	6755	17	67af10216e7f6bb2991c0652
7	177	6756	10	67af0e386e7f6bb2991c05c2
8	177	6757	10	67af10406e7f6bb2991c065f
9	177	6758	11	67af0e426e7f6bb2991c05c4
10	177	6759	11	67af0fce6e7f6bb2991c061f
11	177	6760	11	67af0fcc6e7f6bb2991c0619
12	177	6761	12	67af0e4a6e7f6bb2991c05c6
13	177	6762	13	67af0e526e7f6bb2991c05c8
14	177	6763	14	67af0e596e7f6bb2991c05ca
15	177	6764	15	67af0e606e7f6bb2991c05cc
16	177	6765	10	67af102c6e7f6bb2991c0654
17	177	6766	16	67af0e666e7f6bb2991c05ce
18	177	6767	16	67af103d6e7f6bb2991c0659
19	177	6768	16	67af0fc96e7f6bb2991c0613
20	177	6769	17	67af0e6e6e7f6bb2991c05d0
21	177	6770	17	67af10556e7f6bb2991c067d
22	177	6771	18	67af0e756e7f6bb2991c05d2
23	177	6772	18	67af10516e7f6bb2991c0677
24	177	6773	18	67af101b6e7f6bb2991c0649
25	177	6774	18	67af0fda6e7f6bb2991c0631
26	177	6775	20	67af0e7c6e7f6bb2991c05d4
27	177	6776	20	67af0ee46e7f6bb2991c05d8
28	177	6777	18	67af0ef26e7f6bb2991c05da
29	177	6778	18	67af104d6e7f6bb2991c0671
30	177	6779	18	67af0fdf6e7f6bb2991c0637
31	177	6780	17	67af0efa6e7f6bb2991c05dc
32	177	6781	17	67af0fc66e7f6bb2991c060d
33	177	6782	16	67af0f016e7f6bb2991c05de
34	177	6783	15	67af0f086e7f6bb2991c05e0
35	177	6784	15	67af0fc36e7f6bb2991c0607
36	177	6785	15	67af0fd16e7f6bb2991c0625
37	177	6786	14	67af0f0e6e7f6bb2991c05e2
38	177	6787	13	67af0f156e7f6bb2991c05e4
39	177	6788	12	67af0f1c6e7f6bb2991c05e6
40	177	6789	11	67af0f236e7f6bb2991c05e8
41	177	6790	9	67af0f326e7f6bb2991c05ea
42	177	6791	9	67af0fc16e7f6bb2991c0601
43	177	6792	7	67af0f386e7f6bb2991c05ec
44	177	6793	7	67af0fd46e7f6bb2991c062b
45	177	6794	7	67af10186e7f6bb2991c0643
46	177	6795	16	67af0f426e7f6bb2991c05ee
47	177	6796	16	67af104a6e7f6bb2991c066b
48	177	6797	16	67af10166e7f6bb2991c063d
1	178	6798	7	67af0e1b6e7f6bb2991c05be
2	178	6799	7	67af10426e7f6bb2991c0665
3	178	6800	7	67af0fad6e7f6bb2991c05f5
4	178	6801	7	67af101d6e7f6bb2991c064f
5	178	6802	9	67af0e2f6e7f6bb2991c05c0
6	178	6803	17	67af10216e7f6bb2991c0652
7	178	6804	10	67af0e386e7f6bb2991c05c2
8	178	6805	10	67af10406e7f6bb2991c065f
9	178	6806	11	67af0e426e7f6bb2991c05c4
1	155	5694	7	67af0e1b6e7f6bb2991c05be
2	155	5695	7	67af10426e7f6bb2991c0665
3	155	5696	7	67af0fad6e7f6bb2991c05f5
4	155	5697	7	67af101d6e7f6bb2991c064f
5	155	5698	9	67af0e2f6e7f6bb2991c05c0
6	155	5699	17	67af10216e7f6bb2991c0652
7	155	5700	10	67af0e386e7f6bb2991c05c2
8	155	5701	10	67af10406e7f6bb2991c065f
9	155	5702	11	67af0e426e7f6bb2991c05c4
10	155	5703	11	67af0fce6e7f6bb2991c061f
11	155	5704	11	67af0fcc6e7f6bb2991c0619
12	155	5705	12	67af0e4a6e7f6bb2991c05c6
13	155	5706	13	67af0e526e7f6bb2991c05c8
14	155	5707	14	67af0e596e7f6bb2991c05ca
15	155	5708	15	67af0e606e7f6bb2991c05cc
16	155	5709	10	67af102c6e7f6bb2991c0654
17	155	5710	16	67af0e666e7f6bb2991c05ce
18	155	5711	16	67af103d6e7f6bb2991c0659
19	155	5712	16	67af0fc96e7f6bb2991c0613
20	155	5713	17	67af0e6e6e7f6bb2991c05d0
21	155	5714	17	67af10556e7f6bb2991c067d
22	155	5715	18	67af0e756e7f6bb2991c05d2
23	155	5716	18	67af10516e7f6bb2991c0677
24	155	5717	18	67af101b6e7f6bb2991c0649
25	155	5718	18	67af0fda6e7f6bb2991c0631
26	155	5719	20	67af0e7c6e7f6bb2991c05d4
27	155	5720	20	67af0ee46e7f6bb2991c05d8
28	155	5721	18	67af0ef26e7f6bb2991c05da
29	155	5722	18	67af104d6e7f6bb2991c0671
30	155	5723	18	67af0fdf6e7f6bb2991c0637
31	155	5724	17	67af0efa6e7f6bb2991c05dc
32	155	5725	17	67af0fc66e7f6bb2991c060d
33	155	5726	16	67af0f016e7f6bb2991c05de
34	155	5727	15	67af0f086e7f6bb2991c05e0
35	155	5728	15	67af0fc36e7f6bb2991c0607
36	155	5729	15	67af0fd16e7f6bb2991c0625
37	155	5730	14	67af0f0e6e7f6bb2991c05e2
38	155	5731	13	67af0f156e7f6bb2991c05e4
39	155	5732	12	67af0f1c6e7f6bb2991c05e6
40	155	5733	11	67af0f236e7f6bb2991c05e8
41	155	5734	9	67af0f326e7f6bb2991c05ea
42	155	5735	9	67af0fc16e7f6bb2991c0601
43	155	5736	7	67af0f386e7f6bb2991c05ec
44	155	5737	7	67af0fd46e7f6bb2991c062b
45	155	5738	7	67af10186e7f6bb2991c0643
46	155	5739	16	67af0f426e7f6bb2991c05ee
47	155	5740	16	67af104a6e7f6bb2991c066b
48	155	5741	16	67af10166e7f6bb2991c063d
10	178	6807	11	67af0fce6e7f6bb2991c061f
11	178	6808	11	67af0fcc6e7f6bb2991c0619
41	166	6262	9	67af0f326e7f6bb2991c05ea
42	166	6263	9	67af0fc16e7f6bb2991c0601
43	166	6264	7	67af0f386e7f6bb2991c05ec
44	166	6265	7	67af0fd46e7f6bb2991c062b
45	166	6266	7	67af10186e7f6bb2991c0643
46	166	6267	16	67af0f426e7f6bb2991c05ee
47	166	6268	16	67af104a6e7f6bb2991c066b
48	166	6269	16	67af10166e7f6bb2991c063d
12	178	6809	12	67af0e4a6e7f6bb2991c05c6
13	178	6810	13	67af0e526e7f6bb2991c05c8
14	178	6811	14	67af0e596e7f6bb2991c05ca
15	178	6812	15	67af0e606e7f6bb2991c05cc
16	178	6813	10	67af102c6e7f6bb2991c0654
17	178	6814	16	67af0e666e7f6bb2991c05ce
18	178	6815	16	67af103d6e7f6bb2991c0659
19	178	6816	16	67af0fc96e7f6bb2991c0613
20	178	6817	17	67af0e6e6e7f6bb2991c05d0
21	178	6818	17	67af10556e7f6bb2991c067d
22	178	6819	18	67af0e756e7f6bb2991c05d2
23	178	6820	18	67af10516e7f6bb2991c0677
24	178	6821	18	67af101b6e7f6bb2991c0649
25	178	6822	18	67af0fda6e7f6bb2991c0631
26	178	6823	20	67af0e7c6e7f6bb2991c05d4
27	178	6824	20	67af0ee46e7f6bb2991c05d8
28	178	6825	18	67af0ef26e7f6bb2991c05da
29	178	6826	18	67af104d6e7f6bb2991c0671
30	178	6827	18	67af0fdf6e7f6bb2991c0637
31	178	6828	17	67af0efa6e7f6bb2991c05dc
32	178	6829	17	67af0fc66e7f6bb2991c060d
33	178	6830	16	67af0f016e7f6bb2991c05de
34	178	6831	15	67af0f086e7f6bb2991c05e0
35	178	6832	15	67af0fc36e7f6bb2991c0607
36	178	6833	15	67af0fd16e7f6bb2991c0625
37	178	6834	14	67af0f0e6e7f6bb2991c05e2
38	178	6835	13	67af0f156e7f6bb2991c05e4
39	178	6836	12	67af0f1c6e7f6bb2991c05e6
40	178	6837	11	67af0f236e7f6bb2991c05e8
41	178	6838	9	67af0f326e7f6bb2991c05ea
42	178	6839	9	67af0fc16e7f6bb2991c0601
43	178	6840	7	67af0f386e7f6bb2991c05ec
44	178	6841	7	67af0fd46e7f6bb2991c062b
45	178	6842	7	67af10186e7f6bb2991c0643
46	178	6843	16	67af0f426e7f6bb2991c05ee
47	178	6844	16	67af104a6e7f6bb2991c066b
48	178	6845	16	67af10166e7f6bb2991c063d
1	207	8190	7	67af0e1b6e7f6bb2991c05be
2	207	8191	7	67af10426e7f6bb2991c0665
3	207	8192	7	67af0fad6e7f6bb2991c05f5
4	207	8193	7	67af101d6e7f6bb2991c064f
5	207	8194	9	67af0e2f6e7f6bb2991c05c0
6	207	8195	17	67af10216e7f6bb2991c0652
7	207	8196	10	67af0e386e7f6bb2991c05c2
8	207	8197	10	67af10406e7f6bb2991c065f
9	207	8198	11	67af0e426e7f6bb2991c05c4
10	207	8199	11	67af0fce6e7f6bb2991c061f
11	207	8200	11	67af0fcc6e7f6bb2991c0619
12	207	8201	12	67af0e4a6e7f6bb2991c05c6
13	207	8202	13	67af0e526e7f6bb2991c05c8
14	207	8203	14	67af0e596e7f6bb2991c05ca
15	207	8204	15	67af0e606e7f6bb2991c05cc
16	207	8205	10	67af102c6e7f6bb2991c0654
17	207	8206	16	67af0e666e7f6bb2991c05ce
18	207	8207	16	67af103d6e7f6bb2991c0659
19	207	8208	16	67af0fc96e7f6bb2991c0613
20	207	8209	17	67af0e6e6e7f6bb2991c05d0
21	207	8210	17	67af10556e7f6bb2991c067d
22	207	8211	18	67af0e756e7f6bb2991c05d2
23	207	8212	18	67af10516e7f6bb2991c0677
24	207	8213	18	67af101b6e7f6bb2991c0649
25	207	8214	18	67af0fda6e7f6bb2991c0631
26	207	8215	20	67af0e7c6e7f6bb2991c05d4
27	207	8216	20	67af0ee46e7f6bb2991c05d8
28	207	8217	18	67af0ef26e7f6bb2991c05da
29	207	8218	18	67af104d6e7f6bb2991c0671
30	207	8219	18	67af0fdf6e7f6bb2991c0637
31	207	8220	17	67af0efa6e7f6bb2991c05dc
32	207	8221	17	67af0fc66e7f6bb2991c060d
33	207	8222	16	67af0f016e7f6bb2991c05de
34	207	8223	15	67af0f086e7f6bb2991c05e0
35	207	8224	15	67af0fc36e7f6bb2991c0607
36	207	8225	15	67af0fd16e7f6bb2991c0625
37	207	8226	14	67af0f0e6e7f6bb2991c05e2
38	207	8227	13	67af0f156e7f6bb2991c05e4
39	207	8228	12	67af0f1c6e7f6bb2991c05e6
40	207	8229	11	67af0f236e7f6bb2991c05e8
41	207	8230	9	67af0f326e7f6bb2991c05ea
42	207	8231	9	67af0fc16e7f6bb2991c0601
43	207	8232	7	67af0f386e7f6bb2991c05ec
44	207	8233	7	67af0fd46e7f6bb2991c062b
45	207	8234	7	67af10186e7f6bb2991c0643
46	207	8235	16	67af0f426e7f6bb2991c05ee
47	207	8236	16	67af104a6e7f6bb2991c066b
48	207	8237	16	67af10166e7f6bb2991c063d
1	208	8238	7	67af0e1b6e7f6bb2991c05be
2	208	8239	7	67af10426e7f6bb2991c0665
3	208	8240	7	67af0fad6e7f6bb2991c05f5
4	208	8241	7	67af101d6e7f6bb2991c064f
5	208	8242	9	67af0e2f6e7f6bb2991c05c0
6	208	8243	17	67af10216e7f6bb2991c0652
7	208	8244	10	67af0e386e7f6bb2991c05c2
8	208	8245	10	67af10406e7f6bb2991c065f
9	208	8246	11	67af0e426e7f6bb2991c05c4
10	208	8247	11	67af0fce6e7f6bb2991c061f
11	208	8248	11	67af0fcc6e7f6bb2991c0619
12	208	8249	12	67af0e4a6e7f6bb2991c05c6
13	208	8250	13	67af0e526e7f6bb2991c05c8
14	208	8251	14	67af0e596e7f6bb2991c05ca
15	208	8252	15	67af0e606e7f6bb2991c05cc
16	208	8253	10	67af102c6e7f6bb2991c0654
17	208	8254	16	67af0e666e7f6bb2991c05ce
18	208	8255	16	67af103d6e7f6bb2991c0659
19	208	8256	16	67af0fc96e7f6bb2991c0613
20	208	8257	17	67af0e6e6e7f6bb2991c05d0
21	208	8258	17	67af10556e7f6bb2991c067d
22	208	8259	18	67af0e756e7f6bb2991c05d2
23	208	8260	18	67af10516e7f6bb2991c0677
24	208	8261	18	67af101b6e7f6bb2991c0649
25	208	8262	18	67af0fda6e7f6bb2991c0631
1	180	6894	7	67af0e1b6e7f6bb2991c05be
2	180	6895	7	67af10426e7f6bb2991c0665
3	180	6896	7	67af0fad6e7f6bb2991c05f5
4	180	6897	7	67af101d6e7f6bb2991c064f
5	180	6898	9	67af0e2f6e7f6bb2991c05c0
6	180	6899	17	67af10216e7f6bb2991c0652
7	180	6900	10	67af0e386e7f6bb2991c05c2
8	180	6901	10	67af10406e7f6bb2991c065f
9	180	6902	11	67af0e426e7f6bb2991c05c4
10	180	6903	11	67af0fce6e7f6bb2991c061f
11	180	6904	11	67af0fcc6e7f6bb2991c0619
12	180	6905	12	67af0e4a6e7f6bb2991c05c6
13	180	6906	13	67af0e526e7f6bb2991c05c8
14	180	6907	14	67af0e596e7f6bb2991c05ca
15	180	6908	15	67af0e606e7f6bb2991c05cc
16	180	6909	10	67af102c6e7f6bb2991c0654
17	180	6910	16	67af0e666e7f6bb2991c05ce
18	180	6911	16	67af103d6e7f6bb2991c0659
19	180	6912	16	67af0fc96e7f6bb2991c0613
20	180	6913	17	67af0e6e6e7f6bb2991c05d0
21	180	6914	17	67af10556e7f6bb2991c067d
22	180	6915	18	67af0e756e7f6bb2991c05d2
23	180	6916	18	67af10516e7f6bb2991c0677
24	180	6917	18	67af101b6e7f6bb2991c0649
25	180	6918	18	67af0fda6e7f6bb2991c0631
26	180	6919	20	67af0e7c6e7f6bb2991c05d4
27	180	6920	20	67af0ee46e7f6bb2991c05d8
28	180	6921	18	67af0ef26e7f6bb2991c05da
29	180	6922	18	67af104d6e7f6bb2991c0671
30	180	6923	18	67af0fdf6e7f6bb2991c0637
31	180	6924	17	67af0efa6e7f6bb2991c05dc
32	180	6925	17	67af0fc66e7f6bb2991c060d
33	180	6926	16	67af0f016e7f6bb2991c05de
34	180	6927	15	67af0f086e7f6bb2991c05e0
35	180	6928	15	67af0fc36e7f6bb2991c0607
36	180	6929	15	67af0fd16e7f6bb2991c0625
37	180	6930	14	67af0f0e6e7f6bb2991c05e2
26	208	8263	20	67af0e7c6e7f6bb2991c05d4
27	208	8264	20	67af0ee46e7f6bb2991c05d8
28	208	8265	18	67af0ef26e7f6bb2991c05da
29	208	8266	18	67af104d6e7f6bb2991c0671
30	208	8267	18	67af0fdf6e7f6bb2991c0637
31	208	8268	17	67af0efa6e7f6bb2991c05dc
32	208	8269	17	67af0fc66e7f6bb2991c060d
33	208	8270	16	67af0f016e7f6bb2991c05de
34	208	8271	15	67af0f086e7f6bb2991c05e0
35	208	8272	15	67af0fc36e7f6bb2991c0607
36	208	8273	15	67af0fd16e7f6bb2991c0625
37	208	8274	14	67af0f0e6e7f6bb2991c05e2
38	208	8275	13	67af0f156e7f6bb2991c05e4
39	208	8276	12	67af0f1c6e7f6bb2991c05e6
40	208	8277	11	67af0f236e7f6bb2991c05e8
41	208	8278	9	67af0f326e7f6bb2991c05ea
42	208	8279	9	67af0fc16e7f6bb2991c0601
43	208	8280	7	67af0f386e7f6bb2991c05ec
44	208	8281	7	67af0fd46e7f6bb2991c062b
45	208	8282	7	67af10186e7f6bb2991c0643
46	208	8283	16	67af0f426e7f6bb2991c05ee
47	208	8284	16	67af104a6e7f6bb2991c066b
48	208	8285	16	67af10166e7f6bb2991c063d
38	180	6931	13	67af0f156e7f6bb2991c05e4
39	180	6932	12	67af0f1c6e7f6bb2991c05e6
40	180	6933	11	67af0f236e7f6bb2991c05e8
41	180	6934	9	67af0f326e7f6bb2991c05ea
42	180	6935	9	67af0fc16e7f6bb2991c0601
43	180	6936	7	67af0f386e7f6bb2991c05ec
44	180	6937	7	67af0fd46e7f6bb2991c062b
45	180	6938	7	67af10186e7f6bb2991c0643
46	180	6939	16	67af0f426e7f6bb2991c05ee
47	180	6940	16	67af104a6e7f6bb2991c066b
48	180	6941	16	67af10166e7f6bb2991c063d
1	209	8286	7	67af0e1b6e7f6bb2991c05be
2	209	8287	7	67af10426e7f6bb2991c0665
3	209	8288	7	67af0fad6e7f6bb2991c05f5
4	209	8289	7	67af101d6e7f6bb2991c064f
5	209	8290	9	67af0e2f6e7f6bb2991c05c0
6	209	8291	17	67af10216e7f6bb2991c0652
7	209	8292	10	67af0e386e7f6bb2991c05c2
8	209	8293	10	67af10406e7f6bb2991c065f
9	209	8294	11	67af0e426e7f6bb2991c05c4
10	209	8295	11	67af0fce6e7f6bb2991c061f
11	209	8296	11	67af0fcc6e7f6bb2991c0619
12	209	8297	12	67af0e4a6e7f6bb2991c05c6
13	209	8298	13	67af0e526e7f6bb2991c05c8
14	209	8299	14	67af0e596e7f6bb2991c05ca
15	209	8300	15	67af0e606e7f6bb2991c05cc
16	209	8301	10	67af102c6e7f6bb2991c0654
17	209	8302	16	67af0e666e7f6bb2991c05ce
18	209	8303	16	67af103d6e7f6bb2991c0659
19	209	8304	16	67af0fc96e7f6bb2991c0613
20	209	8305	17	67af0e6e6e7f6bb2991c05d0
21	209	8306	17	67af10556e7f6bb2991c067d
22	209	8307	18	67af0e756e7f6bb2991c05d2
23	209	8308	18	67af10516e7f6bb2991c0677
24	209	8309	18	67af101b6e7f6bb2991c0649
25	209	8310	18	67af0fda6e7f6bb2991c0631
26	209	8311	20	67af0e7c6e7f6bb2991c05d4
27	209	8312	20	67af0ee46e7f6bb2991c05d8
28	209	8313	18	67af0ef26e7f6bb2991c05da
29	209	8314	18	67af104d6e7f6bb2991c0671
30	209	8315	18	67af0fdf6e7f6bb2991c0637
31	209	8316	17	67af0efa6e7f6bb2991c05dc
32	209	8317	17	67af0fc66e7f6bb2991c060d
33	209	8318	16	67af0f016e7f6bb2991c05de
34	209	8319	15	67af0f086e7f6bb2991c05e0
35	209	8320	15	67af0fc36e7f6bb2991c0607
36	209	8321	15	67af0fd16e7f6bb2991c0625
37	209	8322	14	67af0f0e6e7f6bb2991c05e2
38	209	8323	13	67af0f156e7f6bb2991c05e4
39	209	8324	12	67af0f1c6e7f6bb2991c05e6
40	209	8325	11	67af0f236e7f6bb2991c05e8
41	209	8326	9	67af0f326e7f6bb2991c05ea
42	209	8327	9	67af0fc16e7f6bb2991c0601
43	209	8328	7	67af0f386e7f6bb2991c05ec
44	209	8329	7	67af0fd46e7f6bb2991c062b
45	209	8330	7	67af10186e7f6bb2991c0643
46	209	8331	16	67af0f426e7f6bb2991c05ee
47	209	8332	16	67af104a6e7f6bb2991c066b
48	209	8333	16	67af10166e7f6bb2991c063d
1	213	8478	7	67af0e1b6e7f6bb2991c05be
2	213	8479	7	67af10426e7f6bb2991c0665
3	213	8480	7	67af0fad6e7f6bb2991c05f5
4	213	8481	7	67af101d6e7f6bb2991c064f
5	213	8482	9	67af0e2f6e7f6bb2991c05c0
6	213	8483	17	67af10216e7f6bb2991c0652
7	213	8484	10	67af0e386e7f6bb2991c05c2
8	213	8485	10	67af10406e7f6bb2991c065f
9	213	8486	11	67af0e426e7f6bb2991c05c4
10	213	8487	11	67af0fce6e7f6bb2991c061f
11	213	8488	11	67af0fcc6e7f6bb2991c0619
12	213	8489	12	67af0e4a6e7f6bb2991c05c6
13	213	8490	13	67af0e526e7f6bb2991c05c8
14	213	8491	14	67af0e596e7f6bb2991c05ca
15	213	8492	15	67af0e606e7f6bb2991c05cc
16	213	8493	10	67af102c6e7f6bb2991c0654
17	213	8494	16	67af0e666e7f6bb2991c05ce
18	213	8495	16	67af103d6e7f6bb2991c0659
19	213	8496	16	67af0fc96e7f6bb2991c0613
20	213	8497	17	67af0e6e6e7f6bb2991c05d0
21	213	8498	17	67af10556e7f6bb2991c067d
1	210	8334	7	67af0e1b6e7f6bb2991c05be
2	210	8335	7	67af10426e7f6bb2991c0665
3	210	8336	7	67af0fad6e7f6bb2991c05f5
4	210	8337	7	67af101d6e7f6bb2991c064f
5	210	8338	9	67af0e2f6e7f6bb2991c05c0
6	210	8339	17	67af10216e7f6bb2991c0652
7	210	8340	10	67af0e386e7f6bb2991c05c2
8	210	8341	10	67af10406e7f6bb2991c065f
9	210	8342	11	67af0e426e7f6bb2991c05c4
10	210	8343	11	67af0fce6e7f6bb2991c061f
11	210	8344	11	67af0fcc6e7f6bb2991c0619
12	210	8345	12	67af0e4a6e7f6bb2991c05c6
13	210	8346	13	67af0e526e7f6bb2991c05c8
14	210	8347	14	67af0e596e7f6bb2991c05ca
15	210	8348	15	67af0e606e7f6bb2991c05cc
16	210	8349	10	67af102c6e7f6bb2991c0654
17	210	8350	16	67af0e666e7f6bb2991c05ce
18	210	8351	16	67af103d6e7f6bb2991c0659
19	210	8352	16	67af0fc96e7f6bb2991c0613
20	210	8353	17	67af0e6e6e7f6bb2991c05d0
21	210	8354	17	67af10556e7f6bb2991c067d
22	210	8355	18	67af0e756e7f6bb2991c05d2
23	210	8356	18	67af10516e7f6bb2991c0677
24	210	8357	18	67af101b6e7f6bb2991c0649
25	210	8358	18	67af0fda6e7f6bb2991c0631
26	210	8359	20	67af0e7c6e7f6bb2991c05d4
27	210	8360	20	67af0ee46e7f6bb2991c05d8
28	210	8361	18	67af0ef26e7f6bb2991c05da
29	210	8362	18	67af104d6e7f6bb2991c0671
30	210	8363	18	67af0fdf6e7f6bb2991c0637
31	210	8364	17	67af0efa6e7f6bb2991c05dc
32	210	8365	17	67af0fc66e7f6bb2991c060d
33	210	8366	16	67af0f016e7f6bb2991c05de
34	210	8367	15	67af0f086e7f6bb2991c05e0
35	210	8368	15	67af0fc36e7f6bb2991c0607
36	210	8369	15	67af0fd16e7f6bb2991c0625
37	210	8370	14	67af0f0e6e7f6bb2991c05e2
38	210	8371	13	67af0f156e7f6bb2991c05e4
39	210	8372	12	67af0f1c6e7f6bb2991c05e6
40	210	8373	11	67af0f236e7f6bb2991c05e8
41	210	8374	9	67af0f326e7f6bb2991c05ea
42	210	8375	9	67af0fc16e7f6bb2991c0601
43	210	8376	7	67af0f386e7f6bb2991c05ec
44	210	8377	7	67af0fd46e7f6bb2991c062b
45	210	8378	7	67af10186e7f6bb2991c0643
46	210	8379	16	67af0f426e7f6bb2991c05ee
47	210	8380	16	67af104a6e7f6bb2991c066b
48	210	8381	16	67af10166e7f6bb2991c063d
1	189	7326	7	67af0e1b6e7f6bb2991c05be
2	189	7327	7	67af10426e7f6bb2991c0665
3	189	7328	7	67af0fad6e7f6bb2991c05f5
4	189	7329	7	67af101d6e7f6bb2991c064f
5	189	7330	9	67af0e2f6e7f6bb2991c05c0
6	189	7331	17	67af10216e7f6bb2991c0652
7	189	7332	10	67af0e386e7f6bb2991c05c2
8	189	7333	10	67af10406e7f6bb2991c065f
9	189	7334	11	67af0e426e7f6bb2991c05c4
10	189	7335	11	67af0fce6e7f6bb2991c061f
11	189	7336	11	67af0fcc6e7f6bb2991c0619
12	189	7337	12	67af0e4a6e7f6bb2991c05c6
13	189	7338	13	67af0e526e7f6bb2991c05c8
14	189	7339	14	67af0e596e7f6bb2991c05ca
15	189	7340	15	67af0e606e7f6bb2991c05cc
16	189	7341	10	67af102c6e7f6bb2991c0654
17	189	7342	16	67af0e666e7f6bb2991c05ce
18	189	7343	16	67af103d6e7f6bb2991c0659
19	189	7344	16	67af0fc96e7f6bb2991c0613
20	189	7345	17	67af0e6e6e7f6bb2991c05d0
21	189	7346	17	67af10556e7f6bb2991c067d
22	189	7347	18	67af0e756e7f6bb2991c05d2
23	189	7348	18	67af10516e7f6bb2991c0677
24	189	7349	18	67af101b6e7f6bb2991c0649
25	189	7350	18	67af0fda6e7f6bb2991c0631
26	189	7351	20	67af0e7c6e7f6bb2991c05d4
27	189	7352	20	67af0ee46e7f6bb2991c05d8
28	189	7353	18	67af0ef26e7f6bb2991c05da
29	189	7354	18	67af104d6e7f6bb2991c0671
30	189	7355	18	67af0fdf6e7f6bb2991c0637
31	189	7356	17	67af0efa6e7f6bb2991c05dc
32	189	7357	17	67af0fc66e7f6bb2991c060d
33	189	7358	16	67af0f016e7f6bb2991c05de
34	189	7359	15	67af0f086e7f6bb2991c05e0
35	189	7360	15	67af0fc36e7f6bb2991c0607
36	189	7361	15	67af0fd16e7f6bb2991c0625
37	189	7362	14	67af0f0e6e7f6bb2991c05e2
38	189	7363	13	67af0f156e7f6bb2991c05e4
39	189	7364	12	67af0f1c6e7f6bb2991c05e6
40	189	7365	11	67af0f236e7f6bb2991c05e8
41	189	7366	9	67af0f326e7f6bb2991c05ea
42	189	7367	9	67af0fc16e7f6bb2991c0601
43	189	7368	7	67af0f386e7f6bb2991c05ec
44	189	7369	7	67af0fd46e7f6bb2991c062b
45	189	7370	7	67af10186e7f6bb2991c0643
46	189	7371	16	67af0f426e7f6bb2991c05ee
47	189	7372	16	67af104a6e7f6bb2991c066b
48	189	7373	16	67af10166e7f6bb2991c063d
1	202	7950	7	67af0e1b6e7f6bb2991c05be
2	202	7951	7	67af10426e7f6bb2991c0665
3	202	7952	7	67af0fad6e7f6bb2991c05f5
4	202	7953	7	67af101d6e7f6bb2991c064f
5	202	7954	9	67af0e2f6e7f6bb2991c05c0
6	202	7955	17	67af10216e7f6bb2991c0652
7	202	7956	10	67af0e386e7f6bb2991c05c2
8	202	7957	10	67af10406e7f6bb2991c065f
9	202	7958	11	67af0e426e7f6bb2991c05c4
10	202	7959	11	67af0fce6e7f6bb2991c061f
11	202	7960	11	67af0fcc6e7f6bb2991c0619
12	202	7961	12	67af0e4a6e7f6bb2991c05c6
13	202	7962	13	67af0e526e7f6bb2991c05c8
14	202	7963	14	67af0e596e7f6bb2991c05ca
15	202	7964	15	67af0e606e7f6bb2991c05cc
16	202	7965	10	67af102c6e7f6bb2991c0654
17	202	7966	16	67af0e666e7f6bb2991c05ce
18	202	7967	16	67af103d6e7f6bb2991c0659
19	202	7968	16	67af0fc96e7f6bb2991c0613
20	202	7969	17	67af0e6e6e7f6bb2991c05d0
21	202	7970	17	67af10556e7f6bb2991c067d
22	202	7971	18	67af0e756e7f6bb2991c05d2
23	202	7972	18	67af10516e7f6bb2991c0677
24	202	7973	18	67af101b6e7f6bb2991c0649
25	202	7974	18	67af0fda6e7f6bb2991c0631
26	202	7975	20	67af0e7c6e7f6bb2991c05d4
27	202	7976	20	67af0ee46e7f6bb2991c05d8
28	202	7977	18	67af0ef26e7f6bb2991c05da
29	202	7978	18	67af104d6e7f6bb2991c0671
30	202	7979	18	67af0fdf6e7f6bb2991c0637
31	202	7980	17	67af0efa6e7f6bb2991c05dc
32	202	7981	17	67af0fc66e7f6bb2991c060d
33	202	7982	16	67af0f016e7f6bb2991c05de
34	202	7983	15	67af0f086e7f6bb2991c05e0
35	202	7984	15	67af0fc36e7f6bb2991c0607
36	202	7985	15	67af0fd16e7f6bb2991c0625
37	202	7986	14	67af0f0e6e7f6bb2991c05e2
38	202	7987	13	67af0f156e7f6bb2991c05e4
39	202	7988	12	67af0f1c6e7f6bb2991c05e6
40	202	7989	11	67af0f236e7f6bb2991c05e8
41	202	7990	9	67af0f326e7f6bb2991c05ea
42	202	7991	9	67af0fc16e7f6bb2991c0601
43	202	7992	7	67af0f386e7f6bb2991c05ec
44	202	7993	7	67af0fd46e7f6bb2991c062b
45	202	7994	7	67af10186e7f6bb2991c0643
46	202	7995	16	67af0f426e7f6bb2991c05ee
47	202	7996	16	67af104a6e7f6bb2991c066b
48	202	7997	16	67af10166e7f6bb2991c063d
1	203	7998	7	67af0e1b6e7f6bb2991c05be
2	203	7999	7	67af10426e7f6bb2991c0665
3	203	8000	7	67af0fad6e7f6bb2991c05f5
4	203	8001	7	67af101d6e7f6bb2991c064f
5	203	8002	9	67af0e2f6e7f6bb2991c05c0
6	203	8003	17	67af10216e7f6bb2991c0652
7	203	8004	10	67af0e386e7f6bb2991c05c2
8	203	8005	10	67af10406e7f6bb2991c065f
9	203	8006	11	67af0e426e7f6bb2991c05c4
10	203	8007	11	67af0fce6e7f6bb2991c061f
11	203	8008	11	67af0fcc6e7f6bb2991c0619
12	203	8009	12	67af0e4a6e7f6bb2991c05c6
13	203	8010	13	67af0e526e7f6bb2991c05c8
14	203	8011	14	67af0e596e7f6bb2991c05ca
15	203	8012	15	67af0e606e7f6bb2991c05cc
16	203	8013	10	67af102c6e7f6bb2991c0654
17	203	8014	16	67af0e666e7f6bb2991c05ce
18	203	8015	16	67af103d6e7f6bb2991c0659
19	203	8016	16	67af0fc96e7f6bb2991c0613
20	203	8017	17	67af0e6e6e7f6bb2991c05d0
21	203	8018	17	67af10556e7f6bb2991c067d
22	203	8019	18	67af0e756e7f6bb2991c05d2
23	203	8020	18	67af10516e7f6bb2991c0677
24	203	8021	18	67af101b6e7f6bb2991c0649
25	203	8022	18	67af0fda6e7f6bb2991c0631
26	203	8023	20	67af0e7c6e7f6bb2991c05d4
27	203	8024	20	67af0ee46e7f6bb2991c05d8
28	203	8025	18	67af0ef26e7f6bb2991c05da
29	203	8026	18	67af104d6e7f6bb2991c0671
30	203	8027	18	67af0fdf6e7f6bb2991c0637
31	203	8028	17	67af0efa6e7f6bb2991c05dc
32	203	8029	17	67af0fc66e7f6bb2991c060d
33	203	8030	16	67af0f016e7f6bb2991c05de
34	203	8031	15	67af0f086e7f6bb2991c05e0
35	203	8032	15	67af0fc36e7f6bb2991c0607
36	203	8033	15	67af0fd16e7f6bb2991c0625
37	203	8034	14	67af0f0e6e7f6bb2991c05e2
38	203	8035	13	67af0f156e7f6bb2991c05e4
39	203	8036	12	67af0f1c6e7f6bb2991c05e6
40	203	8037	11	67af0f236e7f6bb2991c05e8
41	203	8038	9	67af0f326e7f6bb2991c05ea
42	203	8039	9	67af0fc16e7f6bb2991c0601
43	203	8040	7	67af0f386e7f6bb2991c05ec
44	203	8041	7	67af0fd46e7f6bb2991c062b
45	203	8042	7	67af10186e7f6bb2991c0643
46	203	8043	16	67af0f426e7f6bb2991c05ee
47	203	8044	16	67af104a6e7f6bb2991c066b
48	203	8045	16	67af10166e7f6bb2991c063d
22	213	8499	18	67af0e756e7f6bb2991c05d2
23	213	8500	18	67af10516e7f6bb2991c0677
24	213	8501	18	67af101b6e7f6bb2991c0649
25	213	8502	18	67af0fda6e7f6bb2991c0631
26	213	8503	20	67af0e7c6e7f6bb2991c05d4
27	213	8504	20	67af0ee46e7f6bb2991c05d8
28	213	8505	18	67af0ef26e7f6bb2991c05da
29	213	8506	18	67af104d6e7f6bb2991c0671
30	213	8507	18	67af0fdf6e7f6bb2991c0637
31	213	8508	17	67af0efa6e7f6bb2991c05dc
32	213	8509	17	67af0fc66e7f6bb2991c060d
33	213	8510	16	67af0f016e7f6bb2991c05de
34	213	8511	15	67af0f086e7f6bb2991c05e0
35	213	8512	15	67af0fc36e7f6bb2991c0607
36	213	8513	15	67af0fd16e7f6bb2991c0625
37	213	8514	14	67af0f0e6e7f6bb2991c05e2
38	213	8515	13	67af0f156e7f6bb2991c05e4
39	213	8516	12	67af0f1c6e7f6bb2991c05e6
40	213	8517	11	67af0f236e7f6bb2991c05e8
41	213	8518	9	67af0f326e7f6bb2991c05ea
42	213	8519	9	67af0fc16e7f6bb2991c0601
43	213	8520	7	67af0f386e7f6bb2991c05ec
44	213	8521	7	67af0fd46e7f6bb2991c062b
45	213	8522	7	67af10186e7f6bb2991c0643
46	213	8523	16	67af0f426e7f6bb2991c05ee
47	213	8524	16	67af104a6e7f6bb2991c066b
48	213	8525	16	67af10166e7f6bb2991c063d
1	214	8526	7	67af0e1b6e7f6bb2991c05be
2	214	8527	7	67af10426e7f6bb2991c0665
3	214	8528	7	67af0fad6e7f6bb2991c05f5
4	214	8529	7	67af101d6e7f6bb2991c064f
5	214	8530	9	67af0e2f6e7f6bb2991c05c0
6	214	8531	17	67af10216e7f6bb2991c0652
7	214	8532	10	67af0e386e7f6bb2991c05c2
8	214	8533	10	67af10406e7f6bb2991c065f
9	214	8534	11	67af0e426e7f6bb2991c05c4
10	214	8535	11	67af0fce6e7f6bb2991c061f
11	214	8536	11	67af0fcc6e7f6bb2991c0619
12	214	8537	12	67af0e4a6e7f6bb2991c05c6
13	214	8538	13	67af0e526e7f6bb2991c05c8
14	214	8539	14	67af0e596e7f6bb2991c05ca
15	214	8540	15	67af0e606e7f6bb2991c05cc
16	214	8541	10	67af102c6e7f6bb2991c0654
17	214	8542	16	67af0e666e7f6bb2991c05ce
18	214	8543	16	67af103d6e7f6bb2991c0659
19	214	8544	16	67af0fc96e7f6bb2991c0613
20	214	8545	17	67af0e6e6e7f6bb2991c05d0
21	214	8546	17	67af10556e7f6bb2991c067d
22	214	8547	18	67af0e756e7f6bb2991c05d2
23	214	8548	18	67af10516e7f6bb2991c0677
24	214	8549	18	67af101b6e7f6bb2991c0649
25	214	8550	18	67af0fda6e7f6bb2991c0631
26	214	8551	20	67af0e7c6e7f6bb2991c05d4
27	214	8552	20	67af0ee46e7f6bb2991c05d8
28	214	8553	18	67af0ef26e7f6bb2991c05da
29	214	8554	18	67af104d6e7f6bb2991c0671
30	214	8555	18	67af0fdf6e7f6bb2991c0637
31	214	8556	17	67af0efa6e7f6bb2991c05dc
32	214	8557	17	67af0fc66e7f6bb2991c060d
33	214	8558	16	67af0f016e7f6bb2991c05de
34	214	8559	15	67af0f086e7f6bb2991c05e0
35	214	8560	15	67af0fc36e7f6bb2991c0607
36	214	8561	15	67af0fd16e7f6bb2991c0625
37	214	8562	14	67af0f0e6e7f6bb2991c05e2
38	214	8563	13	67af0f156e7f6bb2991c05e4
39	214	8564	12	67af0f1c6e7f6bb2991c05e6
40	214	8565	11	67af0f236e7f6bb2991c05e8
41	214	8566	9	67af0f326e7f6bb2991c05ea
42	214	8567	9	67af0fc16e7f6bb2991c0601
43	214	8568	7	67af0f386e7f6bb2991c05ec
44	214	8569	7	67af0fd46e7f6bb2991c062b
45	214	8570	7	67af10186e7f6bb2991c0643
46	214	8571	16	67af0f426e7f6bb2991c05ee
47	214	8572	16	67af104a6e7f6bb2991c066b
48	214	8573	16	67af10166e7f6bb2991c063d
1	215	8574	7	67af0e1b6e7f6bb2991c05be
2	215	8575	7	67af10426e7f6bb2991c0665
3	215	8576	7	67af0fad6e7f6bb2991c05f5
4	215	8577	7	67af101d6e7f6bb2991c064f
5	215	8578	9	67af0e2f6e7f6bb2991c05c0
6	215	8579	17	67af10216e7f6bb2991c0652
7	215	8580	10	67af0e386e7f6bb2991c05c2
8	215	8581	10	67af10406e7f6bb2991c065f
9	215	8582	11	67af0e426e7f6bb2991c05c4
10	215	8583	11	67af0fce6e7f6bb2991c061f
11	215	8584	11	67af0fcc6e7f6bb2991c0619
12	215	8585	12	67af0e4a6e7f6bb2991c05c6
13	215	8586	13	67af0e526e7f6bb2991c05c8
14	215	8587	14	67af0e596e7f6bb2991c05ca
15	215	8588	15	67af0e606e7f6bb2991c05cc
16	215	8589	10	67af102c6e7f6bb2991c0654
17	215	8590	16	67af0e666e7f6bb2991c05ce
18	215	8591	16	67af103d6e7f6bb2991c0659
19	215	8592	16	67af0fc96e7f6bb2991c0613
20	215	8593	17	67af0e6e6e7f6bb2991c05d0
21	215	8594	17	67af10556e7f6bb2991c067d
22	215	8595	18	67af0e756e7f6bb2991c05d2
23	215	8596	18	67af10516e7f6bb2991c0677
24	215	8597	18	67af101b6e7f6bb2991c0649
25	215	8598	18	67af0fda6e7f6bb2991c0631
26	215	8599	20	67af0e7c6e7f6bb2991c05d4
27	215	8600	20	67af0ee46e7f6bb2991c05d8
28	215	8601	18	67af0ef26e7f6bb2991c05da
29	215	8602	18	67af104d6e7f6bb2991c0671
30	215	8603	18	67af0fdf6e7f6bb2991c0637
31	215	8604	17	67af0efa6e7f6bb2991c05dc
32	215	8605	17	67af0fc66e7f6bb2991c060d
33	215	8606	16	67af0f016e7f6bb2991c05de
34	215	8607	15	67af0f086e7f6bb2991c05e0
35	215	8608	15	67af0fc36e7f6bb2991c0607
36	215	8609	15	67af0fd16e7f6bb2991c0625
37	215	8610	14	67af0f0e6e7f6bb2991c05e2
38	215	8611	13	67af0f156e7f6bb2991c05e4
39	215	8612	12	67af0f1c6e7f6bb2991c05e6
40	215	8613	11	67af0f236e7f6bb2991c05e8
41	215	8614	9	67af0f326e7f6bb2991c05ea
42	215	8615	9	67af0fc16e7f6bb2991c0601
43	215	8616	7	67af0f386e7f6bb2991c05ec
44	215	8617	7	67af0fd46e7f6bb2991c062b
45	215	8618	7	67af10186e7f6bb2991c0643
46	215	8619	16	67af0f426e7f6bb2991c05ee
47	215	8620	16	67af104a6e7f6bb2991c066b
48	215	8621	16	67af10166e7f6bb2991c063d
1	217	8670	7	67af0e1b6e7f6bb2991c05be
2	217	8671	7	67af10426e7f6bb2991c0665
3	217	8672	7	67af0fad6e7f6bb2991c05f5
4	217	8673	7	67af101d6e7f6bb2991c064f
5	217	8674	9	67af0e2f6e7f6bb2991c05c0
6	217	8675	17	67af10216e7f6bb2991c0652
7	217	8676	10	67af0e386e7f6bb2991c05c2
8	217	8677	10	67af10406e7f6bb2991c065f
9	217	8678	11	67af0e426e7f6bb2991c05c4
10	217	8679	11	67af0fce6e7f6bb2991c061f
11	217	8680	11	67af0fcc6e7f6bb2991c0619
12	217	8681	12	67af0e4a6e7f6bb2991c05c6
13	217	8682	13	67af0e526e7f6bb2991c05c8
14	217	8683	14	67af0e596e7f6bb2991c05ca
15	217	8684	15	67af0e606e7f6bb2991c05cc
16	217	8685	10	67af102c6e7f6bb2991c0654
17	217	8686	16	67af0e666e7f6bb2991c05ce
18	217	8687	16	67af103d6e7f6bb2991c0659
19	217	8688	16	67af0fc96e7f6bb2991c0613
20	217	8689	17	67af0e6e6e7f6bb2991c05d0
21	217	8690	17	67af10556e7f6bb2991c067d
22	217	8691	18	67af0e756e7f6bb2991c05d2
23	217	8692	18	67af10516e7f6bb2991c0677
24	217	8693	18	67af101b6e7f6bb2991c0649
25	217	8694	18	67af0fda6e7f6bb2991c0631
26	217	8695	20	67af0e7c6e7f6bb2991c05d4
27	217	8696	20	67af0ee46e7f6bb2991c05d8
28	217	8697	18	67af0ef26e7f6bb2991c05da
29	217	8698	18	67af104d6e7f6bb2991c0671
30	217	8699	18	67af0fdf6e7f6bb2991c0637
31	217	8700	17	67af0efa6e7f6bb2991c05dc
32	217	8701	17	67af0fc66e7f6bb2991c060d
33	217	8702	16	67af0f016e7f6bb2991c05de
34	217	8703	15	67af0f086e7f6bb2991c05e0
35	217	8704	15	67af0fc36e7f6bb2991c0607
36	217	8705	15	67af0fd16e7f6bb2991c0625
37	217	8706	14	67af0f0e6e7f6bb2991c05e2
38	217	8707	13	67af0f156e7f6bb2991c05e4
39	217	8708	12	67af0f1c6e7f6bb2991c05e6
40	217	8709	11	67af0f236e7f6bb2991c05e8
41	217	8710	9	67af0f326e7f6bb2991c05ea
42	217	8711	9	67af0fc16e7f6bb2991c0601
43	217	8712	7	67af0f386e7f6bb2991c05ec
44	217	8713	7	67af0fd46e7f6bb2991c062b
45	217	8714	7	67af10186e7f6bb2991c0643
46	217	8715	16	67af0f426e7f6bb2991c05ee
47	217	8716	16	67af104a6e7f6bb2991c066b
48	217	8717	16	67af10166e7f6bb2991c063d
1	218	8718	7	67af0e1b6e7f6bb2991c05be
2	218	8719	7	67af10426e7f6bb2991c0665
3	218	8720	7	67af0fad6e7f6bb2991c05f5
4	218	8721	7	67af101d6e7f6bb2991c064f
5	218	8722	9	67af0e2f6e7f6bb2991c05c0
6	218	8723	17	67af10216e7f6bb2991c0652
7	218	8724	10	67af0e386e7f6bb2991c05c2
8	218	8725	10	67af10406e7f6bb2991c065f
9	218	8726	11	67af0e426e7f6bb2991c05c4
10	218	8727	11	67af0fce6e7f6bb2991c061f
11	218	8728	11	67af0fcc6e7f6bb2991c0619
12	218	8729	12	67af0e4a6e7f6bb2991c05c6
13	218	8730	13	67af0e526e7f6bb2991c05c8
14	218	8731	14	67af0e596e7f6bb2991c05ca
15	218	8732	15	67af0e606e7f6bb2991c05cc
16	218	8733	10	67af102c6e7f6bb2991c0654
17	218	8734	16	67af0e666e7f6bb2991c05ce
18	218	8735	16	67af103d6e7f6bb2991c0659
19	218	8736	16	67af0fc96e7f6bb2991c0613
20	218	8737	17	67af0e6e6e7f6bb2991c05d0
21	218	8738	17	67af10556e7f6bb2991c067d
22	218	8739	18	67af0e756e7f6bb2991c05d2
23	218	8740	18	67af10516e7f6bb2991c0677
24	218	8741	18	67af101b6e7f6bb2991c0649
25	218	8742	18	67af0fda6e7f6bb2991c0631
26	218	8743	20	67af0e7c6e7f6bb2991c05d4
27	218	8744	20	67af0ee46e7f6bb2991c05d8
28	218	8745	18	67af0ef26e7f6bb2991c05da
29	218	8746	18	67af104d6e7f6bb2991c0671
30	218	8747	18	67af0fdf6e7f6bb2991c0637
31	218	8748	17	67af0efa6e7f6bb2991c05dc
32	218	8749	17	67af0fc66e7f6bb2991c060d
33	218	8750	16	67af0f016e7f6bb2991c05de
34	218	8751	15	67af0f086e7f6bb2991c05e0
35	218	8752	15	67af0fc36e7f6bb2991c0607
36	218	8753	15	67af0fd16e7f6bb2991c0625
37	218	8754	14	67af0f0e6e7f6bb2991c05e2
38	218	8755	13	67af0f156e7f6bb2991c05e4
39	218	8756	12	67af0f1c6e7f6bb2991c05e6
40	218	8757	11	67af0f236e7f6bb2991c05e8
41	218	8758	9	67af0f326e7f6bb2991c05ea
42	218	8759	9	67af0fc16e7f6bb2991c0601
43	218	8760	7	67af0f386e7f6bb2991c05ec
44	218	8761	7	67af0fd46e7f6bb2991c062b
45	218	8762	7	67af10186e7f6bb2991c0643
46	218	8763	16	67af0f426e7f6bb2991c05ee
47	218	8764	16	67af104a6e7f6bb2991c066b
48	218	8765	16	67af10166e7f6bb2991c063d
\.


--
-- Data for Name: _pages_v_blocks_world_student_block; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_world_student_block (_order, _parent_id, _path, id, background_image_id, title, _uuid, block_name) FROM stdin;
1	75	version.layout	293	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	77	version.layout	306	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	78	version.layout	307	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	79	version.layout	311	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	80	version.layout	312	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
10	81	version.layout	313	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	82	version.layout	314	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	83	version.layout	317	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	84	version.layout	318	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	85	version.layout	319	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	86	version.layout	321	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	87	version.layout	322	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	73	version.layout	284	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	74	version.layout	285	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	40	version.layout	189	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	41	version.layout	190	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	42	version.layout	191	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	43	version.layout	192	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	44	version.layout	193	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	45	version.layout	195	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	46	version.layout	196	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	47	version.layout	197	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	48	version.layout	198	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	49	version.layout	199	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	50	version.layout	200	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	51	version.layout	209	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	52	version.layout	210	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	53	version.layout	213	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	54	version.layout	214	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	55	version.layout	224	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	56	version.layout	225	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	57	version.layout	242	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	58	version.layout	243	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	59	version.layout	246	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	60	version.layout	247	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	61	version.layout	249	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	62	version.layout	250	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	71	version.layout	281	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	72	version.layout	282	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	63	version.layout	254	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	64	version.layout	255	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	76	version.layout	294	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	65	version.layout	259	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	66	version.layout	260	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	67	version.layout	262	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	68	version.layout	263	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	69	version.layout	269	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	70	version.layout	270	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	88	version.layout	325	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
1	89	version.layout	326	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	67af05fb6e7f6bb2991c0534	\N
\.


--
-- Data for Name: _pages_v_blocks_world_student_block_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_blocks_world_student_block_items (_order, _parent_id, id, image_id, title, z_index, top, bottom, "right", "left", _uuid) FROM stdin;
1	319	1559	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	319	1560	28	USA Univ	10	400	\N	\N	225	67af061d6e7f6bb2991c054d
3	319	1561	28	Liverpool Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	319	1562	28	Monash Univ	10	594	\N	\N	1194	67af061a6e7f6bb2991c0541
5	319	1563	28	Anna Medical	10	416	\N	\N	1033	67af06196e7f6bb2991c053b
6	319	1564	30	USA	10	335	\N	\N	1300	67af2d4361ca467582eb75f5
1	281	1342	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	281	1343	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	281	1344	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	281	1345	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	281	1346	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
1	282	1347	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	282	1348	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	282	1349	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	282	1350	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	282	1351	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
1	284	1357	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	284	1358	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	284	1359	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	284	1360	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	284	1361	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
1	306	1481	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	306	1482	28	USA Univ	10	400	\N	\N	225	67af061d6e7f6bb2991c054d
3	306	1483	28	Liverpool Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	306	1484	28	Monash Univ	10	594	\N	\N	1194	67af061a6e7f6bb2991c0541
5	306	1485	28	Anna Medical	10	416	\N	\N	1033	67af06196e7f6bb2991c053b
6	306	1486	30	USA	10	\N	\N	\N	1300	67af2d4361ca467582eb75f5
1	307	1487	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	307	1488	28	USA Univ	10	400	\N	\N	225	67af061d6e7f6bb2991c054d
3	307	1489	28	Liverpool Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	307	1490	28	Monash Univ	10	594	\N	\N	1194	67af061a6e7f6bb2991c0541
5	307	1491	28	Anna Medical	10	416	\N	\N	1033	67af06196e7f6bb2991c053b
6	307	1492	30	USA	10	335	\N	\N	1300	67af2d4361ca467582eb75f5
1	311	1511	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	311	1512	28	USA Univ	10	400	\N	\N	225	67af061d6e7f6bb2991c054d
3	311	1513	28	Liverpool Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	311	1514	28	Monash Univ	10	594	\N	\N	1194	67af061a6e7f6bb2991c0541
5	311	1515	28	Anna Medical	10	416	\N	\N	1033	67af06196e7f6bb2991c053b
6	311	1516	30	USA	10	335	\N	\N	1300	67af2d4361ca467582eb75f5
1	312	1517	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	312	1518	28	USA Univ	10	400	\N	\N	225	67af061d6e7f6bb2991c054d
3	312	1519	28	Liverpool Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	312	1520	28	Monash Univ	10	594	\N	\N	1194	67af061a6e7f6bb2991c0541
5	312	1521	28	Anna Medical	10	416	\N	\N	1033	67af06196e7f6bb2991c053b
1	294	1409	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	294	1410	28	USA Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	294	1411	28	Liverpool Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	294	1412	28	Monash Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	294	1413	28	Anna Medical	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
6	294	1414	30	USA	10	\N	\N	\N	\N	67af2d4361ca467582eb75f5
6	312	1522	30	USA	10	335	\N	\N	1300	67af2d4361ca467582eb75f5
1	314	1529	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	314	1530	28	USA Univ	10	400	\N	\N	225	67af061d6e7f6bb2991c054d
3	314	1531	28	Liverpool Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	314	1532	28	Monash Univ	10	594	\N	\N	1194	67af061a6e7f6bb2991c0541
5	314	1533	28	Anna Medical	10	416	\N	\N	1033	67af06196e7f6bb2991c053b
6	314	1534	30	USA	10	335	\N	\N	1300	67af2d4361ca467582eb75f5
1	317	1547	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	317	1548	28	USA Univ	10	400	\N	\N	225	67af061d6e7f6bb2991c054d
3	317	1549	28	Liverpool Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	317	1550	28	Monash Univ	10	594	\N	\N	1194	67af061a6e7f6bb2991c0541
5	317	1551	28	Anna Medical	10	416	\N	\N	1033	67af06196e7f6bb2991c053b
6	317	1552	30	USA	10	335	\N	\N	1300	67af2d4361ca467582eb75f5
1	318	1553	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	318	1554	28	USA Univ	10	400	\N	\N	225	67af061d6e7f6bb2991c054d
3	318	1555	28	Liverpool Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	318	1556	28	Monash Univ	10	594	\N	\N	1194	67af061a6e7f6bb2991c0541
5	318	1557	28	Anna Medical	10	416	\N	\N	1033	67af06196e7f6bb2991c053b
6	318	1558	30	USA	10	335	\N	\N	1300	67af2d4361ca467582eb75f5
1	191	892	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	191	893	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	191	894	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	191	895	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	191	896	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
1	321	1571	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	321	1572	28	USA Univ	10	400	\N	\N	225	67af061d6e7f6bb2991c054d
3	321	1573	28	Liverpool Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	321	1574	28	Monash Univ	10	594	\N	\N	1194	67af061a6e7f6bb2991c0541
5	321	1575	28	Anna Medical	10	416	\N	\N	1033	67af06196e7f6bb2991c053b
1	192	897	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	192	898	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	192	899	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	192	900	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	192	901	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
6	321	1576	30	USA	10	335	\N	\N	1300	67af2d4361ca467582eb75f5
1	193	902	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	193	903	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	193	904	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	193	905	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	193	906	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
1	325	1595	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	325	1596	28	USA Univ	10	400	\N	\N	225	67af061d6e7f6bb2991c054d
3	325	1597	28	Liverpool Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
1	195	912	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	195	913	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	195	914	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	195	915	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	195	916	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
1	196	917	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	196	918	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	196	919	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	196	920	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	196	921	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
1	197	922	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	197	923	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	197	924	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	197	925	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	197	926	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
1	198	927	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	198	928	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	198	929	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	198	930	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	198	931	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
1	199	932	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	199	933	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	199	934	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	199	935	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
4	325	1598	28	Monash Univ	10	594	\N	\N	1194	67af061a6e7f6bb2991c0541
5	325	1599	28	Anna Medical	10	416	\N	\N	1033	67af06196e7f6bb2991c053b
6	325	1600	30	USA	10	335	\N	\N	1300	67af2d4361ca467582eb75f5
1	189	882	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	189	883	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	189	884	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	189	885	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	189	886	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
1	190	887	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	190	888	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	190	889	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	190	890	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	190	891	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
5	199	936	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
1	200	937	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	200	938	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	200	939	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	200	940	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	200	941	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
1	322	1577	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	322	1578	28	USA Univ	10	400	\N	\N	225	67af061d6e7f6bb2991c054d
1	254	1207	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	254	1208	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	254	1209	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	254	1210	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	254	1211	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
1	255	1212	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	255	1213	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	255	1214	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	255	1215	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	255	1216	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
1	209	982	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	209	983	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	209	984	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	209	985	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	209	986	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
1	210	987	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	210	988	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	210	989	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	210	990	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	210	991	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
1	213	1002	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	213	1003	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	213	1004	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	213	1005	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	213	1006	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
1	214	1007	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	214	1008	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	214	1009	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	214	1010	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	214	1011	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
1	242	1147	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	242	1148	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	242	1149	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	242	1150	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	242	1151	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
1	243	1152	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	243	1153	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	243	1154	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	243	1155	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	243	1156	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
1	224	1057	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	224	1058	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	224	1059	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	224	1060	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	224	1061	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
1	225	1062	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	225	1063	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	225	1064	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	225	1065	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	225	1066	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
1	246	1167	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	246	1168	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	246	1169	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	246	1170	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	246	1171	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
1	247	1172	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	247	1173	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	247	1174	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	247	1175	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	247	1176	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
1	249	1182	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	249	1183	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	249	1184	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	249	1185	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	249	1186	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
1	250	1187	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	250	1188	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	250	1189	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	250	1190	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	250	1191	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
3	322	1579	28	Liverpool Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	322	1580	28	Monash Univ	10	594	\N	\N	1194	67af061a6e7f6bb2991c0541
5	322	1581	28	Anna Medical	10	416	\N	\N	1033	67af06196e7f6bb2991c053b
6	322	1582	30	USA	10	335	\N	\N	1300	67af2d4361ca467582eb75f5
1	326	1601	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	326	1602	28	USA Univ	10	400	\N	\N	225	67af061d6e7f6bb2991c054d
3	326	1603	28	Liverpool Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	326	1604	28	Monash Univ	10	594	\N	\N	1194	67af061a6e7f6bb2991c0541
1	285	1362	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	285	1363	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	285	1364	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	285	1365	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	285	1366	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
1	259	1232	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	259	1233	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	259	1234	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	259	1235	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	259	1236	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
1	260	1237	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	260	1238	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	260	1239	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	260	1240	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	260	1241	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
5	326	1605	28	Anna Medical	10	416	\N	\N	1033	67af06196e7f6bb2991c053b
6	326	1606	30	USA	10	335	\N	\N	1300	67af2d4361ca467582eb75f5
1	262	1247	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	262	1248	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	262	1249	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	262	1250	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	262	1251	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
1	263	1252	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	263	1253	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	263	1254	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	263	1255	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	263	1256	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
1	269	1282	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	269	1283	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	269	1284	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	269	1285	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	269	1286	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
1	270	1287	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	270	1288	28	Canada Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	270	1289	28	Canada Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	270	1290	28	Canada Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	270	1291	28	Canada Univ	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
1	293	1403	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	293	1404	28	USA Univ	10	\N	\N	\N	\N	67af061d6e7f6bb2991c054d
3	293	1405	28	Liverpool Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	293	1406	28	Monash Univ	10	\N	\N	\N	\N	67af061a6e7f6bb2991c0541
5	293	1407	28	Anna Medical	10	\N	\N	\N	\N	67af06196e7f6bb2991c053b
6	293	1408	\N	USA	10	\N	\N	\N	\N	67af2d4361ca467582eb75f5
1	313	1523	28	Canada Univ	10	\N	\N	\N	\N	67af061e6e7f6bb2991c0553
2	313	1524	28	USA Univ	10	400	\N	\N	225	67af061d6e7f6bb2991c054d
3	313	1525	28	Liverpool Univ	10	\N	\N	\N	\N	67af061c6e7f6bb2991c0547
4	313	1526	28	Monash Univ	10	594	\N	\N	1194	67af061a6e7f6bb2991c0541
5	313	1527	28	Anna Medical	10	416	\N	\N	1033	67af06196e7f6bb2991c053b
6	313	1528	30	USA	10	335	\N	\N	1300	67af2d4361ca467582eb75f5
\.


--
-- Data for Name: _pages_v_rels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_rels (id, "order", parent_id, path, pages_id, posts_id, categories_id) FROM stdin;
\.


--
-- Data for Name: _pages_v_version_hero_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._pages_v_version_hero_links (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label, link_appearance, _uuid) FROM stdin;
1	66	584	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	66	585	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	77	676	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	77	677	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	78	678	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	78	679	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	82	692	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	82	693	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	83	698	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	83	699	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	84	700	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	84	701	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	86	706	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	86	707	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	89	716	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	89	717	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	40	442	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	40	443	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	41	444	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	41	445	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	42	446	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	42	447	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	43	448	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	43	449	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	44	450	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	44	451	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	45	454	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	45	455	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	46	456	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	46	457	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	47	458	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	47	459	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	48	460	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	48	461	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	49	462	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	49	463	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	50	464	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	50	465	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	53	490	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	53	491	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	54	492	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	54	493	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	67	588	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	67	589	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	68	590	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	68	591	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	51	482	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	51	483	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	52	484	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	52	485	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	69	602	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	69	603	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	55	512	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	55	513	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	56	514	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	56	515	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	70	604	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	70	605	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	79	686	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	79	687	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	80	688	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	80	689	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	81	690	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	81	691	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	85	702	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	85	703	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	87	708	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	87	709	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	88	714	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	88	715	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	71	626	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	71	627	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	72	628	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	72	629	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	73	632	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	73	633	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	74	634	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	74	635	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	57	548	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	57	549	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	58	550	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	58	551	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	59	556	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	59	557	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	60	558	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	60	559	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	61	562	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	61	563	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	62	564	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	62	565	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	63	572	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	63	573	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	64	574	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	64	575	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	75	650	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	75	651	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	76	652	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	76	653	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
1	65	582	custom	\N	/join	Begin Your Journey	default	67af05ce6e7f6bb2991c0530
2	65	583	custom	\N	/download	Download Prep Guide	outline	67af05e36e7f6bb2991c0532
\.


--
-- Data for Name: _posts_v; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._posts_v (id, parent_id, version_title, version_hero_image_id, version_content, version_meta_title, version_meta_image_id, version_meta_description, version_published_at, version_slug, version_slug_lock, version_updated_at, version_created_at, version__status, created_at, updated_at, latest, autosave) FROM stdin;
\.


--
-- Data for Name: _posts_v_rels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._posts_v_rels (id, "order", parent_id, path, posts_id, categories_id, users_id) FROM stdin;
\.


--
-- Data for Name: _posts_v_version_populated_authors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._posts_v_version_populated_authors (_order, _parent_id, id, _uuid, name) FROM stdin;
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (id, title, slug, slug_lock, parent_id, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: categories_breadcrumbs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories_breadcrumbs (_order, _parent_id, id, doc_id, url, label) FROM stdin;
\.


--
-- Data for Name: footer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.footer (id, description, copyright, updated_at, created_at) FROM stdin;
1	Think Study provides expert education consultancy services to help students achieve their study abroad dreams. Let us guide you to a brighter future!	┬⌐ 2025 Think Study. All rights reserved. | Powered by: Mahadhi	2025-02-14 17:00:42.328+05:30	2025-02-14 17:00:42.322+05:30
\.


--
-- Data for Name: footer_about; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.footer_about (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label) FROM stdin;
1	1	67af28bc61ca467582eb75df	custom	\N	/story	Our Story
2	1	67af28c161ca467582eb75e1	custom	\N	/benefits	Benefits
3	1	67af28c661ca467582eb75e3	custom	\N	/team	Team
4	1	67af28cd61ca467582eb75e5	custom	\N	/careers	Careers
\.


--
-- Data for Name: footer_help; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.footer_help (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label) FROM stdin;
1	1	67af28d361ca467582eb75e7	custom	\N	/faq	FAQs
2	1	67af28de61ca467582eb75e9	custom	\N	/contact	Contact Us
\.


--
-- Data for Name: footer_legal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.footer_legal (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label) FROM stdin;
1	1	67af290a61ca467582eb75eb	custom	\N	/terms	Terms & Conditions
2	1	67af292661ca467582eb75ed	custom	\N	/privacy	Privacy Policy
\.


--
-- Data for Name: footer_rels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.footer_rels (id, "order", parent_id, path, pages_id, posts_id) FROM stdin;
\.


--
-- Data for Name: footer_services; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.footer_services (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label) FROM stdin;
1	1	67af288761ca467582eb75d7	custom	\N	/emailMarketing	Email Marketing
2	1	67af28a861ca467582eb75d9	custom	\N	/campaigns	Campaigns
3	1	67af28ad61ca467582eb75db	custom	\N	/branding	Branding
4	1	67af28b261ca467582eb75dd	custom	\N	/offline	Offline
\.


--
-- Data for Name: footer_social; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.footer_social (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label) FROM stdin;
1	1	67af293b61ca467582eb75ef	custom	\N	https://www.facebook.com/	facebook
2	1	67af294461ca467582eb75f1	custom	\N	https://x.com/	twitter
3	1	67af294961ca467582eb75f3	custom	\N	https://www.instagram.com/	instagram
\.


--
-- Data for Name: form_submissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.form_submissions (id, form_id, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: form_submissions_submission_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.form_submissions_submission_data (_order, _parent_id, id, field, value) FROM stdin;
\.


--
-- Data for Name: forms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.forms (id, title, submit_button_label, confirmation_type, confirmation_message, redirect_url, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: forms_blocks_checkbox; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.forms_blocks_checkbox (_order, _parent_id, _path, id, name, label, width, required, default_value, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_country; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.forms_blocks_country (_order, _parent_id, _path, id, name, label, width, required, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_email; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.forms_blocks_email (_order, _parent_id, _path, id, name, label, width, required, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_message; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.forms_blocks_message (_order, _parent_id, _path, id, message, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_number; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.forms_blocks_number (_order, _parent_id, _path, id, name, label, width, default_value, required, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_select; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.forms_blocks_select (_order, _parent_id, _path, id, name, label, width, default_value, required, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_select_options; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.forms_blocks_select_options (_order, _parent_id, id, label, value) FROM stdin;
\.


--
-- Data for Name: forms_blocks_state; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.forms_blocks_state (_order, _parent_id, _path, id, name, label, width, required, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_text; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.forms_blocks_text (_order, _parent_id, _path, id, name, label, width, default_value, required, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_textarea; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.forms_blocks_textarea (_order, _parent_id, _path, id, name, label, width, default_value, required, block_name) FROM stdin;
\.


--
-- Data for Name: forms_emails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.forms_emails (_order, _parent_id, id, email_to, cc, bcc, reply_to, email_from, subject, message) FROM stdin;
\.


--
-- Data for Name: header; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.header (id, updated_at, created_at) FROM stdin;
1	2025-02-14 15:49:36.79+05:30	2025-02-14 15:48:40.06+05:30
\.


--
-- Data for Name: header_nav_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.header_nav_items (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label) FROM stdin;
1	1	67af18790ce74758d4658b3b	custom	\N	/why-us	Why Us
2	1	67af18810ce74758d4658b3d	custom	\N	/study	Study In
3	1	67af188e0ce74758d4658b3f	custom	\N	/ielts	Ace IELTS
4	1	67af18950ce74758d4658b41	custom	\N	/alumni	Alumni Connect
5	1	67af189b0ce74758d4658b43	custom	\N	/loans	Loans & Scholarships
\.


--
-- Data for Name: header_rels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.header_rels (id, "order", parent_id, path, pages_id, posts_id) FROM stdin;
\.


--
-- Data for Name: media; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.media (id, alt, caption, updated_at, created_at, url, thumbnail_u_r_l, filename, mime_type, filesize, width, height, focal_x, focal_y, sizes_thumbnail_url, sizes_thumbnail_width, sizes_thumbnail_height, sizes_thumbnail_mime_type, sizes_thumbnail_filesize, sizes_thumbnail_filename, sizes_square_url, sizes_square_width, sizes_square_height, sizes_square_mime_type, sizes_square_filesize, sizes_square_filename, sizes_small_url, sizes_small_width, sizes_small_height, sizes_small_mime_type, sizes_small_filesize, sizes_small_filename, sizes_medium_url, sizes_medium_width, sizes_medium_height, sizes_medium_mime_type, sizes_medium_filesize, sizes_medium_filename, sizes_large_url, sizes_large_width, sizes_large_height, sizes_large_mime_type, sizes_large_filesize, sizes_large_filename, sizes_xlarge_url, sizes_xlarge_width, sizes_xlarge_height, sizes_xlarge_mime_type, sizes_xlarge_filesize, sizes_xlarge_filename, sizes_og_url, sizes_og_width, sizes_og_height, sizes_og_mime_type, sizes_og_filesize, sizes_og_filename) FROM stdin;
6	world_map	\N	2025-02-14 13:44:16.295+05:30	2025-02-14 13:44:15.797+05:30	\N	\N	world_map-1.png	image/png	61567	1213	488	50	50	\N	300	121	image/png	9983	world_map-1-300x121.png	\N	500	500	image/png	29195	world_map-1-500x500.png	\N	600	241	image/png	26013	world_map-1-600x241.png	\N	900	362	image/png	45827	world_map-1-900x362.png	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1200	630	image/png	94655	world_map-1-1200x630.png
7	college_image	\N	2025-02-14 13:44:16.411+05:30	2025-02-14 13:44:16.391+05:30	\N	\N	Dorset-College.png-1.png	image/png	1979	36	35	50	50	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
8	download_image	\N	2025-02-14 13:44:16.606+05:30	2025-02-14 13:44:16.493+05:30	\N	\N	download-1.png	image/png	6160	512	512	50	50	\N	300	300	image/png	4817	download-1-300x300.png	\N	500	500	image/png	9090	download-1-500x500.png	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
9	college_image	\N	2025-02-14 13:44:16.726+05:30	2025-02-14 13:44:16.701+05:30	\N	\N	Dundalk-Institute-of-Technology.png-1.png	image/png	1822	36	35	50	50	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
10	college_image	\N	2025-02-14 13:44:16.813+05:30	2025-02-14 13:44:16.793+05:30	\N	\N	EDC.png-1.png	image/png	1244	36	35	50	50	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
11	college_image	\N	2025-02-14 13:44:16.903+05:30	2025-02-14 13:44:16.879+05:30	\N	\N	EIDM-Fashion-&-Luxury-School.png-1.png	image/png	2038	36	35	50	50	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
12	college_image	\N	2025-02-14 13:44:17+05:30	2025-02-14 13:44:16.975+05:30	\N	\N	EM-Normandie.png-1.png	image/png	2463	36	35	50	50	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
13	college_image	\N	2025-02-14 13:44:17.096+05:30	2025-02-14 13:44:17.071+05:30	\N	\N	ESAIP.png-1.png	image/png	1925	36	35	50	50	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
14	college_image	\N	2025-02-14 13:44:17.211+05:30	2025-02-14 13:44:17.183+05:30	\N	\N	ESCE-Business-School.png-1.png	image/png	1584	36	35	50	50	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
15	college_image	\N	2025-02-14 13:44:17.303+05:30	2025-02-14 13:44:17.279+05:30	\N	\N	ESIGELEC.png-1.png	image/png	1698	36	35	50	50	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
16	college_image	\N	2025-02-14 13:44:17.411+05:30	2025-02-14 13:44:17.385+05:30	\N	\N	ESILV.png-1.png	image/png	2554	36	35	50	50	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
17	college_image	\N	2025-02-14 13:44:17.525+05:30	2025-02-14 13:44:17.498+05:30	\N	\N	ESLSCA-Business-School.png-1.png	image/png	2611	36	35	50	50	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
18	college_image	\N	2025-02-14 13:44:17.621+05:30	2025-02-14 13:44:17.601+05:30	\N	\N	Geneva-Business-School.png-1.png	image/png	3038	36	35	50	50	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
19	graduate_img	\N	2025-02-14 13:44:18.107+05:30	2025-02-14 13:44:17.692+05:30	\N	\N	graduate-1.png	image/png	421760	582	639	50	50	\N	300	329	image/png	125197	graduate-1-300x329.png	\N	500	500	image/png	303335	graduate-1-500x500.png	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1200	630	image/png	759971	graduate-1-1200x630.png
20	college_image	\N	2025-02-14 13:44:18.258+05:30	2025-02-14 13:44:18.191+05:30	\N	\N	Heriot-Watt-University.png-1.png	image/png	2580	36	35	50	50	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
21	universities_image	\N	2025-02-14 13:44:18.359+05:30	2025-02-14 13:44:18.335+05:30	\N	\N	ljmulogotransparent2 2-2.png	image/png	7966	204	74	50	50	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
22	logo	\N	2025-02-14 13:44:18.458+05:30	2025-02-14 13:44:18.441+05:30	\N	\N	logo-1.png	image/png	2022	142	32	50	50	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
23	testimonial_image	\N	2025-02-14 13:44:18.674+05:30	2025-02-14 13:44:18.544+05:30	\N	\N	pexels-mikael-blomkvist-6476365 1-300x359-1.png	image/png	257479	300	359	50	50	\N	300	359	image/png	257479	pexels-mikael-blomkvist-6476365 1-300x359-1-300x359.png	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
24	department_image	\N	2025-02-14 13:44:18.772+05:30	2025-02-14 13:44:18.746+05:30	\N	\N	pngwing.com 1-1.png	image/png	7022	120	120	50	50	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
25	universities_image	\N	2025-02-14 13:44:18.928+05:30	2025-02-14 13:44:18.879+05:30	\N	\N	RVU_logo 1-1.png	image/png	12282	176	88	50	50	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
26	profile	\N	2025-02-14 13:44:19.211+05:30	2025-02-14 13:44:19.104+05:30	\N	\N	study_abroad_girl-1.png	image/png	231280	320	400	50	50	\N	300	375	image/png	209557	study_abroad_girl-1-300x375.png	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
27	profile	\N	2025-02-14 13:44:19.393+05:30	2025-02-14 13:44:19.274+05:30	\N	\N	Untitled (21) 1-1.png	image/png	198487	593	380	50	50	\N	300	192	image/png	55434	Untitled (21) 1-1-300x192.png	\N	500	500	image/png	254096	Untitled (21) 1-1-500x500.png	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
28	profile	\N	2025-02-14 13:44:19.503+05:30	2025-02-14 13:44:19.467+05:30	\N	\N	Vector-5.svg	image/svg+xml	567768	48	48	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
29	profile	\N	2025-02-14 13:44:19.599+05:30	2025-02-14 13:44:19.564+05:30	\N	\N	Vector-6.svg	image/svg+xml	261575	48	48	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
30	profile	\N	2025-02-14 13:44:19.708+05:30	2025-02-14 13:44:19.675+05:30	\N	\N	Vector-7.svg	image/svg+xml	396008	48	48	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
31	profile	\N	2025-02-14 13:44:19.825+05:30	2025-02-14 13:44:19.792+05:30	\N	\N	Vector-8.svg	image/svg+xml	474926	48	48	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
32	counseling_img	\N	2025-02-14 14:53:13.899+05:30	2025-02-14 14:53:12.576+05:30	\N	\N	AR505885 2 2-1.png	image/png	1083492	1296	460	50	50	\N	300	106	image/png	65559	AR505885 2 2-1-300x106.png	\N	500	500	image/png	278644	AR505885 2 2-1-500x500.png	\N	600	213	image/png	245802	AR505885 2 2-1-600x213.png	\N	900	319	image/png	552303	AR505885 2 2-1-900x319.png	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1200	630	image/png	949610	AR505885 2 2-1-1200x630.png
33	ielts_image	\N	2025-02-14 15:51:18.964+05:30	2025-02-14 15:51:18.853+05:30	\N	\N	ielts.png.png	image/png	4089	99	38	50	50	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
34	ielts_image	\N	2025-02-14 15:53:59.826+05:30	2025-02-14 15:53:59.193+05:30	\N	\N	ielts iamge-1.png	image/png	533205	576	522	50	50	\N	300	272	image/png	172340	ielts iamge-1-300x272.png	\N	500	500	image/png	455283	ielts iamge-1-500x500.png	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
35	logo	\N	2025-02-14 16:50:29.11+05:30	2025-02-14 16:50:29.084+05:30	\N	\N	Group-1.svg	image/svg+xml	13089	242	55	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
36	brand_logo	\N	2025-02-15 15:19:35.801+05:30	2025-02-15 15:19:35.451+05:30	\N	\N	logo.jpg	image/jpeg	6249	361	117	50	50	\N	300	97	image/jpeg	4468	logo-300x97.jpg	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages (id, title, hero_type, hero_heading_content, hero_heading_font_family, hero_heading_font_size, hero_description_content, hero_description_font_family, hero_description_font_size, hero_media_id, meta_title, meta_image_id, meta_description, published_at, slug, slug_lock, updated_at, created_at, _status) FROM stdin;
4	Home	highImpact	Turn Your | Study Abroad | <br />\nDreams Into Reality	Inter	1rem	Get into top universities and master every stepΓÇöfrom application to acceptanceΓÇöwith our expert-backed 5-step mentorship.ΓÇ¿DonΓÇÖt just dream itΓÇöachieve it with us.	Inter	1rem	\N	Think Study: 25 Years of Expert Education Consulting	22	Think Study leverages 25 years of expertise to help 2500+ Indian students each year access premier undergraduate and global postgraduate programs.	2025-02-14 15:13:51.125+05:30	home	t	2025-02-15 15:29:59.864+05:30	2025-02-14 14:28:13.925+05:30	published
\.


--
-- Data for Name: pages_blocks_appointment_block; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_appointment_block (_order, _parent_id, _path, id, left_content_title, left_content_sub_title, left_content_highlight_text, left_content_extra_text, left_content_button_text, left_content_button_url, right_schedule_date, right_schedule_day, bottom_text, block_name) FROM stdin;
2	4	layout	67af06636e7f6bb2991c0556	Get Insider Insights	Meet University Representatives 	Live & In-Person!	Got questions? Get answers! Book your face-to-face  appointment at our office and clear all your doubts.*	Book Your Appointment Now!	/book	2025-02-15 17:00:00+05:30	Saturday	* Limited slots available ΓÇô first come, first served!	\N
\.


--
-- Data for Name: pages_blocks_appointment_block_left_content_paragraphs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_appointment_block_left_content_paragraphs (_order, _parent_id, id, text) FROM stdin;
1	67af06636e7f6bb2991c0556	67af067c6e7f6bb2991c0558	Discuss courses & career paths
2	67af06636e7f6bb2991c0556	67af06856e7f6bb2991c055a	Get real insights from students already studying there
3	67af06636e7f6bb2991c0556	67af068c6e7f6bb2991c055c	 Understand your next steps with expert guidance
\.


--
-- Data for Name: pages_blocks_appointment_block_right_schedule_slots; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_appointment_block_right_schedule_slots (_order, _parent_id, id, "time") FROM stdin;
1	67af06636e7f6bb2991c0556	67af06a36e7f6bb2991c055e	11am to 2pm
2	67af06636e7f6bb2991c0556	67af06b16e7f6bb2991c0560	2pm to 5pm
\.


--
-- Data for Name: pages_blocks_appointment_block_right_universities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_appointment_block_right_universities (_order, _parent_id, id, img_id, alt) FROM stdin;
1	67af06636e7f6bb2991c0556	67af06b86e7f6bb2991c0562	25	\N
2	67af06636e7f6bb2991c0556	67af06c26e7f6bb2991c0564	21	\N
\.


--
-- Data for Name: pages_blocks_archive; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_archive (_order, _parent_id, _path, id, intro_content, populate_by, relation_to, "limit", block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_content; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_content (_order, _parent_id, _path, id, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_content_columns; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_content_columns (_order, _parent_id, id, size, rich_text, enable_link, link_type, link_new_tab, link_url, link_label, link_appearance) FROM stdin;
\.


--
-- Data for Name: pages_blocks_counseling_block; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_counseling_block (_order, _parent_id, _path, id, heading, description, button_text, button_url, background_image_id, block_name) FROM stdin;
4	4	layout	67af099e6e7f6bb2991c056c	LetΓÇÖs Chart Your PathΓÇöGet Your Study Abroad Guide Today!	Book a FREE 30-minute counseling session with our experienced advisor to find the right study path for you  and get all your doubts cleared.	Schedule Counseling	/counseling	32	\N
\.


--
-- Data for Name: pages_blocks_counseling_block_cards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_counseling_block_cards (_order, _parent_id, id, title, course_name, card_image_id, icon_id) FROM stdin;
1	67af099e6e7f6bb2991c056c	67af0b886e7f6bb2991c056e	Selecting the best Choices available	MEDICAL	24	8
2	67af099e6e7f6bb2991c056c	67af0cce6e7f6bb2991c05a3	Selecting the best Choices available	MEDICAL	24	8
3	67af099e6e7f6bb2991c056c	67af0ccc6e7f6bb2991c0589	Selecting the best Choices available	MEDICAL	24	8
4	67af099e6e7f6bb2991c056c	67b02aeaba0984afdd898446	Selecting the best Choices available	MEDICAL	24	8
5	67af099e6e7f6bb2991c056c	67b02aecba0984afdd898460	Selecting the best Choices available	MEDICAL	24	8
6	67af099e6e7f6bb2991c056c	67b02af2ba0984afdd89847a	Selecting the best Choices available	MEDICAL	24	8
7	67af099e6e7f6bb2991c056c	67b02af7ba0984afdd898494	Selecting the best Choices available	MEDICAL	24	8
\.


--
-- Data for Name: pages_blocks_counseling_block_cards_countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_counseling_block_cards_countries (_order, _parent_id, id, name) FROM stdin;
1	67af0b886e7f6bb2991c056e	67af0c716e7f6bb2991c0570	US
2	67af0b886e7f6bb2991c056e	67af0c746e7f6bb2991c0572	UK
3	67af0b886e7f6bb2991c056e	67af0c766e7f6bb2991c0574	NZ
4	67af0b886e7f6bb2991c056e	67af0c796e7f6bb2991c0576	AUS
5	67af0b886e7f6bb2991c056e	67af0c7b6e7f6bb2991c0578	EUROPE
1	67af0cce6e7f6bb2991c05a3	67af0cce6e7f6bb2991c05a5	US
2	67af0cce6e7f6bb2991c05a3	67af0cce6e7f6bb2991c05a7	UK
3	67af0cce6e7f6bb2991c05a3	67af0cce6e7f6bb2991c05a9	NZ
4	67af0cce6e7f6bb2991c05a3	67af0cce6e7f6bb2991c05ab	AUS
5	67af0cce6e7f6bb2991c05a3	67af0cce6e7f6bb2991c05ad	EUROPE
1	67af0ccc6e7f6bb2991c0589	67af0ccc6e7f6bb2991c058b	US
2	67af0ccc6e7f6bb2991c0589	67af0ccc6e7f6bb2991c058d	UK
3	67af0ccc6e7f6bb2991c0589	67af0ccc6e7f6bb2991c058f	NZ
4	67af0ccc6e7f6bb2991c0589	67af0ccc6e7f6bb2991c0591	AUS
5	67af0ccc6e7f6bb2991c0589	67af0ccc6e7f6bb2991c0593	EUROPE
1	67b02aeaba0984afdd898446	67b02aeaba0984afdd898448	US
2	67b02aeaba0984afdd898446	67b02aeaba0984afdd89844a	UK
3	67b02aeaba0984afdd898446	67b02aeaba0984afdd89844c	NZ
4	67b02aeaba0984afdd898446	67b02aeaba0984afdd89844e	AUS
5	67b02aeaba0984afdd898446	67b02aeaba0984afdd898450	EUROPE
1	67b02aecba0984afdd898460	67b02aecba0984afdd898462	US
2	67b02aecba0984afdd898460	67b02aecba0984afdd898464	UK
3	67b02aecba0984afdd898460	67b02aecba0984afdd898466	NZ
4	67b02aecba0984afdd898460	67b02aecba0984afdd898468	AUS
5	67b02aecba0984afdd898460	67b02aecba0984afdd89846a	EUROPE
1	67b02af2ba0984afdd89847a	67b02af2ba0984afdd89847c	US
2	67b02af2ba0984afdd89847a	67b02af2ba0984afdd89847e	UK
3	67b02af2ba0984afdd89847a	67b02af2ba0984afdd898480	NZ
4	67b02af2ba0984afdd89847a	67b02af2ba0984afdd898482	AUS
5	67b02af2ba0984afdd89847a	67b02af2ba0984afdd898484	EUROPE
1	67b02af7ba0984afdd898494	67b02af7ba0984afdd898496	US
2	67b02af7ba0984afdd898494	67b02af7ba0984afdd898498	UK
3	67b02af7ba0984afdd898494	67b02af7ba0984afdd89849a	NZ
4	67b02af7ba0984afdd898494	67b02af7ba0984afdd89849c	AUS
5	67b02af7ba0984afdd898494	67b02af7ba0984afdd89849e	EUROPE
\.


--
-- Data for Name: pages_blocks_cta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_cta (_order, _parent_id, _path, id, rich_text, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_cta_block; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_cta_block (_order, _parent_id, _path, id, tagline, image_id, brand_logo_id, block_name) FROM stdin;
10	4	layout	67af24e061ca467582eb75c9	 Call or WhatsApp	27	35	\N
\.


--
-- Data for Name: pages_blocks_cta_block_offices; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_cta_block_offices (_order, _parent_id, id, location) FROM stdin;
1	67af24e061ca467582eb75c9	67af250461ca467582eb75d3	Chennai Office
2	67af24e061ca467582eb75c9	67af250761ca467582eb75d5	Tirupati Office
\.


--
-- Data for Name: pages_blocks_cta_block_phone_numbers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_cta_block_phone_numbers (_order, _parent_id, id, number) FROM stdin;
1	67af24e061ca467582eb75c9	67af24e461ca467582eb75cb	9169169494
2	67af24e061ca467582eb75c9	67af24eb61ca467582eb75cd	9025186185
3	67af24e061ca467582eb75c9	67af24f061ca467582eb75cf	9169169494
4	67af24e061ca467582eb75c9	67af24f961ca467582eb75d1	9025186185
\.


--
-- Data for Name: pages_blocks_cta_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_cta_links (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label, link_appearance) FROM stdin;
\.


--
-- Data for Name: pages_blocks_form_block; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_form_block (_order, _parent_id, _path, id, form_id, enable_intro, intro_content, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_get_started_block; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_get_started_block (_order, _parent_id, _path, id, heading, title, footer_text, image_id, block_name) FROM stdin;
8	4	layout	67af233461ca467582eb75bb	Let's make it happen!	Start your journey today!	And so much more to make your journey hassle-free!	19	\N
\.


--
-- Data for Name: pages_blocks_get_started_block_features; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_get_started_block_features (_order, _parent_id, id, text) FROM stdin;
1	67af233461ca467582eb75bb	67af233f61ca467582eb75bd	Get expert guidanceΓÇöask questions & interact with an experienced counselor!
2	67af233461ca467582eb75bb	67af234761ca467582eb75bf	Stay informed with the latest study abroad news & scholarship updates
3	67af233461ca467582eb75bb	67af234a61ca467582eb75c1	Track your applications & offers with real-time updates
\.


--
-- Data for Name: pages_blocks_ielts_block; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_ielts_block (_order, _parent_id, _path, id, title, subtitle, description, ielts_text, ielts_image_id, learning_type_title, learning_type_subtitle, cta_button_text, cta_button_href, image_id, block_name) FROM stdin;
7	4	layout	67af18fc0ce74758d4658b45	Master English. Ace IELTS.	Prep Smarter, Score Higher.	At Think Study, weΓÇÖve designed a unique hybrid approach, led by British Council-certified tutors, to help you achieve your desired band score.\nOur structured program offers three study modes, guiding you every step of the wayΓÇöfrom training and mock tests to test registration.\nPlus, youΓÇÖll get access to real exam resources to strengthen your prep and maximize your success.	IELTS	33	Hybrid Learning	Classroom Or Online (Seamlessly Combined)	Join The Classes	/join	34	\N
\.


--
-- Data for Name: pages_blocks_ielts_block_features; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_ielts_block_features (_order, _parent_id, id, text) FROM stdin;
1	67af18fc0ce74758d4658b45	67af19750ce74758d4658b4d	Personalized training tailored to your strengths   and weaknesses
2	67af18fc0ce74758d4658b45	67af197e0ce74758d4658b4f	Expert-led strategies to boost your IELTS score
3	67af18fc0ce74758d4658b45	67af19830ce74758d4658b51	Full-length mock tests with detailed feedback
4	67af18fc0ce74758d4658b45	67af19890ce74758d4658b53	One-on-one speaking and writing improvement  sessions
5	67af18fc0ce74758d4658b45	67af19900ce74758d4658b55	Flexible online and offline learning options
\.


--
-- Data for Name: pages_blocks_ielts_block_study_modes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_ielts_block_study_modes (_order, _parent_id, id, label, value) FROM stdin;
1	67af18fc0ce74758d4658b45	67af19240ce74758d4658b47	Masterclass	Masterclass
2	67af18fc0ce74758d4658b45	67af193e0ce74758d4658b49	Live Group Classes	Live Group Classes
3	67af18fc0ce74758d4658b45	67af196c0ce74758d4658b4b	In-Person Classes	In-Person Classes
\.


--
-- Data for Name: pages_blocks_map_block; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_map_block (_order, _parent_id, _path, id, heading, block_name) FROM stdin;
9	4	layout	67af23a961ca467582eb75c3	Visit Us	\N
\.


--
-- Data for Name: pages_blocks_map_block_offices; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_map_block_offices (_order, _parent_id, id, name, address, map_iframe) FROM stdin;
1	67af23a961ca467582eb75c3	67af23ae61ca467582eb75c5	Think Study Chennai Office	2nd Floor, Yealchur Plaza, \nOpp Dr MGR University, Above KFC,\n126, Poonamalle High Road, \nMaduravoyal,\nChennai, Tamilnadu 600095	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3886.4835139312336!2d80.17513478429012!3d13.068513979903363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94f553c50024d89%3A0x2620ac677ba7844d!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531257444!5m2!1sen!2sin
2	67af23a961ca467582eb75c3	67af248261ca467582eb75c7	Think Study Tirupati Office 	401, Triveni plaza, \n4th floor,\nVk Puram\nVaikuntapuram arch  \nTirupati, Andhra Pradesh 517502	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3877.6971722757417!2d79.40492777574627!3d13.615298200437861!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a4d4b3bb496cb37%3A0xbe346a646f6d6fa0!2sThink%20Study!5e0!3m2!1sen!2sin!4v1739531417014!5m2!1sen!2sin
\.


--
-- Data for Name: pages_blocks_media_block; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_media_block (_order, _parent_id, _path, id, media_id, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_study_abroad_block; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_study_abroad_block (_order, _parent_id, _path, id, heading, subheading, description, title_content, title_font, title_size, title_description, block_name) FROM stdin;
6	4	layout	67af112e0ce74758d4658b1f	Get your offer letter from your dream university!	Start your study abroad journey with us	Studying abroad can feel overwhelming, but we make it simple. From | Medical (UG & PG)| and |STEM (UG & PG)| to |Management|, <br/>\n|Finance, Data Science, AI| and other |Emerging Fields|, including specialized MasterΓÇÖs degrees.	Our Pathway	Inter	1rem	Turning your dream of studying abroad into realityΓÇöguiding you from the first thought to the moment you step into your university. \nEvery step, every decision, with expert mentorship by your side.	\N
\.


--
-- Data for Name: pages_blocks_study_abroad_block_cards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_study_abroad_block_cards (_order, _parent_id, id, course_description, description, button_text, button_link, image_id, image_position) FROM stdin;
1	67af112e0ce74758d4658b1f	67af11b60ce74758d4658b21	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left
2	67af112e0ce74758d4658b1f	67af176f0ce74758d4658b26	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right
3	67af112e0ce74758d4658b1f	67af17770ce74758d4658b2c	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left
4	67af112e0ce74758d4658b1f	67af177a0ce74758d4658b32	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	right
5	67af112e0ce74758d4658b1f	67af17850ce74758d4658b38	choose the right <br/>\ncourse and major, figure out <br/> students profile	Dive into a world of diverse destinations, prestigious universities, and exciting courses	Get Course List	/getCourseList	26	left
\.


--
-- Data for Name: pages_blocks_testimonials_block; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_testimonials_block (_order, _parent_id, _path, id, heading, description, block_name) FROM stdin;
3	4	layout	67af07126e7f6bb2991c0566	What Students & Parents Say About Their Journey with Us	Study, Explore, Succeed: How Our Students Made the Most of Studying Abroad	\N
\.


--
-- Data for Name: pages_blocks_testimonials_block_testimonials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_testimonials_block_testimonials (_order, _parent_id, id, image_id, review, name, course, university_image_id) FROM stdin;
1	67af07126e7f6bb2991c0566	67af071f6e7f6bb2991c0568	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	Tim David	M.S in Data Science	25
2	67af07126e7f6bb2991c0566	67af087c6e7f6bb2991c056a	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21
3	67af07126e7f6bb2991c0566	67b03d52ba0984afdd8984aa	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21
4	67af07126e7f6bb2991c0566	67b03d4fba0984afdd8984a4	23	nally smooth. I want to extend my heartfelt thanks \nto Riya from the Chennai branch, who handled my\n visa application with utmost professionalism. Riya \nprovided a clear picture of the entire process and \nguided me every step of the way. Her expertise and \nassistance were invaluable, and I am incredibly grateful\n for her support. I also want to thank Vineetha, \nthe counselor at the Kerala branch, for her help. \nRiya truly stands out as an excellent counselor, and \nIΓÇÖm thankful for her guidance throughout this journey. \nShe is number one in my book!	David Morgan	M.A Economics	21
\.


--
-- Data for Name: pages_blocks_universities_block; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_universities_block (_order, _parent_id, _path, id, main_heading, sub_heading, description, block_name) FROM stdin;
5	4	layout	67af0df96e7f6bb2991c05b4	Discover World-Class Institutions ΓÇö With Scholarships & Fee Waivers!	Turn Your College Dream Into Reality	Get access to top universities plus access to top institutions through our university tie-ups.	\N
\.


--
-- Data for Name: pages_blocks_universities_block_stats; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_universities_block_stats (_order, _parent_id, id, value, label) FROM stdin;
1	67af0df96e7f6bb2991c05b4	67af0e056e7f6bb2991c05b6	500+	University Tie-ups
2	67af0df96e7f6bb2991c05b4	67af0e0a6e7f6bb2991c05b8	10,000+	Students in our group
3	67af0df96e7f6bb2991c05b4	67af0e106e7f6bb2991c05ba	20+	years experienced Mentors
4	67af0df96e7f6bb2991c05b4	67af0e156e7f6bb2991c05bc	Current Student	as Mentors
\.


--
-- Data for Name: pages_blocks_universities_block_universities_images; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_universities_block_universities_images (_order, _parent_id, id, image_id) FROM stdin;
1	67af0df96e7f6bb2991c05b4	67af0e1b6e7f6bb2991c05be	7
2	67af0df96e7f6bb2991c05b4	67af10426e7f6bb2991c0665	7
3	67af0df96e7f6bb2991c05b4	67af0fad6e7f6bb2991c05f5	7
4	67af0df96e7f6bb2991c05b4	67af101d6e7f6bb2991c064f	7
5	67af0df96e7f6bb2991c05b4	67af0e2f6e7f6bb2991c05c0	9
6	67af0df96e7f6bb2991c05b4	67af10216e7f6bb2991c0652	17
7	67af0df96e7f6bb2991c05b4	67af0e386e7f6bb2991c05c2	10
8	67af0df96e7f6bb2991c05b4	67af10406e7f6bb2991c065f	10
9	67af0df96e7f6bb2991c05b4	67af0e426e7f6bb2991c05c4	11
10	67af0df96e7f6bb2991c05b4	67af0fce6e7f6bb2991c061f	11
11	67af0df96e7f6bb2991c05b4	67af0fcc6e7f6bb2991c0619	11
12	67af0df96e7f6bb2991c05b4	67af0e4a6e7f6bb2991c05c6	12
13	67af0df96e7f6bb2991c05b4	67af0e526e7f6bb2991c05c8	13
14	67af0df96e7f6bb2991c05b4	67af0e596e7f6bb2991c05ca	14
15	67af0df96e7f6bb2991c05b4	67af0e606e7f6bb2991c05cc	15
16	67af0df96e7f6bb2991c05b4	67af102c6e7f6bb2991c0654	10
17	67af0df96e7f6bb2991c05b4	67af0e666e7f6bb2991c05ce	16
18	67af0df96e7f6bb2991c05b4	67af103d6e7f6bb2991c0659	16
19	67af0df96e7f6bb2991c05b4	67af0fc96e7f6bb2991c0613	16
20	67af0df96e7f6bb2991c05b4	67af0e6e6e7f6bb2991c05d0	17
21	67af0df96e7f6bb2991c05b4	67af10556e7f6bb2991c067d	17
22	67af0df96e7f6bb2991c05b4	67af0e756e7f6bb2991c05d2	18
23	67af0df96e7f6bb2991c05b4	67af10516e7f6bb2991c0677	18
24	67af0df96e7f6bb2991c05b4	67af101b6e7f6bb2991c0649	18
25	67af0df96e7f6bb2991c05b4	67af0fda6e7f6bb2991c0631	18
26	67af0df96e7f6bb2991c05b4	67af0e7c6e7f6bb2991c05d4	20
27	67af0df96e7f6bb2991c05b4	67af0ee46e7f6bb2991c05d8	20
28	67af0df96e7f6bb2991c05b4	67af0ef26e7f6bb2991c05da	18
29	67af0df96e7f6bb2991c05b4	67af104d6e7f6bb2991c0671	18
30	67af0df96e7f6bb2991c05b4	67af0fdf6e7f6bb2991c0637	18
31	67af0df96e7f6bb2991c05b4	67af0efa6e7f6bb2991c05dc	17
32	67af0df96e7f6bb2991c05b4	67af0fc66e7f6bb2991c060d	17
33	67af0df96e7f6bb2991c05b4	67af0f016e7f6bb2991c05de	16
34	67af0df96e7f6bb2991c05b4	67af0f086e7f6bb2991c05e0	15
35	67af0df96e7f6bb2991c05b4	67af0fc36e7f6bb2991c0607	15
36	67af0df96e7f6bb2991c05b4	67af0fd16e7f6bb2991c0625	15
37	67af0df96e7f6bb2991c05b4	67af0f0e6e7f6bb2991c05e2	14
38	67af0df96e7f6bb2991c05b4	67af0f156e7f6bb2991c05e4	13
39	67af0df96e7f6bb2991c05b4	67af0f1c6e7f6bb2991c05e6	12
40	67af0df96e7f6bb2991c05b4	67af0f236e7f6bb2991c05e8	11
41	67af0df96e7f6bb2991c05b4	67af0f326e7f6bb2991c05ea	9
42	67af0df96e7f6bb2991c05b4	67af0fc16e7f6bb2991c0601	9
43	67af0df96e7f6bb2991c05b4	67af0f386e7f6bb2991c05ec	7
44	67af0df96e7f6bb2991c05b4	67af0fd46e7f6bb2991c062b	7
45	67af0df96e7f6bb2991c05b4	67af10186e7f6bb2991c0643	7
46	67af0df96e7f6bb2991c05b4	67af0f426e7f6bb2991c05ee	16
47	67af0df96e7f6bb2991c05b4	67af104a6e7f6bb2991c066b	16
48	67af0df96e7f6bb2991c05b4	67af10166e7f6bb2991c063d	16
\.


--
-- Data for Name: pages_blocks_world_student_block; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_world_student_block (_order, _parent_id, _path, id, background_image_id, title, block_name) FROM stdin;
1	4	layout	67af05fb6e7f6bb2991c0534	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "97% of our students secured admission in under 4 weeksΓÇö95% landed 3+ offers. Will you be next?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	\N
\.


--
-- Data for Name: pages_blocks_world_student_block_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_blocks_world_student_block_items (_order, _parent_id, id, image_id, title, z_index, top, bottom, "right", "left") FROM stdin;
1	67af05fb6e7f6bb2991c0534	67af061e6e7f6bb2991c0553	28	Canada Univ	10	\N	\N	\N	\N
2	67af05fb6e7f6bb2991c0534	67af061d6e7f6bb2991c054d	28	USA Univ	10	400	\N	\N	225
3	67af05fb6e7f6bb2991c0534	67af061c6e7f6bb2991c0547	28	Liverpool Univ	10	\N	\N	\N	\N
4	67af05fb6e7f6bb2991c0534	67af061a6e7f6bb2991c0541	28	Monash Univ	10	594	\N	\N	1194
5	67af05fb6e7f6bb2991c0534	67af06196e7f6bb2991c053b	28	Anna Medical	10	416	\N	\N	1033
6	67af05fb6e7f6bb2991c0534	67af2d4361ca467582eb75f5	30	USA	10	335	\N	\N	1300
\.


--
-- Data for Name: pages_hero_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_hero_links (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label, link_appearance) FROM stdin;
1	4	67af05ce6e7f6bb2991c0530	custom	\N	/join	Begin Your Journey	default
2	4	67af05e36e7f6bb2991c0532	custom	\N	/download	Download Prep Guide	outline
\.


--
-- Data for Name: pages_rels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_rels (id, "order", parent_id, path, pages_id, posts_id, categories_id) FROM stdin;
\.


--
-- Data for Name: payload_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payload_jobs (id, input, completed_at, total_tried, has_error, error, task_slug, queue, wait_until, processing, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: payload_jobs_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payload_jobs_log (_order, _parent_id, id, executed_at, completed_at, task_slug, task_i_d, input, output, state, error) FROM stdin;
\.


--
-- Data for Name: payload_locked_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payload_locked_documents (id, global_slug, updated_at, created_at) FROM stdin;
247	\N	2025-02-14 15:43:23.105+05:30	2025-02-14 15:43:23.112+05:30
\.


--
-- Data for Name: payload_locked_documents_rels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payload_locked_documents_rels (id, "order", parent_id, path, pages_id, posts_id, media_id, categories_id, users_id, redirects_id, forms_id, form_submissions_id, search_id, payload_jobs_id) FROM stdin;
\.


--
-- Data for Name: payload_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payload_migrations (id, name, batch, updated_at, created_at) FROM stdin;
1	20250213_120245_initial_migration	1	2025-02-14 11:09:29.855+05:30	2025-02-14 11:09:27.688+05:30
2	dev	-1	2025-02-17 13:32:30.093+05:30	2025-02-14 11:11:46.018+05:30
\.


--
-- Data for Name: payload_preferences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payload_preferences (id, key, value, updated_at, created_at) FROM stdin;
7	categories-list	{}	2025-02-15 10:10:30.874+05:30	2025-02-15 10:10:30.87+05:30
3	media-list	{"limit": 10}	2025-02-14 13:55:56.436+05:30	2025-02-14 11:15:20.331+05:30
1	pages-list	{"limit": 10}	2025-02-14 14:28:05.389+05:30	2025-02-14 11:12:30.593+05:30
5	collection-pages-4	{"fields": {"layout": {"collapsed": ["67af05fb6e7f6bb2991c0534", "67af06636e7f6bb2991c0556", "67af07126e7f6bb2991c0566", "67af099e6e7f6bb2991c056c", "67af0df96e7f6bb2991c05b4", "67af112e0ce74758d4658b1f", "67af18fc0ce74758d4658b45", "67af233461ca467582eb75bb", "67af23a961ca467582eb75c3"]}, "_index-1": {"tabIndex": 0}, "layout.0.items": {"collapsed": ["67af061e6e7f6bb2991c0553", "67af061d6e7f6bb2991c054d", "67af061c6e7f6bb2991c0547", "67af061a6e7f6bb2991c0541", "67af06196e7f6bb2991c053b", "67af2d4361ca467582eb75f5"]}, "layout.3.cards": {"collapsed": ["67af0b886e7f6bb2991c056e", "67af0cce6e7f6bb2991c05a3", "67af0ccc6e7f6bb2991c0589", "67b02aeaba0984afdd898445", "67b02aecba0984afdd89845f", "67b02af2ba0984afdd898479"]}, "layout.4.stats": {"collapsed": []}, "layout.5.cards": {"collapsed": []}, "layout.3.cards.0.countries": {"collapsed": ["67af0c986e7f6bb2991c057a"]}, "layout.4.universitiesImages": {"collapsed": ["67af0e1b6e7f6bb2991c05be", "67af0fad6e7f6bb2991c05f5", "67af0e2f6e7f6bb2991c05c0", "67af0e386e7f6bb2991c05c2", "67af0e426e7f6bb2991c05c4", "67af0fce6e7f6bb2991c061f", "67af0fcc6e7f6bb2991c0619", "67af0e4a6e7f6bb2991c05c6", "67af0e526e7f6bb2991c05c8", "67af0e596e7f6bb2991c05ca", "67af0e606e7f6bb2991c05cc", "67af0e666e7f6bb2991c05ce", "67af0fc96e7f6bb2991c0613", "67af0e6e6e7f6bb2991c05d0", "67af0e756e7f6bb2991c05d2", "67af0fda6e7f6bb2991c0631", "67af0e7c6e7f6bb2991c05d4", "67af0ee46e7f6bb2991c05d8", "67af0ef26e7f6bb2991c05da", "67af0fdf6e7f6bb2991c0637", "67af0efa6e7f6bb2991c05dc", "67af0fc66e7f6bb2991c060d", "67af0f016e7f6bb2991c05de", "67af0f086e7f6bb2991c05e0", "67af0fc36e7f6bb2991c0607", "67af0fd16e7f6bb2991c0625", "67af0f0e6e7f6bb2991c05e2", "67af0f156e7f6bb2991c05e4", "67af0f1c6e7f6bb2991c05e6", "67af0f236e7f6bb2991c05e8", "67af0f326e7f6bb2991c05ea", "67af0fc16e7f6bb2991c0601", "67af0f386e7f6bb2991c05ec", "67af0fd46e7f6bb2991c062b", "67af0f426e7f6bb2991c05ee", "67af0fbe6e7f6bb2991c05fb"]}}}	2025-02-15 15:44:16.904+05:30	2025-02-14 14:29:35.021+05:30
6	collection-pages-4	{"fields": {"layout": {"collapsed": ["67af06636e7f6bb2991c0556", "67af07126e7f6bb2991c0566", "67af099e6e7f6bb2991c056c", "67af0df96e7f6bb2991c05b4", "67af112e0ce74758d4658b1f", "67af18fc0ce74758d4658b45", "67af233461ca467582eb75bb"]}, "_index-1": {"tabIndex": 1}, "layout.0.items": {"collapsed": ["67af061e6e7f6bb2991c0553", "67af061c6e7f6bb2991c0547", "67af061a6e7f6bb2991c0541", "67af06196e7f6bb2991c053b"]}, "layout.3.cards": {"collapsed": ["67af0b886e7f6bb2991c056e"]}, "layout.4.stats": {"collapsed": []}, "layout.5.cards": {"collapsed": ["67af11b60ce74758d4658b21"]}, "layout.3.cards.0.countries": {"collapsed": ["67af0c986e7f6bb2991c057a"]}, "layout.4.universitiesImages": {"collapsed": ["67af0e1b6e7f6bb2991c05be", "67af0fad6e7f6bb2991c05f5", "67af0e2f6e7f6bb2991c05c0", "67af0e386e7f6bb2991c05c2", "67af0e426e7f6bb2991c05c4", "67af0fce6e7f6bb2991c061f", "67af0fcc6e7f6bb2991c0619", "67af0e4a6e7f6bb2991c05c6", "67af0e526e7f6bb2991c05c8", "67af0e596e7f6bb2991c05ca", "67af0e606e7f6bb2991c05cc", "67af0e666e7f6bb2991c05ce", "67af0fc96e7f6bb2991c0613", "67af0e6e6e7f6bb2991c05d0", "67af0e756e7f6bb2991c05d2", "67af0fda6e7f6bb2991c0631", "67af0e7c6e7f6bb2991c05d4", "67af0ee46e7f6bb2991c05d8", "67af0ef26e7f6bb2991c05da", "67af0fdf6e7f6bb2991c0637", "67af0efa6e7f6bb2991c05dc", "67af0fc66e7f6bb2991c060d", "67af0f016e7f6bb2991c05de", "67af0f086e7f6bb2991c05e0", "67af0fc36e7f6bb2991c0607", "67af0fd16e7f6bb2991c0625", "67af0f0e6e7f6bb2991c05e2", "67af0f156e7f6bb2991c05e4", "67af0f1c6e7f6bb2991c05e6", "67af0f236e7f6bb2991c05e8", "67af0f326e7f6bb2991c05ea", "67af0fc16e7f6bb2991c0601", "67af0f386e7f6bb2991c05ec", "67af0fd46e7f6bb2991c062b", "67af0f426e7f6bb2991c05ee", "67af0fbe6e7f6bb2991c05fb"]}}}	2025-02-14 17:31:53.426+05:30	2025-02-14 17:31:53.428+05:30
\.


--
-- Data for Name: payload_preferences_rels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payload_preferences_rels (id, "order", parent_id, path, users_id) FROM stdin;
145	\N	7	user	1
19	\N	3	user	1
25	\N	1	user	1
164	\N	5	user	1
118	\N	6	user	1
\.


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts (id, title, hero_image_id, content, meta_title, meta_image_id, meta_description, published_at, slug, slug_lock, updated_at, created_at, _status) FROM stdin;
\.


--
-- Data for Name: posts_populated_authors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts_populated_authors (_order, _parent_id, id, name) FROM stdin;
\.


--
-- Data for Name: posts_rels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts_rels (id, "order", parent_id, path, posts_id, categories_id, users_id) FROM stdin;
\.


--
-- Data for Name: redirects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.redirects (id, "from", to_type, to_url, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: redirects_rels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.redirects_rels (id, "order", parent_id, path, pages_id, posts_id) FROM stdin;
\.


--
-- Data for Name: search; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.search (id, title, priority, slug, meta_title, meta_description, meta_image_id, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: search_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.search_categories (_order, _parent_id, id, relation_to, title) FROM stdin;
\.


--
-- Data for Name: search_rels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.search_rels (id, "order", parent_id, path, posts_id) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, updated_at, created_at, email, reset_password_token, reset_password_expiration, salt, hash, login_attempts, lock_until) FROM stdin;
1	admin	2025-02-14 11:12:16.771+05:30	2025-02-14 11:12:16.375+05:30	admin@think.study	\N	\N	52938cc26b0ae0fe55d88977bc431cf82cd50a3dadeb594b683e3263e9e6d418	797b98282d21ddd6eb11913af3dfb47e7ab5aaa6d6381f471bd32227625f46bfc1d54feaba28a194251190c8c1a07c4988819369db56fdc85215cb6de84f35bc2ced5515bfef478452bf97906fc48fb5dffa9b7345a37f5f3229db1847d30d704fa1e8666b0bb89311d8a7a437e527286e1664eb9ab12b38b65404cfd3c17880f86b69c9441193952b68a1c89d292cfce811e3b64627671e649a7e27b4e86de61f9286a84527b75aa34b6f48b4c32372f92687166e6e4c382013a8b7c0ad7b8fe8b9d995bd7e1c03c7019dd66ba5c12d2dd89a8e19c7b532865f7c14ca73bfc606efb49d448a4613bb664682dfe9f7ee01202bd94813b235120dd74c8e0bc6aff3df7ade0eff4035da20c14b5ba505ed6ad49f177af42006071c014f95a8748e726d1b7414a8ee9feb36e10ef8c28fcae33b588244a849e0765e0b40c172647e0e9ded76c0b319abef1838ac34b238e88214b3f816dae7fc1952d15a9a09893524282e39bba1508e9fd291fbb87ea45c31bb421edc8fe82c37108e779d957631e8028262a8d0c7ffc29b5b9676b542558fa9e7feb9fd12b50ab27f7ddef7401e2c0157bd90891ad7ba117ac6d5178cd355ebb41e8af18c13e1848b4245db5ccf8245534b1c103754ffd472d3d0382b34dbc6e0517760cc35b91b249c349037705073332f61d6fe2a5346406ff31e576b99fb2fce0520f89cdf03ff7418b1afec	0	\N
\.


--
-- Name: _pages_v_blocks_appointment_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_appointment_block_id_seq', 265, true);


--
-- Name: _pages_v_blocks_appointment_block_left_content_paragraph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_appointment_block_left_content_paragraph_id_seq', 777, true);


--
-- Name: _pages_v_blocks_appointment_block_right_schedule_slots_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_appointment_block_right_schedule_slots_id_seq', 507, true);


--
-- Name: _pages_v_blocks_appointment_block_right_universities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_appointment_block_right_universities_id_seq', 505, true);


--
-- Name: _pages_v_blocks_archive_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_archive_id_seq', 1, false);


--
-- Name: _pages_v_blocks_content_columns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_content_columns_id_seq', 1, false);


--
-- Name: _pages_v_blocks_content_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_content_id_seq', 1, false);


--
-- Name: _pages_v_blocks_counseling_block_cards_countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_counseling_block_cards_countries_id_seq', 3637, true);


--
-- Name: _pages_v_blocks_counseling_block_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_counseling_block_cards_id_seq', 730, true);


--
-- Name: _pages_v_blocks_counseling_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_counseling_block_id_seq', 238, true);


--
-- Name: _pages_v_blocks_cta_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_cta_block_id_seq', 56, true);


--
-- Name: _pages_v_blocks_cta_block_offices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_cta_block_offices_id_seq', 100, true);


--
-- Name: _pages_v_blocks_cta_block_phone_numbers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_cta_block_phone_numbers_id_seq', 213, true);


--
-- Name: _pages_v_blocks_cta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_cta_id_seq', 1, true);


--
-- Name: _pages_v_blocks_cta_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_cta_links_id_seq', 1, false);


--
-- Name: _pages_v_blocks_form_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_form_block_id_seq', 1, false);


--
-- Name: _pages_v_blocks_get_started_block_features_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_get_started_block_features_id_seq', 223, true);


--
-- Name: _pages_v_blocks_get_started_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_get_started_block_id_seq', 80, true);


--
-- Name: _pages_v_blocks_ielts_block_features_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_ielts_block_features_id_seq', 445, true);


--
-- Name: _pages_v_blocks_ielts_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_ielts_block_id_seq', 101, true);


--
-- Name: _pages_v_blocks_ielts_block_study_modes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_ielts_block_study_modes_id_seq', 287, true);


--
-- Name: _pages_v_blocks_map_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_map_block_id_seq', 71, true);


--
-- Name: _pages_v_blocks_map_block_offices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_map_block_offices_id_seq', 132, true);


--
-- Name: _pages_v_blocks_media_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_media_block_id_seq', 1, false);


--
-- Name: _pages_v_blocks_study_abroad_block_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_study_abroad_block_cards_id_seq', 594, true);


--
-- Name: _pages_v_blocks_study_abroad_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_study_abroad_block_id_seq', 163, true);


--
-- Name: _pages_v_blocks_testimonials_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_testimonials_block_id_seq', 249, true);


--
-- Name: _pages_v_blocks_testimonials_block_testimonials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_testimonials_block_testimonials_id_seq', 505, true);


--
-- Name: _pages_v_blocks_universities_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_universities_block_id_seq', 222, true);


--
-- Name: _pages_v_blocks_universities_block_stats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_universities_block_stats_id_seq', 874, true);


--
-- Name: _pages_v_blocks_universities_block_universities_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_universities_block_universities_images_id_seq', 8957, true);


--
-- Name: _pages_v_blocks_world_student_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_world_student_block_id_seq', 326, true);


--
-- Name: _pages_v_blocks_world_student_block_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_blocks_world_student_block_items_id_seq', 1606, true);


--
-- Name: _pages_v_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_id_seq', 89, true);


--
-- Name: _pages_v_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_rels_id_seq', 1, false);


--
-- Name: _pages_v_version_hero_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._pages_v_version_hero_links_id_seq', 717, true);


--
-- Name: _posts_v_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._posts_v_id_seq', 1, false);


--
-- Name: _posts_v_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._posts_v_rels_id_seq', 1, false);


--
-- Name: _posts_v_version_populated_authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public._posts_v_version_populated_authors_id_seq', 1, false);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, false);


--
-- Name: footer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.footer_id_seq', 1, true);


--
-- Name: footer_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.footer_rels_id_seq', 1, false);


--
-- Name: form_submissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.form_submissions_id_seq', 1, false);


--
-- Name: forms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.forms_id_seq', 1, false);


--
-- Name: header_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.header_id_seq', 1, true);


--
-- Name: header_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.header_rels_id_seq', 1, false);


--
-- Name: media_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.media_id_seq', 36, true);


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pages_id_seq', 4, true);


--
-- Name: pages_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pages_rels_id_seq', 1, false);


--
-- Name: payload_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payload_jobs_id_seq', 1, false);


--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payload_locked_documents_id_seq', 333, true);


--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payload_locked_documents_rels_id_seq', 663, true);


--
-- Name: payload_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payload_migrations_id_seq', 2, true);


--
-- Name: payload_preferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payload_preferences_id_seq', 7, true);


--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payload_preferences_rels_id_seq', 164, true);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_id_seq', 1, false);


--
-- Name: posts_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_rels_id_seq', 1, false);


--
-- Name: redirects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.redirects_id_seq', 1, false);


--
-- Name: redirects_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.redirects_rels_id_seq', 1, false);


--
-- Name: search_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.search_id_seq', 1, false);


--
-- Name: search_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.search_rels_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: _pages_v_blocks_appointment_block_left_content_paragraphs _pages_v_blocks_appointment_block_left_content_paragraphs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_appointment_block_left_content_paragraphs
    ADD CONSTRAINT _pages_v_blocks_appointment_block_left_content_paragraphs_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_appointment_block _pages_v_blocks_appointment_block_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_appointment_block
    ADD CONSTRAINT _pages_v_blocks_appointment_block_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_appointment_block_right_schedule_slots _pages_v_blocks_appointment_block_right_schedule_slots_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_appointment_block_right_schedule_slots
    ADD CONSTRAINT _pages_v_blocks_appointment_block_right_schedule_slots_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_appointment_block_right_universities _pages_v_blocks_appointment_block_right_universities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_appointment_block_right_universities
    ADD CONSTRAINT _pages_v_blocks_appointment_block_right_universities_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_archive _pages_v_blocks_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_archive
    ADD CONSTRAINT _pages_v_blocks_archive_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_content_columns _pages_v_blocks_content_columns_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_content_columns
    ADD CONSTRAINT _pages_v_blocks_content_columns_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_content _pages_v_blocks_content_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_content
    ADD CONSTRAINT _pages_v_blocks_content_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_counseling_block_cards_countries _pages_v_blocks_counseling_block_cards_countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_counseling_block_cards_countries
    ADD CONSTRAINT _pages_v_blocks_counseling_block_cards_countries_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_counseling_block_cards _pages_v_blocks_counseling_block_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_counseling_block_cards
    ADD CONSTRAINT _pages_v_blocks_counseling_block_cards_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_counseling_block _pages_v_blocks_counseling_block_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_counseling_block
    ADD CONSTRAINT _pages_v_blocks_counseling_block_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_cta_block_offices _pages_v_blocks_cta_block_offices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_cta_block_offices
    ADD CONSTRAINT _pages_v_blocks_cta_block_offices_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_cta_block_phone_numbers _pages_v_blocks_cta_block_phone_numbers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_cta_block_phone_numbers
    ADD CONSTRAINT _pages_v_blocks_cta_block_phone_numbers_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_cta_block _pages_v_blocks_cta_block_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_cta_block
    ADD CONSTRAINT _pages_v_blocks_cta_block_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_cta_links _pages_v_blocks_cta_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_cta_links
    ADD CONSTRAINT _pages_v_blocks_cta_links_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_cta _pages_v_blocks_cta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_cta
    ADD CONSTRAINT _pages_v_blocks_cta_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_form_block _pages_v_blocks_form_block_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_form_block
    ADD CONSTRAINT _pages_v_blocks_form_block_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_get_started_block_features _pages_v_blocks_get_started_block_features_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_get_started_block_features
    ADD CONSTRAINT _pages_v_blocks_get_started_block_features_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_get_started_block _pages_v_blocks_get_started_block_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_get_started_block
    ADD CONSTRAINT _pages_v_blocks_get_started_block_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_ielts_block_features _pages_v_blocks_ielts_block_features_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_ielts_block_features
    ADD CONSTRAINT _pages_v_blocks_ielts_block_features_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_ielts_block _pages_v_blocks_ielts_block_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_ielts_block
    ADD CONSTRAINT _pages_v_blocks_ielts_block_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_ielts_block_study_modes _pages_v_blocks_ielts_block_study_modes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_ielts_block_study_modes
    ADD CONSTRAINT _pages_v_blocks_ielts_block_study_modes_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_map_block_offices _pages_v_blocks_map_block_offices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_map_block_offices
    ADD CONSTRAINT _pages_v_blocks_map_block_offices_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_map_block _pages_v_blocks_map_block_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_map_block
    ADD CONSTRAINT _pages_v_blocks_map_block_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_media_block _pages_v_blocks_media_block_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_media_block
    ADD CONSTRAINT _pages_v_blocks_media_block_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_study_abroad_block_cards _pages_v_blocks_study_abroad_block_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_study_abroad_block_cards
    ADD CONSTRAINT _pages_v_blocks_study_abroad_block_cards_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_study_abroad_block _pages_v_blocks_study_abroad_block_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_study_abroad_block
    ADD CONSTRAINT _pages_v_blocks_study_abroad_block_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_testimonials_block _pages_v_blocks_testimonials_block_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_testimonials_block
    ADD CONSTRAINT _pages_v_blocks_testimonials_block_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_testimonials_block_testimonials _pages_v_blocks_testimonials_block_testimonials_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_testimonials_block_testimonials
    ADD CONSTRAINT _pages_v_blocks_testimonials_block_testimonials_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_universities_block _pages_v_blocks_universities_block_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_universities_block
    ADD CONSTRAINT _pages_v_blocks_universities_block_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_universities_block_stats _pages_v_blocks_universities_block_stats_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_universities_block_stats
    ADD CONSTRAINT _pages_v_blocks_universities_block_stats_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_universities_block_universities_images _pages_v_blocks_universities_block_universities_images_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_universities_block_universities_images
    ADD CONSTRAINT _pages_v_blocks_universities_block_universities_images_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_world_student_block_items _pages_v_blocks_world_student_block_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_world_student_block_items
    ADD CONSTRAINT _pages_v_blocks_world_student_block_items_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_world_student_block _pages_v_blocks_world_student_block_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_world_student_block
    ADD CONSTRAINT _pages_v_blocks_world_student_block_pkey PRIMARY KEY (id);


--
-- Name: _pages_v _pages_v_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v
    ADD CONSTRAINT _pages_v_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_rels _pages_v_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_version_hero_links _pages_v_version_hero_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_version_hero_links
    ADD CONSTRAINT _pages_v_version_hero_links_pkey PRIMARY KEY (id);


--
-- Name: _posts_v _posts_v_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._posts_v
    ADD CONSTRAINT _posts_v_pkey PRIMARY KEY (id);


--
-- Name: _posts_v_rels _posts_v_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._posts_v_rels
    ADD CONSTRAINT _posts_v_rels_pkey PRIMARY KEY (id);


--
-- Name: _posts_v_version_populated_authors _posts_v_version_populated_authors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._posts_v_version_populated_authors
    ADD CONSTRAINT _posts_v_version_populated_authors_pkey PRIMARY KEY (id);


--
-- Name: categories_breadcrumbs categories_breadcrumbs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories_breadcrumbs
    ADD CONSTRAINT categories_breadcrumbs_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: footer_about footer_about_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_about
    ADD CONSTRAINT footer_about_pkey PRIMARY KEY (id);


--
-- Name: footer_help footer_help_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_help
    ADD CONSTRAINT footer_help_pkey PRIMARY KEY (id);


--
-- Name: footer_legal footer_legal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_legal
    ADD CONSTRAINT footer_legal_pkey PRIMARY KEY (id);


--
-- Name: footer footer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer
    ADD CONSTRAINT footer_pkey PRIMARY KEY (id);


--
-- Name: footer_rels footer_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_rels
    ADD CONSTRAINT footer_rels_pkey PRIMARY KEY (id);


--
-- Name: footer_services footer_services_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_services
    ADD CONSTRAINT footer_services_pkey PRIMARY KEY (id);


--
-- Name: footer_social footer_social_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_social
    ADD CONSTRAINT footer_social_pkey PRIMARY KEY (id);


--
-- Name: form_submissions form_submissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.form_submissions
    ADD CONSTRAINT form_submissions_pkey PRIMARY KEY (id);


--
-- Name: form_submissions_submission_data form_submissions_submission_data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.form_submissions_submission_data
    ADD CONSTRAINT form_submissions_submission_data_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_checkbox forms_blocks_checkbox_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_blocks_checkbox
    ADD CONSTRAINT forms_blocks_checkbox_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_country forms_blocks_country_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_blocks_country
    ADD CONSTRAINT forms_blocks_country_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_email forms_blocks_email_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_blocks_email
    ADD CONSTRAINT forms_blocks_email_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_message forms_blocks_message_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_blocks_message
    ADD CONSTRAINT forms_blocks_message_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_number forms_blocks_number_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_blocks_number
    ADD CONSTRAINT forms_blocks_number_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_select_options forms_blocks_select_options_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_blocks_select_options
    ADD CONSTRAINT forms_blocks_select_options_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_select forms_blocks_select_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_blocks_select
    ADD CONSTRAINT forms_blocks_select_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_state forms_blocks_state_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_blocks_state
    ADD CONSTRAINT forms_blocks_state_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_text forms_blocks_text_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_blocks_text
    ADD CONSTRAINT forms_blocks_text_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_textarea forms_blocks_textarea_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_blocks_textarea
    ADD CONSTRAINT forms_blocks_textarea_pkey PRIMARY KEY (id);


--
-- Name: forms_emails forms_emails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_emails
    ADD CONSTRAINT forms_emails_pkey PRIMARY KEY (id);


--
-- Name: forms forms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms
    ADD CONSTRAINT forms_pkey PRIMARY KEY (id);


--
-- Name: header_nav_items header_nav_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.header_nav_items
    ADD CONSTRAINT header_nav_items_pkey PRIMARY KEY (id);


--
-- Name: header header_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.header
    ADD CONSTRAINT header_pkey PRIMARY KEY (id);


--
-- Name: header_rels header_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.header_rels
    ADD CONSTRAINT header_rels_pkey PRIMARY KEY (id);


--
-- Name: media media_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.media
    ADD CONSTRAINT media_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_appointment_block_left_content_paragraphs pages_blocks_appointment_block_left_content_paragraphs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_appointment_block_left_content_paragraphs
    ADD CONSTRAINT pages_blocks_appointment_block_left_content_paragraphs_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_appointment_block pages_blocks_appointment_block_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_appointment_block
    ADD CONSTRAINT pages_blocks_appointment_block_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_appointment_block_right_schedule_slots pages_blocks_appointment_block_right_schedule_slots_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_appointment_block_right_schedule_slots
    ADD CONSTRAINT pages_blocks_appointment_block_right_schedule_slots_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_appointment_block_right_universities pages_blocks_appointment_block_right_universities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_appointment_block_right_universities
    ADD CONSTRAINT pages_blocks_appointment_block_right_universities_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_archive pages_blocks_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_archive
    ADD CONSTRAINT pages_blocks_archive_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_content_columns pages_blocks_content_columns_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_content_columns
    ADD CONSTRAINT pages_blocks_content_columns_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_content pages_blocks_content_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_content
    ADD CONSTRAINT pages_blocks_content_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_counseling_block_cards_countries pages_blocks_counseling_block_cards_countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_counseling_block_cards_countries
    ADD CONSTRAINT pages_blocks_counseling_block_cards_countries_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_counseling_block_cards pages_blocks_counseling_block_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_counseling_block_cards
    ADD CONSTRAINT pages_blocks_counseling_block_cards_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_counseling_block pages_blocks_counseling_block_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_counseling_block
    ADD CONSTRAINT pages_blocks_counseling_block_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_cta_block_offices pages_blocks_cta_block_offices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_cta_block_offices
    ADD CONSTRAINT pages_blocks_cta_block_offices_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_cta_block_phone_numbers pages_blocks_cta_block_phone_numbers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_cta_block_phone_numbers
    ADD CONSTRAINT pages_blocks_cta_block_phone_numbers_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_cta_block pages_blocks_cta_block_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_cta_block
    ADD CONSTRAINT pages_blocks_cta_block_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_cta_links pages_blocks_cta_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_cta_links
    ADD CONSTRAINT pages_blocks_cta_links_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_cta pages_blocks_cta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_cta
    ADD CONSTRAINT pages_blocks_cta_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_form_block pages_blocks_form_block_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_form_block
    ADD CONSTRAINT pages_blocks_form_block_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_get_started_block_features pages_blocks_get_started_block_features_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_get_started_block_features
    ADD CONSTRAINT pages_blocks_get_started_block_features_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_get_started_block pages_blocks_get_started_block_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_get_started_block
    ADD CONSTRAINT pages_blocks_get_started_block_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_ielts_block_features pages_blocks_ielts_block_features_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_ielts_block_features
    ADD CONSTRAINT pages_blocks_ielts_block_features_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_ielts_block pages_blocks_ielts_block_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_ielts_block
    ADD CONSTRAINT pages_blocks_ielts_block_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_ielts_block_study_modes pages_blocks_ielts_block_study_modes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_ielts_block_study_modes
    ADD CONSTRAINT pages_blocks_ielts_block_study_modes_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_map_block_offices pages_blocks_map_block_offices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_map_block_offices
    ADD CONSTRAINT pages_blocks_map_block_offices_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_map_block pages_blocks_map_block_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_map_block
    ADD CONSTRAINT pages_blocks_map_block_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_media_block pages_blocks_media_block_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_media_block
    ADD CONSTRAINT pages_blocks_media_block_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_study_abroad_block_cards pages_blocks_study_abroad_block_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_study_abroad_block_cards
    ADD CONSTRAINT pages_blocks_study_abroad_block_cards_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_study_abroad_block pages_blocks_study_abroad_block_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_study_abroad_block
    ADD CONSTRAINT pages_blocks_study_abroad_block_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_testimonials_block pages_blocks_testimonials_block_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_testimonials_block
    ADD CONSTRAINT pages_blocks_testimonials_block_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_testimonials_block_testimonials pages_blocks_testimonials_block_testimonials_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_testimonials_block_testimonials
    ADD CONSTRAINT pages_blocks_testimonials_block_testimonials_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_universities_block pages_blocks_universities_block_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_universities_block
    ADD CONSTRAINT pages_blocks_universities_block_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_universities_block_stats pages_blocks_universities_block_stats_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_universities_block_stats
    ADD CONSTRAINT pages_blocks_universities_block_stats_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_universities_block_universities_images pages_blocks_universities_block_universities_images_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_universities_block_universities_images
    ADD CONSTRAINT pages_blocks_universities_block_universities_images_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_world_student_block_items pages_blocks_world_student_block_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_world_student_block_items
    ADD CONSTRAINT pages_blocks_world_student_block_items_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_world_student_block pages_blocks_world_student_block_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_world_student_block
    ADD CONSTRAINT pages_blocks_world_student_block_pkey PRIMARY KEY (id);


--
-- Name: pages_hero_links pages_hero_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_hero_links
    ADD CONSTRAINT pages_hero_links_pkey PRIMARY KEY (id);


--
-- Name: pages pages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);


--
-- Name: pages_rels pages_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_pkey PRIMARY KEY (id);


--
-- Name: payload_jobs_log payload_jobs_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payload_jobs_log
    ADD CONSTRAINT payload_jobs_log_pkey PRIMARY KEY (id);


--
-- Name: payload_jobs payload_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payload_jobs
    ADD CONSTRAINT payload_jobs_pkey PRIMARY KEY (id);


--
-- Name: payload_locked_documents payload_locked_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payload_locked_documents
    ADD CONSTRAINT payload_locked_documents_pkey PRIMARY KEY (id);


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_pkey PRIMARY KEY (id);


--
-- Name: payload_migrations payload_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payload_migrations
    ADD CONSTRAINT payload_migrations_pkey PRIMARY KEY (id);


--
-- Name: payload_preferences payload_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payload_preferences
    ADD CONSTRAINT payload_preferences_pkey PRIMARY KEY (id);


--
-- Name: payload_preferences_rels payload_preferences_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payload_preferences_rels
    ADD CONSTRAINT payload_preferences_rels_pkey PRIMARY KEY (id);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: posts_populated_authors posts_populated_authors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts_populated_authors
    ADD CONSTRAINT posts_populated_authors_pkey PRIMARY KEY (id);


--
-- Name: posts_rels posts_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts_rels
    ADD CONSTRAINT posts_rels_pkey PRIMARY KEY (id);


--
-- Name: redirects redirects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.redirects
    ADD CONSTRAINT redirects_pkey PRIMARY KEY (id);


--
-- Name: redirects_rels redirects_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.redirects_rels
    ADD CONSTRAINT redirects_rels_pkey PRIMARY KEY (id);


--
-- Name: search_categories search_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.search_categories
    ADD CONSTRAINT search_categories_pkey PRIMARY KEY (id);


--
-- Name: search search_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.search
    ADD CONSTRAINT search_pkey PRIMARY KEY (id);


--
-- Name: search_rels search_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.search_rels
    ADD CONSTRAINT search_rels_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_autosave_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_autosave_idx ON public._pages_v USING btree (autosave);


--
-- Name: _pages_v_blocks_appointment_block_left_content_paragraphs_order; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_appointment_block_left_content_paragraphs_order ON public._pages_v_blocks_appointment_block_left_content_paragraphs USING btree (_order);


--
-- Name: _pages_v_blocks_appointment_block_left_content_paragraphs_paren; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_appointment_block_left_content_paragraphs_paren ON public._pages_v_blocks_appointment_block_left_content_paragraphs USING btree (_parent_id);


--
-- Name: _pages_v_blocks_appointment_block_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_appointment_block_order_idx ON public._pages_v_blocks_appointment_block USING btree (_order);


--
-- Name: _pages_v_blocks_appointment_block_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_appointment_block_parent_id_idx ON public._pages_v_blocks_appointment_block USING btree (_parent_id);


--
-- Name: _pages_v_blocks_appointment_block_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_appointment_block_path_idx ON public._pages_v_blocks_appointment_block USING btree (_path);


--
-- Name: _pages_v_blocks_appointment_block_right_schedule_slots_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_appointment_block_right_schedule_slots_order_id ON public._pages_v_blocks_appointment_block_right_schedule_slots USING btree (_order);


--
-- Name: _pages_v_blocks_appointment_block_right_schedule_slots_parent_i; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_appointment_block_right_schedule_slots_parent_i ON public._pages_v_blocks_appointment_block_right_schedule_slots USING btree (_parent_id);


--
-- Name: _pages_v_blocks_appointment_block_right_universities_img_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_appointment_block_right_universities_img_idx ON public._pages_v_blocks_appointment_block_right_universities USING btree (img_id);


--
-- Name: _pages_v_blocks_appointment_block_right_universities_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_appointment_block_right_universities_order_idx ON public._pages_v_blocks_appointment_block_right_universities USING btree (_order);


--
-- Name: _pages_v_blocks_appointment_block_right_universities_parent_id_; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_appointment_block_right_universities_parent_id_ ON public._pages_v_blocks_appointment_block_right_universities USING btree (_parent_id);


--
-- Name: _pages_v_blocks_archive_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_archive_order_idx ON public._pages_v_blocks_archive USING btree (_order);


--
-- Name: _pages_v_blocks_archive_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_archive_parent_id_idx ON public._pages_v_blocks_archive USING btree (_parent_id);


--
-- Name: _pages_v_blocks_archive_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_archive_path_idx ON public._pages_v_blocks_archive USING btree (_path);


--
-- Name: _pages_v_blocks_content_columns_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_content_columns_order_idx ON public._pages_v_blocks_content_columns USING btree (_order);


--
-- Name: _pages_v_blocks_content_columns_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_content_columns_parent_id_idx ON public._pages_v_blocks_content_columns USING btree (_parent_id);


--
-- Name: _pages_v_blocks_content_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_content_order_idx ON public._pages_v_blocks_content USING btree (_order);


--
-- Name: _pages_v_blocks_content_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_content_parent_id_idx ON public._pages_v_blocks_content USING btree (_parent_id);


--
-- Name: _pages_v_blocks_content_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_content_path_idx ON public._pages_v_blocks_content USING btree (_path);


--
-- Name: _pages_v_blocks_counseling_block_background_image_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_counseling_block_background_image_idx ON public._pages_v_blocks_counseling_block USING btree (background_image_id);


--
-- Name: _pages_v_blocks_counseling_block_cards_card_image_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_counseling_block_cards_card_image_idx ON public._pages_v_blocks_counseling_block_cards USING btree (card_image_id);


--
-- Name: _pages_v_blocks_counseling_block_cards_countries_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_counseling_block_cards_countries_order_idx ON public._pages_v_blocks_counseling_block_cards_countries USING btree (_order);


--
-- Name: _pages_v_blocks_counseling_block_cards_countries_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_counseling_block_cards_countries_parent_id_idx ON public._pages_v_blocks_counseling_block_cards_countries USING btree (_parent_id);


--
-- Name: _pages_v_blocks_counseling_block_cards_icon_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_counseling_block_cards_icon_idx ON public._pages_v_blocks_counseling_block_cards USING btree (icon_id);


--
-- Name: _pages_v_blocks_counseling_block_cards_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_counseling_block_cards_order_idx ON public._pages_v_blocks_counseling_block_cards USING btree (_order);


--
-- Name: _pages_v_blocks_counseling_block_cards_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_counseling_block_cards_parent_id_idx ON public._pages_v_blocks_counseling_block_cards USING btree (_parent_id);


--
-- Name: _pages_v_blocks_counseling_block_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_counseling_block_order_idx ON public._pages_v_blocks_counseling_block USING btree (_order);


--
-- Name: _pages_v_blocks_counseling_block_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_counseling_block_parent_id_idx ON public._pages_v_blocks_counseling_block USING btree (_parent_id);


--
-- Name: _pages_v_blocks_counseling_block_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_counseling_block_path_idx ON public._pages_v_blocks_counseling_block USING btree (_path);


--
-- Name: _pages_v_blocks_cta_block_brand_logo_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_cta_block_brand_logo_idx ON public._pages_v_blocks_cta_block USING btree (brand_logo_id);


--
-- Name: _pages_v_blocks_cta_block_image_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_cta_block_image_idx ON public._pages_v_blocks_cta_block USING btree (image_id);


--
-- Name: _pages_v_blocks_cta_block_offices_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_cta_block_offices_order_idx ON public._pages_v_blocks_cta_block_offices USING btree (_order);


--
-- Name: _pages_v_blocks_cta_block_offices_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_cta_block_offices_parent_id_idx ON public._pages_v_blocks_cta_block_offices USING btree (_parent_id);


--
-- Name: _pages_v_blocks_cta_block_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_cta_block_order_idx ON public._pages_v_blocks_cta_block USING btree (_order);


--
-- Name: _pages_v_blocks_cta_block_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_cta_block_parent_id_idx ON public._pages_v_blocks_cta_block USING btree (_parent_id);


--
-- Name: _pages_v_blocks_cta_block_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_cta_block_path_idx ON public._pages_v_blocks_cta_block USING btree (_path);


--
-- Name: _pages_v_blocks_cta_block_phone_numbers_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_cta_block_phone_numbers_order_idx ON public._pages_v_blocks_cta_block_phone_numbers USING btree (_order);


--
-- Name: _pages_v_blocks_cta_block_phone_numbers_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_cta_block_phone_numbers_parent_id_idx ON public._pages_v_blocks_cta_block_phone_numbers USING btree (_parent_id);


--
-- Name: _pages_v_blocks_cta_links_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_cta_links_order_idx ON public._pages_v_blocks_cta_links USING btree (_order);


--
-- Name: _pages_v_blocks_cta_links_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_cta_links_parent_id_idx ON public._pages_v_blocks_cta_links USING btree (_parent_id);


--
-- Name: _pages_v_blocks_cta_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_cta_order_idx ON public._pages_v_blocks_cta USING btree (_order);


--
-- Name: _pages_v_blocks_cta_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_cta_parent_id_idx ON public._pages_v_blocks_cta USING btree (_parent_id);


--
-- Name: _pages_v_blocks_cta_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_cta_path_idx ON public._pages_v_blocks_cta USING btree (_path);


--
-- Name: _pages_v_blocks_form_block_form_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_form_block_form_idx ON public._pages_v_blocks_form_block USING btree (form_id);


--
-- Name: _pages_v_blocks_form_block_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_form_block_order_idx ON public._pages_v_blocks_form_block USING btree (_order);


--
-- Name: _pages_v_blocks_form_block_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_form_block_parent_id_idx ON public._pages_v_blocks_form_block USING btree (_parent_id);


--
-- Name: _pages_v_blocks_form_block_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_form_block_path_idx ON public._pages_v_blocks_form_block USING btree (_path);


--
-- Name: _pages_v_blocks_get_started_block_features_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_get_started_block_features_order_idx ON public._pages_v_blocks_get_started_block_features USING btree (_order);


--
-- Name: _pages_v_blocks_get_started_block_features_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_get_started_block_features_parent_id_idx ON public._pages_v_blocks_get_started_block_features USING btree (_parent_id);


--
-- Name: _pages_v_blocks_get_started_block_image_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_get_started_block_image_idx ON public._pages_v_blocks_get_started_block USING btree (image_id);


--
-- Name: _pages_v_blocks_get_started_block_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_get_started_block_order_idx ON public._pages_v_blocks_get_started_block USING btree (_order);


--
-- Name: _pages_v_blocks_get_started_block_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_get_started_block_parent_id_idx ON public._pages_v_blocks_get_started_block USING btree (_parent_id);


--
-- Name: _pages_v_blocks_get_started_block_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_get_started_block_path_idx ON public._pages_v_blocks_get_started_block USING btree (_path);


--
-- Name: _pages_v_blocks_ielts_block_features_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_ielts_block_features_order_idx ON public._pages_v_blocks_ielts_block_features USING btree (_order);


--
-- Name: _pages_v_blocks_ielts_block_features_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_ielts_block_features_parent_id_idx ON public._pages_v_blocks_ielts_block_features USING btree (_parent_id);


--
-- Name: _pages_v_blocks_ielts_block_ielts_image_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_ielts_block_ielts_image_idx ON public._pages_v_blocks_ielts_block USING btree (ielts_image_id);


--
-- Name: _pages_v_blocks_ielts_block_image_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_ielts_block_image_idx ON public._pages_v_blocks_ielts_block USING btree (image_id);


--
-- Name: _pages_v_blocks_ielts_block_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_ielts_block_order_idx ON public._pages_v_blocks_ielts_block USING btree (_order);


--
-- Name: _pages_v_blocks_ielts_block_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_ielts_block_parent_id_idx ON public._pages_v_blocks_ielts_block USING btree (_parent_id);


--
-- Name: _pages_v_blocks_ielts_block_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_ielts_block_path_idx ON public._pages_v_blocks_ielts_block USING btree (_path);


--
-- Name: _pages_v_blocks_ielts_block_study_modes_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_ielts_block_study_modes_order_idx ON public._pages_v_blocks_ielts_block_study_modes USING btree (_order);


--
-- Name: _pages_v_blocks_ielts_block_study_modes_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_ielts_block_study_modes_parent_id_idx ON public._pages_v_blocks_ielts_block_study_modes USING btree (_parent_id);


--
-- Name: _pages_v_blocks_map_block_offices_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_map_block_offices_order_idx ON public._pages_v_blocks_map_block_offices USING btree (_order);


--
-- Name: _pages_v_blocks_map_block_offices_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_map_block_offices_parent_id_idx ON public._pages_v_blocks_map_block_offices USING btree (_parent_id);


--
-- Name: _pages_v_blocks_map_block_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_map_block_order_idx ON public._pages_v_blocks_map_block USING btree (_order);


--
-- Name: _pages_v_blocks_map_block_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_map_block_parent_id_idx ON public._pages_v_blocks_map_block USING btree (_parent_id);


--
-- Name: _pages_v_blocks_map_block_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_map_block_path_idx ON public._pages_v_blocks_map_block USING btree (_path);


--
-- Name: _pages_v_blocks_media_block_media_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_media_block_media_idx ON public._pages_v_blocks_media_block USING btree (media_id);


--
-- Name: _pages_v_blocks_media_block_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_media_block_order_idx ON public._pages_v_blocks_media_block USING btree (_order);


--
-- Name: _pages_v_blocks_media_block_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_media_block_parent_id_idx ON public._pages_v_blocks_media_block USING btree (_parent_id);


--
-- Name: _pages_v_blocks_media_block_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_media_block_path_idx ON public._pages_v_blocks_media_block USING btree (_path);


--
-- Name: _pages_v_blocks_study_abroad_block_cards_image_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_study_abroad_block_cards_image_idx ON public._pages_v_blocks_study_abroad_block_cards USING btree (image_id);


--
-- Name: _pages_v_blocks_study_abroad_block_cards_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_study_abroad_block_cards_order_idx ON public._pages_v_blocks_study_abroad_block_cards USING btree (_order);


--
-- Name: _pages_v_blocks_study_abroad_block_cards_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_study_abroad_block_cards_parent_id_idx ON public._pages_v_blocks_study_abroad_block_cards USING btree (_parent_id);


--
-- Name: _pages_v_blocks_study_abroad_block_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_study_abroad_block_order_idx ON public._pages_v_blocks_study_abroad_block USING btree (_order);


--
-- Name: _pages_v_blocks_study_abroad_block_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_study_abroad_block_parent_id_idx ON public._pages_v_blocks_study_abroad_block USING btree (_parent_id);


--
-- Name: _pages_v_blocks_study_abroad_block_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_study_abroad_block_path_idx ON public._pages_v_blocks_study_abroad_block USING btree (_path);


--
-- Name: _pages_v_blocks_testimonials_block_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_testimonials_block_order_idx ON public._pages_v_blocks_testimonials_block USING btree (_order);


--
-- Name: _pages_v_blocks_testimonials_block_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_testimonials_block_parent_id_idx ON public._pages_v_blocks_testimonials_block USING btree (_parent_id);


--
-- Name: _pages_v_blocks_testimonials_block_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_testimonials_block_path_idx ON public._pages_v_blocks_testimonials_block USING btree (_path);


--
-- Name: _pages_v_blocks_testimonials_block_testimonials_image_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_testimonials_block_testimonials_image_idx ON public._pages_v_blocks_testimonials_block_testimonials USING btree (image_id);


--
-- Name: _pages_v_blocks_testimonials_block_testimonials_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_testimonials_block_testimonials_order_idx ON public._pages_v_blocks_testimonials_block_testimonials USING btree (_order);


--
-- Name: _pages_v_blocks_testimonials_block_testimonials_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_testimonials_block_testimonials_parent_id_idx ON public._pages_v_blocks_testimonials_block_testimonials USING btree (_parent_id);


--
-- Name: _pages_v_blocks_testimonials_block_testimonials_university_imag; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_testimonials_block_testimonials_university_imag ON public._pages_v_blocks_testimonials_block_testimonials USING btree (university_image_id);


--
-- Name: _pages_v_blocks_universities_block_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_universities_block_order_idx ON public._pages_v_blocks_universities_block USING btree (_order);


--
-- Name: _pages_v_blocks_universities_block_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_universities_block_parent_id_idx ON public._pages_v_blocks_universities_block USING btree (_parent_id);


--
-- Name: _pages_v_blocks_universities_block_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_universities_block_path_idx ON public._pages_v_blocks_universities_block USING btree (_path);


--
-- Name: _pages_v_blocks_universities_block_stats_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_universities_block_stats_order_idx ON public._pages_v_blocks_universities_block_stats USING btree (_order);


--
-- Name: _pages_v_blocks_universities_block_stats_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_universities_block_stats_parent_id_idx ON public._pages_v_blocks_universities_block_stats USING btree (_parent_id);


--
-- Name: _pages_v_blocks_universities_block_universities_images_image_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_universities_block_universities_images_image_id ON public._pages_v_blocks_universities_block_universities_images USING btree (image_id);


--
-- Name: _pages_v_blocks_universities_block_universities_images_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_universities_block_universities_images_order_id ON public._pages_v_blocks_universities_block_universities_images USING btree (_order);


--
-- Name: _pages_v_blocks_universities_block_universities_images_parent_i; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_universities_block_universities_images_parent_i ON public._pages_v_blocks_universities_block_universities_images USING btree (_parent_id);


--
-- Name: _pages_v_blocks_world_student_block_background_image_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_world_student_block_background_image_idx ON public._pages_v_blocks_world_student_block USING btree (background_image_id);


--
-- Name: _pages_v_blocks_world_student_block_items_image_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_world_student_block_items_image_idx ON public._pages_v_blocks_world_student_block_items USING btree (image_id);


--
-- Name: _pages_v_blocks_world_student_block_items_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_world_student_block_items_order_idx ON public._pages_v_blocks_world_student_block_items USING btree (_order);


--
-- Name: _pages_v_blocks_world_student_block_items_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_world_student_block_items_parent_id_idx ON public._pages_v_blocks_world_student_block_items USING btree (_parent_id);


--
-- Name: _pages_v_blocks_world_student_block_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_world_student_block_order_idx ON public._pages_v_blocks_world_student_block USING btree (_order);


--
-- Name: _pages_v_blocks_world_student_block_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_world_student_block_parent_id_idx ON public._pages_v_blocks_world_student_block USING btree (_parent_id);


--
-- Name: _pages_v_blocks_world_student_block_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_blocks_world_student_block_path_idx ON public._pages_v_blocks_world_student_block USING btree (_path);


--
-- Name: _pages_v_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_created_at_idx ON public._pages_v USING btree (created_at);


--
-- Name: _pages_v_latest_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_latest_idx ON public._pages_v USING btree (latest);


--
-- Name: _pages_v_parent_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_parent_idx ON public._pages_v USING btree (parent_id);


--
-- Name: _pages_v_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_rels_categories_id_idx ON public._pages_v_rels USING btree (categories_id);


--
-- Name: _pages_v_rels_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_rels_order_idx ON public._pages_v_rels USING btree ("order");


--
-- Name: _pages_v_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_rels_pages_id_idx ON public._pages_v_rels USING btree (pages_id);


--
-- Name: _pages_v_rels_parent_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_rels_parent_idx ON public._pages_v_rels USING btree (parent_id);


--
-- Name: _pages_v_rels_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_rels_path_idx ON public._pages_v_rels USING btree (path);


--
-- Name: _pages_v_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_rels_posts_id_idx ON public._pages_v_rels USING btree (posts_id);


--
-- Name: _pages_v_updated_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_updated_at_idx ON public._pages_v USING btree (updated_at);


--
-- Name: _pages_v_version_hero_links_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_version_hero_links_order_idx ON public._pages_v_version_hero_links USING btree (_order);


--
-- Name: _pages_v_version_hero_links_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_version_hero_links_parent_id_idx ON public._pages_v_version_hero_links USING btree (_parent_id);


--
-- Name: _pages_v_version_hero_version_hero_media_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_version_hero_version_hero_media_idx ON public._pages_v USING btree (version_hero_media_id);


--
-- Name: _pages_v_version_meta_version_meta_image_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_version_meta_version_meta_image_idx ON public._pages_v USING btree (version_meta_image_id);


--
-- Name: _pages_v_version_version__status_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_version_version__status_idx ON public._pages_v USING btree (version__status);


--
-- Name: _pages_v_version_version_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_version_version_created_at_idx ON public._pages_v USING btree (version_created_at);


--
-- Name: _pages_v_version_version_slug_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_version_version_slug_idx ON public._pages_v USING btree (version_slug);


--
-- Name: _pages_v_version_version_updated_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _pages_v_version_version_updated_at_idx ON public._pages_v USING btree (version_updated_at);


--
-- Name: _posts_v_autosave_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _posts_v_autosave_idx ON public._posts_v USING btree (autosave);


--
-- Name: _posts_v_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _posts_v_created_at_idx ON public._posts_v USING btree (created_at);


--
-- Name: _posts_v_latest_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _posts_v_latest_idx ON public._posts_v USING btree (latest);


--
-- Name: _posts_v_parent_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _posts_v_parent_idx ON public._posts_v USING btree (parent_id);


--
-- Name: _posts_v_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _posts_v_rels_categories_id_idx ON public._posts_v_rels USING btree (categories_id);


--
-- Name: _posts_v_rels_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _posts_v_rels_order_idx ON public._posts_v_rels USING btree ("order");


--
-- Name: _posts_v_rels_parent_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _posts_v_rels_parent_idx ON public._posts_v_rels USING btree (parent_id);


--
-- Name: _posts_v_rels_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _posts_v_rels_path_idx ON public._posts_v_rels USING btree (path);


--
-- Name: _posts_v_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _posts_v_rels_posts_id_idx ON public._posts_v_rels USING btree (posts_id);


--
-- Name: _posts_v_rels_users_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _posts_v_rels_users_id_idx ON public._posts_v_rels USING btree (users_id);


--
-- Name: _posts_v_updated_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _posts_v_updated_at_idx ON public._posts_v USING btree (updated_at);


--
-- Name: _posts_v_version_meta_version_meta_image_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _posts_v_version_meta_version_meta_image_idx ON public._posts_v USING btree (version_meta_image_id);


--
-- Name: _posts_v_version_populated_authors_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _posts_v_version_populated_authors_order_idx ON public._posts_v_version_populated_authors USING btree (_order);


--
-- Name: _posts_v_version_populated_authors_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _posts_v_version_populated_authors_parent_id_idx ON public._posts_v_version_populated_authors USING btree (_parent_id);


--
-- Name: _posts_v_version_version__status_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _posts_v_version_version__status_idx ON public._posts_v USING btree (version__status);


--
-- Name: _posts_v_version_version_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _posts_v_version_version_created_at_idx ON public._posts_v USING btree (version_created_at);


--
-- Name: _posts_v_version_version_hero_image_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _posts_v_version_version_hero_image_idx ON public._posts_v USING btree (version_hero_image_id);


--
-- Name: _posts_v_version_version_slug_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _posts_v_version_version_slug_idx ON public._posts_v USING btree (version_slug);


--
-- Name: _posts_v_version_version_updated_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX _posts_v_version_version_updated_at_idx ON public._posts_v USING btree (version_updated_at);


--
-- Name: categories_breadcrumbs_doc_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categories_breadcrumbs_doc_idx ON public.categories_breadcrumbs USING btree (doc_id);


--
-- Name: categories_breadcrumbs_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categories_breadcrumbs_order_idx ON public.categories_breadcrumbs USING btree (_order);


--
-- Name: categories_breadcrumbs_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categories_breadcrumbs_parent_id_idx ON public.categories_breadcrumbs USING btree (_parent_id);


--
-- Name: categories_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categories_created_at_idx ON public.categories USING btree (created_at);


--
-- Name: categories_parent_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categories_parent_idx ON public.categories USING btree (parent_id);


--
-- Name: categories_slug_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categories_slug_idx ON public.categories USING btree (slug);


--
-- Name: categories_updated_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categories_updated_at_idx ON public.categories USING btree (updated_at);


--
-- Name: footer_about_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX footer_about_order_idx ON public.footer_about USING btree (_order);


--
-- Name: footer_about_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX footer_about_parent_id_idx ON public.footer_about USING btree (_parent_id);


--
-- Name: footer_help_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX footer_help_order_idx ON public.footer_help USING btree (_order);


--
-- Name: footer_help_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX footer_help_parent_id_idx ON public.footer_help USING btree (_parent_id);


--
-- Name: footer_legal_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX footer_legal_order_idx ON public.footer_legal USING btree (_order);


--
-- Name: footer_legal_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX footer_legal_parent_id_idx ON public.footer_legal USING btree (_parent_id);


--
-- Name: footer_rels_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX footer_rels_order_idx ON public.footer_rels USING btree ("order");


--
-- Name: footer_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX footer_rels_pages_id_idx ON public.footer_rels USING btree (pages_id);


--
-- Name: footer_rels_parent_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX footer_rels_parent_idx ON public.footer_rels USING btree (parent_id);


--
-- Name: footer_rels_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX footer_rels_path_idx ON public.footer_rels USING btree (path);


--
-- Name: footer_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX footer_rels_posts_id_idx ON public.footer_rels USING btree (posts_id);


--
-- Name: footer_services_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX footer_services_order_idx ON public.footer_services USING btree (_order);


--
-- Name: footer_services_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX footer_services_parent_id_idx ON public.footer_services USING btree (_parent_id);


--
-- Name: footer_social_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX footer_social_order_idx ON public.footer_social USING btree (_order);


--
-- Name: footer_social_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX footer_social_parent_id_idx ON public.footer_social USING btree (_parent_id);


--
-- Name: form_submissions_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX form_submissions_created_at_idx ON public.form_submissions USING btree (created_at);


--
-- Name: form_submissions_form_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX form_submissions_form_idx ON public.form_submissions USING btree (form_id);


--
-- Name: form_submissions_submission_data_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX form_submissions_submission_data_order_idx ON public.form_submissions_submission_data USING btree (_order);


--
-- Name: form_submissions_submission_data_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX form_submissions_submission_data_parent_id_idx ON public.form_submissions_submission_data USING btree (_parent_id);


--
-- Name: form_submissions_updated_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX form_submissions_updated_at_idx ON public.form_submissions USING btree (updated_at);


--
-- Name: forms_blocks_checkbox_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_blocks_checkbox_order_idx ON public.forms_blocks_checkbox USING btree (_order);


--
-- Name: forms_blocks_checkbox_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_blocks_checkbox_parent_id_idx ON public.forms_blocks_checkbox USING btree (_parent_id);


--
-- Name: forms_blocks_checkbox_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_blocks_checkbox_path_idx ON public.forms_blocks_checkbox USING btree (_path);


--
-- Name: forms_blocks_country_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_blocks_country_order_idx ON public.forms_blocks_country USING btree (_order);


--
-- Name: forms_blocks_country_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_blocks_country_parent_id_idx ON public.forms_blocks_country USING btree (_parent_id);


--
-- Name: forms_blocks_country_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_blocks_country_path_idx ON public.forms_blocks_country USING btree (_path);


--
-- Name: forms_blocks_email_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_blocks_email_order_idx ON public.forms_blocks_email USING btree (_order);


--
-- Name: forms_blocks_email_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_blocks_email_parent_id_idx ON public.forms_blocks_email USING btree (_parent_id);


--
-- Name: forms_blocks_email_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_blocks_email_path_idx ON public.forms_blocks_email USING btree (_path);


--
-- Name: forms_blocks_message_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_blocks_message_order_idx ON public.forms_blocks_message USING btree (_order);


--
-- Name: forms_blocks_message_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_blocks_message_parent_id_idx ON public.forms_blocks_message USING btree (_parent_id);


--
-- Name: forms_blocks_message_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_blocks_message_path_idx ON public.forms_blocks_message USING btree (_path);


--
-- Name: forms_blocks_number_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_blocks_number_order_idx ON public.forms_blocks_number USING btree (_order);


--
-- Name: forms_blocks_number_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_blocks_number_parent_id_idx ON public.forms_blocks_number USING btree (_parent_id);


--
-- Name: forms_blocks_number_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_blocks_number_path_idx ON public.forms_blocks_number USING btree (_path);


--
-- Name: forms_blocks_select_options_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_blocks_select_options_order_idx ON public.forms_blocks_select_options USING btree (_order);


--
-- Name: forms_blocks_select_options_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_blocks_select_options_parent_id_idx ON public.forms_blocks_select_options USING btree (_parent_id);


--
-- Name: forms_blocks_select_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_blocks_select_order_idx ON public.forms_blocks_select USING btree (_order);


--
-- Name: forms_blocks_select_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_blocks_select_parent_id_idx ON public.forms_blocks_select USING btree (_parent_id);


--
-- Name: forms_blocks_select_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_blocks_select_path_idx ON public.forms_blocks_select USING btree (_path);


--
-- Name: forms_blocks_state_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_blocks_state_order_idx ON public.forms_blocks_state USING btree (_order);


--
-- Name: forms_blocks_state_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_blocks_state_parent_id_idx ON public.forms_blocks_state USING btree (_parent_id);


--
-- Name: forms_blocks_state_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_blocks_state_path_idx ON public.forms_blocks_state USING btree (_path);


--
-- Name: forms_blocks_text_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_blocks_text_order_idx ON public.forms_blocks_text USING btree (_order);


--
-- Name: forms_blocks_text_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_blocks_text_parent_id_idx ON public.forms_blocks_text USING btree (_parent_id);


--
-- Name: forms_blocks_text_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_blocks_text_path_idx ON public.forms_blocks_text USING btree (_path);


--
-- Name: forms_blocks_textarea_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_blocks_textarea_order_idx ON public.forms_blocks_textarea USING btree (_order);


--
-- Name: forms_blocks_textarea_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_blocks_textarea_parent_id_idx ON public.forms_blocks_textarea USING btree (_parent_id);


--
-- Name: forms_blocks_textarea_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_blocks_textarea_path_idx ON public.forms_blocks_textarea USING btree (_path);


--
-- Name: forms_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_created_at_idx ON public.forms USING btree (created_at);


--
-- Name: forms_emails_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_emails_order_idx ON public.forms_emails USING btree (_order);


--
-- Name: forms_emails_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_emails_parent_id_idx ON public.forms_emails USING btree (_parent_id);


--
-- Name: forms_updated_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_updated_at_idx ON public.forms USING btree (updated_at);


--
-- Name: header_nav_items_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX header_nav_items_order_idx ON public.header_nav_items USING btree (_order);


--
-- Name: header_nav_items_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX header_nav_items_parent_id_idx ON public.header_nav_items USING btree (_parent_id);


--
-- Name: header_rels_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX header_rels_order_idx ON public.header_rels USING btree ("order");


--
-- Name: header_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX header_rels_pages_id_idx ON public.header_rels USING btree (pages_id);


--
-- Name: header_rels_parent_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX header_rels_parent_idx ON public.header_rels USING btree (parent_id);


--
-- Name: header_rels_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX header_rels_path_idx ON public.header_rels USING btree (path);


--
-- Name: header_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX header_rels_posts_id_idx ON public.header_rels USING btree (posts_id);


--
-- Name: media_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX media_created_at_idx ON public.media USING btree (created_at);


--
-- Name: media_filename_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX media_filename_idx ON public.media USING btree (filename);


--
-- Name: media_sizes_large_sizes_large_filename_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX media_sizes_large_sizes_large_filename_idx ON public.media USING btree (sizes_large_filename);


--
-- Name: media_sizes_medium_sizes_medium_filename_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX media_sizes_medium_sizes_medium_filename_idx ON public.media USING btree (sizes_medium_filename);


--
-- Name: media_sizes_og_sizes_og_filename_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX media_sizes_og_sizes_og_filename_idx ON public.media USING btree (sizes_og_filename);


--
-- Name: media_sizes_small_sizes_small_filename_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX media_sizes_small_sizes_small_filename_idx ON public.media USING btree (sizes_small_filename);


--
-- Name: media_sizes_square_sizes_square_filename_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX media_sizes_square_sizes_square_filename_idx ON public.media USING btree (sizes_square_filename);


--
-- Name: media_sizes_thumbnail_sizes_thumbnail_filename_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX media_sizes_thumbnail_sizes_thumbnail_filename_idx ON public.media USING btree (sizes_thumbnail_filename);


--
-- Name: media_sizes_xlarge_sizes_xlarge_filename_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX media_sizes_xlarge_sizes_xlarge_filename_idx ON public.media USING btree (sizes_xlarge_filename);


--
-- Name: media_updated_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX media_updated_at_idx ON public.media USING btree (updated_at);


--
-- Name: pages__status_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages__status_idx ON public.pages USING btree (_status);


--
-- Name: pages_blocks_appointment_block_left_content_paragraphs_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_appointment_block_left_content_paragraphs_order_id ON public.pages_blocks_appointment_block_left_content_paragraphs USING btree (_order);


--
-- Name: pages_blocks_appointment_block_left_content_paragraphs_parent_i; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_appointment_block_left_content_paragraphs_parent_i ON public.pages_blocks_appointment_block_left_content_paragraphs USING btree (_parent_id);


--
-- Name: pages_blocks_appointment_block_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_appointment_block_order_idx ON public.pages_blocks_appointment_block USING btree (_order);


--
-- Name: pages_blocks_appointment_block_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_appointment_block_parent_id_idx ON public.pages_blocks_appointment_block USING btree (_parent_id);


--
-- Name: pages_blocks_appointment_block_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_appointment_block_path_idx ON public.pages_blocks_appointment_block USING btree (_path);


--
-- Name: pages_blocks_appointment_block_right_schedule_slots_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_appointment_block_right_schedule_slots_order_idx ON public.pages_blocks_appointment_block_right_schedule_slots USING btree (_order);


--
-- Name: pages_blocks_appointment_block_right_schedule_slots_parent_id_i; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_appointment_block_right_schedule_slots_parent_id_i ON public.pages_blocks_appointment_block_right_schedule_slots USING btree (_parent_id);


--
-- Name: pages_blocks_appointment_block_right_universities_img_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_appointment_block_right_universities_img_idx ON public.pages_blocks_appointment_block_right_universities USING btree (img_id);


--
-- Name: pages_blocks_appointment_block_right_universities_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_appointment_block_right_universities_order_idx ON public.pages_blocks_appointment_block_right_universities USING btree (_order);


--
-- Name: pages_blocks_appointment_block_right_universities_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_appointment_block_right_universities_parent_id_idx ON public.pages_blocks_appointment_block_right_universities USING btree (_parent_id);


--
-- Name: pages_blocks_archive_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_archive_order_idx ON public.pages_blocks_archive USING btree (_order);


--
-- Name: pages_blocks_archive_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_archive_parent_id_idx ON public.pages_blocks_archive USING btree (_parent_id);


--
-- Name: pages_blocks_archive_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_archive_path_idx ON public.pages_blocks_archive USING btree (_path);


--
-- Name: pages_blocks_content_columns_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_content_columns_order_idx ON public.pages_blocks_content_columns USING btree (_order);


--
-- Name: pages_blocks_content_columns_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_content_columns_parent_id_idx ON public.pages_blocks_content_columns USING btree (_parent_id);


--
-- Name: pages_blocks_content_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_content_order_idx ON public.pages_blocks_content USING btree (_order);


--
-- Name: pages_blocks_content_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_content_parent_id_idx ON public.pages_blocks_content USING btree (_parent_id);


--
-- Name: pages_blocks_content_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_content_path_idx ON public.pages_blocks_content USING btree (_path);


--
-- Name: pages_blocks_counseling_block_background_image_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_counseling_block_background_image_idx ON public.pages_blocks_counseling_block USING btree (background_image_id);


--
-- Name: pages_blocks_counseling_block_cards_card_image_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_counseling_block_cards_card_image_idx ON public.pages_blocks_counseling_block_cards USING btree (card_image_id);


--
-- Name: pages_blocks_counseling_block_cards_countries_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_counseling_block_cards_countries_order_idx ON public.pages_blocks_counseling_block_cards_countries USING btree (_order);


--
-- Name: pages_blocks_counseling_block_cards_countries_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_counseling_block_cards_countries_parent_id_idx ON public.pages_blocks_counseling_block_cards_countries USING btree (_parent_id);


--
-- Name: pages_blocks_counseling_block_cards_icon_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_counseling_block_cards_icon_idx ON public.pages_blocks_counseling_block_cards USING btree (icon_id);


--
-- Name: pages_blocks_counseling_block_cards_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_counseling_block_cards_order_idx ON public.pages_blocks_counseling_block_cards USING btree (_order);


--
-- Name: pages_blocks_counseling_block_cards_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_counseling_block_cards_parent_id_idx ON public.pages_blocks_counseling_block_cards USING btree (_parent_id);


--
-- Name: pages_blocks_counseling_block_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_counseling_block_order_idx ON public.pages_blocks_counseling_block USING btree (_order);


--
-- Name: pages_blocks_counseling_block_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_counseling_block_parent_id_idx ON public.pages_blocks_counseling_block USING btree (_parent_id);


--
-- Name: pages_blocks_counseling_block_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_counseling_block_path_idx ON public.pages_blocks_counseling_block USING btree (_path);


--
-- Name: pages_blocks_cta_block_brand_logo_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_cta_block_brand_logo_idx ON public.pages_blocks_cta_block USING btree (brand_logo_id);


--
-- Name: pages_blocks_cta_block_image_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_cta_block_image_idx ON public.pages_blocks_cta_block USING btree (image_id);


--
-- Name: pages_blocks_cta_block_offices_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_cta_block_offices_order_idx ON public.pages_blocks_cta_block_offices USING btree (_order);


--
-- Name: pages_blocks_cta_block_offices_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_cta_block_offices_parent_id_idx ON public.pages_blocks_cta_block_offices USING btree (_parent_id);


--
-- Name: pages_blocks_cta_block_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_cta_block_order_idx ON public.pages_blocks_cta_block USING btree (_order);


--
-- Name: pages_blocks_cta_block_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_cta_block_parent_id_idx ON public.pages_blocks_cta_block USING btree (_parent_id);


--
-- Name: pages_blocks_cta_block_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_cta_block_path_idx ON public.pages_blocks_cta_block USING btree (_path);


--
-- Name: pages_blocks_cta_block_phone_numbers_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_cta_block_phone_numbers_order_idx ON public.pages_blocks_cta_block_phone_numbers USING btree (_order);


--
-- Name: pages_blocks_cta_block_phone_numbers_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_cta_block_phone_numbers_parent_id_idx ON public.pages_blocks_cta_block_phone_numbers USING btree (_parent_id);


--
-- Name: pages_blocks_cta_links_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_cta_links_order_idx ON public.pages_blocks_cta_links USING btree (_order);


--
-- Name: pages_blocks_cta_links_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_cta_links_parent_id_idx ON public.pages_blocks_cta_links USING btree (_parent_id);


--
-- Name: pages_blocks_cta_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_cta_order_idx ON public.pages_blocks_cta USING btree (_order);


--
-- Name: pages_blocks_cta_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_cta_parent_id_idx ON public.pages_blocks_cta USING btree (_parent_id);


--
-- Name: pages_blocks_cta_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_cta_path_idx ON public.pages_blocks_cta USING btree (_path);


--
-- Name: pages_blocks_form_block_form_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_form_block_form_idx ON public.pages_blocks_form_block USING btree (form_id);


--
-- Name: pages_blocks_form_block_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_form_block_order_idx ON public.pages_blocks_form_block USING btree (_order);


--
-- Name: pages_blocks_form_block_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_form_block_parent_id_idx ON public.pages_blocks_form_block USING btree (_parent_id);


--
-- Name: pages_blocks_form_block_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_form_block_path_idx ON public.pages_blocks_form_block USING btree (_path);


--
-- Name: pages_blocks_get_started_block_features_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_get_started_block_features_order_idx ON public.pages_blocks_get_started_block_features USING btree (_order);


--
-- Name: pages_blocks_get_started_block_features_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_get_started_block_features_parent_id_idx ON public.pages_blocks_get_started_block_features USING btree (_parent_id);


--
-- Name: pages_blocks_get_started_block_image_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_get_started_block_image_idx ON public.pages_blocks_get_started_block USING btree (image_id);


--
-- Name: pages_blocks_get_started_block_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_get_started_block_order_idx ON public.pages_blocks_get_started_block USING btree (_order);


--
-- Name: pages_blocks_get_started_block_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_get_started_block_parent_id_idx ON public.pages_blocks_get_started_block USING btree (_parent_id);


--
-- Name: pages_blocks_get_started_block_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_get_started_block_path_idx ON public.pages_blocks_get_started_block USING btree (_path);


--
-- Name: pages_blocks_ielts_block_features_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_ielts_block_features_order_idx ON public.pages_blocks_ielts_block_features USING btree (_order);


--
-- Name: pages_blocks_ielts_block_features_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_ielts_block_features_parent_id_idx ON public.pages_blocks_ielts_block_features USING btree (_parent_id);


--
-- Name: pages_blocks_ielts_block_ielts_image_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_ielts_block_ielts_image_idx ON public.pages_blocks_ielts_block USING btree (ielts_image_id);


--
-- Name: pages_blocks_ielts_block_image_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_ielts_block_image_idx ON public.pages_blocks_ielts_block USING btree (image_id);


--
-- Name: pages_blocks_ielts_block_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_ielts_block_order_idx ON public.pages_blocks_ielts_block USING btree (_order);


--
-- Name: pages_blocks_ielts_block_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_ielts_block_parent_id_idx ON public.pages_blocks_ielts_block USING btree (_parent_id);


--
-- Name: pages_blocks_ielts_block_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_ielts_block_path_idx ON public.pages_blocks_ielts_block USING btree (_path);


--
-- Name: pages_blocks_ielts_block_study_modes_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_ielts_block_study_modes_order_idx ON public.pages_blocks_ielts_block_study_modes USING btree (_order);


--
-- Name: pages_blocks_ielts_block_study_modes_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_ielts_block_study_modes_parent_id_idx ON public.pages_blocks_ielts_block_study_modes USING btree (_parent_id);


--
-- Name: pages_blocks_map_block_offices_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_map_block_offices_order_idx ON public.pages_blocks_map_block_offices USING btree (_order);


--
-- Name: pages_blocks_map_block_offices_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_map_block_offices_parent_id_idx ON public.pages_blocks_map_block_offices USING btree (_parent_id);


--
-- Name: pages_blocks_map_block_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_map_block_order_idx ON public.pages_blocks_map_block USING btree (_order);


--
-- Name: pages_blocks_map_block_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_map_block_parent_id_idx ON public.pages_blocks_map_block USING btree (_parent_id);


--
-- Name: pages_blocks_map_block_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_map_block_path_idx ON public.pages_blocks_map_block USING btree (_path);


--
-- Name: pages_blocks_media_block_media_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_media_block_media_idx ON public.pages_blocks_media_block USING btree (media_id);


--
-- Name: pages_blocks_media_block_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_media_block_order_idx ON public.pages_blocks_media_block USING btree (_order);


--
-- Name: pages_blocks_media_block_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_media_block_parent_id_idx ON public.pages_blocks_media_block USING btree (_parent_id);


--
-- Name: pages_blocks_media_block_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_media_block_path_idx ON public.pages_blocks_media_block USING btree (_path);


--
-- Name: pages_blocks_study_abroad_block_cards_image_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_study_abroad_block_cards_image_idx ON public.pages_blocks_study_abroad_block_cards USING btree (image_id);


--
-- Name: pages_blocks_study_abroad_block_cards_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_study_abroad_block_cards_order_idx ON public.pages_blocks_study_abroad_block_cards USING btree (_order);


--
-- Name: pages_blocks_study_abroad_block_cards_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_study_abroad_block_cards_parent_id_idx ON public.pages_blocks_study_abroad_block_cards USING btree (_parent_id);


--
-- Name: pages_blocks_study_abroad_block_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_study_abroad_block_order_idx ON public.pages_blocks_study_abroad_block USING btree (_order);


--
-- Name: pages_blocks_study_abroad_block_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_study_abroad_block_parent_id_idx ON public.pages_blocks_study_abroad_block USING btree (_parent_id);


--
-- Name: pages_blocks_study_abroad_block_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_study_abroad_block_path_idx ON public.pages_blocks_study_abroad_block USING btree (_path);


--
-- Name: pages_blocks_testimonials_block_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_testimonials_block_order_idx ON public.pages_blocks_testimonials_block USING btree (_order);


--
-- Name: pages_blocks_testimonials_block_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_testimonials_block_parent_id_idx ON public.pages_blocks_testimonials_block USING btree (_parent_id);


--
-- Name: pages_blocks_testimonials_block_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_testimonials_block_path_idx ON public.pages_blocks_testimonials_block USING btree (_path);


--
-- Name: pages_blocks_testimonials_block_testimonials_image_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_testimonials_block_testimonials_image_idx ON public.pages_blocks_testimonials_block_testimonials USING btree (image_id);


--
-- Name: pages_blocks_testimonials_block_testimonials_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_testimonials_block_testimonials_order_idx ON public.pages_blocks_testimonials_block_testimonials USING btree (_order);


--
-- Name: pages_blocks_testimonials_block_testimonials_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_testimonials_block_testimonials_parent_id_idx ON public.pages_blocks_testimonials_block_testimonials USING btree (_parent_id);


--
-- Name: pages_blocks_testimonials_block_testimonials_university_image_i; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_testimonials_block_testimonials_university_image_i ON public.pages_blocks_testimonials_block_testimonials USING btree (university_image_id);


--
-- Name: pages_blocks_universities_block_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_universities_block_order_idx ON public.pages_blocks_universities_block USING btree (_order);


--
-- Name: pages_blocks_universities_block_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_universities_block_parent_id_idx ON public.pages_blocks_universities_block USING btree (_parent_id);


--
-- Name: pages_blocks_universities_block_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_universities_block_path_idx ON public.pages_blocks_universities_block USING btree (_path);


--
-- Name: pages_blocks_universities_block_stats_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_universities_block_stats_order_idx ON public.pages_blocks_universities_block_stats USING btree (_order);


--
-- Name: pages_blocks_universities_block_stats_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_universities_block_stats_parent_id_idx ON public.pages_blocks_universities_block_stats USING btree (_parent_id);


--
-- Name: pages_blocks_universities_block_universities_images_image_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_universities_block_universities_images_image_idx ON public.pages_blocks_universities_block_universities_images USING btree (image_id);


--
-- Name: pages_blocks_universities_block_universities_images_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_universities_block_universities_images_order_idx ON public.pages_blocks_universities_block_universities_images USING btree (_order);


--
-- Name: pages_blocks_universities_block_universities_images_parent_id_i; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_universities_block_universities_images_parent_id_i ON public.pages_blocks_universities_block_universities_images USING btree (_parent_id);


--
-- Name: pages_blocks_world_student_block_background_image_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_world_student_block_background_image_idx ON public.pages_blocks_world_student_block USING btree (background_image_id);


--
-- Name: pages_blocks_world_student_block_items_image_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_world_student_block_items_image_idx ON public.pages_blocks_world_student_block_items USING btree (image_id);


--
-- Name: pages_blocks_world_student_block_items_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_world_student_block_items_order_idx ON public.pages_blocks_world_student_block_items USING btree (_order);


--
-- Name: pages_blocks_world_student_block_items_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_world_student_block_items_parent_id_idx ON public.pages_blocks_world_student_block_items USING btree (_parent_id);


--
-- Name: pages_blocks_world_student_block_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_world_student_block_order_idx ON public.pages_blocks_world_student_block USING btree (_order);


--
-- Name: pages_blocks_world_student_block_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_world_student_block_parent_id_idx ON public.pages_blocks_world_student_block USING btree (_parent_id);


--
-- Name: pages_blocks_world_student_block_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_blocks_world_student_block_path_idx ON public.pages_blocks_world_student_block USING btree (_path);


--
-- Name: pages_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_created_at_idx ON public.pages USING btree (created_at);


--
-- Name: pages_hero_hero_media_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_hero_hero_media_idx ON public.pages USING btree (hero_media_id);


--
-- Name: pages_hero_links_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_hero_links_order_idx ON public.pages_hero_links USING btree (_order);


--
-- Name: pages_hero_links_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_hero_links_parent_id_idx ON public.pages_hero_links USING btree (_parent_id);


--
-- Name: pages_meta_meta_image_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_meta_meta_image_idx ON public.pages USING btree (meta_image_id);


--
-- Name: pages_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_rels_categories_id_idx ON public.pages_rels USING btree (categories_id);


--
-- Name: pages_rels_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_rels_order_idx ON public.pages_rels USING btree ("order");


--
-- Name: pages_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_rels_pages_id_idx ON public.pages_rels USING btree (pages_id);


--
-- Name: pages_rels_parent_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_rels_parent_idx ON public.pages_rels USING btree (parent_id);


--
-- Name: pages_rels_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_rels_path_idx ON public.pages_rels USING btree (path);


--
-- Name: pages_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_rels_posts_id_idx ON public.pages_rels USING btree (posts_id);


--
-- Name: pages_slug_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_slug_idx ON public.pages USING btree (slug);


--
-- Name: pages_updated_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_updated_at_idx ON public.pages USING btree (updated_at);


--
-- Name: payload_jobs_completed_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_jobs_completed_at_idx ON public.payload_jobs USING btree (completed_at);


--
-- Name: payload_jobs_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_jobs_created_at_idx ON public.payload_jobs USING btree (created_at);


--
-- Name: payload_jobs_has_error_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_jobs_has_error_idx ON public.payload_jobs USING btree (has_error);


--
-- Name: payload_jobs_log_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_jobs_log_order_idx ON public.payload_jobs_log USING btree (_order);


--
-- Name: payload_jobs_log_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_jobs_log_parent_id_idx ON public.payload_jobs_log USING btree (_parent_id);


--
-- Name: payload_jobs_processing_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_jobs_processing_idx ON public.payload_jobs USING btree (processing);


--
-- Name: payload_jobs_queue_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_jobs_queue_idx ON public.payload_jobs USING btree (queue);


--
-- Name: payload_jobs_task_slug_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_jobs_task_slug_idx ON public.payload_jobs USING btree (task_slug);


--
-- Name: payload_jobs_total_tried_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_jobs_total_tried_idx ON public.payload_jobs USING btree (total_tried);


--
-- Name: payload_jobs_updated_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_jobs_updated_at_idx ON public.payload_jobs USING btree (updated_at);


--
-- Name: payload_jobs_wait_until_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_jobs_wait_until_idx ON public.payload_jobs USING btree (wait_until);


--
-- Name: payload_locked_documents_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_locked_documents_created_at_idx ON public.payload_locked_documents USING btree (created_at);


--
-- Name: payload_locked_documents_global_slug_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_locked_documents_global_slug_idx ON public.payload_locked_documents USING btree (global_slug);


--
-- Name: payload_locked_documents_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_locked_documents_rels_categories_id_idx ON public.payload_locked_documents_rels USING btree (categories_id);


--
-- Name: payload_locked_documents_rels_form_submissions_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_locked_documents_rels_form_submissions_id_idx ON public.payload_locked_documents_rels USING btree (form_submissions_id);


--
-- Name: payload_locked_documents_rels_forms_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_locked_documents_rels_forms_id_idx ON public.payload_locked_documents_rels USING btree (forms_id);


--
-- Name: payload_locked_documents_rels_media_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_locked_documents_rels_media_id_idx ON public.payload_locked_documents_rels USING btree (media_id);


--
-- Name: payload_locked_documents_rels_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_locked_documents_rels_order_idx ON public.payload_locked_documents_rels USING btree ("order");


--
-- Name: payload_locked_documents_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_locked_documents_rels_pages_id_idx ON public.payload_locked_documents_rels USING btree (pages_id);


--
-- Name: payload_locked_documents_rels_parent_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_locked_documents_rels_parent_idx ON public.payload_locked_documents_rels USING btree (parent_id);


--
-- Name: payload_locked_documents_rels_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_locked_documents_rels_path_idx ON public.payload_locked_documents_rels USING btree (path);


--
-- Name: payload_locked_documents_rels_payload_jobs_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_locked_documents_rels_payload_jobs_id_idx ON public.payload_locked_documents_rels USING btree (payload_jobs_id);


--
-- Name: payload_locked_documents_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_locked_documents_rels_posts_id_idx ON public.payload_locked_documents_rels USING btree (posts_id);


--
-- Name: payload_locked_documents_rels_redirects_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_locked_documents_rels_redirects_id_idx ON public.payload_locked_documents_rels USING btree (redirects_id);


--
-- Name: payload_locked_documents_rels_search_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_locked_documents_rels_search_id_idx ON public.payload_locked_documents_rels USING btree (search_id);


--
-- Name: payload_locked_documents_rels_users_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_locked_documents_rels_users_id_idx ON public.payload_locked_documents_rels USING btree (users_id);


--
-- Name: payload_locked_documents_updated_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_locked_documents_updated_at_idx ON public.payload_locked_documents USING btree (updated_at);


--
-- Name: payload_migrations_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_migrations_created_at_idx ON public.payload_migrations USING btree (created_at);


--
-- Name: payload_migrations_updated_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_migrations_updated_at_idx ON public.payload_migrations USING btree (updated_at);


--
-- Name: payload_preferences_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_preferences_created_at_idx ON public.payload_preferences USING btree (created_at);


--
-- Name: payload_preferences_key_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_preferences_key_idx ON public.payload_preferences USING btree (key);


--
-- Name: payload_preferences_rels_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_preferences_rels_order_idx ON public.payload_preferences_rels USING btree ("order");


--
-- Name: payload_preferences_rels_parent_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_preferences_rels_parent_idx ON public.payload_preferences_rels USING btree (parent_id);


--
-- Name: payload_preferences_rels_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_preferences_rels_path_idx ON public.payload_preferences_rels USING btree (path);


--
-- Name: payload_preferences_rels_users_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_preferences_rels_users_id_idx ON public.payload_preferences_rels USING btree (users_id);


--
-- Name: payload_preferences_updated_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payload_preferences_updated_at_idx ON public.payload_preferences USING btree (updated_at);


--
-- Name: posts__status_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX posts__status_idx ON public.posts USING btree (_status);


--
-- Name: posts_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX posts_created_at_idx ON public.posts USING btree (created_at);


--
-- Name: posts_hero_image_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX posts_hero_image_idx ON public.posts USING btree (hero_image_id);


--
-- Name: posts_meta_meta_image_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX posts_meta_meta_image_idx ON public.posts USING btree (meta_image_id);


--
-- Name: posts_populated_authors_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX posts_populated_authors_order_idx ON public.posts_populated_authors USING btree (_order);


--
-- Name: posts_populated_authors_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX posts_populated_authors_parent_id_idx ON public.posts_populated_authors USING btree (_parent_id);


--
-- Name: posts_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX posts_rels_categories_id_idx ON public.posts_rels USING btree (categories_id);


--
-- Name: posts_rels_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX posts_rels_order_idx ON public.posts_rels USING btree ("order");


--
-- Name: posts_rels_parent_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX posts_rels_parent_idx ON public.posts_rels USING btree (parent_id);


--
-- Name: posts_rels_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX posts_rels_path_idx ON public.posts_rels USING btree (path);


--
-- Name: posts_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX posts_rels_posts_id_idx ON public.posts_rels USING btree (posts_id);


--
-- Name: posts_rels_users_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX posts_rels_users_id_idx ON public.posts_rels USING btree (users_id);


--
-- Name: posts_slug_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX posts_slug_idx ON public.posts USING btree (slug);


--
-- Name: posts_updated_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX posts_updated_at_idx ON public.posts USING btree (updated_at);


--
-- Name: redirects_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX redirects_created_at_idx ON public.redirects USING btree (created_at);


--
-- Name: redirects_from_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX redirects_from_idx ON public.redirects USING btree ("from");


--
-- Name: redirects_rels_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX redirects_rels_order_idx ON public.redirects_rels USING btree ("order");


--
-- Name: redirects_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX redirects_rels_pages_id_idx ON public.redirects_rels USING btree (pages_id);


--
-- Name: redirects_rels_parent_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX redirects_rels_parent_idx ON public.redirects_rels USING btree (parent_id);


--
-- Name: redirects_rels_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX redirects_rels_path_idx ON public.redirects_rels USING btree (path);


--
-- Name: redirects_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX redirects_rels_posts_id_idx ON public.redirects_rels USING btree (posts_id);


--
-- Name: redirects_updated_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX redirects_updated_at_idx ON public.redirects USING btree (updated_at);


--
-- Name: search_categories_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX search_categories_order_idx ON public.search_categories USING btree (_order);


--
-- Name: search_categories_parent_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX search_categories_parent_id_idx ON public.search_categories USING btree (_parent_id);


--
-- Name: search_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX search_created_at_idx ON public.search USING btree (created_at);


--
-- Name: search_meta_meta_image_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX search_meta_meta_image_idx ON public.search USING btree (meta_image_id);


--
-- Name: search_rels_order_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX search_rels_order_idx ON public.search_rels USING btree ("order");


--
-- Name: search_rels_parent_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX search_rels_parent_idx ON public.search_rels USING btree (parent_id);


--
-- Name: search_rels_path_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX search_rels_path_idx ON public.search_rels USING btree (path);


--
-- Name: search_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX search_rels_posts_id_idx ON public.search_rels USING btree (posts_id);


--
-- Name: search_slug_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX search_slug_idx ON public.search USING btree (slug);


--
-- Name: search_updated_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX search_updated_at_idx ON public.search USING btree (updated_at);


--
-- Name: users_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_created_at_idx ON public.users USING btree (created_at);


--
-- Name: users_email_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX users_email_idx ON public.users USING btree (email);


--
-- Name: users_updated_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_updated_at_idx ON public.users USING btree (updated_at);


--
-- Name: _pages_v_blocks_appointment_block_left_content_paragraphs _pages_v_blocks_appointment_block_left_content_paragraphs_paren; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_appointment_block_left_content_paragraphs
    ADD CONSTRAINT _pages_v_blocks_appointment_block_left_content_paragraphs_paren FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_appointment_block(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_appointment_block _pages_v_blocks_appointment_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_appointment_block
    ADD CONSTRAINT _pages_v_blocks_appointment_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_appointment_block_right_schedule_slots _pages_v_blocks_appointment_block_right_schedule_slots_parent_i; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_appointment_block_right_schedule_slots
    ADD CONSTRAINT _pages_v_blocks_appointment_block_right_schedule_slots_parent_i FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_appointment_block(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_appointment_block_right_universities _pages_v_blocks_appointment_block_right_universities_img_id_med; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_appointment_block_right_universities
    ADD CONSTRAINT _pages_v_blocks_appointment_block_right_universities_img_id_med FOREIGN KEY (img_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_appointment_block_right_universities _pages_v_blocks_appointment_block_right_universities_parent_id_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_appointment_block_right_universities
    ADD CONSTRAINT _pages_v_blocks_appointment_block_right_universities_parent_id_ FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_appointment_block(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_archive _pages_v_blocks_archive_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_archive
    ADD CONSTRAINT _pages_v_blocks_archive_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_content_columns _pages_v_blocks_content_columns_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_content_columns
    ADD CONSTRAINT _pages_v_blocks_content_columns_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_content(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_content _pages_v_blocks_content_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_content
    ADD CONSTRAINT _pages_v_blocks_content_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_counseling_block _pages_v_blocks_counseling_block_background_image_id_media_id_f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_counseling_block
    ADD CONSTRAINT _pages_v_blocks_counseling_block_background_image_id_media_id_f FOREIGN KEY (background_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_counseling_block_cards _pages_v_blocks_counseling_block_cards_card_image_id_media_id_f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_counseling_block_cards
    ADD CONSTRAINT _pages_v_blocks_counseling_block_cards_card_image_id_media_id_f FOREIGN KEY (card_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_counseling_block_cards_countries _pages_v_blocks_counseling_block_cards_countries_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_counseling_block_cards_countries
    ADD CONSTRAINT _pages_v_blocks_counseling_block_cards_countries_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_counseling_block_cards(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_counseling_block_cards _pages_v_blocks_counseling_block_cards_icon_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_counseling_block_cards
    ADD CONSTRAINT _pages_v_blocks_counseling_block_cards_icon_id_media_id_fk FOREIGN KEY (icon_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_counseling_block_cards _pages_v_blocks_counseling_block_cards_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_counseling_block_cards
    ADD CONSTRAINT _pages_v_blocks_counseling_block_cards_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_counseling_block(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_counseling_block _pages_v_blocks_counseling_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_counseling_block
    ADD CONSTRAINT _pages_v_blocks_counseling_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_cta_block _pages_v_blocks_cta_block_brand_logo_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_cta_block
    ADD CONSTRAINT _pages_v_blocks_cta_block_brand_logo_id_media_id_fk FOREIGN KEY (brand_logo_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_cta_block _pages_v_blocks_cta_block_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_cta_block
    ADD CONSTRAINT _pages_v_blocks_cta_block_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_cta_block_offices _pages_v_blocks_cta_block_offices_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_cta_block_offices
    ADD CONSTRAINT _pages_v_blocks_cta_block_offices_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_cta_block(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_cta_block _pages_v_blocks_cta_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_cta_block
    ADD CONSTRAINT _pages_v_blocks_cta_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_cta_block_phone_numbers _pages_v_blocks_cta_block_phone_numbers_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_cta_block_phone_numbers
    ADD CONSTRAINT _pages_v_blocks_cta_block_phone_numbers_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_cta_block(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_cta_links _pages_v_blocks_cta_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_cta_links
    ADD CONSTRAINT _pages_v_blocks_cta_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_cta(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_cta _pages_v_blocks_cta_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_cta
    ADD CONSTRAINT _pages_v_blocks_cta_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_form_block _pages_v_blocks_form_block_form_id_forms_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_form_block
    ADD CONSTRAINT _pages_v_blocks_form_block_form_id_forms_id_fk FOREIGN KEY (form_id) REFERENCES public.forms(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_form_block _pages_v_blocks_form_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_form_block
    ADD CONSTRAINT _pages_v_blocks_form_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_get_started_block_features _pages_v_blocks_get_started_block_features_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_get_started_block_features
    ADD CONSTRAINT _pages_v_blocks_get_started_block_features_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_get_started_block(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_get_started_block _pages_v_blocks_get_started_block_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_get_started_block
    ADD CONSTRAINT _pages_v_blocks_get_started_block_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_get_started_block _pages_v_blocks_get_started_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_get_started_block
    ADD CONSTRAINT _pages_v_blocks_get_started_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_ielts_block_features _pages_v_blocks_ielts_block_features_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_ielts_block_features
    ADD CONSTRAINT _pages_v_blocks_ielts_block_features_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_ielts_block(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_ielts_block _pages_v_blocks_ielts_block_ielts_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_ielts_block
    ADD CONSTRAINT _pages_v_blocks_ielts_block_ielts_image_id_media_id_fk FOREIGN KEY (ielts_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_ielts_block _pages_v_blocks_ielts_block_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_ielts_block
    ADD CONSTRAINT _pages_v_blocks_ielts_block_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_ielts_block _pages_v_blocks_ielts_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_ielts_block
    ADD CONSTRAINT _pages_v_blocks_ielts_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_ielts_block_study_modes _pages_v_blocks_ielts_block_study_modes_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_ielts_block_study_modes
    ADD CONSTRAINT _pages_v_blocks_ielts_block_study_modes_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_ielts_block(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_map_block_offices _pages_v_blocks_map_block_offices_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_map_block_offices
    ADD CONSTRAINT _pages_v_blocks_map_block_offices_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_map_block(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_map_block _pages_v_blocks_map_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_map_block
    ADD CONSTRAINT _pages_v_blocks_map_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_media_block _pages_v_blocks_media_block_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_media_block
    ADD CONSTRAINT _pages_v_blocks_media_block_media_id_media_id_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_media_block _pages_v_blocks_media_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_media_block
    ADD CONSTRAINT _pages_v_blocks_media_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_study_abroad_block_cards _pages_v_blocks_study_abroad_block_cards_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_study_abroad_block_cards
    ADD CONSTRAINT _pages_v_blocks_study_abroad_block_cards_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_study_abroad_block_cards _pages_v_blocks_study_abroad_block_cards_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_study_abroad_block_cards
    ADD CONSTRAINT _pages_v_blocks_study_abroad_block_cards_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_study_abroad_block(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_study_abroad_block _pages_v_blocks_study_abroad_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_study_abroad_block
    ADD CONSTRAINT _pages_v_blocks_study_abroad_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_testimonials_block _pages_v_blocks_testimonials_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_testimonials_block
    ADD CONSTRAINT _pages_v_blocks_testimonials_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_testimonials_block_testimonials _pages_v_blocks_testimonials_block_testimonials_image_id_media_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_testimonials_block_testimonials
    ADD CONSTRAINT _pages_v_blocks_testimonials_block_testimonials_image_id_media_ FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_testimonials_block_testimonials _pages_v_blocks_testimonials_block_testimonials_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_testimonials_block_testimonials
    ADD CONSTRAINT _pages_v_blocks_testimonials_block_testimonials_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_testimonials_block(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_testimonials_block_testimonials _pages_v_blocks_testimonials_block_testimonials_university_imag; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_testimonials_block_testimonials
    ADD CONSTRAINT _pages_v_blocks_testimonials_block_testimonials_university_imag FOREIGN KEY (university_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_universities_block _pages_v_blocks_universities_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_universities_block
    ADD CONSTRAINT _pages_v_blocks_universities_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_universities_block_stats _pages_v_blocks_universities_block_stats_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_universities_block_stats
    ADD CONSTRAINT _pages_v_blocks_universities_block_stats_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_universities_block(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_universities_block_universities_images _pages_v_blocks_universities_block_universities_images_image_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_universities_block_universities_images
    ADD CONSTRAINT _pages_v_blocks_universities_block_universities_images_image_id FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_universities_block_universities_images _pages_v_blocks_universities_block_universities_images_parent_i; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_universities_block_universities_images
    ADD CONSTRAINT _pages_v_blocks_universities_block_universities_images_parent_i FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_universities_block(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_world_student_block _pages_v_blocks_world_student_block_background_image_id_media_i; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_world_student_block
    ADD CONSTRAINT _pages_v_blocks_world_student_block_background_image_id_media_i FOREIGN KEY (background_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_world_student_block_items _pages_v_blocks_world_student_block_items_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_world_student_block_items
    ADD CONSTRAINT _pages_v_blocks_world_student_block_items_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_world_student_block_items _pages_v_blocks_world_student_block_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_world_student_block_items
    ADD CONSTRAINT _pages_v_blocks_world_student_block_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_world_student_block(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_world_student_block _pages_v_blocks_world_student_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_blocks_world_student_block
    ADD CONSTRAINT _pages_v_blocks_world_student_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v _pages_v_parent_id_pages_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v
    ADD CONSTRAINT _pages_v_parent_id_pages_id_fk FOREIGN KEY (parent_id) REFERENCES public.pages(id) ON DELETE SET NULL;


--
-- Name: _pages_v_rels _pages_v_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_categories_fk FOREIGN KEY (categories_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: _pages_v_rels _pages_v_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: _pages_v_rels _pages_v_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_rels _pages_v_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: _pages_v_version_hero_links _pages_v_version_hero_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v_version_hero_links
    ADD CONSTRAINT _pages_v_version_hero_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v _pages_v_version_hero_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v
    ADD CONSTRAINT _pages_v_version_hero_media_id_media_id_fk FOREIGN KEY (version_hero_media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v _pages_v_version_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._pages_v
    ADD CONSTRAINT _pages_v_version_meta_image_id_media_id_fk FOREIGN KEY (version_meta_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _posts_v _posts_v_parent_id_posts_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._posts_v
    ADD CONSTRAINT _posts_v_parent_id_posts_id_fk FOREIGN KEY (parent_id) REFERENCES public.posts(id) ON DELETE SET NULL;


--
-- Name: _posts_v_rels _posts_v_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._posts_v_rels
    ADD CONSTRAINT _posts_v_rels_categories_fk FOREIGN KEY (categories_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: _posts_v_rels _posts_v_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._posts_v_rels
    ADD CONSTRAINT _posts_v_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public._posts_v(id) ON DELETE CASCADE;


--
-- Name: _posts_v_rels _posts_v_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._posts_v_rels
    ADD CONSTRAINT _posts_v_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: _posts_v_rels _posts_v_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._posts_v_rels
    ADD CONSTRAINT _posts_v_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: _posts_v _posts_v_version_hero_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._posts_v
    ADD CONSTRAINT _posts_v_version_hero_image_id_media_id_fk FOREIGN KEY (version_hero_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _posts_v _posts_v_version_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._posts_v
    ADD CONSTRAINT _posts_v_version_meta_image_id_media_id_fk FOREIGN KEY (version_meta_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _posts_v_version_populated_authors _posts_v_version_populated_authors_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._posts_v_version_populated_authors
    ADD CONSTRAINT _posts_v_version_populated_authors_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._posts_v(id) ON DELETE CASCADE;


--
-- Name: categories_breadcrumbs categories_breadcrumbs_doc_id_categories_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories_breadcrumbs
    ADD CONSTRAINT categories_breadcrumbs_doc_id_categories_id_fk FOREIGN KEY (doc_id) REFERENCES public.categories(id) ON DELETE SET NULL;


--
-- Name: categories_breadcrumbs categories_breadcrumbs_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories_breadcrumbs
    ADD CONSTRAINT categories_breadcrumbs_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: categories categories_parent_id_categories_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_parent_id_categories_id_fk FOREIGN KEY (parent_id) REFERENCES public.categories(id) ON DELETE SET NULL;


--
-- Name: footer_about footer_about_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_about
    ADD CONSTRAINT footer_about_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.footer(id) ON DELETE CASCADE;


--
-- Name: footer_help footer_help_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_help
    ADD CONSTRAINT footer_help_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.footer(id) ON DELETE CASCADE;


--
-- Name: footer_legal footer_legal_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_legal
    ADD CONSTRAINT footer_legal_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.footer(id) ON DELETE CASCADE;


--
-- Name: footer_rels footer_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_rels
    ADD CONSTRAINT footer_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: footer_rels footer_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_rels
    ADD CONSTRAINT footer_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.footer(id) ON DELETE CASCADE;


--
-- Name: footer_rels footer_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_rels
    ADD CONSTRAINT footer_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: footer_services footer_services_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_services
    ADD CONSTRAINT footer_services_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.footer(id) ON DELETE CASCADE;


--
-- Name: footer_social footer_social_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footer_social
    ADD CONSTRAINT footer_social_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.footer(id) ON DELETE CASCADE;


--
-- Name: form_submissions form_submissions_form_id_forms_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.form_submissions
    ADD CONSTRAINT form_submissions_form_id_forms_id_fk FOREIGN KEY (form_id) REFERENCES public.forms(id) ON DELETE SET NULL;


--
-- Name: form_submissions_submission_data form_submissions_submission_data_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.form_submissions_submission_data
    ADD CONSTRAINT form_submissions_submission_data_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.form_submissions(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_checkbox forms_blocks_checkbox_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_blocks_checkbox
    ADD CONSTRAINT forms_blocks_checkbox_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_country forms_blocks_country_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_blocks_country
    ADD CONSTRAINT forms_blocks_country_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_email forms_blocks_email_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_blocks_email
    ADD CONSTRAINT forms_blocks_email_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_message forms_blocks_message_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_blocks_message
    ADD CONSTRAINT forms_blocks_message_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_number forms_blocks_number_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_blocks_number
    ADD CONSTRAINT forms_blocks_number_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_select_options forms_blocks_select_options_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_blocks_select_options
    ADD CONSTRAINT forms_blocks_select_options_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms_blocks_select(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_select forms_blocks_select_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_blocks_select
    ADD CONSTRAINT forms_blocks_select_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_state forms_blocks_state_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_blocks_state
    ADD CONSTRAINT forms_blocks_state_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_text forms_blocks_text_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_blocks_text
    ADD CONSTRAINT forms_blocks_text_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_textarea forms_blocks_textarea_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_blocks_textarea
    ADD CONSTRAINT forms_blocks_textarea_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_emails forms_emails_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_emails
    ADD CONSTRAINT forms_emails_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: header_nav_items header_nav_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.header_nav_items
    ADD CONSTRAINT header_nav_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.header(id) ON DELETE CASCADE;


--
-- Name: header_rels header_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.header_rels
    ADD CONSTRAINT header_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: header_rels header_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.header_rels
    ADD CONSTRAINT header_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.header(id) ON DELETE CASCADE;


--
-- Name: header_rels header_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.header_rels
    ADD CONSTRAINT header_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_appointment_block_left_content_paragraphs pages_blocks_appointment_block_left_content_paragraphs_parent_i; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_appointment_block_left_content_paragraphs
    ADD CONSTRAINT pages_blocks_appointment_block_left_content_paragraphs_parent_i FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_appointment_block(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_appointment_block pages_blocks_appointment_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_appointment_block
    ADD CONSTRAINT pages_blocks_appointment_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_appointment_block_right_schedule_slots pages_blocks_appointment_block_right_schedule_slots_parent_id_f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_appointment_block_right_schedule_slots
    ADD CONSTRAINT pages_blocks_appointment_block_right_schedule_slots_parent_id_f FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_appointment_block(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_appointment_block_right_universities pages_blocks_appointment_block_right_universities_img_id_media_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_appointment_block_right_universities
    ADD CONSTRAINT pages_blocks_appointment_block_right_universities_img_id_media_ FOREIGN KEY (img_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_appointment_block_right_universities pages_blocks_appointment_block_right_universities_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_appointment_block_right_universities
    ADD CONSTRAINT pages_blocks_appointment_block_right_universities_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_appointment_block(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_archive pages_blocks_archive_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_archive
    ADD CONSTRAINT pages_blocks_archive_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_content_columns pages_blocks_content_columns_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_content_columns
    ADD CONSTRAINT pages_blocks_content_columns_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_content(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_content pages_blocks_content_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_content
    ADD CONSTRAINT pages_blocks_content_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_counseling_block pages_blocks_counseling_block_background_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_counseling_block
    ADD CONSTRAINT pages_blocks_counseling_block_background_image_id_media_id_fk FOREIGN KEY (background_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_counseling_block_cards pages_blocks_counseling_block_cards_card_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_counseling_block_cards
    ADD CONSTRAINT pages_blocks_counseling_block_cards_card_image_id_media_id_fk FOREIGN KEY (card_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_counseling_block_cards_countries pages_blocks_counseling_block_cards_countries_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_counseling_block_cards_countries
    ADD CONSTRAINT pages_blocks_counseling_block_cards_countries_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_counseling_block_cards(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_counseling_block_cards pages_blocks_counseling_block_cards_icon_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_counseling_block_cards
    ADD CONSTRAINT pages_blocks_counseling_block_cards_icon_id_media_id_fk FOREIGN KEY (icon_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_counseling_block_cards pages_blocks_counseling_block_cards_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_counseling_block_cards
    ADD CONSTRAINT pages_blocks_counseling_block_cards_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_counseling_block(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_counseling_block pages_blocks_counseling_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_counseling_block
    ADD CONSTRAINT pages_blocks_counseling_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_cta_block pages_blocks_cta_block_brand_logo_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_cta_block
    ADD CONSTRAINT pages_blocks_cta_block_brand_logo_id_media_id_fk FOREIGN KEY (brand_logo_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_cta_block pages_blocks_cta_block_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_cta_block
    ADD CONSTRAINT pages_blocks_cta_block_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_cta_block_offices pages_blocks_cta_block_offices_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_cta_block_offices
    ADD CONSTRAINT pages_blocks_cta_block_offices_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_cta_block(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_cta_block pages_blocks_cta_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_cta_block
    ADD CONSTRAINT pages_blocks_cta_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_cta_block_phone_numbers pages_blocks_cta_block_phone_numbers_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_cta_block_phone_numbers
    ADD CONSTRAINT pages_blocks_cta_block_phone_numbers_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_cta_block(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_cta_links pages_blocks_cta_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_cta_links
    ADD CONSTRAINT pages_blocks_cta_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_cta(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_cta pages_blocks_cta_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_cta
    ADD CONSTRAINT pages_blocks_cta_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_form_block pages_blocks_form_block_form_id_forms_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_form_block
    ADD CONSTRAINT pages_blocks_form_block_form_id_forms_id_fk FOREIGN KEY (form_id) REFERENCES public.forms(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_form_block pages_blocks_form_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_form_block
    ADD CONSTRAINT pages_blocks_form_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_get_started_block_features pages_blocks_get_started_block_features_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_get_started_block_features
    ADD CONSTRAINT pages_blocks_get_started_block_features_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_get_started_block(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_get_started_block pages_blocks_get_started_block_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_get_started_block
    ADD CONSTRAINT pages_blocks_get_started_block_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_get_started_block pages_blocks_get_started_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_get_started_block
    ADD CONSTRAINT pages_blocks_get_started_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_ielts_block_features pages_blocks_ielts_block_features_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_ielts_block_features
    ADD CONSTRAINT pages_blocks_ielts_block_features_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_ielts_block(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_ielts_block pages_blocks_ielts_block_ielts_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_ielts_block
    ADD CONSTRAINT pages_blocks_ielts_block_ielts_image_id_media_id_fk FOREIGN KEY (ielts_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_ielts_block pages_blocks_ielts_block_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_ielts_block
    ADD CONSTRAINT pages_blocks_ielts_block_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_ielts_block pages_blocks_ielts_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_ielts_block
    ADD CONSTRAINT pages_blocks_ielts_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_ielts_block_study_modes pages_blocks_ielts_block_study_modes_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_ielts_block_study_modes
    ADD CONSTRAINT pages_blocks_ielts_block_study_modes_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_ielts_block(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_map_block_offices pages_blocks_map_block_offices_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_map_block_offices
    ADD CONSTRAINT pages_blocks_map_block_offices_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_map_block(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_map_block pages_blocks_map_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_map_block
    ADD CONSTRAINT pages_blocks_map_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_media_block pages_blocks_media_block_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_media_block
    ADD CONSTRAINT pages_blocks_media_block_media_id_media_id_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_media_block pages_blocks_media_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_media_block
    ADD CONSTRAINT pages_blocks_media_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_study_abroad_block_cards pages_blocks_study_abroad_block_cards_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_study_abroad_block_cards
    ADD CONSTRAINT pages_blocks_study_abroad_block_cards_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_study_abroad_block_cards pages_blocks_study_abroad_block_cards_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_study_abroad_block_cards
    ADD CONSTRAINT pages_blocks_study_abroad_block_cards_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_study_abroad_block(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_study_abroad_block pages_blocks_study_abroad_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_study_abroad_block
    ADD CONSTRAINT pages_blocks_study_abroad_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_testimonials_block pages_blocks_testimonials_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_testimonials_block
    ADD CONSTRAINT pages_blocks_testimonials_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_testimonials_block_testimonials pages_blocks_testimonials_block_testimonials_image_id_media_id_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_testimonials_block_testimonials
    ADD CONSTRAINT pages_blocks_testimonials_block_testimonials_image_id_media_id_ FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_testimonials_block_testimonials pages_blocks_testimonials_block_testimonials_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_testimonials_block_testimonials
    ADD CONSTRAINT pages_blocks_testimonials_block_testimonials_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_testimonials_block(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_testimonials_block_testimonials pages_blocks_testimonials_block_testimonials_university_image_i; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_testimonials_block_testimonials
    ADD CONSTRAINT pages_blocks_testimonials_block_testimonials_university_image_i FOREIGN KEY (university_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_universities_block pages_blocks_universities_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_universities_block
    ADD CONSTRAINT pages_blocks_universities_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_universities_block_stats pages_blocks_universities_block_stats_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_universities_block_stats
    ADD CONSTRAINT pages_blocks_universities_block_stats_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_universities_block(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_universities_block_universities_images pages_blocks_universities_block_universities_images_image_id_me; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_universities_block_universities_images
    ADD CONSTRAINT pages_blocks_universities_block_universities_images_image_id_me FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_universities_block_universities_images pages_blocks_universities_block_universities_images_parent_id_f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_universities_block_universities_images
    ADD CONSTRAINT pages_blocks_universities_block_universities_images_parent_id_f FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_universities_block(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_world_student_block pages_blocks_world_student_block_background_image_id_media_id_f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_world_student_block
    ADD CONSTRAINT pages_blocks_world_student_block_background_image_id_media_id_f FOREIGN KEY (background_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_world_student_block_items pages_blocks_world_student_block_items_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_world_student_block_items
    ADD CONSTRAINT pages_blocks_world_student_block_items_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_world_student_block_items pages_blocks_world_student_block_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_world_student_block_items
    ADD CONSTRAINT pages_blocks_world_student_block_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_world_student_block(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_world_student_block pages_blocks_world_student_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_blocks_world_student_block
    ADD CONSTRAINT pages_blocks_world_student_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_hero_links pages_hero_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_hero_links
    ADD CONSTRAINT pages_hero_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages pages_hero_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_hero_media_id_media_id_fk FOREIGN KEY (hero_media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages pages_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_meta_image_id_media_id_fk FOREIGN KEY (meta_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_rels pages_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_categories_fk FOREIGN KEY (categories_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: payload_jobs_log payload_jobs_log_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payload_jobs_log
    ADD CONSTRAINT payload_jobs_log_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.payload_jobs(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_categories_fk FOREIGN KEY (categories_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_form_submissions_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_form_submissions_fk FOREIGN KEY (form_submissions_id) REFERENCES public.form_submissions(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_forms_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_forms_fk FOREIGN KEY (forms_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_media_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_media_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.payload_locked_documents(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_payload_jobs_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_payload_jobs_fk FOREIGN KEY (payload_jobs_id) REFERENCES public.payload_jobs(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_redirects_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_redirects_fk FOREIGN KEY (redirects_id) REFERENCES public.redirects(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_search_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_search_fk FOREIGN KEY (search_id) REFERENCES public.search(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: payload_preferences_rels payload_preferences_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payload_preferences_rels
    ADD CONSTRAINT payload_preferences_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.payload_preferences(id) ON DELETE CASCADE;


--
-- Name: payload_preferences_rels payload_preferences_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payload_preferences_rels
    ADD CONSTRAINT payload_preferences_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: posts posts_hero_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_hero_image_id_media_id_fk FOREIGN KEY (hero_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: posts posts_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_meta_image_id_media_id_fk FOREIGN KEY (meta_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: posts_populated_authors posts_populated_authors_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts_populated_authors
    ADD CONSTRAINT posts_populated_authors_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: posts_rels posts_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts_rels
    ADD CONSTRAINT posts_rels_categories_fk FOREIGN KEY (categories_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: posts_rels posts_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts_rels
    ADD CONSTRAINT posts_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: posts_rels posts_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts_rels
    ADD CONSTRAINT posts_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: posts_rels posts_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts_rels
    ADD CONSTRAINT posts_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: redirects_rels redirects_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.redirects_rels
    ADD CONSTRAINT redirects_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: redirects_rels redirects_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.redirects_rels
    ADD CONSTRAINT redirects_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.redirects(id) ON DELETE CASCADE;


--
-- Name: redirects_rels redirects_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.redirects_rels
    ADD CONSTRAINT redirects_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: search_categories search_categories_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.search_categories
    ADD CONSTRAINT search_categories_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.search(id) ON DELETE CASCADE;


--
-- Name: search search_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.search
    ADD CONSTRAINT search_meta_image_id_media_id_fk FOREIGN KEY (meta_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: search_rels search_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.search_rels
    ADD CONSTRAINT search_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.search(id) ON DELETE CASCADE;


--
-- Name: search_rels search_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.search_rels
    ADD CONSTRAINT search_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;


--
-- PostgreSQL database dump complete
--

