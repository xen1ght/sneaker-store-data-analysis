-- View: public.vw_product_cashflow

-- DROP VIEW public.vw_product_cashflow;

CREATE OR REPLACE VIEW public.vw_product_cashflow
 AS
 SELECT p.purchase_date AS event_date,
    p.product_id,
    'purchase'::text AS event_type,
    - (p.quantity::numeric * p.unit_purchase_price)::numeric(14,2) AS cash_amount
   FROM purchases p
UNION ALL
 SELECT o.order_date::date AS event_date,
    oi.product_id,
    'sale'::text AS event_type,
    (oi.quantity::numeric * oi.price)::numeric(14,2) AS cash_amount
   FROM order_items oi
     JOIN orders o ON o.order_id = oi.order_id
  WHERE o.status::text = 'completed'::text;

ALTER TABLE public.vw_product_cashflow
    OWNER TO postgres;

