/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/SQLTemplate.sql to edit this template
 */
/**
 * Author:  Chris
 * Created: 19 Sep 2023
 */

INSERT INTO company_data(company_name, company_description, industry, salary, image_location, course)
VALUES ('Deloitte', 'As a consultant at Deloitte you work together with the customer on solutions for complex challenges. You provide the client with new ideas, to ensure you are always one step ahead of them. By working closely with your colleagues, you continuously learn and you develop into an experienced specialist.', 'Consulting', 26750, 'Deloitte.png', 'BIS');

INSERT INTO company_data(company_name, company_description, industry, salary, image_location, course)
VALUES ('PWC', 'As the largest professional services firm in Ireland, PwC offers a broad range of services across audit, tax and advisory. So whether you are looking to keep track of the numbers, make tax simple or help others adapt to changing operating environments, PwC have the power to back you.', 'Consulting', 22500, 'pwc.png', 'BIS');

INSERT INTO company_data(company_name, company_description, industry, salary, image_location, course)
VALUES ('KPGM', 'KPMG is a global network of professional firms providing Audit, Tax and Advisory services and is an award winning Irish Graduate Program provider.', 'Consulting', 24500, 'KPMG.jpg', 'BIS');

INSERT INTO company_data(company_name, company_description, industry, salary, image_location, course)
VALUES ('Nucleo', 'Nucleo are empowering businesses to become more intelligent so they can create meaningful change.', 'Technology', 26500, 'nucleo.jpg', 'BIS');


INSERT INTO company_data(company_name, company_description, industry, salary, image_location, course)
VALUES ('EY', 'Ernest & Young build a better working wolrd through quality insights and groundbreaking services that help build trust and confidence in todays markets.', 'Consulting', 23000, 'EY.png', 'BIS');

INSERT INTO company_data(company_name, company_description, industry, salary, image_location, course)
VALUES ('Dell', 'Dell is a global company that designs, develops, and manufactures personal computers and a variety of computer-related products.', 'Technology', 24500, 'Dell.jpg', 'BIS');

INSERT INTO company_data(company_name, company_description, industry, salary, image_location, course)
VALUES ('Eli Lilly', 'Lilly unites caring with discovery to create medicines that make life better for people around the world.', 'Pharmaceutical', 22500, 'EL.png', 'BIS');

INSERT INTO company_data(company_name, company_description, industry, salary, image_location, course)
VALUES ('Accenture', 'Accenture provide many different offerigns such as management and tech consulting, risk management, strategy, and talent organisation.', 'Technology', 27000, 'Accenture.png', 'BIS');

INSERT INTO company_data(company_name, company_description, industry, salary, image_location, course)
VALUES ('Workday', 'Workday provides unified finance, human resources and student/faculty lifecycle management cloud applications designed for.', 'Technology', 36000, 'workday.png', 'BIS');


INSERT INTO company_data(company_name, company_description, industry, salary, image_location, course)
VALUES ('Pfizer', 'Phizers mission statement is to become the worlds most values company to patients, customers, colleagues, and investors.', 'Pharmaceutical', 27000, 'Pfizer.png', 'BIS');



INSERT INTO company_data(company_name, company_description, industry, salary, image_location, course)
VALUES ('SAP', 'SAP has a sole purpose to help improve the world by offering sustainable enterprise systems to companies small and large.', 'Technology', 32000, 'SAP.jpg', 'BIS');

INSERT INTO company_data(company_name, company_description, industry, salary, image_location, course)
VALUES ('ICBF', 'The Irish Cattle Breeding Federation (ICBF) was formally set up in 1998, and is a non-profit organisation charged with providing cattle breeding information services to the Irish dairy and beef industries.', 'Food', 22500, 'ICBF.jpg', 'BIS');


INSERT INTO company_data(company_name, company_description, industry, salary, image_location, course)
VALUES ('Eir', 'Techonology company....', 'Technology', 26300, 'eir.png', 'BIS');

INSERT INTO company_data(company_name, company_description, industry, salary, image_location, course)
VALUES ('Bank of America', 'BoA make financial lives better for their clients and communities through the power of connection and promotions of responisble growth.', 'Banking', 45000, 'bofa-og-logo.jpg', 'BIS');

INSERT INTO company_data(company_name, company_description, industry, salary, image_location, course)
VALUES ('Boardgais', 'Energy company...', 'Energy', 28000, 'boardgais.png', 'BIS');

INSERT INTO company_data(company_name, company_description, industry, salary, image_location, course)
VALUES ('Bank of Ireland', 'Banking company', 'Banking', 29750, 'bank_of_ireland.png', 'BIS');

INSERT INTO company_data(company_name, company_description, industry, salary, image_location, course)
VALUES ('Jansen', 'Jansen strive to create innovative, integrated solutions.', 'Pharmaceutical', 32000, 'jansen.png', 'BIS');

INSERT INTO company_data(company_name, company_description, industry, salary, image_location, course)
VALUES ('Gas Networks Ireland', 'Gas Networks Ireland is a business with a clear purpose in Keeping Irelands energy moving and an exciting and challenging vision to be at the heart of Irelands energy future.', 'Energy', 23000, 'GNI.jpg', 'BIS');

INSERT INTO company_data(company_name, company_description, industry, salary, image_location, course)
VALUES ('Grant Thornton', 'At Grant Thornton, the global mission is to be the leading business advisors to dynamic organizations by helping them unlock their potential for growth.', 'Consulting', 24000, 'GT-Logo.png', 'BIS');

INSERT INTO company_data(company_name, company_description, industry, salary, image_location, course)
VALUES ('PepsiCo', 'PepsiCo is the second largest food and beverage company in the world, offering a wide range of well known products.', 'Food', 22500, 'Pepsi.png', 'BIS');

INSERT INTO company_data(company_name, company_description, industry, salary, image_location, course)
VALUES ('Logitech', 'Logitech designs, develops, and manufacturs mobile and personal computer peripherals and accessories.', 'Technology', 22500, 'logi.png', 'BIS');

--user_data
INSERT INTO user_data(email, password, username, user_type, course)
VALUES ('chrisryan@umail.ucc.ie', 'Beans123!', 'BISKid123', 'admin', 'BIS');

INSERT INTO user_data(email, password, username, user_type, course)
VALUES ('katiewalsh@umail.ucc.ie', 'Beans123!', 'SVbrother', 'user', 'BIS');


--companyDicussions data


--roleData
INSERT INTO role_data(role_name, role_description, industry, salary, course)
VALUES ('Software Developer', 'As a software developer, you are responsible for researching, designing, implementing, and maintaining different software systems and applications.', 'Technology', 23500, 'BIS');

INSERT INTO role_data(role_name, role_description, industry, salary, course)
VALUES ('Project Management Intern', 'A project manager aids in the entire lifecycle of a project, ensuring smooth processes and procedures which ensure that high quality deliverables are released.', 'Consulting', 26750, 'BIS');


INSERT INTO role_data(role_name, role_description, industry, salary, course)
VALUES ('IT Automation Engineer', 'Your job is to run tests, identify bugs, and install and improve applications and database procedures to streamline business processes.', 'Technology', 27500, 'BIS');

INSERT INTO role_data(role_name, role_description, industry, salary, course)
VALUES ('IT Auditor', 'As an IT auditor, your job is to ensure that a companies software systems and applications are operating effectively and adverse from any risk.', 'Consulting', 28000, 'BIS');

INSERT INTO role_data(role_name, role_description, industry, salary, course)
VALUES ('Software Asset Management', 'In this role, you are at the nexus for pulling together software usage and inventory data, contract entitlements, financial spend, and organizational insights to how software is used in the company.', 'Technology', 30000, 'BIS');

INSERT INTO role_data(role_name, role_description, industry, salary, course)
VALUES ('Financial Auditor', 'As an auditor, your job is to review and verify that the financial information and figures provided by a company are compliant with laws and regulations.', 'Consulting', 24750, 'BIS');

INSERT INTO role_data(role_name, role_description, industry, salary, course)
VALUES ('Data Analyst', 'Data Analysts gather, clean, analyse, and create value from large amounts of Data. You will look for trends and find insights as new technologies emerge around the globe', 'Technology', 24500, 'BIS');

INSERT INTO role_data(role_name, role_description, industry, salary, course)
VALUES ('Finance Intern', 'As a finance intern, it is your job to provide support to the financial team as well as assisting in preperation of financial decisions both on a small and large scale', 'Banking', 22450, 'BIS');

INSERT INTO role_data(role_name, role_description, industry, salary, course)
VALUES ('Cyber Consulting', 'Cybersecurity consultants identify problems, evaluate security issues, assess risk, and implement solutions to defend against threats to companies networks and computer systems. They deal with many variables when evaluating security systems and craft layers of protection in a fast-changing IT landscape.', 'Consulting', 22500, 'BIS');

INSERT INTO role_data(role_name, role_description, industry, salary, course)
VALUES ('Customer Experience Analyst', 'A customer experience analyst gathers and interprets data on customer satisfaction for a business. As a customer experience analyst, your job duties include conducting surveys to collect client feedback, analysing data, and creating reports for the company management team.', 'User Experience', 22500, 'BIS');

INSERT INTO role_data(role_name, role_description, industry, salary, course)
VALUES ('Tax Techonology Intern', 'Support on the design, work with development teams, oversee testing and integration of new technologies with the tax practice.', 'Technology', 24550, 'BIS');

INSERT INTO role_data(role_name, role_description, industry, salary, course)
VALUES ('Human Capital Resource', 'Be involved with and support recruitment, training, career development, employee and industrial relations, and compliance.', 'User Experience', 27550, 'BIS');

INSERT INTO role_data(role_name, role_description, industry, salary, course)
VALUES ('Business Analyst', 'Business analysts are responsible for bridging the gap between IT and the business using data analytics to assess processes and deliver data-driven recommendations and reports.', 'Technology', 32750, 'BIS');

INSERT INTO role_data(role_name, role_description, industry, salary, course)
VALUES ('Applications Analyst', 'Applications analysts are responsible adminstering and maintaining the information systems a business needs to perform its day-to-day tasks.', 'Technology', 24000, 'BIS');
--roleDiscussions data



