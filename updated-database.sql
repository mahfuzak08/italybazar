-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 12, 2023 at 10:35 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ss`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint UNSIGNED NOT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `speech` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_img_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_img_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_img_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_caption_one` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_caption_two` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_caption_three` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_one` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_two` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_one` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_two` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bangla_text`
--

CREATE TABLE `bangla_text` (
  `id` int UNSIGNED NOT NULL,
  `order_text` varchar(100) DEFAULT NULL,
  `cart_text` varchar(100) DEFAULT NULL,
  `checkout_form_top_text` varchar(100) DEFAULT NULL,
  `name_text` varchar(100) DEFAULT NULL,
  `mobile_text` varchar(100) DEFAULT NULL,
  `address_text` varchar(100) DEFAULT NULL,
  `order_confirm_text` varchar(100) DEFAULT NULL,
  `delivery_text` varchar(100) DEFAULT NULL,
  `select_text` varchar(100) DEFAULT NULL,
  `fshipping_text` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `bangla_text`
--

INSERT INTO `bangla_text` (`id`, `order_text`, `cart_text`, `checkout_form_top_text`, `name_text`, `mobile_text`, `address_text`, `order_confirm_text`, `delivery_text`, `select_text`, `fshipping_text`) VALUES
(1, 'অর্ডার করুন', 'কার্টে যোগ করুন', 'অর্ডার কনফার্ম করতে আপনার নাম, ঠিকানা, মোবাইল নাম্বার লিখে অর্ডার কনফার্ম করুন বাটনে ক্লিক করুন', 'আপনার নাম', 'আপনার মোবাইল নাম্বার', 'আপনার সম্পূর্ন ঠিকানা', 'অর্ডার কনফার্ম করুন', 'ডেলিভারি এলাকা নির্বাচন করুন', 'যেকোনো একটি নির্বাচন করুন', 'ফ্রি শিপিং');

-- --------------------------------------------------------

--
-- Table structure for table `blocked_ips`
--

CREATE TABLE `blocked_ips` (
  `id` bigint NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(3, 'test', 'test sdfgbvregb erre gher', '0906_hp_lux_takeover_c06_img1666696656.jpg', '2022-10-25 09:17:36', '2022-10-25 09:19:10');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `type_id` tinyint DEFAULT NULL,
  `parent_id` tinyint DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_popular` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `type_id`, `parent_id`, `name`, `url`, `created_at`, `updated_at`, `image`, `is_popular`) VALUES
(29, NULL, NULL, 'Home And Living', 'homeandlving', '2023-10-10 16:29:25', '2023-10-10 16:54:25', 'desk-in-living-room-ideas-6748783-hero-7275cfc992d44e59acdd04f4e0da92381696956865.jpg', 1),
(30, NULL, 29, 'Winter Demand', 'winterdemand', '2023-10-10 16:29:50', '2023-10-10 16:29:50', NULL, 1),
(31, NULL, NULL, 'Kitchen & Dining', 'Kitchen & Dining', '2023-10-10 16:44:19', '2023-10-10 16:55:37', 'images1696956937.jpeg', 1),
(32, NULL, 31, 'Juicer', 'juicer', '2023-10-10 16:44:49', '2023-10-10 16:44:49', NULL, NULL),
(33, NULL, 31, 'Kitchen Shelf', 'KitchenShelf', '2023-10-10 16:44:58', '2023-10-10 16:44:58', NULL, NULL),
(34, NULL, 31, 'Slicer & Cutter', 'Slicer & Cutter', '2023-10-10 16:45:11', '2023-10-10 16:45:11', NULL, NULL),
(35, NULL, 29, 'summer\'s demand', 'summer\'s demand', '2023-10-10 16:45:23', '2023-10-10 16:45:23', NULL, NULL),
(36, NULL, NULL, 'Health & Beauty', 'Health & Beauty', '2023-10-10 16:45:47', '2023-10-10 16:57:18', 'download - 2023-10-10T225707.8201696957038.jpeg', 1),
(37, NULL, 36, 'Medical Tools', 'Medical Tools', '2023-10-10 16:45:58', '2023-10-10 16:45:58', NULL, NULL),
(38, NULL, NULL, 'Baby\'s Items', 'Baby\'s Items', '2023-10-10 16:46:18', '2023-10-10 16:57:54', 'download - 2023-10-10T225740.7351696957074.jpeg', 1),
(39, NULL, NULL, 'Gadget & Electronics', 'Gadget & Electronics', '2023-10-10 16:46:35', '2023-10-10 16:58:23', 'download - 2023-10-10T225814.7711696957103.jpeg', 1),
(40, NULL, NULL, 'Indoor Fashion', 'Indoor Fashion', '2023-10-10 16:46:44', '2023-10-10 16:59:56', 'download - 2023-10-10T225946.7581696957196.jpeg', 1),
(41, NULL, NULL, 'Organic Food', 'Organic Food', '2023-10-10 16:46:54', '2023-10-10 17:00:30', 'download - 2023-10-10T230021.9901696957230.jpeg', 1),
(42, NULL, 38, 'New Born Baby Blanket', 'New Born Baby Blanket', '2023-10-10 16:48:34', '2023-10-10 16:48:34', NULL, NULL),
(43, NULL, 39, 'Camera', 'Camera', '2023-10-10 16:48:45', '2023-10-10 16:48:45', NULL, NULL),
(44, NULL, 40, 'comfort', 'comfort', '2023-10-10 16:49:06', '2023-10-10 16:49:06', NULL, NULL),
(45, NULL, 41, 'খেজুর', 'খেজুর', '2023-10-10 16:49:18', '2023-10-10 16:49:18', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Default', '000', NULL, '2022-12-17 07:21:06', '2022-12-17 07:21:06'),
(2, 'red', '87667574', NULL, '2023-02-07 17:23:27', '2023-06-22 21:32:25'),
(3, 'Black', '#000000', NULL, '2023-02-07 17:23:42', '2023-02-07 17:23:42'),
(4, 'Blue', '0', NULL, '2023-02-19 17:37:49', '2023-02-19 17:37:49'),
(5, 'Pink', '0', NULL, '2023-02-19 17:37:56', '2023-02-19 17:37:56'),
(6, 'Purple', '0', NULL, '2023-02-19 17:38:05', '2023-02-19 21:01:31'),
(7, 'Orange', '0', NULL, '2023-02-19 17:38:20', '2023-02-19 17:38:20'),
(9, 'White', '0', NULL, '2023-02-19 20:24:03', '2023-02-19 20:24:03'),
(10, 'Olive', '0', NULL, '2023-02-19 20:54:35', '2023-02-19 20:54:35'),
(11, 'Ash', '0', NULL, '2023-02-19 21:00:52', '2023-02-19 21:00:52'),
(12, 'Brown', '0', NULL, '2023-02-19 21:01:02', '2023-02-19 21:01:02'),
(13, 'Navy Blue', '0', NULL, '2023-02-19 21:08:50', '2023-02-19 21:08:50'),
(14, 'Sky Blue', '0', NULL, '2023-02-19 21:09:01', '2023-02-19 21:09:01'),
(15, 'Lemon', '0', NULL, '2023-02-19 21:18:37', '2023-02-19 21:18:37'),
(16, 'Merun', '0', NULL, '2023-02-19 21:38:02', '2023-02-19 21:38:02'),
(17, 'Green', '0', NULL, '2023-02-19 22:53:08', '2023-02-19 22:53:08'),
(18, 'Nude', '0', NULL, '2023-02-19 22:58:00', '2023-02-19 22:58:00'),
(19, 'Golden', '0', NULL, '2023-02-19 23:07:02', '2023-02-19 23:07:02'),
(21, 'Blue', '4', NULL, '2023-05-27 23:28:57', '2023-05-27 23:28:57'),
(22, 'mad block', '01', NULL, '2023-09-07 16:18:07', '2023-09-07 16:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `combos`
--

CREATE TABLE `combos` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` mediumint NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `combo_products`
--

CREATE TABLE `combo_products` (
  `id` bigint UNSIGNED NOT NULL,
  `combo_id` smallint NOT NULL,
  `product_id` mediumint NOT NULL,
  `size_id` tinyint NOT NULL,
  `quantity` decimal(8,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_codes`
--

CREATE TABLE `coupon_codes` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `discount_type` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minimum_amount` decimal(8,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupon_codes`
--

INSERT INTO `coupon_codes` (`id`, `code`, `amount`, `start`, `end`, `status`, `discount_type`, `minimum_amount`, `created_at`, `updated_at`) VALUES
(4, '11', 100.00, '2023-11-12', '2023-11-15', NULL, 'fixed', 500.00, '2023-11-12 04:27:23', '2023-11-12 04:27:23');

-- --------------------------------------------------------

--
-- Table structure for table `couriers`
--

CREATE TABLE `couriers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `couriers`
--

INSERT INTO `couriers` (`id`, `name`, `phone`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Redx', '0156450000', 'client@client.com', 'dhaka', '2022-12-17 07:59:45', '2022-12-17 07:59:45'),
(2, 'Pathao', NULL, NULL, 'Dhaka', '2023-05-23 14:17:12', '2023-10-06 10:11:52'),
(3, 'Steadfast', '01700000000', 'steedfast@gmail.com', 'dhaka', '2023-07-12 17:41:20', '2023-07-12 17:41:20');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_charges`
--

CREATE TABLE `delivery_charges` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_charges`
--

INSERT INTO `delivery_charges` (`id`, `title`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(2, 'ঢাকার ভিতরে ডেলিভারি চার্জ 70 টাকা', 70.00, 1, NULL, '2023-10-05 06:05:40'),
(3, 'ঢাকার বাহিরে ডেলিভারি চার্জ 150 টাকা।', 150.00, 1, '0000-00-00 00:00:00', '2023-10-05 06:06:24');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_section_images`
--

CREATE TABLE `home_section_images` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` int DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_for_small` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_section_images`
--

INSERT INTO `home_section_images` (`id`, `title`, `text`, `image`, `mobile_image`, `section`, `link`, `is_for_small`, `created_at`, `updated_at`) VALUES
(2, NULL, NULL, 'best offer16807011091694545008.jpg', 'best offer16807011091694545008.jpg', 2, 'discount-products', NULL, '2023-01-03 19:32:30', '2023-09-13 00:56:48');

-- --------------------------------------------------------

--
-- Table structure for table `informations`
--

CREATE TABLE `informations` (
  `id` int NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `site_logo` varchar(255) NOT NULL,
  `owner_phone` varchar(255) NOT NULL,
  `owner_email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `tracking_code` text,
  `pixel` text,
  `search_console` text,
  `copyright` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `recommend_num` int DEFAULT NULL,
  `discount_num` int DEFAULT NULL,
  `newarrival_num` int DEFAULT NULL,
  `bkash` tinyint DEFAULT NULL,
  `bkash_number` varchar(100) DEFAULT NULL,
  `nogod` tinyint DEFAULT NULL,
  `nogod_number` varchar(100) NOT NULL,
  `rocket` tinyint DEFAULT NULL,
  `rocket_number` varchar(100) DEFAULT NULL,
  `paypal` tinyint DEFAULT NULL,
  `paypal_account` varchar(100) DEFAULT NULL,
  `stripe` tinyint DEFAULT NULL,
  `stripe_account` varchar(100) DEFAULT NULL,
  `supp_num1` varchar(20) DEFAULT NULL,
  `supp_num2` varchar(20) DEFAULT NULL,
  `supp_num3` varchar(20) DEFAULT NULL,
  `number_visibility` int DEFAULT NULL,
  `coupon_visibility` tinyint DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `redx_api_base_url` varchar(255) DEFAULT NULL,
  `redx_api_access_token` varchar(1000) DEFAULT NULL,
  `pathao_api_base_url` varchar(255) DEFAULT NULL,
  `pathao_api_access_token` varchar(1500) DEFAULT NULL,
  `pathao_store_id` int DEFAULT NULL,
  `steadfast_api_base_url` varchar(255) DEFAULT NULL,
  `steadfast_api_key` varchar(255) DEFAULT NULL,
  `steadfast_secret_key` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `informations`
--

INSERT INTO `informations` (`id`, `site_name`, `site_logo`, `owner_phone`, `owner_email`, `address`, `tracking_code`, `pixel`, `search_console`, `copyright`, `facebook`, `instagram`, `youtube`, `recommend_num`, `discount_num`, `newarrival_num`, `bkash`, `bkash_number`, `nogod`, `nogod_number`, `rocket`, `rocket_number`, `paypal`, `paypal_account`, `stripe`, `stripe_account`, `supp_num1`, `supp_num2`, `supp_num3`, `number_visibility`, `coupon_visibility`, `currency`, `redx_api_base_url`, `redx_api_access_token`, `pathao_api_base_url`, `pathao_api_access_token`, `pathao_store_id`, `steadfast_api_base_url`, `steadfast_api_key`, `steadfast_secret_key`) VALUES
(1, 'Pallibazarbd', '1300697328.png', '01700000000', 'support@pallibazarbd.com', 'Dhaka', NULL, NULL, NULL, '© 2022. All rights reserved', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.youtube.com/', 18, 18, 18, 1, '01600000000', 0, '01600000000', 0, '01600000000', 0, 'ad@gmail.com', 0, 'admin@gmail.com', '01700000000', '01700000001', '01700000002', 1, 1, 'BDT', 'https://sandbox.redx.com.bd/v1.0.0-beta/', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI3Nzc2MjAiLCJpYXQiOjE2NzI4MTgyMDIsImlzcyI6IkVyeEZSY2VuemNOMkZrcmdyYXBUM1p6ZXN4emx2NnBOIiwic2hvcF9pZCI6Nzc3NjIwLCJ1c2VyX2lkIjoxNjQzNDY0fQ.1PO9zwZ-Wgy7bgzMfJ414EiEdqVCnSDJoodNXe1NNOU', 'https://hermes-api.p-stageenv.xyz', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjM2NWUyY2M3YjIxYzNhYTM0ZWFmM2Y3ZDY3OGM3ZDIxY2NkMjM4MjZhZjdlNGI2YzZiYTAwNTAyNTI1MGU3MTgwYTE2Mjk0ZmQwMGE1OTVhIn0.eyJhdWQiOiIyNjciLCJqdGkiOiIzNjVlMmNjN2IyMWMzYWEzNGVhZjNmN2Q2NzhjN2QyMWNjZDIzODI2YWY3ZTRiNmM2YmEwMDUwMjUyNTBlNzE4MGExNjI5NGZkMDBhNTk1YSIsImlhdCI6MTY4NDkxNTYzMCwibmJmIjoxNjg0OTE1NjMwLCJleHAiOjE2ODUzNDc2MzAsInN1YiI6IjM1MiIsInNjb3BlcyI6W119.jhAAwQOiL9It1If5KqCDqEXNfFnNal559166AQC782OwHgQMcysxt46-uUPfPViko_coZjD4MqXZZHc6CaVznfxU-6GTC4Bi-OTjTowUfGgJOi0PYXtxhn5fSxU_1_aFazvXaAlh2Css5H7oz_KH2zSZTpW42_yQzHK-d3UCcfWPuYO-0cYEWlfbvD8hA8GZVOHhz8e2k6Kn702GERWh251PyBsHLheCLo5g07l7d3KB6Hgd9KYDjPEeOEjJn_FIewVp8mJaa4a39CgCYlnDwujKfq2B8KUBpKkTJ75tRxtZiQnZNv4dK2lDtAAZnLY_UPgGSU1yLwZWXft08-A0G3NvZYBY2TuMFKNZa_L4TpEPJur0JYHjfgB0z1izqMD1BIk_lfZAtubvx3a1u9OZC9jx1YgNsUdSb-yWwjkELxuRleYGvY46RkhZ-ZdbpZZRIQpfGKf4bl3tPGRXgZTjdr-kRkq7IRkxJix_0xwz8HhYxC0nohdCpUJatiulrhCWZ5m1lONjBOXg1TJmfRH07Y6e-p8Vqvs9WqbsXUONcfTpUTnyrZ-1H3fkxh4CqFzdJ7F0Smm8YSPp_mWIH4JGCK8brhC6bEpy2nZeEvWq-nlnUNDTmshignvnt0DQttU8e0c6vf_FI_HMhtk_jsMl3RX9-QsNvodGmv9UlqDgFRc', 267, 'sdfgsd', 'sdgsgs', 'sdgsdgsd');

-- --------------------------------------------------------

--
-- Table structure for table `landing_pages`
--

CREATE TABLE `landing_pages` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `title1` varchar(255) DEFAULT NULL,
  `title2` text,
  `video_url` text,
  `des1` text,
  `feature` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `old_price` varchar(200) DEFAULT NULL,
  `new_price` varchar(200) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `des3` text,
  `pay_text` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `landing_page_sliders`
--

CREATE TABLE `landing_page_sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `landing_page_id` bigint NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_21_061530_create_products_table', 2),
(6, '2022_09_21_105808_create_sliders_table', 3),
(7, '2022_09_21_105823_create_categories_table', 3),
(8, '2022_09_21_110337_add_title_to_sliders_table', 4),
(9, '2022_09_22_073647_add_image_to_categories_table', 5),
(10, '2022_09_27_092211_create_orders_table', 6),
(11, '2022_09_27_092410_create_order_details_table', 6),
(12, '2022_09_27_092547_create_order_payments_table', 6),
(13, '2022_09_28_152539_create_types_table', 7),
(14, '2022_09_28_152648_create_sizes_table', 7),
(15, '2022_09_28_152701_create_product_sizes_table', 8),
(16, '2022_10_13_111702_create_home_section_images_table', 9),
(17, '2022_10_14_104010_create_purchase_payments_table', 10),
(18, '2022_10_14_104112_create_purchases_table', 10),
(19, '2022_10_14_104348_create_purchase_lines_table', 10),
(20, '2022_10_14_105435_create_product_stocks_table', 10),
(21, '2022_10_14_120042_create_suppliers_table', 11),
(22, '2022_10_19_115117_create_permission_tables', 12),
(23, '2022_10_24_114941_create_about_us_table', 13),
(24, '2022_10_24_120601_create_careers_table', 13),
(25, '2022_10_25_173552_create_social_icons_table', 13),
(26, '2022_10_27_123708_create_combos_table', 14),
(27, '2022_10_27_123729_create_combo_products_table', 14),
(28, '2022_11_11_150834_create_product_images_table', 15),
(29, '2022_11_20_001912_create_colors_table', 16),
(30, '2022_11_20_002214_create_variations_table', 16),
(31, '2022_11_24_224227_create_contacts_table', 17),
(32, '2022_12_17_134049_create_couriers_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(6, 'App\\Models\\User', 1),
(8, 'App\\Models\\User', 24),
(9, 'App\\Models\\User', 77),
(9, 'App\\Models\\User', 78),
(6, 'App\\Models\\User', 1110);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL,
  `invoice_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_id` int DEFAULT NULL,
  `area_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `payment_status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'due',
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `amount` decimal(10,2) DEFAULT '0.00',
  `tax` decimal(10,2) DEFAULT '0.00',
  `discount` decimal(10,2) DEFAULT '0.00',
  `final_amount` decimal(10,2) DEFAULT '0.00',
  `delivery_charge_id` tinyint DEFAULT NULL,
  `shipping_charge` decimal(10,2) DEFAULT '0.00',
  `delivery_type` tinyint DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `courier_id` tinyint DEFAULT NULL,
  `courier_tracking_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assign_user_id` mediumint DEFAULT NULL,
  `store_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `invoice_no`, `shipping_address`, `ip_address`, `area_id`, `area_name`, `city`, `state`, `zip_code`, `first_name`, `last_name`, `mobile`, `email`, `date`, `payment_status`, `status`, `amount`, `tax`, `discount`, `final_amount`, `delivery_charge_id`, `shipping_charge`, `delivery_type`, `note`, `courier_id`, `courier_tracking_id`, `assign_user_id`, `store_id`, `weight`, `created_at`, `updated_at`) VALUES
(1257, 1, '164042', 'Dhaka,Mirpur', NULL, NULL, NULL, NULL, NULL, NULL, 'Brooke islam', 'user', '01700000000', NULL, '2023-10-06', 'due', 'pending', 7940.00, 0.00, 3800.00, 4070.00, 2, 70.00, NULL, NULL, NULL, NULL, 24, NULL, '0.5', '2023-10-06 10:13:04', '2023-10-06 10:13:04'),
(1258, 1, '626274', 'dit project road 11', '43.239.73.2', NULL, NULL, NULL, NULL, NULL, 'Sadique', NULL, '01740920420', NULL, '2023-11-11', 'due', 'on_the_way', 3140.00, 0.00, 0.00, 3070.00, 2, 70.00, NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-11-11 12:16:27', '2023-11-11 12:23:20'),
(1259, 1, '735581', 'dit', '43.239.73.2', NULL, NULL, NULL, NULL, NULL, 'Sadique', NULL, '01740920420', NULL, '2023-11-12', 'due', 'pending', 1500.00, 0.00, 100.00, 1550.00, 3, 150.00, NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-11-12 04:28:38', '2023-11-12 04:28:38');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint NOT NULL,
  `product_id` mediumint NOT NULL,
  `quantity` decimal(5,2) DEFAULT NULL,
  `variation_id` mediumint DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT '0.00',
  `discount` decimal(10,2) DEFAULT '0.00',
  `is_stock` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `variation_id`, `unit_price`, `discount`, `is_stock`, `created_at`, `updated_at`) VALUES
(1302, 1258, 157, 1.00, 246, 1500.00, 0.00, 0, '2023-11-11 12:16:27', '2023-11-11 12:16:27'),
(1303, 1258, 157, 1.00, 246, 1500.00, 0.00, NULL, '2023-11-11 12:17:59', '2023-11-11 12:17:59'),
(1304, 1259, 157, 1.00, 246, 1500.00, 0.00, 0, '2023-11-12 04:28:38', '2023-11-12 04:28:38');

-- --------------------------------------------------------

--
-- Table structure for table `order_payments`
--

CREATE TABLE `order_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint NOT NULL,
  `method` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'cash',
  `amount` decimal(10,2) DEFAULT '0.00',
  `date` date DEFAULT NULL,
  `account_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tnx_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_payments`
--

INSERT INTO `order_payments` (`id`, `order_id`, `method`, `amount`, `date`, `account_no`, `tnx_id`, `email`, `name`, `note`, `created_at`, `updated_at`) VALUES
(5, 125, 'paypal', 36500.00, '2023-02-10', NULL, '48H180669Y986232S', NULL, NULL, '', '2023-02-10 02:35:05', '2023-02-10 02:35:05');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'about', 'About us', '<p>About us</p>', '2023-02-01 02:39:15', '2023-10-05 05:50:10'),
(2, 'about', 'test', '<p>test data</p>', '2023-02-01 02:39:31', '2023-02-01 02:39:31'),
(3, 'return-policy', 'Return Policy', '<p>Return Policy</p>', '2023-07-09 00:25:19', '2023-10-05 05:51:13');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'purchase.create', 'web', '2022-10-19 06:04:26', '2022-10-19 09:18:47'),
(2, 'purchase.edit', 'web', '2022-10-19 06:04:26', '2022-10-19 06:04:26'),
(3, 'purchase.delete', 'web', '2022-10-19 06:04:26', '2022-10-19 06:04:26'),
(4, 'role.create', 'web', '2022-10-19 06:04:26', '2022-10-19 06:04:26'),
(5, 'role.edit', 'web', '2022-10-19 08:46:38', '2022-10-19 08:46:38'),
(6, 'role.delete', 'web', '2022-10-19 08:49:08', '2022-10-19 08:49:08'),
(7, 'product.create', 'web', '2022-10-19 08:51:46', '2022-10-19 08:51:46'),
(8, 'product.edit', 'web', '2022-10-19 08:52:01', '2022-10-19 08:52:01'),
(10, 'product.delete', 'web', '2022-10-19 09:21:11', '2022-10-19 09:21:11'),
(11, 'permission.create', 'web', '2022-10-19 09:22:11', '2022-10-19 09:22:11'),
(12, 'permission.edit', 'web', '2022-10-19 09:22:19', '2022-10-19 09:22:19'),
(13, 'permission.delete', 'web', '2022-10-19 09:22:29', '2022-10-19 09:22:29'),
(14, 'order.create', 'web', '2022-10-19 09:22:48', '2022-10-19 09:22:48'),
(15, 'order.edit', 'web', '2022-10-19 09:22:56', '2022-10-19 09:22:56'),
(16, 'order.delete', 'web', '2022-10-19 09:23:03', '2022-10-19 09:23:03'),
(17, 'slider.create', 'web', '2022-10-19 09:23:33', '2022-10-19 09:23:33'),
(18, 'slider.edit', 'web', '2022-10-19 09:23:40', '2022-10-19 09:23:40'),
(19, 'slider.delete', 'web', '2022-10-19 09:23:47', '2022-10-19 09:23:47'),
(20, 'image.create', 'web', '2022-10-19 09:24:00', '2022-10-19 09:24:00'),
(21, 'image.edit', 'web', '2022-10-19 09:24:18', '2022-10-19 09:24:18'),
(22, 'image.delete', 'web', '2022-10-19 09:24:27', '2022-10-19 09:24:27'),
(23, 'type.create', 'web', '2022-10-19 09:24:41', '2022-10-19 09:24:41'),
(24, 'type.edit', 'web', '2022-10-19 09:24:48', '2022-10-19 09:24:48'),
(25, 'type.delete', 'web', '2022-10-19 09:25:21', '2022-10-19 09:25:21'),
(26, 'category.create', 'web', '2022-10-19 09:25:31', '2022-10-19 09:25:31'),
(27, 'category.edit', 'web', '2022-10-19 09:25:41', '2022-10-19 09:25:41'),
(28, 'category.delete', 'web', '2022-10-19 09:25:49', '2022-10-19 09:25:49'),
(29, 'size.create', 'web', '2022-10-19 09:26:02', '2022-10-19 09:26:02'),
(30, 'size.edit', 'web', '2022-10-19 09:26:12', '2022-10-19 09:26:12'),
(31, 'size.delete', 'web', '2022-10-19 09:26:21', '2022-10-19 09:26:21'),
(32, 'discount.create', 'web', '2022-10-19 09:27:11', '2022-10-19 09:27:11'),
(33, 'discount.edit', 'web', '2022-10-19 09:27:18', '2022-10-19 09:27:18'),
(34, 'discount.delete', 'web', '2022-10-19 09:27:26', '2022-10-19 09:27:26'),
(35, 'user.create', 'web', '2022-10-23 05:38:25', '2022-10-23 05:38:25'),
(36, 'user.edit', 'web', '2022-10-23 05:38:36', '2022-10-23 05:38:36'),
(37, 'user.delete', 'web', '2022-10-23 05:38:45', '2022-10-23 05:38:45'),
(42, 'delivery_charge.view', 'web', '2022-12-02 00:44:55', '2022-12-02 00:44:55'),
(43, 'delivery_charge.create', 'web', '2022-12-02 00:45:02', '2022-12-02 00:45:02'),
(44, 'delivery_charge.delete', 'web', '2022-12-02 00:45:08', '2022-12-02 00:45:08'),
(45, 'delivery_charge.edit', 'web', '2022-12-02 00:45:17', '2022-12-02 00:47:08'),
(46, 'purchase.view', 'web', '2022-12-09 01:25:59', '2022-12-09 01:25:59'),
(47, 'category.view', 'web', '2022-12-09 01:27:06', '2022-12-09 01:27:06'),
(48, 'discount.view', 'web', '2022-12-09 01:27:34', '2022-12-09 01:27:34'),
(49, 'image.view', 'web', '2022-12-09 01:28:07', '2022-12-09 01:28:07'),
(50, 'order.view', 'web', '2022-12-09 01:28:19', '2022-12-09 01:28:19'),
(51, 'permission.view', 'web', '2022-12-09 01:28:28', '2022-12-09 01:28:28'),
(52, 'role.view', 'web', '2022-12-09 01:28:49', '2022-12-09 01:28:49'),
(53, 'size.view', 'web', '2022-12-09 01:29:02', '2022-12-09 01:29:02'),
(54, 'user.view', 'web', '2022-12-09 01:29:11', '2022-12-09 01:29:11'),
(55, 'slider.view', 'web', '2022-12-09 01:29:23', '2022-12-09 01:29:23'),
(56, 'type.view', 'web', '2022-12-09 01:29:31', '2022-12-09 01:29:31'),
(57, 'page.create', 'web', '2022-12-09 01:29:44', '2022-12-09 01:29:44'),
(58, 'page.view', 'web', '2022-12-09 01:29:49', '2022-12-09 01:29:49'),
(59, 'page.edit', 'web', '2022-12-09 01:29:56', '2022-12-09 01:29:56'),
(60, 'page.delete', 'web', '2022-12-09 01:30:04', '2022-12-09 01:30:04'),
(61, 'color.view', 'web', '2022-12-09 01:39:50', '2022-12-09 01:39:50'),
(62, 'color.create', 'web', '2022-12-09 01:39:59', '2022-12-09 01:39:59'),
(63, 'color.edit', 'web', '2022-12-09 01:40:07', '2022-12-09 01:40:07'),
(64, 'color.delete', 'web', '2022-12-09 01:40:12', '2022-12-09 01:40:12'),
(65, 'dashboard.access', 'web', '2022-12-09 01:46:46', '2022-12-09 01:46:46'),
(66, 'product.view', 'web', '2022-12-09 13:51:54', '2022-12-09 13:51:54'),
(67, 'coupon_codes.view', 'web', '2022-12-16 16:27:26', '2022-12-16 16:27:26'),
(68, 'coupon_codes.create', 'web', '2022-12-16 16:27:32', '2022-12-16 16:27:32'),
(69, 'coupon_codes.edit', 'web', '2022-12-16 16:27:38', '2022-12-16 16:27:38'),
(70, 'coupon_codes.delete', 'web', '2022-12-16 16:27:43', '2022-12-16 16:27:43'),
(71, 'couriers.view', 'web', '2022-12-17 07:55:45', '2022-12-17 07:55:45'),
(72, 'couriers.create', 'web', '2022-12-17 07:55:51', '2022-12-17 07:55:51'),
(73, 'couriers.edit', 'web', '2022-12-17 07:55:56', '2022-12-17 07:55:56'),
(74, 'couriers.delete', 'web', '2022-12-17 07:56:02', '2022-12-17 07:56:02'),
(75, 'Sumi', 'web', '2023-08-13 22:05:46', '2023-08-13 22:05:46'),
(76, 'Admin', 'web', '2023-08-28 10:46:35', '2023-08-28 10:46:35'),
(78, 'orderStatusUPdate', 'web', '2023-09-07 22:23:34', '2023-09-07 22:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` text COLLATE utf8mb4_unicode_ci,
  `category_id` smallint DEFAULT NULL,
  `sub_category_id` smallint DEFAULT NULL,
  `type_id` tinyint DEFAULT NULL,
  `purchase_price` decimal(8,2) DEFAULT '0.00',
  `sell_price` decimal(12,2) DEFAULT '0.00',
  `regular_price` decimal(12,2) DEFAULT '0.00',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `com_image` text COLLATE utf8mb4_unicode_ci,
  `video_link` text COLLATE utf8mb4_unicode_ci,
  `optional_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `body` longtext COLLATE utf8mb4_unicode_ci,
  `feature` text COLLATE utf8mb4_unicode_ci,
  `color` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_type` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `after_discount` decimal(8,2) DEFAULT '0.00',
  `dicount_amount` decimal(8,2) DEFAULT '0.00',
  `discount` decimal(8,2) DEFAULT '0.00',
  `is_recommended` tinyint(1) DEFAULT NULL,
  `is_free_shipping` tinyint DEFAULT NULL,
  `user_id` mediumint DEFAULT NULL,
  `is_stock` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `type`, `category_id`, `sub_category_id`, `type_id`, `purchase_price`, `sell_price`, `regular_price`, `image`, `com_image`, `video_link`, `optional_image`, `description`, `body`, `feature`, `color`, `discount_type`, `after_discount`, `dicount_amount`, `discount`, `is_recommended`, `is_free_shipping`, `user_id`, `is_stock`, `created_at`, `updated_at`) VALUES
(157, 'Demo Product', '0014154', 'single', 29, 30, 10, 0.00, 1500.00, 0.00, '379067032_648269800748060_3362911056365295081_n1699678238.jpg', NULL, NULL, NULL, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', NULL, 'percentage', 1425.00, 75.00, 5.00, 1, NULL, 1, 0, '2023-11-11 04:50:38', '2023-11-12 04:35:40');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` decimal(4,0) DEFAULT '0',
  `user_id` mediumint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint UNSIGNED NOT NULL,
  `size_id` tinyint NOT NULL,
  `product_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` mediumint NOT NULL,
  `variation_id` mediumint NOT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_stocks`
--

INSERT INTO `product_stocks` (`id`, `product_id`, `variation_id`, `quantity`, `created_at`, `updated_at`) VALUES
(159, 157, 246, 100.00, '2023-11-12 04:32:29', '2023-11-12 04:32:29');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint UNSIGNED NOT NULL,
  `supplier_id` smallint DEFAULT NULL,
  `user_id` smallint DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `ref` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(10,2) DEFAULT NULL,
  `shipping_cost` decimal(10,2) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `supplier_id`, `user_id`, `note`, `ref`, `date`, `status`, `discount_type`, `discount_amount`, `shipping_cost`, `amount`, `created_at`, `updated_at`) VALUES
(67, 1, 1, 'note', 'ref318591', '2023-11-12', 'ordered', NULL, NULL, NULL, 10000000.00, '2023-11-12 04:32:29', '2023-11-12 04:32:29');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_lines`
--

CREATE TABLE `purchase_lines` (
  `id` bigint UNSIGNED NOT NULL,
  `purchase_id` bigint NOT NULL,
  `variation_id` smallint NOT NULL,
  `product_id` mediumint NOT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_lines`
--

INSERT INTO `purchase_lines` (`id`, `purchase_id`, `variation_id`, `product_id`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(165, 67, 246, 157, 100.00, 100000.00, '2023-11-12 04:32:29', '2023-11-12 04:32:29');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_payments`
--

CREATE TABLE `purchase_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `purchase_id` mediumint NOT NULL,
  `date` date DEFAULT NULL,
  `method` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(6, 'admin', 'web', '2022-10-19 11:26:05', '2022-10-19 11:26:05'),
(7, 'user', 'web', '2022-10-20 05:17:08', '2022-10-20 05:17:08'),
(8, 'worker', 'web', '2022-10-20 05:17:20', '2022-10-20 05:17:20'),
(9, 'vendor', 'web', '2022-11-17 00:51:15', '2022-11-17 00:51:15'),
(10, 'Client', 'web', '2023-01-09 13:03:59', '2023-01-09 13:03:59');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(5, 6),
(6, 6),
(7, 6),
(8, 6),
(10, 6),
(11, 6),
(12, 6),
(13, 6),
(14, 6),
(15, 6),
(16, 6),
(17, 6),
(18, 6),
(19, 6),
(20, 6),
(21, 6),
(22, 6),
(23, 6),
(24, 6),
(25, 6),
(26, 6),
(27, 6),
(28, 6),
(29, 6),
(30, 6),
(31, 6),
(32, 6),
(33, 6),
(34, 6),
(35, 6),
(36, 6),
(37, 6),
(42, 6),
(43, 6),
(44, 6),
(45, 6),
(46, 6),
(47, 6),
(48, 6),
(49, 6),
(50, 6),
(51, 6),
(52, 6),
(53, 6),
(54, 6),
(55, 6),
(56, 6),
(57, 6),
(58, 6),
(59, 6),
(60, 6),
(61, 6),
(62, 6),
(63, 6),
(64, 6),
(65, 6),
(66, 6),
(67, 6),
(68, 6),
(69, 6),
(70, 6),
(71, 6),
(72, 6),
(73, 6),
(74, 6),
(7, 7),
(8, 7),
(10, 7),
(1, 8),
(2, 8),
(3, 8),
(7, 8),
(14, 8),
(15, 8),
(50, 8),
(65, 8),
(1, 9),
(2, 9),
(3, 9),
(7, 9),
(8, 9),
(10, 9),
(26, 9),
(27, 9),
(28, 9),
(47, 9),
(65, 9),
(66, 9),
(78, 9),
(1, 10),
(7, 10),
(14, 10),
(26, 10),
(29, 10),
(32, 10),
(42, 10),
(46, 10),
(47, 10),
(48, 10),
(49, 10),
(50, 10),
(51, 10),
(52, 10),
(53, 10),
(54, 10),
(55, 10),
(56, 10),
(57, 10),
(58, 10),
(61, 10),
(65, 10),
(66, 10),
(67, 10),
(71, 10),
(72, 10);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `title`, `is_default`, `created_at`, `updated_at`) VALUES
(3, 'free', NULL, '2023-02-19 17:40:22', '2023-02-19 17:40:22'),
(4, 'M', NULL, '2023-05-27 23:04:22', '2023-05-27 23:04:22'),
(5, 'L', NULL, '2023-05-27 23:04:27', '2023-05-27 23:04:27'),
(6, 'Xl', NULL, '2023-05-27 23:04:32', '2023-05-27 23:04:32'),
(7, '40', NULL, '2023-06-08 17:07:56', '2023-06-08 17:07:56'),
(9, 'xxl', NULL, '2023-07-12 16:36:23', '2023-07-12 16:36:23');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `mobile_image`, `created_at`, `updated_at`, `title`, `link`, `description`) VALUES
(2, 'cRw0OQXavzHw9SGIxMU68UVjXXijENiiSrBgVy2z (1)1696485400.png', 'cRw0OQXavzHw9SGIxMU68UVjXXijENiiSrBgVy2z (1)1696485400.png', '2022-12-18 13:35:49', '2023-10-05 05:56:40', 'Banner', '#', NULL),
(4, '9DbuQH6hceeYixKBSCvgkxThoXUfDaE84v1Ht5We (1)1696485431.png', '9DbuQH6hceeYixKBSCvgkxThoXUfDaE84v1Ht5We (1)1696485431.png', '2023-10-05 05:57:11', '2023-10-05 05:57:11', 'Banner1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_icons`
--

CREATE TABLE `social_icons` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_icons`
--

INSERT INTO `social_icons` (`id`, `title`, `link`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Fb', 'www.Facebook.com', '', '2023-05-27 23:07:49', '2023-05-27 23:09:50');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_top` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `image`, `is_top`, `created_at`, `updated_at`) VALUES
(10, 'GP', 'download - 2023-10-05T113953.3371696484418.jpeg', 1, '2023-10-05 05:40:18', '2023-10-05 05:40:18'),
(11, 'Redx', 'download - 2023-10-05T113957.5081696484429.jpeg', 1, '2023-10-05 05:40:29', '2023-10-05 05:40:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `business_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` text COLLATE utf8mb4_unicode_ci,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `is_seller` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `business_name`, `first_name`, `last_name`, `email`, `username`, `mobile`, `email_verified_at`, `password`, `image`, `remember_token`, `status`, `is_seller`, `created_at`, `updated_at`) VALUES
(1, 'Pallibazarbd', 'Pallibazarbd', 'Admin', 'admin@gmail.com', 'admin', '01600000000', NULL, '$2y$10$FSDb7lGz303tzV7e6Gqkyu3.183yBnb3Lwu5DiQABjLBfz802Zz/i', '1251587932.png', NULL, 1, NULL, '2022-09-20 23:53:37', '2023-10-05 06:08:03'),
(24, 'user', 'user', 'user', 'user@gmail.com', 'user', '01000000000', NULL, '$2y$10$FSDb7lGz303tzV7e6Gqkyu3.183yBnb3Lwu5DiQABjLBfz802Zz/i', NULL, NULL, 1, NULL, '2022-12-18 20:47:35', '2022-12-24 18:59:11');

-- --------------------------------------------------------

--
-- Table structure for table `variations`
--

CREATE TABLE `variations` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint NOT NULL,
  `size_id` tinyint DEFAULT NULL,
  `color_id` tinyint DEFAULT NULL,
  `price` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variations`
--

INSERT INTO `variations` (`id`, `product_id`, `size_id`, `color_id`, `price`, `created_at`, `updated_at`) VALUES
(2, 3, 3, 1, NULL, '2022-12-17 22:46:41', '2023-06-10 23:29:05'),
(3, 4, 3, 1, NULL, '2022-12-17 22:56:48', '2023-06-10 23:29:58'),
(4, 5, 3, 1, NULL, '2022-12-17 23:06:23', '2023-06-10 23:30:09'),
(5, 6, 3, 1, NULL, '2022-12-17 23:15:59', '2023-06-10 23:30:53'),
(6, 7, 3, 1, NULL, '2022-12-17 23:18:07', '2023-06-10 23:31:03'),
(8, 9, 3, 1, NULL, '2022-12-18 12:09:47', '2023-06-10 23:31:21'),
(9, 10, 3, 1, NULL, '2022-12-18 12:13:28', '2023-06-10 23:31:37'),
(10, 11, 3, 1, NULL, '2022-12-18 12:14:37', '2023-06-10 23:31:48'),
(11, 12, 3, 1, NULL, '2022-12-18 12:18:41', '2023-06-10 23:32:50'),
(12, 13, 3, 1, NULL, '2022-12-18 12:19:04', '2023-06-10 23:33:01'),
(13, 14, 3, 1, NULL, '2022-12-18 12:21:17', '2023-06-10 23:33:13'),
(14, 15, 3, 1, NULL, '2022-12-18 12:23:04', '2023-06-10 23:33:26'),
(15, 16, 3, 1, NULL, '2022-12-18 12:25:50', '2023-06-10 23:33:35'),
(16, 17, 3, 1, NULL, '2022-12-18 12:26:13', '2023-06-10 23:33:45'),
(17, 18, 3, 1, NULL, '2022-12-18 12:28:33', '2023-06-10 23:33:57'),
(18, 19, 3, 1, NULL, '2022-12-18 12:28:36', '2023-06-10 23:34:07'),
(23, 24, 3, 1, NULL, '2022-12-18 12:40:07', '2023-06-10 23:35:23'),
(24, 25, 3, 1, NULL, '2022-12-18 12:41:19', '2023-06-10 23:35:39'),
(25, 26, 3, 1, NULL, '2022-12-18 12:44:39', '2023-06-10 23:35:59'),
(27, 28, 3, 1, NULL, '2022-12-18 12:49:33', '2023-06-10 23:36:23'),
(28, 29, 3, 1, NULL, '2022-12-18 12:49:43', '2023-06-10 23:36:43'),
(29, 30, 3, 1, NULL, '2022-12-18 12:52:27', '2023-06-10 23:36:55'),
(30, 31, 3, 1, NULL, '2022-12-18 12:54:27', '2023-06-10 23:37:09'),
(31, 32, 3, 1, NULL, '2022-12-18 12:54:52', '2023-06-10 23:37:32'),
(32, 33, 3, 1, NULL, '2022-12-18 12:58:46', '2023-06-10 23:37:46'),
(33, 34, 3, 1, NULL, '2022-12-18 13:01:02', '2023-06-10 23:38:28'),
(34, 35, 3, 1, NULL, '2022-12-18 13:06:15', '2023-06-10 23:39:09'),
(35, 36, 3, 1, NULL, '2022-12-18 13:09:37', '2023-06-10 23:39:37'),
(36, 37, 3, 1, NULL, '2022-12-18 13:12:40', '2023-06-10 23:39:51'),
(37, 38, 3, 1, NULL, '2022-12-18 13:15:04', '2023-06-10 23:40:04'),
(38, 39, 3, 1, NULL, '2022-12-18 13:16:15', '2023-06-10 23:40:25'),
(39, 40, 3, 1, NULL, '2022-12-18 13:19:53', '2023-06-10 23:44:23'),
(40, 41, 3, 1, NULL, '2022-12-18 13:20:23', '2023-06-10 23:44:39'),
(41, 42, 3, 1, NULL, '2022-12-18 13:23:36', '2023-06-10 23:44:50'),
(42, 43, 3, 1, NULL, '2022-12-18 13:25:01', '2023-06-10 23:45:15'),
(43, 44, 3, 1, NULL, '2022-12-18 13:28:58', '2023-06-10 23:45:28'),
(44, 45, 3, 1, NULL, '2022-12-18 15:28:54', '2023-06-10 23:45:53'),
(50, 50, 3, 1, NULL, '2023-02-08 15:33:41', '2023-06-10 23:46:33'),
(87, 65, 3, 2, 1050, '2023-02-19 21:33:09', '2023-09-13 03:04:59'),
(88, 65, 3, 3, 1060, '2023-02-19 21:33:09', '2023-09-13 03:04:59'),
(89, 65, 3, 5, 1100, '2023-02-19 21:33:09', '2023-09-13 03:04:59'),
(90, 65, 3, 10, 1106, '2023-02-19 21:33:09', '2023-09-13 03:04:59'),
(91, 65, 3, 11, 1120, '2023-02-19 21:33:09', '2023-09-13 03:04:59'),
(92, 65, 3, 12, 1096, '2023-02-19 21:33:09', '2023-09-13 03:04:59'),
(93, 66, 3, 3, 750, '2023-02-19 21:40:50', '2023-09-13 03:03:51'),
(94, 66, 3, 16, 760, '2023-02-19 21:40:50', '2023-09-13 03:03:51'),
(95, 66, 3, 5, 690, '2023-02-19 21:40:50', '2023-09-13 03:03:51'),
(96, 66, 3, 11, 830, '2023-02-19 21:40:50', '2023-09-13 03:03:51'),
(97, 67, 3, 2, NULL, '2023-02-19 22:53:00', '2023-02-19 22:53:00'),
(98, 67, 3, 5, NULL, '2023-02-19 22:53:00', '2023-02-19 22:53:00'),
(99, 67, 3, 3, NULL, '2023-02-19 22:53:00', '2023-02-19 22:53:00'),
(100, 67, 3, 17, NULL, '2023-02-19 22:53:00', '2023-02-19 22:53:19'),
(101, 68, 7, 2, NULL, '2023-02-19 22:57:19', '2023-07-09 19:43:14'),
(102, 68, 6, 16, NULL, '2023-02-19 22:57:19', '2023-07-09 19:43:14'),
(103, 68, 5, 3, NULL, '2023-02-19 22:57:19', '2023-07-09 19:43:14'),
(104, 68, 4, 18, NULL, '2023-02-19 22:57:19', '2023-07-09 19:43:14'),
(105, 69, 3, 16, NULL, '2023-02-19 23:00:55', '2023-02-19 23:00:55'),
(106, 69, 3, 3, NULL, '2023-02-19 23:00:55', '2023-02-19 23:00:55'),
(107, 69, 3, 12, NULL, '2023-02-19 23:00:55', '2023-02-19 23:00:55'),
(108, 70, 3, 3, NULL, '2023-02-19 23:06:47', '2023-02-19 23:06:47'),
(109, 70, 3, 9, NULL, '2023-02-19 23:06:47', '2023-02-19 23:06:47'),
(110, 70, 3, 19, NULL, '2023-02-19 23:06:47', '2023-02-19 23:07:25'),
(111, 71, 3, 2, NULL, '2023-02-19 23:10:08', '2023-02-19 23:10:08'),
(112, 71, 3, 5, NULL, '2023-02-19 23:10:08', '2023-02-19 23:10:08'),
(113, 71, 3, 4, NULL, '2023-02-19 23:10:08', '2023-02-19 23:10:08'),
(114, 71, 3, 3, NULL, '2023-02-19 23:10:08', '2023-02-19 23:10:08'),
(115, 71, 3, 6, NULL, '2023-02-19 23:10:08', '2023-02-19 23:10:08'),
(116, 72, 3, 3, NULL, '2023-02-19 23:16:47', '2023-02-19 23:16:47'),
(117, 72, 3, 5, NULL, '2023-02-19 23:16:47', '2023-02-19 23:16:47'),
(118, 72, 3, 12, NULL, '2023-02-19 23:16:47', '2023-02-19 23:16:47'),
(119, 72, 3, 20, NULL, '2023-02-19 23:16:47', '2023-02-19 23:16:57'),
(120, 73, 3, 9, NULL, '2023-02-19 23:20:35', '2023-02-19 23:20:35'),
(121, 73, 3, 5, NULL, '2023-02-19 23:20:35', '2023-02-19 23:20:35'),
(122, 73, 3, 3, NULL, '2023-02-19 23:20:35', '2023-02-19 23:20:35'),
(123, 73, 3, 10, NULL, '2023-02-19 23:20:35', '2023-02-19 23:20:35'),
(124, 73, 3, 20, NULL, '2023-02-19 23:20:35', '2023-02-19 23:20:35'),
(130, 75, 3, 19, 1000, '2023-02-19 23:32:16', '2023-10-05 12:46:46'),
(131, 75, 3, 17, 900, '2023-02-19 23:32:16', '2023-10-05 12:46:46'),
(132, 76, 3, 3, NULL, '2023-02-19 23:34:57', '2023-02-19 23:34:57'),
(133, 77, 3, 1, NULL, '2023-02-27 17:25:55', '2023-02-27 17:25:55'),
(134, 78, 3, 1, NULL, '2023-02-27 17:49:12', '2023-02-27 17:49:12'),
(135, 79, 3, 1, NULL, '2023-02-27 18:09:21', '2023-02-27 18:09:21'),
(136, 80, 3, 1, NULL, '2023-02-27 18:27:28', '2023-02-27 18:27:28'),
(137, 81, 3, 1, NULL, '2023-02-28 02:06:31', '2023-02-28 02:06:31'),
(138, 82, 3, 1, NULL, '2023-02-28 11:36:51', '2023-02-28 11:36:51'),
(139, 83, 3, 1, NULL, '2023-02-28 11:49:46', '2023-02-28 11:49:46'),
(140, 84, 3, 1, NULL, '2023-02-28 11:58:14', '2023-02-28 11:58:14'),
(141, 85, 3, 1, NULL, '2023-02-28 12:14:18', '2023-02-28 12:14:18'),
(142, 86, 3, 1, NULL, '2023-02-28 12:25:44', '2023-02-28 12:25:44'),
(143, 87, 3, 1, NULL, '2023-02-28 12:30:28', '2023-02-28 12:30:28'),
(144, 88, 3, 1, NULL, '2023-02-28 12:36:01', '2023-02-28 12:36:01'),
(145, 89, 3, 1, NULL, '2023-02-28 12:44:53', '2023-02-28 12:44:53'),
(146, 90, 3, 1, NULL, '2023-02-28 12:57:47', '2023-02-28 12:57:47'),
(246, 157, 3, 1, 1500, '2023-11-11 04:50:38', '2023-11-11 04:50:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bangla_text`
--
ALTER TABLE `bangla_text`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blocked_ips`
--
ALTER TABLE `blocked_ips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `combos`
--
ALTER TABLE `combos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `combo_products`
--
ALTER TABLE `combo_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_codes`
--
ALTER TABLE `coupon_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `couriers`
--
ALTER TABLE `couriers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_charges`
--
ALTER TABLE `delivery_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_section_images`
--
ALTER TABLE `home_section_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informations`
--
ALTER TABLE `informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landing_pages`
--
ALTER TABLE `landing_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landing_page_sliders`
--
ALTER TABLE `landing_page_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_payments`
--
ALTER TABLE `order_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_lines`
--
ALTER TABLE `purchase_lines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_payments`
--
ALTER TABLE `purchase_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_icons`
--
ALTER TABLE `social_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `variations`
--
ALTER TABLE `variations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bangla_text`
--
ALTER TABLE `bangla_text`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blocked_ips`
--
ALTER TABLE `blocked_ips`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `combos`
--
ALTER TABLE `combos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `combo_products`
--
ALTER TABLE `combo_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupon_codes`
--
ALTER TABLE `coupon_codes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `couriers`
--
ALTER TABLE `couriers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `delivery_charges`
--
ALTER TABLE `delivery_charges`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_section_images`
--
ALTER TABLE `home_section_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `informations`
--
ALTER TABLE `informations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `landing_pages`
--
ALTER TABLE `landing_pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `landing_page_sliders`
--
ALTER TABLE `landing_page_sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1260;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1305;

--
-- AUTO_INCREMENT for table `order_payments`
--
ALTER TABLE `order_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `purchase_lines`
--
ALTER TABLE `purchase_lines`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `purchase_payments`
--
ALTER TABLE `purchase_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `social_icons`
--
ALTER TABLE `social_icons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1111;

--
-- AUTO_INCREMENT for table `variations`
--
ALTER TABLE `variations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
