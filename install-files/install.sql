-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 19, 2020 at 02:33 PM
-- Server version: 5.5.64-MariaDB
-- PHP Version: 7.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_smm3`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_providers`
--

CREATE TABLE `api_providers` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `balance` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `currency` varchar(50) NOT NULL,
  `type_parameter` enum('key','api_token') DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

CREATE TABLE `configs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `configs`
--

INSERT INTO `configs` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'app_title', 'Your Site', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(2, 'meta_description', 'Meta App Description Boost', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(3, 'meta_keywords', 'SMM Panels, SMM Panel, SMM Reseller Panel, Cheapest SMM Panel', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(4, 'website_logo', 'logo.png', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(5, 'website_favicon', 'favicon.ico', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(6, 'javascript_embed_header', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(7, 'javascript_embed_footer', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(8, 'facebook_link', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(9, 'twitter_link', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(10, 'instagram_link', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(11, 'youtube_link', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(12, 'currency_code', 'INR', '2020-04-16 08:05:59', '2020-04-16 22:10:23'),
(13, 'currency_decimal', '2', '2020-04-16 08:05:59', '2020-04-16 22:10:23'),
(14, 'currency_symbol', '₹', '2020-04-16 08:05:59', '2020-04-16 22:10:23'),
(15, 'currency_decimal_separator', '.', '2020-04-16 08:05:59', '2020-04-16 22:10:23'),
(16, 'currency_thousand_separator', ',', '2020-04-16 08:05:59', '2020-04-16 22:10:23'),
(17, 'auto_currency_converter', 'on', '2020-04-16 08:05:59', '2020-04-16 22:10:23'),
(18, 'terms_content', 'Lorem Lorem', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(19, 'policy_content', 'Lorem Lorem', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(20, 'registration_page', 'on', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(21, 'google_recaptcha', 'off', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(22, 'recaptcha_public_key', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(23, 'recaptcha_private_key', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(24, 'email', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(25, 'protocol', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(26, 'smtp_encryption', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(27, 'smtp_host', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(28, 'smtp_port', NULL, '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(29, 'smtp_username', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(30, 'smtp_password', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'link_recover_password_subject', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(2, 'link_recover_password_content', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(3, 'verification_account_subject', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(4, 'verification_account_content', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(5, 'welcome_user_subject', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(6, 'welcome_user_content', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(7, 'new_user_to_admin_subject', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(8, 'new_user_to_admin_content', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(9, 'notification_ticket_reply_subject', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(10, 'notification_ticket_reply_content', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(11, 'payments_notification_subject', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(12, 'payments_notification_content', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59');

-- --------------------------------------------------------

--
-- Table structure for table `lang`
--

CREATE TABLE `lang` (
  `id` int(11) NOT NULL,
  `ids` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `lang_code` varchar(50) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lang_list`
--

CREATE TABLE `lang_list` (
  `id` int(11) NOT NULL,
  `ids` varchar(255) NOT NULL,
  `code` varchar(50) NOT NULL,
  `country_code` varchar(50) NOT NULL,
  `is_default` enum('0','1') NOT NULL,
  `status` enum('0','1') NOT NULL,
  `created` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `action` varchar(255) NOT NULL,
  `value` text,
  `id_error` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `type` enum('result_services','general') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'general',
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4,
  `desc_disables` text,
  `desc_updates` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'email_verification_new_account', '0', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(2, 'new_user_welcome', '0', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(3, 'new_user_notification', '0', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(4, 'notification_ticket', '0', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(5, 'payment_notification', '0', '2020-04-16 08:05:59', '2020-04-16 08:05:59');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` enum('manual','api') NOT NULL DEFAULT 'manual',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `service_id` int(11) NOT NULL DEFAULT '0',
  `service_type` varchar(50) DEFAULT 'default',
  `api_provider_id` int(11) NOT NULL DEFAULT '0',
  `api_service_id` int(11) NOT NULL DEFAULT '0',
  `api_order_id` int(11) NOT NULL DEFAULT '0',
  `order_response_id_sub` int(11) DEFAULT '0',
  `order_response_posts_sub` int(11) DEFAULT '0',
  `min_sub` int(11) DEFAULT '0',
  `max_sub` int(11) DEFAULT '0',
  `posts_sub` int(11) DEFAULT '0',
  `delay_sub` int(11) DEFAULT '0',
  `expiry_sub` text NOT NULL,
  `status_sub` enum('Active','Paused','Completed','Expired','Canceled') DEFAULT 'Active',
  `link` varchar(191) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `usernames` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `username` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hashtags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hashtag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `media` text,
  `comments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `poll_answer_number` varchar(255) DEFAULT NULL,
  `seo_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `charge` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `status` enum('completed','processing','inprogress','pending','partial','refunded','canceled') DEFAULT 'pending',
  `start_counter` int(11) NOT NULL DEFAULT '0',
  `remains` int(11) NOT NULL DEFAULT '0',
  `is_drip_feed` int(1) DEFAULT '0',
  `runs` int(11) DEFAULT '0',
  `interval` int(2) DEFAULT '0',
  `dripfeed_quantity` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payments_integrations`
--

CREATE TABLE `payments_integrations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payments_integrations`
--

INSERT INTO `payments_integrations` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'pagseguro_environment', 'Sandbox', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(2, 'pagseguro_name', 'PagSeguro', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(3, 'pagseguro_min_payment', '2', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(4, 'pagseguro_max_payment', '0', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(5, 'pagseguro_token', '', '2020-04-16 08:05:59', '2020-04-16 22:10:23'),
(6, 'pagseguro_email', '', '2020-04-16 08:05:59', '2020-04-16 22:10:23'),
(7, 'pagseguro_status', 'off', '2020-04-16 08:05:59', '2020-04-16 22:10:23'),
(8, 'mercadopago_environment', 'Sandbox', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(9, 'mercadopago_name', 'MercadoPago', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(10, 'mercadopago_min_payment', '2', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(11, 'mercadopago_max_payment', '0', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(12, 'mercadopago_access_token', '', '2020-04-16 08:05:59', '2020-04-16 22:10:23'),
(13, 'mercadopago_status', 'off', '2020-04-16 08:05:59', '2020-04-16 22:10:23'),
(14, 'paypal_environment', 'Sandbox', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(15, 'paypal_name', 'PayPal', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(16, 'paypal_min_payment', '2', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(17, 'paypal_max_payment', '0', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(18, 'paypal_client_id', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(19, 'paypal_client_secret', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(20, 'paypal_status', 'off', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(21, 'stripe_name', 'Stripe', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(22, 'stripe_min_payment', '2', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(23, 'stripe_max_payment', '0', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(24, 'stripe_secret_key', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(25, 'stripe_publishable_key', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(26, 'stripe_status', 'off', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(27, '2checkout_environment', 'Sandbox', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(28, '2checkout_name', '2Checkout', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(29, '2checkout_min_payment', '2', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(30, '2checkout_max_payment', '0', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(31, '2checkout_publishable_key', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(32, '2checkout_private_key', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(33, '2checkout_seller_id', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(34, '2checkout_status', 'off', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(35, 'coinpayments_environment', 'Sandbox', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(36, 'coinpayments_name', 'CoinPayments', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(37, 'coinpayments_min_payment', '2', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(38, 'coinpayments_max_payment', '0', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(39, 'coinpayments_public_key', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(40, 'coinpayments_private_key', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(41, 'coinpayments_status', 'off', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(42, 'skrill_name', 'Skrill', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(43, 'skrill_min_payment', '2', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(44, 'skrill_max_payment', '0', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(45, 'skrill_email', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(46, 'skrill_status', 'off', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(47, 'payumoney_environment', 'Sandbox', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(48, 'payumoney_name', 'PayUmoney', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(49, 'payumoney_merchant_key', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(50, 'payumoney_merchant_salt', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(51, 'payumoney_min_payment', '2.00', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(52, 'payumoney_max_payment', '0.00', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(53, 'payumoney_status', 'off', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(54, 'paytm_environment', 'Sandbox', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(55, 'paytm_name', 'PayTM', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(56, 'paytm_merchant_key', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(57, 'paytm_merchant_mid', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(58, 'paytm_merchant_website', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(59, 'paytm_min_payment', '2.00', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(60, 'paytm_max_payment', '0.00', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(61, 'paytm_status', 'off', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(62, 'instamojo_environment', 'Sandbox', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(63, 'instamojo_name', 'Instamojo', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(64, 'instamojo_api_key', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(65, 'instamojo_auth_token', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(66, 'instamojo_min_payment', '9.00', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(67, 'instamojo_max_payment', '0.00', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(68, 'instamojo_status', 'off', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(69, 'mollie_name', 'Mollie', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(70, 'mollie_api_key', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(71, 'mollie_min_payment', '2.00', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(72, 'mollie_max_payment', '0.00', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(73, 'mollie_status', 'off', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(74, 'razorpay_name', 'RazorPay', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(75, 'razorpay_key_id', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(76, 'razorpay_key_secret', '', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(77, 'razorpay_min_payment', '2.00', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(78, 'razorpay_max_payment', '0.00', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(79, 'razorpay_status', 'off', '2020-04-16 08:05:59', '2020-04-16 08:05:59'),
(80, 'manual_status', 'off', '2020-04-16 08:05:59', '2020-04-16 08:05:59');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_code`
--

CREATE TABLE `purchase_code` (
  `id` int(11) NOT NULL,
  `purchase_code` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchase_code`
--

INSERT INTO `purchase_code` (`id`, `purchase_code`, `version`, `created_at`, `updated_at`) VALUES
(1, '9d6739cd-bb46-46e5-bcc0-dfecdeb9a143', '1.0.0.0', '2020-04-16 16:35:59', '2020-04-16 16:35:59');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `description` text CHARACTER SET utf8mb4,
  `price` decimal(11,2) NOT NULL DEFAULT '0.00',
  `min` int(50) DEFAULT NULL,
  `max` int(50) DEFAULT NULL,
  `add_type` enum('manual','api') DEFAULT 'manual',
  `type` varchar(100) DEFAULT 'default',
  `api_service_id` int(11) DEFAULT NULL,
  `api_provider_id` int(11) DEFAULT NULL,
  `dripfeed` int(1) DEFAULT '0',
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL,
  `status` enum('pending','answered','closed') NOT NULL DEFAULT 'pending',
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_or_order_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_messages`
--

CREATE TABLE `ticket_messages` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_logs`
--

CREATE TABLE `transaction_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `status` enum('paid','processing','pending','refunded','canceled','in_dispute') DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `username` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `timezone` text,
  `balance` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `role` enum('ADMIN','SUPPORT','USER','BANNED') NOT NULL DEFAULT 'USER',
  `api_key` varchar(255) NOT NULL,
  `activation_token` varchar(255) NOT NULL,
  `custom_rate` int(11) NOT NULL DEFAULT '0',
  `status` enum('Inactive','Active') NOT NULL DEFAULT 'Inactive',
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `name`, `username`, `email`, `password`, `timezone`, `balance`, `role`, `api_key`, `activation_token`, `custom_rate`, `status`, `created_at`) VALUES
(1, 'c62fa36f-873c-c62f-2d5f-22be73313d94', 'Social-Stardom', 'socialstardom', 'socialstardom0@gmail.com', '$2y$10$YNWWpirRX.8MCA6GfZKWLO9eCOsKWsqlu6aflCo/3QENxv2Odx2K.', 'Asia/Kolkata', '0.0000', 'ADMIN', 'n7e9a11AwDDXASvErr9Mjh0118IO1124', '0', 0, 'Active', '2020-04-16 16:35:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_providers`
--
ALTER TABLE `api_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lang`
--
ALTER TABLE `lang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lang_list`
--
ALTER TABLE `lang_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments_integrations`
--
ALTER TABLE `payments_integrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_code`
--
ALTER TABLE `purchase_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_logs`
--
ALTER TABLE `transaction_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_providers`
--
ALTER TABLE `api_providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `lang`
--
ALTER TABLE `lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lang_list`
--
ALTER TABLE `lang_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments_integrations`
--
ALTER TABLE `payments_integrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `purchase_code`
--
ALTER TABLE `purchase_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_logs`
--
ALTER TABLE `transaction_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
