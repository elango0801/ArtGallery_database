--create a artgallery management system 

create database artgallery;

-- use database
use artgallery;

-- Table structure for table admin
CREATE TABLE admin (
  ID int NOT NULL AUTO_INCREMENT,
  AdminName varchar(45) DEFAULT NULL,
  UserName varchar(50) DEFAULT NULL,
  MobileNumber varchar(15) DEFAULT NULL,
  Email varchar(120) DEFAULT NULL,
  Password varchar(255) DEFAULT NULL,
  AdminRegdate timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (ID)
);

-- Table structure for table artist
CREATE TABLE artist (
  ID int NOT NULL AUTO_INCREMENT,
  Name varchar(250) DEFAULT NULL,
  MobileNumber varchar(15) DEFAULT NULL,
  Email varchar(250) DEFAULT NULL,
  Education mediumtext DEFAULT NULL,
  Award mediumtext DEFAULT NULL,
  Profilepic varchar(250) DEFAULT NULL,
  CreationDate timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (ID)
);

-- Table structure for table artmedium
CREATE TABLE artmedium (
  ID int NOT NULL AUTO_INCREMENT,
  ArtMedium varchar(250) DEFAULT NULL,
  CreationDate timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (ID)
);

-- Table structure for table artproduct
CREATE TABLE artproduct (
  ID int NOT NULL AUTO_INCREMENT,
  Title varchar(250) DEFAULT NULL,
  Dimension varchar(250) DEFAULT NULL,
  Orientation varchar(100) DEFAULT NULL,
  Size varchar(100) DEFAULT NULL,
  Artist int DEFAULT NULL,
  ArtType int DEFAULT NULL,
  ArtMedium int DEFAULT NULL,
  SellingPricing decimal(10,2) DEFAULT NULL,
  Description mediumtext DEFAULT NULL,
  Image varchar(250) DEFAULT NULL,
  Image1 varchar(250) DEFAULT NULL,
  Image2 varchar(250) DEFAULT NULL,
  Image3 varchar(250) DEFAULT NULL,
  Image4 varchar(250) DEFAULT NULL,
  RefNum int DEFAULT NULL,
  CreationDate timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (ID),
  FOREIGN KEY (Artist) REFERENCES artist(ID) ON DELETE CASCADE,
  FOREIGN KEY (ArtMedium) REFERENCES artmedium(ID) ON DELETE SET NULL
);

-- Table structure for table arttype
CREATE TABLE arttype (
  ID int NOT NULL AUTO_INCREMENT,
  ArtType varchar(250) DEFAULT NULL,
  CreationDate timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (ID)
);

-- Table structure for table enquiry
CREATE TABLE enquiry (
  ID int NOT NULL AUTO_INCREMENT,
  EnquiryNumber varchar(10) NOT NULL,
  Artpdid int DEFAULT NULL,
  FullName varchar(120) DEFAULT NULL,
  Email varchar(250) DEFAULT NULL,
  MobileNumber varchar(15) DEFAULT NULL,
  Message varchar(250) DEFAULT NULL,
  EnquiryDate timestamp NULL DEFAULT current_timestamp(),
  Status varchar(10) DEFAULT NULL,
  AdminRemark varchar(200) NOT NULL,
  AdminRemarkdate timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (ID),
  FOREIGN KEY (Artpdid) REFERENCES artproduct(ID) ON DELETE CASCADE
);

-- Table structure for table page
CREATE TABLE page (
  ID int NOT NULL AUTO_INCREMENT,
  PageType varchar(200) DEFAULT NULL,
  PageTitle mediumtext DEFAULT NULL,
  PageDescription mediumtext DEFAULT NULL,
  Email varchar(200) DEFAULT NULL,
  MobileNumber varchar(15) DEFAULT NULL,
  UpdationDate date DEFAULT NULL,
  Timing varchar(200) NOT NULL,
  PRIMARY KEY (ID)
);

INSERT INTO admin (AdminName, UserName, MobileNumber, Email, Password) VALUES
('John Doe', 'admin1', '9876543210', 'john@example.com', 'admin@123'),
('Alice Smith', 'admin2', '9856743211', 'alice@example.com', 'password1'),
('Robert Brown', 'admin3', '9756341289', 'robert@example.com', 'password2'),
('Emily Davis', 'admin4', '9658732198', 'emily@example.com', 'password3'),
('David Wilson', 'admin5', '9567321987', 'david@example.com', 'password4');

INSERT INTO artist (Name, MobileNumber, Email, Education, Award, Profilepic) VALUES
('Leonardo Vinci', '9876543201', 'leo@example.com', 'Master of Arts', 'Best Painter 2020', 'leo.jpg'),
('Pablo Picasso', '9765432109', 'pablo@example.com', 'Fine Arts', 'Modern Art Award', 'pablo.jpg'),
('Vincent Van Gogh', '9654321098', 'vincent@example.com', 'Self-taught', 'Impressionist Art Award', 'vincent.jpg'),
('Claude Monet', '9543210987', 'monet@example.com', 'Fine Arts', 'French Painter Award', 'monet.jpg'),
('Frida Kahlo', '9432109876', 'frida@example.com', 'Visual Arts', 'Best Female Painter', 'frida.jpg'),
('Salvador Dali', '9321098765', 'dali@example.com', 'Surrealism', 'Surrealist Award', 'dali.jpg'),
('Michelangelo', '9210987654', 'michael@example.com', 'Renaissance Art', 'Sculptor Award', 'michael.jpg'),
('Rembrandt', '9109876543', 'rembrandt@example.com', 'Dutch Art', 'Baroque Award', 'rembrandt.jpg'),
('Johannes Vermeer', '9009876543', 'vermeer@example.com', 'Fine Arts', 'Dutch Golden Age Award', 'vermeer.jpg'),
('Georgia O’Keeffe', '8909876543', 'okeeffe@example.com', 'American Modernist', 'Floral Art Award', 'okeeffe.jpg'),
('Jackson Pollock', '8809876543', 'pollock@example.com', 'Abstract Art', 'Drip Painting Award', 'pollock.jpg'),
('Andy Warhol', '8709876543', 'warhol@example.com', 'Pop Art', 'Modern Art Award', 'warhol.jpg'),
('Henri Matisse', '8609876543', 'matisse@example.com', 'French Art', 'Fauvism Award', 'matisse.jpg'),
('Edvard Munch', '8509876543', 'munch@example.com', 'Expressionism', 'Best Expressionist Award', 'munch.jpg'),
('Paul Cézanne', '8409876543', 'cezanne@example.com', 'Post-Impressionism', 'Modern Art Inspiration', 'cezanne.jpg'),
('Gustav Klimt', '8309876543', 'klimt@example.com', 'Symbolism', 'Art Nouveau Award', 'klimt.jpg'),
('Francisco Goya', '8209876543', 'goya@example.com', 'Romanticism', 'Spanish Art Award', 'goya.jpg'),
('Diego Velázquez', '8109876543', 'velazquez@example.com', 'Baroque', 'Best Royal Painter', 'velazquez.jpg'),
('Jean-Michel Basquiat', '8009876543', 'basquiat@example.com', 'Graffiti Art', 'Neo-Expressionism Award', 'basquiat.jpg'),
('Edward Hopper', '7909876543', 'hopper@example.com', 'Realism', 'American Art Award', 'hopper.jpg'),
('Mary Cassatt', '7809876543', 'cassatt@example.com', 'Impressionism', 'Female Artist Award', 'cassatt.jpg'),
('Georges Seurat', '7709876543', 'seurat@example.com', 'Pointillism', 'Modern Painting Award', 'seurat.jpg');

INSERT INTO artmedium (ArtMedium) VALUES
('Oil Painting'),
('Watercolor'),
('Acrylic'),
('Pastel'),
('Charcoal'),
('Pencil Sketch'),
('Digital Art'),
('Ink Drawing'),
('Mixed Media'),
('Collage'),
('Spray Paint'),
('Mosaic'),
('Glass Painting'),
('Wood Carving'),
('Metal Sculpture'),
('Ceramic Art'),
('Graffiti'),
('Street Art'),
('3D Modeling'),
('Calligraphy'),
('Photography'),
('Printmaking'),
('Lithography'),
('Silkscreen Printing'),
('Etching'),
('Textile Art'),
('Origami'),
('Paper Cutting'),
('Sand Art'),
('Clay Modeling'),
('Enamel Art'),
('Stone Carving'),
('Tattoo Art'),
('Resin Art'),
('Abstract Expressionism');

INSERT INTO artproduct (Title, Dimension, Orientation, Size, Artist, ArtType, ArtMedium, SellingPricing, Description, Image, Image1, Image2, Image3, Image4, RefNum) VALUES
('Sunset Bliss', '24x36 inches', 'Landscape', 'Large', 1, 2, 3, 1500.00, 'A beautiful sunset over the ocean.', 'sunset1.jpg', 'sunset2.jpg', 'sunset3.jpg', 'sunset4.jpg', 'sunset5.jpg', 1001),
('Mountain Majesty', '30x40 inches', 'Landscape', 'Large', 2, 3, 1, 2000.00, 'Snow-covered peaks under a clear sky.', 'mountain1.jpg', 'mountain2.jpg', 'mountain3.jpg', 'mountain4.jpg', 'mountain5.jpg', 1002),
('Abstract Flow', '18x24 inches', 'Portrait', 'Medium', 3, 1, 2, 1200.00, 'Colorful abstract patterns.', 'abstract1.jpg', 'abstract2.jpg', 'abstract3.jpg', 'abstract4.jpg', 'abstract5.jpg', 1003),
('The Thinker', '20x30 inches', 'Portrait', 'Medium', 4, 2, 3, 1800.00, 'A deep thought-provoking painting.', 'thinker1.jpg', 'thinker2.jpg', 'thinker3.jpg', 'thinker4.jpg', 'thinker5.jpg', 1004),
('Nature’s Touch', '25x35 inches', 'Landscape', 'Large', 5, 3, 2, 2100.00, 'Trees in an autumn forest.', 'nature1.jpg', 'nature2.jpg', 'nature3.jpg', 'nature4.jpg', 'nature5.jpg', 1005),
('City Lights', '36x48 inches', 'Landscape', 'Extra Large', 6, 1, 1, 3000.00, 'Skyscrapers shining at night.', 'city1.jpg', 'city2.jpg', 'city3.jpg', 'city4.jpg', 'city5.jpg', 1006),
('Ocean Waves', '28x36 inches', 'Landscape', 'Large', 7, 2, 3, 1700.00, 'Crashing waves under the moonlight.', 'ocean1.jpg', 'ocean2.jpg', 'ocean3.jpg', 'ocean4.jpg', 'ocean5.jpg', 1007),
('Eternal Love', '22x28 inches', 'Portrait', 'Medium', 8, 1, 2, 1600.00, 'A couple embracing in a field.', 'love1.jpg', 'love2.jpg', 'love3.jpg', 'love4.jpg', 'love5.jpg', 1008),
('Golden Hour', '30x40 inches', 'Landscape', 'Large', 9, 3, 1, 2200.00, 'Fields glowing in golden sunlight.', 'golden1.jpg', 'golden2.jpg', 'golden3.jpg', 'golden4.jpg', 'golden5.jpg', 1009),
('Mystic Forest', '32x42 inches', 'Landscape', 'Large', 10, 2, 3, 2500.00, 'Foggy forest with hidden mysteries.', 'forest1.jpg', 'forest2.jpg', 'forest3.jpg', 'forest4.jpg', 'forest5.jpg', 1010),
('Dance of Colors', '24x36 inches', 'Portrait', 'Medium', 11, 1, 2, 1400.00, 'A vibrant explosion of colors.', 'dance1.jpg', 'dance2.jpg', 'dance3.jpg', 'dance4.jpg', 'dance5.jpg', 1011),
('Winter Wonderland', '36x48 inches', 'Landscape', 'Extra Large', 12, 3, 1, 2800.00, 'Snowy fields and cozy cabins.', 'winter1.jpg', 'winter2.jpg', 'winter3.jpg', 'winter4.jpg', 'winter5.jpg', 1012),
('Serene Waters', '30x40 inches', 'Landscape', 'Large', 13, 2, 3, 2100.00, 'A peaceful lake in the morning.', 'serene1.jpg', 'serene2.jpg', 'serene3.jpg', 'serene4.jpg', 'serene5.jpg', 1013),
('The Violinist', '20x30 inches', 'Portrait', 'Medium', 14, 1, 2, 1900.00, 'A young girl playing the violin.', 'violin1.jpg', 'violin2.jpg', 'violin3.jpg', 'violin4.jpg', 'violin5.jpg', 1014),
('Desert Mirage', '26x36 inches', 'Landscape', 'Large', 15, 3, 1, 2300.00, 'A breathtaking desert sunset.', 'desert1.jpg', 'desert2.jpg', 'desert3.jpg', 'desert4.jpg', 'desert5.jpg', 1015),
('Heaven’s Gate', '30x50 inches', 'Portrait', 'Large', 16, 2, 3, 2600.00, 'A divine painting of an angel.', 'heaven1.jpg', 'heaven2.jpg', 'heaven3.jpg', 'heaven4.jpg', 'heaven5.jpg', 1016),
('Beyond the Horizon', '32x48 inches', 'Landscape', 'Extra Large', 17, 1, 2, 3100.00, 'A sunset with endless beauty.', 'horizon1.jpg', 'horizon2.jpg', 'horizon3.jpg', 'horizon4.jpg', 'horizon5.jpg', 1017),
('Aurora Dreams', '28x36 inches', 'Landscape', 'Large', 18, 3, 1, 2700.00, 'The northern lights in full display.', 'aurora1.jpg', 'aurora2.jpg', 'aurora3.jpg', 'aurora4.jpg', 'aurora5.jpg', 1018),
('Harmony of Life', '24x32 inches', 'Portrait', 'Medium', 19, 2, 3, 1800.00, 'A mix of music and emotions.', 'harmony1.jpg', 'harmony2.jpg', 'harmony3.jpg', 'harmony4.jpg', 'harmony5.jpg', 1019),
('Whispering Wind', '30x40 inches', 'Landscape', 'Large', 20, 1, 2, 2200.00, 'A quiet field with rustling trees.', 'wind1.jpg', 'wind2.jpg', 'wind3.jpg', 'wind4.jpg', 'wind5.jpg', 1020),
('The Hidden Path', '26x36 inches', 'Landscape', 'Large', 21, 3, 1, 2300.00, 'A mysterious trail in the woods.', 'path1.jpg', 'path2.jpg', 'path3.jpg', 'path4.jpg', 'path5.jpg', 1021),
('Golden Reflection', '32x42 inches', 'Landscape', 'Large', 22, 2, 3, 2500.00, 'A river reflecting golden trees.', 'golden_ref1.jpg', 'golden_ref2.jpg', 'golden_ref3.jpg', 'golden_ref4.jpg', 'golden_ref5.jpg', 1022);

INSERT INTO enquiry (EnquiryNumber, Artpdid, FullName, Email, MobileNumber, Message, EnquiryDate, Status, AdminRemark, AdminRemarkdate) VALUES
('ENQ001', 1, 'John Doe', 'johndoe@example.com', '9876543210', 'Interested in purchasing.', NOW(), 'Pending', '', NULL),
('ENQ002', 2, 'Jane Smith', 'janesmith@example.com', '8765432109', 'Can I get a discount?', NOW(), 'Pending', '', NULL),
('ENQ003', 3, 'David Johnson', 'davidj@example.com', '7654321098', 'Is this painting framed?', NOW(), 'Pending', '', NULL),
('ENQ004', 4, 'Emma Williams', 'emmaw@example.com', '6543210987', 'What are the shipping charges?', NOW(), 'Pending', '', NULL),
('ENQ005', 5, 'Michael Brown', 'michaelb@example.com', '5432109876', 'Do you have this in a bigger size?', NOW(), 'Resolved', 'Issue addressed. Client satisfied.', NOW()),
('ENQ006', 6, 'Emily Davis', 'emilyd@example.com', '4321098765', 'I need more details.', NOW(), 'Pending', '', NULL),
('ENQ007', 7, 'Chris Wilson', 'chrisw@example.com', '3210987654', 'Is this available for immediate delivery?', NOW(), 'Pending', '', NULL),
('ENQ008', 8, 'Olivia Miller', 'oliviam@example.com', '2109876543', 'What materials were used?', NOW(), 'Pending', '', NULL),
('ENQ009', 9, 'Daniel Lee', 'daniell@example.com', '1098765432', 'Do you accept returns?', NOW(), 'Resolved', 'Return policy shared.', NOW()),
('ENQ010', 10, 'Sophia Anderson', 'sophiaa@example.com', '9876543201', 'Can I visit your gallery?', NOW(), 'InProgress', 'Scheduled an appointment.', NOW()),
('ENQ011', 11, 'James Thomas', 'jamest@example.com', '8765432190', 'Can I get a certificate of authenticity?', NOW(), 'Pending', '', NULL),
('ENQ012', 12, 'Isabella Martinez', 'isabellam@example.com', '7654321980', 'Do you ship internationally?', NOW(), 'Pending', '', NULL),
('ENQ013', 13, 'Alexander White', 'alexwhite@example.com', '6543219870', 'What is the estimated delivery time?', NOW(), 'Resolved', 'Delivery timeframe provided.', NOW()),
('ENQ014', 14, 'Mia Harris', 'miah@example.com', '5432198760', 'Is this handmade or digital art?', NOW(), 'InProgress', 'Verifying with artist.', NOW()),
('ENQ015', 15, 'Ethan Martin', 'ethanm@example.com', '4321987650', 'Do you offer framing services?', NOW(), 'Pending', '', NULL),
('ENQ016', 16, 'Charlotte Young', 'charlottey@example.com', '3219876540', 'Can I get a personalized painting?', NOW(), 'Pending', '', NULL),
('ENQ017', 17, 'Benjamin Allen', 'benjamina@example.com', '2109876430', 'Do you have any other similar artworks?', NOW(), 'Resolved', 'Sent similar artwork suggestions.', NOW()),
('ENQ018', 18, 'Amelia King', 'ameliak@example.com', '1098765320', 'Can I pay in installments?', NOW(), 'InProgress', 'Discussing payment options.', NOW()),
('ENQ019', 19, 'Lucas Scott', 'lucass@example.com', '9876543211', 'Can you send me more pictures?', NOW(), 'Pending', '', NULL),
('ENQ020', 20, 'Harper Adams', 'harpera@example.com', '8765432112', 'I need an urgent purchase.', NOW(), 'Pending', '', NULL),
('ENQ021', 21, 'Elijah Nelson', 'elijahn@example.com', '7654321113', 'Do you offer art consultation?', NOW(), 'Resolved', 'Consultation session scheduled.', NOW()),
('ENQ022', 22, 'Evelyn Carter', 'evelync@example.com', '6543211114', 'What is the return policy?', NOW(), 'InProgress', 'Policy details being verified.', NOW()),
('ENQ023', 1, 'Jack Roberts', 'jackr@example.com', '5432111115', 'How do I take care of this artwork?', NOW(), 'Pending', '', NULL),
('ENQ024', 2, 'Avery Rodriguez', 'averyr@example.com', '4321111116', 'Do you offer free shipping?', NOW(), 'Pending', '', NULL),
('ENQ025', 3, 'Liam Walker', 'liamw@example.com', '3211111117', 'How do I authenticate the painting?', NOW(), 'Resolved', 'Authentication process shared.', NOW()),
('ENQ026', 4, 'Zoey Hall', 'zoeyh@example.com', '2101111118', 'I need a gift wrapping service.', NOW(), 'InProgress', 'Checking availability.', NOW()),
('ENQ027', 5, 'William Green', 'williamg@example.com', '1091111119', 'Do you have discounts for bulk orders?', NOW(), 'Resolved', 'Discount policy shared.', NOW()),
('ENQ028', 6, 'Aria Baker', 'ariab@example.com', '9871111120', 'Can I customize the colors?', NOW(), 'InProgress', 'Artist working on customization.', NOW()),
('ENQ029', 7, 'Henry Gonzalez', 'henryg@example.com', '8761111121', 'Is there a warranty on this artwork?', NOW(), 'Resolved', 'Warranty details provided.', NOW()),
('ENQ030', 8, 'Scarlett Perez', 'scarlettp@example.com', '7651111122', 'What kind of frame do you suggest?', NOW(), 'InProgress', 'Framing recommendations given.', NOW());

INSERT INTO arttype (ArtType) VALUES
('Portrait'),
('Landscape'),
('Abstract'),
('Realism'),
('Surrealism'),
('Expressionism'),
('Cubism'),
('Minimalism'),
('Pop Art'),
('Conceptual Art'),
('Folk Art'),
('Fantasy Art'),
('Impressionism'),
('Hyperrealism'),
('Still Life'),
('Comic Art'),
('Symbolism'),
('Religious Art'),
('Typography Art'),
('Kinetic Art'),
('Installation Art'),
('Monochrome Art'),
('Doodle Art'),
('Anime Art'),
('Manga Art'),
('Gothic Art'),
('Graffiti'),
('Calligraphy'),
('Cartooning'),
('Geometric Art'),
('Political Art'),
('Cultural Art'),
('Ethnic Art'),
('Art Nouveau'),
('Art Deco');

INSERT INTO page (PageType, PageTitle, PageDescription, Email, MobileNumber, Timing) VALUES
('About', 'About Us', 'This is the About Us page of our art store.', 'contact@artstore.com', '9876543210', '9 AM - 6 PM'),
('Contact', 'Contact Us', 'Reach out to us for any inquiries.', 'support@artstore.com', '9765432109', '10 AM - 7 PM'),
('Gallery', 'Our Gallery', 'Explore our collection of amazing artworks.', 'gallery@artstore.com', '9654321098', '9 AM - 8 PM'),
('Privacy', 'Privacy Policy', 'Learn about our privacy policies and data security.', 'privacy@artstore.com', '9543210987', '24/7'),
('Terms', 'Terms & Conditions', 'Read our terms and conditions before purchasing.', 'terms@artstore.com', '9432109876', '24/7');

-- write a procedure to get a sales report by month
DELIMITER //

CREATE PROCEDURE GetSalesByMonth(
    IN input_month INT,
    IN input_year INT
)
BEGIN
    SELECT COUNT(*) AS Total_Sales, SUM(SellingPricing) AS Revenue
    FROM artproduct
    WHERE MONTH(CreationDate) = input_month 
    AND YEAR(CreationDate) = input_year;
END //

DELIMITER ;


CALL GetSalesByMonth(3, 2025);


-- get all artproducts and details

DELIMITER //

CREATE PROCEDURE GetAllArtProducts()
BEGIN
    SELECT 
        ap.ID,
        ap.Title,
        ap.SellingPricing AS Price,
        ap.Description,
        a.Name AS Artist_Name,
        at.ArtType AS Type_Name,
        am.ArtMedium AS Medium_Name
    FROM artproduct ap
    LEFT JOIN artist a ON ap.Artist = a.ID
    LEFT JOIN arttype at ON ap.ArtType = at.ID
    LEFT JOIN artmedium am ON ap.ArtMedium = am.ID;
END //

DELIMITER ;

-- Call it like this:
CALL GetAllArtProducts ();

-- Filter Art by Price Range

DELIMITER //

CREATE PROCEDURE FilterArtByPrice(
    IN minPrice DECIMAL(10,2),
    IN maxPrice DECIMAL(10,2)
)
BEGIN
    SELECT 
        ap.ID, ap.Title, ap.SellingPricing, a.Name AS ArtistName
    FROM artproduct ap
    JOIN artist a ON ap.Artist = a.ID
    WHERE ap.SellingPricing BETWEEN minPrice AND maxPrice;
END //

DELIMITER ;

CALL FilterArtByPrice (200.00,2000.00);

-- delete a artproduct
DELIMITER //

CREATE PROCEDURE DeleteArtProduct(IN artID INT)
BEGIN
    DELETE FROM artproduct WHERE ID = artID;
END //

DELIMITER ;

call DeleteArtProduct(10);

-- Top Selling artist  based on prize

CREATE VIEW TopSellingArtists AS
SELECT 
    a.ID AS ArtistID,
    a.Name AS ArtistName,
    SUM(ap.SellingPricing) AS TotalSales,
    COUNT(ap.ID) AS TotalArtworks
FROM artist a
JOIN artproduct ap ON a.ID = ap.Artist
GROUP BY a.ID
ORDER BY TotalSales DESC;

SELECT * FROM TopSellingArtists;

-- artist with no artwork

CREATE VIEW ArtistsWithoutArtworks AS
SELECT *
FROM artist
WHERE ID NOT IN (SELECT DISTINCT Artist FROM artproduct);

select * from ArtistsWithoutArtworks;

-- filter art by type

DELIMITER //

CREATE PROCEDURE FilterArtByType(IN typeID INT)
BEGIN
    SELECT 
        ap.ID, ap.Title, ap.SellingPricing, at.ArtType AS TypeName
    FROM artproduct ap
    JOIN arttype at ON ap.ArtType = at.ID
    WHERE ap.ArtType = typeID;
END //

DELIMITER ;

call  FilterArtByType(1);

-- update art prize

DELIMITER //

CREATE PROCEDURE UpdateArtPrice(
    IN artID INT,
    IN newPrice DECIMAL(10,2)
)
BEGIN
    UPDATE artproduct
    SET SellingPricing = newPrice
    WHERE ID = artID;
END //

DELIMITER ;

Call UpdateArtPrice(6,5000.00);

-- retrive recent artworks

DELIMITER //

CREATE PROCEDURE GetRecentArtworks(IN daysAgo INT)
BEGIN
    SELECT *
    FROM artproduct
    WHERE CreationDate >= NOW() - INTERVAL daysAgo DAY
    ORDER BY CreationDate DESC;
END //

DELIMITER ;




CALL GetRecentArtworks(10);

-- list of enquiry product list

DELIMITER //

CREATE PROCEDURE GetAllEnquiriesWithProductInfo()
BEGIN
    SELECT 
        e.ID AS EnquiryID,
        e.EnquiryNumber,
        e.FullName,
        e.Email,
        e.MobileNumber,
        e.Message,
        e.EnquiryDate,
        e.Status,
        e.AdminRemark,
        e.AdminRemarkdate,
        ap.ID AS ArtProductID,
        ap.Title AS ArtTitle,
        ap.SellingPricing,
        ar.Name AS ArtistName
    FROM enquiry e
    LEFT JOIN artproduct ap ON e.Artpdid = ap.ID
    LEFT JOIN artist ar ON ap.Artist = ar.ID
    ORDER BY e.EnquiryDate DESC;
END //

DELIMITER ;


Call GetAllEnquiriesWithProductInfo();


-- update  status aand adminRemark in enquiry

DELIMITER //

CREATE PROCEDURE UpdateEnquiryStatus(
    IN p_EnquiryID INT,
    IN p_Status VARCHAR(10),
    IN p_AdminRemark VARCHAR(200)
)
BEGIN
    UPDATE enquiry
    SET 
        Status = p_Status,
        AdminRemark = p_AdminRemark,
        AdminRemarkdate = NOW()
    WHERE ID = p_EnquiryID;
END //

DELIMITER ;

CALL UpdateEnquiryStatus(5, 'Resolved', 'Issue addressed. Client confirmed.');

-- show all tables by name

DELIMITER //

CREATE PROCEDURE GetTable(IN a VARCHAR(100))
BEGIN
    SET @b = CONCAT('SELECT * FROM ', a);
    PREPARE store FROM @b;
    EXECUTE  store ;
    DEALLOCATE PREPARE store;
END //

DELIMITER ;


CALL GetTable('arttype');
