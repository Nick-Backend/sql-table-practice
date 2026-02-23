CREATE TYPE product_status AS ENUM (
    'draft',
    'active',
    'inactive',
    'archived'

);

CREATE TYPE product_condition AS ENUM (
    'new',
    'used'
);


CREATE TABLE products (
    id bigserial NOT NULL PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    slug varchar(200) NOT NULL UNIQUE,
    description TEXT,
    price NUMERIC(12, 2) NOT NULL,
    discount_price NUMERIC(12, 2),
    stock_quantity INTEGER DEFAULT 0,
    condition product_condition,
    status product_status DEFAULT 'draft',
    is_featured BOOLEAN DEFAULT false,
    created_at TIMESTAMPTZ DEFAULT now(),
    updated_at TIMESTAMPTZ DEFAULT now(),

    CONSTRAINT price_check CHECK (price > 0),
    CONSTRAINT discount_price_check CHECK (discount_price IS NULL OR discount_price < price),
    CONSTRAINT stock_quantity_check CHECK (stock_quantity >= 0)
);

INSERT INTO products (name, slug, description, price, discount_price, stock_quantity, condition, status, is_featured)

VALUES
('iPhone 15 Pro', 'iphone-15-pro', 'Flagship smartphone', 1200.00, 1100.00, 45, 'new', 'active', true),
('Samsung Galaxy S23', 'samsung-s23', 'Android flagship', 950.00, NULL, 30, 'new', 'active', true),
('MacBook Air M2', 'macbook-air-m2', 'Apple Silicon Laptop', 1100.00, 1050.00, 20, 'new', 'active', true),
('Sony WH-1000XM5', 'sony-headphones', 'Noise cancelling headphones', 350.00, 320.00, 15, 'new', 'active', false),
('Dell XPS 13', 'dell-xps-13', 'Compact power laptop', 1300.00, NULL, 10, 'new', 'active', false),
('iPad Pro 12.9', 'ipad-pro-12-9', 'Professional tablet', 1100.00, 1000.00, 25, 'new', 'active', true),
('Used ThinkPad X1', 'thinkpad-x1-used', 'Rugged business laptop', 600.00, 550.00, 5, 'used', 'active', false),
('AirPods Pro 2', 'airpods-pro-2', 'Apple earbuds', 250.00, 230.00, 100, 'new', 'active', true),
('Gaming PC Build 1', 'gaming-pc-1', 'RTX 4070, 32GB RAM', 1800.00, 1750.00, 3, 'new', 'active', true),
('Nintendo Switch', 'nintendo-switch', 'Handheld console', 300.00, NULL, 40, 'new', 'active', false),
('Logitech G Pro Mouse', 'logitech-g-pro', 'Wireless gaming mouse', 120.00, 100.00, 60, 'new', 'active', false),
('Mechanical Keyboard', 'keychron-k2', 'RGB Backlit keyboard', 90.00, NULL, 20, 'new', 'active', false),
('Monitor 27 inch', 'lg-monitor-27', '4K IPS Display', 400.00, 380.00, 12, 'new', 'active', true),
('GoPro Hero 12', 'gopro-hero-12', 'Action camera', 450.00, 400.00, 18, 'new', 'active', false),
('Kindle Paperwhite', 'kindle-paper', 'E-book reader', 140.00, 130.00, 35, 'new', 'active', false),
('Canon EOS R6', 'canon-r6', 'Mirrorless camera', 2500.00, 2400.00, 4, 'new', 'active', true),
('Used iPhone 12', 'iphone-12-used', 'Good condition', 400.00, 380.00, 8, 'used', 'active', false),
('Office Chair', 'ergonomic-chair', 'Breathable mesh', 200.00, NULL, 15, 'new', 'active', false),
('Smart Watch Series 9', 'apple-watch-9', 'Health tracking', 400.00, 370.00, 50, 'new', 'active', true),
('Dyson V15', 'dyson-v15', 'Cordless vacuum', 700.00, 650.00, 7, 'new', 'active', true),
('Product 21', 'product-21', 'Description', 100.00, 90.00, 10, 'new', 'active', false),
('Product 22', 'product-22', 'Description', 110.00, NULL, 10, 'new', 'active', false),
('Product 23', 'product-23', 'Description', 120.00, 110.00, 10, 'new', 'active', false),
('Product 24', 'product-24', 'Description', 130.00, NULL, 10, 'new', 'active', false),
('Product 25', 'product-25', 'Description', 140.00, 120.00, 10, 'new', 'active', false),
('Product 26', 'product-26', 'Description', 150.00, NULL, 10, 'new', 'active', false),
('Product 27', 'product-27', 'Description', 160.00, 140.00, 10, 'new', 'active', false),
('Product 28', 'product-28', 'Description', 170.00, NULL, 10, 'new', 'active', false),
('Product 29', 'product-29', 'Description', 180.00, 160.00, 10, 'new', 'active', false),
('Product 30', 'product-30', 'Description', 190.00, NULL, 10, 'new', 'active', false),
('Product 31', 'product-31', 'Description', 200.00, 180.00, 10, 'new', 'active', false),
('Product 32', 'product-32', 'Description', 210.00, NULL, 10, 'new', 'active', false),
('Product 33', 'product-33', 'Description', 220.00, 200.00, 10, 'new', 'active', false),
('Product 34', 'product-34', 'Description', 230.00, NULL, 10, 'new', 'active', false),
('Product 35', 'product-35', 'Description', 240.00, 220.00, 10, 'new', 'active', false),
('Product 36', 'product-36', 'Description', 250.00, NULL, 10, 'new', 'active', false),
('Product 37', 'product-37', 'Description', 260.00, 240.00, 10, 'new', 'active', false),
('Product 38', 'product-38', 'Description', 270.00, NULL, 10, 'new', 'active', false),
('Product 39', 'product-39', 'Description', 280.00, 260.00, 10, 'new', 'active', false),
('Product 40', 'product-40', 'Description', 290.00, NULL, 10, 'new', 'active', false),
('Product 41', 'product-41', 'Description', 300.00, 280.00, 10, 'new', 'active', false),
('Product 42', 'product-42', 'Description', 310.00, NULL, 10, 'new', 'active', false),
('Product 43', 'product-43', 'Description', 320.00, 300.00, 10, 'new', 'active', false),
('Product 44', 'product-44', 'Description', 330.00, NULL, 10, 'new', 'active', false),
('Product 45', 'product-45', 'Description', 340.00, 320.00, 10, 'new', 'active', false),
('Product 46', 'product-46', 'Description', 350.00, NULL, 10, 'new', 'active', false),
('Product 47', 'product-47', 'Description', 360.00, 340.00, 10, 'new', 'active', false),
('Product 48', 'product-48', 'Description', 370.00, NULL, 10, 'new', 'active', false),
('Product 49', 'product-49', 'Description', 380.00, 360.00, 10, 'new', 'active', false),
('Product 50', 'product-50', 'Description', 390.00, NULL, 10, 'new', 'active', false);