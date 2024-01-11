-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2023 at 11:59 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gameshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sell_post_id` bigint(20) UNSIGNED NOT NULL,
  `activityable_id` text DEFAULT NULL,
  `activityable_type` text DEFAULT NULL,
  `title` varchar(191) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `admin_access` longtext DEFAULT NULL,
  `last_login` varchar(50) DEFAULT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `email`, `password`, `image`, `phone`, `address`, `admin_access`, `last_login`, `last_seen`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '$2y$10$.sO9kLAurqjCYnUatIQeDuwxOqPC7KWPKEIOy5rYf8sGMm0zkLdZm', '627a4928ec4a51652181288.jpg', '+5641 455646', 'TX, USA', '[\"admin.dashboard\",\"admin.staff\",\"admin.storeStaff\",\"admin.updateStaff\",\"admin.identify-form\",\"admin.identify-form.store\",\"admin.identify-form.store\",\"admin.scheduleManage\",\"admin.planList\",\"admin.store.schedule\",\"admin.update.schedule\",\"admin.planCreate\",\"admin.planEdit\",\"admin.plans-active\",\"admin.plans-inactive\",\"admin.referral-commission\",\"admin.referral-commission.store\",\"admin.transaction\",\"admin.transaction.search\",\"admin.investments\",\"admin.investments.search\",\"admin.commissions\",\"admin.commissions.search\",\"admin.users\",\"admin.users.search\",\"admin.email-send\",\"admin.user.transaction\",\"admin.user.fundLog\",\"admin.user.withdrawal\",\"admin.user.commissionLog\",\"admin.user.referralMember\",\"admin.user.plan-purchaseLog\",\"admin.user.userKycHistory\",\"admin.kyc.users.pending\",\"admin.kyc.users\",\"admin.user-edit\",\"admin.user-multiple-active\",\"admin.user-multiple-inactive\",\"admin.send-email\",\"admin.user.userKycHistory\",\"admin.user-balance-update\",\"admin.payment.methods\",\"admin.deposit.manual.index\",\"admin.deposit.manual.create\",\"admin.edit.payment.methods\",\"admin.deposit.manual.edit\",\"admin.payment.pending\",\"admin.payment.log\",\"admin.payment.search\",\"admin.payment.action\",\"admin.payout-method\",\"admin.payout-log\",\"admin.payout-request\",\"admin.payout-log.search\",\"admin.payout-method.create\",\"admin.payout-method.edit\",\"admin.payout-action\",\"admin.ticket\",\"admin.ticket.view\",\"admin.ticket.reply\",\"admin.ticket.delete\",\"admin.subscriber.index\",\"admin.subscriber.sendEmail\",\"admin.subscriber.remove\",\"admin.basic-controls\",\"admin.email-controls\",\"admin.email-template.show\",\"admin.sms.config\",\"admin.sms-template\",\"admin.notify-config\",\"admin.notify-template.show\",\"admin.notify-template.edit\",\"admin.basic-controls.update\",\"admin.email-controls.update\",\"admin.email-template.edit\",\"admin.sms-template.edit\",\"admin.notify-config.update\",\"admin.notify-template.update\",\"admin.language.index\",\"admin.language.create\",\"admin.language.edit\",\"admin.language.keywordEdit\",\"admin.language.delete\",\"admin.manage.theme\",\"admin.logo-seo\",\"admin.breadcrumb\",\"admin.template.show\",\"admin.content.index\",\"admin.content.create\",\"admin.logoUpdate\",\"admin.seoUpdate\",\"admin.breadcrumbUpdate\",\"admin.content.show\",\"admin.content.delete\"]', '2023-05-06 06:40:47', '2023-05-06 03:41:17', 1, 'u1IgqCk8KVMk2gAE8PaNJUSnEsmMxDwR8PeeWOPW3r2o5gx16av4VoRiBcfd', '2021-12-17 10:00:01', '2023-05-06 03:41:17');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `discount_status` tinyint(1) NOT NULL DEFAULT 0,
  `appStoreLink` varchar(255) NOT NULL,
  `playStoreLink` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `thumb` varchar(94) DEFAULT NULL,
  `instruction_image` varchar(191) DEFAULT NULL,
  `form_field` text DEFAULT NULL,
  `discount_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=fixed,1=percentage',
  `discount_amount` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category_details`
--

CREATE TABLE `category_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `instruction` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category_services`
--

CREATE TABLE `category_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(11,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `configures`
--

CREATE TABLE `configures` (
  `id` int(11) UNSIGNED NOT NULL,
  `site_title` varchar(20) DEFAULT NULL,
  `base_color` varchar(10) NOT NULL DEFAULT '',
  `base_secondary` varchar(30) DEFAULT NULL,
  `time_zone` varchar(30) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `currency_symbol` varchar(20) DEFAULT NULL,
  `theme` varchar(60) DEFAULT NULL,
  `fraction_number` int(11) DEFAULT NULL,
  `paginate` int(11) DEFAULT NULL,
  `email_verification` tinyint(1) NOT NULL DEFAULT 0,
  `email_notification` tinyint(1) NOT NULL DEFAULT 0,
  `sms_verification` tinyint(1) NOT NULL DEFAULT 0,
  `sms_notification` tinyint(1) NOT NULL DEFAULT 0,
  `sender_email` varchar(60) DEFAULT NULL,
  `sender_email_name` varchar(91) DEFAULT NULL,
  `email_description` longtext DEFAULT NULL,
  `email_configuration` text DEFAULT NULL,
  `push_notification` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `error_log` tinyint(1) NOT NULL,
  `strong_password` tinyint(1) NOT NULL,
  `registration` tinyint(1) NOT NULL,
  `address_verification` tinyint(1) NOT NULL,
  `identity_verification` tinyint(1) NOT NULL,
  `maintenance` tinyint(1) NOT NULL,
  `is_active_cron_notification` tinyint(1) NOT NULL DEFAULT 0,
  `top_up` tinyint(1) NOT NULL DEFAULT 0,
  `voucher` tinyint(1) NOT NULL DEFAULT 0,
  `gift_card` tinyint(1) NOT NULL DEFAULT 0,
  `sell_post` tinyint(1) NOT NULL DEFAULT 0,
  `payment_expired` int(11) DEFAULT NULL COMMENT 'Payment lock a few Minutes for someone ',
  `payment_released` int(11) NOT NULL COMMENT 'payment will released after few days for someone ',
  `tawk_id` varchar(191) DEFAULT NULL,
  `tawk_status` tinyint(1) NOT NULL DEFAULT 0,
  `fb_messenger_status` tinyint(1) NOT NULL DEFAULT 0,
  `fb_app_id` varchar(191) DEFAULT NULL,
  `fb_page_id` varchar(191) DEFAULT NULL,
  `reCaptcha_status_login` tinyint(1) NOT NULL DEFAULT 0,
  `reCaptcha_status_registration` tinyint(1) NOT NULL DEFAULT 0,
  `MEASUREMENT_ID` varchar(255) DEFAULT NULL,
  `analytic_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `configures`
--

INSERT INTO `configures` (`id`, `site_title`, `base_color`, `base_secondary`, `time_zone`, `currency`, `currency_symbol`, `theme`, `fraction_number`, `paginate`, `email_verification`, `email_notification`, `sms_verification`, `sms_notification`, `sender_email`, `sender_email_name`, `email_description`, `email_configuration`, `push_notification`, `created_at`, `updated_at`, `error_log`, `strong_password`, `registration`, `address_verification`, `identity_verification`, `maintenance`, `is_active_cron_notification`, `top_up`, `voucher`, `gift_card`, `sell_post`, `payment_expired`, `payment_released`, `tawk_id`, `tawk_status`, `fb_messenger_status`, `fb_app_id`, `fb_page_id`, `reCaptcha_status_login`, `reCaptcha_status_registration`, `MEASUREMENT_ID`, `analytic_status`) VALUES
(1, 'Gamers Arena', '#ff5400', '#ff7843', 'UTC', 'USD', '$', 'deepblue', 2, 20, 0, 0, 0, 0, 'support@domain.com', 'Gamers Arena', '<p>Hello [[name]],</p><p>\r\n\r\n[[message]]</p>', '{\"name\":\"smtp\",\"smtp_host\":\"smtp.mailtrap.io\",\"smtp_port\":\"465\",\"smtp_encryption\":\"ssl\",\"smtp_username\":\"b75b1a5bfa5d58\",\"smtp_password\":\"f89fbe0495a7fc\"}', 1, NULL, '2022-08-20 07:44:14', 0, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 15, 7, '58dd135ef7bbaa72709c3470/default', 1, 0, '1826868814245944', '1826868814245944', 0, 0, 'G-TFQZ8YZ468', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `name`, `created_at`, `updated_at`) VALUES
(84, 'whats-clients-say', '2022-06-19 03:44:32', '2022-06-19 03:44:32'),
(85, 'blog', '2022-06-19 04:15:46', '2022-06-19 04:15:46'),
(86, 'faq', '2022-06-19 04:52:08', '2022-06-19 04:52:08'),
(87, 'faq', '2022-06-19 04:52:43', '2022-06-19 04:52:43'),
(88, 'why-chose-us', '2022-06-19 05:37:05', '2022-06-19 05:37:05'),
(89, 'why-chose-us', '2022-06-19 05:37:37', '2022-06-19 05:37:37'),
(90, 'why-choose-us', '2022-06-19 05:49:07', '2022-06-19 05:49:07'),
(102, 'slider', '2022-06-20 04:57:00', '2022-06-20 04:57:00'),
(103, 'slider', '2022-06-20 05:15:51', '2022-06-20 05:15:51'),
(104, 'blog', '2022-07-04 10:11:53', '2022-07-04 10:11:53'),
(105, 'support', '2022-07-04 11:22:47', '2022-07-04 11:22:47'),
(106, 'support', '2022-07-04 11:23:29', '2022-07-04 11:23:29'),
(107, 'whats-clients-say', '2022-07-04 23:48:38', '2022-07-04 23:48:38'),
(108, 'blog', '2022-07-05 00:09:57', '2022-07-05 00:09:57'),
(110, 'statistics', '2022-08-09 02:16:36', '2022-08-09 02:16:36'),
(111, 'statistics', '2022-08-09 02:17:18', '2022-08-09 02:17:18'),
(112, 'statistics', '2022-08-09 02:17:37', '2022-08-09 02:17:37'),
(113, 'statistics', '2022-08-09 02:17:50', '2022-08-09 02:17:50'),
(114, 'social', '2022-08-17 05:27:54', '2022-08-17 05:27:54'),
(115, 'social', '2022-08-17 05:28:29', '2022-08-17 05:28:29'),
(116, 'social', '2022-08-17 05:28:45', '2022-08-17 05:28:45'),
(117, 'social', '2022-08-17 05:32:49', '2022-08-17 05:32:49');

-- --------------------------------------------------------

--
-- Table structure for table `content_details`
--

CREATE TABLE `content_details` (
  `id` int(11) UNSIGNED NOT NULL,
  `content_id` int(11) UNSIGNED DEFAULT NULL,
  `language_id` int(11) UNSIGNED DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content_details`
--

INSERT INTO `content_details` (`id`, `content_id`, `language_id`, `description`, `created_at`, `updated_at`) VALUES
(226, 84, 1, '{\"name\":\"Mark John\",\"designation\":\"Software Engineer\",\"description\":\"<p><span><\\/span><\\/p><p><span><b>I\\u2019m a Gamer by Hobby, Engineer by Profession. I have always dreamed to do an online gaming business but didn\\u2019t find any ready-made solutions for my online shop before I found Gamers Arena. I found everything easy navigation, self-customizations and many more. My dream comes true finally!<\\/b><\\/span><\\/p>\"}', '2022-06-19 03:44:32', '2023-01-31 11:37:33'),
(227, 85, 1, '{\"title\":\"PLAYSTATION\'S SPIDER-MAN IS COMING TO PC\",\"date_time\":\"19 JUNE 2022\",\"description\":\"<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit volupt atem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia sit voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet sedit consectetur, adipisci velit, sed quia doloremque laudantium.<br \\/><\\/p>\"}', '2022-06-19 04:15:46', '2022-07-04 09:56:57'),
(228, 86, 1, '{\"title\":\"Can I Have Full Control After Purchase?\",\"description\":\"<p><span><b>Yes, You Will Have Full Control over Gamers Arena. You Can Fully Change or Customise This App.<\\/b><\\/span><\\/p><p><span><br \\/><\\/span><\\/p>\"}', '2022-06-19 04:52:08', '2023-01-31 05:08:54'),
(229, 87, 1, '{\"title\":\"How Can I Get Support From You?\",\"description\":\"<p><span><\\/span><\\/p><p><span>You Can Simply Contact Us Through Our Email or Directly Call To Our Support Number.<\\/span><\\/p>\"}', '2022-06-19 04:52:43', '2023-01-31 06:23:44'),
(232, 90, 1, '{\"title\":\"Easy and Fast\",\"information\":\"<p><span><\\/span><\\/p><p><span><b>Gamers Arena makes a massive impression on gamers and the gaming business world. The best possible after-sell support makes the app more reliable for business owners. Fast and easy-to-use navigation provides guaranteed profit.<\\/b><\\/span><\\/p>\"}', '2022-06-19 05:49:07', '2023-01-31 04:34:07'),
(239, 102, 1, '{\"title\":\"GAMESHOP UNIVERSE\",\"sub_title\":\"Enjoy The Game\",\"button_name\":\"SHOP NOW\"}', '2022-06-20 04:57:00', '2022-06-20 04:57:00'),
(240, 103, 1, '{\"title\":\"GAMESHOP UNIVERSE\",\"sub_title\":\"Enjoy The Game\",\"button_name\":\"SHOP NOW\"}', '2022-06-20 05:15:51', '2022-06-20 05:15:51'),
(241, 104, 1, '{\"title\":\"Spend &amp; Redeem Free Razer Gold Bonus Pin\",\"date_time\":\"10 july 2019\",\"description\":\"<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore is dolore magna aliqua Ut enim ad minim veniam quis nostrud exercitation ullamco. Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliq Ut enim ad minim veniam quis nostrud\\u00a0Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliqu ip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.<br \\/><\\/p>\"}', '2022-07-04 10:11:53', '2022-07-05 00:14:41'),
(242, 105, 1, '{\"title\":\"Terms &amp; Conditions\",\"description\":\"<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.<\\/p><p><br \\/><\\/p><p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose injected humour and the like.<\\/p>\"}', '2022-07-04 11:22:47', '2022-08-17 06:01:17'),
(243, 106, 1, '{\"title\":\"Privacy Policy\",\"description\":\"<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.<br \\/><\\/p>\"}', '2022-07-04 11:23:29', '2022-07-04 11:23:29'),
(244, 107, 1, '{\"name\":\"Steve Smith\",\"designation\":\"Social Worker\",\"description\":\"<p><span><\\/span><\\/p><p><span>When I bought Gamers Arena, that time I already have a big number of my own customers and followers on social media. When I just launched my first-ever digital gaming online mar<\\/span><span>ket I can\'t express the feeling that every customer loved my site and my sale wasn\\u2019t this high ever before. I have never looked back again.<\\/span><\\/p>\"}', '2022-07-04 23:48:38', '2023-01-31 11:54:02'),
(245, 108, 1, '{\"title\":\"9 Games you should look out for this summer sale\",\"date_time\":\"14 April 2022\",\"description\":\"<p><span>Don\\u2019t let the reviewers scare you with it being a hard game to play, yes it is a challenging game if you\\u2019ve never played any game of the Dark Souls series. Still, like all of them, it is incredibly satisfying to defeat a tough enemy finally. There\\u2019s also the inclusion of progressing the story with your friends via multiplayer, and the content there is much content to explore which does not include the upcoming content by From Software.<\\/span><\\/p><p><span><br \\/><\\/span><\\/p><p><span>The expansion for MHR will add Master Rank quest content with even more monsters and weapons to explore. While the expansion can be costly, the base game will not only come at a discount, but Capcom doesn\\u2019t disappoint when they demand you to pay full price for their DLC, definitely worth the experience.<\\/span><span><br \\/><\\/span><br \\/><\\/p>\"}', '2022-07-05 00:09:57', '2022-07-05 00:09:57'),
(247, 110, 1, '{\"title\":\"TWITCH STREAMS\",\"number\":\"145\"}', '2022-08-09 02:16:36', '2022-08-09 02:16:36'),
(248, 111, 1, '{\"title\":\"TOTAL GAMES\",\"number\":\"75\"}', '2022-08-09 02:17:18', '2022-08-09 02:17:18'),
(249, 112, 1, '{\"title\":\"YOUTUBE STREAMS\",\"number\":\"273\"}', '2022-08-09 02:17:37', '2022-08-09 02:17:37'),
(250, 113, 1, '{\"title\":\"PRO TEAM\",\"number\":\"53\"}', '2022-08-09 02:17:50', '2022-08-09 02:17:50'),
(251, 114, 1, '{\"name\":\"Facebook\"}', '2022-08-17 05:27:54', '2022-08-17 05:27:54'),
(252, 115, 1, '{\"name\":\"Instagram\"}', '2022-08-17 05:28:29', '2022-08-17 05:28:29'),
(253, 116, 1, '{\"name\":\"Youtube\"}', '2022-08-17 05:28:45', '2022-08-17 05:28:45'),
(254, 117, 1, '{\"name\":\"Twitter\"}', '2022-08-17 05:32:49', '2022-08-17 05:32:49'),
(255, 102, 2, '{\"title\":\"UNIVERSO GAMESHOP\",\"sub_title\":\"Disfruta el juego\",\"button_name\":\"COMPRA AHORA\"}', '2022-08-17 05:52:20', '2022-08-17 05:52:20'),
(256, 103, 2, '{\"title\":\"UNIVERSO GAMESHOP\",\"sub_title\":\"Disfruta el juego\",\"button_name\":\"COMPRA AHORA\"}', '2022-08-17 05:53:00', '2022-08-17 05:53:00'),
(257, 90, 2, '{\"title\":\"Facil y rapida\",\"information\":\"Solo se necesitan unos pocos segundos para completar una compra en chaina neft colar.\"}', '2022-08-17 05:53:45', '2022-08-17 05:53:45'),
(258, 86, 2, '{\"title\":\"Puedo tener el control total despu\\u00e9s de la compra?\",\"description\":\"<span><\\/span><p><span>S\\u00ed, tendr\\u00e1 control total sobre Gamers Arena. Puede cambiar o personalizar completamente esta aplicaci\\u00f3n.<\\/span><\\/p><span><br \\/><\\/span>\"}', '2022-08-17 05:54:22', '2023-01-31 06:22:18'),
(259, 87, 2, '{\"title\":\"\\u00bfC\\u00f3mo puedo obtener apoyo de usted?\",\"description\":\"<span><\\/span><p><span>Simplemente puede contactarnos a trav\\u00e9s de nuestro correo electr\\u00f3nico o llamar directamente a nuestro n\\u00famero de soporte.<\\/span><\\/p><span><br \\/><\\/span>\"}', '2022-08-17 05:55:06', '2023-01-31 06:32:29'),
(260, 110, 2, '{\"title\":\"CORRIENTES DE TWITCH\",\"number\":\"145\"}', '2022-08-17 05:55:36', '2022-08-17 07:28:32'),
(261, 111, 2, '{\"title\":\"JUEGOS TOTALES\",\"number\":\"75\"}', '2022-08-17 05:55:58', '2022-08-17 07:28:40'),
(262, 112, 2, '{\"title\":\"TRANSMISIONES DE\",\"number\":\"273\"}', '2022-08-17 05:56:19', '2022-08-17 07:29:12'),
(263, 113, 2, '{\"title\":\"EQUIPO PROFESIONAL\",\"number\":\"53\"}', '2022-08-17 05:56:40', '2022-08-17 07:28:55'),
(264, 84, 2, '{\"name\":\"Marcos Juan\",\"designation\":\"Ingeniera de software\",\"description\":\"<span><\\/span><p><span>Soy Gamer por Hobby, Ingeniero por Profesi\\u00f3n. Siempre so\\u00f1\\u00e9 con hacer un negocio de juegos en l\\u00ednea, pero no encontr\\u00e9 ninguna soluci\\u00f3n lista para mi tienda en l\\u00ednea antes de encontrar Gamers Arena. Encontr\\u00e9 todo f\\u00e1cil navegaci\\u00f3n, personalizaciones propias y mucho m\\u00e1s. Mi sue\\u00f1o se hace realidad finalmente!<\\/span><\\/p><span><br \\/><\\/span>\"}', '2022-08-17 05:57:29', '2023-01-31 11:39:05'),
(265, 107, 2, '{\"name\":\"steve smith\",\"designation\":\"Trabajadora social\",\"description\":\"<span><\\/span><p><span>Cuando compr\\u00e9 Gamers Arena, ya ten\\u00eda una gran cantidad de mis propios clientes y seguidores en las redes sociales. Cuando acabo de lanzar mi primer mercado de juegos digitales en l\\u00ednea, no puedo expresar la sensaci\\u00f3n de que a todos los clientes les encant\\u00f3 mi sitio y que mis ventas nunca antes hab\\u00edan sido tan altas. Nunca he vuelto a mirar atr\\u00e1s.<\\/span><\\/p><span><br \\/><\\/span>\"}', '2022-08-17 05:58:12', '2023-01-31 11:56:54'),
(266, 85, 2, '{\"title\":\"SPIDER-MAN DE PLAYSTATION LLEGA A PC\",\"date_time\":\"19 JUNIO 2022\",\"description\":\"Excepteur sint occaecat cupidatat non proident, sunt in culpa qui oficia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit volupt atem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia sit voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet sedit consectetur, adipisci velit, sed quia doloremque laudantium.\"}', '2022-08-17 05:59:04', '2022-08-17 05:59:04'),
(267, 104, 2, '{\"title\":\"Pin de bonificaci\\u00f3n Razer Gold para gastar y canjear gratis\",\"date_time\":\"10 julio 2019\",\"description\":\"Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore is dolore magna aliqua Ut enim ad minim veniam quis nostrud exercitation ullamco. Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliq Ut enim ad minim veniam quis nostrud Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliqu ip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\"}', '2022-08-17 05:59:44', '2022-08-17 05:59:44'),
(268, 108, 2, '{\"title\":\"9 juegos que debes tener en cuenta para esta oferta de verano\",\"date_time\":\"14 abril 2022\",\"description\":\"No dejes que los revisores te asusten porque es un juego dif\\u00edcil de jugar, s\\u00ed, es un juego desafiante si nunca has jugado ning\\u00fan juego de la serie Dark Souls. A\\u00fan as\\u00ed, como todos ellos, es incre\\u00edblemente satisfactorio derrotar finalmente a un enemigo duro. Tambi\\u00e9n est\\u00e1 la inclusi\\u00f3n de progresar en la historia con tus amigos a trav\\u00e9s del modo multijugador, y el contenido hay mucho contenido para explorar que no incluye el pr\\u00f3ximo contenido de From Software.\\r\\n\\r\\n\\r\\n\\r\\nLa expansi\\u00f3n para MHR agregar\\u00e1 contenido de b\\u00fasqueda de Master Rank con a\\u00fan m\\u00e1s monstruos y armas para explorar. Si bien la expansi\\u00f3n puede ser costosa, el juego base no solo tendr\\u00e1 un descuento, sino que Capcom no decepciona cuando te exigen que pagues el precio completo de su DLC, definitivamente vale la pena la experiencia.\"}', '2022-08-17 06:00:39', '2022-08-17 06:00:39'),
(269, 105, 2, '{\"title\":\"T\\u00e9rminos y condiciones\",\"description\":\"Es un hecho establecido desde hace mucho tiempo que un lector se distraer\\u00e1 con el contenido legible de una p\\u00e1gina cuando mire su dise\\u00f1o. El punto de usar Lorem Ipsum es que tiene una distribuci\\u00f3n de letras m\\u00e1s o menos normal, en lugar de usar \'Contenido aqu\\u00ed, contenido aqu\\u00ed\', lo que hace que parezca un ingl\\u00e9s legible. Muchos paquetes de autoedici\\u00f3n y editores de p\\u00e1ginas web ahora usan Lorem Ipsum como su modelo de texto predeterminado, y una b\\u00fasqueda de \'lorem ipsum\' descubrir\\u00e1 muchos sitios web que a\\u00fan est\\u00e1n en su infancia. Varias versiones han evolucionado a lo largo de los a\\u00f1os, a veces por accidente, a veces a prop\\u00f3sito (humor inyectado y cosas por el estilo). Es un hecho establecido desde hace mucho tiempo que un lector se distraer\\u00e1 con el contenido legible de una p\\u00e1gina cuando mire su dise\\u00f1o. El punto de usar Lorem Ipsum es que tiene una distribuci\\u00f3n de letras m\\u00e1s o menos normal, en lugar de usar \'Contenido aqu\\u00ed, contenido aqu\\u00ed\', lo que hace que parezca un ingl\\u00e9s legible. Muchos paquetes de autoedici\\u00f3n y editores de p\\u00e1ginas web ahora usan Lorem Ipsum como su modelo de texto predeterminado, y una b\\u00fasqueda de \'lorem ipsum\' descubrir\\u00e1 muchos sitios web que a\\u00fan est\\u00e1n en su infancia. Varias versiones han evolucionado a lo largo de los a\\u00f1os, a veces por accidente, a veces a prop\\u00f3sito (humor inyectado y cosas por el estilo). Es un hecho establecido desde hace mucho tiempo que un lector se distraer\\u00e1 con el contenido legible de una p\\u00e1gina cuando mire su dise\\u00f1o. El punto de usar Lorem Ipsum es que tiene una distribuci\\u00f3n de letras m\\u00e1s o menos normal, en lugar de usar \'Contenido aqu\\u00ed, contenido aqu\\u00ed\', lo que hace que parezca un ingl\\u00e9s legible. Muchos paquetes de autoedici\\u00f3n y editores de p\\u00e1ginas web ahora usan Lorem Ipsum como su modelo de texto predeterminado, y una b\\u00fasqueda de \'lorem ipsum\' descubrir\\u00e1 muchos sitios web que a\\u00fan est\\u00e1n en su infancia. Varias versiones han evolucionado a lo largo de los a\\u00f1os, a veces por accidente, a veces a prop\\u00f3sito con humor inyectado y cosas por el estilo.\"}', '2022-08-17 06:01:52', '2022-08-17 06:01:52'),
(270, 106, 2, '{\"title\":\"Pol\\u00edtica de privacidad\",\"description\":\"Es un hecho establecido desde hace mucho tiempo que un lector se distraer\\u00e1 con el contenido legible de una p\\u00e1gina cuando mire su dise\\u00f1o. El punto de usar Lorem Ipsum es que tiene una distribuci\\u00f3n de letras m\\u00e1s o menos normal, a diferencia de usar \'Contenido aqu\\u00ed, contenido aqu\\u00ed\', lo que hace que parezca un ingl\\u00e9s legible. Muchos paquetes de autoedici\\u00f3n y editores de p\\u00e1ginas web ahora usan Lorem Ipsum como su modelo de texto predeterminado, y una b\\u00fasqueda de \'lorem ipsum\' descubrir\\u00e1 muchos sitios web que a\\u00fan est\\u00e1n en su infancia. Varias versiones han evolucionado a lo largo de los a\\u00f1os, a veces por accidente, a veces a prop\\u00f3sito (humor inyectado y cosas por el estilo). Es un hecho establecido desde hace mucho tiempo que un lector se distraer\\u00e1 con el contenido legible de una p\\u00e1gina cuando mire su dise\\u00f1o.\"}', '2022-08-17 06:02:28', '2022-08-17 06:02:28'),
(271, 114, 2, '{\"name\":\"Facebook\"}', '2022-08-17 06:02:48', '2022-08-17 06:02:48'),
(272, 115, 2, '{\"name\":\"Instagram\"}', '2022-08-17 06:03:05', '2022-08-17 06:03:05'),
(273, 116, 2, '{\"name\":\"YouTube\"}', '2022-08-17 06:03:19', '2022-08-17 06:03:19'),
(274, 117, 2, '{\"name\":\"Gorjeo\"}', '2022-08-17 06:03:32', '2022-08-17 06:03:32');

-- --------------------------------------------------------

--
-- Table structure for table `content_media`
--

CREATE TABLE `content_media` (
  `id` int(11) UNSIGNED NOT NULL,
  `content_id` int(11) UNSIGNED DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content_media`
--

INSERT INTO `content_media` (`id`, `content_id`, `description`, `created_at`, `updated_at`) VALUES
(61, 84, '{\"image\":\"62aef0008c0691655631872.png\"}', '2022-06-19 03:44:32', '2022-06-19 03:44:32'),
(62, 85, '{\"image\":\"62aef752902d81655633746.jpg\"}', '2022-06-19 04:15:46', '2022-06-19 04:15:46'),
(65, 90, '{\"image\":\"62af0d334d93c1655639347.png\"}', '2022-06-19 05:49:07', '2022-06-19 05:49:07'),
(69, 102, '{\"image\":\"62b0527ca90cc1655722620.png\",\"button_link\":\"https:\\/\\/script.bugfinder.net\\/gamers-arena\\/about\"}', '2022-06-20 04:57:02', '2022-08-19 06:36:43'),
(70, 103, '{\"image\":\"62b056e76f3791655723751.png\",\"button_link\":\"https:\\/\\/script.bugfinder.net\\/gamers-arena\\/about\"}', '2022-06-20 05:15:52', '2022-08-19 06:36:53'),
(71, 104, '{\"image\":\"62c3d719af7851657001753.jpg\"}', '2022-07-04 10:11:53', '2022-07-05 00:15:53'),
(72, 107, '{\"image\":\"62c3d0b6acaf91657000118.png\"}', '2022-07-04 23:48:38', '2022-07-04 23:48:38'),
(73, 108, '{\"image\":\"62c3d657ac5621657001559.jpg\"}', '2022-07-05 00:09:57', '2022-07-05 00:12:39'),
(74, 114, '{\"link\":\"https:\\/\\/www.facebook.com\\/\",\"icon\":\"fab fa-facebook-f\"}', '2022-08-17 05:27:54', '2022-08-17 05:27:54'),
(75, 115, '{\"link\":\"https:\\/\\/www.instagram.com\",\"icon\":\"fab fa-instagram\"}', '2022-08-17 05:28:29', '2022-08-17 05:28:29'),
(76, 116, '{\"link\":\"https:\\/\\/www.skype.com\",\"icon\":\"fab fa-skype\"}', '2022-08-17 05:28:45', '2022-08-17 05:31:45'),
(77, 117, '{\"link\":\"https:\\/\\/twitter.com\\/\",\"icon\":\"fab fa-twitter\"}', '2022-08-17 05:32:49', '2022-08-17 05:32:49');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) UNSIGNED NOT NULL,
  `language_id` int(11) UNSIGNED DEFAULT NULL,
  `template_key` varchar(120) DEFAULT NULL,
  `email_from` varchar(191) DEFAULT 'support@exampl.com',
  `name` varchar(191) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `template` text DEFAULT NULL,
  `sms_body` text DEFAULT NULL,
  `short_keys` text DEFAULT NULL,
  `mail_status` tinyint(1) NOT NULL DEFAULT 0,
  `sms_status` tinyint(1) NOT NULL DEFAULT 0,
  `lang_code` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `language_id`, `template_key`, `email_from`, `name`, `subject`, `template`, `sms_body`, `short_keys`, `mail_status`, `sms_status`, `lang_code`, `created_at`, `updated_at`) VALUES
(1, 1, 'PROFILE_UPDATE', 'support@domain.com', 'Profile has been updated', 'Profile has been updated', 'Your first name [[firstname]]\r\n\r\nlast name [[lastname]]\r\n\r\nemail [[email]]\r\n\r\nphone number [[phone]]\r\n', 'Your first name [[firstname]]\r\n\r\nlast name [[lastname]]\r\n\r\nemail [[email]]\r\n\r\nphone number [[phone]]\r\n', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-08-18 06:28:22'),
(2, 1, 'ADMIN_SUPPORT_REPLY', 'support@domain.com', 'Support Ticket Reply ', 'Support Ticket Reply', '<p>Ticket ID [[ticket_id]]\r\n</p><p><span><br /></span></p><p><span>Subject [[ticket_subject]]\r\n</span></p><p><span>-----Replied------</span></p><p><span>\r\n[[reply]]</span><br /></p>', 'Ticket ID [[ticket_id]]\r\n\r\n\r\n\r\nSubject [[ticket_subject]]\r\n\r\n-----Replied------\r\n\r\n[[reply]]', '{\"ticket_id\":\"Support Ticket ID\",\"ticket_subject\":\"Subject Of Support Ticket\",\"reply\":\"Reply from Staff\\/Admin\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-08-18 06:28:22'),
(3, 1, 'PASSWORD_CHANGED', 'support@domain.com', 'PASSWORD CHANGED ', 'Your password changed ', 'Your password changed \r\n\r\nNew password [[password]]\r\n\r\n', 'Your password changed\r\n\r\nNew password [[password]]\r\n\r\n\r\nNews [[test]]', '{\"password\":\"password\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-08-18 06:28:22'),
(9, 1, 'PAYMENT_COMPLETE', 'support@domain.com', 'Payment Completed', 'Your Payment Has Been Completed', '[[amount]] [[currency]] Payment Has Been successful via [[gateway_name]]\r\n\r\nCharge[[charge]] [[currency]]\r\n\r\nTranaction [[transaction]]\r\n\r\nYour Main Balance [[remaining_balance]] [[currency]]\r\n\r\n', '[[amount]] [[currency]] Payment Has Been successful via [[gateway_name]]\n\nCharge[[charge]] [[currency]]\n\nTranaction [[transaction]]\n\nYour Main Balance [[remaining_balance]] [[currency]]\n\n', '{\"gateway_name\":\"gateway name\",\"amount\":\"amount\",\"charge\":\"charge\", \"currency\":\"currency\",\"transaction\":\"transaction\",\"remaining_balance\":\"remaining balance\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-08-18 06:28:22'),
(11, 1, 'PASSWORD_RESET', 'support@domain.com', 'Reset Password Notification', 'Reset Password Notification', 'You are receiving this email because we received a password reset request for your account.[[message]]\r\n\r\n\r\nThis password reset link will expire in 60 minutes.\r\n\r\nIf you did not request a password reset, no further action is required.', 'You are receiving this email because we received a password reset request for your account. [[message]]', '{\"message\":\"message\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-08-18 06:28:22'),
(12, 1, 'VERIFICATION_CODE', 'support@domain.com', 'Verification Code', 'Verify Your Email ', 'Your Email verification Code  [[code]]', 'Your SMS verification Code  [[code]]', '{\"code\":\"code\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-08-18 06:28:22'),
(21, 1, 'TWO_STEP_ENABLED', 'support@domain.com', 'TWO STEP ENABLED', 'TWO STEP ENABLED', 'Your verification code is: [[code]]', 'Your verification code is: [[code]]', '{\"action\":\"Enabled Or Disable\",\"ip\":\"Device Ip\",\"browser\":\"browser and Operating System \",\"time\":\"Time\",\"code\":\"code\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-08-18 06:28:22'),
(22, 1, 'TWO_STEP_DISABLED', 'support@domain.com', 'TWO STEP DISABLED', 'TWO STEP DISABLED', 'Google two factor verification is disabled', 'Google two factor verification is disabled', '{\"action\":\"Enabled Or Disable\",\"ip\":\"Device Ip\",\"browser\":\"browser and Operating System \",\"time\":\"Time\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-08-18 06:28:22'),
(40, 1, 'KYC_APPROVED', 'support@domain.com', 'KYC has been approved', 'KYC has been approved', '[[kyc_type]] has been approved\r\n\r\n', '[[kyc_type]] has been approved\r\n', '{\"kyc_type\":\"kyc type\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-08-18 06:28:22'),
(41, 1, 'KYC_REJECTED', 'support@domain.com', 'KYC has been rejected', 'KYC has been rejected', '[[kyc_type]] has been rejected\r\n\r\n', '[[kyc_type]] has been rejected\r\n', '{\"kyc_type\":\"kyc type\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-08-18 06:28:22'),
(42, 1, 'TOP_UP_PAYMENT_COMPLETE', 'support@domain.com', 'Payment Completed For top Up', 'Your top Up Payment Has Been Completed', '<p>[[amount]] [[currency]] Payment Has Been successful via [[gateway_name]]</p><p> For Game top up\r\n\r\ngame name : [[game_name]]\r\n</p><p>game service: [[game_service]]\r\n</p>', '[[amount]] [[currency]] Payment Has Been successful via [[gateway_name]] For Game top up\r\n\r\ngame name : [[game_name]]\r\ngame service: [[game_service]]\r\n', '{\"gateway_name\":\"gateway name\",\"amount\":\"amount\",\"currency\":\"currency\",\"transaction\":\"transaction\",\"game_name\":\"game category name\",\"game_service\":\"game Service Name\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-08-18 06:28:22'),
(44, 1, 'PAYMENT_REJECTED', 'support@domain.com', 'Payment has been rejected', 'Payment has been rejected', '[[amount]] [[currency]] Payment Has Been rejected\r\nPayment Method: [[method]] \r\n\r\nFeedback: [[feedback]] \r\n', '[[amount]] [[currency]] Payment Has Been rejected\r\nPayment Method: [[method]] \r\n\r\nFeedback: [[feedback]] \r\n', '{\"amount\":\"amount\",\"currency\":\"currency\",\"feedback\":\"feedback\",\"method\":\"method\",\"transaction\":\"transaction\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-08-18 06:28:22'),
(45, 1, 'VOUCHER_PAYMENT_COMPLETE', 'support@domain.com', 'Payment Completed For voucher payment', 'Your Voucher  Payment Has Been Completed', '<p>[[amount]] [[currency]] Payment Has Been successful via [[gateway_name]]</p><p> For Voucher\r\n\r\nvoucher name : [[voucher_name]]\r\n</p><p>voucher service: [[voucher_service]]\r\n</p></p><p>voucher code: [[voucher_code]]\r\n</p>', '[[amount]] [[currency]] Payment Has Been successful via [[gateway_name]] For Voucher\r\n\r\nvoucher name : [[voucher_name]]\r\nvoucher service: [[voucher_service]]\r\nvoucher code: [[voucher_code]]\r\n', '{\"gateway_name\":\"gateway name\",\"amount\":\"amount\",\"currency\":\"currency\",\"transaction\":\"transaction\",\"voucher_name\":\"voucher name\",\"voucher_service\":\"voucher service\",\"voucher_code\":\"voucher code\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-08-18 06:28:22'),
(46, 1, 'TOP_UP_COMPLETE', 'support@domain.com', 'TOP_UP_COMPLETE', 'Your top Up  Has Been Completed', 'Your [[service]] top up order has been completed\r\n\r\nTop Up: [[name]]\r\n\r\nTransaction [[transaction]]', 'Your [[service]] top up order has been completed\r\n\r\nTop Up: [[name]]\r\n\r\nTransaction [[transaction]]', '{\"name\":\"Top Up\",\"service\":\"Top Up Service\",\"transaction\":\"Order transaction\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-08-18 06:28:22'),
(47, 1, 'VOUCHER_COMPLETE', 'support@domain.com', 'VOUCHER_COMPLETE', 'Your Voucher  Has Been Completed', 'Your [[service]] voucher order has been completed\r\n\r\nVoucher: [[name]]\r\n\r\nTransaction [[transaction]]', 'Your [[service]] top up order has been completed\r\n\r\nVoucher: [[name]]\r\n\r\nTransaction [[transaction]]', '{\"name\":\"Voucher\",\"service\":\"Voucher Service\",\"transaction\":\"Order transaction\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-08-18 06:28:22'),
(48, 1, 'GIFT_CARD_PAYMENT_COMPLETE', 'support@domain.com', 'Payment Completed For gift card payment', 'Your Gift Card  Payment Has Been Completed', '<p>[[amount]] [[currency]] Payment Has Been successful via [[gateway_name]]</p><p> For Gift Card\r\n\r\n<p>card name : [[card_name]]\r\n</p><p>service name: [[card_service]]\r\n</p><p>card code: [[card_code]]\r\n</p>', '[[amount]] [[currency]] Payment Has Been successful via [[gateway_name]] For Gift Card\r\n\r\ncard name : [[card_name]]\r\nservice name: [[card_service]]\r\ncard code: [[card_code]]\r\n', '{\"gateway_name\":\"gateway name\",\"amount\":\"amount\",\"currency\":\"currency\",\"transaction\":\"transaction\",\"card_name\":\"card name\",\"card_service\":\"service name\",\"card_code\":\"card code\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-08-18 06:28:22'),
(49, 1, 'SELL_APPROVE', 'support@domain.com', 'SELL_APPROVE', 'Your Sell Post Status Updated', 'Your [[title]] sell post has been [[status]]\r\n\r\nShort Comment: [[short_comment]]\r\n\r\n', 'Your [[title]] sell post has been [[status]]\r\n', '{\"title\":\"Sell Post\",\"status\":\"Status\",\"short_comment\":\"Short Comment\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-08-18 06:28:22'),
(50, 1, 'SELL_OFFER', 'support@domain.com', 'SELL_OFFER', 'Sell Post Has Been Offered', 'Your [[title]] sell post has been offered by [[offer_by]] \r\nAmount: [[amount]]\r\nDescription: [[description]]\r\nLink : [[link]]\r\n', 'Your [[title]] sell post has been offered by [[offer_by]]\r\nAmount: [[amount]]\r\nDescription: [[description]]\r\nLink : [[link]]\r\n', '{\"title\":\"Title\",\"amount\":\"Amount\",\"description\":\"Description\",\"link\":\"Link\",\"offer_by\":\"Offer By\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-08-18 06:28:22'),
(51, 1, 'SELL_RE_OFFER', 'support@domain.com', 'SELL_RE_OFFER', 'Sell Post Has Been Re Offered', 'Your [[title]] sell post has been re offered by [[offer_by]] \r\nAmount: [[amount]]\r\nDescription: [[description]]\r\nLink : [[link]]\r\n', 'Your [[title]] sell post has been re offered by [[offer_by]]\r\nAmount: [[amount]]\r\nDescription: [[description]]\r\nLink : [[link]]\r\n', '{\"title\":\"Title\",\"amount\":\"Amount\",\"description\":\"Description\",\"link\":\"Link\",\"offer_by\":\"Offer By\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-08-18 06:28:22'),
(52, 1, 'OFFER_REJECT', 'support@domain.com', 'OFFER_REJECT', 'Offer Has Been Rejected', '[[title]] offer amount [[amount]] has been rejected\r\nLink : [[link]]', '[[title]] offer amount [[amount]] has been rejected\r\nLink : [[link]]\r\n', '{\"title\":\"Title\",\"amount\":\"Amount\",\"link\":\"Link\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-08-18 06:28:22'),
(53, 1, 'OFFER_ACCEPTED', 'support@domain.com', 'OFFER_ACCEPTED', 'Offer Has Been Accepted', '[[title]] offer amount [[amount]] has been accepted\r\nLink: [[link]]', '[[title]] offer amount [[amount]] has been accepted\r\nLink: [[link]]\r\n', '{\"title\":\"Title\",\"amount\":\"Amount\",\"link\":\"Link\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-08-18 06:28:22'),
(54, 2, 'PAYMENT_COMPLETE', 'support@domain.com', 'Payment Completed', 'Your Payment Has Been Completed', '[[amount]] [[currency]] Payment Has Been successful via [[gateway_name]]\r\n\r\nCharge[[charge]] [[currency]]\r\n\r\nTranaction [[transaction]]\r\n\r\nYour Main Balance [[remaining_balance]] [[currency]]\r\n\r\n', '[[amount]] [[currency]] Payment Has Been successful via [[gateway_name]]\n\nCharge[[charge]] [[currency]]\n\nTranaction [[transaction]]\n\nYour Main Balance [[remaining_balance]] [[currency]]\n\n', '{\"gateway_name\":\"gateway name\",\"amount\":\"amount\",\"charge\":\"charge\",\"currency\":\"currency\",\"transaction\":\"transaction\",\"remaining_balance\":\"remaining balance\"}', 1, 1, 'ES', '2022-07-26 02:32:21', '2022-08-18 06:28:22'),
(55, 1, 'PAYMENT_LOCK', 'support@domain.com', 'PAYMENT_LOCK', 'Payment Has Been Locked', '[[title]] amount [[amount]] payment has been lock\r\nLink : [[link]]\r\n', '[[title]] amount [[amount]] payment has been lock\r\nLink : [[link]]\r\n\r\n', '{\"title\":\"Title\",\"amount\":\"Amount\",\"link\":\"Link\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-08-18 06:28:22'),
(56, 1, 'SELL_POST_PAYMENT_COMPLETE', 'support@domain.com', 'Payment Completed For Sell Post', 'Sell Post Payment Has Been Completed', '<p>[[amount]] [[currency]] payment has been successful complete via [[gateway_name]]</p>for sell post\r\n<p> \r\nsell post title : [[sell_post_title]]\r\n</p>', '<p>[[amount]] [[currency]] payment has been successful complete via [[gateway_name]]</p>for sell post\r\n<p> \r\nsell post title : [[sell_post_title]]\r\n</p>\r\n\r\n', '{\"gateway_name\":\"gateway name\",\"amount\":\"amount\",\"currency\":\"currency\",\"transaction\":\"transaction\",\"sell_post_title\":\"sell post title\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-08-18 06:28:22'),
(58, 1, 'SELL_POST_PAYMENT_COMPLETE_AUTHOR', 'support@domain.com', 'Your Sell Post Payment Completed ', 'Your Sell Post Payment Has Been Completed', '<p>Your sell post [[amount]] [[currency]] payment has been successful complete via [[gateway_name]]</p>\r\n<p>\r\nsell post title : [[sell_post_title]]\r\n</p>', '<p>Your sell post [[amount]] [[currency]] payment has been successful complete via [[gateway_name]]</p>\r\n<p>\r\nsell post title : [[sell_post_title]]\r\n</p>\r\n\r\n', '{\"gateway_name\":\"gateway name\",\"amount\":\"amount\",\"currency\":\"currency\",\"transaction\":\"transaction\",\"sell_post_title\":\"sell post title\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-08-18 06:28:22'),
(59, 1, 'SELL_POST_PAYMENT_RELEASED', 'support@domain.com', 'Payment Has Been Released', 'Payment Has Been Released', '<p>[[amount]] [[currency]] payment has been successfully released. charge [[charge]] [[currency]]\r\n</p>\r\n<p> \r\nPost: [[post]]\r\n</p>\r\n\r\nLink: [[link]]', '<p>[[amount]] [[currency]] payment has been successfully released. charge [[charge]] [[currency]]\r\n</p>\r\n<p> \r\nPost: [[post]]\r\n\r\n</p>\r\n\r\nLink: [[link]]\r\n', '{\"amount\":\"amount\",\"charge\":\"charge\",\"currency\":\"currency\",\"post\":\"Post\",\"link\":\"Post Link\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-08-18 06:28:22'),
(60, 2, 'ADMIN_SUPPORT_REPLY', 'support@domain.com', 'Support Ticket Reply ', 'Support Ticket Reply', '<p>Ticket ID [[ticket_id]]\r\n</p><p><span><br /></span></p><p><span>Subject [[ticket_subject]]\r\n</span></p><p><span>-----Replied------</span></p><p><span>\r\n[[reply]]</span><br /></p>', 'Ticket ID [[ticket_id]]\r\n\r\n\r\n\r\nSubject [[ticket_subject]]\r\n\r\n-----Replied------\r\n\r\n[[reply]]', '{\"ticket_id\":\"Support Ticket ID\",\"ticket_subject\":\"Subject Of Support Ticket\",\"reply\":\"Reply from Staff\\/Admin\"}', 1, 1, 'ES', '2022-08-10 03:33:48', '2022-08-18 06:28:22'),
(61, 2, 'KYC_APPROVED', 'support@domain.com', 'KYC has been approved', 'KYC has been approved', '[[kyc_type]] has been approved\r\n\r\n', '[[kyc_type]] has been approved\r\n', '{\"kyc_type\":\"kyc type\"}', 1, 1, 'ES', '2022-08-10 03:47:27', '2022-08-18 06:28:22'),
(62, 2, 'PAYMENT_LOCK', 'support@domain.com', 'PAYMENT_LOCK', 'Payment Has Been Locked', '[[title]] amount [[amount]] payment has been lock\r\nLink : [[link]]\r\n', '[[title]] amount [[amount]] payment has been lock\r\nLink : [[link]]\r\n\r\n', '{\"title\":\"Title\",\"amount\":\"Amount\",\"link\":\"Link\"}', 1, 1, 'ES', '2022-08-29 18:49:45', '2022-08-29 18:49:45'),
(63, 2, 'TOP_UP_PAYMENT_COMPLETE', 'support@domain.com', 'Payment Completed For top Up', 'Your top Up Payment Has Been Completed', '<p>[[amount]] [[currency]] Payment Has Been successful via [[gateway_name]]</p><p> For Game top up\r\n\r\ngame name : [[game_name]]\r\n</p><p>game service: [[game_service]]\r\n</p>', '[[amount]] [[currency]] Payment Has Been successful via [[gateway_name]] For Game top up\r\n\r\ngame name : [[game_name]]\r\ngame service: [[game_service]]\r\n', '{\"gateway_name\":\"gateway name\",\"amount\":\"amount\",\"currency\":\"currency\",\"transaction\":\"transaction\",\"game_name\":\"game category name\",\"game_service\":\"game Service Name\"}', 1, 1, 'ES', '2022-09-14 10:57:25', '2022-09-14 10:57:25'),
(64, 2, 'GIFT_CARD_PAYMENT_COMPLETE', 'support@domain.com', 'Payment Completed For gift card payment', 'Your Gift Card  Payment Has Been Completed', '<p>[[amount]] [[currency]] Payment Has Been successful via [[gateway_name]]</p><p> For Gift Card\r\n\r\n<p>card name : [[card_name]]\r\n</p><p>service name: [[card_service]]\r\n</p><p>card code: [[card_code]]\r\n</p>', '[[amount]] [[currency]] Payment Has Been successful via [[gateway_name]] For Gift Card\r\n\r\ncard name : [[card_name]]\r\nservice name: [[card_service]]\r\ncard code: [[card_code]]\r\n', '{\"gateway_name\":\"gateway name\",\"amount\":\"amount\",\"currency\":\"currency\",\"transaction\":\"transaction\",\"card_name\":\"card name\",\"card_service\":\"service name\",\"card_code\":\"card code\"}', 1, 1, 'ES', '2022-09-23 22:40:05', '2022-09-23 22:40:05'),
(65, 2, 'PASSWORD_RESET', 'support@domain.com', 'Reset Password Notification', 'Reset Password Notification', 'You are receiving this email because we received a password reset request for your account.[[message]]\r\n\r\n\r\nThis password reset link will expire in 60 minutes.\r\n\r\nIf you did not request a password reset, no further action is required.', 'You are receiving this email because we received a password reset request for your account. [[message]]', '{\"message\":\"message\"}', 1, 1, 'ES', '2022-10-28 11:10:35', '2022-10-28 11:10:35'),
(66, 2, 'SELL_APPROVE', 'support@exampl.com', 'SELL_APPROVE', 'Your Sell Post Status Updated', 'Your [[title]] sell post has been [[status]]\r\n\r\nShort Comment: [[short_comment]]\r\n\r\n', 'Your [[title]] sell post has been [[status]]\r\n', '{\"title\":\"Sell Post\",\"status\":\"Status\",\"short_comment\":\"Short Comment\"}', 1, 1, 'ES', '2022-11-01 00:09:56', '2022-11-01 00:09:56'),
(67, 2, 'PASSWORD_CHANGED', 'support@domain.com', 'PASSWORD CHANGED ', 'Your password changed ', 'Your password changed \r\n\r\nNew password [[password]]\r\n\r\n', 'Your password changed\r\n\r\nNew password [[password]]\r\n\r\n\r\nNews [[test]]', '{\"password\":\"password\"}', 1, 1, 'ES', '2023-01-16 19:28:35', '2023-01-16 19:28:35'),
(68, 2, 'VOUCHER_PAYMENT_COMPLETE', 'support@domain.com', 'Payment Completed For voucher payment', 'Your Voucher  Payment Has Been Completed', '<p>[[amount]] [[currency]] Payment Has Been successful via [[gateway_name]]</p><p> For Voucher\r\n\r\nvoucher name : [[voucher_name]]\r\n</p><p>voucher service: [[voucher_service]]\r\n</p></p><p>voucher code: [[voucher_code]]\r\n</p>', '[[amount]] [[currency]] Payment Has Been successful via [[gateway_name]] For Voucher\r\n\r\nvoucher name : [[voucher_name]]\r\nvoucher service: [[voucher_service]]\r\nvoucher code: [[voucher_code]]\r\n', '{\"gateway_name\":\"gateway name\",\"amount\":\"amount\",\"currency\":\"currency\",\"transaction\":\"transaction\",\"voucher_name\":\"voucher name\",\"voucher_service\":\"voucher service\",\"voucher_code\":\"voucher code\"}', 1, 1, 'ES', '2023-03-13 15:58:58', '2023-03-13 15:58:58'),
(69, 2, 'OFFER_ACCEPTED', 'support@domain.com', 'OFFER_ACCEPTED', 'Offer Has Been Accepted', '[[title]] offer amount [[amount]] has been accepted\r\nLink: [[link]]', '[[title]] offer amount [[amount]] has been accepted\r\nLink: [[link]]\r\n', '{\"title\":\"Title\",\"amount\":\"Amount\",\"link\":\"Link\"}', 1, 1, 'ES', '2023-03-21 17:11:32', '2023-03-21 17:11:32'),
(70, 2, 'TWO_STEP_ENABLED', 'support@domain.com', 'TWO STEP ENABLED', 'TWO STEP ENABLED', 'Your verification code is: [[code]]', 'Your verification code is: [[code]]', '{\"action\":\"Enabled Or Disable\",\"ip\":\"Device Ip\",\"browser\":\"browser and Operating System \",\"time\":\"Time\",\"code\":\"code\"}', 1, 1, 'ES', '2023-03-21 17:12:22', '2023-03-21 17:12:22'),
(71, 2, 'VERIFICATION_CODE', 'support@exampl.com', 'Verification Code', 'Verify Your Email ', 'Your Email verification Code  [[code]]', 'Your SMS verification Code  [[code]]', '{\"code\":\"code\"}', 1, 1, 'ES', '2023-03-21 17:13:10', '2023-03-21 17:13:10'),
(72, 2, 'OFFER_REJECT', 'support@domain.com', 'OFFER_REJECT', 'Offer Has Been Rejected', '[[title]] offer amount [[amount]] has been rejected\r\nLink : [[link]]', '[[title]] offer amount [[amount]] has been rejected\r\nLink : [[link]]\r\n', '{\"title\":\"Title\",\"amount\":\"Amount\",\"link\":\"Link\"}', 1, 1, 'ES', '2023-03-22 05:30:56', '2023-03-22 05:30:56');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(11) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `funds`
--

CREATE TABLE `funds` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `gateway_id` int(11) UNSIGNED DEFAULT NULL,
  `fundable_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `fundable_type` varchar(91) NOT NULL,
  `gateway_currency` varchar(191) DEFAULT NULL,
  `amount` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `charge` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `rate` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `final_amount` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `btc_amount` decimal(18,8) DEFAULT NULL,
  `btc_wallet` varchar(191) DEFAULT NULL,
  `transaction` varchar(25) DEFAULT NULL,
  `try` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=> Complete, 2=> Pending, 3 => Cancel',
  `detail` text DEFAULT NULL,
  `feedback` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `currency` varchar(191) NOT NULL,
  `symbol` varchar(191) NOT NULL,
  `parameters` text DEFAULT NULL,
  `extra_parameters` text DEFAULT NULL,
  `convention_rate` decimal(18,8) NOT NULL DEFAULT 1.00000000,
  `currencies` text DEFAULT NULL,
  `min_amount` decimal(18,8) NOT NULL,
  `max_amount` decimal(18,8) NOT NULL,
  `percentage_charge` decimal(8,4) NOT NULL DEFAULT 0.0000,
  `fixed_charge` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0: inactive, 1: active',
  `note` text DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `sort_by` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `name`, `code`, `currency`, `symbol`, `parameters`, `extra_parameters`, `convention_rate`, `currencies`, `min_amount`, `max_amount`, `percentage_charge`, `fixed_charge`, `status`, `note`, `image`, `sort_by`, `created_at`, `updated_at`) VALUES
(1, 'Paypal', 'paypal', 'USD', 'USD', '{\"cleint_id\":\"\",\"secret\":\"\"}', NULL, '0.01200000', '{\"0\":{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"USD\"}}', '1.00000000', '10000.00000000', '1.0000', '0.50000000', 1, '', '62b8361adbe8f1656239642.png', 14, '2020-09-10 09:05:02', '2023-05-06 03:23:00'),
(2, 'Stripe ', 'stripe', 'USD', 'USD', '{\"secret_key\":\"\",\"publishable_key\":\"\"}', NULL, '1.00000000', '{\"0\":{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '62b836c31d4781656239811.png', 23, '2020-09-10 09:05:02', '2023-05-06 03:23:00'),
(3, 'Skrill', 'skrill', 'USD', 'USD', '{\"pay_to_email\":\"\",\"secret_key\":\"\"}', NULL, '1.00000000', '{\"0\":{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JOD\":\"JOD\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"KWD\":\"KWD\",\"MAD\":\"MAD\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"OMR\":\"OMR\",\"PLN\":\"PLN\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"SAR\":\"SAR\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TND\":\"TND\",\"TRY\":\"TRY\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\",\"COP\":\"COP\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '62b836b7db0b61656239799.png', 22, '2020-09-10 09:05:02', '2023-05-06 03:23:00'),
(4, 'Perfect Money', 'perfectmoney', 'USD', 'USD', '{\"passphrase\":\"\",\"payee_account\":\"\"}', NULL, '1.00000000', '{\"0\":{\"USD\":\"USD\",\"EUR\":\"EUR\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '62b83650af9231656239696.png', 18, '2020-09-10 09:05:02', '2023-05-06 03:23:00'),
(5, 'PayTM', 'paytm', 'INR', 'INR', '{\"MID\":\"\",\"merchant_key\":\"\",\"WEBSITE\":\"\",\"INDUSTRY_TYPE_ID\":\"\",\"CHANNEL_ID\":\"\"}', NULL, '78.32000000', '{\"0\":{\"AUD\":\"AUD\",\"ARS\":\"ARS\",\"BDT\":\"BDT\",\"BRL\":\"BRL\",\"BGN\":\"BGN\",\"CAD\":\"CAD\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"HRK\":\"HRK\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EGP\":\"EGP\",\"EUR\":\"EUR\",\"GEL\":\"GEL\",\"GHS\":\"GHS\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"KES\":\"KES\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"MAD\":\"MAD\",\"NPR\":\"NPR\",\"NZD\":\"NZD\",\"NGN\":\"NGN\",\"NOK\":\"NOK\",\"PKR\":\"PKR\",\"PEN\":\"PEN\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"ZAR\":\"ZAR\",\"KRW\":\"KRW\",\"LKR\":\"LKR\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"TRY\":\"TRY\",\"UGX\":\"UGX\",\"UAH\":\"UAH\",\"AED\":\"AED\",\"GBP\":\"GBP\",\"USD\":\"USD\",\"VND\":\"VND\",\"XOF\":\"XOF\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '62b8363ce525f1656239676.png', 16, '2020-09-10 09:05:02', '2023-05-06 03:23:00'),
(6, 'Payeer', 'payeer', 'RUB', 'USD', '{\"merchant_id\":\"\",\"secret_key\":\"\"}', '{\"status\":\"ipn\"}', '1.00000000', '{\"0\":{\"USD\":\"USD\",\"EUR\":\"EUR\",\"RUB\":\"RUB\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '62b8360bd7d7d1656239627.png', 13, '2020-09-10 09:05:02', '2023-05-06 03:23:00'),
(7, 'PayStack', 'paystack', 'NGN', 'NGN', '{\"public_key\":\"\",\"secret_key\":\"\"}', '{\"callback\":\"ipn\",\"webhook\":\"ipn\"}\r\n', '1.00000000', '{\"0\":{\"USD\":\"USD\",\"NGN\":\"NGN\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '62b8362cbe93b1656239660.png', 15, '2020-09-10 09:05:02', '2023-05-06 03:23:00'),
(8, 'VoguePay', 'voguepay', 'USD', 'USD', '{\"merchant_id\":\"\"}', NULL, '1.00000000', '{\"0\":{\"NGN\":\"NGN\",\"USD\":\"USD\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"ZAR\":\"ZAR\",\"JPY\":\"JPY\",\"INR\":\"INR\",\"AUD\":\"AUD\",\"CAD\":\"CAD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PLN\":\"PLN\"}}\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '62b836aa8b6ff1656239786.png', 21, '2020-09-10 09:05:02', '2023-05-06 03:23:00'),
(9, 'Flutterwave', 'flutterwave', 'USD', 'USD', '{\"public_key\":\"\",\"secret_key\":\"\",\"encryption_key\":\"\"}', NULL, '0.01200000', '{\"0\":{\"KES\":\"KES\",\"GHS\":\"GHS\",\"NGN\":\"NGN\",\"USD\":\"USD\",\"GBP\":\"GBP\",\"EUR\":\"EUR\",\"UGX\":\"UGX\",\"TZS\":\"TZS\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '62b83549c0d5d1656239433.png', 8, '2020-09-10 09:05:02', '2023-05-06 03:23:00'),
(10, 'RazorPay', 'razorpay', 'INR', 'INR', '{\"key_id\":\"\",\"key_secret\":\"\"}', NULL, '1.00000000', '{\"0\": {\"INR\": \"INR\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '62b8368870d521656239752.png', 19, '2020-09-10 09:05:02', '2023-05-06 03:23:00'),
(11, 'instamojo', 'instamojo', 'INR', 'INR', '{\"api_key\":\"\",\"auth_token\":\"\",\"salt\":\"\"}', NULL, '73.51000000', '{\"0\":{\"INR\":\"INR\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '62b83562ab2d81656239458.png', 9, '2020-09-10 09:05:02', '2023-05-06 03:23:00'),
(12, 'Mollie', 'mollie', 'USD', 'USD', '{\"api_key\":\"\"}', NULL, '0.01200000', '{\"0\":{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '62b83591e218b1656239505.png', 11, '2020-09-10 09:05:02', '2023-05-06 03:23:00'),
(13, '2checkout', 'twocheckout', 'USD', 'USD', '{\"merchant_code\":\"\",\"secret_key\":\"\"}', '{\"approved_url\":\"ipn\"}', '1.00000000', '{\"0\":{\"AFN\":\"AFN\",\"ALL\":\"ALL\",\"DZD\":\"DZD\",\"ARS\":\"ARS\",\"AUD\":\"AUD\",\"AZN\":\"AZN\",\"BSD\":\"BSD\",\"BDT\":\"BDT\",\"BBD\":\"BBD\",\"BZD\":\"BZD\",\"BMD\":\"BMD\",\"BOB\":\"BOB\",\"BWP\":\"BWP\",\"BRL\":\"BRL\",\"GBP\":\"GBP\",\"BND\":\"BND\",\"BGN\":\"BGN\",\"CAD\":\"CAD\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"HRK\":\"HRK\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"DOP\":\"DOP\",\"XCD\":\"XCD\",\"EGP\":\"EGP\",\"EUR\":\"EUR\",\"FJD\":\"FJD\",\"GTQ\":\"GTQ\",\"HKD\":\"HKD\",\"HNL\":\"HNL\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"JMD\":\"JMD\",\"JPY\":\"JPY\",\"KZT\":\"KZT\",\"KES\":\"KES\",\"LAK\":\"LAK\",\"MMK\":\"MMK\",\"LBP\":\"LBP\",\"LRD\":\"LRD\",\"MOP\":\"MOP\",\"MYR\":\"MYR\",\"MVR\":\"MVR\",\"MRO\":\"MRO\",\"MUR\":\"MUR\",\"MXN\":\"MXN\",\"MAD\":\"MAD\",\"NPR\":\"NPR\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NIO\":\"NIO\",\"NOK\":\"NOK\",\"PKR\":\"PKR\",\"PGK\":\"PGK\",\"PEN\":\"PEN\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"WST\":\"WST\",\"SAR\":\"SAR\",\"SCR\":\"SCR\",\"SGD\":\"SGD\",\"SBD\":\"SBD\",\"ZAR\":\"ZAR\",\"KRW\":\"KRW\",\"LKR\":\"LKR\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"SYP\":\"SYP\",\"THB\":\"THB\",\"TOP\":\"TOP\",\"TTD\":\"TTD\",\"TRY\":\"TRY\",\"UAH\":\"UAH\",\"AED\":\"AED\",\"USD\":\"USD\",\"VUV\":\"VUV\",\"VND\":\"VND\",\"XOF\":\"XOF\",\"YER\":\"YER\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '62b836d0775e01656239824.png', 24, '2020-09-10 09:05:02', '2023-05-06 03:23:00'),
(14, 'Authorize.Net', 'authorizenet', 'USD', 'USD', '{\"login_id\":\"\",\"current_transaction_key\":\"\"}', NULL, '0.01200000', '{\"0\":{\"AUD\":\"AUD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"USD\":\"USD\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '62b82f1c29e891656237852.png', 1, '2020-09-10 09:05:02', '2023-05-06 03:23:00'),
(15, 'SecurionPay', 'securionpay', 'USD', 'USD', '{\"public_key\":\"\",\"secret_key\":\"\"}', NULL, '1.00000000', '{\"0\":{\"AFN\":\"AFN\", \"DZD\":\"DZD\", \"ARS\":\"ARS\", \"AUD\":\"AUD\", \"BHD\":\"BHD\", \"BDT\":\"BDT\", \"BYR\":\"BYR\", \"BAM\":\"BAM\", \"BWP\":\"BWP\", \"BRL\":\"BRL\", \"BND\":\"BND\", \"BGN\":\"BGN\", \"CAD\":\"CAD\", \"CLP\":\"CLP\", \"CNY\":\"CNY\", \"COP\":\"COP\", \"KMF\":\"KMF\", \"HRK\":\"HRK\", \"CZK\":\"CZK\", \"DKK\":\"DKK\", \"DJF\":\"DJF\", \"DOP\":\"DOP\", \"EGP\":\"EGP\", \"ETB\":\"ETB\", \"ERN\":\"ERN\", \"EUR\":\"EUR\", \"GEL\":\"GEL\", \"HKD\":\"HKD\", \"HUF\":\"HUF\", \"ISK\":\"ISK\", \"INR\":\"INR\", \"IDR\":\"IDR\", \"IRR\":\"IRR\", \"IQD\":\"IQD\", \"ILS\":\"ILS\", \"JMD\":\"JMD\", \"JPY\":\"JPY\", \"JOD\":\"JOD\", \"KZT\":\"KZT\", \"KES\":\"KES\", \"KWD\":\"KWD\", \"KGS\":\"KGS\", \"LVL\":\"LVL\", \"LBP\":\"LBP\", \"LTL\":\"LTL\", \"MOP\":\"MOP\", \"MKD\":\"MKD\", \"MGA\":\"MGA\", \"MWK\":\"MWK\", \"MYR\":\"MYR\", \"MUR\":\"MUR\", \"MXN\":\"MXN\", \"MDL\":\"MDL\", \"MAD\":\"MAD\", \"MZN\":\"MZN\", \"NAD\":\"NAD\", \"NPR\":\"NPR\", \"ANG\":\"ANG\", \"NZD\":\"NZD\", \"NOK\":\"NOK\", \"OMR\":\"OMR\", \"PKR\":\"PKR\", \"PEN\":\"PEN\", \"PHP\":\"PHP\", \"PLN\":\"PLN\", \"QAR\":\"QAR\", \"RON\":\"RON\", \"RUB\":\"RUB\", \"SAR\":\"SAR\", \"RSD\":\"RSD\", \"SGD\":\"SGD\", \"ZAR\":\"ZAR\", \"KRW\":\"KRW\", \"IKR\":\"IKR\", \"LKR\":\"LKR\", \"SEK\":\"SEK\", \"CHF\":\"CHF\", \"SYP\":\"SYP\", \"TWD\":\"TWD\", \"TZS\":\"TZS\", \"THB\":\"THB\", \"TND\":\"TND\", \"TRY\":\"TRY\", \"UAH\":\"UAH\", \"AED\":\"AED\", \"GBP\":\"GBP\", \"USD\":\"USD\", \"VEB\":\"VEB\", \"VEF\":\"VEF\", \"VND\":\"VND\", \"XOF\":\"XOF\", \"YER\":\"YER\", \"ZMK\":\"ZMK\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '62b83697a14bb1656239767.png', 20, '2020-09-10 09:05:02', '2023-05-06 03:23:00'),
(16, 'PayUmoney', 'payumoney', 'INR', 'INR', '{\"merchant_key\":\"\",\"salt\":\"\"}', NULL, '0.87000000', '{\"0\":{\"INR\":\"INR\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '62b8366fef28f1656239727.png', 17, '2020-09-10 09:05:02', '2023-05-06 03:23:00'),
(17, 'Mercado Pago', 'mercadopago', 'BRL', 'BRL', '{\"access_token\":\"\"}', NULL, '0.06300000', '{\"0\":{\"ARS\":\"ARS\",\"BOB\":\"BOB\",\"BRL\":\"BRL\",\"CLF\":\"CLF\",\"CLP\":\"CLP\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"CUC\":\"CUC\",\"CUP\":\"CUP\",\"DOP\":\"DOP\",\"EUR\":\"EUR\",\"GTQ\":\"GTQ\",\"HNL\":\"HNL\",\"MXN\":\"MXN\",\"NIO\":\"NIO\",\"PAB\":\"PAB\",\"PEN\":\"PEN\",\"PYG\":\"PYG\",\"USD\":\"USD\",\"UYU\":\"UYU\",\"VEF\":\"VEF\",\"VES\":\"VES\"}}', '3715.12000000', '371500000.12000000', '0.0000', '0.50000000', 1, '', '62b8357ae75bb1656239482.png', 10, '2020-09-10 09:05:02', '2023-05-06 03:23:00'),
(18, 'Coingate', 'coingate', 'USD', 'USD', '{\"api_key\":\"\"}', NULL, '1.00000000', '{\"0\":{\"USD\":\"USD\",\"EUR\":\"EUR\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '62b8352399cb41656239395.png', 7, '2020-09-10 09:05:02', '2023-05-06 03:23:00'),
(19, 'Coinbase Commerce', 'coinbasecommerce', 'USD', 'USD', '{\"api_key\":\"\",\"secret\":\"\"}', '{\"webhook\":\"ipn\"}', '1.00000000', '{\"0\":{\"AED\":\"AED\",\"AFN\":\"AFN\",\"ALL\":\"ALL\",\"AMD\":\"AMD\",\"ANG\":\"ANG\",\"AOA\":\"AOA\",\"ARS\":\"ARS\",\"AUD\":\"AUD\",\"AWG\":\"AWG\",\"AZN\":\"AZN\",\"BAM\":\"BAM\",\"BBD\":\"BBD\",\"BDT\":\"BDT\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"BIF\":\"BIF\",\"BMD\":\"BMD\",\"BND\":\"BND\",\"BOB\":\"BOB\",\"BRL\":\"BRL\",\"BSD\":\"BSD\",\"BTN\":\"BTN\",\"BWP\":\"BWP\",\"BYN\":\"BYN\",\"BZD\":\"BZD\",\"CAD\":\"CAD\",\"CDF\":\"CDF\",\"CHF\":\"CHF\",\"CLF\":\"CLF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"CUC\":\"CUC\",\"CUP\":\"CUP\",\"CVE\":\"CVE\",\"CZK\":\"CZK\",\"DJF\":\"DJF\",\"DKK\":\"DKK\",\"DOP\":\"DOP\",\"DZD\":\"DZD\",\"EGP\":\"EGP\",\"ERN\":\"ERN\",\"ETB\":\"ETB\",\"EUR\":\"EUR\",\"FJD\":\"FJD\",\"FKP\":\"FKP\",\"GBP\":\"GBP\",\"GEL\":\"GEL\",\"GGP\":\"GGP\",\"GHS\":\"GHS\",\"GIP\":\"GIP\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"GTQ\":\"GTQ\",\"GYD\":\"GYD\",\"HKD\":\"HKD\",\"HNL\":\"HNL\",\"HRK\":\"HRK\",\"HTG\":\"HTG\",\"HUF\":\"HUF\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"IMP\":\"IMP\",\"INR\":\"INR\",\"IQD\":\"IQD\",\"IRR\":\"IRR\",\"ISK\":\"ISK\",\"JEP\":\"JEP\",\"JMD\":\"JMD\",\"JOD\":\"JOD\",\"JPY\":\"JPY\",\"KES\":\"KES\",\"KGS\":\"KGS\",\"KHR\":\"KHR\",\"KMF\":\"KMF\",\"KPW\":\"KPW\",\"KRW\":\"KRW\",\"KWD\":\"KWD\",\"KYD\":\"KYD\",\"KZT\":\"KZT\",\"LAK\":\"LAK\",\"LBP\":\"LBP\",\"LKR\":\"LKR\",\"LRD\":\"LRD\",\"LSL\":\"LSL\",\"LYD\":\"LYD\",\"MAD\":\"MAD\",\"MDL\":\"MDL\",\"MGA\":\"MGA\",\"MKD\":\"MKD\",\"MMK\":\"MMK\",\"MNT\":\"MNT\",\"MOP\":\"MOP\",\"MRO\":\"MRO\",\"MUR\":\"MUR\",\"MVR\":\"MVR\",\"MWK\":\"MWK\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"MZN\":\"MZN\",\"NAD\":\"NAD\",\"NGN\":\"NGN\",\"NIO\":\"NIO\",\"NOK\":\"NOK\",\"NPR\":\"NPR\",\"NZD\":\"NZD\",\"OMR\":\"OMR\",\"PAB\":\"PAB\",\"PEN\":\"PEN\",\"PGK\":\"PGK\",\"PHP\":\"PHP\",\"PKR\":\"PKR\",\"PLN\":\"PLN\",\"PYG\":\"PYG\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"RUB\":\"RUB\",\"RWF\":\"RWF\",\"SAR\":\"SAR\",\"SBD\":\"SBD\",\"SCR\":\"SCR\",\"SDG\":\"SDG\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"SHP\":\"SHP\",\"SLL\":\"SLL\",\"SOS\":\"SOS\",\"SRD\":\"SRD\",\"SSP\":\"SSP\",\"STD\":\"STD\",\"SVC\":\"SVC\",\"SYP\":\"SYP\",\"SZL\":\"SZL\",\"THB\":\"THB\",\"TJS\":\"TJS\",\"TMT\":\"TMT\",\"TND\":\"TND\",\"TOP\":\"TOP\",\"TRY\":\"TRY\",\"TTD\":\"TTD\",\"TWD\":\"TWD\",\"TZS\":\"TZS\",\"UAH\":\"UAH\",\"UGX\":\"UGX\",\"USD\":\"USD\",\"UYU\":\"UYU\",\"UZS\":\"UZS\",\"VEF\":\"VEF\",\"VND\":\"VND\",\"VUV\":\"VUV\",\"WST\":\"WST\",\"XAF\":\"XAF\",\"XAG\":\"XAG\",\"XAU\":\"XAU\",\"XCD\":\"XCD\",\"XDR\":\"XDR\",\"XOF\":\"XOF\",\"XPD\":\"XPD\",\"XPF\":\"XPF\",\"XPT\":\"XPT\",\"YER\":\"YER\",\"ZAR\":\"ZAR\",\"ZMW\":\"ZMW\",\"ZWL\":\"ZWL\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '62b832e8b87bc1656238824.png', 3, '2020-09-10 09:05:02', '2023-05-06 03:23:00'),
(20, 'Monnify', 'monnify', 'NGN', 'NGN', '{\"api_key\":\"\",\"secret_key\":\"\",\"contract_code\":\"\"}', NULL, '4.52000000', '{\"0\":{\"NGN\":\"NGN\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '62b835f3370b31656239603.png', 12, '2020-09-10 09:05:02', '2023-05-06 03:23:00'),
(21, 'Block.io', 'blockio', 'BTC', 'BTC', '{\"api_key\":\"\",\"api_pin\":\"\"}', '{\"cron\":\"ipn\"}', '0.00004200', '{\"1\":{\"BTC\":\"BTC\",\"LTC\":\"LTC\",\"DOGE\":\"DOGE\"}}', '10.10000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '62b8329fd8bcb1656238751.png', 2, '2020-09-10 09:05:02', '2023-05-06 03:23:00'),
(22, 'CoinPayments', 'coinpayments', 'BTC', 'BTC', '{\"merchant_id\":\"\",\"private_key\":\"\",\"public_key\":\"\"}', '{\"callback\":\"ipn\"}', '1.00000000', '{\"0\":{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\"},\"1\":{\"BTC\":\"Bitcoin\",\"BTC.LN\":\"Bitcoin (Lightning Network)\",\"LTC\":\"Litecoin\",\"CPS\":\"CPS Coin\",\"VLX\":\"Velas\",\"APL\":\"Apollo\",\"AYA\":\"Aryacoin\",\"BAD\":\"Badcoin\",\"BCD\":\"Bitcoin Diamond\",\"BCH\":\"Bitcoin Cash\",\"BCN\":\"Bytecoin\",\"BEAM\":\"BEAM\",\"BITB\":\"Bean Cash\",\"BLK\":\"BlackCoin\",\"BSV\":\"Bitcoin SV\",\"BTAD\":\"Bitcoin Adult\",\"BTG\":\"Bitcoin Gold\",\"BTT\":\"BitTorrent\",\"CLOAK\":\"CloakCoin\",\"CLUB\":\"ClubCoin\",\"CRW\":\"Crown\",\"CRYP\":\"CrypticCoin\",\"CRYT\":\"CryTrExCoin\",\"CURE\":\"CureCoin\",\"DASH\":\"DASH\",\"DCR\":\"Decred\",\"DEV\":\"DeviantCoin\",\"DGB\":\"DigiByte\",\"DOGE\":\"Dogecoin\",\"EBST\":\"eBoost\",\"EOS\":\"EOS\",\"ETC\":\"Ether Classic\",\"ETH\":\"Ethereum\",\"ETN\":\"Electroneum\",\"EUNO\":\"EUNO\",\"EXP\":\"EXP\",\"Expanse\":\"Expanse\",\"FLASH\":\"FLASH\",\"GAME\":\"GameCredits\",\"GLC\":\"Goldcoin\",\"GRS\":\"Groestlcoin\",\"KMD\":\"Komodo\",\"LOKI\":\"LOKI\",\"LSK\":\"LSK\",\"MAID\":\"MaidSafeCoin\",\"MUE\":\"MonetaryUnit\",\"NAV\":\"NAV Coin\",\"NEO\":\"NEO\",\"NMC\":\"Namecoin\",\"NVST\":\"NVO Token\",\"NXT\":\"NXT\",\"OMNI\":\"OMNI\",\"PINK\":\"PinkCoin\",\"PIVX\":\"PIVX\",\"POT\":\"PotCoin\",\"PPC\":\"Peercoin\",\"PROC\":\"ProCurrency\",\"PURA\":\"PURA\",\"QTUM\":\"QTUM\",\"RES\":\"Resistance\",\"RVN\":\"Ravencoin\",\"RVR\":\"RevolutionVR\",\"SBD\":\"Steem Dollars\",\"SMART\":\"SmartCash\",\"SOXAX\":\"SOXAX\",\"STEEM\":\"STEEM\",\"STRAT\":\"STRAT\",\"SYS\":\"Syscoin\",\"TPAY\":\"TokenPay\",\"TRIGGERS\":\"Triggers\",\"TRX\":\" TRON\",\"UBQ\":\"Ubiq\",\"UNIT\":\"UniversalCurrency\",\"USDT\":\"Tether USD (Omni Layer)\",\"VTC\":\"Vertcoin\",\"WAVES\":\"Waves\",\"XCP\":\"Counterparty\",\"XEM\":\"NEM\",\"XMR\":\"Monero\",\"XSN\":\"Stakenet\",\"XSR\":\"SucreCoin\",\"XVG\":\"VERGE\",\"XZC\":\"ZCoin\",\"ZEC\":\"ZCash\",\"ZEN\":\"Horizen\"}}', '10.00000000', '99999.00000000', '1.0000', '0.50000000', 1, '', '62b83783454e21656240003.png', 6, '2020-09-10 09:05:02', '2023-05-06 03:23:00'),
(23, 'Blockchain', 'blockchain', 'BTC', 'BTC', '{\"api_key\":\"\",\"xpub_code\":\"\"}', NULL, '1.00000000', '{\"1\":{\"BTC\":\"BTC\"}}', '100.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '62b837648373f1656239972.png', 4, '2020-09-10 09:05:02', '2023-05-06 03:23:00'),
(25, 'cashmaal', 'cashmaal', 'PKR', 'PKR', '{\"web_id\":\"\",\"ipn_key\":\"\"}', '{\"ipn_url\":\"ipn\"}', '0.85000000', '{\"0\":{\"PKR\":\"PKR\",\"USD\":\"USD\"}}', '100.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '62b8371df07bf1656239901.png', 5, '2020-09-10 09:05:02', '2023-05-06 03:23:00'),
(26, 'Midtrans', 'midtrans', 'IDR', 'IDR', '{\"client_key\":\"\",\"server_key\":\"\"}', '{\"payment_notification_url\":\"ipn\", \"finish redirect_url\":\"ipn\", \"unfinish redirect_url\":\"failed\",\"error redirect_url\":\"failed\"}', '14835.20000000', '{\"0\":{\"IDR\":\"IDR\"}}', '1.00000000', '10000.00000000', '0.0000', '0.05000000', 1, '', '64509428f1dd31683002408.png', 2, '2020-09-08 21:05:02', '2023-05-06 03:23:00'),
(27, 'peachpayments', 'peachpayments', 'USD', 'USD', '{\"Authorization_Bearer\":\"\",\"Entity_ID\":\"\",\"Recur_Channel\":\"\"}', NULL, '1.00000000', '{\"0\":{\"AED\":\"AED\",\"AFA\":\"AFA\",\"AMD\":\"AMD\",\"ANG\":\"ANG\",\"AOA\":\"AOA\",\"ARS\":\"ARS\",\"AUD\":\"AUD\",\"AWG\":\"AWG\",\"AZM\":\"AZM\",\"BAM\":\"BAM\",\"BBD\":\"BBD\",\"BDT\":\"BDT\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"BIF\":\"BIF\",\"BMD\":\"BMD\",\"BND\":\"BND\",\"BOB\":\"BOB\",\"BRL\":\"BRL\",\"BSD\":\"BSD\",\"BTN\":\"BTN\",\"BWP\":\"BWP\",\"BYR\":\"BYR\",\"BZD\":\"BZD\",\"CAD\":\"CAD\",\"CDF\":\"CDF\",\"CHF\":\"CHF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"CUP\":\"CUP\",\"CVE\":\"CVE\",\"CYP\":\"CYP\",\"CZK\":\"CZK\",\"DJF\":\"DJF\",\"DKK\":\"DKK\",\"DOP\":\"DOP\",\"DZD\":\"DZD\",\"EEK\":\"EEK\",\"EGP\":\"EGP\",\"ERN\":\"ERN\",\"ETB\":\"ETB\",\"EUR\":\"EUR\",\"FJD\":\"FJD\",\"FKP\":\"FKP\",\"GBP\":\"GBP\",\"GEL\":\"GEL\",\"GGP\":\"GGP\",\"GHC\":\"GHC\",\"GIP\":\"GIP\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"GTQ\":\"GTQ\",\"GYD\":\"GYD\",\"HKD\":\"HKD\",\"HNL\":\"HNL\",\"HRK\":\"HRK\",\"HTG\":\"HTG\",\"HUF\":\"HUF\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"IMP\":\"IMP\",\"INR\":\"INR\",\"IQD\":\"IQD\",\"IRR\":\"IRR\",\"ISK\":\"ISK\",\"JEP\":\"JEP\",\"JMD\":\"JMD\",\"JOD\":\"JOD\",\"JPY\":\"JPY\",\"KES\":\"KES\",\"KGS\":\"KGS\",\"KHR\":\"KHR\",\"KMF\":\"KMF\",\"KPW\":\"KPW\",\"KRW\":\"KRW\",\"KWD\":\"KWD\",\"KYD\":\"KYD\",\"KZT\":\"KZT\",\"LAK\":\"LAK\",\"LBP\":\"LBP\",\"LKR\":\"LKR\",\"LRD\":\"LRD\",\"LSL\":\"LSL\",\"LTL\":\"LTL\",\"LVL\":\"LVL\",\"LYD\":\"LYD\",\"MAD\":\"MAD\",\"MDL\":\"MDL\",\"MGA\":\"MGA\",\"MKD\":\"MKD\",\"MMK\":\"MMK\",\"MNT\":\"MNT\",\"MOP\":\"MOP\",\"MRO\":\"MRO\",\"MTL\":\"MTL\",\"MUR\":\"MUR\",\"MVR\":\"MVR\",\"MWK\":\"MWK\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"MZM\":\"MZM\",\"NAD\":\"NAD\",\"NGN\":\"NGN\",\"NIO\":\"NIO\",\"NOK\":\"NOK\",\"NPR\":\"NPR\",\"NZD\":\"NZD\",\"OMR\":\"OMR\",\"PAB\":\"PAB\",\"PEN\":\"PEN\",\"PGK\":\"PGK\",\"PHP\":\"PHP\",\"PKR\":\"PKR\",\"PLN\":\"PLN\",\"PTS\":\"PTS\",\"PYG\":\"PYG\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"RWF\":\"RWF\",\"SAR\":\"SAR\",\"SBD\":\"SBD\",\"SCR\":\"SCR\",\"SDD\":\"SDD\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"SHP\":\"SHP\",\"SIT\":\"SIT\",\"SKK\":\"SKK\",\"SLL\":\"SLL\",\"SOS\":\"SOS\",\"SPL\":\"SPL\",\"SRD\":\"SRD\",\"STD\":\"STD\",\"SVC\":\"SVC\",\"SYP\":\"SYP\",\"SZL\":\"SZL\",\"THB\":\"THB\",\"TJS\":\"TJS\",\"TMM\":\"TMM\",\"TND\":\"TND\",\"TOP\":\"TOP\",\"TRL\":\"TRL\",\"TRY\":\"TRY\",\"TTD\":\"TTD\",\"TVD\":\"TVD\",\"TWD\":\"TWD\",\"TZS\":\"TZS\",\"UAH\":\"UAH\",\"UGX\":\"UGX\",\"USD\":\"USD\",\"UYU\":\"UYU\",\"UZS\":\"UZS\",\"VEF\":\"VEF\",\"VND\":\"VND\",\"VUV\":\"VUV\",\"WST\":\"WST\",\"XAF\":\"XAF\",\"XAG\":\"XAG\",\"XAU\":\"XAU\",\"XCD\":\"XCD\",\"XDR\":\"XDR\",\"XOF\":\"XOF\",\"XPD\":\"XPD\",\"XPF\":\"XPF\",\"XPT\":\"XPT\",\"YER\":\"YER\",\"ZAR\":\"ZAR\",\"ZMK\":\"ZMK\",\"ZWD\":\"ZWD\"}}', '100.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '6450961eb2f3f1683002910.png', 37, '2020-09-09 03:05:02', '2023-05-06 03:23:00'),
(28, 'Nowpayments', 'nowpayments', 'BTC', 'BTC', '{\"api_key\":\"\"}', '{\"cron\":\"ipn\"}', '1.00000000', '{\"1\":{\"BTG\":\"BTG\",\"ETH\":\"ETH\",\"XMR\":\"XMR\",\"ZEC\":\"ZEC\",\"XVG\":\"XVG\",\"ADA\":\"ADA\",\"LTC\":\"LTC\",\"BCH\":\"BCH\",\"QTUM\":\"QTUM\",\"DASH\":\"DASH\",\"XLM\":\"XLM\",\"XRP\":\"XRP\",\"XEM\":\"XEM\",\"DGB\":\"DGB\",\"LSK\":\"LSK\",\"DOGE\":\"DOGE\",\"TRX\":\"TRX\",\"KMD\":\"KMD\",\"REP\":\"REP\",\"BAT\":\"BAT\",\"ARK\":\"ARK\",\"WAVES\":\"WAVES\",\"BNB\":\"BNB\",\"XZC\":\"XZC\",\"NANO\":\"NANO\",\"TUSD\":\"TUSD\",\"VET\":\"VET\",\"ZEN\":\"ZEN\",\"GRS\":\"GRS\",\"FUN\":\"FUN\",\"NEO\":\"NEO\",\"GAS\":\"GAS\",\"PAX\":\"PAX\",\"USDC\":\"USDC\",\"ONT\":\"ONT\",\"XTZ\":\"XTZ\",\"LINK\":\"LINK\",\"RVN\":\"RVN\",\"BNBMAINNET\":\"BNBMAINNET\",\"ZIL\":\"ZIL\",\"BCD\":\"BCD\",\"USDT\":\"USDT\",\"USDTERC20\":\"USDTERC20\",\"CRO\":\"CRO\",\"DAI\":\"DAI\",\"HT\":\"HT\",\"WABI\":\"WABI\",\"BUSD\":\"BUSD\",\"ALGO\":\"ALGO\",\"USDTTRC20\":\"USDTTRC20\",\"GT\":\"GT\",\"STPT\":\"STPT\",\"AVA\":\"AVA\",\"SXP\":\"SXP\",\"UNI\":\"UNI\",\"OKB\":\"OKB\",\"BTC\":\"BTC\"}}', '10.10000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '645099d3d357e1683003859.jpg', 25, '2020-09-08 21:05:02', '2023-05-06 03:23:00'),
(29, 'Khalti Payment', 'khalti', 'NPR', 'NPR', '{\"secret_key\":\"\",\"public_key\":\"\"}', NULL, '132.04000000', '{\"0\":{\"NPR\":\"NPR\"}}', '100.00000000', '10000.00000000', '0.0000', '0.00000000', 1, '', '645096004c78b1683002880.webp', 31, '2020-09-08 21:05:02', '2023-05-06 03:23:00'),
(30, 'MAGUA PAY', 'swagger', 'EUR', 'EUR', '{\"MAGUA_PAY_ACCOUNT\":\"\",\"MerchantKey\":\"\",\"Secret\":\"\"}', NULL, '1.00000000', '{\"0\":{\"EUR\":\"EUR\"}}', '100.00000000', '10000.00000000', '0.0000', '0.00000000', 1, '', '6450977217b261683003250.png', 28, '2020-09-08 21:05:02', '2023-05-06 03:23:00'),
(31, 'Free kassa', 'freekassa', 'RUB', 'RUB', '{\"merchant_id\":\"\",\"merchant_key\":\"\",\"secret_word\":\"\",\"secret_word2\":\"\"}', '{\"ipn_url\":\"ipn\"}', '1.00000000', '{\"0\":{\"RUB\":\"RUB\",\"USD\":\"USD\",\"EUR\":\"EUR\",\"UAH\":\"UAH\",\"KZT\":\"KZT\"}}', '10.00000000', '10000.00000000', '0.1000', '0.00000000', 1, '', '645095cedb7031683002830.jpg', 21, '2020-09-08 21:05:02', '2023-05-06 03:23:00'),
(32, 'Konnect', 'konnect', 'USD', 'USD', '{\"api_key\":\"\",\"receiver_wallet_Id\":\"\"}', '{\"webhook\":\"ipn\"}', '1.00000000', '{\"0\":{\"TND\":\"TND\",\"EUR\":\"EUR\",\"USD\":\"USD\"}}', '1.00000000', '10000.00000000', '0.0000', '0.00000000', 1, '', '6450949035bb31683002512.jpg', 18, '2020-09-08 21:05:02', '2023-05-06 03:23:00'),
(33, 'Mypay Np', 'mypay', 'NPR', 'NPR', '{\"merchant_username\":\"\",\"merchant_api_password\":\"\",\"merchant_id\":\"\",\"api_key\":\"\"}', NULL, '1.00000000', '{\"0\":{\"NPR\":\"NPR\"}}', '1.00000000', '100000.00000000', '1.5000', '0.00000000', 1, '', '6450960f940631683002895.png', 34, '2020-09-08 21:05:02', '2023-05-06 03:23:00'),
(34, 'PayThrow', 'paythrow', 'USD', 'USD', '{\"client_id\":\"\",\"client_secret\":\"\"}', '{\"ipn_url\":\"ipn\"}', '1.00000000', '{\"0\":{\"PKR\":\"PKR\",\"USD\":\"USD\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '64509442929ee1683002434.jpg', 4, '2020-09-09 03:05:02', '2023-05-06 03:23:00'),
(35, 'IME PAY', 'imepay', 'NPR', 'NPR', '{\"MerchantModule\":\"\",\"MerchantCode\":\"\",\"username\":\"\",\"password\":\"\"}', NULL, '1.00000000', '{\"0\":{\"NPR\":\"NPR\"}}', '1.00000000', '100000.00000000', '1.5000', '0.00000000', 1, '', '6450945325a231683002451.png', 7, '2020-09-08 21:05:02', '2023-05-06 03:23:00'),
(36, 'Cashonex Hosted', 'cashonexHosted', 'USD', 'USD', '{\"idempotency_key\":\"\",\"salt\":\"\"}', NULL, '1.00000000', '{\"0\":{\"USD\":\"USD\"}}', '1.00000000', '1000.00000000', '0.0000', '0.00000000', 1, '', '645097d62fe381683003350.jpg', 11, '2023-04-02 18:31:33', '2023-05-06 03:23:00'),
(37, 'cashonex', 'cashonex', 'USD', 'USD', '{\"idempotency_key\":\"\",\"salt\":\"\"}', NULL, '1.00000000', '{\"0\":{\"USD\":\"USD\"}}', '1.00000000', '1000.00000000', '0.0000', '0.00000000', 1, '', '645097cab63701683003338.jpg', 13, '2023-04-02 18:34:54', '2023-05-06 03:23:00'),
(38, 'Binance', 'binance', 'USDT', 'USDT', '{\"mercent_api_key\":\"\",\"mercent_secret\":\"\"}', NULL, '1.00000000', '{\"1\":{\"ADA\":\"ADA\",\"ATOM\":\"ATOM\",\"AVA\":\"AVA\",\"BCH\":\"BCH\",\"BNB\":\"BNB\",\"BTC\":\"BTC\",\"BUSD\":\"BUSD\",\"CTSI\":\"CTSI\",\"DASH\":\"DASH\",\"DOGE\":\"DOGE\",\"DOT\":\"DOT\",\"EGLD\":\"EGLD\",\"EOS\":\"EOS\",\"ETC\":\"ETC\",\"ETH\":\"ETH\",\"FIL\":\"FIL\",\"FRONT\":\"FRONT\",\"FTM\":\"FTM\",\"GRS\":\"GRS\",\"HBAR\":\"HBAR\",\"IOTX\":\"IOTX\",\"LINK\":\"LINK\",\"LTC\":\"LTC\",\"MANA\":\"MANA\",\"MATIC\":\"MATIC\",\"NEO\":\"NEO\",\"OM\":\"OM\",\"ONE\":\"ONE\",\"PAX\":\"PAX\",\"QTUM\":\"QTUM\",\"STRAX\":\"STRAX\",\"SXP\":\"SXP\",\"TRX\":\"TRX\",\"TUSD\":\"TUSD\",\"UNI\":\"UNI\",\"USDC\":\"USDC\",\"USDT\":\"USDT\",\"WRX\":\"WRX\",\"XLM\":\"XLM\",\"XMR\":\"XMR\",\"XRP\":\"XRP\",\"XTZ\":\"XTZ\",\"XVS\":\"XVS\",\"ZEC\":\"ZEC\",\"ZIL\":\"ZIL\"}}', '1.00000000', '1000.00000000', '0.0000', '0.00000000', 1, '', '64509807727df1683003399.png', 9, '2023-04-02 19:36:14', '2023-05-06 03:23:00'),
(1000, 'Bank Transfer', 'bank-transfer', 'BDT', 'BDT', '{\"AccountNumber\":{\"field_name\":\"AccountNumber\",\"field_level\":\"Account Number\",\"type\":\"text\",\"validation\":\"required\"},\"BeneficiaryName\":{\"field_name\":\"BeneficiaryName\",\"field_level\":\"Beneficiary Name\",\"type\":\"text\",\"validation\":\"required\"},\"NID\":{\"field_name\":\"NID\",\"field_level\":\"NID\",\"type\":\"file\",\"validation\":\"nullable\"},\"Address\":{\"field_name\":\"Address\",\"field_level\":\"Address\",\"type\":\"textarea\",\"validation\":\"nullable\"}}', NULL, '84.00000000', NULL, '10.00000000', '10000.00000000', '0.0000', '5.00000000', 1, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '62b837f1110da1656240113.jpg', 1, '2022-01-02 03:18:56', '2022-08-17 02:50:40');

-- --------------------------------------------------------

--
-- Table structure for table `gift_cards`
--

CREATE TABLE `gift_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `image` text DEFAULT NULL,
  `thumb` varchar(91) DEFAULT NULL,
  `discount_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '	0=>fixed, 1=> percent',
  `discount_amount` int(11) NOT NULL DEFAULT 0,
  `discount_status` tinyint(4) NOT NULL DEFAULT 1,
  `featured` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gift_card_codes`
--

CREATE TABLE `gift_card_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gift_card_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gift_card_service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=> deactive, 1=> active,2=> used',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gift_card_details`
--

CREATE TABLE `gift_card_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gift_cards_id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gift_card_sells`
--

CREATE TABLE `gift_card_sells` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `gift_card_service_id` int(11) DEFAULT NULL,
  `gift_card_id` int(11) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `code` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=> Complete',
  `payment_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=> active, 2=> rejected',
  `transaction` varchar(50) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `stock_short` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gift_card_services`
--

CREATE TABLE `gift_card_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gift_cards_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `identify_forms`
--

CREATE TABLE `identify_forms` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `services_form` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `identify_forms`
--

INSERT INTO `identify_forms` (`id`, `name`, `slug`, `services_form`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Driving License', 'driving-license', '{\"FrontPage\":{\"field_name\":\"FrontPage\",\"field_level\":\"Front Page\",\"type\":\"file\",\"field_length\":\"2500\",\"length_type\":\"max\",\"validation\":\"required\"},\"RearPage\":{\"field_name\":\"RearPage\",\"field_level\":\"Rear Page\",\"type\":\"file\",\"field_length\":\"2500\",\"length_type\":\"max\",\"validation\":\"required\"},\"PassportNumber\":{\"field_name\":\"PassportNumber\",\"field_level\":\"Passport Number\",\"type\":\"text\",\"field_length\":\"20\",\"length_type\":\"max\",\"validation\":\"required\"},\"Address\":{\"field_name\":\"Address\",\"field_level\":\"Address\",\"type\":\"textarea\",\"field_length\":\"300\",\"length_type\":\"max\",\"validation\":\"required\"}}', 1, '2021-09-30 22:07:40', '2022-08-10 03:35:56'),
(2, 'Passport', 'passport', '{\"PassportNumber\":{\"field_name\":\"PassportNumber\",\"field_level\":\"Passport Number\",\"type\":\"text\",\"field_length\":\"25\",\"length_type\":\"max\",\"validation\":\"required\"},\"PassportImage\":{\"field_name\":\"PassportImage\",\"field_level\":\"Passport Image\",\"type\":\"file\",\"field_length\":\"1040\",\"length_type\":\"max\",\"validation\":\"required\"}}', 1, '2021-09-30 22:16:23', '2022-05-17 06:29:40'),
(4, 'National ID', 'national-id', '{\"FrontPage\":{\"field_name\":\"FrontPage\",\"field_level\":\"Front Page\",\"type\":\"file\",\"field_length\":\"500\",\"length_type\":\"max\",\"validation\":\"required\"},\"RearPage\":{\"field_name\":\"RearPage\",\"field_level\":\"Rear Page\",\"type\":\"file\",\"field_length\":\"500\",\"length_type\":\"max\",\"validation\":\"required\"},\"NidNumber\":{\"field_name\":\"NidNumber\",\"field_level\":\"Nid Number\",\"type\":\"text\",\"field_length\":\"10\",\"length_type\":\"digits\",\"validation\":\"required\"},\"Address\":{\"field_name\":\"Address\",\"field_level\":\"Address\",\"type\":\"textarea\",\"field_length\":\"300\",\"length_type\":\"max\",\"validation\":\"required\"}}', 1, '2021-10-01 07:58:40', '2022-05-17 06:29:48');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kycs`
--

CREATE TABLE `kycs` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `kyc_type` varchar(20) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=> Approved, 2 => Reject',
  `feedback` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_name` varchar(10) DEFAULT NULL,
  `flag` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = active, 0 = inactive',
  `rtl` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `short_name`, `flag`, `is_active`, `rtl`, `created_at`, `updated_at`) VALUES
(1, 'English', 'US', NULL, 1, 0, '2021-12-17 10:00:55', '2021-12-17 10:00:55'),
(2, 'Spanish', 'ES', NULL, 1, 1, '2022-06-18 06:56:15', '2022-06-18 06:56:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2020_09_29_074810_create_jobs_table', 1),
(32, '2020_11_12_075639_create_transactions_table', 6),
(36, '2020_10_14_113046_create_admins_table', 9),
(42, '2020_11_24_064711_create_email_templates_table', 11),
(48, '2014_10_12_000000_create_users_table', 13),
(51, '2020_09_16_103709_create_controls_table', 15),
(59, '2021_01_03_061604_create_tickets_table', 17),
(60, '2021_01_03_061834_create_ticket_messages_table', 18),
(61, '2021_01_03_065607_create_ticket_attachments_table', 18),
(62, '2021_01_07_095019_create_funds_table', 19),
(66, '2021_01_21_050226_create_languages_table', 21),
(69, '2020_12_17_075238_create_sms_controls_table', 23),
(70, '2021_01_26_051716_create_site_notifications_table', 24),
(72, '2021_01_26_075451_create_notify_templates_table', 25),
(73, '2021_01_28_074544_create_contents_table', 26),
(74, '2021_01_28_074705_create_content_details_table', 26),
(75, '2021_01_28_074829_create_content_media_table', 26),
(76, '2021_01_28_074847_create_templates_table', 26),
(77, '2021_01_28_074905_create_template_media_table', 26),
(83, '2021_02_03_100945_create_subscribers_table', 27),
(86, '2021_01_21_101641_add_language_to_email_templates_table', 28),
(87, '2021_02_14_064722_create_manage_plans_table', 28),
(88, '2021_02_14_072251_create_manage_times_table', 29),
(89, '2021_03_09_100340_create_investments_table', 30),
(90, '2021_03_13_132414_create_payout_methods_table', 31),
(91, '2021_03_13_133534_create_payout_logs_table', 32),
(93, '2021_03_18_091710_create_referral_bonuses_table', 33),
(94, '2021_10_25_060950_create_money_transfers_table', 34),
(96, '2021_03_18_091710_create_users_table', 35),
(98, '2022_06_22_074106_create_category_services_table', 36),
(99, '2022_06_23_050328_create_game_vouchers_table', 37),
(100, '2022_06_23_051102_create_game_voucher_details_table', 38),
(101, '2022_06_23_111509_create_voucher_services_table', 39),
(102, '2022_06_25_052005_create_voucher_codes_table', 40),
(103, '2022_06_27_062531_create_top_up_sells_table', 40),
(104, '2022_06_27_115225_create_voucher_sells_table', 41),
(105, '2022_06_23_050328_create_gift_card_table', 42),
(106, '2022_06_29_070607_create_gift_card_details_table', 43),
(107, '2022_06_29_070703_create_gift_card_codes_table', 44),
(108, '2022_06_29_070729_create_gift_card_sells_table', 44),
(109, '2022_06_29_070745_create_gift_card_services_table', 44),
(110, '2022_07_17_094845_create_sell_post_categories_table', 45),
(111, '2022_07_17_095206_create_sell_post_category_details_table', 46),
(112, '2022_07_17_133306_create_game_sells_table', 47),
(113, '2022_07_19_084725_create_activity_log_table', 48),
(114, '2022_07_19_105148_create_activity_logs_table', 49),
(115, '2022_07_24_054446_create_sell_post_offers_table', 50),
(116, '2022_07_26_054320_create_sell_post_chats_table', 50),
(117, '2022_07_30_201621_create_sell_post_payments_table', 51),
(118, '2023_05_02_115859_alter_rows_to_table', 52);

-- --------------------------------------------------------

--
-- Table structure for table `notify_templates`
--

CREATE TABLE `notify_templates` (
  `id` int(11) NOT NULL,
  `language_id` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `template_key` varchar(191) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `short_keys` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `notify_for` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=> Admin, 0=> User',
  `lang_code` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notify_templates`
--

INSERT INTO `notify_templates` (`id`, `language_id`, `name`, `template_key`, `body`, `short_keys`, `status`, `notify_for`, `lang_code`, `created_at`, `updated_at`) VALUES
(1, 1, 'SUPPORT TICKET CREATE', 'SUPPORT_TICKET_CREATE', '[[username]] create a ticket\r\nTicket : [[ticket_id]]\r\n\r\n', '{\"ticket_id\":\"Support Ticket ID\",\"username\":\"username\"}', 1, 1, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(2, 1, 'SUPPORT TICKET REPLIED', 'SUPPORT_TICKET_REPLIED', '[[username]] replied  ticket\r\nTicket : [[ticket_id]]\r\n\r\n', '{\"ticket_id\":\"Support Ticket ID\",\"username\":\"username\"}', 1, 1, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(3, 1, 'ADMIN REPLIED SUPPORT TICKET ', 'ADMIN_REPLIED_TICKET', 'Admin replied  \r\nTicket : [[ticket_id]]', '{\"ticket_id\":\"Support Ticket ID\"}', 1, 0, 'en', '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(4, 1, 'ADMIN DEPOSIT NOTIFICATION', 'PAYMENT_COMPLETE', '[[username]] deposited [[amount]] [[currency]] via [[gateway]]\r\n', '{\"gateway\":\"gateway\",\"amount\":\"amount\",\"currency\":\"currency\",\"username\":\"username\"}', 1, 1, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(7, 1, 'NEW USER ADDED', 'ADDED_USER', '[[username]] has been joined\r\n\r\n', '{\"username\":\"username\"}', 1, 1, 'en', '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(11, 1, 'PAYMENT REQUEST TO ADMIN', 'PAYMENT_REQUEST', '[[username]] deposit request [[amount]] [[currency]] via [[gateway]]\r\n', '{\"gateway\":\"gateway\",\"amount\":\"amount\",\"currency\":\"currency\",\"username\":\"username\"}', 1, 1, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(12, 1, 'PAYMENT REJECTED', 'PAYMENT_REJECTED', '[[amount]] [[currency]] payment has been rejected \r\n\r\n', '{\"amount\":\"amount\",\"currency\":\"currency\",\"feedback\":\"Admin feedback\"}', 1, 0, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(13, 1, 'KYC APPROVED', 'KYC_APPROVED', '[[kyc_type]] has been approved', '{\"kyc_type\":\"kyc type\"}', 1, 0, NULL, '2021-12-17 10:01:53', '2022-08-10 03:37:42'),
(14, 1, 'KYC REJECTED', 'KYC_REJECTED', '[[kyc_type]] has been rejected\r\n\r\n', '{\"kyc_type\":\"kyc type\"}', 1, 0, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(15, 1, 'TOP UP PAYMENT COMPLETE To Admin', 'TOP_UP_PAYMENT_COMPLETE_ADMIN', '[[username]] paid [[amount]] [[currency]] via [[gateway]] for Game top\r\n', '{\"gateway\":\"gateway\",\"amount\":\"amount\",\"currency\":\"currency\",\"username\":\"username\"}', 1, 1, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(16, 1, 'Payment Complete For Top Up', 'TOP_UP_PAYMENT_COMPLETE', 'You paid [[amount]] [[currency]] via [[gateway]] for Game top up\r\n', '{\"gateway\":\"gateway\",\"amount\":\"amount\",\"currency\":\"currency\"}', 1, 0, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(17, 1, 'VOUCHER PAYMENT COMPLETE To Admin', 'VOUCHER_PAYMENT_COMPLETE_ADMIN', '[[username]] paid [[amount]] [[currency]] via [[gateway]] for voucher payment', '{\"gateway\":\"gateway\",\"amount\":\"amount\",\"currency\":\"currency\",\"username\":\"username\"}', 1, 1, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(18, 1, 'Payment Complete For Top Up', 'VOUCHER_PAYMENT_COMPLETE', 'You paid [[amount]] [[currency]] via [[gateway]] for Voucher', '{\"gateway\":\"gateway\",\"amount\":\"amount\",\"currency\":\"currency\"}', 1, 0, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(19, 1, 'TOP UP COMPLETE ', 'TOP_UP_COMPLETE', 'Your [[service]] top up order has been complete\r\n\r\nTransaction [[transaction]]', '{\"service\":\"Top Up Service\",\"transaction\":\"Order transaction\"}', 1, 0, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(20, 1, 'VOUCHER_COMPLETE', 'VOUCHER_COMPLETE', 'Your [[service]] voucher order has been complete\r\n\r\nTransaction [[transaction]]', '{\"service\":\"Voucher Service\",\"transaction\":\"Order transaction\"}', 1, 0, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(21, 1, 'Payment Complete For Gift Card', 'GIFT_CARD_PAYMENT_COMPLETE', 'You paid [[amount]] [[currency]] via [[gateway]] for Gift Card', '{\"gateway\":\"gateway\",\"amount\":\"amount\",\"currency\":\"currency\"}', 1, 0, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(22, 1, 'GIFT CARD PAYMENT COMPLETE To Admin', 'GIFT_CARD_PAYMENT_COMPLETE_ADMIN', '[[username]] paid [[amount]] [[currency]] via [[gateway]] for gift card payment', '{\"gateway\":\"gateway\",\"amount\":\"amount\",\"currency\":\"currency\",\"username\":\"username\"}', 1, 1, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(24, 1, 'SELL_APPROVE', 'SELL_APPROVE', 'Your [[title]] sell post has been [[status]].\r\n\r\nComments: [[comments]]\r\n', '{\"title\":\"Title\",\"status:Status\",\"short_comment\":\"comments\"}', 1, 0, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(25, 1, 'SELL_OFFER', 'SELL_OFFER', '[[title]] sell post has been offered by [[offer_by]]\r\nAmount: [[amount]].\r\n\r\n', '{\"title\":\"Title\",\"amount:Amount\",\"offer_by\":\"Offer By\"}', 1, 0, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(26, 1, 'SELL_RE_OFFER', 'SELL_RE_OFFER', '[[title]] sell post has been re offered by [[offer_by]]\r\nAmount: [[amount]].\r\n\r\n', '{\"title\":\"Title\",\"amount:Amount\",\"offer_by\":\"Offer By\"}', 1, 0, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(27, 1, 'OFFER_REJECT', 'OFFER_REJECT', '[[title]] offer amount [[amount]] has been rejected \r\n\r\n\r\n', '{\"title\":\"Title\",\"amount:Amount\"}', 1, 0, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(28, 1, 'OFFER_ACCEPTED', 'OFFER_ACCEPTED', '[[title]] offer amount [[amount]] has been accepted \r\n\r\n\r\n', '{\"title\":\"Title\",\"amount\":\"Amount\"}', 1, 0, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(29, 1, 'PAYMENT_LOCK', 'PAYMENT_LOCK', '[[title]] amount [[amount]] has been waiting for payment.\r\n\r\n\r\n\r\n', '{\"title\":\"Title\",\"amount:Amount\"}', 1, 0, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(30, 1, 'SELL POST PAYMENT COMPLETE To Admin', 'SELL_POST_PAYMENT_COMPLETE_ADMIN', '[[username]] paid [[amount]] [[currency]] via [[gateway]] for Sell Post\r\n', '{\"gateway\":\"gateway\",\"amount\":\"amount\",\"currency\":\"currency\",\"username\":\"username\"}', 1, 1, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(31, 1, 'Payment Complete For Sell Post', 'SELL_POST_PAYMENT_COMPLETE', 'You paid [[amount]] [[currency]] via [[gateway]] for Sell Post\r\n', '{\"gateway\":\"gateway\",\"amount\":\"amount\",\"currency\":\"currency\"}', 1, 0, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(32, 1, 'Payment Complete For Sell Post', 'SELL_POST_PAYMENT_COMPLETE_AUTHOR', 'Your sell post  [[amount]] [[currency]] payment has been completed via [[gateway]]\r\n', '{\"gateway\":\"gateway\",\"amount\":\"amount\",\"currency\":\"currency\"}', 1, 0, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(36, 2, 'KYC APPROVED', 'KYC_APPROVED', '[[kyc_type]] has been approved\r\n', '{\"kyc_type\":\"kyc type\"}', 1, 0, 'ES', '2022-08-10 03:37:24', '2022-08-10 03:37:24'),
(37, 2, 'Payment Complete For Gift Card', 'GIFT_CARD_PAYMENT_COMPLETE', 'You paid [[amount]] [[currency]] via [[gateway]] for Gift Card', '{\"gateway\":\"gateway\",\"amount\":\"amount\",\"currency\":\"currency\"}', 1, 0, 'ES', '2022-08-16 05:35:07', '2022-08-16 05:35:07'),
(38, 2, 'OFFER_REJECT', 'OFFER_REJECT', '[[title]] offer amount [[amount]] has been rejected \r\n\r\n\r\n', NULL, 1, 0, 'ES', '2022-08-28 06:29:16', '2022-08-28 06:29:16'),
(39, 2, 'ADMIN REPLIED SUPPORT TICKET ', 'ADMIN_REPLIED_TICKET', 'Admin replied  \r\nTicket : [[ticket_id]]', '{\"ticket_id\":\"Support Ticket ID\"}', 1, 0, 'ES', '2022-10-29 17:16:58', '2022-10-29 17:16:58');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payout_logs`
--

CREATE TABLE `payout_logs` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `method_id` int(11) UNSIGNED DEFAULT NULL,
  `amount` decimal(11,2) DEFAULT NULL,
  `charge` decimal(11,2) DEFAULT NULL,
  `net_amount` decimal(11,2) DEFAULT NULL,
  `information` text DEFAULT NULL,
  `feedback` text DEFAULT NULL,
  `trx_id` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '1=> pending, 2=> success, 3=> cancel,',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `response_id` varchar(255) DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `meta_field` text DEFAULT NULL,
  `last_error` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payout_methods`
--

CREATE TABLE `payout_methods` (
  `id` int(11) UNSIGNED NOT NULL,
  `methodName` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `min_limit` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `max_limit` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `fixed_charge` decimal(11,2) DEFAULT NULL,
  `percentage_charge` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `is_active` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = active, 0 = inactive',
  `inputForm` text DEFAULT NULL,
  `duration` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `bank_name` text DEFAULT NULL,
  `banks` text DEFAULT NULL,
  `parameters` text DEFAULT NULL,
  `extra_parameters` text DEFAULT NULL,
  `currency_lists` text DEFAULT NULL,
  `supported_currency` text DEFAULT NULL,
  `convert_rate` text DEFAULT NULL,
  `is_automatic` tinyint(4) DEFAULT 0,
  `is_sandbox` tinyint(4) DEFAULT 0,
  `environment` tinyint(4) DEFAULT 0,
  `is_auto_update` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payout_methods`
--

INSERT INTO `payout_methods` (`id`, `methodName`, `logo`, `min_limit`, `max_limit`, `fixed_charge`, `percentage_charge`, `is_active`, `inputForm`, `duration`, `created_at`, `updated_at`, `code`, `description`, `bank_name`, `banks`, `parameters`, `extra_parameters`, `currency_lists`, `supported_currency`, `convert_rate`, `is_automatic`, `is_sandbox`, `environment`, `is_auto_update`) VALUES
(1, 'Wire Transfer', '644d10de29c871682772190.jpg', '20.00000000', '2000.00000000', '10.00', '0.00000000', 1, '{\"email\":{\"field_name\":\"email\",\"field_level\":\"Email\",\"type\":\"text\",\"validation\":\"required\"},\"nid_number\":{\"field_name\":\"nid_number\",\"field_level\":\"NID Number\",\"type\":\"text\",\"validation\":\"required\"},\"passport_number\":{\"field_name\":\"passport_number\",\"field_level\":\"Passport Number\",\"type\":\"text\",\"validation\":\"nullable\"}}', '1-2 Hours', '2021-12-17 10:02:14', '2021-12-17 10:02:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1),
(2, 'Bank Transfer', '6064181b137c91617172507.jpg', '10.00000000', '100.00000000', '10.00', '1.00000000', 1, '{\"BankName\":{\"name\":\"BankName\",\"label\":\"Bank Name\",\"type\":\"text\",\"validation\":\"required\"},\"TransactionProve\":{\"name\":\"TransactionProve\",\"label\":\"Transaction Prove\",\"type\":\"file\",\"validation\":\"required\"},\"YourAddress\":{\"name\":\"YourAddress\",\"label\":\"Your Address\",\"type\":\"textarea\",\"validation\":\"required\"},\"AccountNumber\":{\"name\":\"AccountNumber\",\"label\":\"Account Number\",\"type\":\"text\",\"validation\":\"required\"}}', '1-2 hours maximum', '2021-12-17 10:02:14', '2023-05-02 09:14:33', NULL, NULL, NULL, NULL, '[]', NULL, NULL, '[]', '[]', 0, 0, NULL, 1),
(100, 'Flutterwave', '644df097e76321682829463.jpg', '0.00000000', '500.00000000', '2.00', '0.00000000', 1, NULL, NULL, '2020-12-27 13:23:36', '2023-05-06 03:25:22', 'flutterwave', 'Payment will receive within 1 days', '{\"0\":{\"NGN BANK\":\"NGN BANK\",\"NGN DOM\":\"NGN DOM\",\"GHS BANK\":\"GHS BANK\",\"KES BANK\":\"KES BANK\",\"ZAR BANK\":\"ZAR BANK\",\"INTL EUR & GBP\":\"INTL EUR & GBP\",\"INTL USD\":\"INTL USD\",\"INTL OTHERS\":\"INTL OTHERS\",\"FRANCOPGONE\":\"FRANCOPGONE\",\"XAF/XOF MOMO\":\"XAF/XOF MOMO\",\"mPesa\":\"mPesa\",\"Rwanda Momo\":\"Rwanda Momo\",\"Uganda Momo\":\"Uganda Momo\",\"Zambia Momo\":\"Zambia Momo\",\"Barter\":\"Barter\",\"FLW\":\"FLW\"}}', '[\"NGN BANK\",\"NGN DOM\",\"GHS BANK\",\"INTL USD\"]', '{\"Public_Key\":\"\",\"Secret_Key\":\"\",\"Encryption_Key\":\"\"}', NULL, '{\"USD\":\"USD\",\"KES\":\"KES\",\"GHS\":\"GHS\",\"NGN\":\"NGN\",\"GBP\":\"GBP\",\"EUR\":\"EUR\",\"UGX\":\"UGX\",\"TZS\":\"TZS\"}', '{\"USD\":\"USD\",\"KES\":\"KES\",\"GHS\":\"GHS\",\"NGN\":\"NGN\",\"GBP\":\"GBP\",\"EUR\":\"EUR\",\"UGX\":\"UGX\",\"TZS\":\"TZS\"}', '{\"USD\":\"1\",\"KES\":\"124.1\",\"GHS\":\"12.3\",\"NGN\":\"455.06\",\"GBP\":\"0.81\",\"EUR\":\"0.92\",\"UGX\":\"3677.34\",\"TZS\":\"2335\"}', 1, 0, 1, 1),
(101, 'Razorpay', '644df0ef8d3b41682829551.jpg', '0.00000000', '5000.00000000', '2.00', '0.00000000', 1, '{\"name\":{\"name\":\"name\",\"label\":\"Name\",\"type\":\"text\",\"validation\":\"required\"},\"email\":{\"name\":\"email\",\"label\":\"Email\",\"type\":\"text\",\"validation\":\"required\"},\"ifsc\":{\"name\":\"ifsc\",\"label\":\"IFSC\",\"type\":\"text\",\"validation\":\"required\"},\"account_number\":{\"name\":\"account_number\",\"label\":\"Account number\",\"type\":\"text\",\"validation\":\"required\"}}', NULL, '2020-12-27 13:23:36', '2023-05-06 03:25:22', 'razorpay', 'Payment will receive within 1 days', '', NULL, '{\"account_number\":\"\",\"Key_Id\":\"\",\"Key_Secret\":\"\"}', '{\"webhook\":\"payout\"}', '{\"INR\":\"INR\"}', '{\"INR\":\"INR\"}', '{\"INR\":\"80.98\"}', 1, 0, 0, 1),
(103, 'Paystack', '644df0cb408ea1682829515.jpg', '0.00000000', '500.00000000', '2.30', '0.00000000', 1, '{\"name\":{\"name\":\"name\",\"label\":\"Name\",\"type\":\"text\",\"validation\":\"required\"},\"account_number\":{\"name\":\"account_number\",\"label\":\"Account  Number\",\"type\":\"text\",\"validation\":\"required\"}}', NULL, '2020-12-27 13:23:36', '2023-05-06 03:25:22', 'paystack', 'Payment will receive within 1 days', '', NULL, '{\"Public_key\":\"\",\"Secret_key\":\"\"}', '{\"webhook\":\"payout\"}', '{\"NGN\":\"NGN\",\"GHS\":\"GHS\",\"ZAR\":\"ZAR\"}', '{\"NGN\":\"NGN\",\"GHS\":\"GHS\",\"ZAR\":\"ZAR\"}', '{\"NGN\":\"455\",\"GHS\":\"2.3\",\"ZAR\":\"17.2\"}', 1, 0, 0, 1),
(104, 'Coinbase', '644df121be8361682829601.jpg', '0.00000000', '100.00000000', '2.00', '0.00000000', 1, '{\"crypto_address\":{\"name\":\"crypto_address\",\"label\":\"Crypto Address\",\"type\":\"text\",\"validation\":\"required\"}}', NULL, '2020-12-27 13:23:36', '2023-05-06 03:25:22', 'coinbase', 'Payment will receive within 1 days', '', NULL, '{\"API_Key\":\"\",\"API_Secret\":\"\",\"Api_Passphrase\":\"\"}', '{\"webhook\":\"payout\"}', '{\"BNB\":\"BNB\",\"BTC\":\"BTC\",\"XRP\":\"XRP\",\"ETH\":\"ETH\",\"ETH2\":\"ETH2\",\"USDT\":\"USDT\",\"BCH\":\"BCH\",\"LTC\":\"LTC\",\"XMR\":\"XMR\",\"TON\":\"TON\"}', '{\"BNB\":\"BNB\",\"BTC\":\"BTC\",\"XRP\":\"XRP\",\"ETH\":\"ETH\",\"ETH2\":\"ETH2\",\"USDT\":\"USDT\",\"BCH\":\"BCH\",\"LTC\":\"LTC\",\"XMR\":\"XMR\",\"TON\":\"TON\"}', '{\"BNB\":\"0.0032866584364651\",\"BTC\":\"4.3438047580189E-5\",\"XRP\":\"2.4317656276014\",\"ETH\":\"0.00060498363899103\",\"ETH2\":\"1\",\"USDT\":\"0.99970684227142\",\"BCH\":\"0.0077663435649339\",\"LTC\":\"0.011189496085365\",\"XMR\":\"0.0056633319909619\",\"TON\":\"0.43646828144729\"}', 1, 0, 0, 1),
(105, 'Perfect Money', '644df0de385e01682829534.jpg', '0.00000000', '6000.00000000', '2.00', '0.00000000', 1, '{\"account_number\":{\"name\":\"account_number\",\"label\":\"Account  Number\",\"type\":\"text\",\"validation\":\"required\"}}', NULL, '2020-12-27 13:23:36', '2023-05-06 03:25:22', 'perfectmoney', 'Payment will receive within 1 days', '', NULL, '{\"Passphrase\":\"\",\"Account_ID\":\"\",\"Payer_Account\":\"\"}', '', '{\"USD\":\"USD\",\"EUR\":\"EUR\"}', '{\"USD\":\"USD\",\"EUR\":\"EUR\"}', '{\"USD\":\"1\",\"EUR\":\"0.92\"}', 1, 0, 0, 1),
(106, 'Paypal', '644df0b2917f11682829490.jpg', '2.00000000', '2000.00000000', '5.00', '0.00000000', 1, '{\"receiver\":{\"name\":\"receiver\",\"label\":\"Receiver\",\"type\":\"text\",\"validation\":\"required\"}}', NULL, '2020-12-27 13:23:36', '2023-05-06 03:25:22', 'paypal', 'Payment will receive within 1 days', '', NULL, '{\"cleint_id\":\"\",\"secret\":\"\"}', '{\"webhook\":\"payout\"}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"USD\"}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"USD\"}', '{\"AUD\":\"1.44\",\"BRL\":\"5.21\",\"CAD\":\"1.34\",\"CZK\":\"21.99\",\"DKK\":\"6.85\",\"EUR\":\"0.92\",\"HKD\":\"7.83\",\"HUF\":\"361.73\",\"INR\":\"80.98\",\"ILS\":\"3.4\",\"JPY\":\"129.56\",\"MYR\":\"4.29\",\"MXN\":\"18.87\",\"TWD\":\"30.33\",\"NZD\":\"1.55\",\"NOK\":\"9.79\",\"PHP\":\"54.46\",\"PLN\":\"4.14\",\"GBP\":\"0.81\",\"RUB\":\"68.25\",\"SGD\":\"1.32\",\"SEK\":\"10.3\",\"CHF\":\"0.92\",\"THB\":\"32.64\",\"USD\":\"1\"}', 1, 1, 1, 1),
(107, 'Binance', '644df114c24b51682829588.png', '2.00000000', '100.00000000', '2.00', '1.00000000', 1, '{\"network\":{\"name\":\"network\",\"label\":\"Network\",\"type\":\"text\",\"validation\":\"required\"},\"address\":{\"name\":\"address\",\"label\":\"Address\",\"type\":\"text\",\"validation\":\"required\"},\"amount\":{\"name\":\"amount\",\"label\":\"Amount\",\"type\":\"text\",\"validation\":\"required\"}}', NULL, '2020-12-27 13:23:36', '2023-05-06 03:25:22', 'binance', 'Payment will receive within 1 days', '', NULL, '{\"API_Key\":\"\",\"KEY_Secret\":\"\"}', '', '{\"BNB\":\"BNB\",\"BTC\":\"BTC\",\"XRP\":\"XRP\",\"ETH\":\"ETH\",\"ETH2\":\"ETH2\",\"USDT\":\"USDT\",\"BCH\":\"BCH\",\"LTC\":\"LTC\",\"XMR\":\"XMR\",\"TON\":\"TON\"}', '{\"BNB\":\"BNB\",\"BTC\":\"BTC\",\"XRP\":\"XRP\",\"ETH\":\"ETH\",\"ETH2\":\"ETH2\",\"USDT\":\"USDT\",\"BCH\":\"BCH\",\"LTC\":\"LTC\",\"XMR\":\"XMR\",\"TON\":\"TON\"}', '{\"BNB\":\"0.0032866584364651\",\"BTC\":\"4.3438047580189E-5\",\"XRP\":\"2.4317656276014\",\"ETH\":\"0.00060498363899103\",\"ETH2\":\"1\",\"USDT\":\"0.99970684227142\",\"BCH\":\"0.0077663435649339\",\"LTC\":\"0.011189496085365\",\"XMR\":\"0.0056633319909619\",\"TON\":\"0.43646828144729\"}', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `razorpay_contacts`
--

CREATE TABLE `razorpay_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_id` varchar(255) DEFAULT NULL,
  `entity` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sell_posts`
--

CREATE TABLE `sell_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `details` longtext NOT NULL,
  `comments` mediumtext NOT NULL,
  `credential` longtext NOT NULL,
  `post_specification_form` text NOT NULL,
  `sell_charge` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'coloum carry percentage value',
  `image` varchar(255) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0 COMMENT '0=> not approve, 1=>approve, 2=>Re submission, 3=>hold, 4=>soft Rejected, 5=>hard Rejected\r\n ',
  `lock_for` int(11) DEFAULT NULL COMMENT 'buyer id',
  `lock_at` timestamp NULL DEFAULT NULL,
  `payment_lock` tinyint(1) NOT NULL DEFAULT 0,
  `payment_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT ' 1=> payment complete, 2=> Reject, 3 => Pending',
  `payment_uuid` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sell_post_categories`
--

CREATE TABLE `sell_post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `form_field` text NOT NULL,
  `post_specification_form` text NOT NULL,
  `sell_charge` decimal(10,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sell_post_category_details`
--

CREATE TABLE `sell_post_category_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sell_post_category_id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sell_post_chats`
--

CREATE TABLE `sell_post_chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sell_post_id` bigint(20) UNSIGNED NOT NULL,
  `offer_id` int(11) NOT NULL,
  `chatable_type` varchar(255) NOT NULL,
  `chatable_id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `is_read_admin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sell_post_offers`
--

CREATE TABLE `sell_post_offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'Proposed by\r\n',
  `author_id` int(11) NOT NULL COMMENT 'Post author id',
  `sell_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` decimal(11,2) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=>pending, 1=>accept, 2=>reject, 3=>Resubmission\r\n',
  `uuid` varchar(191) DEFAULT NULL,
  `attempt_at` datetime DEFAULT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 => complete',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sell_post_payments`
--

CREATE TABLE `sell_post_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT 'Payment By',
  `sell_post_id` int(11) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `seller_amount` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'seller will receive amount',
  `admin_amount` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'admin will receive amount',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=> Complete',
  `payment_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=> active, 2=> rejected, 3=> pending',
  `payment_release` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 => released, 2 =>Hold',
  `released_at` timestamp NULL DEFAULT NULL COMMENT 'Payment release to user',
  `transaction` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_notifications`
--

CREATE TABLE `site_notifications` (
  `id` int(11) UNSIGNED NOT NULL,
  `site_notificational_id` int(11) NOT NULL,
  `site_notificational_type` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_controls`
--

CREATE TABLE `sms_controls` (
  `id` int(11) UNSIGNED NOT NULL,
  `actionMethod` varchar(191) DEFAULT NULL,
  `actionUrl` varchar(191) DEFAULT NULL,
  `headerData` text DEFAULT NULL,
  `paramData` text DEFAULT NULL,
  `formData` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_controls`
--

INSERT INTO `sms_controls` (`id`, `actionMethod`, `actionUrl`, `headerData`, `paramData`, `formData`, `created_at`, `updated_at`) VALUES
(1, 'POST', 'https://rest.nexmo.com/sms/json', '{\"Content-Type\":\"application\\/x-www-form-urlencoded\"}', NULL, '{\"from\":\"Rownak\",\"text\":\"[[message]]\",\"to\":\"[[receiver]]\",\"api_key\":\"930cc608\",\"api_secret\":\"2pijsaMOUw5YKOK5\"}', '2021-12-17 10:02:43', '2021-12-17 10:02:43');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(60) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` int(11) UNSIGNED NOT NULL,
  `language_id` int(11) UNSIGNED DEFAULT NULL,
  `section_name` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id`, `language_id`, `section_name`, `description`, `created_at`, `updated_at`) VALUES
(83, 1, 'whats-clients-say', '{\"title\":\"What Clients Say\"}', '2022-06-19 03:43:06', '2022-06-19 03:43:06'),
(84, 1, 'blog', '{\"title\":\"Latest Post\"}', '2022-06-19 04:01:36', '2022-08-17 05:10:05'),
(85, 1, 'pricing', '{\"title\":\"Our Pricing\"}', '2022-06-19 04:23:31', '2022-06-19 04:23:31'),
(86, 1, 'faq', '{\"title\":\"FREQUENTLY ASKED QUESTIONS\"}', '2022-06-19 04:41:02', '2022-06-19 04:41:02'),
(87, 1, 'why-choose-us', '{\"title\":\"WHY CHOOSE US\",\"button_name\":\"More About\"}', '2022-06-19 05:22:58', '2022-06-19 05:22:58'),
(88, 1, 'about-us', '{\"title\":\"ABOUT GAMESHOP\",\"short_description\":\"<p><span>Gamers Arena<\\/span><span>\\u00a0is a Digital Online Game Store, Game Top Up, Voucher &amp; Gamer ID Selling Tools. The most gamer wants to buy game top, voucher &amp; virtual card. But they don\\u2019t have international cards. they want to get it in local currency. Gamers Arena has all the solutions in one app.<\\/span><\\/p><p><span><span>Gamers Arena is developed by Bug Finders, a top apps developing\\u00a0company in Envato.<\\/span><\\/span><\\/p><p><br \\/><\\/p>\",\"button_name\":\"More About\"}', '2022-06-19 05:52:29', '2023-01-31 12:00:34'),
(90, 1, 'contact-us', '{\"heading\":\"CONTACT US\",\"sub_heading\":\"Want to make a purchase or need any help to find the best solutions for you? Feel free to contact us. Below are our contacts details -\",\"email\":\"contact@bugfinder.net\",\"phone\":\"+880 654 321 233\",\"address\":\"457 Morningview, New York USA\",\"footer_short_details\":\"<p>Need to get in touch with us ? Please contact with us throw below detail service.<\\/p>\"}', '2022-06-19 23:58:11', '2023-01-31 11:35:20'),
(91, 1, 'top-up', '{\"title\":\"Game Top Up\"}', '2022-08-04 10:58:10', '2022-08-11 06:05:22'),
(92, 1, 'voucher', '{\"title\":\"Games Voucher\"}', '2022-08-04 11:00:36', '2022-08-04 11:00:36'),
(93, 1, 'gift-card', '{\"title\":\"Gift Cards\"}', '2022-08-04 11:02:15', '2022-08-10 06:05:10'),
(94, 1, 'sell-post', '{\"title\":\"Buy Game Id\"}', '2022-08-04 11:05:45', '2022-08-04 11:05:45'),
(95, 2, 'top-up', '{\"title\":\"Recarga del juego\"}', '2022-08-17 05:46:15', '2022-08-17 05:46:15'),
(96, 2, 'voucher', '{\"title\":\"Cup\\u00f3n de juegos\"}', '2022-08-17 05:46:25', '2022-08-17 05:46:25'),
(97, 2, 'gift-card', '{\"title\":\"Tarjetas de regalo\"}', '2022-08-17 05:46:35', '2022-08-17 05:46:35'),
(98, 2, 'about-us', '{\"title\":\"ACERCA DE GAMESHOP\",\"short_description\":\"<span><\\/span><p><span>Gamers Arena es una tienda digital de juegos en l\\u00ednea, recarga de juegos, cupones y herramientas de venta de ID de jugador. La mayor\\u00eda de los jugadores quieren comprar la parte superior del juego, el cup\\u00f3n y la tarjeta virtual. Pero no tienen tarjetas internacionales. quieren obtenerlo en moneda local.<\\/span><span>Gamers Arena tiene todas las soluciones en una sola aplicaci\\u00f3n.<\\/span><\\/p><span><br \\/><\\/span><br \\/><p><span>Gamers Arena est\\u00e1 desarrollado por Bug Finders, una de las principales empresas de desarrollo de aplicaciones en Envato.<\\/span><\\/p><span><br \\/><\\/span>\",\"button_name\":\"M\\u00e1s sobre\"}', '2022-08-17 05:48:48', '2023-01-31 12:02:43'),
(99, 2, 'why-choose-us', '{\"title\":\"POR QU\\u00c9 ELEGIRNOS\",\"button_name\":\"M\\u00e1s sobre\"}', '2022-08-17 05:49:19', '2022-08-17 05:49:19'),
(100, 2, 'faq', '{\"title\":\"PREGUNTAS FRECUENTES\"}', '2022-08-17 05:49:36', '2022-08-17 05:49:36'),
(101, 2, 'sell-post', '{\"title\":\"Comprar ID de juego\"}', '2022-08-17 05:49:52', '2022-08-17 05:49:52'),
(102, 2, 'blog', '{\"title\":\"\\u00daltima publicaci\\u00f3n\"}', '2022-08-17 05:50:06', '2022-08-17 05:50:06'),
(103, 2, 'contact-us', '{\"heading\":\"CONT\\u00c1CTENOS\",\"sub_heading\":\"Quiere realizar una compra o necesita ayuda para encontrar las mejores soluciones para usted? Si\\u00e9ntete libre de contactarnos. A continuaci\\u00f3n se muestran nuestros datos de contacto:\",\"email\":\"contact@bugfinder.net\",\"phone\":\"+880 654 321 233\",\"address\":\"457 Morningview, Nueva York, EE. UU.\",\"footer_short_details\":\"Necesita ponerse en contacto con nosotros ? Por favor, p\\u00f3ngase en contacto con nosotros a trav\\u00e9s del servicio detallado a continuaci\\u00f3n.\"}', '2022-08-17 05:51:36', '2023-01-31 11:29:59');

-- --------------------------------------------------------

--
-- Table structure for table `template_media`
--

CREATE TABLE `template_media` (
  `id` int(11) UNSIGNED NOT NULL,
  `section_name` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `template_media`
--

INSERT INTO `template_media` (`id`, `section_name`, `description`, `created_at`, `updated_at`) VALUES
(7, 'our-latest-post', '{\"button_link\":\"http:\\/\\/localhost\\/hyippro\\/project\\/about\"}', '2022-06-19 04:01:36', '2022-06-19 04:01:36'),
(8, 'faq', '{\"image\":\"62aefd3ecb8711655635262.png\"}', '2022-06-19 04:41:03', '2022-06-19 04:41:03'),
(9, 'why-choose-us', '{\"image\":\"62af0712c3e9e1655637778.png\",\"button_link\":\"https:\\/\\/bugfinder.net\\/\"}', '2022-06-19 05:22:58', '2022-07-04 08:48:27'),
(10, 'about-us', '{\"image\":\"62af0dfdc8cf11655639549.png\",\"button_link\":\"https:\\/\\/bugfinder.net\\/\"}', '2022-06-19 05:52:30', '2022-07-04 08:47:49');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(91) DEFAULT NULL,
  `ticket` varchar(191) DEFAULT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: Open, 1: Answered, 2: Replied, 3: Closed	',
  `last_reply` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_attachments`
--

CREATE TABLE `ticket_attachments` (
  `id` int(11) UNSIGNED NOT NULL,
  `ticket_message_id` int(11) UNSIGNED DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_messages`
--

CREATE TABLE `ticket_messages` (
  `id` int(11) UNSIGNED NOT NULL,
  `ticket_id` int(11) UNSIGNED DEFAULT NULL,
  `admin_id` int(11) UNSIGNED DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `top_up_sells`
--

CREATE TABLE `top_up_sells` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `category_service_id` int(11) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=> Complete',
  `payment_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=> active, 2=> rejected',
  `information` text DEFAULT NULL,
  `transaction` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double(11,2) DEFAULT NULL,
  `charge` decimal(11,2) NOT NULL DEFAULT 0.00,
  `trx_type` varchar(10) DEFAULT NULL,
  `remarks` varchar(191) NOT NULL,
  `trx_id` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(60) DEFAULT NULL,
  `lastname` varchar(60) DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL,
  `referral_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `country_code` varchar(20) DEFAULT NULL,
  `phone_code` varchar(20) DEFAULT NULL,
  `phone` varchar(91) DEFAULT NULL,
  `balance` decimal(11,2) NOT NULL DEFAULT 0.00,
  `image` varchar(191) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `provider` varchar(191) DEFAULT NULL,
  `provider_id` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `identity_verify` tinyint(4) NOT NULL COMMENT '	0 => Not Applied, 1=> Applied, 2=> Approved, 3 => Rejected	',
  `address_verify` tinyint(4) NOT NULL COMMENT '0 => Not Applied, 1=> Applied, 2=> Approved, 3 => Rejected	',
  `two_fa` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: two-FA off, 1: two-FA on',
  `two_fa_verify` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0: two-FA unverified, 1: two-FA verified',
  `two_fa_code` varchar(50) DEFAULT NULL,
  `email_verification` tinyint(1) NOT NULL DEFAULT 1,
  `sms_verification` tinyint(1) NOT NULL DEFAULT 1,
  `verify_code` varchar(50) DEFAULT NULL,
  `sent_at` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_seen` datetime DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text DEFAULT NULL,
  `thumb` varchar(91) DEFAULT NULL,
  `discount_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=>fixed, 1=> percent',
  `discount_amount` int(11) NOT NULL DEFAULT 0,
  `discount_status` tinyint(1) NOT NULL DEFAULT 1,
  `featured` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `voucher_codes`
--

CREATE TABLE `voucher_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `voucher_id` bigint(20) UNSIGNED NOT NULL,
  `voucher_service_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(91) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=> deactive, 1=> active,2=> sold',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `voucher_details`
--

CREATE TABLE `voucher_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `game_vouchers_id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `voucher_sells`
--

CREATE TABLE `voucher_sells` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `voucher_service_id` int(11) DEFAULT NULL,
  `voucher_id` int(11) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `code` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=> Complete',
  `payment_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=> active, 2=> rejected',
  `transaction` varchar(50) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `stock_short` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `voucher_services`
--

CREATE TABLE `voucher_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `game_vouchers_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_logs_sell_post_id_foreign` (`sell_post_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_details`
--
ALTER TABLE `category_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_details_category_id_foreign` (`category_id`);

--
-- Indexes for table `category_services`
--
ALTER TABLE `category_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_services_category_id_foreign` (`category_id`);

--
-- Indexes for table `configures`
--
ALTER TABLE `configures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contents_name_index` (`name`);

--
-- Indexes for table `content_details`
--
ALTER TABLE `content_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_details_content_id_foreign` (`content_id`),
  ADD KEY `content_details_language_id_foreign` (`language_id`);

--
-- Indexes for table `content_media`
--
ALTER TABLE `content_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_media_content_id_foreign` (`content_id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_templates_language_id_foreign` (`language_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funds`
--
ALTER TABLE `funds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `funds_user_id_foreign` (`user_id`),
  ADD KEY `funds_gateway_id_foreign` (`gateway_id`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gateways_code_unique` (`code`);

--
-- Indexes for table `gift_cards`
--
ALTER TABLE `gift_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_card_codes`
--
ALTER TABLE `gift_card_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gift_card_codes_gift_card_id_foreign` (`gift_card_id`);

--
-- Indexes for table `gift_card_details`
--
ALTER TABLE `gift_card_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gift_card_details_gift_cards_id_foreign` (`gift_cards_id`);

--
-- Indexes for table `gift_card_sells`
--
ALTER TABLE `gift_card_sells`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_card_services`
--
ALTER TABLE `gift_card_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gift_card_services_gift_cards_id_foreign` (`gift_cards_id`);

--
-- Indexes for table `identify_forms`
--
ALTER TABLE `identify_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `kycs`
--
ALTER TABLE `kycs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notify_templates`
--
ALTER TABLE `notify_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notify_templates_language_id_foreign` (`language_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payout_logs`
--
ALTER TABLE `payout_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout_methods`
--
ALTER TABLE `payout_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `razorpay_contacts`
--
ALTER TABLE `razorpay_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sell_posts`
--
ALTER TABLE `sell_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `game_sells_category_id_foreign` (`category_id`);

--
-- Indexes for table `sell_post_categories`
--
ALTER TABLE `sell_post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sell_post_category_details`
--
ALTER TABLE `sell_post_category_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sell_post_category_details_sell_post_category_id_foreign` (`sell_post_category_id`);

--
-- Indexes for table `sell_post_chats`
--
ALTER TABLE `sell_post_chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sell_post_chats_sell_post_id_foreign` (`sell_post_id`),
  ADD KEY `sell_post_chats_chat_type_chat_id_index` (`chatable_type`,`chatable_id`);

--
-- Indexes for table `sell_post_offers`
--
ALTER TABLE `sell_post_offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `sell_post_payments`
--
ALTER TABLE `sell_post_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_notifications`
--
ALTER TABLE `site_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_controls`
--
ALTER TABLE `sms_controls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template_media`
--
ALTER TABLE `template_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `template_media_section_name_index` (`section_name`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`user_id`);

--
-- Indexes for table `ticket_attachments`
--
ALTER TABLE `ticket_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_attachments_ticket_message_id_foreign` (`ticket_message_id`);

--
-- Indexes for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_messages_ticket_id_foreign` (`ticket_id`),
  ADD KEY `ticket_messages_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `top_up_sells`
--
ALTER TABLE `top_up_sells`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voucher_codes`
--
ALTER TABLE `voucher_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voucher_details`
--
ALTER TABLE `voucher_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `game_voucher_details_game_vouchers_id_foreign` (`game_vouchers_id`);

--
-- Indexes for table `voucher_sells`
--
ALTER TABLE `voucher_sells`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voucher_services`
--
ALTER TABLE `voucher_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `voucher_services_game_vouchers_id_foreign` (`game_vouchers_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category_details`
--
ALTER TABLE `category_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category_services`
--
ALTER TABLE `category_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `configures`
--
ALTER TABLE `configures`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `content_details`
--
ALTER TABLE `content_details`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT for table `content_media`
--
ALTER TABLE `content_media`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `funds`
--
ALTER TABLE `funds`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `gift_cards`
--
ALTER TABLE `gift_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gift_card_codes`
--
ALTER TABLE `gift_card_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gift_card_details`
--
ALTER TABLE `gift_card_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gift_card_sells`
--
ALTER TABLE `gift_card_sells`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gift_card_services`
--
ALTER TABLE `gift_card_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `identify_forms`
--
ALTER TABLE `identify_forms`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `kycs`
--
ALTER TABLE `kycs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `notify_templates`
--
ALTER TABLE `notify_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `payout_logs`
--
ALTER TABLE `payout_logs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payout_methods`
--
ALTER TABLE `payout_methods`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `razorpay_contacts`
--
ALTER TABLE `razorpay_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sell_posts`
--
ALTER TABLE `sell_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sell_post_categories`
--
ALTER TABLE `sell_post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sell_post_category_details`
--
ALTER TABLE `sell_post_category_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sell_post_chats`
--
ALTER TABLE `sell_post_chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sell_post_offers`
--
ALTER TABLE `sell_post_offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sell_post_payments`
--
ALTER TABLE `sell_post_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_notifications`
--
ALTER TABLE `site_notifications`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_controls`
--
ALTER TABLE `sms_controls`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `template_media`
--
ALTER TABLE `template_media`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_attachments`
--
ALTER TABLE `ticket_attachments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `top_up_sells`
--
ALTER TABLE `top_up_sells`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voucher_codes`
--
ALTER TABLE `voucher_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voucher_details`
--
ALTER TABLE `voucher_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voucher_sells`
--
ALTER TABLE `voucher_sells`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voucher_services`
--
ALTER TABLE `voucher_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_sell_post_id_foreign` FOREIGN KEY (`sell_post_id`) REFERENCES `sell_posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_details`
--
ALTER TABLE `category_details`
  ADD CONSTRAINT `category_details_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_services`
--
ALTER TABLE `category_services`
  ADD CONSTRAINT `category_services_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `content_details`
--
ALTER TABLE `content_details`
  ADD CONSTRAINT `content_details_content_id_foreign` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`),
  ADD CONSTRAINT `content_details_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Constraints for table `content_media`
--
ALTER TABLE `content_media`
  ADD CONSTRAINT `content_media_content_id_foreign` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`);

--
-- Constraints for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD CONSTRAINT `email_templates_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Constraints for table `funds`
--
ALTER TABLE `funds`
  ADD CONSTRAINT `funds_gateway_id_foreign` FOREIGN KEY (`gateway_id`) REFERENCES `gateways` (`id`),
  ADD CONSTRAINT `funds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `gift_card_codes`
--
ALTER TABLE `gift_card_codes`
  ADD CONSTRAINT `gift_card_codes_gift_card_id_foreign` FOREIGN KEY (`gift_card_id`) REFERENCES `gift_cards` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gift_card_details`
--
ALTER TABLE `gift_card_details`
  ADD CONSTRAINT `gift_card_details_gift_cards_id_foreign` FOREIGN KEY (`gift_cards_id`) REFERENCES `gift_cards` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gift_card_services`
--
ALTER TABLE `gift_card_services`
  ADD CONSTRAINT `gift_card_services_gift_cards_id_foreign` FOREIGN KEY (`gift_cards_id`) REFERENCES `gift_cards` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notify_templates`
--
ALTER TABLE `notify_templates`
  ADD CONSTRAINT `notify_templates_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Constraints for table `sell_posts`
--
ALTER TABLE `sell_posts`
  ADD CONSTRAINT `game_sells_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `sell_post_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sell_post_category_details`
--
ALTER TABLE `sell_post_category_details`
  ADD CONSTRAINT `sell_post_category_details_sell_post_category_id_foreign` FOREIGN KEY (`sell_post_category_id`) REFERENCES `sell_post_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sell_post_chats`
--
ALTER TABLE `sell_post_chats`
  ADD CONSTRAINT `sell_post_chats_sell_post_id_foreign` FOREIGN KEY (`sell_post_id`) REFERENCES `sell_posts` (`id`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `ticket_attachments`
--
ALTER TABLE `ticket_attachments`
  ADD CONSTRAINT `ticket_attachments_ticket_message_id_foreign` FOREIGN KEY (`ticket_message_id`) REFERENCES `ticket_messages` (`id`);

--
-- Constraints for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD CONSTRAINT `ticket_messages_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `ticket_messages_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`);

--
-- Constraints for table `voucher_details`
--
ALTER TABLE `voucher_details`
  ADD CONSTRAINT `game_voucher_details_game_vouchers_id_foreign` FOREIGN KEY (`game_vouchers_id`) REFERENCES `vouchers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `voucher_services`
--
ALTER TABLE `voucher_services`
  ADD CONSTRAINT `voucher_services_game_vouchers_id_foreign` FOREIGN KEY (`game_vouchers_id`) REFERENCES `vouchers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
