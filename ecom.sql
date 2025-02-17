-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Feb 17, 2025 at 03:46 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminPassword` varchar(255) NOT NULL,
  `adminRepassword` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `adminName`, `adminPassword`, `adminRepassword`, `role`) VALUES
(1, 'admin', 'admin@123', 'admin@123', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `cartid` int(10) NOT NULL,
  `userid` int(100) UNSIGNED NOT NULL,
  `productid` varchar(255) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`cartid`, `userid`, `productid`, `productname`, `quantity`, `image`, `price`) VALUES
(27, 5, '0a5b358a86bcd394b3f53de156c20f2d', 'Wet Dry Unisex Painless Stainless Steel Blade Men Women s Fashion Personal Face Grooming Care Electric Nose Ear Face Nose Hair Removal Trimmer Shaver Clipper Remover', 1, 'https://i5.walmartimages.com/asr/7af6c2eb-4f0f-43e1-9523-1c3e8f23a2bf_1.73edcb2736bfaadced91f2b4a5d4bc14.jpeg', 1299),
(58, 5, '31cf3d53118b8731207716597a7fc8df', '($206 Value) Peter Thomas Roth Face Mask Frenzy Face Mask Kit', 1, 'https://i5.walmartimages.com/asr/f5fae452-5c37-4689-b4ef-f2572b89ec5b_1.a0685efe4daed987b340fb21d83c3b72.jpeg', 7199),
(59, 5, ' 0e643de96bd577399500b3090b4bf4ed', 'PTR Water Drench Hyaluronic Cloud Cream .67oz', 2, 'https://i5.walmartimages.com/asr/b03cbe46-06c4-42a9-adcf-644dba6f3915_1.48cd81e329b776b1cab97ffe89035c0f.jpeg', 1549),
(60, 5, ' 064b7e1e26f062b08deb6065c6940816', 'Self Tanner - With Organic Aloe Vera & Shea Butter, Sunless Tanning Lotion and Bronzer Buildable Light, Medium or Dark Tan for Natural Looking Fake Tan, Self Tanners Best Sellers (15 oz) (2 Tube)', 1, 'https://i5.walmartimages.com/asr/4d05b94c-cf2d-402f-a610-8e26d122f14d_1.1c9f26cb6c9a6c700b184c464339deb0.jpeg', 3598),
(62, 5, ' d8cb73ae1b8613e5c7a6160c554e30df', 'Womens Stockings, Knee High, Sheer: 15-20 mmHg, Taupe, Large', 1, 'https://i5.walmartimages.com/asr/273734c7-bade-4a2e-9e4c-47dbb089090e_1.55360d41c5dd62413199658b63486918.jpeg', 1300),
(76, 15, 'e655fe42cfdfa9be55f14959d082dcd2', 'Women Men Silicone Simulation False Denture Smile Emulation White Teeth', 1, 'https://i5.walmartimages.com/asr/66f4b0b9-ab76-43da-86c1-7d94d9575b65_1.0452e1aacd807e5fa88331febbd66a33.jpeg', 655),
(95, 17, 'e655fe42cfdfa9be55f14959d082dcd2', 'Women Men Silicone Simulation False Denture Smile Emulation White Teeth', 1, 'https://i5.walmartimages.com/asr/66f4b0b9-ab76-43da-86c1-7d94d9575b65_1.0452e1aacd807e5fa88331febbd66a33.jpeg', 655),
(96, 17, '32c496f1b2d3cd695c106627fdcddf83', 'Surgical Grade Stainless Steel Tongue Scraper, Bacterial Inhibition, Non-Synthetic Grip, Sterilizable', 1, 'https://i5.walmartimages.com/asr/6bfc44b8-7a36-4a94-a795-50bea2b5aa66.1039453d060f49cac64ba70c40efb1a9.jpeg', 490);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `Categories` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `Categories`) VALUES
(1, 'All'),
(2, 'Personal'),
(3, 'Beauty'),
(4, 'Care'),
(5, 'Premium');

-- --------------------------------------------------------

--
-- Table structure for table `displayproduct`
--

CREATE TABLE `displayproduct` (
  `pid` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `reviewcount` float NOT NULL,
  `brand` varchar(255) NOT NULL,
  `imageurl` text NOT NULL,
  `rating` float NOT NULL,
  `description` text NOT NULL,
  `category` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `displayproduct`
--

INSERT INTO `displayproduct` (`pid`, `pname`, `reviewcount`, `brand`, `imageurl`, `rating`, `description`, `category`, `price`) VALUES
(101, '($100 Value) Peter Thomas Roth Thermal Therapy Duo Skincare Kit', 5, 'opi', 'https://i5.walmartimages.com/asr/a3436bdc-e2e5-4c0c-b55c-0b2cbfbd7757_1.dfbc7c5baecd7674a3dfb60c84daf4b7.jpeg | https://i5.walmartimages.com/asr/c2a0f417-6ff8-4897-90d1-245c95120968_1.fbe74583b49fae6e244072d37ecdfae7.jpeg | https://i5.walmartimages.com/asr/2b9ad826-a70f-4840-bd44-13aa1470333f_1.872ac5b64b61e2cc492e5cf7e748f0fb.jpeg ', 5, 'This high-quality product from a trusted brand offers exceptional value and reliability. Carefully curated to meet your daily needs, it is designed for your convenience and satisfaction. ', '', 100),
(102, 'R+Co Aircraft Pomade Mousse, 5.6 Oz', 5, 'R+Co', 'https://i5.walmartimages.com/asr/03319cbe-7f61-42d3-afa9-4c2ac5e2342e.2b236bcbb74ce2f85e3d3160d9b52236.jpeg | https://i5.walmartimages.com/asr/2f4285d4-4c45-494d-8eb5-63085eac9d66_1.6a8a578ebc6f354f12e190958f5e328a.jpeg', 5, 'This high-quality product from a trusted brand offers exceptional value and reliability. Carefully curated to meet your daily needs, it is designed for your convenience and satisfaction. ', '', 230),
(103, 'Candle Warmers Etc. Rustic Brown Hurricane Candle Warmer Lantern', 10, 'candle, warmers, etc', 'https://i5.walmartimages.com/asr/54376245-b5c1-4d6a-9972-bc41a2a825ea_1.f46b3671e8d222adc37867e197457837.png | https://i5.walmartimages.com/asr/91904d9e-c5bd-47a9-a9e3-c5ba4070103f_1.3a83b6ca0e7f670e6c016b80ba0194c8.png', 5, 'This high-quality product from a trusted brand offers exceptional value and reliability. Carefully curated to meet your daily needs, it is designed for your convenience and satisfaction. ', '', 450),
(104, 'Recovery Complex Anti-Frizz Shine Serum by Bain de Terre for Unisex, 4.2 oz', 4, 'bain, de, terre', 'https://i5.walmartimages.com/asr/fcdb4d2e-3727-4bc4-bb2a-63c585c236b0_1.4c8c7111e5dde79bad7e54b6f71a8781.jpeg | https://i5.walmartimages.com/asr/1e8c5630-bd1b-42bf-b29b-328734e30ea1_1.1c9ebfea6bdb2db875f2dad0f9e29b76.jpeg | https://i5.walmartimages.com/asr/a0be5e6f-2b7d-4949-a146-c6d36fc1e3bc_1.f3060628a171205ba3854294a3a300fc.jpeg | https://i5.walmartimages.com/asr/681df146-a265-4f3e-87ed-face6fffcd8a_1.845d323e06801631b2ecaf4a5a3b21d2.jpeg', 5, 'This high-quality product from a trusted brand offers exceptional value and reliability. Carefully curated to meet your daily needs, it is designed for your convenience and satisfaction. ', '', 430),
(105, 'ReNew Life CleanseMore, Veggie Caps, 60 ea', 15, 'renew, life', 'https://i5.walmartimages.com/asr/9f707fe4-9ee3-4dc5-b230-0005d2ba6f29_1.3b8ea51118f73b8528bbc6b808dd4ba4.jpeg | https://i5.walmartimages.com/asr/3fdd4912-70c4-4d75-bb00-72e390c9d6ac_1.db8927d28da7bb33697d9eff3b206fb8.jpeg', 5, 'This high-quality product from a trusted brand offers exceptional value and reliability. Carefully curated to meet your daily needs, it is designed for your convenience and satisfaction. ', '', 600),
(106, 'Alba Botanica Very Emollient Herbal Healing Body Lotion, 32 oz.', 3, 'alba, botanica', 'https://i5.walmartimages.com/asr/6050a2f0-3f91-4fb5-a0d3-07878bbe0f21.2ba494455079455da1f24ff0a193245c.jpeg | https://i5.walmartimages.com/asr/d02a790a-e633-48d5-b212-7c4459df1afa.e650e4fd76d46d26b06d88bbaeca72c4.jpeg', 5, 'This high-quality product from a trusted brand offers exceptional value and reliability. Carefully curated to meet your daily needs, it is designed for your convenience and satisfaction. ', '', 500),
(107, 'Groganics DHT Ice Oil Scalp Moisturizer, 4 oz', 1, 'groganics', 'https://i5.walmartimages.com/asr/ed63df5f-b0a6-44d9-b38a-5385a3705609_1.40863f65eaff18db5473f244c56dc91e.jpeg | https://i5.walmartimages.com/asr/92659bd4-c994-4582-8c7a-107740d94e9a_1.88e5b0706d483956e06cd810bd97b061.jpeg', 5, 'This high-quality product from a trusted brand offers exceptional value and reliability. Carefully curated to meet your daily needs, it is designed for your convenience and satisfaction. ', '', 322),
(108, 'Vega Chlorella Dietary Supplement Powder 5.3 oz. Bottle', 1, 'vega', 'https://i5.walmartimages.com/asr/e8ddd649-4959-4454-9798-cc185525baa6_1.c98f8adaf041556d63baadedf00316a9.jpeg | https://i5.walmartimages.com/asr/530a22d0-2e8b-4adc-99ef-7ffe4991422e_1.d6323950626acdfcc07e10a688c65ef5.jpeg | https://i5.walmartimages.com/asr/bf1b0107-e155-4186-899e-7657a21426dd_1.d6b02a5cb8f9664a850ff6be3293a18a.jpeg', 5, 'This high-quality product from a trusted brand offers exceptional value and reliability. Carefully curated to meet your daily needs, it is designed for your convenience and satisfaction. ', '', 830),
(109, 'Guerlain L\\homme Ideal Eau De Toilette Spray for Men 3.3 oz', 1, 'guerlain', 'https://i5.walmartimages.com/asr/2f141245-7503-494e-8354-17ae43e807b5_1.5490debb7c8f5c5ea1e03889242cd3da.jpeg | https://i5.walmartimages.com/asr/da361afc-5d0f-4322-a6ca-1af5d0a9761c_1.15f352c3e504c7e3e4388c2de97a318b.jpeg | https://i5.walmartimages.com/asr/85e18009-5568-4fe2-be71-1ef473b9adc4_1.15f352c3e504c7e3e4388c2de97a318b.jpeg', 5, 'This high-quality product from a trusted brand offers exceptional value and reliability. Carefully curated to meet your daily needs, it is designed for your convenience and satisfaction. ', '', 500),
(110, 'Alaffia Body Lotion, Vanilla, 32 Oz', 4, 'alaffia', 'https://i5.walmartimages.com/asr/2988c323-cb6f-4a45-9bd7-9029d981630c_1.d65b6410f1b5a72233cdab07e25e153b.jpeg | https://i5.walmartimages.com/asr/c773f069-a99d-4d06-a4ff-d4c839063929_1.3a72dc9092da4efd57530dc86a077c6d.jpeg', 5, 'This high-quality product from a trusted brand offers exceptional value and reliability. Carefully curated to meet your daily needs, it is designed for your convenience and satisfaction. ', '', 495);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ID` int(11) NOT NULL,
  `productId` varchar(255) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `reviewcount` float NOT NULL,
  `productbrand` varchar(255) NOT NULL,
  `imageurl` text NOT NULL,
  `rating` float NOT NULL,
  `description` text NOT NULL,
  `category` varchar(255) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ID`, `productId`, `productname`, `reviewcount`, `productbrand`, `imageurl`, `rating`, `description`, `category`, `price`) VALUES
(1, 'e655fe42cfdfa9be55f14959d082dcd2', 'Women Men Silicone Simulation False Denture Smile Emulation White Teeth', 0, 'funcee', 'https://i5.walmartimages.com/asr/66f4b0b9-ab76-43da-86c1-7d94d9575b65_1.0452e1aacd807e5fa88331febbd66a33.jpeg | https://i5.walmartimages.com/asr/a58ccf98-dedc-4eda-bf2a-9b96093f1ce1_1.36d14b38099836f9fd1228f47be23512.jpeg | https://i5.walmartimages.com/asr/edb85967-e951-4d03-8429-e7362f8a8650_1.fced263c13ae28f54469389f822cc59f.jpeg | https://i5.walmartimages.com/asr/490b5c2f-af1c-4d88-be7b-32dc78801e3b_1.b143ab15c385b1113af930f923bdb7ec.jpeg | https://i5.walmartimages.com/asr/1af754a7-9d25-47ac-8728-c52248d77b26_1.d68a0c03c9a337240a4179a43690d728.jpeg | https://i5.walmartimages.com/asr/82bc24de-003e-4d5c-871c-092253190407_1.5e4930494a0be309e39badf40099dad9.jpeg | https://i5.walmartimages.com/asr/e87bb64c-f07d-4784-9f1a-9d2eb99fb88e_1.244ea771216e36a2498068585a152e23.jpeg', 0, 'Specific: Use: Personal Washing / Cleaning / Care Model Number: M Feature: Environmentally friendly Material: Plastic Style: perfect smile Type: perfect smiles Box gauge 61 * 41 * 33 = 100pcs Product size 7 * 2 color box size 15.7 * 11.5 * 5 Package Included: 1* Silicone Simulation False Denture False Teeth Veneer Comfort Environmentally friendly', 'personal, care, oral, care, denture, adhesive', 655),
(2, '4aef43b17bac75f1d31504ece13992be', 'WEB FilterFresh Whole Home Ocean Mist Air Freshener', 2, 'web, products', 'https://i5.walmartimages.com/asr/375573d7-3ace-4639-9c63-5b58c378948a_1.4805328b4b15e88747e6aa817c0402bd.jpeg', 0, 'Is your home being overrun by unpleasant odors? Whether you own a pet, frequently cook or live with a smoker, Protect Plus Industries The Web Filter Fresh Whole Home Ocean Mist Air Freshener is all you need to keep your entire home smelling great for days. The secret to the Filter Fresh pads effectiveness lies in an odor counteractant that works with fragrance to combat your homes most unpleasant odors. Coming in a fresh, clean scent of ocean mist, this air freshener perfectly accommodates an apartment, home or office, filling the entire space with a special odor-fighting formula. Have small areas that could use a little refresher? The Filter Fresh air freshener can handle that too, eliminating odors in closets, bathrooms and even your car. And it couldnt be easier to use: Simply attach the Filter Fresh pads to any size filter on a central furnace or AC unit. It will even work on electrostatic filters, but dont use the pads on these types of filters if it is directly connected to your households electrical currents. Have an oscillating fan? Then you can connect Filter Fresh to the front of it, allowing you to pleasantly scent one room at a time. For days of cool ocean mist to revive your stale office, apartment or closet, use Protect Plus Industries The Web Filter Fresh Whole Home Ocean Mist Air Freshener. WEB FilterFresh whole home air freshener attaches to any furnace or air conditioner filter. The secret to a pleasant smelling house! As the central furnace/AC system runs a ocean breeze scent fills your home. Great for parties, open houses, holidays and to help reduce lingering household odors like smoke, kitchen, bathroom and pet odors. Safer than candles and FilterFresh lasts longer than aerosol sprays. Scents last for days depending on the size of your home and how much the system is running. Comes with one air freshener in ocean mist scent Air freshener masks odors throughout your entire home, office or apartment Easily attaches to any furnace or air conditioner filter Air freshener lasts for days Works great in small areas like cars, closets and bathrooms', 'household, essentials, air, fresheners', 1046),
(3, '015f1020a41d6e9f98cf93e5ac5c8109', 'Right Guard Sport Deodorant Aerosol Spray, Fresh, 8.5 Oz', 12, 'right, guard', 'https://i5.walmartimages.com/asr/b960e6c1-2f85-46f3-acb8-3f8686ecd4f6_1.366b236d1e42be44890aa9793b7a0d29.jpeg | https://i5.walmartimages.com/asr/44931ee9-28c9-41a7-872d-3a1fc5bf1d24_1.57344cdc546c134263b305f1c84602f4.jpeg | https://i5.walmartimages.com/asr/1390e2e3-95b6-4c02-8294-f6ead26d3c80_1.938c95a8010b134aa334000acd2d369f.jpeg | https://i5.walmartimages.com/asr/cec4dea6-5369-457e-9624-20e247051eeb_1.e3cb4aead52b8faf174a1c4c8843a1ef.jpeg | https://i5.walmartimages.com/asr/96291b77-100e-45ff-bd92-2b1f3c2c107f_1.6775508f298e14bea8b15f266bc1fb1a.jpeg', 3.7, 'Right Guard Sport Fresh Deodorant provides all-day protection against perspiration odor, helps protect your clothes with its anti-stain formulation, and dries on contact.       Right Guard Sport Fresh Deodorant 8.5 oz. Aerosol Can: Steel Right Guard sport aerosol deodorant fresh Meets EPA clean air standards *Based on unit sales The distinctive design and elements of this package are proprietary and owned by The Dial Corporation, A Henkel Company Please recycle', 'personal, care, men, essentials, men, bath, body', 1052),
(4, 'ea54402b2dc8ed8825d88b3417075ccb', 'Garnier Whole Blends Smoothing Shampoo with Coconut Oil & Cocoa Butter Extracts, 12.5 fl. oz.', 9799, 'garnier', 'https://i5.walmartimages.com/asr/70da3e89-1984-453b-ba60-5ea7dee290cf.f3799dd715cfb199d2e33160fb334b7b.jpeg | https://i5.walmartimages.com/asr/ce4fab48-5340-4172-8e78-2927ab66d8e4.99fabfc0769a48209fa418e3ed51fdc5.jpeg | https://i5.walmartimages.com/asr/ab7e3077-d950-45f3-8ae4-37a424c29296.db20a51fb59ede9e76f70a39cbb67eaa.jpeg | https://i5.walmartimages.com/asr/89a4da47-100e-467b-bf3a-7e9165b3f97c.be106f7148b3a51200367e5688cff1d0.jpeg | https://i5.walmartimages.com/asr/3bdceb77-1eec-47aa-a0b6-834a9b02514e.94d6c9052940b00bf6eabc927dbdd975.jpeg | https://i5.walmartimages.com/asr/e08f0ff3-2c04-496f-8c28-f41a5d7a0b2e.13860206321c23bbf0e8423cb33096e1.jpeg | https://i5.walmartimages.com/asr/e422f63f-f8cf-454d-a21e-0dbe7853f3ae.943c0e2d0abf44f1fcd35731090bca65.jpeg | https://i5.walmartimages.com/asr/8d1b2234-b5b5-4a89-98ab-634c94c066e9_1.bc3745a7aa5de45b10b39d0dc9e8cd53.jpeg | https://i5.walmartimages.com/asr/6d4fd567-f354-40dc-85c7-671fcd3e3a3d.8846fc389fa7c3d56f10aeeff5f42b98.jpeg | https://i5.walmartimages.com/asr/d0f90046-2519-47a2-a2d1-0e5365b93867.9edeeae591256360f84ff5cfb62bbdbc.jpeg', 0, 'We believe in the power of blends to provide nourishing care for your hair. If your hair is prone to frizz, we have a blend for you. Our velvety formula brings sustainably sourced Coconut Oil, known to soften, together with Cocoa butter extracts. As a Whole Blend, it smooths frizz for 24-hours and tames flyways*. Coconut Oil for Hair contains super hydrating properties, its ideal in formulas that help combat frizz, prevent damage, and boost smoothness and shine. *When using the Garnier Whole Blends Smoothing system of shampoo & conditioner. Whole Blends Smoothing Shampoo provides 24 hour frizz control Formula blended with sustainably sourced Cocoa Butter known to soften and Coconut Oil, a legendary smoother Paraben-free and gentle enough for everyday use For every blend, thereâ€™s Whole Blends, hair care blended with purpose', 'beauty, hair, care, shampoo, shampoo', 347),
(5, '8eeadaee7a33be02bb1c19352db9badf', 'Palmers Skin Success Eventone Anti Bacterial Medicated Complexion Bar Vitamin E, 3.5 oz - (Pack of 3)', 1, 'palmer', 'https://i5.walmartimages.com/asr/87f98188-ad3c-41d0-b59a-84be82e3e97e_1.1a05d04b3db2968198c61ab37b37454a.jpeg | https://i5.walmartimages.com/asr/0de60286-f3b3-4993-98a6-b94c06fd7859.bc3549080b7e7b310d1b1a4c39921d2a.jpeg', 5, 'Pack of 3 for the UPC: 010181173806 Product DescriptionUse palmers skin success eventone complexion soap for cleaner, evenly toned skin. Formulated to leave skin thoroughly clean without over drying, it helps eliminate clogged pores that can lead to blemishes. Vitamin E softens and protects, revealing a smoother more balanced complexion. Palmers skin success eventone complexion soap rinses clean away, so skin never feels tight or uncomfortable. Cleanses skin without over drying Helps eliminate clogged pores Leaves smoother more balanced complexion Vitamin E softens and protects 3 Pack - Palmers Skin Success Eventone Anti Bacterial Medicated Complexion Bar Vitamin E, 3.5 oz', 'beauty, skin, care, skin, care, sets', 1421),
(6, '0e666b2bd711cf5077d0e7f146fedfe5', 'J.R. Watkins Tub and Tile Cleaner Spray Orange Scent', 7, 'watkins', 'https://i5.walmartimages.com/asr/29e66b1a-78b7-4ae0-9042-f0b07774cc70.a30714e78fe7c1d4edb641ee6a8b0a57.jpeg | https://i5.walmartimages.com/asr/255a91ff-fa85-44e4-bd43-9e76daa8965c_1.dbba1fd592b9c29bc284424685689ace.jpeg', 0, 'When natural cleaning is the goal, reach for J.R. Watkins. For a sparkling tub, tile and shower fixtures with a lingering citrus scent, use J.R. Watkins Tub and Tile Cleaner Spray. Each 24 fl. oz. trigger sprayer bottle tackles tough water stains and soap scum with ease. 99.74% natural solution is phosphate-free, so it works great, even for people with sensitive skin. Ammonia-free, bleach-free, dye-free, sodium lauryl sulfate-free. Safe for septic systems and environmentally friendly.  Watkins Tub & Tile Cleaner Spray Citrus, 24 Fl Oz', 'household, essentials, bathroom, bathroom, cleaners', 1295),
(7, 'f5dbe6fea7f833e6154b059fde49d71e', 'Citronella Essential Oil - 1/6 fl oz (5 ml) Glass Bottle w/ Euro Dropper - 100% Pure Essential Oil by GreenHealth', 9, 'greenhealth', 'https://i5.walmartimages.com/asr/b3d479f9-64cf-4422-aad6-fc58f2d32956_1.3f4b7bef22c09be9094875077332d074.jpeg | https://i5.walmartimages.com/asr/02414166-7cbc-4537-ad7c-81e049d94578_1.535fff3ad34cc437e5ac0b23753aa8c7.jpeg', 4.8, 'Citronella oil is extracted from a resilient grass (Cymbopogon nardus) native to Sri Lanka and Java. It is a very aromatic perennial that grows approximately 1 meter (3 feet) in height. Disclaimer: Please note, the International Federation of Aromatherapists do not recommend that Essential Oils, Carrier Oils, or Hydrosols be taken internally unless under the supervision of a Medical Doctor who is also qualified in clinical Aromatherapy. Citronella Essential Oil by GreenHealth Botanical Name:  Cymbopogon nardus Aromatic Scent:  Citrusy, slightly fruity, fresh, sweet.', 'health, aromatherapy, essential, oils, essential, oils', 499),
(8, 'a7a7156ce12965cf88c23f02107402d6', 'Revlon ColorStay Overtime Lipcolor, Long Wearing Liquid Lipstick - 24/7 Pink', 480, 'revlon', 'https://i5.walmartimages.com/asr/45ea8c0d-ed07-4570-973c-e5bf5358c3ab_1.39560340eb4eda99db1e5b044fe25bcc.jpeg | https://i5.walmartimages.com/asr/6eff7b62-4115-4131-bab8-29f5b65e72b4_1.bd3515c376b1674cf2f348363c02d5a2.jpeg | https://i5.walmartimages.com/asr/78772f36-4aee-4835-91f0-8f60aeaf26a6_1.3e504b5c1343f18ce1c5610add07b9ff.jpeg | https://i5.walmartimages.com/asr/478c9407-897f-4856-bc14-ff7a869119c2_1.993ee391e8372b5c65593955d5b1c159.jpeg | https://i5.walmartimages.com/asr/e26b2733-9b27-43ad-95ce-6356f22e2928_1.136cb3879fcde68a848c96f694a2ed6f.jpeg | https://i5.walmartimages.com/asr/19dd5d0a-1dad-4354-95f2-1ba381a9c33c_1.f2679efdde954369d63702807ae5b081.jpeg | https://i5.walmartimages.com/asr/b7c1293f-55df-4ede-b978-549da3c35c12_1.34638f1436dd2794127ae5519b1ee68f.jpeg | https://i5.walmartimages.com/asr/16ad8c3d-7bff-42d9-b40d-92f4b8ea10f3_1.5d8c08867e59be8d63856c6c4f51fa40.jpeg', 4.2, 'Revlon ColorStay Overtime Lipcolor is a dual-ended long-wearing lipstick thats transfer-proof, kiss-proof, so you can forget touch-ups throughout your day or night. Get shiny lip color that doesnt smudge off or rub off, and conditions with vitamin E. One end smoothes on our long-wearing ColorStay liquid lipstick—weve made it extra plush, so it feels soft on your lips and the other end is loaded with a clear lip gloss, that acts as a top coat, for a slick look. The upgraded clear lip gloss contains ingredients, including vitamin E (for even more comfort, plus moisture!), chamomile, and soy extract. Youll get color that never feels dry, bleeds or feathers. Its available in 30 lipstick colors ranging from reds, nudes, browns, pinks, and plums. Forget touch-ups: This transfer-proof, kiss-proof longwearing lipstick wont let you down. The color is vibrant, and the creamy formula stays put for up to 16 hours without smudging One end smoothes on our longwearing ColorStay liquid lipstick—weve made it extra plush, so it feels soft on your lips. The other end is loaded with a clear lip gloss, that acts as a top coat, for a slick look The upgraded clear lip gloss contains ingredients, including vitamin E (for even more comfort, plus moisture!), chamomile, and soy extract Our promise: You get color that never feels dry, bleeds, or feathers Available in 30 shiny, kiss-proof lipstick colors ranging from reds, nudes, browns, pinks, and plums This item was formulated without Sulfates, Parabens, or Phthalates', 'beauty, beauty, topic, mindful, beauty, mindful, beauty, cosmetics', 675),
(9, '44b4f5c7e0bc33566f499bc9b4533cee', 'Super Colon 1800 Weight Loss Detox Cleanse All Natural with Acai Fruit and Fennel Seeds 60 Capsules Per Bottle (10 bottles)', 0, 'maritzmayer', 'https://i5.walmartimages.com/asr/ac11c894-0064-4ffb-b40b-1ad3bbb38a50_1.0a09bb8e455424ae7661b463f5e3350e.jpeg | https://i5.walmartimages.com/asr/c1ca8e5e-a2ff-4b90-83fb-ceecab231951_1.343c7df69e5cb72d792ff4b0c0bf26ad.jpeg', 0, 'Super Colon 1800 is a digestive health support supplement, formulated with ingredients to help support detoxification, such as Cascara Sagrada, Cape Aloe, probiotics, and more.', 'health, superfoods, cleanses, colon, cleanse', 5270),
(10, '62cb6424bfe6f4cc38489c44b1ceaadf', 'Almay Eye Makeup Remover Pads, Longwear & Waterproof 80 ea (Pack of 3)', 0, 'almay', 'https://i5.walmartimages.com/asr/ede7f7fb-65d2-4855-81ba-ecda1fe815b1_1.cda3055df6c021def7811e3c7579c1b1.jpeg', 0, 'Free Shipping Pack of 3 Pack of 3 for the UPC: 309975924480 Gently removes all traces of eye makeup, even stubborn waterproof mascaras and longwearing products. Ingredients:  Paraffinum Liquidum (Mineral Oil), Propylene Glycol Dicaprylate/Dicaprate, C12 15 Alkyl Benzoate, Aloe Barbadensis Leaf Extract, Cucumis Sativus (Cucumber) Fruit Extract, Camellia Sinensis Leaf Extract, Phenoxyethanol, Methylparaben, Propylparaben', 'beauty, skin, care, makeup, remover, almay, makeup, removers', 2083),
(11, 'e8cc3d9760fa42a1b90e4606942b6ad8', 'Rimmel London Oh My Gloss! Oil Lip Tint, Master Pink', 1423, 'rimmel', 'https://i5.walmartimages.com/asr/26ebd838-1de7-4743-b322-8d7a23c3f3c8_1.dbe745e4d1086bc3c50560529cd9a267.jpeg | https://i5.walmartimages.com/asr/355050e9-b95c-4da1-b988-47b88619b838_1.97c3871e9ecc2977b1beda30805cd6a2.jpeg | https://i5.walmartimages.com/asr/a07b4f27-95b0-4329-9afc-9ed4c9640bdd_1.63fa3f8f51448c8e5a86d8bfdf3dedce.jpeg | https://i5.walmartimages.com/asr/2d3ce68b-a204-4164-b46a-bde2e914e9f1_1.62b7b29c9bbf0147317a6e3587704770.jpeg | https://i5.walmartimages.com/asr/44007130-7579-46db-9789-69e4cb7e4681_1.71e4ea65d60aa0addd6c0bbbd59995d1.jpeg', 0, 'Pamper your pucker with Rimmel London Oh My Gloss Oil Tint. This latest innovation from Rimmel London is more than just your average gloss. The richly hydrating balm takes shine to new heights with an oil-based formula that nourishes lips with extra moisture. Rimmel lip glosss sheer finish imparts beautiful color but is translucent enough to let the natural beauty of your lips shine through. The unique formulation infuses lips with superior moisturizers to keep lips soft, supple and beautiful. The oil based lip gloss can be used alone for a hint of tint or layered over your favorite Rimmel London lip colors for non-stop shine. The high-gloss finish is never sticky or tacky. Choose from six gorgeous shades, including three pink shades, coral and red, to best suit your style. Rimmel London Oh My Gloss! Oil Lip Tint, Master Pink: Available in six different sheer shades: Contemporary Coral, Modern Pink, Orange Mode, Smart Pink, Master Pink and Pop Poppy Oil-based Rimmel lip gloss for extra moisture High-gloss finish is ideal worn alone or layered over your favorite Rimmel London lipstick shades Rimmel lip gloss is never sticky and is comfortable to wear Adds a flush of sheer color thats ideal for just about any occasion', 'beauty, beauty, brands, rimmel, rimmel, lip, makeup', 634),
(12, 'c5fb686100509df6b6a81c3b3334706c', 'Clarins Bust Beauty Firming Lotion, 1.7 Oz', 6, 'clarins', 'https://i5.walmartimages.com/asr/324a4e6a-0bad-403e-8b15-e320e8a8eff7_1.5b828455b994356c4f7613601ef39de1.jpeg | https://i5.walmartimages.com/asr/9bd60b3b-86df-41bd-bff0-54dc0ac27859_1.272787f909d5cf67f6424969babe39b6.jpeg', 3, 'This high-quality product from a trusted brand offers exceptional value and reliability. Carefully curated to meet your daily needs, it is designed for your convenience and satisfaction. ', 'premium, beauty, premium, bath, body, premium, body, lotions', 2750),
(13, '24a8c95f41554008b0c94522c75d8915', '(3 Pack) O MY! Goat Milk Soap - Vanilla Sandalwood 6 OUNCE', 0, 'o', 'https://i5.walmartimages.com/asr/1f7fa832-019c-48b2-b0bd-d76145b9d397_1.a38f89df12d2cead80eaee36aa8a25e3.jpeg', 0, 'O MY! Goat Milk Soap - Vanilla Sandalwood 6 OUNCE sold as single and value multi-packs. Buy in quantity and save! (3 Pack) O MY! Goat Milk Soap - Vanilla Sandalwood 6 OUNCE', 'personal, care, bath, body, bar, soap', 2250),
(14, '6bb02248288f847ba8a36613f977c45f', 'Garnier SkinActive Moisture Rescue Face Moisturizer, Normal/Combo, 1.7 oz.', 732, 'garnier', 'https://i5.walmartimages.com/asr/95369513-e8a0-4a7c-a78e-a60795df1274.692d955320ae03c00b12e4da1481455b.jpeg | https://i5.walmartimages.com/asr/20aee852-ac07-496c-9667-75a085b095a1.8ef701fb09a093663bbf42a75572fdcf.jpeg | https://i5.walmartimages.com/asr/83a8ede0-e575-4a3f-babb-e6e7f0bf7829.bcb1949c7e3d5ad2b665fade17f678df.jpeg | https://i5.walmartimages.com/asr/23917464-776b-4ead-8876-b550438c41fe.3bc822102b984c04346a128bae9f8873.jpeg | https://i5.walmartimages.com/asr/ab0ea22b-0545-4531-8fc1-e9241b3c1be7.4c37c6a241d3515ebf6a4047d0963e13.jpeg | https://i5.walmartimages.com/asr/50175fae-1c00-4446-8213-6147399dabc3.ab69315b70235a3c9fe498329774eaf8.jpeg | https://i5.walmartimages.com/asr/be488922-b9d1-4674-ad92-0da7a8f656c1.715aa8c3b63dab57a71a4e3e6f50c8c1.jpeg', 0, 'This oil-free, gel-cream face moisturizer with Vitamin E and Fruit Water Antioxidant Complex provides 24-hour hydration and protects and defends against moisture loss. This water-light non-comedogenic face moisturizer does not clog pores. In one use, this facial moisturizer leaves skin feeling deeply hydrated, softer and smoother. Suitable for all skin types, especially dry skin. *In a consumer test. Oil-free gel-cream face moisturizer with Vitamin E and Fruit Water Antioxidant Complex Face moisturizer for normal to combo skin provides 24-hour hydration and helps protect skins barrier Non-comedogenic facial moisturizer that does not clog pores In one use, skin is hydrated, softer and smoother', 'beauty, skin, care, moisturizers, facial, moisturizers, sensitive, skin', 662),
(15, '0f87b5f502ed5b0ed687b3bb5dc45685', 'Andalou Naturals Body Lotion Mandarin Vanilla', 2, 'andalou, naturals', 'https://i5.walmartimages.com/asr/f8dbba22-d8d9-4db0-96c9-27cbe28c1df7_1.f504844aaf64d8c3ca74538fa52262a5.jpeg | https://i5.walmartimages.com/asr/7ee2173d-67d2-403b-b231-a87ed3f12245_1.5072f3925f61a6e21a6d2e9852d33909.jpeg', 0, 'Superfruit antioxidants, rosehip + argan oils, shea + cocoa butters, ultra-hydrating aloe vera.Verified gluten free. Vegan.Non GMO. Non GMO Project Verified. nongmoproject.org.Natures intelligence fruit stem cell science. This ultimate skin food blends emollient rich rosehip and argan oils with shea and cocoa butters to nourish, smooth, and soften the appearance of dry skin. Vitalizing mandarin vanilla delights the senses as superfruit antioxidants and ultra-hydrating aloe vera help protect and uplift skins moisture barrier for a luxurious, all-over body treatment. Beauty is you. Nature 99% derived. To Use: Apply over body; absorbs quickly for satin smooth skin.Good for 12 months once opened. New Look Non GMO Superfruit Antioxidants Rosehip + Argan Oils Shea + Cocoa Butters', 'personal, care, bath, body, body, lotions, creams', 1361),
(16, '6735fc519eb0d4dc5180c482bc4606b5', 'Quart Belloccio Simple Tan 12% DHA Dark Sunless Airbrush Spray Tanning Solution', 1, 'belloccio', 'https://i5.walmartimages.com/asr/57ffec3e-4d79-4520-934a-4a1b04c8b619_1.eec4d5c9e90bf683761a0d54ce6e193c.jpeg', 5, '1 Quart of Belloccio Simple Tan Professional Salon Sunless Tanning Solution with 12% DHA and Dark Bronzer Color GuideBelloccio, the most popular and trusted brand of tanning solutions in the industry.Simple Tan is a super premium natural tanning solution that delivers long-lasting beautiful natural-looking tans that last for 7 to 10 days. Its formulated with a special proprietary blend of vitamins and antioxidants that help revitalize, tighten and moisturize the skin while creating an even, flawless, natural-looking golden tan.Professional Salon Formula.Anti-aging skin nourishing ingredients.Hydrating organic aloe vera based.Fast drying, streak-free and odor-free.Pleasant fresh citrus scent.Paraben free.The 12.5% DHA formula works best with medium to dark complexion skin tone types. (olive, caribbean, latin, mediterranean, etc...) It contains dark bronzer color guide that provides an immediate bronze color to aid you in even application. Belloccio Simple Tan 8% & 10% DHA Medium and 12% DHA Dark are made in: 4 ounce, pint, quart, half gallon and gallon sizes. Quart Belloccio Simple Tan 12% DHA Dark Sunless Airbrush Spray Tanning Solution Professional Salon Formula. Anti-aging skin nourishing ingredients; Hydrating organic aloe vera based. The skin firming and moisturizing formula contains a highly concentrated antioxidant blend of ingredients that help revitalize, restore and renew the skin. Fast drying, streak-free and odor-free; Pleasant fresh citrus scent; Paraben free. Belloccio Simple Tan 8, 10 and 12% DHA are made in: 4 ounce, pint, quart, half gallon and gallon sizes', 'personal, care, sun, care, self, tanners, bronzers', 3396),
(17, 'd6e059294bb5a4282db6e65b5affa0d2', 'Simply Smooth 8686183 By Simply Smooth Xtend Keratin Reparative Magic Potion 8.5 Oz', 3, 'simply, smooth', 'https://i5.walmartimages.com/asr/8203fc30-16a4-4208-8223-90ebf842965f_1.04c85ea8194ff766b21ec76ce815492c.jpeg | https://i5.walmartimages.com/asr/19a5958c-de94-4d39-9dda-8554d416eb5e_1.78628b06a18377549c960c350097bb88.jpeg', 5, 'This high-quality product from a trusted brand offers exceptional value and reliability. Carefully curated to meet your daily needs, it is designed for your convenience and satisfaction. ', 'premium, beauty, premium, hair, care, hair, tools, premium, styling, products, premium, hair, styling, products', 1418),
(18, '7b49c75950540a191509d7dffcc0a373', 'Banana Boat Sunscreen Lip Balm Aloe Vera With Vitamin E SPF 45 0.15 oz', 1, 'banana, boat', 'https://i5.walmartimages.com/asr/1c01447a-af70-4d86-96ca-2d648ca26785_1.3ae03bebbfaf61c519fbb742a49ccef4.jpeg', 5, 'Banana Boat Sunscreen Lip Balm Aloe Vera With Vitamin E SPF 45 0.15 ozCelebrate the sun!Sunscreen, Lip BalmEnergizer PcActive Ingredients:Avobenzone 2.00%; Octocrylene 10.00%; Oxybenzone 6.00%Apply before sun exposure and as needed. Sun Alert: Limiting sun exposure, wearing protective clothing, and using sunscreens may reduce the risk of skin aging, skin cancer and other harmful effects of the sun.Inactive Ingredients:Petrolatum; Polyethylene; Ethyl Palmitate; Trimethylsiloxyphenyl Dimethicone; Microcrystalline Wax; Isopropyl Myristate; Theobroma Cacao (Cocoa) Seed Butter; PEG-8; Aloe Barbadensis Leaf Extract; Tocopheryl Acetate (Vitamin E); Ascorbic Acid (Vitamin C); Retinyl Palmitate (Vitamin A); Silica; Caprylyl Glycol; Sodium Saccharin; Fragrance; Propylparaben; Butylparaben Uses:Helps prevent sunburn. Banana Boat Aloe Vera and Vitamin E Lip Balm is very water/sweat resistant and moisturizes and soothes dry chapped lips. This ultra-sheer formula with patented AvoTriplex technology protects in 3 ways: 1. Against sunburn with high UVB protection, 2. Against the effects of aging and long term skin damage with high UVA protection, and 3. Lasts longer than ordinary sunscreens since it doesnt break down.Stop use and ask a doctor if: rash or irritation develops. Keep out of reach of children. If swallowed, get medical help or contact a Poison Control Center right away.', 'beauty, makeup, lip', 407),
(19, 'aef76f92d31441110fe91f55c44fd86a', '2 Pack - LOreal Paris RevitaLift Double Lifting Eye Cream/Gel 0.50 oz', 47, 'professionnel', 'https://i5.walmartimages.com/asr/37378053-c0dc-4d23-8bda-7cf4bb70fb4c_1.dfd11de52f75dbe4a7815a5119da63e4.jpeg | https://i5.walmartimages.com/asr/edef885b-f628-4cd9-87bf-8ebc35d499c0.5433f1f8d481e6e0e8d9f3bab902d3c1.png', 0, 'This high-quality product from a trusted brand offers exceptional value and reliability. Carefully curated to meet your daily needs, it is designed for your convenience and satisfaction. ', 'premium, beauty, premium, facial, skincare, premium, eye, cream, treatments', 2445),
(20, '74b3df55cf8f2f6b0bfc34bc9fd0c7d9', 'Product of Clorox Toiletwand with 36 Disposable Cleaning Heads - Cleaning Tools [Bulk Savings]', 1, 'product, clorox', 'https://i5.walmartimages.com/asr/53466600-67e4-4f17-adde-fe3b85bbe705_1.a1ee0ce077088353ed82ca17f7ab4d1f.jpeg', 0, 'Product of Clorox Toiletwand with 36 Disposable Cleaning Heads - Cleaning Tools [Bulk Savings]', 'household, essentials, bathroom, bathroom, cleaners', 2349),
(21, 'f70539e1f1510edd27e4854b2f94ba74', 'SheaMoisture Body Scrub African Black Soap & Charcoal, 6 oz', 61, 'sheamoisture', 'https://i5.walmartimages.com/asr/312d6642-6afe-40d3-8e9b-fb93f067bea4_1.020d20a25faf06cfc76debff04e44602.jpeg | https://i5.walmartimages.com/asr/e6277026-c7a5-44fa-8097-e10933c8fc11_1.afde77ad29a43a95629a956c9550a114.jpeg | https://i5.walmartimages.com/asr/b175633d-37e9-4b13-9bc0-4281deac0e7a_1.17096748ed3ce6420a243fffcabc2d73.jpeg', 0, 'Shea Moistures African Black Soap & Bamboo Charcoal Scrub is a body polish that deeply cleanses and exfoliates skin with a detoxifying cocktail of ingredients. This gentle body scrub buffs away dead skin cells while also helping to absorb excess oil and impurities. African Black Soap blended with bamboo charcoal in this body polish helps balance and draw out dirt from problem skin while organic raw shea butter helps moisturize and soothe. Leaves skin cleansed, purified, and smooth. No Parabens, Phthalates, Propylene Glycol, Mineral Oil and Sulfates. No Animal Testing. Perfect for sensitive skin. Lather in hands or on a washcloth and wash entire body. Rinse clean. SheaMoistures Story: Sofi Tucker started selling Shea Nuts at the village market in Bonthe, Sierra Leone in 1912. By age 19, the widowed mother of four was selling Shea Butter, African Black Soap and her homemade hair and skin preparations all over the countryside. Sofi Tucker was the Grandmother and SheaMoisture is her legacy. With this purchase you help empower disadvantaged women to realize a brighter, healthier future. Ethically Traded Ingredients Sustainably Produced. Pioneering Community Commerce and Fair Trade Since 1912. Tested on the Tucker family for four generations. Never on animals. This gentle body scrub buffs away dead skin cells while also helping to absorb excess oil and impurities. It deeply cleanses and exfoliates skin with a detoxifying cocktail of ingredients. SheaMoisture Body Scrub African Black Soap & Charcoal 6 oz Shea Moisture African Black Soap & Charcoal body polish deeply cleanses and exfoliates skin with a detoxifying cocktail of ingredients. African Black Soap blended in this body scrub exfoliator with bamboo charcoal helps balance and draw out dirt from problem skin while organic raw shea butter helps balance moisture and soothe. This body exfoliator with African Black Soap & Bamboo Charcoal leaves skin cleansed, purified, and smooth. This exfoliating body scrub with African Black Soap has no Parabens, Phthalates, Propylene Glycol, Mineral Oil and Sulfates. No Animal Testing. African Black Soap in this skin exfoliator cleanses and hydrates problem skin while Bamboo Charcoal helps absorbs oil and impurities to help detoxify and purify skin. Tea Tree Oil in this exfoliating scrub with African Black Soap & Bamboo Charcoal helps soothe and calm troubled skin.', 'personal, care, bath, body, body, scrubs, exfoliators', 1237),
(22, 'c5f6f924577db476beed05092c185a81', 'Truform Mens Socks, Knee High, Dress Style: 15-20 mmHg, Brown, Small', 17, 'truform', 'https://i5.walmartimages.com/asr/817899fc-ed5f-4a03-84e0-6c685da60e29_1.f639970920aaf4ba164ad4afdd6d7ca8.jpeg | https://i5.walmartimages.com/asr/ba851828-3f1b-4cb8-83c8-d9d093fa0b56_1.ef167f927dd5cae674f0a57457e93b8c.png | https://i5.walmartimages.com/asr/81c57c1d-9736-4027-ab02-1a0c4d272e50_1.d6bd77950abb2f86fe277fe0f15485d5.jpeg | https://i5.walmartimages.com/asr/68c55200-0fcd-4d0e-a6b2-2d4d741570a1_1.f545e926e1c1c81cd3a90b632d8e37a7.jpeg', 3, 'Truform 1943, Mens: Truform mens dress-style support socks provide moderate graduated compression to help energize the legs - ideal when sitting or standing for long periods. Nylon-spandex materials are soft and resemble specialty store, designer-knit socks. Contemporary rib-knit styling is suitable for business or business-casual wear. Helps in the treatment of: Tired, aching legs. Moderate varicose veins. Moderate leg, ankle and foot swelling. Post surgery. Therapeutic graduated compression Moderate support 15-20 mmHg Mens dress style Contemporary rib knit styling Roomy toe and defined heel for comfort and correct fit Comfortable soft top Manufactured using 86% nylon & 14% spandex; does not include natural rubber latex', 'health, medicine, cabinet, braces, supports', 1579),
(23, 'caa2ec3473880802baf63c687931c5c8', 'Philosophy Pure Grace Nude Rose Body Lotion, 16 Oz', 1, 'philosophy', 'https://i5.walmartimages.com/asr/afd43403-7b33-4a73-bf03-735baf28c599_1.a20c3b1085fb23f9348e326c2e8b9841.jpeg | https://i5.walmartimages.com/asr/400fae81-4220-4ca4-8687-b56700057861_1.0c1a658370a065c55553b965c8c3eaf2.jpeg', 5, 'This high-quality product from a trusted brand offers exceptional value and reliability. Carefully curated to meet your daily needs, it is designed for your convenience and satisfaction. ', 'premium, beauty, premium, bath, body, premium, body, lotions', 3199),
(24, 'e9e2f99447950711da982f0d127f365a', 'Rimmel London Moisture Renew Lipstick, Crystal Mauve', 220, 'rimmel', 'https://i5.walmartimages.com/asr/308fe7b3-b5d0-47c6-99fa-bcb68e5e8264_1.3f54b638c331c40adcd21cbf18ddc15a.jpeg', 0, 'Lipstick, Moisture Renew, Crystal Mauve 270, Not Packed 0.14 OZ Made in England. Good for 30 months once opened. 0.14 oz (4 g) New York, NY 10118 Rimmel London Moisture Renew Lipstick: Rich vibrant color in berries, pinks, and nudes Vitamin infused color New and improved moisturizing formula Its Raining Color Ready to pamper your lips with luxuriously moisturized rich color for a soft Rimmel introduces its new and improved moisture renew lipstick for a brilliant burst of rich', 'beauty, beauty, brands, rimmel, rimmel, lip, makeup', 514),
(25, '877dcd50d9acc2f2807bf40075dc0e88', 'Leaders Cosmetics AC Clear Treatment Mask', 7, 'leaders, cosmetics', 'https://i5.walmartimages.com/asr/be308b5e-7248-4fb4-ac90-8aa75c4d3eca_14.4f3243264d5d4e11eade810bbce177ed.png', 5, 'This high-quality product from a trusted brand offers exceptional value and reliability. Carefully curated to meet your daily needs, it is designed for your convenience and satisfaction. ', 'premium, beauty, premium, k, beauty, premium, korean, skincare, korean, face, masks', 500),
(26, '1bb35ffcec51895cd965996154e53cc1', 'Febreze Car Odor-Eliminating Air Freshener, Hawaiian Aloha, 2 ct', 125, 'febreze', 'https://i5.walmartimages.com/asr/309c20b0-22aa-4337-9fd0-18735301e636.65b75dc75aa8f827ebc6f0ffd1e08f9c.jpeg | https://i5.walmartimages.com/asr/0c2e3ff2-0367-4b3d-85be-ac74ad3a7e26.1993d44e5a87cd7c955eb00eb879fe36.jpeg | https://i5.walmartimages.com/asr/ad149675-2789-4771-8eca-083d126cafba.7159fe097baf32c2bde569f9e410bdf8.jpeg | https://i5.walmartimages.com/asr/fef42976-013e-4dc1-afc1-d2bf11aac04c.6476f94bf901d99d59e3368fed7b2dc6.jpeg | https://i5.walmartimages.com/asr/3e6bf2cb-2c9e-4eca-9763-e86772bd55d6.1c9a948a264d4c36eeeecb072d51fdc9.jpeg | https://i5.walmartimages.com/asr/f82e8236-cb47-423e-a37e-38113d18ec0a.f12998b92b5762a17bdbe3702d2e0dd3.jpeg | https://i5.walmartimages.com/asr/004ae31d-c8ab-46c2-bee2-7b75fe648acc.f5d0b515f04e8312bb836e732fa4de5b.jpeg | https://i5.walmartimages.com/asr/1fa5d303-59f4-42e8-94d1-87eaf64c64d7.a16382201f7ccd8254cd8f40e525a77e.jpeg', 4.3, 'Smelly passengers and fast food bags… you can take them out of your car, but their odors still chase you around town. Kick em to the curb with Febreze CAR Vent Clips, and eliminate odors trapped in your car, minivan, or ice cream truck. These tiny car vent air fresheners have incredible odor blockers and odor eliminators that remove all those stinks and smells built up from your longest, commute-iest days. Simply push the vent clip firmly until you hear it click to activate fragrance, then clip onto your car vent and drive stink-free for a whole 30 days. So, freshen up your ride and breathe happy, no matter where the road takes you. Want the rest of your life as odor-free as your car? Take the fresh vibes home with Febreze Air Effects Air Fresheners. Febreze Car Odor-Eliminating Air Freshener Vent Clips, Hawaiian Aloha, 2 Ct: Eliminates car odors trapped in your cars fabric and air vents Easy to activate: Push the vent clip until you hear it click in Cleans away car odors for 30 days to keep your carpool smelling carcool Adjust the scent intensity your way from low to high Get your luau on with the fruity, floral, and luscious scent of Hawaiian Aloha', 'auto, tires, auto, detailing, car, care, car, air, fresheners', 494),
(27, '32c496f1b2d3cd695c106627fdcddf83', 'Surgical Grade Stainless Steel Tongue Scraper, Bacterial Inhibition, Non-Synthetic Grip, Sterilizable', 7, 'nogis', 'https://i5.walmartimages.com/asr/6bfc44b8-7a36-4a94-a795-50bea2b5aa66.1039453d060f49cac64ba70c40efb1a9.jpeg', 3, 'Surgical Grade Stainless Steel Tongue Scraper, Bacterial Inhibition, Non-Synthetic Grip, Sterilizable', 'personal, care, oral, care, oral, accessories, oral, accessories', 490),
(28, '0a5b358a86bcd394b3f53de156c20f2d', 'Wet Dry Unisex Painless Stainless Steel Blade Men Women s Fashion Personal Face Grooming Care Electric Nose Ear Face Nose Hair Removal Trimmer Shaver Clipper Remover', 12, 'kadell', 'https://i5.walmartimages.com/asr/7af6c2eb-4f0f-43e1-9523-1c3e8f23a2bf_1.73edcb2736bfaadced91f2b4a5d4bc14.jpeg', 4.2, 'Material: German Stainless Steel 1. Brand new & High quality. 2. Curved, hypoallergenic and stainless steel blade. 3. Trim ears, eyebrows, sideburns, back of neck, nostrils, chest anywhere you want to trim/ cut out that extra hair 4. Smooth, motor provides quick and painless movement. 5. Eliminate the traditional need of scissors to remove the unsightly nostril and ear hair, higher security provided. 6. Rotary blade system with a circular blade action that effectively trims the overgrown hair of your nose or ear wall. 7. Safety cone head guides the hair into the blade and protects the skin from direct contact 1. Condition: New 2. Powered supply: 1 x AA battery (NOT Included). 3. Size: 5.19 x 1.14inch/13.2 x 2.8cm. 4. Material: Plastic shell+ 5. Color:Red/Silver How to use: 1 Pushed up the open key 2 Put the trimmer into nostrils, and make rotation cycle action to trim the nasal hair. 3 Close the nose hair trimmer; 4 Cover the shield to prevent damage of the outer foil. 5.Clear cap top to protect the blade when not in use. 1. Condition: New 2. Powered supply: 1 x AA battery (NOT Included). 3. Size: 5.19 x 1.14inch/13.2 x 2.8cm. 4. Material: Plastic shell 5. Color:Red 1.Trim ears, eyebrows, sideburns, back of neck, nostrils, chest anywhere you want to trim/ cut out that extra hair 2.Curved, hypoallergenic and stainless steel blade. 3.Smooth, motor provides quick and painless movement. 4. Powered supply: 1 x battery (NOT Included). 5. Size: 5.14 x 1.14inch/12.6 x 2.8cm. 6. Color:Red,Silver', 'personal, care, shaving, nose, hair, trimmer', 1299),
(29, '29f9977d780af6d17b4501747dd401e3', 'Conair(R) Womens Dual-Blade Trimmer', 8, 'conair', 'https://i5.walmartimages.com/asr/6ff94b7a-48a3-499a-b33c-1922db281628_1.2010087ff89d4aaf51597306553617e0.jpeg', 4, 'Conair(R) Womens Dual-Blade Trimmer. Conair(R) battery-operated small blade for eyebrows and precise trimming. Model LT3WB.@generated', 'personal, care, shaving, trimmers, groomers', 21179),
(30, 'e87b21baaf0bcbf7c493865f81ab1877', 'Dove Men+Care Extra Fresh Deodorant Stick, 3 oz, Twin Pack', 262, 'dove', 'https://i5.walmartimages.com/asr/b5e8998a-b91a-4bd6-898d-2a35be955250_1.f1c5b020f80abd780fc5f96cb4b0b9a9.jpeg | https://i5.walmartimages.com/asr/32e9cb73-3e93-4f80-b4e1-127c5f13d065_1.b6fe8d71936faa36e297e47b061f78a5.jpeg | https://i5.walmartimages.com/asr/780082da-73d4-4a5d-bd43-beba36337888_1.629303939fe31e780f8a540110506170.jpeg | https://i5.walmartimages.com/asr/ff0815cc-3327-4e2a-a322-29d063c98abb_1.7ce5ca1c52c4eafd534fbe62e9fcac8c.jpeg | https://i5.walmartimages.com/asr/9d3625ab-92f4-4d69-adc3-60c58576b228_1.dd31e552bb335f04358b7a2dab66ab5e.jpeg | https://i5.walmartimages.com/asr/881923ac-0c12-4b56-bfae-5ffde7545492_1.e6e146b4452fb77b3dd6b3a72b46d863.jpeg | https://i5.walmartimages.com/asr/5502ebd2-a0c8-4e46-ab81-439576c675c1_1.74457c47a34c9e8e737a6d3ac88942bb.jpeg | https://i5.walmartimages.com/asr/13e64277-e4a1-4fc1-94c5-1ae0cbe0fe09_2.c9cae3dc48a793284e4b9242988ab468.jpeg', 4.6, 'If you want the feeling of long lasting freshness, reach for Dove Men+Care Extra Fresh Deodorant Stick. This deodorant stick is designed to deliver up to 48 hours of odor protection while helping to provide total skin comfort, this Dove Men+Care deodorant has an invigorating, refreshing scent so you?ll feel fresh throughout the day. Dove Men+Care goes beyond just providing powerful odor-protection with it?s non-irritant formula. This men?s deodorant stick contains ¼ moisturizer technology to help soothe and condition skin so you?ll be protected. If you?re looking for a strong men?s deodorant that cares for your skin Dove Men+Care Extra Fresh Deodorant Stick is for you. Combining ¼ moisturizer technology with 48-hour protection, you?ll feel fresh and comfortable all day. To use, swipe this deodorant stick for men over skin to dispense an even layer onto each of your underarms for long lasting freshness and protection against sweat and odor. When you?re on the go all the time, you need a long-lasting deodorant for men that can keep up with your busy schedule. Odor can be a problem if you are always on the move but, thankfully, it is one that is easy to fight with Dove Men+Care Extra Fresh Deodorant Stick. Extra Fresh Deodorant Stick Specifically designed for men 48hr powerful odor protection ¼ moisturizer technology to help soothe and condition skin Provides total skin comfort Feels refreshingly clean Invigorating, refreshing scent', 'seasonal, manual, shelves, seasonal, american, jobs, 2020', 878);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchaseid` int(11) NOT NULL,
  `productid` varchar(255) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `productprice` float NOT NULL,
  `purchaseTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`purchaseid`, `productid`, `productname`, `quantity`, `productprice`, `purchaseTime`, `userid`) VALUES
(1, '102', 'R+Co Aircraft Pomade Mousse, 5.6 Oz', 1, 230, '2024-11-24 13:00:22', 7),
(2, '102', 'R+Co Aircraft Pomade Mousse, 5.6 Oz', 1, 230, '2024-11-24 13:01:29', 7),
(3, '102', 'R+Co Aircraft Pomade Mousse, 5.6 Oz', 1, 230, '2024-11-24 13:01:48', 7),
(4, '102', 'R+Co Aircraft Pomade Mousse, 5.6 Oz', 1, 230, '2024-11-24 13:02:04', 7),
(5, '102', 'R+Co Aircraft Pomade Mousse, 5.6 Oz', 1, 230, '2024-11-24 13:02:14', 7),
(6, '101', '($100 Value) Peter Thomas Roth Thermal Therapy Duo Skincare Kit', 1, 100, '2024-11-24 13:13:31', 7),
(7, '101', '($100 Value) Peter Thomas Roth Thermal Therapy Duo Skincare Kit', 1, 100, '2024-11-24 13:13:34', 7),
(8, '101', '($100 Value) Peter Thomas Roth Thermal Therapy Duo Skincare Kit', 1, 100, '2024-11-24 13:14:32', 7),
(9, '102', 'R+Co Aircraft Pomade Mousse, 5.6 Oz', 1, 230, '2024-11-24 13:15:14', 7),
(10, '101', '($100 Value) Peter Thomas Roth Thermal Therapy Duo Skincare Kit', 1, 100, '2024-11-24 13:40:00', 7),
(11, '107', 'Groganics DHT Ice Oil Scalp Moisturizer, 4 oz', 1, 322, '2024-11-24 13:41:24', 7),
(12, 'caa2ec3473880802baf63c687931c5c8', 'Philosophy Pure Grace Nude Rose Body Lotion, 16 Oz', 3, 3199, '2024-11-24 13:54:19', 7),
(13, '103', 'Candle Warmers Etc. Rustic Brown Hurricane Candle Warmer Lantern', 4, 450, '2024-11-24 13:55:02', 7),
(14, 'ea54402b2dc8ed8825d88b3417075ccb', 'Garnier Whole Blends Smoothing Shampoo with Coconut Oil & Cocoa Butter Extracts, 12.5 fl. oz.', 5, 347, '2024-11-24 15:35:27', 8),
(15, '110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 4, 600, '2024-11-24 15:52:59', 8),
(16, '101', '($100 Value) Peter Thomas Roth Thermal Therapy Duo Skincare Kit', 4, 100, '2024-11-24 16:08:40', 8),
(17, '105', 'ReNew Life CleanseMore, Veggie Caps, 60 ea', 1, 600, '2024-11-24 16:25:37', 8),
(18, '104', 'Recovery Complex Anti-Frizz Shine Serum by Bain de Terre for Unisex, 4.2 oz', 2, 430, '2024-11-25 01:59:47', 4),
(19, '104', 'Recovery Complex Anti-Frizz Shine Serum by Bain de Terre for Unisex, 4.2 oz', 6, 430, '2024-11-25 02:52:51', 8),
(20, 'caa2ec3473880802baf63c687931c5c8', 'Philosophy Pure Grace Nude Rose Body Lotion, 16 Oz', 4, 3199, '2024-11-25 03:30:31', 8),
(21, '69fcfd133c562a1f41e019850dfe890c', 'Head & Shoulders Dandruff Conditioner Dry Scalp Care 13.50 oz (Pack of 3)', 1, 2447, '2024-11-27 12:35:09', 5),
(22, '101', '($100 Value) Peter Thomas Roth Thermal Therapy Duo Skincare Kit', 4, 100, '2024-11-28 07:48:29', 5),
(23, '15da1f8729178cd5158b55932dc35901', 'SheaMoisture 100% Argan Oil Argan Oil, 1.6 oz', 5, 1112, '2024-11-28 07:49:03', 5),
(24, '102', 'R+Co Aircraft Pomade Mousse, 5.6 Oz', 1, 230, '2024-12-05 04:49:06', 8),
(25, '101', '($100 Value) Peter Thomas Roth Thermal Therapy Duo Skincare Kit', 1, 100, '2024-12-06 07:00:25', 8),
(26, '101', '($100 Value) Peter Thomas Roth Thermal Therapy Duo Skincare Kit', 1, 100, '2024-12-06 07:00:53', 8),
(27, '101', '($100 Value) Peter Thomas Roth Thermal Therapy Duo Skincare Kit', 1, 100, '2024-12-06 07:01:28', 8),
(28, '101', '($100 Value) Peter Thomas Roth Thermal Therapy Duo Skincare Kit', 1, 100, '2024-12-06 07:02:27', 8),
(29, '101', '($100 Value) Peter Thomas Roth Thermal Therapy Duo Skincare Kit', 1, 100, '2024-12-06 07:02:37', 8),
(30, '101', '($100 Value) Peter Thomas Roth Thermal Therapy Duo Skincare Kit', 1, 100, '2024-12-06 07:02:49', 8),
(31, '101', '($100 Value) Peter Thomas Roth Thermal Therapy Duo Skincare Kit', 1, 100, '2024-12-06 07:03:01', 8),
(32, '101', '($100 Value) Peter Thomas Roth Thermal Therapy Duo Skincare Kit', 1, 100, '2024-12-06 07:03:22', 8),
(33, '101', '($100 Value) Peter Thomas Roth Thermal Therapy Duo Skincare Kit', 1, 100, '2024-12-06 07:03:33', 8),
(34, '103', 'Candle Warmers Etc. Rustic Brown Hurricane Candle Warmer Lantern', 1, 450, '2024-12-06 07:05:02', 8),
(35, '103', 'Candle Warmers Etc. Rustic Brown Hurricane Candle Warmer Lantern', 1, 450, '2024-12-06 07:05:26', 8),
(36, '103', 'Candle Warmers Etc. Rustic Brown Hurricane Candle Warmer Lantern', 1, 450, '2024-12-06 07:05:51', 8),
(37, '103', 'Candle Warmers Etc. Rustic Brown Hurricane Candle Warmer Lantern', 1, 450, '2024-12-06 07:06:00', 8),
(38, '103', 'Candle Warmers Etc. Rustic Brown Hurricane Candle Warmer Lantern', 1, 450, '2024-12-06 07:06:07', 8),
(39, '110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2024-12-06 07:07:22', 8),
(40, '110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2024-12-06 07:07:31', 8),
(41, '110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2024-12-06 07:07:38', 8),
(42, '110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2024-12-06 07:07:45', 8),
(43, '110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2024-12-06 07:08:06', 8),
(44, '110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2024-12-06 07:08:14', 8),
(45, '110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2024-12-06 07:08:20', 8),
(46, '110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2024-12-06 07:08:24', 8),
(47, '110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2024-12-06 07:08:29', 8),
(48, '110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2024-12-06 07:08:36', 8),
(49, '110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2024-12-06 07:08:49', 8),
(50, '110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2024-12-06 07:09:05', 8),
(51, '110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2024-12-06 07:09:14', 8),
(52, '110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2024-12-06 07:09:44', 8),
(53, '110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2024-12-06 07:09:52', 8),
(54, '110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2024-12-06 07:09:59', 8),
(55, '015f1020a41d6e9f98cf93e5ac5c8109', 'Right Guard Sport Deodorant Aerosol Spray, Fresh, 8.5 Oz', 1, 1052, '2024-12-09 18:02:28', 13),
(56, 'c5fb686100509df6b6a81c3b3334706c', 'Clarins Bust Beauty Firming Lotion, 1.7 Oz', 3, 2750, '2024-12-09 18:08:00', 14),
(57, 'c5fb686100509df6b6a81c3b3334706c', 'Clarins Bust Beauty Firming Lotion, 1.7 Oz', 2, 2750, '2024-12-10 01:36:54', 8),
(58, '103', 'Candle Warmers Etc. Rustic Brown Hurricane Candle Warmer Lantern', 1, 450, '2024-12-11 03:35:53', 8),
(59, '103', 'Candle Warmers Etc. Rustic Brown Hurricane Candle Warmer Lantern', 1, 450, '2024-12-11 03:36:45', 8),
(60, '103', 'Candle Warmers Etc. Rustic Brown Hurricane Candle Warmer Lantern', 1, 450, '2024-12-11 03:38:18', 8),
(61, '103', 'Candle Warmers Etc. Rustic Brown Hurricane Candle Warmer Lantern', 1, 450, '2024-12-11 03:39:21', 8),
(62, '102', 'R+Co Aircraft Pomade Mousse, 5.6 Oz', 4, 230, '2024-12-11 03:53:50', 8),
(63, '103', 'Candle Warmers Etc. Rustic Brown Hurricane Candle Warmer Lantern', 1, 450, '2024-12-11 04:18:34', 8),
(64, '110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2024-12-11 04:21:08', 8),
(65, '0a5b358a86bcd394b3f53de156c20f2d', 'Wet Dry Unisex Painless Stainless Steel Blade Men Women s Fashion Personal Face Grooming Care Electric Nose Ear Face Nose Hair Removal Trimmer Shaver Clipper Remover', 3, 1299, '2024-12-11 04:25:57', 8),
(66, '101', '($100 Value) Peter Thomas Roth Thermal Therapy Duo Skincare Kit', 6, 100, '2024-12-21 06:15:25', 8),
(67, '328ca136ce6a4c0fd133c49582938234', 'Women Men Silicone Simulation False Denture Smile Emulation White Teeth', 1, 655, '2024-12-22 05:34:48', 8),
(68, '110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2024-12-24 12:55:39', 8),
(69, '110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2024-12-24 12:57:08', 8),
(70, '102', 'R+Co Aircraft Pomade Mousse, 5.6 Oz', 1, 230, '2024-12-24 12:57:14', 8),
(71, '102', 'R+Co Aircraft Pomade Mousse, 5.6 Oz', 1, 230, '2024-12-24 12:57:52', 8),
(72, '102', 'R+Co Aircraft Pomade Mousse, 5.6 Oz', 1, 230, '2024-12-24 12:58:48', 8),
(73, 'e655fe42cfdfa9be55f14959d082dcd2', 'Women Men Silicone Simulation False Denture Smile Emulation White Teeth', 1, 655, '2024-12-24 13:03:53', 8),
(74, 'e655fe42cfdfa9be55f14959d082dcd2', 'Women Men Silicone Simulation False Denture Smile Emulation White Teeth', 1, 655, '2024-12-24 13:04:11', 8),
(75, '109', 'Guerlain L\\homme Ideal Eau De Toilette Spray for Men 3.3 oz', 8, 500, '2024-12-24 13:32:50', 5),
(76, '109', 'Guerlain L\\homme Ideal Eau De Toilette Spray for Men 3.3 oz', 8, 500, '2024-12-24 13:33:52', 5),
(77, '109', 'Guerlain L\\homme Ideal Eau De Toilette Spray for Men 3.3 oz', 8, 500, '2024-12-24 13:33:59', 5),
(78, '109', 'Guerlain L\\homme Ideal Eau De Toilette Spray for Men 3.3 oz', 8, 500, '2024-12-24 13:34:07', 5),
(79, '109', 'Guerlain L\\homme Ideal Eau De Toilette Spray for Men 3.3 oz', 8, 500, '2024-12-24 13:34:18', 5),
(80, '109', 'Guerlain L\\homme Ideal Eau De Toilette Spray for Men 3.3 oz', 8, 500, '2024-12-24 13:34:35', 5),
(81, '109', 'Guerlain L\\homme Ideal Eau De Toilette Spray for Men 3.3 oz', 8, 500, '2024-12-24 13:34:40', 5),
(82, '109', 'Guerlain L\\homme Ideal Eau De Toilette Spray for Men 3.3 oz', 8, 500, '2024-12-24 13:34:59', 5),
(83, '109', 'Guerlain L\\homme Ideal Eau De Toilette Spray for Men 3.3 oz', 8, 500, '2024-12-24 13:35:04', 5),
(84, '109', 'Guerlain L\\homme Ideal Eau De Toilette Spray for Men 3.3 oz', 8, 500, '2024-12-24 13:35:17', 5),
(85, ' 101', '($100 Value) Peter Thomas Roth Thermal Therapy Duo Skincare Kit', 1, 100, '2024-12-24 16:06:21', 8),
(86, ' 101', '($100 Value) Peter Thomas Roth Thermal Therapy Duo Skincare Kit', 1, 100, '2024-12-24 16:06:42', 8),
(87, ' d8cb73ae1b8613e5c7a6160c554e30df', 'Womens Stockings, Knee High, Sheer: 15-20 mmHg, Taupe, Large', 1, 1300, '2024-12-24 16:10:32', 8),
(88, ' d8cb73ae1b8613e5c7a6160c554e30df', 'Womens Stockings, Knee High, Sheer: 15-20 mmHg, Taupe, Large', 1, 1300, '2024-12-24 16:11:15', 8),
(89, ' 108', 'Vega Chlorella Dietary Supplement Powder 5.3 oz. Bottle', 1, 830, '2024-12-24 16:20:05', 8),
(90, ' 110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2024-12-24 16:23:34', 8),
(91, ' 103', 'Candle Warmers Etc. Rustic Brown Hurricane Candle Warmer Lantern', 1, 450, '2024-12-24 16:25:50', 8),
(92, '102', 'R+Co Aircraft Pomade Mousse, 5.6 Oz', 6, 230, '2024-12-24 16:26:08', 8),
(93, ' 102', 'R+Co Aircraft Pomade Mousse, 5.6 Oz', 1, 230, '2025-01-01 16:18:07', 15),
(94, 'd6e059294bb5a4282db6e65b5affa0d2', 'Simply Smooth 8686183 By Simply Smooth Xtend Keratin Reparative Magic Potion 8.5 Oz', 1, 1418, '2025-01-18 07:31:51', 8),
(95, 'd6e059294bb5a4282db6e65b5affa0d2', 'Simply Smooth 8686183 By Simply Smooth Xtend Keratin Reparative Magic Potion 8.5 Oz', 1, 1418, '2025-01-18 07:33:23', 8),
(96, 'd6e059294bb5a4282db6e65b5affa0d2', 'Simply Smooth 8686183 By Simply Smooth Xtend Keratin Reparative Magic Potion 8.5 Oz', 1, 1418, '2025-01-18 07:33:37', 8),
(97, ' 110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2025-01-18 07:33:52', 8),
(98, ' 110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2025-01-18 07:34:16', 8),
(99, ' 110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2025-01-18 07:34:22', 8),
(100, ' 110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2025-01-18 07:34:42', 8),
(101, ' 110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2025-01-18 07:34:51', 8),
(102, ' 110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2025-01-18 07:35:07', 8),
(103, ' 110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2025-01-18 07:35:23', 8),
(104, ' 110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2025-01-18 07:35:34', 8),
(105, ' 110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2025-01-18 07:35:48', 8),
(106, ' 110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2025-01-18 07:36:02', 8),
(107, ' 110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2025-01-18 07:36:12', 8),
(108, ' 110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2025-01-18 07:36:30', 8),
(109, ' 110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2025-01-18 07:36:50', 8),
(110, ' 110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2025-01-18 07:36:59', 8),
(111, ' 110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2025-01-18 07:37:07', 8),
(112, ' 110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2025-01-18 07:37:15', 8),
(113, ' 110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2025-01-18 07:37:25', 8),
(114, ' 110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2025-01-18 07:37:45', 8),
(115, 'c5fb686100509df6b6a81c3b3334706c', 'Clarins Bust Beauty Firming Lotion, 1.7 Oz', 1, 2750, '2025-01-31 07:41:15', 15),
(116, '102', 'R+Co Aircraft Pomade Mousse, 5.6 Oz', 1, 230, '2025-01-31 13:05:44', 8),
(117, '102', 'R+Co Aircraft Pomade Mousse, 5.6 Oz', 1, 230, '2025-01-31 13:07:54', 8),
(118, '102', 'R+Co Aircraft Pomade Mousse, 5.6 Oz', 1, 230, '2025-01-31 13:08:50', 8),
(119, '102', 'R+Co Aircraft Pomade Mousse, 5.6 Oz', 1, 230, '2025-01-31 13:09:10', 8),
(120, ' 103', 'Candle Warmers Etc. Rustic Brown Hurricane Candle Warmer Lantern', 1, 450, '2025-01-31 13:11:51', 8),
(121, '24a8c95f41554008b0c94522c75d8915', '(3 Pack) O MY! Goat Milk Soap - Vanilla Sandalwood 6 OUNCE', 1, 2250, '2025-01-31 13:35:44', 8),
(122, ' 1c4b18e48a5893d6fee9d01f86abf6e2', 'Aquage SeaExtend Silkening Oil Foam, 8 Oz', 1, 2496, '2025-02-02 08:18:07', 4),
(123, ' 1c4b18e48a5893d6fee9d01f86abf6e2', 'Aquage SeaExtend Silkening Oil Foam, 8 Oz', 1, 2496, '2025-02-02 08:18:47', 4),
(124, '107', 'Groganics DHT Ice Oil Scalp Moisturizer, 4 oz', 3, 322, '2025-02-02 08:19:16', 4),
(125, '107', 'Groganics DHT Ice Oil Scalp Moisturizer, 4 oz', 5, 322, '2025-02-02 08:22:45', 4),
(126, 'ea54402b2dc8ed8825d88b3417075ccb', 'Garnier Whole Blends Smoothing Shampoo with Coconut Oil & Cocoa Butter Extracts, 12.5 fl. oz.', 3, 1041, '2025-02-02 12:55:54', 15),
(127, ' 107', 'Groganics DHT Ice Oil Scalp Moisturizer, 4 oz', 1, 322, '2025-02-02 16:15:14', 4),
(128, ' 107', 'Groganics DHT Ice Oil Scalp Moisturizer, 4 oz', 1, 322, '2025-02-02 16:15:57', 4),
(129, '107', 'Groganics DHT Ice Oil Scalp Moisturizer, 4 oz', 1, 322, '2025-02-02 16:21:36', 4),
(130, ' 107', 'Groganics DHT Ice Oil Scalp Moisturizer, 4 oz', 1, 322, '2025-02-02 16:22:42', 4),
(131, ' 110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2025-02-02 16:42:46', 16),
(132, ' 102', 'R+Co Aircraft Pomade Mousse, 5.6 Oz', 1, 230, '2025-02-02 16:49:42', 8),
(133, '102', 'R+Co Aircraft Pomade Mousse, 5.6 Oz', 4, 920, '2025-02-02 16:51:42', 8),
(134, '102', 'R+Co Aircraft Pomade Mousse, 5.6 Oz', 4, 920, '2025-02-02 16:54:38', 8),
(135, '103', 'Candle Warmers Etc. Rustic Brown Hurricane Candle Warmer Lantern', 1, 450, '2025-02-02 16:54:44', 8),
(136, '103', 'Candle Warmers Etc. Rustic Brown Hurricane Candle Warmer Lantern', 3, 1350, '2025-02-02 16:54:48', 8),
(137, ' 101', '($100 Value) Peter Thomas Roth Thermal Therapy Duo Skincare Kit', 1, 100, '2025-02-02 16:55:27', 8),
(138, '101', '($100 Value) Peter Thomas Roth Thermal Therapy Duo Skincare Kit', 5, 500, '2025-02-02 17:00:02', 8),
(139, ' 110', 'Alaffia Body Lotion, Vanilla, 32 Oz', 1, 495, '2025-02-02 17:20:33', 16),
(140, ' 102', 'R+Co Aircraft Pomade Mousse, 5.6 Oz', 1, 230, '2025-02-02 23:09:35', 17);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(100) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `repassword` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `username`, `email`, `password`, `repassword`, `status`, `role`) VALUES
(3, 'prac', 'prac@123gmail.com', 'prac333', '', 1, 'admin\r\n'),
(4, 'Hari', 'babu@gmail.com', 'babu123', 'babu123', 1, 'user'),
(5, 'sudhan', 'iamsudhan@gmail.com', 'sudhan123', 'sudhan123', 1, 'user'),
(6, 'sudhan123', 'cr7sudhan@gmail.com', 'sudhan123', 'sudhan123', 1, 'user'),
(7, 'hehe', 'hehe@gmail.com', 'hehe', 'hehe', 0, 'user'),
(8, 'practice', 'practice@gmail.com', 'practice', 'practice', 1, 'user'),
(13, 'videoDemo', 'videoDemo@gmail.com', 'videoDemo', 'videoDemo', 0, 'user'),
(14, 'videoDemo1', 'videoDemo1@gmail.com', 'videoDemo1', 'videoDemo1', 0, 'user'),
(15, 'newUser', 'newUser@gmail.com', 'newUser123', 'newUser123', 1, 'user'),
(16, 'FinalDefense', 'FinalDefense@gmail.com', 'FinalDefense123', 'FinalDefense123', 1, 'user'),
(17, 'DemoVideo', 'DemoVideo@gmail.com', 'DemoVideo123', 'DemoVideo123', 0, 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`cartid`),
  ADD KEY `fk_cart_user` (`userid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `displayproduct`
--
ALTER TABLE `displayproduct`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchaseid`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `cartid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `displayproduct`
--
ALTER TABLE `displayproduct`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchaseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `fk_cart_user` FOREIGN KEY (`userid`) REFERENCES `signup` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
