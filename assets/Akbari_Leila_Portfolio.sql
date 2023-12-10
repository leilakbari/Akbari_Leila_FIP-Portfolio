-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 08, 2023 at 09:04 PM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: Akbari_Leila_Portfolio
--

-- --------------------------------------------------------

--
-- Table structure for table Contact
--

CREATE TABLE Contact (
  id int(11) NOT NULL,
  First_Name varchar(150) DEFAULT NULL,
  Last_Name varchar(150) DEFAULT NULL,
  Msg text,
  Email varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table Contact
--

INSERT INTO Contact (id, First_Name, Last_Name, Msg, Email) VALUES
(1, 'Alex', 'Wood', 'Hi, I was wondering...', 'a_wood@gmail.com'),
(3, 'Leila', 'Akbari', 'hgfhgcb', 'leilakbarii@gmail.com'),
(4, 'Leila', 'Akbari', 'hgfhgcb', 'leilakbarii@gmail.com'),
(5, 'Leila', 'Akbari', 'hgfhgcb', 'leilakbarii@gmail.com'),
(6, 'Leila', 'Akbari', 'hgfhgcb', 'leilakbarii@gmail.com'),
(7, 'Leila', 'Akbari', 'ncbcbng', 'leilakbarii@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table Media
--

CREATE TABLE Media (
  id int(6) UNSIGNED NOT NULL,
  fila-name varchar(150) NOT NULL,
  Project-id int(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table Media
--

INSERT INTO Media (id, fila-name, Project-id) VALUES
(1, 'Earbuds1.jpg', 1),
(2, 'hotelroom.jpg', 3),
(3, 'uidesign.jpg', 4),
(4, 'kadot-ui.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table Project
--

CREATE TABLE Project (
  Project-ID int(11) NOT NULL,
  Project-Name varchar(150) DEFAULT NULL,
  Project-Date date DEFAULT NULL,
  Project-Informations text,
  Proiect-Code-Link text,
  User-ID int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table Project
--

INSERT INTO Project (Project-ID, Project-Name, Project-Date, Project-Informations, Proiect-Code-Link, User-ID) VALUES
(1, 'Diba Earbuds Project', '2023-11-01', 'Welcome to the Diba Earbuds 3D Showcase project! This repository features a pair of meticulously designed 3D earbuds, presented on an engaging promotional website. The website is crafted using a combination of HTML, CSS, SASS, and JavaScript, creating an immersive and visually appealing experience for users. The Diba Earbuds 3D Showcase offers an engaging and interactive experience through an AR Model Viewer, Hotspots, and an X-Ray feature. The AR Model Viewer allows users to explore a detailed 3D representation of Diba Earbuds with user-friendly controls and supports augmented reality for an immersive experience. Hotspots provide interactive elements on the 3D model, offering detailed information about specific features. The X-Ray feature enables users to switch between regular and X-ray views, providing insights into the internal components of the earbuds. Together, these features create an educational and captivating platform for users to explore the design, materials, and functionalities of Diba Earbuds.', 'https://github.com/leilakbari/Akbari_Leila_Earbuds.git', 1),
(2, 'Kadot Website', '2022-12-10', 'First, I designed two website pages and two mobile pages with Adobe XD, and then I wrote their HTML and CSS codes based on the designs. The pages I designed are an online clothing store where you can buy women\'s clothing and accessories. Also, all the photos used on the pages (except for three photos) were taken by me.', 'https://github.com/leilakbari/Akbari_Leila_FIP.git', 1),
(3, 'Hotel Room', '2022-12-10', 'In a chic hotel room design using Cinema 4D (C4D), our team blended style and practicality seamlessly. The 3D-rendered space showcased modern comfort with a focus on luxe textures like velvet, leather, and marble. Dynamic camera angles highlighted the room\'s versatility for different moods. The design not only captured the hotel\'s vibe but also told a captivating visual story. Carefully added textures brought an extra touch of sophistication to the immersive digital experience.', 'https://hotellroom.com', 1),
(4, 'case study UI design project', '2022-12-10', 'Embarking on a website design project for a case study, our goal was to create a user-friendly digital experience. We carefully crafted a clean and intuitive layout, ensuring easy navigation for visitors. The design showcases real-world examples seamlessly, allowing users to explore the depth and impact of each case study effortlessly. With a focus on simplicity and clarity, our website design aims to make the case study content not only informative but also enjoyable to explore. Whether you\'re a potential client or just curious, our user-friendly interface invites you to delve into the fascinating stories behind our projects.', 'https://uicasestudy1.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table Tools
--

CREATE TABLE Tools (
  Media-ID int(11) NOT NULL,
  Media-Name varchar(150) DEFAULT NULL,
  Media-Type varchar(150) DEFAULT NULL,
  Media_information text,
  Media-Link text,
  Media-File text,
  Media-Image text,
  Project-ID int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table Tools
--

INSERT INTO Tools (Media-ID, Media-Name, Media-Type, Media_information, Media-Link, Media-File, Media-Image, Project-ID) VALUES
(1, 'C4D', 'Cinema 4D is a 3D modeling, animation, and rendering software developed by Maxon.', 'Cinema 4D allows users to create 3D models, which are digital representations of objects or scenes in three-dimensional space. Animation in Cinema 4D involves setting keyframes to define the start and end points of an animation sequence. The software then interpolates between these keyframes to create smooth animations.', NULL, NULL, NULL, 1),
(2, 'Adobe Photoshop', 'Adobe Photoshop is a raster graphics editor based on pixels.', 'Adobe Photoshop is a raster graphics editor used for photo editing, graphic design, and digital art. ', 'logo-psd.jpg', NULL, NULL, 2),
(3, 'Adobe Illustrator', 'Adobe Illustrator is a vector graphics editor.\r\n', 'Adobe Illustrator is a vector graphics editor developed by Adobe Inc. It is often used for creating illustrations, logos, icons, and other types of graphics.\r\n', 'logo-ai.png', NULL, NULL, 4),
(4, 'Adobe After Effects', 'Adobe Illustrator is a video editor application.\r\n', 'Creating an app similar to Adobe After Effects would involve developing a powerful motion graphics and visual effects software. The app would enable users to design and manipulate motion graphics, animations, and special effects for video content. Users should have access to a comprehensive set of tools for keyframing, compositing, and layering, allowing for intricate control over visual elements. Additionally, features like a user-friendly interface, a diverse range of templates, and integration with other Adobe Creative Cloud applications could enhance the overall user experience. Real-time preview capabilities and support for various file formats would also be essential for a versatile and user-friendly Adobe After Effects type of app.\r\n', 'logo-aftereffect.png', NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table User
--

CREATE TABLE `User` (
  User-ID int(11) NOT NULL,
  First-Name varchar(150) DEFAULT NULL,
  Last-Name varchar(150) DEFAULT NULL,
  Email varchar(150) DEFAULT NULL,
  Birthday-Date date DEFAULT NULL,
  Information text,
  Social-Media varchar(300) DEFAULT NULL,
  Country varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table User
--

INSERT INTO User (User-ID, First-Name, Last-Name, Email, Birthday-Date, Information, Social-Media, Country) VALUES
(1, 'Leila', 'Akbari', 'leilakbarii@gmail.com', '1996-09-12', 'UI/UX Designer', 'Instagram ID: leilakbarii', 'Canada');

--
-- Indexes for dumped tables
--

--
-- Indexes for table Contact
--
ALTER TABLE Contact
  ADD PRIMARY KEY (id);

--
-- Indexes for table Media
--
ALTER TABLE Media
  ADD PRIMARY KEY (id);

--
-- Indexes for table Project
--
ALTER TABLE Project
  ADD PRIMARY KEY (Project-ID),
  ADD KEY User-ID (User-ID);

--
-- Indexes for table Tools
--
ALTER TABLE Tools
  ADD PRIMARY KEY (Media-ID),
  ADD KEY Project-ID (Project-ID);

--
-- Indexes for table User
--
ALTER TABLE User
  ADD PRIMARY KEY (User-ID);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table Contact
--
ALTER TABLE Contact
  MODIFY id int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table Media
--
ALTER TABLE Media
  MODIFY id int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table Project
--
ALTER TABLE Project
  MODIFY Project-ID int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table Tools
--
ALTER TABLE Tools
  MODIFY Media-ID int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table User
--
ALTER TABLE User
  MODIFY User-ID int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table Project
--
ALTER TABLE Project
  ADD CONSTRAINT project_ibfk_1 FOREIGN KEY (User-ID) REFERENCES `User` (User-ID);

--
-- Constraints for table Tools
--
ALTER TABLE Tools
  ADD CONSTRAINT tools_ibfk_1 FOREIGN KEY (Project-ID) REFERENCES Project (Project-ID);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
