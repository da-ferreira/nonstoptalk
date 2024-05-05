
CREATE DATABASE IF NOT EXISTS `nonstoptalk`;
USE `nonstoptalk`;

CREATE TABLE IF NOT EXISTS `chats` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user1Id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user2Id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastMessage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastMessageAt` datetime(3) DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `chats_user1Id_user2Id_idx` (`user1Id`,`user2Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `messages` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chatId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewed` tinyint DEFAULT '0',
  `viewedAt` datetime(3) DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `messages_chatId_userId_idx` (`chatId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `users` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_key` (`email`),
  KEY `users_name_email_idx` (`name`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
