CREATE TABLE `brands` (
	`id` text PRIMARY KEY NOT NULL,
	`name` text NOT NULL,
	`slug` text NOT NULL,
	`logo_url` text,
	`created_at` integer DEFAULT (unixepoch()) NOT NULL
);
--> statement-breakpoint
CREATE UNIQUE INDEX `brands_slug_unique` ON `brands` (`slug`);--> statement-breakpoint
CREATE INDEX `brands_name_idx` ON `brands` (`name`);--> statement-breakpoint
CREATE TABLE `car_models` (
	`id` text PRIMARY KEY NOT NULL,
	`brand_id` text NOT NULL,
	`name` text NOT NULL,
	`slug` text NOT NULL,
	`created_at` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`brand_id`) REFERENCES `brands`(`id`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE UNIQUE INDEX `car_models_brand_slug_unique` ON `car_models` (`brand_id`,`slug`);--> statement-breakpoint
CREATE INDEX `car_models_brand_idx` ON `car_models` (`brand_id`);--> statement-breakpoint
CREATE TABLE `car_versions` (
	`id` text PRIMARY KEY NOT NULL,
	`model_id` text NOT NULL,
	`year` integer NOT NULL,
	`version_name` text NOT NULL,
	`engine` text NOT NULL,
	`created_at` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`model_id`) REFERENCES `car_models`(`id`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE INDEX `car_versions_model_idx` ON `car_versions` (`model_id`);--> statement-breakpoint
CREATE INDEX `car_versions_year_idx` ON `car_versions` (`year`);--> statement-breakpoint
CREATE TABLE `categories` (
	`id` text PRIMARY KEY NOT NULL,
	`name` text NOT NULL,
	`slug` text NOT NULL,
	`icon` text,
	`created_at` integer DEFAULT (unixepoch()) NOT NULL
);
--> statement-breakpoint
CREATE UNIQUE INDEX `categories_slug_unique` ON `categories` (`slug`);--> statement-breakpoint
CREATE TABLE `companies` (
	`id` text PRIMARY KEY NOT NULL,
	`cnpj` text NOT NULL,
	`name` text NOT NULL,
	`email` text NOT NULL,
	`password_hash` text NOT NULL,
	`active_plan` text DEFAULT 'TRIAL',
	`created_at` integer DEFAULT (unixepoch()) NOT NULL
);
--> statement-breakpoint
CREATE UNIQUE INDEX `companies_cnpj_unique` ON `companies` (`cnpj`);--> statement-breakpoint
CREATE UNIQUE INDEX `companies_email_unique` ON `companies` (`email`);--> statement-breakpoint
CREATE TABLE `master_parts` (
	`id` text PRIMARY KEY NOT NULL,
	`name` text NOT NULL,
	`manufacturer` text NOT NULL,
	`manufacturer_code` text NOT NULL,
	`category_id` text NOT NULL,
	`position` text DEFAULT 'N/A',
	`description` text,
	`image_url` text,
	`created_at` integer DEFAULT (unixepoch()) NOT NULL,
	`updated_at` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`category_id`) REFERENCES `categories`(`id`) ON UPDATE no action ON DELETE restrict
);
--> statement-breakpoint
CREATE UNIQUE INDEX `master_parts_code_unique` ON `master_parts` (`manufacturer_code`);--> statement-breakpoint
CREATE INDEX `master_parts_name_idx` ON `master_parts` (`name`);--> statement-breakpoint
CREATE INDEX `master_parts_category_idx` ON `master_parts` (`category_id`);--> statement-breakpoint
CREATE TABLE `part_compatibility` (
	`part_id` text NOT NULL,
	`version_id` text NOT NULL,
	`created_at` integer DEFAULT (unixepoch()) NOT NULL,
	PRIMARY KEY(`part_id`, `version_id`),
	FOREIGN KEY (`part_id`) REFERENCES `master_parts`(`id`) ON UPDATE no action ON DELETE cascade,
	FOREIGN KEY (`version_id`) REFERENCES `car_versions`(`id`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE INDEX `part_compat_part_idx` ON `part_compatibility` (`part_id`);--> statement-breakpoint
CREATE INDEX `part_compat_version_idx` ON `part_compatibility` (`version_id`);--> statement-breakpoint
CREATE TABLE `store_offers` (
	`id` text PRIMARY KEY NOT NULL,
	`store_id` text NOT NULL,
	`part_id` text NOT NULL,
	`price` real NOT NULL,
	`in_stock` integer DEFAULT true NOT NULL,
	`condition` text DEFAULT 'NOVO' NOT NULL,
	`notes` text,
	`created_at` integer DEFAULT (unixepoch()) NOT NULL,
	`updated_at` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`store_id`) REFERENCES `stores`(`id`) ON UPDATE no action ON DELETE cascade,
	FOREIGN KEY (`part_id`) REFERENCES `master_parts`(`id`) ON UPDATE no action ON DELETE cascade,
	CONSTRAINT "store_offers_condition_check" CHECK("condition" IN ('NOVO', 'USADO')),
	CONSTRAINT "store_offers_price_check" CHECK(price >= 0)
);
--> statement-breakpoint
CREATE UNIQUE INDEX `store_offers_unique` ON `store_offers` (`store_id`,`part_id`,`condition`);--> statement-breakpoint
CREATE INDEX `store_offers_price_idx` ON `store_offers` (`price`);--> statement-breakpoint
CREATE INDEX `store_offers_part_idx` ON `store_offers` (`part_id`);--> statement-breakpoint
CREATE TABLE `stores` (
	`id` text PRIMARY KEY NOT NULL,
	`company_id` text NOT NULL,
	`name` text NOT NULL,
	`address` text NOT NULL,
	`city` text NOT NULL,
	`state` text NOT NULL,
	`whatsapp` text NOT NULL,
	`logo_url` text,
	`rating` real DEFAULT 0,
	`created_at` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`company_id`) REFERENCES `companies`(`id`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE INDEX `stores_name_idx` ON `stores` (`name`);--> statement-breakpoint
CREATE INDEX `stores_city_idx` ON `stores` (`city`,`state`);