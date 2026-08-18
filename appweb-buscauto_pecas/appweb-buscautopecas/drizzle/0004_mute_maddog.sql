CREATE TABLE `product_fitment` (
	`product_id` text NOT NULL,
	`vehicle_id` text NOT NULL,
	`notes` text,
	`created_at` integer DEFAULT (unixepoch()) NOT NULL,
	PRIMARY KEY(`product_id`, `vehicle_id`),
	FOREIGN KEY (`product_id`) REFERENCES `products`(`id`) ON UPDATE no action ON DELETE cascade,
	FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles`(`id`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE INDEX `fitment_product_idx` ON `product_fitment` (`product_id`);--> statement-breakpoint
CREATE INDEX `fitment_vehicle_idx` ON `product_fitment` (`vehicle_id`);--> statement-breakpoint
CREATE TABLE `products` (
	`id` text PRIMARY KEY NOT NULL,
	`sku` text NOT NULL,
	`name` text NOT NULL,
	`description` text,
	`price` real NOT NULL,
	`stock_quantity` integer DEFAULT 0 NOT NULL,
	`image_url` text,
	`brand_id` text NOT NULL,
	`category_id` text NOT NULL,
	`created_at` integer DEFAULT (unixepoch()) NOT NULL,
	`updated_at` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`brand_id`) REFERENCES `brands`(`id`) ON UPDATE no action ON DELETE cascade,
	FOREIGN KEY (`category_id`) REFERENCES `categories`(`id`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE UNIQUE INDEX `products_sku_unique` ON `products` (`sku`);--> statement-breakpoint
CREATE INDEX `products_name_idx` ON `products` (`name`);--> statement-breakpoint
CREATE INDEX `products_brand_idx` ON `products` (`brand_id`);--> statement-breakpoint
CREATE INDEX `products_category_idx` ON `products` (`category_id`);--> statement-breakpoint
CREATE TABLE `vehicles` (
	`id` text PRIMARY KEY NOT NULL,
	`make` text NOT NULL,
	`model` text NOT NULL,
	`year_start` integer NOT NULL,
	`year_end` integer,
	`engine` text,
	`created_at` integer DEFAULT (unixepoch()) NOT NULL
);
--> statement-breakpoint
CREATE INDEX `vehicles_make_model_idx` ON `vehicles` (`make`,`model`);--> statement-breakpoint
CREATE INDEX `vehicles_year_idx` ON `vehicles` (`year_start`,`year_end`);--> statement-breakpoint
CREATE TABLE `workshops` (
	`id` text PRIMARY KEY NOT NULL,
	`name` text NOT NULL,
	`address` text NOT NULL,
	`neighborhood` text,
	`city` text NOT NULL,
	`state` text NOT NULL,
	`phone` text,
	`whatsapp` text,
	`rating` real DEFAULT 5,
	`specialties` text,
	`lat` real,
	`lng` real,
	`is_verified` integer DEFAULT true,
	`created_at` integer DEFAULT (unixepoch()) NOT NULL
);
--> statement-breakpoint
CREATE INDEX `workshops_city_idx` ON `workshops` (`city`);--> statement-breakpoint
ALTER TABLE `categories` ADD `parent_id` text;--> statement-breakpoint
CREATE INDEX `categories_parent_idx` ON `categories` (`parent_id`);--> statement-breakpoint
CREATE UNIQUE INDEX `brands_name_unique` ON `brands` (`name`);--> statement-breakpoint
CREATE VIRTUAL TABLE IF NOT EXISTS products_fts USING fts5(
  product_id UNINDEXED,
  name,
  brand_name,
  vehicle_model
);