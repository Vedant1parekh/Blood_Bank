
--
-- Database:  blood bank 
--

-- --------------------------------------------------------

--
-- Table structure for table  admitted 
-- CREATE TABLE admitted (
   Hospital_id  varchar2(10) NOT NULL,
   Patient_id  varchar2(10) NOT NULL
) ;

--
-- Dumping data for table  admitted 
--

INSERT INTO  admitted  ( Hospital_id ,  Patient_id ) VALUES
('H01', 'P01');
INSERT INTO  admitted  ( Hospital_id ,  Patient_id ) VALUES
('H03', 'P03');
INSERT INTO  admitted  ( Hospital_id ,  Patient_id ) VALUES
('H03', 'P04');
INSERT INTO  admitted  ( Hospital_id ,  Patient_id ) VALUES
('H04', 'P05');
INSERT INTO  admitted  ( Hospital_id ,  Patient_id ) VALUES
('H05', 'P02');
INSERT INTO  admitted  ( Hospital_id ,  Patient_id ) VALUES
('H06', 'P06');
INSERT INTO  admitted  ( Hospital_id ,  Patient_id ) VALUES
('H06', 'P07');
INSERT INTO  admitted  ( Hospital_id ,  Patient_id ) VALUES
('H08', 'P09');
INSERT INTO  admitted  ( Hospital_id ,  Patient_id ) VALUES
('H09', 'P08');
INSERT INTO  admitted  ( Hospital_id ,  Patient_id ) VALUES
('H10', 'P10');

--
-- Dumping data for table  admitted 
--


-- --------------------------------------------------------

--
-- Table structure for table  blood 
--

CREATE TABLE blood (
  B_code   varchar2(3) NOT NULL,
  Blood_group   varchar2(3) NOT NULL,
  Cost   INT(4) NOT NULL,
  Donor_id   varchar2(10) NOT NULL
);

--
-- Dumping data for table  blood 
--

INSERT    INTO blood (B_code, Blood_group, Cost, Donor_id) VALUES
('001', 'B+', 200, 'D01');
INSERT    INTO blood (B_code, Blood_group, Cost, Donor_id) VALUES
('002', 'AB+', 300, 'D02');
INSERT    INTO blood (B_code, Blood_group, Cost, Donor_id) VALUES
('003', 'A-', 400, 'D03');
INSERT    INTO blood (B_code, Blood_group, Cost, Donor_id) VALUES
('004', 'A+', 500, 'D04');
INSERT    INTO blood (B_code, Blood_group, Cost, Donor_id) VALUES
('005', 'B+', 200, 'D05');
INSERT    INTO blood (B_code, Blood_group, Cost, Donor_id) VALUES
('006', 'O+', 700, 'D06');
INSERT    INTO blood (B_code, Blood_group, Cost, Donor_id) VALUES
('007', 'O-', 800, 'D07');
INSERT    INTO blood (B_code, Blood_group, Cost, Donor_id) VALUES
('008', 'AB+', 300, 'D08');
INSERT    INTO blood (B_code, Blood_group, Cost, Donor_id) VALUES
('009', 'B-', 600, 'D09');
INSERT    INTO blood (B_code, Blood_group, Cost, Donor_id) VALUES
('010', 'B+', 200, 'D10');

-- --------------------------------------------------------

--
-- Table structure for table    blood_bank 
--

CREATE TABLE   blood_bank (
   BB_id   varchar2(10) NOT NULL,
   Blood_group   varchar2(3) NOT NULL,
   Issues     NUMBER(11) NOT NULL,
   Orders     NUMBER(10) NOT NULL,
   Emp_id   varchar2(10) NOT NULL
)   ;

--
-- Dumping data for table    blood_bank 
--

INSERT    INTO    blood_bank  ( BB_id ,  Blood_group ,  Issues ,  Orders ,  Emp_id ) VALUES
('B01', 'B+', 10, 1, 'E01');
INSERT    INTO    blood_bank  ( BB_id ,  Blood_group ,  Issues ,  Orders ,  Emp_id ) VALUES
('B02', 'AB+', 5, 2, 'E02');
INSERT    INTO    blood_bank  ( BB_id ,  Blood_group ,  Issues ,  Orders ,  Emp_id ) VALUES
('B03', 'B-', 1, 1, 'E01');
INSERT    INTO    blood_bank  ( BB_id ,  Blood_group ,  Issues ,  Orders ,  Emp_id ) VALUES
('B04', 'O+', 2, 1, 'E04');
INSERT    INTO    blood_bank  ( BB_id ,  Blood_group ,  Issues ,  Orders ,  Emp_id ) VALUES
('B05', 'Ab-', 7, 5, 'E06');
INSERT    INTO    blood_bank  ( BB_id ,  Blood_group ,  Issues ,  Orders ,  Emp_id ) VALUES
('B06', 'B+', 6, 3, 'E04');
INSERT    INTO    blood_bank  ( BB_id ,  Blood_group ,  Issues ,  Orders ,  Emp_id ) VALUES
('B07', 'A-', 15, 3, 'E05');
INSERT    INTO    blood_bank  ( BB_id ,  Blood_group ,  Issues ,  Orders ,  Emp_id ) VALUES
('B08', 'O-', 11, 5, 'E10');
INSERT    INTO    blood_bank  ( BB_id ,  Blood_group ,  Issues ,  Orders ,  Emp_id ) VALUES
('B09', 'AB+', 12, 8, 'E08');
INSERT    INTO    blood_bank  ( BB_id ,  Blood_group ,  Issues ,  Orders ,  Emp_id ) VALUES
('B10', 'AB-', 1, 1, 'E08');

-- --------------------------------------------------------

--
-- Table structure for table  donor 
--

CREATE TABLE  donor  (
   Donor_id   varchar2(10) NOT NULL,
   Name   varchar2(20) NOT NULL,
   Address   varchar2(50) NOT NULL,
   Age     number(2) NOT NULL,
   Phone_no   number(10) NOT NULL,
   Blood_group   varchar2(3) NOT NULL,
   Date_of_donate  date NOT NULL,
   Rec_id   varchar2(10) NOT NULL
)   ;

--
-- Dumping data for table  donor 
--

INSERT    INTO  donor  ( Donor_id ,  Name ,  Address ,  Age ,  Phone_no ,  Blood_group ,  Date_of_donate ,  Rec_id ) VALUES
('D01', 'Anuj Malhotara', 'Ahmedabad', 30, 7329034198, 'B+', '12-MAY-2001', 'R01');
INSERT    INTO  donor  ( Donor_id ,  Name ,  Address ,  Age ,  Phone_no ,  Blood_group ,  Date_of_donate ,  Rec_id ) VALUES
('D02', 'Manthan Gadhiya', 'Gandhinagar', 25, 7529301234, 'AB+', '15-FEb-2005', 'R02');
INSERT    INTO  donor  ( Donor_id ,  Name ,  Address ,    Age,  Phone_no,  Blood_group ,  Date_of_donate ,  Rec_id ) VALUES
('D03', 'Vishal Pareekh', 'Ahmedabad', 35, 6438921234, 'A-', '10-JAN-10', 'R02');
INSERT    INTO  donor  ( Donor_id ,  Name ,  Address ,  Age ,  Phone_no ,  Blood_group ,  Date_of_donate ,  Rec_id ) VALUES
('D04', 'Rohan Patel', 'Vadodara', 23, 9023451239, 'A+', '25-Apr-14', 'R04');
INSERT    INTO  donor  ( Donor_id ,  Name ,  Address ,  Age ,  Phone_no,  Blood_group ,  Date_of_donate ,  Rec_id ) VALUES
('D05', 'Dhruvin Patel', 'Patan', 21, 7900032458, 'B+', '20-Nov-2015', 'R05');
INSERT    INTO  donor  ( Donor_id ,  Name ,  Address ,  Age ,  Phone_no ,  Blood_group ,  Date_of_donate ,  Rec_id ) VALUES
('D06', 'Damodar Singh', 'Ahmedabad', 40, 9904567822, 'O+', '22-JULY-2015', 'R06');
INSERT    INTO  donor  ( Donor_id ,  Name ,  Address ,  Age , Phone_no,  Blood_group ,  Date_of_donate ,  Rec_id ) VALUES
('D07', 'Madhavi Dave', 'Surat', 29, 7239000011, 'O-', '24-OCT-2010', 'R06');
INSERT    INTO  donor  ( Donor_id ,  Name ,  Address ,  Age ,  Phone_no ,  Blood_group ,  Date_of_donate ,  Rec_id ) VALUES
('D08', 'Maya Mohat', 'Ahmedabad', 27, 9702222348, 'AB+', '30-JUNE-2018', 'R01');
INSERT    INTO  donor  ( Donor_id ,  Name ,  Address ,  Age ,  Phone_no ,  Blood_group ,  Date_of_donate ,  Rec_id ) VALUES
('D09', 'Vedant Parekh', 'Amareli', 20, 8928345762, 'B-', '11-MARCH-2019', 'R10');
INSERT    INTO  donor  ( Donor_id ,  Name ,  Address ,  Age , Phone_no,  Blood_group ,  Date_of_donate ,  Rec_id ) VALUES
('D10', 'Chirag Patadiya', 'Botad', 20, 7359760434, 'B+', '17-JAN-2001', 'R09');

-- --------------------------------------------------------

--
-- Table structure for table  employee 
--

CREATE TABLE  employee  (
   Emp_id   varchar2(10) NOT NULL,
   First_name   varchar2(10) NOT NULL,
   Last_name   varchar2(10) NOT NULL,
   Address   varchar2(50) NOT NULL,
   Salary     NUMBER(10) NOT NULL,
   Phone    NUMBER(10) NOT NULL
)   ;

--
-- Dumping data for table  employee 
--

INSERT    INTO  employee  ( Emp_id ,  First_name ,  Last_name ,  Address ,  Salary ,  Phone ) VALUES
('E01', 'Anand', 'Gohel', 'Ahmedabad', 25000, 9934578235);
INSERT    INTO  employee  ( Emp_id ,  First_name ,  Last_name ,  Address ,  Salary ,  Phone ) VALUES
('E02', 'Mahek', 'Patel', 'Ahmedabad', 20000, 9804678244);
INSERT    INTO  employee  ( Emp_id ,  First_name ,  Last_name ,  Address ,  Salary ,  Phone ) VALUES
('E03', 'Vishvash', 'Agarwal', 'Gandhinagar', 30000, 7359840334);
INSERT    INTO  employee  ( Emp_id ,  First_name ,  Last_name ,  Address ,  Salary ,  Phone ) VALUES
('E04', 'Raj', 'Acharya', 'Rajkot', 35000, 7573099342);
INSERT    INTO  employee  ( Emp_id ,  First_name ,  Last_name ,  Address ,  Salary ,  Phone ) VALUES
('E05', 'Amit', 'Reddy', 'Surat', 10000, 6347582008);
INSERT    INTO  employee  ( Emp_id ,  First_name ,  Last_name ,  Address ,  Salary ,  Phone ) VALUES
('E06', 'Neha', 'Malik', 'Ahmedabad', 25000, 9537410023);
INSERT    INTO  employee  ( Emp_id ,  First_name ,  Last_name ,  Address ,  Salary ,  Phone ) VALUES
('E07', 'Suman', 'Shah', 'Gandhinagar', 15000, 7940264872);
INSERT    INTO  employee  ( Emp_id ,  First_name ,  Last_name ,  Address ,  Salary ,  Phone ) VALUES
('E08', 'Motilal', 'Dave', 'Vadodara', 25000, 9023475999);
INSERT    INTO  employee  ( Emp_id ,  First_name ,  Last_name ,  Address ,  Salary ,  Phone ) VALUES
('E09', 'Vedant', 'Parekh', 'Amreli', 30000, 6349572047);
INSERT    INTO  employee  ( Emp_id ,  First_name ,  Last_name ,  Address ,  Salary ,  Phone ) VALUES
('E10', 'Chirag', 'Patadiya', 'Botad', 55000, 7359760333);

-- --------------------------------------------------------

--
-- Table structure for table  hospital 
--

CREATE TABLE  hospital  (
   Hospital_id   varchar2(10) NOT NULL,
   Name   varchar2(50) NOT NULL,
   Address   varchar2(100) NOT NULL
)   ;

--
-- Dumping data for table  hospital 
--

INSERT    INTO  hospital  ( Hospital_id ,  Name ,  Address ) VALUES
('H01', 'Sir Ganga Ram Hospital', 'Rajinder Nagar, New Delhi, Delhi 110060');
INSERT    INTO  hospital  ( Hospital_id ,  Name ,  Address ) VALUES
('H02', 'KLES Dr. Prabhakar Kore Hospital', 'NH 4A, Nehru Nagar, Belgaum, Karnataka 590010');
INSERT    INTO  hospital  ( Hospital_id ,  Name ,  Address ) VALUES
('H03', 'Hiranandani Hospital', 'Hill Side Avenue, Hiranandani Gardens, Powai, Mumbai 400 076');
INSERT    INTO  hospital  ( Hospital_id ,  Name ,  Address ) VALUES
('H04', 'Sterling Hospital', 'Memnagar Ahmedabad 380052');
INSERT    INTO  hospital  ( Hospital_id ,  Name ,  Address ) VALUES
('H05', 'Apollo Hospital', 'Plot No.1 A, Bhat GIDC Estate,Gandhinagar 382428');
INSERT    INTO  hospital  ( Hospital_id ,  Name ,  Address ) VALUES
('H06', 'SAL Hospital', 'Opposite Doordarshan, Drive-in Road,Ahmedabad 380 054');
INSERT    INTO  hospital  ( Hospital_id ,  Name ,  Address ) VALUES
('H07', 'Shalby Hospital', 'Opposite Karnavati Club, S.G. Highway,Ahmedabad, Gujarat 380015');
INSERT    INTO  hospital  ( Hospital_id ,  Name ,  Address ) VALUES
('H08', 'Care Institute of Medical Sciences', 'Off Science City Road, Sola,Ahmedabad 380060');
INSERT    INTO  hospital  ( Hospital_id ,  Name ,  Address ) VALUES
('H09', 'Dev Multi Speciality Hospital', '8-Manhar Plot Corner,, Vidya Nagar Main Rd,Gandhinagar 382429');
INSERT    INTO  hospital  ( Hospital_id ,  Name ,  Address ) VALUES
('H10', 'Aditya Hospital', 'Vidya Nagar Main Road,Gandhinagar 382427');

-- --------------------------------------------------------

--
-- Table structure for table  orders 
--

CREATE TABLE  orders  (
   Hospital_id   varchar2(10) NOT NULL,
   B_code   varchar2(3) NOT NULL,
   Order_date  date NOT NULL
)   ;

--
-- Dumping data for table  orders 
--

INSERT    INTO  orders  ( Hospital_id ,  B_code ,  Order_date ) VALUES
('H01', '001', '17-JAN-23');
INSERT    INTO  orders  ( Hospital_id ,  B_code ,  Order_date ) VALUES
('H01', '004', '27-NOV-18');
INSERT    INTO  orders  ( Hospital_id ,  B_code ,  Order_date ) VALUES
('H02', '005', '13-Mar-20');
INSERT    INTO  orders  ( Hospital_id ,  B_code ,  Order_date ) VALUES
('H02', '006', '13-MAY-2018');
INSERT    INTO  orders  ( Hospital_id ,  B_code ,  Order_date ) VALUES
('H03', '008', '07-JUL-18');
INSERT    INTO  orders  ( Hospital_id ,  B_code ,  Order_date ) VALUES
('H04', '010', '22-SEP-2019');
INSERT    INTO  orders  ( Hospital_id ,  B_code ,  Order_date ) VALUES
('H05', '001', '30-NOV-19');
INSERT    INTO  orders  ( Hospital_id ,  B_code ,  Order_date ) VALUES
('H05', '009', '03-APRIL-20');
INSERT    INTO  orders  ( Hospital_id ,  B_code ,  Order_date ) VALUES
('H08', '002', '02-JAN-20');
INSERT    INTO  orders  ( Hospital_id ,  B_code ,  Order_date ) VALUES
('H10', '003', '19-FEB-20');

-- --------------------------------------------------------

--
-- Table structure for table  patient 
--

CREATE TABLE  patient  (
   Patient_id   varchar2(10) NOT NULL,
   Name   varchar2(15) NOT NULL,
   Blood_group   varchar2(3) NOT NULL,
   Diseases   varchar2(50) DEFAULT NULL
)   ;

--
-- Dumping data for table  patient 
-- INSERT    INTO  orders  ( Hospital_id ,  B_code ,  Order_date ) VALUES

INSERT    INTO  patient  ( Patient_id ,  Name ,  Blood_group ,  Diseases ) VALUES
('P01', 'Danny Doe', 'B+', 'Asthma');
INSERT    INTO  patient  ( Patient_id ,  Name ,  Blood_group ,  Diseases ) VALUES
('P02', 'Tom Nakamura', 'AB+', NULL);
INSERT    INTO  patient  ( Patient_id ,  Name ,  Blood_group ,  Diseases ) VALUES
('P03', 'Harry Potter', 'AB-', 'Celiac');
INSERT    INTO  patient  ( Patient_id ,  Name ,  Blood_group ,  Diseases ) VALUES
('P04', 'Anna Bell', 'B-', NULL);
INSERT    INTO  patient  ( Patient_id ,  Name ,  Blood_group ,  Diseases ) VALUES
('P05', 'Thomas Martin', 'O+', 'Relapsing polychondritis');
INSERT    INTO  patient  ( Patient_id ,  Name ,  Blood_group ,  Diseases ) VALUES
('P06', 'Jerry Pot', 'A-', NULL);
INSERT    INTO  patient  ( Patient_id ,  Name ,  Blood_group ,  Diseases ) VALUES
('P07', 'Maria Smith', 'O-', 'Asthma');
INSERT    INTO  patient  ( Patient_id ,  Name ,  Blood_group ,  Diseases ) VALUES
('P08', 'Tom Brown', 'B+', NULL);
INSERT    INTO  patient  ( Patient_id ,  Name ,  Blood_group ,  Diseases ) VALUES
('P09', 'John Cena', 'B+', NULL);
INSERT    INTO  patient  ( Patient_id ,  Name ,  Blood_group ,  Diseases ) VALUES
('P10', 'Chirag Patadiya', 'B+', NULL);

-- --------------------------------------------------------

--
-- Table structure for table  phone 
--

CREATE TABLE  phone  (
   Phone_id   varchar2(10) NOT NULL,
   Phone_1  number(10) NOT NULL,
   Phone_2  number(10) NOT NULL,
   Hospital_id   varchar2(10) NOT NULL
)   ;

--
-- Dumping data for table  phone 
--

INSERT    INTO  phone  ( Phone_id ,  Phone_1 ,  Phone_2 ,  Hospital_id ) VALUES
('Ph01', 1125750000, 1225750000, 'H01'); 
INSERT    INTO  phone  ( Phone_id ,  Phone_1 ,  Phone_2 ,  Hospital_id ) VALUES
('Ph02', 8312470732, 8312470743, 'H02');
INSERT    INTO  phone  ( Phone_id ,  Phone_1 ,  Phone_2 ,  Hospital_id ) VALUES
('Ph03', 2224107000, 2224107011, 'H03');
INSERT    INTO  phone  ( Phone_id ,  Phone_1 ,  Phone_2 ,  Hospital_id ) VALUES
('Ph04', 7940011111, 7940011177, 'H04');
INSERT    INTO  phone  ( Phone_id ,  Phone_1 ,  Phone_2 ,  Hospital_id ) VALUES
('Ph05', 7966701800, 7966701803, 'H05');
INSERT    INTO  phone  ( Phone_id ,  Phone_1 ,  Phone_2 ,  Hospital_id ) VALUES
('Ph06', 7966115600, 7966115620, 'H06');
INSERT    INTO  phone  ( Phone_id ,  Phone_1 ,  Phone_2 ,  Hospital_id ) VALUES
('Ph07', 7940203000, 7940203123, 'H07');
INSERT    INTO  phone  ( Phone_id ,  Phone_1 ,  Phone_2 ,  Hospital_id ) VALUES
('Ph08', 7927712771, 7927712770, 'H08');
INSERT    INTO  phone  ( Phone_id ,  Phone_1 ,  Phone_2 ,  Hospital_id ) VALUES
('Ph09', 9472648364, 9472648723, 'H09');
INSERT    INTO  phone  ( Phone_id ,  Phone_1 ,  Phone_2 ,  Hospital_id ) VALUES
('Ph10', 6239475264, 6239475266, 'H10');

-- --------------------------------------------------------

--
-- Table structure for table  receptionist 
--

CREATE TABLE  receptionist  (
   Rec_id   varchar2(10) NOT NULL,
   BB_id   varchar2(10) NOT NULL,
   Name   varchar2(20) NOT NULL,
   Street   varchar2(15) NOT NULL,
   City   varchar2(15) NOT NULL,
   Pincode     number(6) NOT NULL,
   Phone  number(10) NOT NULL
)   ;

--
-- Dumping data for table  receptionist 
--

INSERT    INTO  receptionist  ( Rec_id ,  BB_id ,  Name ,  Street ,  City ,  Pincode ,  Phone ) VALUES
('R01', 'B01', 'Sagar Ahuja', 'Naranpura', 'Ahmedabad', 382170, 7349023748);
INSERT    INTO  receptionist  ( Rec_id ,  BB_id ,  Name ,  Street ,  City ,  Pincode ,  Phone ) VALUES
('R02', 'B03', 'Parth Patel', 'Gota', 'Ahmedabad', 380081, 7902638457);
INSERT    INTO  receptionist  ( Rec_id ,  BB_id ,  Name ,  Street ,  City ,  Pincode ,  Phone ) VALUES
('R03', 'B04', 'Parth Solanki', 'Chndlodiya', 'Ahmedabad', 382481, 9723467892  );
INSERT    INTO  receptionist  ( Rec_id ,  BB_id ,  Name ,  Street ,  City ,  Pincode ,  Phone ) VALUES
('R04', 'B06', 'Shilpa Shetty', 'Bapunagar', 'Ahmedabad', 382270, 9899034682  );
INSERT    INTO  receptionist  ( Rec_id ,  BB_id ,  Name ,  Street ,  City ,  Pincode ,  Phone ) VALUES
('R05', 'B07', 'Mahek Shah', 'Satellite', 'Ahmedabad', 380001, 9023478952 ) ;
INSERT    INTO  receptionist  ( Rec_id ,  BB_id ,  Name ,  Street ,  City ,  Pincode ,  Phone ) VALUES
('R06', 'B07', 'Hitesh Dave', 'Sector 17', 'Gandhinagar', 382016, 6348590024 ) ;
INSERT    INTO  receptionist  ( Rec_id ,  BB_id ,  Name ,  Street ,  City ,  Pincode ,  Phone ) VALUES
('R07', 'B03', 'Kandarp Patel', 'Amroli', 'Surat', 394107, 6589023417 ) ;
;
INSERT    INTO  receptionist  ( Rec_id ,  BB_id ,  Name ,  Street ,  City ,  Pincode ,  Phone ) VALUES
('R08', 'B10', 'Neha Vyas', 'Bedkuva', 'Surat', 384041, 7548293011  );
INSERT    INTO  receptionist  ( Rec_id ,  BB_id ,  Name ,  Street ,  City ,  Pincode ,  Phone ) VALUES
('R09', 'B05', 'Vedant Parekh', 'Adsag', 'Amreli', 364522, 7238490576 ) ;
INSERT    INTO  receptionist  ( Rec_id ,  BB_id ,  Name ,  Street ,  City ,  Pincode ,  Phone ) VALUES
('R10', 'B09', 'Chirag Patadiya', 'Navrangapura', 'Ahmedabad', 380009, 7359760333);

--
-- Indexes for dumped tables
--

-- 

