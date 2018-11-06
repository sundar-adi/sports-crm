--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 9.5.14

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: article_articlepage; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.article_articlepage (
    page_ptr_id integer NOT NULL,
    publication_date date NOT NULL,
    body text NOT NULL,
    featured_image_id integer
);


ALTER TABLE public.article_articlepage OWNER TO django;

--
-- Name: article_articlepage_authors; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.article_articlepage_authors (
    id integer NOT NULL,
    articlepage_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.article_articlepage_authors OWNER TO django;

--
-- Name: article_articlepage_authors_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.article_articlepage_authors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.article_articlepage_authors_id_seq OWNER TO django;

--
-- Name: article_articlepage_authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.article_articlepage_authors_id_seq OWNED BY public.article_articlepage_authors.id;


--
-- Name: article_articlepage_contributors; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.article_articlepage_contributors (
    id integer NOT NULL,
    articlepage_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.article_articlepage_contributors OWNER TO django;

--
-- Name: article_articlepage_contributors_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.article_articlepage_contributors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.article_articlepage_contributors_id_seq OWNER TO django;

--
-- Name: article_articlepage_contributors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.article_articlepage_contributors_id_seq OWNED BY public.article_articlepage_contributors.id;


--
-- Name: article_articlepage_editors; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.article_articlepage_editors (
    id integer NOT NULL,
    articlepage_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.article_articlepage_editors OWNER TO django;

--
-- Name: article_articlepage_editors_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.article_articlepage_editors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.article_articlepage_editors_id_seq OWNER TO django;

--
-- Name: article_articlepage_editors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.article_articlepage_editors_id_seq OWNED BY public.article_articlepage_editors.id;


--
-- Name: article_articletag; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.article_articletag (
    id integer NOT NULL,
    content_object_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.article_articletag OWNER TO django;

--
-- Name: article_articletag_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.article_articletag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.article_articletag_id_seq OWNER TO django;

--
-- Name: article_articletag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.article_articletag_id_seq OWNED BY public.article_articletag.id;


--
-- Name: article_articletagindexpage; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.article_articletagindexpage (
    page_ptr_id integer NOT NULL
);


ALTER TABLE public.article_articletagindexpage OWNER TO django;

--
-- Name: article_podcastepisodepage; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.article_podcastepisodepage (
    articlepage_ptr_id integer NOT NULL
);


ALTER TABLE public.article_podcastepisodepage OWNER TO django;

--
-- Name: article_podcastpage; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.article_podcastpage (
    articlepage_ptr_id integer NOT NULL
);


ALTER TABLE public.article_podcastpage OWNER TO django;

--
-- Name: article_videopage; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.article_videopage (
    articlepage_ptr_id integer NOT NULL
);


ALTER TABLE public.article_videopage OWNER TO django;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO django;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO django;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO django;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO django;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO django;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO django;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO django;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO django;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO django;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO django;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO django;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO django;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO django;

--
-- Name: djstripe_account; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.djstripe_account (
    djstripe_id bigint NOT NULL,
    stripe_id character varying(255) NOT NULL,
    livemode boolean,
    created timestamp with time zone,
    metadata text,
    description text,
    djstripe_created timestamp with time zone NOT NULL,
    djstripe_updated timestamp with time zone NOT NULL,
    business_name character varying(255) NOT NULL,
    business_primary_color character varying(7),
    business_url character varying(200),
    charges_enabled boolean NOT NULL,
    country character varying(2) NOT NULL,
    debit_negative_balances boolean,
    decline_charge_on text,
    default_currency character varying(3) NOT NULL,
    details_submitted boolean NOT NULL,
    display_name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    legal_entity text,
    payout_schedule text,
    payout_statement_descriptor character varying(255),
    payouts_enabled boolean NOT NULL,
    product_description character varying(255),
    statement_descriptor character varying(255) NOT NULL,
    support_email character varying(255) NOT NULL,
    support_phone character varying(255) NOT NULL,
    support_url character varying(200) NOT NULL,
    timezone character varying(50) NOT NULL,
    type character varying(8) NOT NULL,
    tos_acceptance text,
    verification text,
    business_logo_id bigint
);


ALTER TABLE public.djstripe_account OWNER TO django;

--
-- Name: djstripe_account_djstripe_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.djstripe_account_djstripe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.djstripe_account_djstripe_id_seq OWNER TO django;

--
-- Name: djstripe_account_djstripe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.djstripe_account_djstripe_id_seq OWNED BY public.djstripe_account.djstripe_id;


--
-- Name: djstripe_bankaccount; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.djstripe_bankaccount (
    djstripe_id bigint NOT NULL,
    stripe_id character varying(255) NOT NULL,
    livemode boolean,
    created timestamp with time zone,
    metadata text,
    description text,
    djstripe_created timestamp with time zone NOT NULL,
    djstripe_updated timestamp with time zone NOT NULL,
    account_holder_name character varying(5000),
    account_holder_type character varying(10) NOT NULL,
    bank_name character varying(255) NOT NULL,
    country character varying(2) NOT NULL,
    currency character varying(3) NOT NULL,
    default_for_currency boolean,
    fingerprint character varying(16) NOT NULL,
    last4 character varying(4) NOT NULL,
    routing_number character varying(255) NOT NULL,
    status character varying(19) NOT NULL,
    account_id bigint NOT NULL,
    customer_id bigint
);


ALTER TABLE public.djstripe_bankaccount OWNER TO django;

--
-- Name: djstripe_bankaccount_djstripe_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.djstripe_bankaccount_djstripe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.djstripe_bankaccount_djstripe_id_seq OWNER TO django;

--
-- Name: djstripe_bankaccount_djstripe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.djstripe_bankaccount_djstripe_id_seq OWNED BY public.djstripe_bankaccount.djstripe_id;


--
-- Name: djstripe_card; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.djstripe_card (
    djstripe_id bigint NOT NULL,
    stripe_id character varying(255) NOT NULL,
    livemode boolean,
    created timestamp with time zone,
    metadata text,
    description text,
    djstripe_created timestamp with time zone NOT NULL,
    djstripe_updated timestamp with time zone NOT NULL,
    address_city text,
    address_country text,
    address_line1 text,
    address_line1_check character varying(11),
    address_line2 text,
    address_state text,
    address_zip text,
    address_zip_check character varying(11),
    brand character varying(16) NOT NULL,
    country character varying(2),
    cvc_check character varying(11),
    dynamic_last4 character varying(4),
    exp_month integer NOT NULL,
    exp_year integer NOT NULL,
    fingerprint text,
    funding character varying(7) NOT NULL,
    last4 character varying(4) NOT NULL,
    name text,
    tokenization_method character varying(11),
    customer_id bigint NOT NULL
);


ALTER TABLE public.djstripe_card OWNER TO django;

--
-- Name: djstripe_card_djstripe_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.djstripe_card_djstripe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.djstripe_card_djstripe_id_seq OWNER TO django;

--
-- Name: djstripe_card_djstripe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.djstripe_card_djstripe_id_seq OWNED BY public.djstripe_card.djstripe_id;


--
-- Name: djstripe_charge; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.djstripe_charge (
    djstripe_id bigint NOT NULL,
    stripe_id character varying(255) NOT NULL,
    livemode boolean,
    created timestamp with time zone,
    metadata text,
    description text,
    djstripe_created timestamp with time zone NOT NULL,
    djstripe_updated timestamp with time zone NOT NULL,
    amount numeric(8,2) NOT NULL,
    amount_refunded numeric(8,2) NOT NULL,
    captured boolean NOT NULL,
    currency character varying(3) NOT NULL,
    failure_code character varying(20),
    failure_message text,
    fraud_details text NOT NULL,
    outcome text NOT NULL,
    paid boolean NOT NULL,
    receipt_email character varying(800),
    receipt_number character varying(9),
    refunded boolean NOT NULL,
    shipping text,
    statement_descriptor character varying(22),
    status character varying(9) NOT NULL,
    transfer_group character varying(255),
    fee numeric(8,2),
    fee_details text,
    source_type character varying(16),
    source_stripe_id character varying(255),
    fraudulent boolean NOT NULL,
    receipt_sent boolean NOT NULL,
    account_id bigint,
    customer_id bigint,
    dispute_id bigint,
    invoice_id bigint,
    source_id character varying(255),
    transfer_id bigint
);


ALTER TABLE public.djstripe_charge OWNER TO django;

--
-- Name: djstripe_charge_djstripe_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.djstripe_charge_djstripe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.djstripe_charge_djstripe_id_seq OWNER TO django;

--
-- Name: djstripe_charge_djstripe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.djstripe_charge_djstripe_id_seq OWNED BY public.djstripe_charge.djstripe_id;


--
-- Name: djstripe_coupon; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.djstripe_coupon (
    djstripe_id bigint NOT NULL,
    livemode boolean,
    created timestamp with time zone,
    metadata text,
    description text,
    djstripe_created timestamp with time zone NOT NULL,
    djstripe_updated timestamp with time zone NOT NULL,
    stripe_id character varying(500) NOT NULL,
    amount_off numeric(8,2),
    currency character varying(3),
    duration character varying(9) NOT NULL,
    duration_in_months integer,
    max_redemptions integer,
    percent_off integer,
    redeem_by timestamp with time zone,
    times_redeemed integer NOT NULL,
    CONSTRAINT djstripe_coupon_duration_in_months_check CHECK ((duration_in_months >= 0)),
    CONSTRAINT djstripe_coupon_max_redemptions_check CHECK ((max_redemptions >= 0)),
    CONSTRAINT djstripe_coupon_percent_off_check CHECK ((percent_off >= 0)),
    CONSTRAINT djstripe_coupon_times_redeemed_check CHECK ((times_redeemed >= 0))
);


ALTER TABLE public.djstripe_coupon OWNER TO django;

--
-- Name: djstripe_coupon_djstripe_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.djstripe_coupon_djstripe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.djstripe_coupon_djstripe_id_seq OWNER TO django;

--
-- Name: djstripe_coupon_djstripe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.djstripe_coupon_djstripe_id_seq OWNED BY public.djstripe_coupon.djstripe_id;


--
-- Name: djstripe_customer; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.djstripe_customer (
    djstripe_id bigint NOT NULL,
    stripe_id character varying(255) NOT NULL,
    livemode boolean,
    created timestamp with time zone,
    metadata text,
    description text,
    djstripe_created timestamp with time zone NOT NULL,
    djstripe_updated timestamp with time zone NOT NULL,
    account_balance integer NOT NULL,
    business_vat_id character varying(20),
    currency character varying(3),
    delinquent boolean NOT NULL,
    coupon_start timestamp with time zone,
    coupon_end timestamp with time zone,
    email text,
    shipping text,
    date_purged timestamp with time zone,
    coupon_id bigint,
    default_source_id character varying(255),
    subscriber_id integer
);


ALTER TABLE public.djstripe_customer OWNER TO django;

--
-- Name: djstripe_customer_djstripe_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.djstripe_customer_djstripe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.djstripe_customer_djstripe_id_seq OWNER TO django;

--
-- Name: djstripe_customer_djstripe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.djstripe_customer_djstripe_id_seq OWNED BY public.djstripe_customer.djstripe_id;


--
-- Name: djstripe_dispute; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.djstripe_dispute (
    djstripe_id bigint NOT NULL,
    stripe_id character varying(255) NOT NULL,
    livemode boolean,
    created timestamp with time zone,
    metadata text,
    description text,
    djstripe_created timestamp with time zone NOT NULL,
    djstripe_updated timestamp with time zone NOT NULL,
    amount integer NOT NULL,
    currency character varying(3) NOT NULL,
    evidence text NOT NULL,
    evidence_details text NOT NULL,
    is_charge_refundable boolean NOT NULL,
    reason character varying(25) NOT NULL,
    status character varying(22) NOT NULL
);


ALTER TABLE public.djstripe_dispute OWNER TO django;

--
-- Name: djstripe_dispute_djstripe_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.djstripe_dispute_djstripe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.djstripe_dispute_djstripe_id_seq OWNER TO django;

--
-- Name: djstripe_dispute_djstripe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.djstripe_dispute_djstripe_id_seq OWNED BY public.djstripe_dispute.djstripe_id;


--
-- Name: djstripe_event; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.djstripe_event (
    djstripe_id bigint NOT NULL,
    stripe_id character varying(255) NOT NULL,
    livemode boolean,
    created timestamp with time zone,
    metadata text,
    description text,
    djstripe_created timestamp with time zone NOT NULL,
    djstripe_updated timestamp with time zone NOT NULL,
    api_version character varying(15) NOT NULL,
    data text NOT NULL,
    request_id character varying(50),
    idempotency_key text,
    type character varying(250) NOT NULL
);


ALTER TABLE public.djstripe_event OWNER TO django;

--
-- Name: djstripe_event_djstripe_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.djstripe_event_djstripe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.djstripe_event_djstripe_id_seq OWNER TO django;

--
-- Name: djstripe_event_djstripe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.djstripe_event_djstripe_id_seq OWNED BY public.djstripe_event.djstripe_id;


--
-- Name: djstripe_fileupload; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.djstripe_fileupload (
    djstripe_id bigint NOT NULL,
    stripe_id character varying(255) NOT NULL,
    livemode boolean,
    created timestamp with time zone,
    metadata text,
    description text,
    djstripe_created timestamp with time zone NOT NULL,
    djstripe_updated timestamp with time zone NOT NULL,
    filename character varying(255) NOT NULL,
    purpose character varying(24) NOT NULL,
    size integer NOT NULL,
    type character varying(4) NOT NULL,
    url character varying(200) NOT NULL
);


ALTER TABLE public.djstripe_fileupload OWNER TO django;

--
-- Name: djstripe_fileupload_djstripe_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.djstripe_fileupload_djstripe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.djstripe_fileupload_djstripe_id_seq OWNER TO django;

--
-- Name: djstripe_fileupload_djstripe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.djstripe_fileupload_djstripe_id_seq OWNED BY public.djstripe_fileupload.djstripe_id;


--
-- Name: djstripe_idempotencykey; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.djstripe_idempotencykey (
    uuid uuid NOT NULL,
    action character varying(100) NOT NULL,
    livemode boolean NOT NULL,
    created timestamp with time zone NOT NULL
);


ALTER TABLE public.djstripe_idempotencykey OWNER TO django;

--
-- Name: djstripe_invoice; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.djstripe_invoice (
    djstripe_id bigint NOT NULL,
    stripe_id character varying(255) NOT NULL,
    livemode boolean,
    created timestamp with time zone,
    metadata text,
    description text,
    djstripe_created timestamp with time zone NOT NULL,
    djstripe_updated timestamp with time zone NOT NULL,
    amount_due numeric(8,2) NOT NULL,
    amount_paid numeric(8,2),
    amount_remaining numeric(8,2),
    application_fee numeric(8,2),
    attempt_count integer NOT NULL,
    attempted boolean NOT NULL,
    billing character varying(20),
    closed boolean NOT NULL,
    currency character varying(3) NOT NULL,
    date timestamp with time zone NOT NULL,
    due_date timestamp with time zone,
    ending_balance integer,
    forgiven boolean NOT NULL,
    hosted_invoice_url character varying(799),
    invoice_pdf character varying(799),
    next_payment_attempt timestamp with time zone,
    number character varying(64),
    paid boolean NOT NULL,
    period_end timestamp with time zone NOT NULL,
    period_start timestamp with time zone NOT NULL,
    receipt_number character varying(64),
    starting_balance integer NOT NULL,
    statement_descriptor character varying(22),
    subscription_proration_date timestamp with time zone,
    subtotal numeric(8,2) NOT NULL,
    tax numeric(8,2),
    tax_percent numeric(5,2),
    total numeric(8,2) NOT NULL,
    webhooks_delivered_at timestamp with time zone,
    charge_id bigint,
    customer_id bigint NOT NULL,
    subscription_id bigint
);


ALTER TABLE public.djstripe_invoice OWNER TO django;

--
-- Name: djstripe_invoice_djstripe_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.djstripe_invoice_djstripe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.djstripe_invoice_djstripe_id_seq OWNER TO django;

--
-- Name: djstripe_invoice_djstripe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.djstripe_invoice_djstripe_id_seq OWNED BY public.djstripe_invoice.djstripe_id;


--
-- Name: djstripe_invoiceitem; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.djstripe_invoiceitem (
    djstripe_id bigint NOT NULL,
    stripe_id character varying(255) NOT NULL,
    livemode boolean,
    created timestamp with time zone,
    metadata text,
    description text,
    djstripe_created timestamp with time zone NOT NULL,
    djstripe_updated timestamp with time zone NOT NULL,
    amount numeric(8,2) NOT NULL,
    currency character varying(3) NOT NULL,
    date timestamp with time zone NOT NULL,
    discountable boolean NOT NULL,
    period text NOT NULL,
    period_end timestamp with time zone NOT NULL,
    period_start timestamp with time zone NOT NULL,
    proration boolean NOT NULL,
    quantity integer,
    customer_id bigint NOT NULL,
    invoice_id bigint,
    plan_id bigint,
    subscription_id bigint
);


ALTER TABLE public.djstripe_invoiceitem OWNER TO django;

--
-- Name: djstripe_invoiceitem_djstripe_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.djstripe_invoiceitem_djstripe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.djstripe_invoiceitem_djstripe_id_seq OWNER TO django;

--
-- Name: djstripe_invoiceitem_djstripe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.djstripe_invoiceitem_djstripe_id_seq OWNED BY public.djstripe_invoiceitem.djstripe_id;


--
-- Name: djstripe_paymentmethod; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.djstripe_paymentmethod (
    id character varying(255) NOT NULL,
    type character varying(12) NOT NULL
);


ALTER TABLE public.djstripe_paymentmethod OWNER TO django;

--
-- Name: djstripe_payout; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.djstripe_payout (
    djstripe_id bigint NOT NULL,
    stripe_id character varying(255) NOT NULL,
    livemode boolean,
    created timestamp with time zone,
    metadata text,
    description text,
    djstripe_created timestamp with time zone NOT NULL,
    djstripe_updated timestamp with time zone NOT NULL,
    amount numeric(8,2) NOT NULL,
    arrival_date timestamp with time zone NOT NULL,
    currency character varying(3) NOT NULL,
    failure_code character varying(23),
    failure_message text,
    method character varying(8) NOT NULL,
    statement_descriptor character varying(255),
    status character varying(10) NOT NULL,
    type character varying(12) NOT NULL,
    destination_id bigint
);


ALTER TABLE public.djstripe_payout OWNER TO django;

--
-- Name: djstripe_payout_djstripe_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.djstripe_payout_djstripe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.djstripe_payout_djstripe_id_seq OWNER TO django;

--
-- Name: djstripe_payout_djstripe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.djstripe_payout_djstripe_id_seq OWNED BY public.djstripe_payout.djstripe_id;


--
-- Name: djstripe_plan; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.djstripe_plan (
    djstripe_id bigint NOT NULL,
    stripe_id character varying(255) NOT NULL,
    livemode boolean,
    created timestamp with time zone,
    metadata text,
    description text,
    djstripe_created timestamp with time zone NOT NULL,
    djstripe_updated timestamp with time zone NOT NULL,
    aggregate_usage character varying(18),
    amount numeric(8,2) NOT NULL,
    billing_scheme character varying(8),
    currency character varying(3) NOT NULL,
    "interval" character varying(5) NOT NULL,
    interval_count integer,
    nickname character varying(5000),
    tiers text,
    tiers_mode character varying(9),
    transform_usage text,
    trial_period_days integer,
    usage_type character varying(8) NOT NULL,
    name text,
    statement_descriptor character varying(22),
    product_id bigint
);


ALTER TABLE public.djstripe_plan OWNER TO django;

--
-- Name: djstripe_plan_djstripe_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.djstripe_plan_djstripe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.djstripe_plan_djstripe_id_seq OWNER TO django;

--
-- Name: djstripe_plan_djstripe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.djstripe_plan_djstripe_id_seq OWNED BY public.djstripe_plan.djstripe_id;


--
-- Name: djstripe_product; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.djstripe_product (
    djstripe_id bigint NOT NULL,
    stripe_id character varying(255) NOT NULL,
    livemode boolean,
    created timestamp with time zone,
    metadata text,
    description text,
    djstripe_created timestamp with time zone NOT NULL,
    djstripe_updated timestamp with time zone NOT NULL,
    name character varying(5000) NOT NULL,
    type character varying(7) NOT NULL,
    active boolean,
    attributes text,
    caption character varying(5000),
    deactivate_on text NOT NULL,
    images text NOT NULL,
    package_dimensions text,
    shippable boolean,
    url character varying(799),
    statement_descriptor character varying(22),
    unit_label character varying(12)
);


ALTER TABLE public.djstripe_product OWNER TO django;

--
-- Name: djstripe_product_djstripe_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.djstripe_product_djstripe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.djstripe_product_djstripe_id_seq OWNER TO django;

--
-- Name: djstripe_product_djstripe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.djstripe_product_djstripe_id_seq OWNED BY public.djstripe_product.djstripe_id;


--
-- Name: djstripe_refund; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.djstripe_refund (
    djstripe_id bigint NOT NULL,
    stripe_id character varying(255) NOT NULL,
    livemode boolean,
    created timestamp with time zone,
    metadata text,
    description text,
    djstripe_created timestamp with time zone NOT NULL,
    djstripe_updated timestamp with time zone NOT NULL,
    amount integer NOT NULL,
    currency character varying(3) NOT NULL,
    failure_reason character varying(24),
    reason character varying(21),
    receipt_number character varying(9),
    status character varying(24) NOT NULL,
    charge_id bigint NOT NULL
);


ALTER TABLE public.djstripe_refund OWNER TO django;

--
-- Name: djstripe_refund_djstripe_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.djstripe_refund_djstripe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.djstripe_refund_djstripe_id_seq OWNER TO django;

--
-- Name: djstripe_refund_djstripe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.djstripe_refund_djstripe_id_seq OWNED BY public.djstripe_refund.djstripe_id;


--
-- Name: djstripe_source; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.djstripe_source (
    djstripe_id bigint NOT NULL,
    stripe_id character varying(255) NOT NULL,
    livemode boolean,
    created timestamp with time zone,
    metadata text,
    description text,
    djstripe_created timestamp with time zone NOT NULL,
    djstripe_updated timestamp with time zone NOT NULL,
    amount numeric(8,2),
    client_secret character varying(255) NOT NULL,
    currency character varying(3),
    flow character varying(17) NOT NULL,
    owner text NOT NULL,
    statement_descriptor character varying(255),
    status character varying(10) NOT NULL,
    type character varying(19) NOT NULL,
    usage character varying(10) NOT NULL,
    code_verification text,
    receiver text,
    redirect text,
    source_data text NOT NULL,
    customer_id bigint
);


ALTER TABLE public.djstripe_source OWNER TO django;

--
-- Name: djstripe_source_djstripe_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.djstripe_source_djstripe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.djstripe_source_djstripe_id_seq OWNER TO django;

--
-- Name: djstripe_source_djstripe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.djstripe_source_djstripe_id_seq OWNED BY public.djstripe_source.djstripe_id;


--
-- Name: djstripe_subscription; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.djstripe_subscription (
    djstripe_id bigint NOT NULL,
    stripe_id character varying(255) NOT NULL,
    livemode boolean,
    created timestamp with time zone,
    metadata text,
    description text,
    djstripe_created timestamp with time zone NOT NULL,
    djstripe_updated timestamp with time zone NOT NULL,
    application_fee_percent numeric(5,2),
    billing character varying(20) NOT NULL,
    billing_cycle_anchor timestamp with time zone,
    cancel_at_period_end boolean NOT NULL,
    canceled_at timestamp with time zone,
    current_period_end timestamp with time zone NOT NULL,
    current_period_start timestamp with time zone NOT NULL,
    days_until_due integer,
    ended_at timestamp with time zone,
    quantity integer NOT NULL,
    start timestamp with time zone NOT NULL,
    status character varying(8) NOT NULL,
    tax_percent numeric(5,2),
    trial_end timestamp with time zone,
    trial_start timestamp with time zone,
    customer_id bigint NOT NULL,
    plan_id bigint NOT NULL
);


ALTER TABLE public.djstripe_subscription OWNER TO django;

--
-- Name: djstripe_subscription_djstripe_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.djstripe_subscription_djstripe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.djstripe_subscription_djstripe_id_seq OWNER TO django;

--
-- Name: djstripe_subscription_djstripe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.djstripe_subscription_djstripe_id_seq OWNED BY public.djstripe_subscription.djstripe_id;


--
-- Name: djstripe_transfer; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.djstripe_transfer (
    djstripe_id bigint NOT NULL,
    stripe_id character varying(255) NOT NULL,
    livemode boolean,
    created timestamp with time zone,
    metadata text,
    description text,
    djstripe_created timestamp with time zone NOT NULL,
    djstripe_updated timestamp with time zone NOT NULL,
    amount numeric(8,2) NOT NULL,
    amount_reversed numeric(8,2),
    currency character varying(3) NOT NULL,
    destination character varying(255) NOT NULL,
    destination_payment character varying(255),
    reversed boolean NOT NULL,
    source_transaction character varying(255),
    source_type character varying(16) NOT NULL,
    transfer_group character varying(255),
    date timestamp with time zone NOT NULL,
    destination_type character varying(14),
    failure_code character varying(23),
    failure_message text,
    statement_descriptor character varying(22),
    status character varying(10),
    fee numeric(8,2),
    fee_details text
);


ALTER TABLE public.djstripe_transfer OWNER TO django;

--
-- Name: djstripe_transfer_djstripe_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.djstripe_transfer_djstripe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.djstripe_transfer_djstripe_id_seq OWNER TO django;

--
-- Name: djstripe_transfer_djstripe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.djstripe_transfer_djstripe_id_seq OWNED BY public.djstripe_transfer.djstripe_id;


--
-- Name: djstripe_upcominginvoice; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.djstripe_upcominginvoice (
    invoice_ptr_id bigint NOT NULL
);


ALTER TABLE public.djstripe_upcominginvoice OWNER TO django;

--
-- Name: djstripe_webhookeventtrigger; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.djstripe_webhookeventtrigger (
    id bigint NOT NULL,
    remote_ip inet NOT NULL,
    headers text NOT NULL,
    body text NOT NULL,
    valid boolean NOT NULL,
    processed boolean NOT NULL,
    exception character varying(128) NOT NULL,
    traceback text NOT NULL,
    djstripe_version character varying(32) NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    event_id bigint
);


ALTER TABLE public.djstripe_webhookeventtrigger OWNER TO django;

--
-- Name: djstripe_webhookeventtrigger_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.djstripe_webhookeventtrigger_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.djstripe_webhookeventtrigger_id_seq OWNER TO django;

--
-- Name: djstripe_webhookeventtrigger_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.djstripe_webhookeventtrigger_id_seq OWNED BY public.djstripe_webhookeventtrigger.id;


--
-- Name: hitcount_blacklist_ip; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.hitcount_blacklist_ip (
    id integer NOT NULL,
    ip character varying(40) NOT NULL
);


ALTER TABLE public.hitcount_blacklist_ip OWNER TO django;

--
-- Name: hitcount_blacklist_ip_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.hitcount_blacklist_ip_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hitcount_blacklist_ip_id_seq OWNER TO django;

--
-- Name: hitcount_blacklist_ip_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.hitcount_blacklist_ip_id_seq OWNED BY public.hitcount_blacklist_ip.id;


--
-- Name: hitcount_blacklist_user_agent; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.hitcount_blacklist_user_agent (
    id integer NOT NULL,
    user_agent character varying(255) NOT NULL
);


ALTER TABLE public.hitcount_blacklist_user_agent OWNER TO django;

--
-- Name: hitcount_blacklist_user_agent_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.hitcount_blacklist_user_agent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hitcount_blacklist_user_agent_id_seq OWNER TO django;

--
-- Name: hitcount_blacklist_user_agent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.hitcount_blacklist_user_agent_id_seq OWNED BY public.hitcount_blacklist_user_agent.id;


--
-- Name: hitcount_hit; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.hitcount_hit (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    ip character varying(40) NOT NULL,
    session character varying(40) NOT NULL,
    user_agent character varying(255) NOT NULL,
    hitcount_id integer NOT NULL,
    user_id integer
);


ALTER TABLE public.hitcount_hit OWNER TO django;

--
-- Name: hitcount_hit_count; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.hitcount_hit_count (
    id integer NOT NULL,
    hits integer NOT NULL,
    modified timestamp with time zone NOT NULL,
    object_pk integer NOT NULL,
    content_type_id integer NOT NULL,
    CONSTRAINT hitcount_hit_count_hits_check CHECK ((hits >= 0)),
    CONSTRAINT hitcount_hit_count_object_pk_check CHECK ((object_pk >= 0))
);


ALTER TABLE public.hitcount_hit_count OWNER TO django;

--
-- Name: hitcount_hit_count_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.hitcount_hit_count_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hitcount_hit_count_id_seq OWNER TO django;

--
-- Name: hitcount_hit_count_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.hitcount_hit_count_id_seq OWNED BY public.hitcount_hit_count.id;


--
-- Name: hitcount_hit_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.hitcount_hit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hitcount_hit_id_seq OWNER TO django;

--
-- Name: hitcount_hit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.hitcount_hit_id_seq OWNED BY public.hitcount_hit.id;


--
-- Name: home_homepage; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.home_homepage (
    page_ptr_id integer NOT NULL,
    twitter_handler character varying(255) NOT NULL,
    facebook_link character varying(200) NOT NULL,
    instagram_link character varying(200) NOT NULL,
    twitter_link character varying(200) NOT NULL
);


ALTER TABLE public.home_homepage OWNER TO django;

--
-- Name: home_tag; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.home_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    description text NOT NULL,
    primary_color character varying(7),
    secondary_color character varying(7),
    seo_title character varying(68),
    seo_main_image_alt character varying(68),
    seo_description character varying(155),
    hp_logo_id integer,
    main_image_id integer,
    secondary_image_id integer,
    seo_secondary_image_alt character varying(68),
    sort_order integer
);


ALTER TABLE public.home_tag OWNER TO django;

--
-- Name: home_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.home_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_tag_id_seq OWNER TO django;

--
-- Name: home_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.home_tag_id_seq OWNED BY public.home_tag.id;


--
-- Name: home_taglinkleftmenu; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.home_taglinkleftmenu (
    id integer NOT NULL,
    sort_order integer,
    name character varying(255) NOT NULL,
    page_id integer NOT NULL,
    tag_id integer NOT NULL,
    image_id integer
);


ALTER TABLE public.home_taglinkleftmenu OWNER TO django;

--
-- Name: home_taglinkleftmenu_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.home_taglinkleftmenu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_taglinkleftmenu_id_seq OWNER TO django;

--
-- Name: home_taglinkleftmenu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.home_taglinkleftmenu_id_seq OWNED BY public.home_taglinkleftmenu.id;


--
-- Name: home_taglinkleftsubmenu; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.home_taglinkleftsubmenu (
    id integer NOT NULL,
    sort_order integer,
    name character varying(255) NOT NULL,
    icon character varying(255) NOT NULL,
    page_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.home_taglinkleftsubmenu OWNER TO django;

--
-- Name: home_taglinkleftsubmenu_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.home_taglinkleftsubmenu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_taglinkleftsubmenu_id_seq OWNER TO django;

--
-- Name: home_taglinkleftsubmenu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.home_taglinkleftsubmenu_id_seq OWNED BY public.home_taglinkleftsubmenu.id;


--
-- Name: home_taglinktopmenu; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.home_taglinktopmenu (
    id integer NOT NULL,
    sort_order integer,
    page_id integer NOT NULL,
    tag_id integer NOT NULL,
    name character varying(255) NOT NULL,
    image_id integer
);


ALTER TABLE public.home_taglinktopmenu OWNER TO django;

--
-- Name: home_taglinktopmenu_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.home_taglinktopmenu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_taglinktopmenu_id_seq OWNER TO django;

--
-- Name: home_taglinktopmenu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.home_taglinktopmenu_id_seq OWNED BY public.home_taglinktopmenu.id;


--
-- Name: payment_stripeapierror; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.payment_stripeapierror (
    id integer NOT NULL,
    traceback text,
    type character varying(255) NOT NULL,
    status character varying(255),
    message character varying(255),
    code character varying(255),
    param character varying(255),
    created timestamp with time zone NOT NULL
);


ALTER TABLE public.payment_stripeapierror OWNER TO django;

--
-- Name: payment_stripeapierror_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.payment_stripeapierror_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_stripeapierror_id_seq OWNER TO django;

--
-- Name: payment_stripeapierror_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.payment_stripeapierror_id_seq OWNED BY public.payment_stripeapierror.id;


--
-- Name: taggit_tag; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);


ALTER TABLE public.taggit_tag OWNER TO django;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.taggit_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_tag_id_seq OWNER TO django;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.taggit_tag_id_seq OWNED BY public.taggit_tag.id;


--
-- Name: taggit_taggeditem; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.taggit_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.taggit_taggeditem OWNER TO django;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.taggit_taggeditem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_taggeditem_id_seq OWNER TO django;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.taggit_taggeditem_id_seq OWNED BY public.taggit_taggeditem.id;


--
-- Name: user_profile; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.user_profile (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    birthday date,
    city character varying(255),
    state character varying(255),
    bio text NOT NULL,
    user_id integer NOT NULL,
    photo_id integer
);


ALTER TABLE public.user_profile OWNER TO django;

--
-- Name: user_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.user_profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_profile_id_seq OWNER TO django;

--
-- Name: user_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.user_profile_id_seq OWNED BY public.user_profile.id;


--
-- Name: user_user; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.user_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.user_user OWNER TO django;

--
-- Name: user_user_groups; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.user_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.user_user_groups OWNER TO django;

--
-- Name: user_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.user_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_user_groups_id_seq OWNER TO django;

--
-- Name: user_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.user_user_groups_id_seq OWNED BY public.user_user_groups.id;


--
-- Name: user_user_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.user_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_user_id_seq OWNER TO django;

--
-- Name: user_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.user_user_id_seq OWNED BY public.user_user.id;


--
-- Name: user_user_user_permissions; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.user_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.user_user_user_permissions OWNER TO django;

--
-- Name: user_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.user_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_user_user_permissions_id_seq OWNER TO django;

--
-- Name: user_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.user_user_user_permissions_id_seq OWNED BY public.user_user_user_permissions.id;


--
-- Name: wagtailcore_collection; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.wagtailcore_collection (
    id integer NOT NULL,
    path character varying(255) COLLATE pg_catalog."C" NOT NULL,
    depth integer NOT NULL,
    numchild integer NOT NULL,
    name character varying(255) NOT NULL,
    CONSTRAINT wagtailcore_collection_depth_check CHECK ((depth >= 0)),
    CONSTRAINT wagtailcore_collection_numchild_check CHECK ((numchild >= 0))
);


ALTER TABLE public.wagtailcore_collection OWNER TO django;

--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.wagtailcore_collection_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_collection_id_seq OWNER TO django;

--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.wagtailcore_collection_id_seq OWNED BY public.wagtailcore_collection.id;


--
-- Name: wagtailcore_collectionviewrestriction; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.wagtailcore_collectionviewrestriction (
    id integer NOT NULL,
    restriction_type character varying(20) NOT NULL,
    password character varying(255) NOT NULL,
    collection_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_collectionviewrestriction OWNER TO django;

--
-- Name: wagtailcore_collectionviewrestriction_groups; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.wagtailcore_collectionviewrestriction_groups (
    id integer NOT NULL,
    collectionviewrestriction_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_collectionviewrestriction_groups OWNER TO django;

--
-- Name: wagtailcore_collectionviewrestriction_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.wagtailcore_collectionviewrestriction_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_collectionviewrestriction_groups_id_seq OWNER TO django;

--
-- Name: wagtailcore_collectionviewrestriction_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.wagtailcore_collectionviewrestriction_groups_id_seq OWNED BY public.wagtailcore_collectionviewrestriction_groups.id;


--
-- Name: wagtailcore_collectionviewrestriction_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.wagtailcore_collectionviewrestriction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_collectionviewrestriction_id_seq OWNER TO django;

--
-- Name: wagtailcore_collectionviewrestriction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.wagtailcore_collectionviewrestriction_id_seq OWNED BY public.wagtailcore_collectionviewrestriction.id;


--
-- Name: wagtailcore_groupcollectionpermission; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.wagtailcore_groupcollectionpermission (
    id integer NOT NULL,
    collection_id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_groupcollectionpermission OWNER TO django;

--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.wagtailcore_groupcollectionpermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_groupcollectionpermission_id_seq OWNER TO django;

--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.wagtailcore_groupcollectionpermission_id_seq OWNED BY public.wagtailcore_groupcollectionpermission.id;


--
-- Name: wagtailcore_grouppagepermission; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.wagtailcore_grouppagepermission (
    id integer NOT NULL,
    permission_type character varying(20) NOT NULL,
    group_id integer NOT NULL,
    page_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_grouppagepermission OWNER TO django;

--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.wagtailcore_grouppagepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_grouppagepermission_id_seq OWNER TO django;

--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.wagtailcore_grouppagepermission_id_seq OWNED BY public.wagtailcore_grouppagepermission.id;


--
-- Name: wagtailcore_page; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.wagtailcore_page (
    id integer NOT NULL,
    path character varying(255) COLLATE pg_catalog."C" NOT NULL,
    depth integer NOT NULL,
    numchild integer NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    live boolean NOT NULL,
    has_unpublished_changes boolean NOT NULL,
    url_path text NOT NULL,
    seo_title character varying(255) NOT NULL,
    show_in_menus boolean NOT NULL,
    search_description text NOT NULL,
    go_live_at timestamp with time zone,
    expire_at timestamp with time zone,
    expired boolean NOT NULL,
    content_type_id integer NOT NULL,
    owner_id integer,
    locked boolean NOT NULL,
    latest_revision_created_at timestamp with time zone,
    first_published_at timestamp with time zone,
    live_revision_id integer,
    last_published_at timestamp with time zone,
    draft_title character varying(255) NOT NULL,
    CONSTRAINT wagtailcore_page_depth_check CHECK ((depth >= 0)),
    CONSTRAINT wagtailcore_page_numchild_check CHECK ((numchild >= 0))
);


ALTER TABLE public.wagtailcore_page OWNER TO django;

--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.wagtailcore_page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_page_id_seq OWNER TO django;

--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.wagtailcore_page_id_seq OWNED BY public.wagtailcore_page.id;


--
-- Name: wagtailcore_pagerevision; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.wagtailcore_pagerevision (
    id integer NOT NULL,
    submitted_for_moderation boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    content_json text NOT NULL,
    approved_go_live_at timestamp with time zone,
    page_id integer NOT NULL,
    user_id integer
);


ALTER TABLE public.wagtailcore_pagerevision OWNER TO django;

--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.wagtailcore_pagerevision_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_pagerevision_id_seq OWNER TO django;

--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.wagtailcore_pagerevision_id_seq OWNED BY public.wagtailcore_pagerevision.id;


--
-- Name: wagtailcore_pageviewrestriction; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.wagtailcore_pageviewrestriction (
    id integer NOT NULL,
    password character varying(255) NOT NULL,
    page_id integer NOT NULL,
    restriction_type character varying(20) NOT NULL
);


ALTER TABLE public.wagtailcore_pageviewrestriction OWNER TO django;

--
-- Name: wagtailcore_pageviewrestriction_groups; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.wagtailcore_pageviewrestriction_groups (
    id integer NOT NULL,
    pageviewrestriction_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_pageviewrestriction_groups OWNER TO django;

--
-- Name: wagtailcore_pageviewrestriction_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.wagtailcore_pageviewrestriction_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_pageviewrestriction_groups_id_seq OWNER TO django;

--
-- Name: wagtailcore_pageviewrestriction_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.wagtailcore_pageviewrestriction_groups_id_seq OWNED BY public.wagtailcore_pageviewrestriction_groups.id;


--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.wagtailcore_pageviewrestriction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_pageviewrestriction_id_seq OWNER TO django;

--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.wagtailcore_pageviewrestriction_id_seq OWNED BY public.wagtailcore_pageviewrestriction.id;


--
-- Name: wagtailcore_site; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.wagtailcore_site (
    id integer NOT NULL,
    hostname character varying(255) NOT NULL,
    port integer NOT NULL,
    is_default_site boolean NOT NULL,
    root_page_id integer NOT NULL,
    site_name character varying(255)
);


ALTER TABLE public.wagtailcore_site OWNER TO django;

--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.wagtailcore_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_site_id_seq OWNER TO django;

--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.wagtailcore_site_id_seq OWNED BY public.wagtailcore_site.id;


--
-- Name: wagtaildocs_document; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.wagtaildocs_document (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    uploaded_by_user_id integer,
    collection_id integer NOT NULL,
    file_size integer,
    CONSTRAINT wagtaildocs_document_file_size_check CHECK ((file_size >= 0))
);


ALTER TABLE public.wagtaildocs_document OWNER TO django;

--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.wagtaildocs_document_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtaildocs_document_id_seq OWNER TO django;

--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.wagtaildocs_document_id_seq OWNED BY public.wagtaildocs_document.id;


--
-- Name: wagtailembeds_embed; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.wagtailembeds_embed (
    id integer NOT NULL,
    url character varying(200) NOT NULL,
    max_width smallint,
    type character varying(10) NOT NULL,
    html text NOT NULL,
    title text NOT NULL,
    author_name text NOT NULL,
    provider_name text NOT NULL,
    thumbnail_url character varying(200),
    width integer,
    height integer,
    last_updated timestamp with time zone NOT NULL
);


ALTER TABLE public.wagtailembeds_embed OWNER TO django;

--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.wagtailembeds_embed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailembeds_embed_id_seq OWNER TO django;

--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.wagtailembeds_embed_id_seq OWNED BY public.wagtailembeds_embed.id;


--
-- Name: wagtailforms_formsubmission; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.wagtailforms_formsubmission (
    id integer NOT NULL,
    form_data text NOT NULL,
    submit_time timestamp with time zone NOT NULL,
    page_id integer NOT NULL
);


ALTER TABLE public.wagtailforms_formsubmission OWNER TO django;

--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.wagtailforms_formsubmission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailforms_formsubmission_id_seq OWNER TO django;

--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.wagtailforms_formsubmission_id_seq OWNED BY public.wagtailforms_formsubmission.id;


--
-- Name: wagtailimages_image; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.wagtailimages_image (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    focal_point_x integer,
    focal_point_y integer,
    focal_point_width integer,
    focal_point_height integer,
    uploaded_by_user_id integer,
    file_size integer,
    collection_id integer NOT NULL,
    file_hash character varying(40) NOT NULL,
    CONSTRAINT wagtailimages_image_file_size_check CHECK ((file_size >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_height_check CHECK ((focal_point_height >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_width_check CHECK ((focal_point_width >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_x_check CHECK ((focal_point_x >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_y_check CHECK ((focal_point_y >= 0))
);


ALTER TABLE public.wagtailimages_image OWNER TO django;

--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.wagtailimages_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailimages_image_id_seq OWNER TO django;

--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.wagtailimages_image_id_seq OWNED BY public.wagtailimages_image.id;


--
-- Name: wagtailimages_rendition; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.wagtailimages_rendition (
    id integer NOT NULL,
    file character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    focal_point_key character varying(16) NOT NULL,
    image_id integer NOT NULL,
    filter_spec character varying(255) NOT NULL
);


ALTER TABLE public.wagtailimages_rendition OWNER TO django;

--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.wagtailimages_rendition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailimages_rendition_id_seq OWNER TO django;

--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.wagtailimages_rendition_id_seq OWNED BY public.wagtailimages_rendition.id;


--
-- Name: wagtailredirects_redirect; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.wagtailredirects_redirect (
    id integer NOT NULL,
    old_path character varying(255) NOT NULL,
    is_permanent boolean NOT NULL,
    redirect_link character varying(255) NOT NULL,
    redirect_page_id integer,
    site_id integer
);


ALTER TABLE public.wagtailredirects_redirect OWNER TO django;

--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.wagtailredirects_redirect_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailredirects_redirect_id_seq OWNER TO django;

--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.wagtailredirects_redirect_id_seq OWNED BY public.wagtailredirects_redirect.id;


--
-- Name: wagtailsearch_editorspick; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.wagtailsearch_editorspick (
    id integer NOT NULL,
    sort_order integer,
    description text NOT NULL,
    page_id integer NOT NULL,
    query_id integer NOT NULL
);


ALTER TABLE public.wagtailsearch_editorspick OWNER TO django;

--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.wagtailsearch_editorspick_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailsearch_editorspick_id_seq OWNER TO django;

--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.wagtailsearch_editorspick_id_seq OWNED BY public.wagtailsearch_editorspick.id;


--
-- Name: wagtailsearch_query; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.wagtailsearch_query (
    id integer NOT NULL,
    query_string character varying(255) NOT NULL
);


ALTER TABLE public.wagtailsearch_query OWNER TO django;

--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.wagtailsearch_query_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailsearch_query_id_seq OWNER TO django;

--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.wagtailsearch_query_id_seq OWNED BY public.wagtailsearch_query.id;


--
-- Name: wagtailsearch_querydailyhits; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.wagtailsearch_querydailyhits (
    id integer NOT NULL,
    date date NOT NULL,
    hits integer NOT NULL,
    query_id integer NOT NULL
);


ALTER TABLE public.wagtailsearch_querydailyhits OWNER TO django;

--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.wagtailsearch_querydailyhits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailsearch_querydailyhits_id_seq OWNER TO django;

--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.wagtailsearch_querydailyhits_id_seq OWNED BY public.wagtailsearch_querydailyhits.id;


--
-- Name: wagtailusers_userprofile; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.wagtailusers_userprofile (
    id integer NOT NULL,
    submitted_notifications boolean NOT NULL,
    approved_notifications boolean NOT NULL,
    rejected_notifications boolean NOT NULL,
    user_id integer NOT NULL,
    preferred_language character varying(10) NOT NULL,
    current_time_zone character varying(40) NOT NULL,
    avatar character varying(100) NOT NULL
);


ALTER TABLE public.wagtailusers_userprofile OWNER TO django;

--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.wagtailusers_userprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailusers_userprofile_id_seq OWNER TO django;

--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.wagtailusers_userprofile_id_seq OWNED BY public.wagtailusers_userprofile.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.article_articlepage_authors ALTER COLUMN id SET DEFAULT nextval('public.article_articlepage_authors_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.article_articlepage_contributors ALTER COLUMN id SET DEFAULT nextval('public.article_articlepage_contributors_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.article_articlepage_editors ALTER COLUMN id SET DEFAULT nextval('public.article_articlepage_editors_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.article_articletag ALTER COLUMN id SET DEFAULT nextval('public.article_articletag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: djstripe_id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_account ALTER COLUMN djstripe_id SET DEFAULT nextval('public.djstripe_account_djstripe_id_seq'::regclass);


--
-- Name: djstripe_id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_bankaccount ALTER COLUMN djstripe_id SET DEFAULT nextval('public.djstripe_bankaccount_djstripe_id_seq'::regclass);


--
-- Name: djstripe_id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_card ALTER COLUMN djstripe_id SET DEFAULT nextval('public.djstripe_card_djstripe_id_seq'::regclass);


--
-- Name: djstripe_id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_charge ALTER COLUMN djstripe_id SET DEFAULT nextval('public.djstripe_charge_djstripe_id_seq'::regclass);


--
-- Name: djstripe_id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_coupon ALTER COLUMN djstripe_id SET DEFAULT nextval('public.djstripe_coupon_djstripe_id_seq'::regclass);


--
-- Name: djstripe_id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_customer ALTER COLUMN djstripe_id SET DEFAULT nextval('public.djstripe_customer_djstripe_id_seq'::regclass);


--
-- Name: djstripe_id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_dispute ALTER COLUMN djstripe_id SET DEFAULT nextval('public.djstripe_dispute_djstripe_id_seq'::regclass);


--
-- Name: djstripe_id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_event ALTER COLUMN djstripe_id SET DEFAULT nextval('public.djstripe_event_djstripe_id_seq'::regclass);


--
-- Name: djstripe_id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_fileupload ALTER COLUMN djstripe_id SET DEFAULT nextval('public.djstripe_fileupload_djstripe_id_seq'::regclass);


--
-- Name: djstripe_id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_invoice ALTER COLUMN djstripe_id SET DEFAULT nextval('public.djstripe_invoice_djstripe_id_seq'::regclass);


--
-- Name: djstripe_id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_invoiceitem ALTER COLUMN djstripe_id SET DEFAULT nextval('public.djstripe_invoiceitem_djstripe_id_seq'::regclass);


--
-- Name: djstripe_id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_payout ALTER COLUMN djstripe_id SET DEFAULT nextval('public.djstripe_payout_djstripe_id_seq'::regclass);


--
-- Name: djstripe_id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_plan ALTER COLUMN djstripe_id SET DEFAULT nextval('public.djstripe_plan_djstripe_id_seq'::regclass);


--
-- Name: djstripe_id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_product ALTER COLUMN djstripe_id SET DEFAULT nextval('public.djstripe_product_djstripe_id_seq'::regclass);


--
-- Name: djstripe_id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_refund ALTER COLUMN djstripe_id SET DEFAULT nextval('public.djstripe_refund_djstripe_id_seq'::regclass);


--
-- Name: djstripe_id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_source ALTER COLUMN djstripe_id SET DEFAULT nextval('public.djstripe_source_djstripe_id_seq'::regclass);


--
-- Name: djstripe_id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_subscription ALTER COLUMN djstripe_id SET DEFAULT nextval('public.djstripe_subscription_djstripe_id_seq'::regclass);


--
-- Name: djstripe_id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_transfer ALTER COLUMN djstripe_id SET DEFAULT nextval('public.djstripe_transfer_djstripe_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_webhookeventtrigger ALTER COLUMN id SET DEFAULT nextval('public.djstripe_webhookeventtrigger_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.hitcount_blacklist_ip ALTER COLUMN id SET DEFAULT nextval('public.hitcount_blacklist_ip_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.hitcount_blacklist_user_agent ALTER COLUMN id SET DEFAULT nextval('public.hitcount_blacklist_user_agent_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.hitcount_hit ALTER COLUMN id SET DEFAULT nextval('public.hitcount_hit_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.hitcount_hit_count ALTER COLUMN id SET DEFAULT nextval('public.hitcount_hit_count_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_tag ALTER COLUMN id SET DEFAULT nextval('public.home_tag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_taglinkleftmenu ALTER COLUMN id SET DEFAULT nextval('public.home_taglinkleftmenu_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_taglinkleftsubmenu ALTER COLUMN id SET DEFAULT nextval('public.home_taglinkleftsubmenu_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_taglinktopmenu ALTER COLUMN id SET DEFAULT nextval('public.home_taglinktopmenu_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.payment_stripeapierror ALTER COLUMN id SET DEFAULT nextval('public.payment_stripeapierror_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.taggit_tag ALTER COLUMN id SET DEFAULT nextval('public.taggit_tag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('public.taggit_taggeditem_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.user_profile ALTER COLUMN id SET DEFAULT nextval('public.user_profile_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.user_user ALTER COLUMN id SET DEFAULT nextval('public.user_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.user_user_groups ALTER COLUMN id SET DEFAULT nextval('public.user_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.user_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.user_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_collection ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collection_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collectionviewrestriction_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collectionviewrestriction_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_groupcollectionpermission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_grouppagepermission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_page ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_page_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_pagerevision ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pagerevision_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pageviewrestriction_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pageviewrestriction_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_site ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_site_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtaildocs_document ALTER COLUMN id SET DEFAULT nextval('public.wagtaildocs_document_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailembeds_embed ALTER COLUMN id SET DEFAULT nextval('public.wagtailembeds_embed_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailforms_formsubmission ALTER COLUMN id SET DEFAULT nextval('public.wagtailforms_formsubmission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailimages_image ALTER COLUMN id SET DEFAULT nextval('public.wagtailimages_image_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailimages_rendition ALTER COLUMN id SET DEFAULT nextval('public.wagtailimages_rendition_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailredirects_redirect ALTER COLUMN id SET DEFAULT nextval('public.wagtailredirects_redirect_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailsearch_editorspick ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_editorspick_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailsearch_query ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_query_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_querydailyhits_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailusers_userprofile ALTER COLUMN id SET DEFAULT nextval('public.wagtailusers_userprofile_id_seq'::regclass);


--
-- Data for Name: article_articlepage; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.article_articlepage (page_ptr_id, publication_date, body, featured_image_id) FROM stdin;
6	2018-10-26	[{"id": "dd4951b5-b6ea-43ad-810f-50443cf6dd69", "value": "<p>Giovani Lo Celso fired a left-foot shot from long range in the 55th minute to make it 2-0 before substitute <a href=\\"https://www.foxsports.com/soccer/patrick-cutrone-player-stats\\"><b>Patrick Cutrone</b></a> pulled one back for Milan seven minutes from time.</p>", "type": "paragraph"}]	10
\.


--
-- Data for Name: article_articlepage_authors; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.article_articlepage_authors (id, articlepage_id, user_id) FROM stdin;
1	6	1
\.


--
-- Name: article_articlepage_authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.article_articlepage_authors_id_seq', 1, true);


--
-- Data for Name: article_articlepage_contributors; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.article_articlepage_contributors (id, articlepage_id, user_id) FROM stdin;
\.


--
-- Name: article_articlepage_contributors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.article_articlepage_contributors_id_seq', 1, false);


--
-- Data for Name: article_articlepage_editors; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.article_articlepage_editors (id, articlepage_id, user_id) FROM stdin;
\.


--
-- Name: article_articlepage_editors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.article_articlepage_editors_id_seq', 1, false);


--
-- Data for Name: article_articletag; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.article_articletag (id, content_object_id, tag_id) FROM stdin;
1	6	11
\.


--
-- Name: article_articletag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.article_articletag_id_seq', 1, true);


--
-- Data for Name: article_articletagindexpage; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.article_articletagindexpage (page_ptr_id) FROM stdin;
5
\.


--
-- Data for Name: article_podcastepisodepage; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.article_podcastepisodepage (articlepage_ptr_id) FROM stdin;
\.


--
-- Data for Name: article_podcastpage; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.article_podcastpage (articlepage_ptr_id) FROM stdin;
\.


--
-- Data for Name: article_videopage; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.article_videopage (articlepage_ptr_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_group (id, name) FROM stdin;
1	Moderators
2	Editors
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 2, true);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	16
2	1	17
3	1	18
4	2	16
5	2	17
6	2	18
7	1	19
8	2	19
9	1	20
10	1	21
11	1	22
12	2	20
13	2	21
14	2	22
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 14, true);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add group	1	add_group
2	Can change group	1	change_group
3	Can delete group	1	delete_group
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add content type	3	add_contenttype
8	Can change content type	3	change_contenttype
9	Can delete content type	3	delete_contenttype
10	Can add profile	4	add_profile
11	Can change profile	4	change_profile
12	Can delete profile	4	delete_profile
13	Can add user	5	add_user
14	Can change user	5	change_user
15	Can delete user	5	delete_user
16	Can add image	7	add_image
17	Can change image	7	change_image
18	Can delete image	7	delete_image
19	Can access Wagtail admin	8	access_admin
20	Can add document	9	add_document
21	Can change document	9	change_document
22	Can delete document	9	delete_document
23	Can add tag link top menu	10	add_taglinktopmenu
24	Can change tag link top menu	10	change_taglinktopmenu
25	Can delete tag link top menu	10	delete_taglinktopmenu
26	Can add tag link left menu	11	add_taglinkleftmenu
27	Can change tag link left menu	11	change_taglinkleftmenu
28	Can delete tag link left menu	11	delete_taglinkleftmenu
29	Can add home page	12	add_homepage
30	Can change home page	12	change_homepage
31	Can delete home page	12	delete_homepage
32	Can add tag	13	add_tag
33	Can change tag	13	change_tag
34	Can delete tag	13	delete_tag
35	Can add Stripe API error	14	add_stripeapierror
36	Can change Stripe API error	14	change_stripeapierror
37	Can delete Stripe API error	14	delete_stripeapierror
38	Can add form submission	15	add_formsubmission
39	Can change form submission	15	change_formsubmission
40	Can delete form submission	15	delete_formsubmission
41	Can add redirect	16	add_redirect
42	Can change redirect	16	change_redirect
43	Can delete redirect	16	delete_redirect
44	Can add embed	17	add_embed
45	Can change embed	17	change_embed
46	Can delete embed	17	delete_embed
47	Can add user profile	18	add_userprofile
48	Can change user profile	18	change_userprofile
49	Can delete user profile	18	delete_userprofile
50	Can add rendition	19	add_rendition
51	Can change rendition	19	change_rendition
52	Can delete rendition	19	delete_rendition
53	Can add Query Daily Hits	20	add_querydailyhits
54	Can change Query Daily Hits	20	change_querydailyhits
55	Can delete Query Daily Hits	20	delete_querydailyhits
56	Can add query	21	add_query
57	Can change query	21	change_query
58	Can delete query	21	delete_query
59	Can add group collection permission	22	add_groupcollectionpermission
60	Can change group collection permission	22	change_groupcollectionpermission
61	Can delete group collection permission	22	delete_groupcollectionpermission
62	Can add collection view restriction	23	add_collectionviewrestriction
63	Can change collection view restriction	23	change_collectionviewrestriction
64	Can delete collection view restriction	23	delete_collectionviewrestriction
65	Can add collection	24	add_collection
66	Can change collection	24	change_collection
67	Can delete collection	24	delete_collection
68	Can add site	25	add_site
69	Can change site	25	change_site
70	Can delete site	25	delete_site
71	Can add page revision	26	add_pagerevision
72	Can change page revision	26	change_pagerevision
73	Can delete page revision	26	delete_pagerevision
74	Can add group page permission	27	add_grouppagepermission
75	Can change group page permission	27	change_grouppagepermission
76	Can delete group page permission	27	delete_grouppagepermission
77	Can add page	6	add_page
78	Can change page	6	change_page
79	Can delete page	6	delete_page
80	Can add page view restriction	28	add_pageviewrestriction
81	Can change page view restriction	28	change_pageviewrestriction
82	Can delete page view restriction	28	delete_pageviewrestriction
83	Can add Tag	29	add_tag
84	Can change Tag	29	change_tag
85	Can delete Tag	29	delete_tag
86	Can add Tagged Item	30	add_taggeditem
87	Can change Tagged Item	30	change_taggeditem
88	Can delete Tagged Item	30	delete_taggeditem
89	Can add idempotency key	31	add_idempotencykey
90	Can change idempotency key	31	change_idempotencykey
91	Can delete idempotency key	31	delete_idempotencykey
92	Can add bank account	32	add_bankaccount
93	Can change bank account	32	change_bankaccount
94	Can delete bank account	32	delete_bankaccount
95	Can add subscription	33	add_subscription
96	Can change subscription	33	change_subscription
97	Can delete subscription	33	delete_subscription
98	Can add invoice item	34	add_invoiceitem
99	Can change invoice item	34	change_invoiceitem
100	Can delete invoice item	34	delete_invoiceitem
101	Can add plan	35	add_plan
102	Can change plan	35	change_plan
103	Can delete plan	35	delete_plan
104	Can add card	36	add_card
105	Can change card	36	change_card
106	Can delete card	36	delete_card
107	Can add transfer	37	add_transfer
108	Can change transfer	37	change_transfer
109	Can delete transfer	37	delete_transfer
110	Can add source	38	add_source
111	Can change source	38	change_source
112	Can delete source	38	delete_source
113	Can add webhook event trigger	39	add_webhookeventtrigger
114	Can change webhook event trigger	39	change_webhookeventtrigger
115	Can delete webhook event trigger	39	delete_webhookeventtrigger
116	Can add customer	40	add_customer
117	Can change customer	40	change_customer
118	Can delete customer	40	delete_customer
119	Can add coupon	41	add_coupon
120	Can change coupon	41	change_coupon
121	Can delete coupon	41	delete_coupon
122	Can add payment method	42	add_paymentmethod
123	Can change payment method	42	change_paymentmethod
124	Can delete payment method	42	delete_paymentmethod
125	Can add file upload	43	add_fileupload
126	Can change file upload	43	change_fileupload
127	Can delete file upload	43	delete_fileupload
128	Can add charge	44	add_charge
129	Can change charge	44	change_charge
130	Can delete charge	44	delete_charge
131	Can add invoice	45	add_invoice
132	Can change invoice	45	change_invoice
133	Can delete invoice	45	delete_invoice
134	Can add product	46	add_product
135	Can change product	46	change_product
136	Can delete product	46	delete_product
137	Can add account	47	add_account
138	Can change account	47	change_account
139	Can delete account	47	delete_account
140	Can add dispute	48	add_dispute
141	Can change dispute	48	change_dispute
142	Can delete dispute	48	delete_dispute
143	Can add refund	49	add_refund
144	Can change refund	49	change_refund
145	Can delete refund	49	delete_refund
146	Can add payout	50	add_payout
147	Can change payout	50	change_payout
148	Can delete payout	50	delete_payout
149	Can add event	51	add_event
150	Can change event	51	change_event
151	Can delete event	51	delete_event
152	Can add upcoming invoice	52	add_upcominginvoice
153	Can change upcoming invoice	52	change_upcominginvoice
154	Can delete upcoming invoice	52	delete_upcominginvoice
155	Can add log entry	53	add_logentry
156	Can change log entry	53	change_logentry
157	Can delete log entry	53	delete_logentry
158	Can add session	54	add_session
159	Can change session	54	change_session
160	Can delete session	54	delete_session
161	Can add article tag	55	add_articletag
162	Can change article tag	55	change_articletag
163	Can delete article tag	55	delete_articletag
164	Can add article tag index page	56	add_articletagindexpage
165	Can change article tag index page	56	change_articletagindexpage
166	Can delete article tag index page	56	delete_articletagindexpage
167	Can add article page	57	add_articlepage
168	Can change article page	57	change_articlepage
169	Can delete article page	57	delete_articlepage
170	Can add tag link left sub menu	58	add_taglinkleftsubmenu
171	Can change tag link left sub menu	58	change_taglinkleftsubmenu
172	Can delete tag link left sub menu	58	delete_taglinkleftsubmenu
173	Can add Blacklisted IP	59	add_blacklistip
174	Can change Blacklisted IP	59	change_blacklistip
175	Can delete Blacklisted IP	59	delete_blacklistip
176	Can add hit count	60	add_hitcount
177	Can change hit count	60	change_hitcount
178	Can delete hit count	60	delete_hitcount
179	Can add hit	61	add_hit
180	Can change hit	61	change_hit
181	Can delete hit	61	delete_hit
182	Can add Blacklisted User Agent	62	add_blacklistuseragent
183	Can change Blacklisted User Agent	62	change_blacklistuseragent
184	Can delete Blacklisted User Agent	62	delete_blacklistuseragent
185	Can add podcast page	63	add_podcastpage
186	Can change podcast page	63	change_podcastpage
187	Can delete podcast page	63	delete_podcastpage
188	Can add video page	64	add_videopage
189	Can change video page	64	change_videopage
190	Can delete video page	64	delete_videopage
191	Can add podcast episode page	65	add_podcastepisodepage
192	Can change podcast episode page	65	change_podcastepisodepage
193	Can delete podcast episode page	65	delete_podcastepisodepage
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 193, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	auth	group
2	auth	permission
3	contenttypes	contenttype
4	user	profile
5	user	user
6	wagtailcore	page
7	wagtailimages	image
8	wagtailadmin	admin
9	wagtaildocs	document
10	home	taglinktopmenu
11	home	taglinkleftmenu
12	home	homepage
13	home	tag
14	payment	stripeapierror
15	wagtailforms	formsubmission
16	wagtailredirects	redirect
17	wagtailembeds	embed
18	wagtailusers	userprofile
19	wagtailimages	rendition
20	wagtailsearch	querydailyhits
21	wagtailsearch	query
22	wagtailcore	groupcollectionpermission
23	wagtailcore	collectionviewrestriction
24	wagtailcore	collection
25	wagtailcore	site
26	wagtailcore	pagerevision
27	wagtailcore	grouppagepermission
28	wagtailcore	pageviewrestriction
29	taggit	tag
30	taggit	taggeditem
31	djstripe	idempotencykey
32	djstripe	bankaccount
33	djstripe	subscription
34	djstripe	invoiceitem
35	djstripe	plan
36	djstripe	card
37	djstripe	transfer
38	djstripe	source
39	djstripe	webhookeventtrigger
40	djstripe	customer
41	djstripe	coupon
42	djstripe	paymentmethod
43	djstripe	fileupload
44	djstripe	charge
45	djstripe	invoice
46	djstripe	product
47	djstripe	account
48	djstripe	dispute
49	djstripe	refund
50	djstripe	payout
51	djstripe	event
52	djstripe	upcominginvoice
53	admin	logentry
54	sessions	session
55	article	articletag
56	article	articletagindexpage
57	article	articlepage
58	home	taglinkleftsubmenu
59	hitcount	blacklistip
60	hitcount	hitcount
61	hitcount	hit
62	hitcount	blacklistuseragent
63	article	podcastpage
64	article	videopage
65	article	podcastepisodepage
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 65, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-10-22 14:14:38.600502+00
2	contenttypes	0002_remove_content_type_name	2018-10-22 14:14:38.612715+00
3	auth	0001_initial	2018-10-22 14:14:38.648856+00
4	auth	0002_alter_permission_name_max_length	2018-10-22 14:14:38.658379+00
5	auth	0003_alter_user_email_max_length	2018-10-22 14:14:38.666975+00
6	auth	0004_alter_user_username_opts	2018-10-22 14:14:38.675406+00
7	auth	0005_alter_user_last_login_null	2018-10-22 14:14:38.682265+00
8	auth	0006_require_contenttypes_0002	2018-10-22 14:14:38.684273+00
9	auth	0007_alter_validators_add_error_messages	2018-10-22 14:14:38.691766+00
10	auth	0008_alter_user_username_max_length	2018-10-22 14:14:38.699427+00
11	auth	0009_alter_user_last_name_max_length	2018-10-22 14:14:38.707569+00
12	user	0001_initial	2018-10-22 14:14:38.755966+00
13	admin	0001_initial	2018-10-22 14:14:43.012254+00
14	admin	0002_logentry_remove_auto_add	2018-10-22 14:14:43.027155+00
15	wagtailcore	0001_initial	2018-10-22 14:14:43.240905+00
16	wagtailcore	0002_initial_data	2018-10-22 14:14:43.243018+00
17	wagtailcore	0003_add_uniqueness_constraint_on_group_page_permission	2018-10-22 14:14:43.245645+00
18	wagtailcore	0004_page_locked	2018-10-22 14:14:43.247453+00
19	wagtailcore	0005_add_page_lock_permission_to_moderators	2018-10-22 14:14:43.249196+00
20	wagtailcore	0006_add_lock_page_permission	2018-10-22 14:14:43.250892+00
21	wagtailcore	0007_page_latest_revision_created_at	2018-10-22 14:14:43.252519+00
22	wagtailcore	0008_populate_latest_revision_created_at	2018-10-22 14:14:43.254167+00
23	wagtailcore	0009_remove_auto_now_add_from_pagerevision_created_at	2018-10-22 14:14:43.255802+00
24	wagtailcore	0010_change_page_owner_to_null_on_delete	2018-10-22 14:14:43.257539+00
25	wagtailcore	0011_page_first_published_at	2018-10-22 14:14:43.259238+00
26	wagtailcore	0012_extend_page_slug_field	2018-10-22 14:14:43.261992+00
27	wagtailcore	0013_update_golive_expire_help_text	2018-10-22 14:14:43.264153+00
28	wagtailcore	0014_add_verbose_name	2018-10-22 14:14:43.266024+00
29	wagtailcore	0015_add_more_verbose_names	2018-10-22 14:14:43.267887+00
30	wagtailcore	0016_change_page_url_path_to_text_field	2018-10-22 14:14:43.26972+00
31	wagtailredirects	0001_initial	2018-10-22 14:14:43.302146+00
32	wagtailredirects	0002_add_verbose_names	2018-10-22 14:14:43.33891+00
33	wagtailredirects	0003_make_site_field_editable	2018-10-22 14:14:43.360579+00
34	wagtailredirects	0004_set_unique_on_path_and_site	2018-10-22 14:14:43.397853+00
35	wagtailredirects	0005_capitalizeverbose	2018-10-22 14:14:43.49116+00
36	wagtailredirects	0006_redirect_increase_max_length	2018-10-22 14:14:43.50722+00
37	wagtailforms	0001_initial	2018-10-22 14:14:43.531544+00
38	wagtailforms	0002_add_verbose_names	2018-10-22 14:14:43.60925+00
39	wagtailforms	0003_capitalizeverbose	2018-10-22 14:14:43.635007+00
40	wagtailcore	0017_change_edit_page_permission_description	2018-10-22 14:14:43.653578+00
41	wagtailcore	0018_pagerevision_submitted_for_moderation_index	2018-10-22 14:14:43.672547+00
42	wagtailcore	0019_verbose_names_cleanup	2018-10-22 14:14:43.745373+00
43	wagtailcore	0020_add_index_on_page_first_published_at	2018-10-22 14:14:43.766483+00
44	wagtailcore	0021_capitalizeverbose	2018-10-22 14:14:44.215927+00
45	wagtailcore	0022_add_site_name	2018-10-22 14:14:44.234816+00
46	wagtailcore	0023_alter_page_revision_on_delete_behaviour	2018-10-22 14:14:44.260191+00
47	wagtailcore	0024_collection	2018-10-22 14:14:44.271934+00
48	wagtailcore	0025_collection_initial_data	2018-10-22 14:14:44.298298+00
49	wagtailcore	0026_group_collection_permission	2018-10-22 14:14:44.343425+00
50	wagtailcore	0027_fix_collection_path_collation	2018-10-22 14:14:44.430319+00
51	wagtailcore	0024_alter_page_content_type_on_delete_behaviour	2018-10-22 14:14:44.454097+00
52	wagtailcore	0028_merge	2018-10-22 14:14:44.45617+00
53	wagtailcore	0029_unicode_slugfield_dj19	2018-10-22 14:14:44.474033+00
54	wagtailcore	0030_index_on_pagerevision_created_at	2018-10-22 14:14:44.493721+00
55	wagtailcore	0031_add_page_view_restriction_types	2018-10-22 14:14:44.565125+00
56	wagtailcore	0032_add_bulk_delete_page_permission	2018-10-22 14:14:44.590589+00
57	wagtailcore	0033_remove_golive_expiry_help_text	2018-10-22 14:14:44.622966+00
58	wagtailcore	0034_page_live_revision	2018-10-22 14:14:44.648061+00
59	wagtailcore	0035_page_last_published_at	2018-10-22 14:14:44.666353+00
60	wagtailcore	0036_populate_page_last_published_at	2018-10-22 14:14:44.690137+00
61	wagtailcore	0037_set_page_owner_editable	2018-10-22 14:14:44.71406+00
62	wagtailcore	0038_make_first_published_at_editable	2018-10-22 14:14:44.735108+00
63	wagtailcore	0039_collectionviewrestriction	2018-10-22 14:14:44.802329+00
64	wagtailcore	0040_page_draft_title	2018-10-22 14:14:44.855487+00
65	taggit	0001_initial	2018-10-22 14:14:44.89249+00
66	wagtailimages	0001_initial	2018-10-22 14:14:44.968628+00
67	wagtailimages	0002_initial_data	2018-10-22 14:14:45.019962+00
68	wagtailimages	0003_fix_focal_point_fields	2018-10-22 14:14:45.071043+00
69	wagtailimages	0004_make_focal_point_key_not_nullable	2018-10-22 14:14:45.113117+00
70	wagtailimages	0005_make_filter_spec_unique	2018-10-22 14:14:45.127165+00
71	wagtailimages	0006_add_verbose_names	2018-10-22 14:14:45.198459+00
72	wagtailimages	0007_image_file_size	2018-10-22 14:14:45.215726+00
73	wagtailimages	0008_image_created_at_index	2018-10-22 14:14:45.236261+00
74	wagtailimages	0009_capitalizeverbose	2018-10-22 14:14:45.404524+00
75	wagtailimages	0010_change_on_delete_behaviour	2018-10-22 14:14:45.430021+00
76	wagtailimages	0011_image_collection	2018-10-22 14:14:45.470363+00
77	wagtailimages	0012_copy_image_permissions_to_collections	2018-10-22 14:14:45.512553+00
78	wagtailimages	0013_make_rendition_upload_callable	2018-10-22 14:14:45.546174+00
79	wagtailimages	0014_add_filter_spec_field	2018-10-22 14:14:45.595663+00
80	wagtailimages	0015_fill_filter_spec_field	2018-10-22 14:14:45.62902+00
81	wagtailimages	0016_deprecate_rendition_filter_relation	2018-10-22 14:14:45.674092+00
82	wagtailimages	0017_reduce_focal_point_key_max_length	2018-10-22 14:14:45.696628+00
83	wagtailimages	0018_remove_rendition_filter	2018-10-22 14:14:45.729917+00
84	wagtailimages	0019_delete_filter	2018-10-22 14:14:45.73557+00
85	wagtailimages	0020_add-verbose-name	2018-10-22 14:14:45.756471+00
86	wagtailimages	0021_image_file_hash	2018-10-22 14:14:45.783762+00
87	home	0001_initial	2018-10-22 14:14:45.852706+00
88	article	0001_initial	2018-10-22 14:14:45.972894+00
89	article	0002_articlepage_tags	2018-10-22 14:14:46.006965+00
90	article	0003_auto_20181018_1846	2018-10-22 14:14:46.126883+00
91	article	0004_auto_20181019_0740	2018-10-22 14:14:46.195085+00
92	djstripe	0001_initial	2018-10-22 14:14:47.46441+00
93	home	0002_auto_20181019_0751	2018-10-22 14:14:47.500787+00
94	home	0003_auto_20181021_1028	2018-10-22 14:14:47.667556+00
95	home	0004_taglinktopmenu_name	2018-10-22 14:14:47.694985+00
96	home	0005_auto_20181021_1212	2018-10-22 14:14:47.806665+00
97	payment	0001_initial	2018-10-22 14:14:47.816741+00
98	sessions	0001_initial	2018-10-22 14:14:47.8296+00
99	taggit	0002_auto_20150616_2121	2018-10-22 14:14:47.843854+00
100	wagtailadmin	0001_create_admin_access_permissions	2018-10-22 14:14:48.030003+00
101	wagtaildocs	0001_initial	2018-10-22 14:14:48.077278+00
102	wagtaildocs	0002_initial_data	2018-10-22 14:14:48.200401+00
103	wagtaildocs	0003_add_verbose_names	2018-10-22 14:14:48.301498+00
104	wagtaildocs	0004_capitalizeverbose	2018-10-22 14:14:48.461177+00
105	wagtaildocs	0005_document_collection	2018-10-22 14:14:48.508036+00
106	wagtaildocs	0006_copy_document_permissions_to_collections	2018-10-22 14:14:48.628651+00
107	wagtaildocs	0005_alter_uploaded_by_user_on_delete_action	2018-10-22 14:14:48.675731+00
108	wagtaildocs	0007_merge	2018-10-22 14:14:48.679845+00
109	wagtaildocs	0008_document_file_size	2018-10-22 14:14:48.711497+00
110	wagtailembeds	0001_initial	2018-10-22 14:14:48.737029+00
111	wagtailembeds	0002_add_verbose_names	2018-10-22 14:14:48.746876+00
112	wagtailembeds	0003_capitalizeverbose	2018-10-22 14:14:48.75716+00
113	wagtailsearch	0001_initial	2018-10-22 14:14:48.881592+00
114	wagtailsearch	0002_add_verbose_names	2018-10-22 14:14:49.063569+00
115	wagtailsearch	0003_remove_editors_pick	2018-10-22 14:14:49.102543+00
116	wagtailusers	0001_initial	2018-10-22 14:14:49.142793+00
117	wagtailusers	0002_add_verbose_name_on_userprofile	2018-10-22 14:14:49.206675+00
118	wagtailusers	0003_add_verbose_names	2018-10-22 14:14:49.22955+00
119	wagtailusers	0004_capitalizeverbose	2018-10-22 14:14:49.317774+00
120	wagtailusers	0005_make_related_name_wagtail_specific	2018-10-22 14:14:49.358735+00
121	wagtailusers	0006_userprofile_prefered_language	2018-10-22 14:14:49.386252+00
122	wagtailusers	0007_userprofile_current_time_zone	2018-10-22 14:14:49.417019+00
123	wagtailusers	0008_userprofile_avatar	2018-10-22 14:14:49.445127+00
124	wagtailcore	0001_squashed_0016_change_page_url_path_to_text_field	2018-10-22 14:14:49.450696+00
125	article	0005_articlepage_featured_image	2018-10-25 13:40:41.876982+00
126	home	0006_auto_20181024_1651	2018-10-25 13:40:42.200319+00
127	home	0007_auto_20181024_1659	2018-10-25 13:40:42.23209+00
128	user	0002_profile_photo	2018-10-25 13:40:42.316631+00
129	home	0008_auto_20181025_1725	2018-10-26 10:54:47.849245+00
130	article	0006_podcastepisodepage_podcastpage_videopage	2018-10-26 14:12:26.70843+00
131	hitcount	0001_initial	2018-10-26 14:12:26.998316+00
132	hitcount	0002_index_ip_and_session	2018-10-26 14:12:27.082971+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 132, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
yo7uxgncxesc0nnhgfxo2433zp4o7xjj	NDM4ZjU5NGFjMzQzNGQ4NGNiNzE0MDU4YWEyN2U0YWM3Y2IyZjRlNzp7Il9hdXRoX3VzZXJfaGFzaCI6IjVmNzRmZmE5YzY3NDI0MjE4MmRkYTA0YmI1NDJmNWM5ZTM4YjBjYjAiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-11-05 14:15:45.376083+00
7xy49p6udwoehqly6ir1ptb88sn4tpuk	Y2VmMWVkZTYwYWFkZDFiMWZiYzUxOTY0ODY4NjVlY2JkZjc2NzJjZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjVmNzRmZmE5YzY3NDI0MjE4MmRkYTA0YmI1NDJmNWM5ZTM4YjBjYjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-11-07 15:35:40.164018+00
213mvvwt8ze3wmxm16fnxzqczic568nw	ZWVmZDc4ODliNDlhYjA0MDExMTkxOGNmNjFhYjg4ZThhNGQxZDA5Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWY3NGZmYTljNjc0MjQyMTgyZGRhMDRiYjU0MmY1YzllMzhiMGNiMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-11-09 12:16:16.166515+00
\.


--
-- Data for Name: djstripe_account; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.djstripe_account (djstripe_id, stripe_id, livemode, created, metadata, description, djstripe_created, djstripe_updated, business_name, business_primary_color, business_url, charges_enabled, country, debit_negative_balances, decline_charge_on, default_currency, details_submitted, display_name, email, legal_entity, payout_schedule, payout_statement_descriptor, payouts_enabled, product_description, statement_descriptor, support_email, support_phone, support_url, timezone, type, tos_acceptance, verification, business_logo_id) FROM stdin;
\.


--
-- Name: djstripe_account_djstripe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.djstripe_account_djstripe_id_seq', 1, false);


--
-- Data for Name: djstripe_bankaccount; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.djstripe_bankaccount (djstripe_id, stripe_id, livemode, created, metadata, description, djstripe_created, djstripe_updated, account_holder_name, account_holder_type, bank_name, country, currency, default_for_currency, fingerprint, last4, routing_number, status, account_id, customer_id) FROM stdin;
\.


--
-- Name: djstripe_bankaccount_djstripe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.djstripe_bankaccount_djstripe_id_seq', 1, false);


--
-- Data for Name: djstripe_card; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.djstripe_card (djstripe_id, stripe_id, livemode, created, metadata, description, djstripe_created, djstripe_updated, address_city, address_country, address_line1, address_line1_check, address_line2, address_state, address_zip, address_zip_check, brand, country, cvc_check, dynamic_last4, exp_month, exp_year, fingerprint, funding, last4, name, tokenization_method, customer_id) FROM stdin;
\.


--
-- Name: djstripe_card_djstripe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.djstripe_card_djstripe_id_seq', 1, false);


--
-- Data for Name: djstripe_charge; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.djstripe_charge (djstripe_id, stripe_id, livemode, created, metadata, description, djstripe_created, djstripe_updated, amount, amount_refunded, captured, currency, failure_code, failure_message, fraud_details, outcome, paid, receipt_email, receipt_number, refunded, shipping, statement_descriptor, status, transfer_group, fee, fee_details, source_type, source_stripe_id, fraudulent, receipt_sent, account_id, customer_id, dispute_id, invoice_id, source_id, transfer_id) FROM stdin;
\.


--
-- Name: djstripe_charge_djstripe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.djstripe_charge_djstripe_id_seq', 1, false);


--
-- Data for Name: djstripe_coupon; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.djstripe_coupon (djstripe_id, livemode, created, metadata, description, djstripe_created, djstripe_updated, stripe_id, amount_off, currency, duration, duration_in_months, max_redemptions, percent_off, redeem_by, times_redeemed) FROM stdin;
\.


--
-- Name: djstripe_coupon_djstripe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.djstripe_coupon_djstripe_id_seq', 1, false);


--
-- Data for Name: djstripe_customer; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.djstripe_customer (djstripe_id, stripe_id, livemode, created, metadata, description, djstripe_created, djstripe_updated, account_balance, business_vat_id, currency, delinquent, coupon_start, coupon_end, email, shipping, date_purged, coupon_id, default_source_id, subscriber_id) FROM stdin;
\.


--
-- Name: djstripe_customer_djstripe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.djstripe_customer_djstripe_id_seq', 1, false);


--
-- Data for Name: djstripe_dispute; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.djstripe_dispute (djstripe_id, stripe_id, livemode, created, metadata, description, djstripe_created, djstripe_updated, amount, currency, evidence, evidence_details, is_charge_refundable, reason, status) FROM stdin;
\.


--
-- Name: djstripe_dispute_djstripe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.djstripe_dispute_djstripe_id_seq', 1, false);


--
-- Data for Name: djstripe_event; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.djstripe_event (djstripe_id, stripe_id, livemode, created, metadata, description, djstripe_created, djstripe_updated, api_version, data, request_id, idempotency_key, type) FROM stdin;
\.


--
-- Name: djstripe_event_djstripe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.djstripe_event_djstripe_id_seq', 1, false);


--
-- Data for Name: djstripe_fileupload; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.djstripe_fileupload (djstripe_id, stripe_id, livemode, created, metadata, description, djstripe_created, djstripe_updated, filename, purpose, size, type, url) FROM stdin;
\.


--
-- Name: djstripe_fileupload_djstripe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.djstripe_fileupload_djstripe_id_seq', 1, false);


--
-- Data for Name: djstripe_idempotencykey; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.djstripe_idempotencykey (uuid, action, livemode, created) FROM stdin;
\.


--
-- Data for Name: djstripe_invoice; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.djstripe_invoice (djstripe_id, stripe_id, livemode, created, metadata, description, djstripe_created, djstripe_updated, amount_due, amount_paid, amount_remaining, application_fee, attempt_count, attempted, billing, closed, currency, date, due_date, ending_balance, forgiven, hosted_invoice_url, invoice_pdf, next_payment_attempt, number, paid, period_end, period_start, receipt_number, starting_balance, statement_descriptor, subscription_proration_date, subtotal, tax, tax_percent, total, webhooks_delivered_at, charge_id, customer_id, subscription_id) FROM stdin;
\.


--
-- Name: djstripe_invoice_djstripe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.djstripe_invoice_djstripe_id_seq', 1, false);


--
-- Data for Name: djstripe_invoiceitem; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.djstripe_invoiceitem (djstripe_id, stripe_id, livemode, created, metadata, description, djstripe_created, djstripe_updated, amount, currency, date, discountable, period, period_end, period_start, proration, quantity, customer_id, invoice_id, plan_id, subscription_id) FROM stdin;
\.


--
-- Name: djstripe_invoiceitem_djstripe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.djstripe_invoiceitem_djstripe_id_seq', 1, false);


--
-- Data for Name: djstripe_paymentmethod; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.djstripe_paymentmethod (id, type) FROM stdin;
\.


--
-- Data for Name: djstripe_payout; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.djstripe_payout (djstripe_id, stripe_id, livemode, created, metadata, description, djstripe_created, djstripe_updated, amount, arrival_date, currency, failure_code, failure_message, method, statement_descriptor, status, type, destination_id) FROM stdin;
\.


--
-- Name: djstripe_payout_djstripe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.djstripe_payout_djstripe_id_seq', 1, false);


--
-- Data for Name: djstripe_plan; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.djstripe_plan (djstripe_id, stripe_id, livemode, created, metadata, description, djstripe_created, djstripe_updated, aggregate_usage, amount, billing_scheme, currency, "interval", interval_count, nickname, tiers, tiers_mode, transform_usage, trial_period_days, usage_type, name, statement_descriptor, product_id) FROM stdin;
\.


--
-- Name: djstripe_plan_djstripe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.djstripe_plan_djstripe_id_seq', 1, false);


--
-- Data for Name: djstripe_product; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.djstripe_product (djstripe_id, stripe_id, livemode, created, metadata, description, djstripe_created, djstripe_updated, name, type, active, attributes, caption, deactivate_on, images, package_dimensions, shippable, url, statement_descriptor, unit_label) FROM stdin;
\.


--
-- Name: djstripe_product_djstripe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.djstripe_product_djstripe_id_seq', 1, false);


--
-- Data for Name: djstripe_refund; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.djstripe_refund (djstripe_id, stripe_id, livemode, created, metadata, description, djstripe_created, djstripe_updated, amount, currency, failure_reason, reason, receipt_number, status, charge_id) FROM stdin;
\.


--
-- Name: djstripe_refund_djstripe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.djstripe_refund_djstripe_id_seq', 1, false);


--
-- Data for Name: djstripe_source; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.djstripe_source (djstripe_id, stripe_id, livemode, created, metadata, description, djstripe_created, djstripe_updated, amount, client_secret, currency, flow, owner, statement_descriptor, status, type, usage, code_verification, receiver, redirect, source_data, customer_id) FROM stdin;
\.


--
-- Name: djstripe_source_djstripe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.djstripe_source_djstripe_id_seq', 1, false);


--
-- Data for Name: djstripe_subscription; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.djstripe_subscription (djstripe_id, stripe_id, livemode, created, metadata, description, djstripe_created, djstripe_updated, application_fee_percent, billing, billing_cycle_anchor, cancel_at_period_end, canceled_at, current_period_end, current_period_start, days_until_due, ended_at, quantity, start, status, tax_percent, trial_end, trial_start, customer_id, plan_id) FROM stdin;
\.


--
-- Name: djstripe_subscription_djstripe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.djstripe_subscription_djstripe_id_seq', 1, false);


--
-- Data for Name: djstripe_transfer; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.djstripe_transfer (djstripe_id, stripe_id, livemode, created, metadata, description, djstripe_created, djstripe_updated, amount, amount_reversed, currency, destination, destination_payment, reversed, source_transaction, source_type, transfer_group, date, destination_type, failure_code, failure_message, statement_descriptor, status, fee, fee_details) FROM stdin;
\.


--
-- Name: djstripe_transfer_djstripe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.djstripe_transfer_djstripe_id_seq', 1, false);


--
-- Data for Name: djstripe_upcominginvoice; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.djstripe_upcominginvoice (invoice_ptr_id) FROM stdin;
\.


--
-- Data for Name: djstripe_webhookeventtrigger; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.djstripe_webhookeventtrigger (id, remote_ip, headers, body, valid, processed, exception, traceback, djstripe_version, created, updated, event_id) FROM stdin;
\.


--
-- Name: djstripe_webhookeventtrigger_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.djstripe_webhookeventtrigger_id_seq', 1, false);


--
-- Data for Name: hitcount_blacklist_ip; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.hitcount_blacklist_ip (id, ip) FROM stdin;
\.


--
-- Name: hitcount_blacklist_ip_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.hitcount_blacklist_ip_id_seq', 1, false);


--
-- Data for Name: hitcount_blacklist_user_agent; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.hitcount_blacklist_user_agent (id, user_agent) FROM stdin;
\.


--
-- Name: hitcount_blacklist_user_agent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.hitcount_blacklist_user_agent_id_seq', 1, false);


--
-- Data for Name: hitcount_hit; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.hitcount_hit (id, created, ip, session, user_agent, hitcount_id, user_id) FROM stdin;
\.


--
-- Data for Name: hitcount_hit_count; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.hitcount_hit_count (id, hits, modified, object_pk, content_type_id) FROM stdin;
\.


--
-- Name: hitcount_hit_count_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.hitcount_hit_count_id_seq', 1, false);


--
-- Name: hitcount_hit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.hitcount_hit_id_seq', 1, false);


--
-- Data for Name: home_homepage; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.home_homepage (page_ptr_id, twitter_handler, facebook_link, instagram_link, twitter_link) FROM stdin;
4	RealBetis	https://www.facebook.com/alejandro.diazperez1	https://www.instagram.com/realbetisbalompie/?hl=es	https://www.twitter.com/danderdeveloper
\.


--
-- Data for Name: home_tag; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.home_tag (id, name, slug, description, primary_color, secondary_color, seo_title, seo_main_image_alt, seo_description, hp_logo_id, main_image_id, secondary_image_id, seo_secondary_image_alt, sort_order) FROM stdin;
1	Astros	astros	Baaaa	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2	Rockets	rockets	rockets	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3	MBL	mlb	MBL	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4	NBA	nba	NBA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5	NCAA	ncaa	NCAA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
6	NFL	nfl	NFL	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
7	Golf	golf	Golf	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
8	Motocross	motocross	Motocross	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
9	eSports	esports	eSports	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
10	Texans	texans	Texans	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
11	Betis	betis	Ole	\N	\N	\N	\N	\N	9	10	9	\N	\N
\.


--
-- Name: home_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.home_tag_id_seq', 11, true);


--
-- Data for Name: home_taglinkleftmenu; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.home_taglinkleftmenu (id, sort_order, name, page_id, tag_id, image_id) FROM stdin;
1	0	MBL	4	3	3
2	1	NBA	4	4	4
3	2	NCAA	4	5	5
4	3	NFL	4	6	6
\.


--
-- Name: home_taglinkleftmenu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.home_taglinkleftmenu_id_seq', 4, true);


--
-- Data for Name: home_taglinkleftsubmenu; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.home_taglinkleftsubmenu (id, sort_order, name, icon, page_id, tag_id) FROM stdin;
1	0	eSports	gamepad	4	9
2	1	Motocross	motorbike	4	8
3	2	Golf	golf-ball	4	7
\.


--
-- Name: home_taglinkleftsubmenu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.home_taglinkleftsubmenu_id_seq', 3, true);


--
-- Data for Name: home_taglinktopmenu; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.home_taglinktopmenu (id, sort_order, page_id, tag_id, name, image_id) FROM stdin;
1	0	4	1	Astros	1
2	1	4	10	Texans	7
3	2	4	11	Betis	9
\.


--
-- Name: home_taglinktopmenu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.home_taglinktopmenu_id_seq', 3, true);


--
-- Data for Name: payment_stripeapierror; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.payment_stripeapierror (id, traceback, type, status, message, code, param, created) FROM stdin;
\.


--
-- Name: payment_stripeapierror_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.payment_stripeapierror_id_seq', 1, false);


--
-- Data for Name: taggit_tag; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.taggit_tag (id, name, slug) FROM stdin;
1	astros	astros
2	Rockets	rockets
3	Betis	betis
\.


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.taggit_tag_id_seq', 3, true);


--
-- Data for Name: taggit_taggeditem; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
1	1	7	1
2	2	7	2
3	9	7	3
4	10	7	3
\.


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.taggit_taggeditem_id_seq', 4, true);


--
-- Data for Name: user_profile; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.user_profile (id, created, modified, birthday, city, state, bio, user_id, photo_id) FROM stdin;
1	2018-10-22 14:15:28.234051+00	2018-10-22 14:15:28.234078+00	\N	\N	\N		1	\N
\.


--
-- Name: user_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.user_profile_id_seq', 1, true);


--
-- Data for Name: user_user; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.user_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$100000$pVl4cNAFqzxo$yXM0yMOfrH0XgM7d2KBPm2ft0ZcJojq9fis/v2lXt20=	2018-10-26 12:16:16.164151+00	t	alejandro@commite.co	Francisco	Molinero	alejandro@commite.co	t	t	2018-10-22 14:15:28.129769+00
\.


--
-- Data for Name: user_user_groups; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.user_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: user_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.user_user_groups_id_seq', 1, false);


--
-- Name: user_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.user_user_id_seq', 1, true);


--
-- Data for Name: user_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.user_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: user_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.user_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: wagtailcore_collection; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.wagtailcore_collection (id, path, depth, numchild, name) FROM stdin;
1	0001	1	0	Root
\.


--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.wagtailcore_collection_id_seq', 1, true);


--
-- Data for Name: wagtailcore_collectionviewrestriction; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.wagtailcore_collectionviewrestriction (id, restriction_type, password, collection_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_collectionviewrestriction_groups; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.wagtailcore_collectionviewrestriction_groups (id, collectionviewrestriction_id, group_id) FROM stdin;
\.


--
-- Name: wagtailcore_collectionviewrestriction_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.wagtailcore_collectionviewrestriction_groups_id_seq', 1, false);


--
-- Name: wagtailcore_collectionviewrestriction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.wagtailcore_collectionviewrestriction_id_seq', 1, false);


--
-- Data for Name: wagtailcore_groupcollectionpermission; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.wagtailcore_groupcollectionpermission (id, collection_id, group_id, permission_id) FROM stdin;
1	1	1	16
2	1	2	16
3	1	1	17
4	1	2	17
5	1	1	20
6	1	2	20
7	1	1	21
8	1	2	21
\.


--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.wagtailcore_groupcollectionpermission_id_seq', 8, true);


--
-- Data for Name: wagtailcore_grouppagepermission; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.wagtailcore_grouppagepermission (id, permission_type, group_id, page_id) FROM stdin;
1	add	1	1
2	edit	1	1
3	publish	1	1
4	add	2	1
5	edit	2	1
6	lock	1	1
\.


--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.wagtailcore_grouppagepermission_id_seq', 6, true);


--
-- Data for Name: wagtailcore_page; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.wagtailcore_page (id, path, depth, numchild, title, slug, live, has_unpublished_changes, url_path, seo_title, show_in_menus, search_description, go_live_at, expire_at, expired, content_type_id, owner_id, locked, latest_revision_created_at, first_published_at, live_revision_id, last_published_at, draft_title) FROM stdin;
5	000100020001	3	0	articles	articles	t	f	/houston-prominence/articles/		f		\N	\N	f	56	1	f	2018-10-23 08:09:30.26338+00	2018-10-23 08:09:30.291186+00	5	2018-10-23 08:09:30.291186+00	articles
1	0001	1	1	Root	root	t	f	/		f		\N	\N	f	6	\N	f	\N	\N	\N	\N	Root
6	000100020002	3	0	Betis hands Milan shock Europa defeat at San Siro	betis-hands-milan-shock-europa-defeat-san-siro	t	f	/houston-prominence/betis-hands-milan-shock-europa-defeat-san-siro/		f		\N	\N	f	57	1	f	2018-10-26 11:09:09.90258+00	2018-10-26 11:09:09.932693+00	13	2018-10-26 11:09:09.932693+00	Betis hands Milan shock Europa defeat at San Siro
4	00010002	2	2	Houston Prominence	houston-prominence	t	f	/houston-prominence/		f		\N	\N	f	12	1	f	2018-10-26 14:26:27.337054+00	2018-10-23 08:08:07.88177+00	14	2018-10-26 14:26:27.424223+00	Houston Prominence
\.


--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.wagtailcore_page_id_seq', 6, true);


--
-- Data for Name: wagtailcore_pagerevision; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.wagtailcore_pagerevision (id, submitted_for_moderation, created_at, content_json, approved_go_live_at, page_id, user_id) FROM stdin;
5	f	2018-10-23 08:09:30.26338+00	{"locked": false, "url_path": "/houston-prominence/articles/", "has_unpublished_changes": false, "title": "articles", "search_description": "", "go_live_at": null, "expire_at": null, "latest_revision_created_at": null, "live_revision": null, "depth": 3, "numchild": 0, "content_type": 56, "pk": 5, "path": "000100020001", "owner": 1, "expired": false, "last_published_at": null, "draft_title": "articles", "live": true, "first_published_at": null, "show_in_menus": false, "slug": "articles", "seo_title": ""}	\N	5	1
4	f	2018-10-23 08:08:07.850443+00	{"locked": false, "url_path": "/houston-prominence/", "has_unpublished_changes": false, "title": "Houston Prominence", "twitter_handler": "https://twitter.com/RealBetis", "search_description": "", "go_live_at": null, "top_menu": [], "expire_at": null, "latest_revision_created_at": null, "live_revision": null, "depth": 2, "numchild": 0, "content_type": 12, "pk": 4, "path": "00010002", "owner": 1, "expired": false, "last_published_at": null, "draft_title": "Houston Prominence", "live": true, "first_published_at": null, "show_in_menus": false, "slug": "houston-prominence", "seo_title": "", "left_menu": []}	\N	4	1
7	f	2018-10-23 08:13:53.06261+00	{"show_in_menus": false, "live_revision": 6, "owner": 1, "latest_revision_created_at": "2018-10-23T08:13:24.975Z", "numchild": 1, "pk": 4, "search_description": "", "url_path": "/houston-prominence/", "seo_title": "", "left_menu": [{"name": "Astros", "sort_order": 0, "page": 4, "pk": 1, "tag": 1}], "draft_title": "Houston Prominence", "depth": 2, "last_published_at": "2018-10-23T08:13:25.019Z", "go_live_at": null, "live": true, "title": "Houston Prominence", "expire_at": null, "locked": false, "twitter_handler": "https://twitter.com/RealBetis", "content_type": 12, "top_menu": [], "path": "00010002", "has_unpublished_changes": false, "first_published_at": "2018-10-23T08:08:07.881Z", "slug": "houston-prominence", "expired": false}	\N	4	1
8	f	2018-10-23 08:13:56.746703+00	{"show_in_menus": false, "live_revision": 6, "owner": 1, "latest_revision_created_at": "2018-10-23T08:13:53.062Z", "numchild": 1, "pk": 4, "search_description": "", "url_path": "/houston-prominence/", "seo_title": "", "left_menu": [{"name": "Astros", "sort_order": 0, "page": null, "pk": 1, "tag": 1}], "draft_title": "Houston Prominence", "depth": 2, "last_published_at": "2018-10-23T08:13:25.019Z", "go_live_at": null, "live": true, "title": "Houston Prominence", "expire_at": null, "locked": false, "twitter_handler": "https://twitter.com/RealBetis", "content_type": 12, "top_menu": [], "path": "00010002", "has_unpublished_changes": true, "first_published_at": "2018-10-23T08:08:07.881Z", "slug": "houston-prominence", "expired": false}	\N	4	1
6	f	2018-10-23 08:13:24.975879+00	{"show_in_menus": false, "live_revision": 4, "owner": 1, "latest_revision_created_at": "2018-10-23T08:08:07.850Z", "numchild": 1, "pk": 4, "search_description": "", "url_path": "/houston-prominence/", "seo_title": "", "left_menu": [{"name": "Topics", "sort_order": 0, "page": 4, "pk": null, "tag": 1}], "draft_title": "Houston Prominence", "depth": 2, "last_published_at": "2018-10-23T08:08:07.881Z", "go_live_at": null, "live": true, "title": "Houston Prominence", "expire_at": null, "locked": false, "twitter_handler": "https://twitter.com/RealBetis", "content_type": 12, "top_menu": [], "path": "00010002", "has_unpublished_changes": false, "first_published_at": "2018-10-23T08:08:07.881Z", "slug": "houston-prominence", "expired": false}	\N	4	1
9	f	2018-10-25 13:45:04.524968+00	{"numchild": 1, "live": true, "title": "Houston Prominence", "last_published_at": "2018-10-23T08:13:56.788Z", "twitter_handler": "RealBetis", "locked": false, "expired": false, "pk": 4, "owner": 1, "left_menu": [{"sort_order": 0, "tag": 3, "image": 3, "pk": 1, "name": "MBL", "page": 4}, {"sort_order": 1, "tag": 4, "image": 4, "pk": null, "name": "NBA", "page": 4}, {"sort_order": 2, "tag": 5, "image": 5, "pk": null, "name": "NCAA", "page": 4}, {"sort_order": 3, "tag": 6, "image": 6, "pk": null, "name": "NFL", "page": 4}], "depth": 2, "go_live_at": null, "seo_title": "", "slug": "houston-prominence", "expire_at": null, "has_unpublished_changes": false, "content_type": 12, "first_published_at": "2018-10-23T08:08:07.881Z", "path": "00010002", "top_menu": [{"sort_order": 0, "tag": 1, "image": 1, "pk": null, "name": "Astros", "page": 4}, {"sort_order": 1, "tag": 2, "image": 2, "pk": null, "name": "Rockets", "page": 4}], "draft_title": "Houston Prominence", "show_in_menus": false, "left_submenu": [{"sort_order": 0, "tag": 9, "icon": "gamepad", "pk": null, "name": "eSports", "page": 4}, {"sort_order": 1, "tag": 8, "icon": "motorbike", "pk": null, "name": "Motocross", "page": 4}, {"sort_order": 2, "tag": 7, "icon": "golf-ball", "pk": null, "name": "Golf", "page": 4}], "latest_revision_created_at": "2018-10-23T08:13:56.746Z", "url_path": "/houston-prominence/", "search_description": "", "live_revision": 8}	\N	4	1
11	f	2018-10-25 14:32:12.611987+00	{"numchild": 1, "live": true, "title": "Houston Prominence", "last_published_at": "2018-10-25T13:45:04.587Z", "twitter_handler": "RealBetis", "locked": false, "expired": false, "pk": 4, "owner": 1, "left_menu": [{"sort_order": 0, "tag": 3, "image": 3, "pk": 1, "name": "MBL", "page": null}, {"sort_order": 1, "tag": 4, "image": 4, "pk": 2, "name": "NBA", "page": null}, {"sort_order": 2, "tag": 5, "image": 5, "pk": 3, "name": "NCAA", "page": null}, {"sort_order": 3, "tag": 6, "image": 6, "pk": 4, "name": "NFL", "page": null}], "depth": 2, "go_live_at": null, "seo_title": "", "slug": "houston-prominence", "expire_at": null, "has_unpublished_changes": true, "content_type": 12, "first_published_at": "2018-10-23T08:08:07.881Z", "path": "00010002", "top_menu": [{"sort_order": 0, "tag": 1, "image": 1, "pk": 1, "name": "Astros", "page": null}, {"sort_order": 1, "tag": 10, "image": 7, "pk": 2, "name": "Texans", "page": null}], "draft_title": "Houston Prominence", "show_in_menus": false, "left_submenu": [{"sort_order": 0, "tag": 9, "icon": "gamepad", "pk": 1, "name": "eSports", "page": null}, {"sort_order": 1, "tag": 8, "icon": "motorbike", "pk": 2, "name": "Motocross", "page": null}, {"sort_order": 2, "tag": 7, "icon": "golf-ball", "pk": 3, "name": "Golf", "page": null}], "latest_revision_created_at": "2018-10-25T14:32:07.495Z", "url_path": "/houston-prominence/", "search_description": "", "live_revision": 9}	\N	4	1
12	f	2018-10-25 14:42:58.218308+00	{"numchild": 1, "live": true, "title": "Houston Prominence", "last_published_at": "2018-10-25T14:32:12.654Z", "twitter_handler": "RealBetis", "locked": false, "expired": false, "pk": 4, "owner": 1, "left_menu": [{"sort_order": 0, "tag": 3, "image": 3, "pk": 1, "name": "MBL", "page": 4}, {"sort_order": 1, "tag": 4, "image": 4, "pk": 2, "name": "NBA", "page": 4}, {"sort_order": 2, "tag": 5, "image": 5, "pk": 3, "name": "NCAA", "page": 4}, {"sort_order": 3, "tag": 6, "image": 6, "pk": 4, "name": "NFL", "page": 4}], "depth": 2, "go_live_at": null, "seo_title": "", "slug": "houston-prominence", "expire_at": null, "has_unpublished_changes": false, "content_type": 12, "first_published_at": "2018-10-23T08:08:07.881Z", "path": "00010002", "top_menu": [{"sort_order": 0, "tag": 1, "image": 1, "pk": 1, "name": "Astros", "page": 4}, {"sort_order": 1, "tag": 10, "image": 7, "pk": 2, "name": "Texans", "page": 4}, {"sort_order": 2, "tag": 11, "image": 9, "pk": null, "name": "Betis", "page": 4}], "draft_title": "Houston Prominence", "show_in_menus": false, "left_submenu": [{"sort_order": 0, "tag": 9, "icon": "gamepad", "pk": 1, "name": "eSports", "page": 4}, {"sort_order": 1, "tag": 8, "icon": "motorbike", "pk": 2, "name": "Motocross", "page": 4}, {"sort_order": 2, "tag": 7, "icon": "golf-ball", "pk": 3, "name": "Golf", "page": 4}], "latest_revision_created_at": "2018-10-25T14:32:12.611Z", "url_path": "/houston-prominence/", "search_description": "", "live_revision": 11}	\N	4	1
13	f	2018-10-26 11:09:09.90258+00	{"featured_image": 10, "latest_revision_created_at": null, "live_revision": null, "contributors": [], "numchild": 0, "pk": 6, "first_published_at": null, "show_in_menus": false, "last_published_at": null, "editors": [], "has_unpublished_changes": false, "live": true, "publication_date": "2018-10-26", "content_type": 57, "locked": false, "path": "000100020002", "url_path": "/houston-prominence/betis-hands-milan-shock-europa-defeat-san-siro/", "tagged_items": [{"tag": 11, "content_object": 6, "pk": 1}], "go_live_at": null, "search_description": "", "expired": false, "depth": 3, "authors": [1], "slug": "betis-hands-milan-shock-europa-defeat-san-siro", "seo_title": "", "body": "[{\\"id\\": \\"dd4951b5-b6ea-43ad-810f-50443cf6dd69\\", \\"value\\": \\"<p>Giovani Lo Celso fired a left-foot shot from long range in the 55th minute to make it 2-0 before substitute <a href=\\\\\\"https://www.foxsports.com/soccer/patrick-cutrone-player-stats\\\\\\"><b>Patrick Cutrone</b></a> pulled one back for Milan seven minutes from time.</p>\\", \\"type\\": \\"paragraph\\"}]", "expire_at": null, "title": "Betis hands Milan shock Europa defeat at San Siro", "owner": 1, "draft_title": "Betis hands Milan shock Europa defeat at San Siro"}	\N	6	1
14	f	2018-10-26 14:26:27.337054+00	{"path": "00010002", "twitter_handler": "RealBetis", "title": "Houston Prominence", "show_in_menus": false, "numchild": 2, "live_revision": 12, "go_live_at": null, "search_description": "", "facebook_link": "https://www.facebook.com/alejandro.diazperez1", "url_path": "/houston-prominence/", "draft_title": "Houston Prominence", "expire_at": null, "top_menu": [{"tag": 1, "sort_order": 0, "image": 1, "name": "Astros", "pk": 1, "page": 4}, {"tag": 10, "sort_order": 1, "image": 7, "name": "Texans", "pk": 2, "page": 4}, {"tag": 11, "sort_order": 2, "image": 9, "name": "Betis", "pk": 3, "page": 4}], "live": true, "left_menu": [{"tag": 3, "sort_order": 0, "image": 3, "name": "MBL", "pk": 1, "page": 4}, {"tag": 4, "sort_order": 1, "image": 4, "name": "NBA", "pk": 2, "page": 4}, {"tag": 5, "sort_order": 2, "image": 5, "name": "NCAA", "pk": 3, "page": 4}, {"tag": 6, "sort_order": 3, "image": 6, "name": "NFL", "pk": 4, "page": 4}], "pk": 4, "left_submenu": [{"tag": 9, "sort_order": 0, "icon": "gamepad", "name": "eSports", "pk": 1, "page": 4}, {"tag": 8, "sort_order": 1, "icon": "motorbike", "name": "Motocross", "pk": 2, "page": 4}, {"tag": 7, "sort_order": 2, "icon": "golf-ball", "name": "Golf", "pk": 3, "page": 4}], "twitter_link": "https://www.twitter.com/danderdeveloper", "instagram_link": "https://www.instagram.com/realbetisbalompie/?hl=es", "content_type": 12, "locked": false, "first_published_at": "2018-10-23T08:08:07.881Z", "seo_title": "", "latest_revision_created_at": "2018-10-25T14:42:58.218Z", "owner": 1, "slug": "houston-prominence", "expired": false, "last_published_at": "2018-10-25T14:42:58.300Z", "depth": 2, "has_unpublished_changes": false}	\N	4	1
10	f	2018-10-25 14:32:07.495326+00	{"numchild": 1, "live": true, "title": "Houston Prominence", "last_published_at": "2018-10-25T13:45:04.587Z", "twitter_handler": "RealBetis", "locked": false, "expired": false, "pk": 4, "owner": 1, "left_menu": [{"sort_order": 0, "tag": 3, "image": 3, "pk": 1, "name": "MBL", "page": 4}, {"sort_order": 1, "tag": 4, "image": 4, "pk": 2, "name": "NBA", "page": 4}, {"sort_order": 2, "tag": 5, "image": 5, "pk": 3, "name": "NCAA", "page": 4}, {"sort_order": 3, "tag": 6, "image": 6, "pk": 4, "name": "NFL", "page": 4}], "depth": 2, "go_live_at": null, "seo_title": "", "slug": "houston-prominence", "expire_at": null, "has_unpublished_changes": false, "content_type": 12, "first_published_at": "2018-10-23T08:08:07.881Z", "path": "00010002", "top_menu": [{"sort_order": 0, "tag": 1, "image": 1, "pk": 1, "name": "Astros", "page": 4}, {"sort_order": 1, "tag": 10, "image": 7, "pk": 2, "name": "Texans", "page": 4}], "draft_title": "Houston Prominence", "show_in_menus": false, "left_submenu": [{"sort_order": 0, "tag": 9, "icon": "gamepad", "pk": 1, "name": "eSports", "page": 4}, {"sort_order": 1, "tag": 8, "icon": "motorbike", "pk": 2, "name": "Motocross", "page": 4}, {"sort_order": 2, "tag": 7, "icon": "golf-ball", "pk": 3, "name": "Golf", "page": 4}], "latest_revision_created_at": "2018-10-25T13:45:04.524Z", "url_path": "/houston-prominence/", "search_description": "", "live_revision": 9}	\N	4	1
\.


--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.wagtailcore_pagerevision_id_seq', 46, true);


--
-- Data for Name: wagtailcore_pageviewrestriction; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.wagtailcore_pageviewrestriction (id, password, page_id, restriction_type) FROM stdin;
\.


--
-- Data for Name: wagtailcore_pageviewrestriction_groups; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.wagtailcore_pageviewrestriction_groups (id, pageviewrestriction_id, group_id) FROM stdin;
\.


--
-- Name: wagtailcore_pageviewrestriction_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.wagtailcore_pageviewrestriction_groups_id_seq', 1, false);


--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.wagtailcore_pageviewrestriction_id_seq', 1, false);


--
-- Data for Name: wagtailcore_site; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.wagtailcore_site (id, hostname, port, is_default_site, root_page_id, site_name) FROM stdin;
1	localhost	80	t	4	\N
\.


--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.wagtailcore_site_id_seq', 1, true);


--
-- Data for Name: wagtaildocs_document; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.wagtaildocs_document (id, title, file, created_at, uploaded_by_user_id, collection_id, file_size) FROM stdin;
\.


--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.wagtaildocs_document_id_seq', 1, false);


--
-- Data for Name: wagtailembeds_embed; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.wagtailembeds_embed (id, url, max_width, type, html, title, author_name, provider_name, thumbnail_url, width, height, last_updated) FROM stdin;
\.


--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.wagtailembeds_embed_id_seq', 1, false);


--
-- Data for Name: wagtailforms_formsubmission; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.wagtailforms_formsubmission (id, form_data, submit_time, page_id) FROM stdin;
\.


--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.wagtailforms_formsubmission_id_seq', 1, false);


--
-- Data for Name: wagtailimages_image; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.wagtailimages_image (id, title, file, width, height, created_at, focal_point_x, focal_point_y, focal_point_width, focal_point_height, uploaded_by_user_id, file_size, collection_id, file_hash) FROM stdin;
1	Astros@2x.png	original_images/Astros2x.png	48	48	2018-10-25 13:41:28.415592+00	24	23	100	100	1	5883	1	8565ad8e73bae84bc7b061f01c88465752ae0552
2	Rockets	original_images/Rockets2x.png	44	54	2018-10-25 13:41:57.581722+00	19	20	100	100	1	2758	1	777c9dfe1b997378993de3b1ddb9d129d4767106
3	MBL Icon@2x.png	original_images/MBL_Icon2x.png	40	40	2018-10-25 13:42:38.837777+00	19	19	100	100	1	1228	1	c14f98c0a48e4e84c781218a12e2381654637151
4	NBA Icon@2x.png	original_images/NBA_Icon2x.png	40	40	2018-10-25 13:43:00.083156+00	19	19	100	100	1	1545	1	fda321ee9cf49c4f5cd30f843040ae5e6511af8c
5	NCAA Icon@2x.png	original_images/NCAA_Icon2x.png	40	40	2018-10-25 13:43:10.947226+00	18	20	100	100	1	1368	1	392267a2df5b44a1243e54586ed6aa98d9366b5c
6	NFL Icon@2x.png	original_images/NFL_Icon2x.png	40	40	2018-10-25 13:43:23.627955+00	19	18	100	100	1	2274	1	b7401dc4a4de4aceaad9c2396d9b095fb775db97
7	Texans	original_images/Texans2x.png	52	48	2018-10-25 14:24:45.244141+00	22	23	100	100	1	3571	1	42fc494390675041754977f92ed28000d45e762d
8	Texans@2x.png	original_images/Texans2x_bexgibx.png	52	48	2018-10-25 14:25:00.466418+00	22	23	100	100	1	3571	1	42fc494390675041754977f92ed28000d45e762d
9	171.png	original_images/171.png	354	354	2018-10-25 14:38:56.958566+00	175	192	100	100	1	7321	1	7e0bff675cfb553481a62f05d88948b9e41867b7
10	2018-10-05-betis_h55romjyobz218ull8w4ixw82.jpg	original_images/2018-10-05-betis_h55romjyobz218ull8w4ixw82.jpg	1920	1080	2018-10-25 14:41:52.973671+00	910	745	1837	531	1	599836	1	de72e350b9b4fc12d6d880715b9232ea752f5a02
\.


--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.wagtailimages_image_id_seq', 10, true);


--
-- Data for Name: wagtailimages_rendition; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.wagtailimages_rendition (id, file, width, height, focal_point_key, image_id, filter_spec) FROM stdin;
1	images/Astros2x.max-165x165.png	48	48		1	max-165x165
2	images/Rockets2x.max-165x165.png	44	54		2	max-165x165
3	images/MBL_Icon2x.max-165x165.png	40	40		3	max-165x165
4	images/NBA_Icon2x.max-165x165.png	40	40		4	max-165x165
5	images/NCAA_Icon2x.max-165x165.png	40	40		5	max-165x165
6	images/NFL_Icon2x.max-165x165.png	40	40		6	max-165x165
7	images/MBL_Icon2x.d35d3dc6.fill-80x80.png	40	40	d35d3dc6	3	fill-80x80
8	images/NBA_Icon2x.d35d3dc6.fill-80x80.png	40	40	d35d3dc6	4	fill-80x80
9	images/NCAA_Icon2x.a5ea2b2e.fill-80x80.png	40	40	a5ea2b2e	5	fill-80x80
10	images/NFL_Icon2x.decb08b8.fill-80x80.png	40	40	decb08b8	6	fill-80x80
11	images/MBL_Icon2x.d35d3dc6.fill-20x20.png	20	20	d35d3dc6	3	fill-20x20
12	images/NBA_Icon2x.d35d3dc6.fill-20x20.png	20	20	d35d3dc6	4	fill-20x20
13	images/NCAA_Icon2x.a5ea2b2e.fill-20x20.png	20	20	a5ea2b2e	5	fill-20x20
14	images/NFL_Icon2x.decb08b8.fill-20x20.png	20	20	decb08b8	6	fill-20x20
15	images/Astros2x.24cbd651.fill-20x20.png	20	20	24cbd651	1	fill-20x20
16	images/Rockets2x.dfdddfb1.fill-20x20.png	20	20	dfdddfb1	2	fill-20x20
17	images/Astros2x.24cbd651.fill-24x24.png	24	24	24cbd651	1	fill-24x24
18	images/Rockets2x.dfdddfb1.fill-24x24.png	24	24	dfdddfb1	2	fill-24x24
19	images/Texans2x.max-165x165.png	52	48		7	max-165x165
20	images/Texans2x.3e642d7e.fill-24x24.png	24	24	3e642d7e	7	fill-24x24
21	images/Astros2x.max-24x24.png	24	24		1	max-24x24
22	images/Texans2x.max-24x24.png	24	22		7	max-24x24
23	images/MBL_Icon2x.max-20x20.png	20	20		3	max-20x20
24	images/NBA_Icon2x.max-20x20.png	20	20		4	max-20x20
25	images/NCAA_Icon2x.max-20x20.png	20	20		5	max-20x20
26	images/NFL_Icon2x.max-20x20.png	20	20		6	max-20x20
27	images/Texans2x_bexgibx.max-165x165.png	52	48		8	max-165x165
28	images/171.max-165x165.png	165	165		9	max-165x165
29	images/2018-10-05-betis_h55romjyobz218ull8w4ixw82.max-165x165.jpg	165	92		10	max-165x165
30	images/171.max-24x24.png	24	24		9	max-24x24
31	images/171.max-30x30_KcNwVCl.png	30	30		9	max-30x30
\.


--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.wagtailimages_rendition_id_seq', 31, true);


--
-- Data for Name: wagtailredirects_redirect; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.wagtailredirects_redirect (id, old_path, is_permanent, redirect_link, redirect_page_id, site_id) FROM stdin;
\.


--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.wagtailredirects_redirect_id_seq', 1, false);


--
-- Data for Name: wagtailsearch_editorspick; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.wagtailsearch_editorspick (id, sort_order, description, page_id, query_id) FROM stdin;
\.


--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.wagtailsearch_editorspick_id_seq', 1, false);


--
-- Data for Name: wagtailsearch_query; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.wagtailsearch_query (id, query_string) FROM stdin;
\.


--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.wagtailsearch_query_id_seq', 1, false);


--
-- Data for Name: wagtailsearch_querydailyhits; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.wagtailsearch_querydailyhits (id, date, hits, query_id) FROM stdin;
\.


--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.wagtailsearch_querydailyhits_id_seq', 1, false);


--
-- Data for Name: wagtailusers_userprofile; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.wagtailusers_userprofile (id, submitted_notifications, approved_notifications, rejected_notifications, user_id, preferred_language, current_time_zone, avatar) FROM stdin;
\.


--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.wagtailusers_userprofile_id_seq', 1, false);


--
-- Name: article_articlepage_auth_articlepage_id_user_id_076ff22a_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.article_articlepage_authors
    ADD CONSTRAINT article_articlepage_auth_articlepage_id_user_id_076ff22a_uniq UNIQUE (articlepage_id, user_id);


--
-- Name: article_articlepage_authors_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.article_articlepage_authors
    ADD CONSTRAINT article_articlepage_authors_pkey PRIMARY KEY (id);


--
-- Name: article_articlepage_cont_articlepage_id_user_id_074061d0_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.article_articlepage_contributors
    ADD CONSTRAINT article_articlepage_cont_articlepage_id_user_id_074061d0_uniq UNIQUE (articlepage_id, user_id);


--
-- Name: article_articlepage_contributors_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.article_articlepage_contributors
    ADD CONSTRAINT article_articlepage_contributors_pkey PRIMARY KEY (id);


--
-- Name: article_articlepage_edit_articlepage_id_user_id_94b33c3e_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.article_articlepage_editors
    ADD CONSTRAINT article_articlepage_edit_articlepage_id_user_id_94b33c3e_uniq UNIQUE (articlepage_id, user_id);


--
-- Name: article_articlepage_editors_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.article_articlepage_editors
    ADD CONSTRAINT article_articlepage_editors_pkey PRIMARY KEY (id);


--
-- Name: article_articlepage_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.article_articlepage
    ADD CONSTRAINT article_articlepage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: article_articletag_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.article_articletag
    ADD CONSTRAINT article_articletag_pkey PRIMARY KEY (id);


--
-- Name: article_articletagindexpage_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.article_articletagindexpage
    ADD CONSTRAINT article_articletagindexpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: article_podcastepisodepage_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.article_podcastepisodepage
    ADD CONSTRAINT article_podcastepisodepage_pkey PRIMARY KEY (articlepage_ptr_id);


--
-- Name: article_podcastpage_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.article_podcastpage
    ADD CONSTRAINT article_podcastpage_pkey PRIMARY KEY (articlepage_ptr_id);


--
-- Name: article_videopage_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.article_videopage
    ADD CONSTRAINT article_videopage_pkey PRIMARY KEY (articlepage_ptr_id);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: djstripe_account_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_account
    ADD CONSTRAINT djstripe_account_pkey PRIMARY KEY (djstripe_id);


--
-- Name: djstripe_account_stripe_id_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_account
    ADD CONSTRAINT djstripe_account_stripe_id_key UNIQUE (stripe_id);


--
-- Name: djstripe_bankaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_bankaccount
    ADD CONSTRAINT djstripe_bankaccount_pkey PRIMARY KEY (djstripe_id);


--
-- Name: djstripe_bankaccount_stripe_id_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_bankaccount
    ADD CONSTRAINT djstripe_bankaccount_stripe_id_key UNIQUE (stripe_id);


--
-- Name: djstripe_card_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_card
    ADD CONSTRAINT djstripe_card_pkey PRIMARY KEY (djstripe_id);


--
-- Name: djstripe_card_stripe_id_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_card
    ADD CONSTRAINT djstripe_card_stripe_id_key UNIQUE (stripe_id);


--
-- Name: djstripe_charge_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_charge
    ADD CONSTRAINT djstripe_charge_pkey PRIMARY KEY (djstripe_id);


--
-- Name: djstripe_charge_stripe_id_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_charge
    ADD CONSTRAINT djstripe_charge_stripe_id_key UNIQUE (stripe_id);


--
-- Name: djstripe_coupon_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_coupon
    ADD CONSTRAINT djstripe_coupon_pkey PRIMARY KEY (djstripe_id);


--
-- Name: djstripe_coupon_stripe_id_livemode_a3687fb2_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_coupon
    ADD CONSTRAINT djstripe_coupon_stripe_id_livemode_a3687fb2_uniq UNIQUE (stripe_id, livemode);


--
-- Name: djstripe_customer_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_customer
    ADD CONSTRAINT djstripe_customer_pkey PRIMARY KEY (djstripe_id);


--
-- Name: djstripe_customer_stripe_id_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_customer
    ADD CONSTRAINT djstripe_customer_stripe_id_key UNIQUE (stripe_id);


--
-- Name: djstripe_customer_subscriber_id_livemode_962f4a46_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_customer
    ADD CONSTRAINT djstripe_customer_subscriber_id_livemode_962f4a46_uniq UNIQUE (subscriber_id, livemode);


--
-- Name: djstripe_dispute_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_dispute
    ADD CONSTRAINT djstripe_dispute_pkey PRIMARY KEY (djstripe_id);


--
-- Name: djstripe_dispute_stripe_id_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_dispute
    ADD CONSTRAINT djstripe_dispute_stripe_id_key UNIQUE (stripe_id);


--
-- Name: djstripe_event_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_event
    ADD CONSTRAINT djstripe_event_pkey PRIMARY KEY (djstripe_id);


--
-- Name: djstripe_event_stripe_id_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_event
    ADD CONSTRAINT djstripe_event_stripe_id_key UNIQUE (stripe_id);


--
-- Name: djstripe_fileupload_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_fileupload
    ADD CONSTRAINT djstripe_fileupload_pkey PRIMARY KEY (djstripe_id);


--
-- Name: djstripe_fileupload_stripe_id_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_fileupload
    ADD CONSTRAINT djstripe_fileupload_stripe_id_key UNIQUE (stripe_id);


--
-- Name: djstripe_idempotencykey_action_livemode_5003eb11_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_idempotencykey
    ADD CONSTRAINT djstripe_idempotencykey_action_livemode_5003eb11_uniq UNIQUE (action, livemode);


--
-- Name: djstripe_idempotencykey_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_idempotencykey
    ADD CONSTRAINT djstripe_idempotencykey_pkey PRIMARY KEY (uuid);


--
-- Name: djstripe_invoice_charge_id_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_invoice
    ADD CONSTRAINT djstripe_invoice_charge_id_key UNIQUE (charge_id);


--
-- Name: djstripe_invoice_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_invoice
    ADD CONSTRAINT djstripe_invoice_pkey PRIMARY KEY (djstripe_id);


--
-- Name: djstripe_invoice_stripe_id_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_invoice
    ADD CONSTRAINT djstripe_invoice_stripe_id_key UNIQUE (stripe_id);


--
-- Name: djstripe_invoiceitem_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_invoiceitem
    ADD CONSTRAINT djstripe_invoiceitem_pkey PRIMARY KEY (djstripe_id);


--
-- Name: djstripe_invoiceitem_stripe_id_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_invoiceitem
    ADD CONSTRAINT djstripe_invoiceitem_stripe_id_key UNIQUE (stripe_id);


--
-- Name: djstripe_paymentmethod_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_paymentmethod
    ADD CONSTRAINT djstripe_paymentmethod_pkey PRIMARY KEY (id);


--
-- Name: djstripe_payout_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_payout
    ADD CONSTRAINT djstripe_payout_pkey PRIMARY KEY (djstripe_id);


--
-- Name: djstripe_payout_stripe_id_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_payout
    ADD CONSTRAINT djstripe_payout_stripe_id_key UNIQUE (stripe_id);


--
-- Name: djstripe_plan_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_plan
    ADD CONSTRAINT djstripe_plan_pkey PRIMARY KEY (djstripe_id);


--
-- Name: djstripe_plan_stripe_id_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_plan
    ADD CONSTRAINT djstripe_plan_stripe_id_key UNIQUE (stripe_id);


--
-- Name: djstripe_product_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_product
    ADD CONSTRAINT djstripe_product_pkey PRIMARY KEY (djstripe_id);


--
-- Name: djstripe_product_stripe_id_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_product
    ADD CONSTRAINT djstripe_product_stripe_id_key UNIQUE (stripe_id);


--
-- Name: djstripe_refund_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_refund
    ADD CONSTRAINT djstripe_refund_pkey PRIMARY KEY (djstripe_id);


--
-- Name: djstripe_refund_stripe_id_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_refund
    ADD CONSTRAINT djstripe_refund_stripe_id_key UNIQUE (stripe_id);


--
-- Name: djstripe_source_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_source
    ADD CONSTRAINT djstripe_source_pkey PRIMARY KEY (djstripe_id);


--
-- Name: djstripe_source_stripe_id_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_source
    ADD CONSTRAINT djstripe_source_stripe_id_key UNIQUE (stripe_id);


--
-- Name: djstripe_subscription_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_subscription
    ADD CONSTRAINT djstripe_subscription_pkey PRIMARY KEY (djstripe_id);


--
-- Name: djstripe_subscription_stripe_id_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_subscription
    ADD CONSTRAINT djstripe_subscription_stripe_id_key UNIQUE (stripe_id);


--
-- Name: djstripe_transfer_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_transfer
    ADD CONSTRAINT djstripe_transfer_pkey PRIMARY KEY (djstripe_id);


--
-- Name: djstripe_transfer_stripe_id_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_transfer
    ADD CONSTRAINT djstripe_transfer_stripe_id_key UNIQUE (stripe_id);


--
-- Name: djstripe_upcominginvoice_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_upcominginvoice
    ADD CONSTRAINT djstripe_upcominginvoice_pkey PRIMARY KEY (invoice_ptr_id);


--
-- Name: djstripe_webhookeventtrigger_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_webhookeventtrigger
    ADD CONSTRAINT djstripe_webhookeventtrigger_pkey PRIMARY KEY (id);


--
-- Name: hitcount_blacklist_ip_ip_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.hitcount_blacklist_ip
    ADD CONSTRAINT hitcount_blacklist_ip_ip_key UNIQUE (ip);


--
-- Name: hitcount_blacklist_ip_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.hitcount_blacklist_ip
    ADD CONSTRAINT hitcount_blacklist_ip_pkey PRIMARY KEY (id);


--
-- Name: hitcount_blacklist_user_agent_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.hitcount_blacklist_user_agent
    ADD CONSTRAINT hitcount_blacklist_user_agent_pkey PRIMARY KEY (id);


--
-- Name: hitcount_blacklist_user_agent_user_agent_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.hitcount_blacklist_user_agent
    ADD CONSTRAINT hitcount_blacklist_user_agent_user_agent_key UNIQUE (user_agent);


--
-- Name: hitcount_hit_count_content_type_id_object_pk_4dacb610_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.hitcount_hit_count
    ADD CONSTRAINT hitcount_hit_count_content_type_id_object_pk_4dacb610_uniq UNIQUE (content_type_id, object_pk);


--
-- Name: hitcount_hit_count_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.hitcount_hit_count
    ADD CONSTRAINT hitcount_hit_count_pkey PRIMARY KEY (id);


--
-- Name: hitcount_hit_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.hitcount_hit
    ADD CONSTRAINT hitcount_hit_pkey PRIMARY KEY (id);


--
-- Name: home_homepage_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_homepage
    ADD CONSTRAINT home_homepage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: home_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_tag
    ADD CONSTRAINT home_tag_name_key UNIQUE (name);


--
-- Name: home_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_tag
    ADD CONSTRAINT home_tag_pkey PRIMARY KEY (id);


--
-- Name: home_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_tag
    ADD CONSTRAINT home_tag_slug_key UNIQUE (slug);


--
-- Name: home_taglinkleftmenu_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_taglinkleftmenu
    ADD CONSTRAINT home_taglinkleftmenu_pkey PRIMARY KEY (id);


--
-- Name: home_taglinkleftsubmenu_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_taglinkleftsubmenu
    ADD CONSTRAINT home_taglinkleftsubmenu_pkey PRIMARY KEY (id);


--
-- Name: home_taglinktopmenu_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_taglinktopmenu
    ADD CONSTRAINT home_taglinktopmenu_pkey PRIMARY KEY (id);


--
-- Name: payment_stripeapierror_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.payment_stripeapierror
    ADD CONSTRAINT payment_stripeapierror_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);


--
-- Name: taggit_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);


--
-- Name: taggit_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);


--
-- Name: user_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.user_profile
    ADD CONSTRAINT user_profile_pkey PRIMARY KEY (id);


--
-- Name: user_profile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.user_profile
    ADD CONSTRAINT user_profile_user_id_key UNIQUE (user_id);


--
-- Name: user_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_pkey PRIMARY KEY (id);


--
-- Name: user_user_groups_user_id_group_id_bb60391f_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_user_id_group_id_bb60391f_uniq UNIQUE (user_id, group_id);


--
-- Name: user_user_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.user_user
    ADD CONSTRAINT user_user_pkey PRIMARY KEY (id);


--
-- Name: user_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: user_user_user_permissions_user_id_permission_id_64f4d5b8_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permissions_user_id_permission_id_64f4d5b8_uniq UNIQUE (user_id, permission_id);


--
-- Name: user_user_username_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.user_user
    ADD CONSTRAINT user_user_username_key UNIQUE (username);


--
-- Name: wagtailcore_collection_path_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_collection
    ADD CONSTRAINT wagtailcore_collection_path_key UNIQUE (path);


--
-- Name: wagtailcore_collection_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_collection
    ADD CONSTRAINT wagtailcore_collection_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collectionvi_collectionviewrestrictio_988995ae_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collectionvi_collectionviewrestrictio_988995ae_uniq UNIQUE (collectionviewrestriction_id, group_id);


--
-- Name: wagtailcore_collectionviewrestriction_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collectionviewrestriction_groups_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collectionviewrestriction_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction
    ADD CONSTRAINT wagtailcore_collectionviewrestriction_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_groupcollect_group_id_collection_id_p_a21cefe9_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollect_group_id_collection_id_p_a21cefe9_uniq UNIQUE (group_id, collection_id, permission_id);


--
-- Name: wagtailcore_groupcollectionpermission_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollectionpermission_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_grouppageper_group_id_page_id_permiss_0898bdf8_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppageper_group_id_page_id_permiss_0898bdf8_uniq UNIQUE (group_id, page_id, permission_type);


--
-- Name: wagtailcore_grouppagepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppagepermission_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_page_path_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_path_key UNIQUE (path);


--
-- Name: wagtailcore_page_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pagerevision_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevision_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pageviewrest_pageviewrestriction_id_g_d23f80bb_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageviewrest_pageviewrestriction_id_g_d23f80bb_uniq UNIQUE (pageviewrestriction_id, group_id);


--
-- Name: wagtailcore_pageviewrestriction_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageviewrestriction_groups_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pageviewrestriction_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction
    ADD CONSTRAINT wagtailcore_pageviewrestriction_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_site_hostname_port_2c626d70_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_hostname_port_2c626d70_uniq UNIQUE (hostname, port);


--
-- Name: wagtailcore_site_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_pkey PRIMARY KEY (id);


--
-- Name: wagtaildocs_document_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_pkey PRIMARY KEY (id);


--
-- Name: wagtailembeds_embed_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailembeds_embed
    ADD CONSTRAINT wagtailembeds_embed_pkey PRIMARY KEY (id);


--
-- Name: wagtailembeds_embed_url_max_width_8a2922d8_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailembeds_embed
    ADD CONSTRAINT wagtailembeds_embed_url_max_width_8a2922d8_uniq UNIQUE (url, max_width);


--
-- Name: wagtailforms_formsubmission_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailforms_formsubmission
    ADD CONSTRAINT wagtailforms_formsubmission_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_image_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_rendition_image_id_filter_spec_foc_323c8fe0_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendition_image_id_filter_spec_foc_323c8fe0_uniq UNIQUE (image_id, filter_spec, focal_point_key);


--
-- Name: wagtailimages_rendition_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendition_pkey PRIMARY KEY (id);


--
-- Name: wagtailredirects_redirect_old_path_site_id_783622d7_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_old_path_site_id_783622d7_uniq UNIQUE (old_path, site_id);


--
-- Name: wagtailredirects_redirect_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_editorspick_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editorspick_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_query_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailsearch_query
    ADD CONSTRAINT wagtailsearch_query_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_query_query_string_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailsearch_query
    ADD CONSTRAINT wagtailsearch_query_query_string_key UNIQUE (query_string);


--
-- Name: wagtailsearch_querydailyhits_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_querydailyhits_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_querydailyhits_query_id_date_1dd232e6_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_querydailyhits_query_id_date_1dd232e6_uniq UNIQUE (query_id, date);


--
-- Name: wagtailusers_userprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_pkey PRIMARY KEY (id);


--
-- Name: wagtailusers_userprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_user_id_key UNIQUE (user_id);


--
-- Name: article_articlepage_authors_articlepage_id_8e095a8f; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX article_articlepage_authors_articlepage_id_8e095a8f ON public.article_articlepage_authors USING btree (articlepage_id);


--
-- Name: article_articlepage_authors_user_id_281e9971; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX article_articlepage_authors_user_id_281e9971 ON public.article_articlepage_authors USING btree (user_id);


--
-- Name: article_articlepage_contributors_articlepage_id_7db63878; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX article_articlepage_contributors_articlepage_id_7db63878 ON public.article_articlepage_contributors USING btree (articlepage_id);


--
-- Name: article_articlepage_contributors_user_id_79bce949; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX article_articlepage_contributors_user_id_79bce949 ON public.article_articlepage_contributors USING btree (user_id);


--
-- Name: article_articlepage_editors_articlepage_id_61d7bfcc; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX article_articlepage_editors_articlepage_id_61d7bfcc ON public.article_articlepage_editors USING btree (articlepage_id);


--
-- Name: article_articlepage_editors_user_id_cf799b2e; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX article_articlepage_editors_user_id_cf799b2e ON public.article_articlepage_editors USING btree (user_id);


--
-- Name: article_articlepage_featured_image_id_b272b265; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX article_articlepage_featured_image_id_b272b265 ON public.article_articlepage USING btree (featured_image_id);


--
-- Name: article_articletag_content_object_id_661a5ba3; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX article_articletag_content_object_id_661a5ba3 ON public.article_articletag USING btree (content_object_id);


--
-- Name: article_articletag_tag_id_11f15649; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX article_articletag_tag_id_11f15649 ON public.article_articletag USING btree (tag_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: djstripe_account_business_logo_id_b3f124c3; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_account_business_logo_id_b3f124c3 ON public.djstripe_account USING btree (business_logo_id);


--
-- Name: djstripe_account_stripe_id_dd0d597d_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_account_stripe_id_dd0d597d_like ON public.djstripe_account USING btree (stripe_id varchar_pattern_ops);


--
-- Name: djstripe_bankaccount_account_id_5434506d; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_bankaccount_account_id_5434506d ON public.djstripe_bankaccount USING btree (account_id);


--
-- Name: djstripe_bankaccount_customer_id_0f696e1d; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_bankaccount_customer_id_0f696e1d ON public.djstripe_bankaccount USING btree (customer_id);


--
-- Name: djstripe_bankaccount_stripe_id_16cef80b_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_bankaccount_stripe_id_16cef80b_like ON public.djstripe_bankaccount USING btree (stripe_id varchar_pattern_ops);


--
-- Name: djstripe_card_customer_id_9601f29c; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_card_customer_id_9601f29c ON public.djstripe_card USING btree (customer_id);


--
-- Name: djstripe_card_stripe_id_1dd55072_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_card_stripe_id_1dd55072_like ON public.djstripe_card USING btree (stripe_id varchar_pattern_ops);


--
-- Name: djstripe_charge_account_id_597fef70; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_charge_account_id_597fef70 ON public.djstripe_charge USING btree (account_id);


--
-- Name: djstripe_charge_customer_id_fb15eb2b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_charge_customer_id_fb15eb2b ON public.djstripe_charge USING btree (customer_id);


--
-- Name: djstripe_charge_dispute_id_86a03043; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_charge_dispute_id_86a03043 ON public.djstripe_charge USING btree (dispute_id);


--
-- Name: djstripe_charge_invoice_id_bb36cca4; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_charge_invoice_id_bb36cca4 ON public.djstripe_charge USING btree (invoice_id);


--
-- Name: djstripe_charge_source_id_2502db60; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_charge_source_id_2502db60 ON public.djstripe_charge USING btree (source_id);


--
-- Name: djstripe_charge_source_id_2502db60_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_charge_source_id_2502db60_like ON public.djstripe_charge USING btree (source_id varchar_pattern_ops);


--
-- Name: djstripe_charge_stripe_id_338dab1f_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_charge_stripe_id_338dab1f_like ON public.djstripe_charge USING btree (stripe_id varchar_pattern_ops);


--
-- Name: djstripe_charge_transfer_id_bbfc2bbc; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_charge_transfer_id_bbfc2bbc ON public.djstripe_charge USING btree (transfer_id);


--
-- Name: djstripe_customer_coupon_id_ff032fb1; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_customer_coupon_id_ff032fb1 ON public.djstripe_customer USING btree (coupon_id);


--
-- Name: djstripe_customer_default_source_id_24020f62; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_customer_default_source_id_24020f62 ON public.djstripe_customer USING btree (default_source_id);


--
-- Name: djstripe_customer_default_source_id_24020f62_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_customer_default_source_id_24020f62_like ON public.djstripe_customer USING btree (default_source_id varchar_pattern_ops);


--
-- Name: djstripe_customer_stripe_id_f972db1a_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_customer_stripe_id_f972db1a_like ON public.djstripe_customer USING btree (stripe_id varchar_pattern_ops);


--
-- Name: djstripe_customer_subscriber_id_60f5c7bc; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_customer_subscriber_id_60f5c7bc ON public.djstripe_customer USING btree (subscriber_id);


--
-- Name: djstripe_dispute_stripe_id_36a2571c_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_dispute_stripe_id_36a2571c_like ON public.djstripe_dispute USING btree (stripe_id varchar_pattern_ops);


--
-- Name: djstripe_event_stripe_id_271e4d35_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_event_stripe_id_271e4d35_like ON public.djstripe_event USING btree (stripe_id varchar_pattern_ops);


--
-- Name: djstripe_fileupload_stripe_id_27e76096_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_fileupload_stripe_id_27e76096_like ON public.djstripe_fileupload USING btree (stripe_id varchar_pattern_ops);


--
-- Name: djstripe_invoice_customer_id_c0cd871c; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_invoice_customer_id_c0cd871c ON public.djstripe_invoice USING btree (customer_id);


--
-- Name: djstripe_invoice_stripe_id_6ceb1298_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_invoice_stripe_id_6ceb1298_like ON public.djstripe_invoice USING btree (stripe_id varchar_pattern_ops);


--
-- Name: djstripe_invoice_subscription_id_2dbc2461; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_invoice_subscription_id_2dbc2461 ON public.djstripe_invoice USING btree (subscription_id);


--
-- Name: djstripe_invoiceitem_customer_id_259466b8; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_invoiceitem_customer_id_259466b8 ON public.djstripe_invoiceitem USING btree (customer_id);


--
-- Name: djstripe_invoiceitem_invoice_id_d302912e; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_invoiceitem_invoice_id_d302912e ON public.djstripe_invoiceitem USING btree (invoice_id);


--
-- Name: djstripe_invoiceitem_plan_id_a01e229a; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_invoiceitem_plan_id_a01e229a ON public.djstripe_invoiceitem USING btree (plan_id);


--
-- Name: djstripe_invoiceitem_stripe_id_312a0436_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_invoiceitem_stripe_id_312a0436_like ON public.djstripe_invoiceitem USING btree (stripe_id varchar_pattern_ops);


--
-- Name: djstripe_invoiceitem_subscription_id_a7760178; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_invoiceitem_subscription_id_a7760178 ON public.djstripe_invoiceitem USING btree (subscription_id);


--
-- Name: djstripe_paymentmethod_id_0b9251df_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_paymentmethod_id_0b9251df_like ON public.djstripe_paymentmethod USING btree (id varchar_pattern_ops);


--
-- Name: djstripe_paymentmethod_type_0585203a; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_paymentmethod_type_0585203a ON public.djstripe_paymentmethod USING btree (type);


--
-- Name: djstripe_paymentmethod_type_0585203a_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_paymentmethod_type_0585203a_like ON public.djstripe_paymentmethod USING btree (type varchar_pattern_ops);


--
-- Name: djstripe_payout_destination_id_a5fa55c2; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_payout_destination_id_a5fa55c2 ON public.djstripe_payout USING btree (destination_id);


--
-- Name: djstripe_payout_stripe_id_442caf0b_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_payout_stripe_id_442caf0b_like ON public.djstripe_payout USING btree (stripe_id varchar_pattern_ops);


--
-- Name: djstripe_plan_product_id_5773384d; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_plan_product_id_5773384d ON public.djstripe_plan USING btree (product_id);


--
-- Name: djstripe_plan_stripe_id_a5f94ff5_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_plan_stripe_id_a5f94ff5_like ON public.djstripe_plan USING btree (stripe_id varchar_pattern_ops);


--
-- Name: djstripe_product_stripe_id_43265a18_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_product_stripe_id_43265a18_like ON public.djstripe_product USING btree (stripe_id varchar_pattern_ops);


--
-- Name: djstripe_refund_charge_id_e7efd717; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_refund_charge_id_e7efd717 ON public.djstripe_refund USING btree (charge_id);


--
-- Name: djstripe_refund_stripe_id_432a8805_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_refund_stripe_id_432a8805_like ON public.djstripe_refund USING btree (stripe_id varchar_pattern_ops);


--
-- Name: djstripe_source_customer_id_4d678557; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_source_customer_id_4d678557 ON public.djstripe_source USING btree (customer_id);


--
-- Name: djstripe_source_stripe_id_3a64b5e5_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_source_stripe_id_3a64b5e5_like ON public.djstripe_source USING btree (stripe_id varchar_pattern_ops);


--
-- Name: djstripe_subscription_customer_id_aff64ee5; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_subscription_customer_id_aff64ee5 ON public.djstripe_subscription USING btree (customer_id);


--
-- Name: djstripe_subscription_plan_id_9129d5d5; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_subscription_plan_id_9129d5d5 ON public.djstripe_subscription USING btree (plan_id);


--
-- Name: djstripe_subscription_stripe_id_7e9c8ae4_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_subscription_stripe_id_7e9c8ae4_like ON public.djstripe_subscription USING btree (stripe_id varchar_pattern_ops);


--
-- Name: djstripe_transfer_stripe_id_356fcc75_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_transfer_stripe_id_356fcc75_like ON public.djstripe_transfer USING btree (stripe_id varchar_pattern_ops);


--
-- Name: djstripe_webhookeventtrigger_event_id_b2e08de6; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX djstripe_webhookeventtrigger_event_id_b2e08de6 ON public.djstripe_webhookeventtrigger USING btree (event_id);


--
-- Name: hitcount_blacklist_ip_ip_b1955e95_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX hitcount_blacklist_ip_ip_b1955e95_like ON public.hitcount_blacklist_ip USING btree (ip varchar_pattern_ops);


--
-- Name: hitcount_blacklist_user_agent_user_agent_fbf2061c_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX hitcount_blacklist_user_agent_user_agent_fbf2061c_like ON public.hitcount_blacklist_user_agent USING btree (user_agent varchar_pattern_ops);


--
-- Name: hitcount_hit_count_content_type_id_4a734fe1; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX hitcount_hit_count_content_type_id_4a734fe1 ON public.hitcount_hit_count USING btree (content_type_id);


--
-- Name: hitcount_hit_created_79adf7bc; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX hitcount_hit_created_79adf7bc ON public.hitcount_hit USING btree (created);


--
-- Name: hitcount_hit_hitcount_id_b7971910; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX hitcount_hit_hitcount_id_b7971910 ON public.hitcount_hit USING btree (hitcount_id);


--
-- Name: hitcount_hit_ip_a52a62aa; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX hitcount_hit_ip_a52a62aa ON public.hitcount_hit USING btree (ip);


--
-- Name: hitcount_hit_ip_a52a62aa_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX hitcount_hit_ip_a52a62aa_like ON public.hitcount_hit USING btree (ip varchar_pattern_ops);


--
-- Name: hitcount_hit_session_5be83758; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX hitcount_hit_session_5be83758 ON public.hitcount_hit USING btree (session);


--
-- Name: hitcount_hit_session_5be83758_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX hitcount_hit_session_5be83758_like ON public.hitcount_hit USING btree (session varchar_pattern_ops);


--
-- Name: hitcount_hit_user_id_f7067f66; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX hitcount_hit_user_id_f7067f66 ON public.hitcount_hit USING btree (user_id);


--
-- Name: home_tag_hp_logo_id_adf67b85; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX home_tag_hp_logo_id_adf67b85 ON public.home_tag USING btree (hp_logo_id);


--
-- Name: home_tag_main_image_id_51289b7c; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX home_tag_main_image_id_51289b7c ON public.home_tag USING btree (main_image_id);


--
-- Name: home_tag_name_8164eddd_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX home_tag_name_8164eddd_like ON public.home_tag USING btree (name varchar_pattern_ops);


--
-- Name: home_tag_secondary_image_id_e092a651; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX home_tag_secondary_image_id_e092a651 ON public.home_tag USING btree (secondary_image_id);


--
-- Name: home_tag_slug_ed6e0ebb_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX home_tag_slug_ed6e0ebb_like ON public.home_tag USING btree (slug varchar_pattern_ops);


--
-- Name: home_taglinkleftmenu_image_id_633f5932; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX home_taglinkleftmenu_image_id_633f5932 ON public.home_taglinkleftmenu USING btree (image_id);


--
-- Name: home_taglinkleftmenu_page_id_b892cebb; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX home_taglinkleftmenu_page_id_b892cebb ON public.home_taglinkleftmenu USING btree (page_id);


--
-- Name: home_taglinkleftmenu_tag_id_ca7727ff; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX home_taglinkleftmenu_tag_id_ca7727ff ON public.home_taglinkleftmenu USING btree (tag_id);


--
-- Name: home_taglinkleftsubmenu_page_id_0c759dfd; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX home_taglinkleftsubmenu_page_id_0c759dfd ON public.home_taglinkleftsubmenu USING btree (page_id);


--
-- Name: home_taglinkleftsubmenu_tag_id_42d6ead5; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX home_taglinkleftsubmenu_tag_id_42d6ead5 ON public.home_taglinkleftsubmenu USING btree (tag_id);


--
-- Name: home_taglinktopmenu_image_id_5bcc52e9; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX home_taglinktopmenu_image_id_5bcc52e9 ON public.home_taglinktopmenu USING btree (image_id);


--
-- Name: home_taglinktopmenu_page_id_5e7bf193; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX home_taglinktopmenu_page_id_5e7bf193 ON public.home_taglinktopmenu USING btree (page_id);


--
-- Name: home_taglinktopmenu_tag_id_9750a2ef; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX home_taglinktopmenu_tag_id_9750a2ef ON public.home_taglinktopmenu USING btree (tag_id);


--
-- Name: taggit_tag_name_58eb2ed9_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX taggit_tag_name_58eb2ed9_like ON public.taggit_tag USING btree (name varchar_pattern_ops);


--
-- Name: taggit_tag_slug_6be58b2c_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX taggit_tag_slug_6be58b2c_like ON public.taggit_tag USING btree (slug varchar_pattern_ops);


--
-- Name: taggit_taggeditem_content_type_id_9957a03c; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX taggit_taggeditem_content_type_id_9957a03c ON public.taggit_taggeditem USING btree (content_type_id);


--
-- Name: taggit_taggeditem_content_type_id_object_id_196cc965_idx; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX taggit_taggeditem_content_type_id_object_id_196cc965_idx ON public.taggit_taggeditem USING btree (content_type_id, object_id);


--
-- Name: taggit_taggeditem_object_id_e2d7d1df; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX taggit_taggeditem_object_id_e2d7d1df ON public.taggit_taggeditem USING btree (object_id);


--
-- Name: taggit_taggeditem_tag_id_f4f5b767; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX taggit_taggeditem_tag_id_f4f5b767 ON public.taggit_taggeditem USING btree (tag_id);


--
-- Name: user_profile_photo_id_db6ce341; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX user_profile_photo_id_db6ce341 ON public.user_profile USING btree (photo_id);


--
-- Name: user_user_groups_group_id_c57f13c0; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX user_user_groups_group_id_c57f13c0 ON public.user_user_groups USING btree (group_id);


--
-- Name: user_user_groups_user_id_13f9a20d; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX user_user_groups_user_id_13f9a20d ON public.user_user_groups USING btree (user_id);


--
-- Name: user_user_user_permissions_permission_id_ce49d4de; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX user_user_user_permissions_permission_id_ce49d4de ON public.user_user_user_permissions USING btree (permission_id);


--
-- Name: user_user_user_permissions_user_id_31782f58; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX user_user_user_permissions_user_id_31782f58 ON public.user_user_user_permissions USING btree (user_id);


--
-- Name: user_user_username_e2bdfe0c_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX user_user_username_e2bdfe0c_like ON public.user_user USING btree (username varchar_pattern_ops);


--
-- Name: wagtailcore_collection_path_d848dc19_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailcore_collection_path_d848dc19_like ON public.wagtailcore_collection USING btree (path varchar_pattern_ops);


--
-- Name: wagtailcore_collectionview_collectionviewrestriction__47320efd; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailcore_collectionview_collectionviewrestriction__47320efd ON public.wagtailcore_collectionviewrestriction_groups USING btree (collectionviewrestriction_id);


--
-- Name: wagtailcore_collectionviewrestriction_collection_id_761908ec; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailcore_collectionviewrestriction_collection_id_761908ec ON public.wagtailcore_collectionviewrestriction USING btree (collection_id);


--
-- Name: wagtailcore_collectionviewrestriction_groups_group_id_1823f2a3; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailcore_collectionviewrestriction_groups_group_id_1823f2a3 ON public.wagtailcore_collectionviewrestriction_groups USING btree (group_id);


--
-- Name: wagtailcore_groupcollectionpermission_collection_id_5423575a; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailcore_groupcollectionpermission_collection_id_5423575a ON public.wagtailcore_groupcollectionpermission USING btree (collection_id);


--
-- Name: wagtailcore_groupcollectionpermission_group_id_05d61460; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailcore_groupcollectionpermission_group_id_05d61460 ON public.wagtailcore_groupcollectionpermission USING btree (group_id);


--
-- Name: wagtailcore_groupcollectionpermission_permission_id_1b626275; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailcore_groupcollectionpermission_permission_id_1b626275 ON public.wagtailcore_groupcollectionpermission USING btree (permission_id);


--
-- Name: wagtailcore_grouppagepermission_group_id_fc07e671; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailcore_grouppagepermission_group_id_fc07e671 ON public.wagtailcore_grouppagepermission USING btree (group_id);


--
-- Name: wagtailcore_grouppagepermission_page_id_710b114a; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailcore_grouppagepermission_page_id_710b114a ON public.wagtailcore_grouppagepermission USING btree (page_id);


--
-- Name: wagtailcore_page_content_type_id_c28424df; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailcore_page_content_type_id_c28424df ON public.wagtailcore_page USING btree (content_type_id);


--
-- Name: wagtailcore_page_first_published_at_2b5dd637; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailcore_page_first_published_at_2b5dd637 ON public.wagtailcore_page USING btree (first_published_at);


--
-- Name: wagtailcore_page_live_revision_id_930bd822; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailcore_page_live_revision_id_930bd822 ON public.wagtailcore_page USING btree (live_revision_id);


--
-- Name: wagtailcore_page_owner_id_fbf7c332; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailcore_page_owner_id_fbf7c332 ON public.wagtailcore_page USING btree (owner_id);


--
-- Name: wagtailcore_page_path_98eba2c8_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailcore_page_path_98eba2c8_like ON public.wagtailcore_page USING btree (path varchar_pattern_ops);


--
-- Name: wagtailcore_page_slug_e7c11b8f; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailcore_page_slug_e7c11b8f ON public.wagtailcore_page USING btree (slug);


--
-- Name: wagtailcore_page_slug_e7c11b8f_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailcore_page_slug_e7c11b8f_like ON public.wagtailcore_page USING btree (slug varchar_pattern_ops);


--
-- Name: wagtailcore_pagerevision_created_at_66954e3b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailcore_pagerevision_created_at_66954e3b ON public.wagtailcore_pagerevision USING btree (created_at);


--
-- Name: wagtailcore_pagerevision_page_id_d421cc1d; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailcore_pagerevision_page_id_d421cc1d ON public.wagtailcore_pagerevision USING btree (page_id);


--
-- Name: wagtailcore_pagerevision_submitted_for_moderation_c682e44c; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailcore_pagerevision_submitted_for_moderation_c682e44c ON public.wagtailcore_pagerevision USING btree (submitted_for_moderation);


--
-- Name: wagtailcore_pagerevision_user_id_2409d2f4; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailcore_pagerevision_user_id_2409d2f4 ON public.wagtailcore_pagerevision USING btree (user_id);


--
-- Name: wagtailcore_pageviewrestri_pageviewrestriction_id_f147a99a; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailcore_pageviewrestri_pageviewrestriction_id_f147a99a ON public.wagtailcore_pageviewrestriction_groups USING btree (pageviewrestriction_id);


--
-- Name: wagtailcore_pageviewrestriction_groups_group_id_6460f223; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailcore_pageviewrestriction_groups_group_id_6460f223 ON public.wagtailcore_pageviewrestriction_groups USING btree (group_id);


--
-- Name: wagtailcore_pageviewrestriction_page_id_15a8bea6; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailcore_pageviewrestriction_page_id_15a8bea6 ON public.wagtailcore_pageviewrestriction USING btree (page_id);


--
-- Name: wagtailcore_site_hostname_96b20b46; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailcore_site_hostname_96b20b46 ON public.wagtailcore_site USING btree (hostname);


--
-- Name: wagtailcore_site_hostname_96b20b46_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailcore_site_hostname_96b20b46_like ON public.wagtailcore_site USING btree (hostname varchar_pattern_ops);


--
-- Name: wagtailcore_site_root_page_id_e02fb95c; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailcore_site_root_page_id_e02fb95c ON public.wagtailcore_site USING btree (root_page_id);


--
-- Name: wagtaildocs_document_collection_id_23881625; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtaildocs_document_collection_id_23881625 ON public.wagtaildocs_document USING btree (collection_id);


--
-- Name: wagtaildocs_document_uploaded_by_user_id_17258b41; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtaildocs_document_uploaded_by_user_id_17258b41 ON public.wagtaildocs_document USING btree (uploaded_by_user_id);


--
-- Name: wagtailforms_formsubmission_page_id_e48e93e7; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailforms_formsubmission_page_id_e48e93e7 ON public.wagtailforms_formsubmission USING btree (page_id);


--
-- Name: wagtailimages_image_collection_id_c2f8af7e; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailimages_image_collection_id_c2f8af7e ON public.wagtailimages_image USING btree (collection_id);


--
-- Name: wagtailimages_image_created_at_86fa6cd4; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailimages_image_created_at_86fa6cd4 ON public.wagtailimages_image USING btree (created_at);


--
-- Name: wagtailimages_image_uploaded_by_user_id_5d73dc75; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailimages_image_uploaded_by_user_id_5d73dc75 ON public.wagtailimages_image USING btree (uploaded_by_user_id);


--
-- Name: wagtailimages_rendition_filter_spec_1cba3201; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailimages_rendition_filter_spec_1cba3201 ON public.wagtailimages_rendition USING btree (filter_spec);


--
-- Name: wagtailimages_rendition_filter_spec_1cba3201_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailimages_rendition_filter_spec_1cba3201_like ON public.wagtailimages_rendition USING btree (filter_spec varchar_pattern_ops);


--
-- Name: wagtailimages_rendition_image_id_3e1fd774; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailimages_rendition_image_id_3e1fd774 ON public.wagtailimages_rendition USING btree (image_id);


--
-- Name: wagtailredirects_redirect_old_path_bb35247b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailredirects_redirect_old_path_bb35247b ON public.wagtailredirects_redirect USING btree (old_path);


--
-- Name: wagtailredirects_redirect_old_path_bb35247b_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailredirects_redirect_old_path_bb35247b_like ON public.wagtailredirects_redirect USING btree (old_path varchar_pattern_ops);


--
-- Name: wagtailredirects_redirect_redirect_page_id_b5728a8f; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailredirects_redirect_redirect_page_id_b5728a8f ON public.wagtailredirects_redirect USING btree (redirect_page_id);


--
-- Name: wagtailredirects_redirect_site_id_780a0e1e; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailredirects_redirect_site_id_780a0e1e ON public.wagtailredirects_redirect USING btree (site_id);


--
-- Name: wagtailsearch_editorspick_page_id_28cbc274; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailsearch_editorspick_page_id_28cbc274 ON public.wagtailsearch_editorspick USING btree (page_id);


--
-- Name: wagtailsearch_editorspick_query_id_c6eee4a0; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailsearch_editorspick_query_id_c6eee4a0 ON public.wagtailsearch_editorspick USING btree (query_id);


--
-- Name: wagtailsearch_query_query_string_e785ea07_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailsearch_query_query_string_e785ea07_like ON public.wagtailsearch_query USING btree (query_string varchar_pattern_ops);


--
-- Name: wagtailsearch_querydailyhits_query_id_2185994b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX wagtailsearch_querydailyhits_query_id_2185994b ON public.wagtailsearch_querydailyhits USING btree (query_id);


--
-- Name: article_articlepage__articlepage_id_61d7bfcc_fk_article_a; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.article_articlepage_editors
    ADD CONSTRAINT article_articlepage__articlepage_id_61d7bfcc_fk_article_a FOREIGN KEY (articlepage_id) REFERENCES public.article_articlepage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: article_articlepage__articlepage_id_7db63878_fk_article_a; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.article_articlepage_contributors
    ADD CONSTRAINT article_articlepage__articlepage_id_7db63878_fk_article_a FOREIGN KEY (articlepage_id) REFERENCES public.article_articlepage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: article_articlepage__articlepage_id_8e095a8f_fk_article_a; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.article_articlepage_authors
    ADD CONSTRAINT article_articlepage__articlepage_id_8e095a8f_fk_article_a FOREIGN KEY (articlepage_id) REFERENCES public.article_articlepage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: article_articlepage__user_id_79bce949_fk_user_user; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.article_articlepage_contributors
    ADD CONSTRAINT article_articlepage__user_id_79bce949_fk_user_user FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: article_articlepage_authors_user_id_281e9971_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.article_articlepage_authors
    ADD CONSTRAINT article_articlepage_authors_user_id_281e9971_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: article_articlepage_editors_user_id_cf799b2e_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.article_articlepage_editors
    ADD CONSTRAINT article_articlepage_editors_user_id_cf799b2e_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: article_articlepage_featured_image_id_b272b265_fk_wagtailim; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.article_articlepage
    ADD CONSTRAINT article_articlepage_featured_image_id_b272b265_fk_wagtailim FOREIGN KEY (featured_image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: article_articlepage_page_ptr_id_7f5b2dca_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.article_articlepage
    ADD CONSTRAINT article_articlepage_page_ptr_id_7f5b2dca_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: article_articletag_content_object_id_661a5ba3_fk_article_a; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.article_articletag
    ADD CONSTRAINT article_articletag_content_object_id_661a5ba3_fk_article_a FOREIGN KEY (content_object_id) REFERENCES public.article_articlepage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: article_articletag_tag_id_11f15649_fk_home_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.article_articletag
    ADD CONSTRAINT article_articletag_tag_id_11f15649_fk_home_tag_id FOREIGN KEY (tag_id) REFERENCES public.home_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: article_articletagin_page_ptr_id_c35c1d96_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.article_articletagindexpage
    ADD CONSTRAINT article_articletagin_page_ptr_id_c35c1d96_fk_wagtailco FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: article_podcastepiso_articlepage_ptr_id_e1ca25cf_fk_article_a; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.article_podcastepisodepage
    ADD CONSTRAINT article_podcastepiso_articlepage_ptr_id_e1ca25cf_fk_article_a FOREIGN KEY (articlepage_ptr_id) REFERENCES public.article_articlepage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: article_podcastpage_articlepage_ptr_id_9630f45f_fk_article_a; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.article_podcastpage
    ADD CONSTRAINT article_podcastpage_articlepage_ptr_id_9630f45f_fk_article_a FOREIGN KEY (articlepage_ptr_id) REFERENCES public.article_articlepage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: article_videopage_articlepage_ptr_id_439682f0_fk_article_a; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.article_videopage
    ADD CONSTRAINT article_videopage_articlepage_ptr_id_439682f0_fk_article_a FOREIGN KEY (articlepage_ptr_id) REFERENCES public.article_articlepage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djstripe_account_business_logo_id_b3f124c3_fk_djstripe_; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_account
    ADD CONSTRAINT djstripe_account_business_logo_id_b3f124c3_fk_djstripe_ FOREIGN KEY (business_logo_id) REFERENCES public.djstripe_fileupload(djstripe_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djstripe_bankaccount_account_id_5434506d_fk_djstripe_; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_bankaccount
    ADD CONSTRAINT djstripe_bankaccount_account_id_5434506d_fk_djstripe_ FOREIGN KEY (account_id) REFERENCES public.djstripe_account(djstripe_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djstripe_bankaccount_customer_id_0f696e1d_fk_djstripe_; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_bankaccount
    ADD CONSTRAINT djstripe_bankaccount_customer_id_0f696e1d_fk_djstripe_ FOREIGN KEY (customer_id) REFERENCES public.djstripe_customer(djstripe_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djstripe_card_customer_id_9601f29c_fk_djstripe_; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_card
    ADD CONSTRAINT djstripe_card_customer_id_9601f29c_fk_djstripe_ FOREIGN KEY (customer_id) REFERENCES public.djstripe_customer(djstripe_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djstripe_charge_account_id_597fef70_fk_djstripe_; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_charge
    ADD CONSTRAINT djstripe_charge_account_id_597fef70_fk_djstripe_ FOREIGN KEY (account_id) REFERENCES public.djstripe_account(djstripe_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djstripe_charge_customer_id_fb15eb2b_fk_djstripe_; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_charge
    ADD CONSTRAINT djstripe_charge_customer_id_fb15eb2b_fk_djstripe_ FOREIGN KEY (customer_id) REFERENCES public.djstripe_customer(djstripe_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djstripe_charge_dispute_id_86a03043_fk_djstripe_; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_charge
    ADD CONSTRAINT djstripe_charge_dispute_id_86a03043_fk_djstripe_ FOREIGN KEY (dispute_id) REFERENCES public.djstripe_dispute(djstripe_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djstripe_charge_invoice_id_bb36cca4_fk_djstripe_; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_charge
    ADD CONSTRAINT djstripe_charge_invoice_id_bb36cca4_fk_djstripe_ FOREIGN KEY (invoice_id) REFERENCES public.djstripe_invoice(djstripe_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djstripe_charge_source_id_2502db60_fk_djstripe_paymentmethod_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_charge
    ADD CONSTRAINT djstripe_charge_source_id_2502db60_fk_djstripe_paymentmethod_id FOREIGN KEY (source_id) REFERENCES public.djstripe_paymentmethod(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djstripe_charge_transfer_id_bbfc2bbc_fk_djstripe_; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_charge
    ADD CONSTRAINT djstripe_charge_transfer_id_bbfc2bbc_fk_djstripe_ FOREIGN KEY (transfer_id) REFERENCES public.djstripe_transfer(djstripe_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djstripe_customer_coupon_id_ff032fb1_fk_djstripe_; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_customer
    ADD CONSTRAINT djstripe_customer_coupon_id_ff032fb1_fk_djstripe_ FOREIGN KEY (coupon_id) REFERENCES public.djstripe_coupon(djstripe_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djstripe_customer_default_source_id_24020f62_fk_djstripe_; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_customer
    ADD CONSTRAINT djstripe_customer_default_source_id_24020f62_fk_djstripe_ FOREIGN KEY (default_source_id) REFERENCES public.djstripe_paymentmethod(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djstripe_customer_subscriber_id_60f5c7bc_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_customer
    ADD CONSTRAINT djstripe_customer_subscriber_id_60f5c7bc_fk_user_user_id FOREIGN KEY (subscriber_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djstripe_invoice_charge_id_1e660b26_fk_djstripe_; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_invoice
    ADD CONSTRAINT djstripe_invoice_charge_id_1e660b26_fk_djstripe_ FOREIGN KEY (charge_id) REFERENCES public.djstripe_charge(djstripe_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djstripe_invoice_customer_id_c0cd871c_fk_djstripe_; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_invoice
    ADD CONSTRAINT djstripe_invoice_customer_id_c0cd871c_fk_djstripe_ FOREIGN KEY (customer_id) REFERENCES public.djstripe_customer(djstripe_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djstripe_invoice_subscription_id_2dbc2461_fk_djstripe_; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_invoice
    ADD CONSTRAINT djstripe_invoice_subscription_id_2dbc2461_fk_djstripe_ FOREIGN KEY (subscription_id) REFERENCES public.djstripe_subscription(djstripe_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djstripe_invoiceitem_customer_id_259466b8_fk_djstripe_; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_invoiceitem
    ADD CONSTRAINT djstripe_invoiceitem_customer_id_259466b8_fk_djstripe_ FOREIGN KEY (customer_id) REFERENCES public.djstripe_customer(djstripe_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djstripe_invoiceitem_invoice_id_d302912e_fk_djstripe_; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_invoiceitem
    ADD CONSTRAINT djstripe_invoiceitem_invoice_id_d302912e_fk_djstripe_ FOREIGN KEY (invoice_id) REFERENCES public.djstripe_invoice(djstripe_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djstripe_invoiceitem_plan_id_a01e229a_fk_djstripe_; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_invoiceitem
    ADD CONSTRAINT djstripe_invoiceitem_plan_id_a01e229a_fk_djstripe_ FOREIGN KEY (plan_id) REFERENCES public.djstripe_plan(djstripe_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djstripe_invoiceitem_subscription_id_a7760178_fk_djstripe_; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_invoiceitem
    ADD CONSTRAINT djstripe_invoiceitem_subscription_id_a7760178_fk_djstripe_ FOREIGN KEY (subscription_id) REFERENCES public.djstripe_subscription(djstripe_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djstripe_payout_destination_id_a5fa55c2_fk_djstripe_; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_payout
    ADD CONSTRAINT djstripe_payout_destination_id_a5fa55c2_fk_djstripe_ FOREIGN KEY (destination_id) REFERENCES public.djstripe_bankaccount(djstripe_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djstripe_plan_product_id_5773384d_fk_djstripe_; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_plan
    ADD CONSTRAINT djstripe_plan_product_id_5773384d_fk_djstripe_ FOREIGN KEY (product_id) REFERENCES public.djstripe_product(djstripe_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djstripe_refund_charge_id_e7efd717_fk_djstripe_; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_refund
    ADD CONSTRAINT djstripe_refund_charge_id_e7efd717_fk_djstripe_ FOREIGN KEY (charge_id) REFERENCES public.djstripe_charge(djstripe_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djstripe_source_customer_id_4d678557_fk_djstripe_; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_source
    ADD CONSTRAINT djstripe_source_customer_id_4d678557_fk_djstripe_ FOREIGN KEY (customer_id) REFERENCES public.djstripe_customer(djstripe_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djstripe_subscriptio_customer_id_aff64ee5_fk_djstripe_; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_subscription
    ADD CONSTRAINT djstripe_subscriptio_customer_id_aff64ee5_fk_djstripe_ FOREIGN KEY (customer_id) REFERENCES public.djstripe_customer(djstripe_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djstripe_subscriptio_plan_id_9129d5d5_fk_djstripe_; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_subscription
    ADD CONSTRAINT djstripe_subscriptio_plan_id_9129d5d5_fk_djstripe_ FOREIGN KEY (plan_id) REFERENCES public.djstripe_plan(djstripe_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djstripe_upcominginv_invoice_ptr_id_2d6ed50f_fk_djstripe_; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_upcominginvoice
    ADD CONSTRAINT djstripe_upcominginv_invoice_ptr_id_2d6ed50f_fk_djstripe_ FOREIGN KEY (invoice_ptr_id) REFERENCES public.djstripe_invoice(djstripe_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djstripe_webhookeven_event_id_b2e08de6_fk_djstripe_; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.djstripe_webhookeventtrigger
    ADD CONSTRAINT djstripe_webhookeven_event_id_b2e08de6_fk_djstripe_ FOREIGN KEY (event_id) REFERENCES public.djstripe_event(djstripe_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: hitcount_hit_count_content_type_id_4a734fe1_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.hitcount_hit_count
    ADD CONSTRAINT hitcount_hit_count_content_type_id_4a734fe1_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: hitcount_hit_hitcount_id_b7971910_fk_hitcount_hit_count_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.hitcount_hit
    ADD CONSTRAINT hitcount_hit_hitcount_id_b7971910_fk_hitcount_hit_count_id FOREIGN KEY (hitcount_id) REFERENCES public.hitcount_hit_count(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: hitcount_hit_user_id_f7067f66_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.hitcount_hit
    ADD CONSTRAINT hitcount_hit_user_id_f7067f66_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_homepage_page_ptr_id_e5b77cf7_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_homepage
    ADD CONSTRAINT home_homepage_page_ptr_id_e5b77cf7_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_tag_hp_logo_id_adf67b85_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_tag
    ADD CONSTRAINT home_tag_hp_logo_id_adf67b85_fk_wagtailimages_image_id FOREIGN KEY (hp_logo_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_tag_main_image_id_51289b7c_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_tag
    ADD CONSTRAINT home_tag_main_image_id_51289b7c_fk_wagtailimages_image_id FOREIGN KEY (main_image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_tag_secondary_image_id_e092a651_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_tag
    ADD CONSTRAINT home_tag_secondary_image_id_e092a651_fk_wagtailimages_image_id FOREIGN KEY (secondary_image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_taglinkleftmenu_image_id_633f5932_fk_wagtailim; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_taglinkleftmenu
    ADD CONSTRAINT home_taglinkleftmenu_image_id_633f5932_fk_wagtailim FOREIGN KEY (image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_taglinkleftmenu_page_id_b892cebb_fk_home_home; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_taglinkleftmenu
    ADD CONSTRAINT home_taglinkleftmenu_page_id_b892cebb_fk_home_home FOREIGN KEY (page_id) REFERENCES public.home_homepage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_taglinkleftmenu_tag_id_ca7727ff_fk_home_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_taglinkleftmenu
    ADD CONSTRAINT home_taglinkleftmenu_tag_id_ca7727ff_fk_home_tag_id FOREIGN KEY (tag_id) REFERENCES public.home_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_taglinkleftsubm_page_id_0c759dfd_fk_home_home; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_taglinkleftsubmenu
    ADD CONSTRAINT home_taglinkleftsubm_page_id_0c759dfd_fk_home_home FOREIGN KEY (page_id) REFERENCES public.home_homepage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_taglinkleftsubmenu_tag_id_42d6ead5_fk_home_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_taglinkleftsubmenu
    ADD CONSTRAINT home_taglinkleftsubmenu_tag_id_42d6ead5_fk_home_tag_id FOREIGN KEY (tag_id) REFERENCES public.home_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_taglinktopmenu_image_id_5bcc52e9_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_taglinktopmenu
    ADD CONSTRAINT home_taglinktopmenu_image_id_5bcc52e9_fk_wagtailimages_image_id FOREIGN KEY (image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_taglinktopmenu_page_id_5e7bf193_fk_home_home; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_taglinktopmenu
    ADD CONSTRAINT home_taglinktopmenu_page_id_5e7bf193_fk_home_home FOREIGN KEY (page_id) REFERENCES public.home_homepage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_taglinktopmenu_tag_id_9750a2ef_fk_home_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_taglinktopmenu
    ADD CONSTRAINT home_taglinktopmenu_tag_id_9750a2ef_fk_home_tag_id FOREIGN KEY (tag_id) REFERENCES public.home_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem_content_type_id_9957a03c_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_profile_photo_id_db6ce341_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.user_profile
    ADD CONSTRAINT user_profile_photo_id_db6ce341_fk_wagtailimages_image_id FOREIGN KEY (photo_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_profile_user_id_8fdce8e2_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.user_profile
    ADD CONSTRAINT user_profile_user_id_8fdce8e2_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_groups_group_id_c57f13c0_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_group_id_c57f13c0_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_groups_user_id_13f9a20d_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_user_id_13f9a20d_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_user_permi_permission_id_ce49d4de_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permi_permission_id_ce49d4de_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_user_permissions_user_id_31782f58_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permissions_user_id_31782f58_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_collecti_collection_id_761908ec_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction
    ADD CONSTRAINT wagtailcore_collecti_collection_id_761908ec_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_collecti_collectionviewrestri_47320efd_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collecti_collectionviewrestri_47320efd_fk_wagtailco FOREIGN KEY (collectionviewrestriction_id) REFERENCES public.wagtailcore_collectionviewrestriction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupcol_collection_id_5423575a_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcol_collection_id_5423575a_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupcol_group_id_05d61460_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcol_group_id_05d61460_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupcol_permission_id_1b626275_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcol_permission_id_1b626275_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_grouppag_group_id_fc07e671_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppag_group_id_fc07e671_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_grouppag_page_id_710b114a_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppag_page_id_710b114a_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page_content_type_id_c28424df_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_content_type_id_c28424df_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page_live_revision_id_930bd822_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_live_revision_id_930bd822_fk_wagtailco FOREIGN KEY (live_revision_id) REFERENCES public.wagtailcore_pagerevision(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page_owner_id_fbf7c332_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_owner_id_fbf7c332_fk_user_user_id FOREIGN KEY (owner_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pagerevi_page_id_d421cc1d_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevi_page_id_d421cc1d_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pagerevision_user_id_2409d2f4_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevision_user_id_2409d2f4_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pageview_group_id_6460f223_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageview_group_id_6460f223_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pageview_page_id_15a8bea6_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction
    ADD CONSTRAINT wagtailcore_pageview_page_id_15a8bea6_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pageview_pageviewrestriction__f147a99a_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageview_pageviewrestriction__f147a99a_fk_wagtailco FOREIGN KEY (pageviewrestriction_id) REFERENCES public.wagtailcore_pageviewrestriction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id FOREIGN KEY (root_page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtaildocs_document_collection_id_23881625_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_collection_id_23881625_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtaildocs_document_uploaded_by_user_id_17258b41_fk_user_user; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_uploaded_by_user_id_17258b41_fk_user_user FOREIGN KEY (uploaded_by_user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailforms_formsub_page_id_e48e93e7_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailforms_formsubmission
    ADD CONSTRAINT wagtailforms_formsub_page_id_e48e93e7_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_image_collection_id_c2f8af7e_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_collection_id_c2f8af7e_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_user_user; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_user_user FOREIGN KEY (uploaded_by_user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_rendit_image_id_3e1fd774_fk_wagtailim; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendit_image_id_3e1fd774_fk_wagtailim FOREIGN KEY (image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailredirects_red_redirect_page_id_b5728a8f_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_red_redirect_page_id_b5728a8f_fk_wagtailco FOREIGN KEY (redirect_page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailredirects_red_site_id_780a0e1e_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_red_site_id_780a0e1e_fk_wagtailco FOREIGN KEY (site_id) REFERENCES public.wagtailcore_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_editor_page_id_28cbc274_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editor_page_id_28cbc274_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_editor_query_id_c6eee4a0_fk_wagtailse; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editor_query_id_c6eee4a0_fk_wagtailse FOREIGN KEY (query_id) REFERENCES public.wagtailsearch_query(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_queryd_query_id_2185994b_fk_wagtailse; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_queryd_query_id_2185994b_fk_wagtailse FOREIGN KEY (query_id) REFERENCES public.wagtailsearch_query(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailusers_userprofile_user_id_59c92331_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_user_id_59c92331_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

