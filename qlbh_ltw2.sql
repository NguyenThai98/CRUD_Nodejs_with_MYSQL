-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2020 at 04:03 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlbh_ltw2`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `CatID` int(11) UNSIGNED NOT NULL,
  `CatName` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CatID`, `CatName`) VALUES
(1, 'Sách'),
(2, 'Điện thoại'),
(3, 'Máy chụp hình'),
(4, 'Quần áo - Giày dép'),
(5, 'Máy tính'),
(6, 'Đồ trang sức'),
(7, 'Khác');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `ID` int(11) UNSIGNED NOT NULL,
  `OrderID` int(11) NOT NULL,
  `ProID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` bigint(20) NOT NULL,
  `Amount` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) UNSIGNED NOT NULL,
  `OrderDate` datetime NOT NULL,
  `UserID` int(11) NOT NULL,
  `Total` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProID` int(11) UNSIGNED NOT NULL,
  `ProName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TinyDes` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `FullDes` text COLLATE utf8_unicode_ci NOT NULL,
  `Price` int(11) NOT NULL,
  `CatID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProID`, `ProName`, `TinyDes`, `FullDes`, `Price`, `CatID`, `Quantity`) VALUES
(1, 'Freshwater Cultured Pearl', 'Freshwater Cultured Pearl, Citrine, Peridot & Amethyst Bracelet,\r\n7.5\"', '<UL>\r\n <LI>Metal stamp: 14k </LI>\r\n <LI>Metal:\r\nyellow-ld</LI>\r\n <LI>Material Type: amethyst, citrine, ld, pearl,\r\nperidot</LI>\r\n <LI>Gem Type: citrine, peridot, amethyst</LI>\r\n\r\n<LI>Length: 7.5 inches</LI>\r\n <LI>Clasp Type: filigreebox</LI>\r\n <LI>Total metal weight: 0.6\r\nGrams</LI>\r\n</UL>\r\n<STRONG>Pearl Information</STRONG>\r\n<BR>\r\n<UL>\r\n <LI>Pearl type: freshwatercultured</LI>\r\n</UL>\r\n<STRONG>Packaging Information</STRONG>\r\n<BR>\r\n<UL>\r\n <LI>Package: Regal Blue Sueded-Cloth\r\nPouch</LI>\r\n</UL>', 1500000, 6, 83),
(2, 'Pink Sapphire Sterling Silver', '14\r\n1/2 Carat Created Pink Sapphire Sterling Silver Bracelet w/ Diamond\r\nAccents', '<P><STRONG>Jewelry Information</STRONG></P>\r\n<UL>\r\n\r\n<LI>Loại hàng: Hàng trong nước</LI>\r\n</UL>\r\n', 300000, 6, 64),
(3, 'Torrini KC241', 'Nhẫn kim cương -\r\nvẻ đẹp kiêu sa', '<P>Không chỉ có kiểu dáng truyền thống chỉ có một\r\nhạt kim cương ở giữa, các nhà thiết kế đã tạo những những chiếc nhẫn\r\nvô cùng độc đáo và tinh tế. Tuy nhiên, giá của đồ trang sức này thì\r\nchỉ có dân chơi mới có thể kham được.</P>\r\n<UL>\r\n <LI>Kiểu sản\r\nphẩm: Nhẫn nữ</LI>\r\n <LI>Loại đá: To paz</LI>\r\n <LI>Chất\r\nliệu: kim cương, nguyên liệu và công nghệ Italy...</LI>\r\n <LI>Đơn\r\ngiá: 2,110,250 VND / Chiếc</LI>\r\n</UL>\r\n', 1600000000, 6, 86),
(4, 'Torrini KC242', 'tinh xảo và sang\r\ntrọng', '<P>Để sở hữu một chiếc nhẫn kim cương lấp lánh trên tay, bạn\r\nphải là người chịu chi và sành điệu.<BR>\r\nVới sự kết hợp khéo léo và\r\nđộc đáo giữa kim cương và Saphia, Ruby... những chiếc nhẫn càng trở\r\nnên giá trị.</P>\r\n<UL>\r\n <LI>Kiểu sản phẩm: Nhẫn nam</LI>\r\n\r\n<LI>Loại đá: To paz</LI>\r\n <LI>Chất liệu: Vàng tây 24K, nguyên\r\nliệu và công nghệ Italy...</LI>\r\n</UL>\r\n', 42000000, 6, 63),
(5, 'Nokia 7610', 'Độ phân giải cao, màn\r\nhình màu, chụp ảnh xuất sắc.', '<UL>\r\n <LI>Máy ảnh có độ phân\r\ngiải 1 megapixel</LI>\r\n <LI>Màn hình 65.536 màu, rộng 2,1 inch,\r\n176 X 208 pixel với đồ họa sắc nét, độ phân giải cao</LI>\r\n\r\n<LI>Quay phim video lên đến 10 phút với hình ảnh sắc nét hơn</LI>\r\n\r\n<LI>Kinh nghiệm đa phương tiện được tăng cường</LI>\r\n\r\n<LI>Streaming video &amp; âm thanh với RealOne Player (hỗ trợ các dạng\r\nthức MP3/AAC).</LI>\r\n <LI>Nâng cấp cho những đoạn phim cá nhân\r\ncủa bạn bằng các tính năng chỉnh sửa tự động thông minh</LI>\r\n\r\n<LI>In ảnh chất lượng cao từ nhà, văn phòng, kios và qua mạng</LI>\r\n\r\n<LI>Dễ dàng kết nối vớI máy PC để lưu trữ và chia sẻ (bằng cáp USB,\r\nPopPort, công nghệ Bluetooth)</LI>\r\n <LI>48 nhạc chuông đa âm\r\nsắc, True tones. Mạng GSM 900 / GSM 1800 / GSM 1900</LI>\r\n\r\n<LI>Kích thước 109 x 53 x 19 mm, 93 cc</LI>\r\n <LI>Trọng lượng 118\r\ng</LI>\r\n <LI>Hiển thị: Loại TFT, 65.536 màu</LI>\r\n <LI>Kích\r\ncở: 176 x 208 pixels </LI>\r\n</UL>\r\n', 2900000, 2, 0),
(6, 'Áo thun nữ', 'Màu sắc tươi tắn,\r\nkiểu dáng trẻ trung', '<UL>\r\n <LI>Loại hàng: Hàng trong\r\nnước</LI>\r\n <LI>Xuất xứ: Tp Hồ Chí Minh</LI>\r\n</UL>\r\n', 180000, 4, 62),
(7, 'Simen AP75', 'Thiết kế tinh xảo,\r\nhiện đại', '<UL>\r\n <LI>Hình ảnh hoàn hảo, rõ nét ở mọi góc màn\r\nhình</LI>\r\n <LI>Giảm thiểu sự phản chiếu ánh sáng</LI>\r\n\r\n<LI>Menu hiển thị tiếng Việt</LI>\r\n <LI>Hệ thống hình ảnh thông\r\nminh</LI>\r\n <LI>Âm thanh Hifi Stereo mạnh mẽ</LI>\r\n <LI>Hệ\r\nthống âm lượng thông minh</LI>\r\n <LI>Bộ nhớ 100 chương\r\ntrình</LI>\r\n <LI>Chọn kênh ưa thích</LI>\r\n <LI>Các kiểu sắp\r\nđặt sẵn hình ảnh / âm thanh</LI>\r\n <LI>Kích thước (rộng x cao x\r\ndày): 497 x 458 x 487mm</LI>\r\n <LI>Trọng lượng: 25kg</LI>\r\n\r\n<LI>Màu: vàng, xanh, bạc </LI>\r\n</UL>\r\n', 2800000, 2, 15),
(8, 'Áo bé trai', 'Hóm hỉnh dễ thương', '<UL>\r\n <LI>Quần áo bé trai</LI>\r\n <LI>Loại hàng: Hàng trong\r\nnước</LI>\r\n <LI>Xuất xứ: Tp Hồ Chí Minh</LI>\r\n</UL>\r\n', 270000, 4, 74),
(9, 'Bông tai nạm hạt rubby', 'Trẻ trung\r\nvà quý phái', '<UL>\r\n <LI>Tên sản phẩm: Bông tai nạm hạt\r\nrubby</LI>\r\n <LI>Đóng nhãn hiệu: Torrini</LI>\r\n <LI>Nguồn\r\ngốc, xuất xứ: Italy</LI>\r\n <LI>Hình thức thanh toán: L/C T/T M/T\r\nCASH</LI>\r\n <LI>Thời gian giao hàng: trong vòng 3 ngày kể từ ngày\r\nmua</LI>\r\n <LI>Chất lượng/chứng chỉ: od</LI>\r\n</UL>\r\n', 2400000, 6, 43),
(10, 'Đầm dạ hội ánh kim', 'Đủ màu sắc -\r\nkiểu dáng', '<UL>\r\n <LI>Màu sắc: Khuynh hướng ánh kim có thể thể\r\nhiện trên vàng, bạc, đỏ tía, xanh biển, vàng tím, trắng và đen.\r\n</LI>\r\n <LI>Một số biến tấu mang tính vui nhộn là vàng chanh, màu\r\nhoa vân anh và ngọc lam; trong đó hoàng kim và nhũ bạc khá phổ biến.\r\n</LI>\r\n <LI>Phong cách: Diềm đăng ten, rủ xuống theo chiều thẳng\r\nđứng, nhiều lớp, cổ chẻ sâu, eo chít cao tới ngực... được biến tấu tùy\r\ntheo mỗi nhà thiết kế.</LI>\r\n</UL>\r\n', 2800000, 4, 80),
(11, 'Dây chuyền ánh bạc', 'Kiểu dáng\r\nmới lạ', '<UL>\r\n <LI>Chất liệu chính: Bạc</LI>\r\n <LI>Màu\r\nsắc: Bạc</LI>\r\n <LI>Chất lượng: Mới</LI>\r\n <LI>Phí vận\r\nchuyển: Liên hệ</LI>\r\n <LI>Giá bán có thể thay đổi tùy theo trọng\r\nlượng và giá vàng của từng thời điểm.</LI>\r\n</UL>\r\n', 250000, 6, 88),
(12, 'Đồ bộ bé gái', 'Đủ màu sắc - kiểu\r\ndáng', '<UL>\r\n <LI>Màu sắc: đỏ tía, xanh biển, vàng tím, trắng và\r\nđen.</LI>\r\n <LI>Xuất xứ: Tp. Hồ Chí Minh</LI>\r\n <LI>Chất\r\nliệu: cotton</LI>\r\n <LI>Loại hàng: hàng trong\r\nnước</LI>\r\n</UL>\r\n', 120000, 4, 61),
(13, 'Đầm dạ hội Xinh Xinh', 'Đơn giản\r\nnhưng quý phái', '<P>Những đường cong tuyệt đẹp sẽ càng được phô bày\r\nkhi diện các thiết kế này.</P>\r\n<UL>\r\n <LI>Nét cắt táo bạo ở\r\nngực giúp bạn gái thêm phần quyến rũ, ngay cả khi không có trang&nbsp;\r\nsức nào trên người.</LI>\r\n <LI>Đầm hai dây thật điệu đà với nơ\r\nxinh trước ngực nhưng trông bạn vẫn toát lên vẻ tinh nghịch và bụi bặm\r\nnhờ thiết kế đầm bí độc đáo cùng sắc màu sẫm.</LI>\r\n <LI>Hãng sản\r\nxuất: NEM</LI>\r\n <LI>Kích cỡ : Tất cả các kích cỡ</LI>\r\n\r\n<LI>Kiểu dáng : Quây/Ống</LI>\r\n <LI>Chất liệu : Satin</LI>\r\n\r\n<LI>Màu : đen, đỏ</LI>\r\n <LI>Xuất xứ : Việt\r\nNam</LI>\r\n</UL>\r\n', 2600000, 4, 92),
(14, 'Đầm dạ hội NEM', 'Táo bạo và quyến\r\nrũ', '<P>Những đường cong tuyệt đẹp sẽ càng được phô bày khi diện các\r\nthiết kế này.</P>\r\n<UL>\r\n <LI>Nét cắt táo bạo ở ngực giúp bạn\r\ngái thêm phần quyến rũ, ngay cả khi không có trang&nbsp; sức nào trên\r\nngười.</LI>\r\n <LI>Đầm hai dây thật điệu đà với nơ xinh trước ngực\r\nnhưng trông bạn vẫn toát lên vẻ tinh nghịch và bụi bặm nhờ thiết kế\r\nđầm bí độc đáo cùng sắc màu sẫm.</LI>\r\n <LI>Hãng sản xuất:\r\nNEM</LI>\r\n <LI>Kích cỡ : Tất cả các kích cỡ</LI>\r\n <LI>Kiểu\r\ndáng : Quây/Ống</LI>\r\n <LI>Chất liệu : Satin</LI>\r\n <LI>Màu\r\n: đen, đỏ</LI>\r\n <LI>Xuất xứ : Việt Nam</LI>\r\n</UL>\r\n', 1200000, 4, 0),
(15, 'Dây chuyền đá quý', 'Kết hợp vàng\r\ntrắng và đá quý', '<UL>\r\n <LI>Kiểu sản phẩm: Dây chuyền</LI>\r\n\r\n<LI>Chất liệu: Vàng trắng 14K và đá quý, nguyên liệu và công nghệ\r\nItaly...</LI>\r\n <LI>Trọng lượng chất liệu: 1.1 Chỉ\r\n</LI>\r\n</UL>\r\n', 1925000, 6, 22),
(16, 'Nokia N72', 'Sành điệu cùng N72', '<UL>\r\n <LI>Camera mega pixel : 2 mega pixel</LI>\r\n <LI>Bộ\r\nnhớ trong : 16 - 31 mb</LI>\r\n <LI>Chức năng : quay phim, ghi âm,\r\nnghe đài FM</LI>\r\n <LI>Hỗ trợ: Bluetooth, thẻ nhớ nài, nhạc MP3\r\n&lt;br/&gt;</LI>\r\n <LI>Trọng lượng (g) : 124g</LI>\r\n\r\n<LI>Kích thước (mm) : 109 x 53 x 21.8 mm</LI>\r\n <LI>Ngôn ngữ : Có\r\ntiếng việt</LI>\r\n <LI>Hệ điều hành: Symbian OS\r\n8.1</LI>\r\n</UL>\r\n', 3200000, 2, 81),
(17, 'Mặt dây chuyền Ruby', 'Toả sáng\r\ncùng Ruby', '<UL>\r\n <LI>Kiểu sản phẩm:&nbsp; Mặt dây</LI>\r\n\r\n<LI>Chất liệu: Vàng trắng 14K, nguyên liệu và công nghệ Italy...\r\n</LI>\r\n <LI>Trọng lượng chất liệu: 0.32 Chỉ</LI>\r\n</UL>\r\n', 1820000, 6, 33),
(18, '1/2 Carat Pink Sapphire Silver', 'Created Pink Sapphire', '<UL>\r\n <LI>Brand Name: Ice.com</LI>\r\n\r\n<LI>Material Type: sterling-silver, created-sapphire, diamond</LI>\r\n\r\n<LI>Gem Type: created-sapphire, Diamond</LI>\r\n <LI>Minimum total\r\ngem weight: 14.47 carats</LI>\r\n <LI>Total metal weight: 15\r\nGrams</LI>\r\n <LI>Number of stones: 28</LI>\r\n <LI>Createdsapphire Information</LI>\r\n <LI>Minimum color: Not\r\nAvailable</LI>\r\n</UL>\r\n', 3400000, 6, 10),
(19, 'Netaya', 'Dây chuyền vàng trắng', '<UL>\r\n <LI>Kiểu sản phẩm:&nbsp; Dây chuyền</LI>\r\n <LI>Chất\r\nliệu: Vàng tây 18K, nguyên liệu và công nghệ Italy...</LI>\r\n\r\n<LI>Trọng lượng chất liệu: 1 Chỉ</LI>\r\n</UL>\r\n', 1820000, 6, 17),
(20, 'Giày nam GN16', 'Êm - đẹp - bề', '<UL>\r\n <LI>Loại hàng: Hàng trong nước</LI>\r\n <LI>Xuất xứ:\r\nTp Hồ Chí Minh</LI>\r\n <LI>Giá: 300 000 VNĐ</LI>\r\n</UL>\r\n', 540000, 4, 0),
(21, 'G3.370A', 'Đen bóng, sang trọng', '<UL>\r\n <LI>Loại hàng: Hàng trong nước</LI>\r\n <LI>Xuất xứ:\r\nTp Hồ Chí Minh</LI>\r\n</UL>\r\n', 300000, 4, 74),
(22, 'Giày nữ GN1', 'Kiểu dáng thanh\r\nthoát', '<UL>\r\n <LI>Loại hàng: Hàng trong nước</LI>\r\n\r\n<LI>Xuất xứ: Tp Hồ Chí Minh</LI>\r\n</UL>\r\n', 290000, 4, 30),
(23, 'NV002', 'Kiểu dáng độc đáo', '<P>\r\n<STRONG>Thông tin sản phẩm</STRONG></P>\r\n<UL>\r\n <LI>Mã sản\r\nphẩm: NV002</LI>\r\n <LI>Trọng lượng: 2 chỉ</LI>\r\n <LI>Vật\r\nliệu chính: Vàng 24K</LI>\r\n</UL>\r\n', 3600000, 6, 5),
(24, 'NV009', 'Sáng chói - mới lạ', '<P>\r\n<STRONG>Thông tin sản phẩm</STRONG></P>\r\n<UL>\r\n <LI>Mã sản\r\nphẩm: NV005</LI>\r\n <LI>Trọng lượng: 1 cây</LI>\r\n <LI>Vật\r\nliệu chính: Vàng 24K</LI>\r\n</UL>\r\n', 14900000, 6, 22),
(25, 'CK010', 'Độc đáo, sang trọng', '<UL>\r\n <LI>Kiểu dáng nam tính và độc đáo, những thiết kế dưới\r\nđây đáp ứng được mọi yêu cần khó tính nhất của người sở hữu.</LI>\r\n\r\n<LI>Những hạt kim cương sẽ giúp người đeo nó tăng thêm phần sành\r\nđiệu</LI>\r\n <LI>Không chỉ có kiểu dáng truyền thống chỉ có một\r\nhạt kim cương ở giữa, các nhà thiết kế đã tạo những những chiếc nhẫn\r\nvô cùng độc đáo và tinh tế.</LI>\r\n <LI>Tuy nhiên, giá của đồ\r\ntrang sức này thì chỉ có dân chơi mới có thể kham\r\nđược</LI>\r\n</UL>\r\n', 2147483647, 6, 52),
(26, 'CK009', 'Nữ tính - đầy quí phái', '<UL>\r\n <LI>Để sở hữu một chiếc nhẫn kim cương lấp lánh trên tay,\r\nbạn phải là người chịu chi và sành điệu.</LI>\r\n <LI>Với sự kết\r\nhợp khéo léo và độc đáo giữa kim cương và Saphia, Ruby... những chiếc\r\nnhẫn càng trở nên giá trị</LI>\r\n <LI>Nhà sản xuất:\r\nTorrini</LI>\r\n</UL>\r\n<P>Cái này rất phù hợp cho bạn khi tặng\r\nnàng</P>\r\n', 1850000000, 6, 11),
(27, 'CK007', 'Sự kết hợp khéo léo, độc\r\nđáo', '<UL>\r\n <LI>Để sở hữu một chiếc nhẫn kim cương lấp lánh\r\ntrên tay, bạn phải là người chịu chi và sành điệu.</LI>\r\n <LI>Với\r\nsự kết hợp khéo léo và độc đáo giữa kim cương và Saphia, Ruby... những\r\nchiếc nhẫn càng trở nên giá trị</LI>\r\n <LI>Nhà sản xuất:\r\nTorrini</LI>\r\n</UL>\r\n<P>Cái này rất phù hợp cho bạn khi tặng\r\nnàng</P>\r\n', 2147483647, 6, 28),
(28, 'CK005', 'Tinh xảo - sang trọng', '<UL>\r\n <LI>Kim cương luôn là đồ trang sức thể hiện đẳng cấp của\r\nngười sử dụng.</LI>\r\n <LI>Không phải nói nhiều về những kiểu nhẫn\r\ndưới đây, chỉ có thể gói gọn trong cụm từ: tinh xảo và sang\r\ntrọng</LI>\r\n <LI>Thông tin nhà sản xuất: Torrini</LI>\r\n\r\n<LI>Thông tin chi tiết: Cái này rất phù hợp cho bạn khi tặng\r\nnàng</LI>\r\n</UL>\r\n', 1800000000, 6, 29),
(29, 'NV01TT', 'Tinh tế đến không ngờ', '<UL>\r\n <LI>Tinh xảo và sang trọng</LI>\r\n <LI>Thông tin nhà\r\nsản xuất: Torrini</LI>\r\n <LI>Không chỉ có kiểu dáng truyền thống\r\nchỉ có một hạt kim cương ở giữa, các nhà thiết kế đã tạo những những\r\nchiếc nhẫn vô cùng độc đáo và tinh tế.</LI>\r\n <LI>Tuy nhiên, giá\r\ncủa đồ trang sức này thì chỉ có dân chơi mới có thể kham\r\nđược</LI>\r\n</UL>\r\n', 500000000, 6, 49),
(30, 'Motorola W377', 'Nữ tính - trẻ\r\ntrung', '<UL>\r\n <LI>General: 2G Network, GSM 900 / 1800 /\r\n1900</LI>\r\n <LI>Size:&nbsp; 99 x 45 x 18.6 mm, 73 cc</LI>\r\n\r\n<LI>Weight: 95 g</LI>\r\n <LI>Display: type TFT, 65K\r\ncolors</LI>\r\n <LI>Size: 128 x 160 pixels, 28 x 35\r\nmm</LI>\r\n</UL>\r\n', 2400000, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `userrefreshtokenext`
--

CREATE TABLE `userrefreshtokenext` (
  `ID` int(11) NOT NULL,
  `refreshToken` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rdt` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `f_ID` int(11) NOT NULL,
  `f_Username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_Password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `f_Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_DOB` date NOT NULL,
  `f_Permission` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CatID`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProID`);

--
-- Indexes for table `userrefreshtokenext`
--
ALTER TABLE `userrefreshtokenext`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`f_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `CatID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `f_ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
