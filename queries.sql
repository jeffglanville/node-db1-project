-- Database Queries

-- Find all customers with postal code 1010

    --SELECT *
    --FROM Customers
    --WHERE PostalCode = 1010;

    --12	Cactus Comidas para llevar	Patricio Simpson	Cerrito 333	Buenos Aires	1010	Argentina
    --54	Océano Atlántico Ltda.	Yvonne Moncada	Ing. Gustavo Moncada 8585 Piso 20-A	Buenos Aires	1010	Argentina
    --64	Rancho grande	Sergio Gutiérrez	Av. del Libertador 900	Buenos Aires	1010	Argentina

-- Find the phone number for the supplier with the id 11

    --SELECT Phone
    --FROM Suppliers
    --WHERE SupplierID = 11;

    --(010)9984510


-- List first 10 orders placed, sorted descending by the order date

    --SELECT *
    --FROM [Orders]
    --ORDER BY OrderDate Desc
    --Limit 10;

    --10443	66	8	1997-02-12	1
    --10442	20	3	1997-02-11	2
    --10440	71	4	1997-02-10	2
    --10441	55	3	1997-02-10	2
    --10439	51	6	1997-02-07	3
    --10438	79	3	1997-02-06	2
    --10436	7	3	1997-02-05	2
    --10437	87	8	1997-02-05	1
    --10435	16	8	1997-02-04	2
    --10433	60	3	1997-02-03	3

-- Find all customers that live in London, Madrid, or Brazil
--(there are only 9 results returned)

    --SELECT *
    --FROM Customers
    --WHERE City = 'London' OR City = 'Madrid' OR City = 'Brazil';

    --4	Around the Horn	Thomas Hardy	120 Hanover Sq.	London	WA1 1DP	UK
    --8	Bólido Comidas preparadas	Martín Sommer	C/ Araquil, 67	Madrid	28023	Spain
    --11	B's Beverages	Victoria Ashworth	Fauntleroy Circus	London	EC2 5NT	UK
    --16	Consolidated Holdings	Elizabeth Brown	Berkeley Gardens 12 Brewery	London	WX1 6LT	UK
    --19	Eastern Connection	Ann Devon	35 King George	London	WX3 6FW	UK
    --22	FISSA Fabrica Inter. Salchichas S.A.	Diego Roel	C/ Moralzarzal, 86	Madrid	28034	Spain
    --53	North/South	Simon Crowther	South House 300 Queensbridge	London	SW7 1RZ	UK
    --69	Romero y tomillo	Alejandra Camino	Gran Vía, 1	Madrid	28001	Spain
    --72	Seven Seas Imports	Hari Kumar	90 Wadhurst Rd.	London	OX15 4NB	UK

-- Add a customer record for "The Shire", the contact name is "Bilbo Baggins" the address is -"1 Hobbit-Hole" in "Bag End", postal code "111" and the country is "Middle Earth"

    --INSERT INTO Customers
    --VALUES ('The Shire', 'Bilbo Baggins', '1 Hobbit-Hole', 'Bag End', '111', 'Middle Earth');

    --89	White Clover Markets	Karl Jablonski	305 - 14th Ave. S. Suite 3B	Seattle	98128	USA
    --90	Wilman Kala	Matti Karttunen	Keskuskatu 45	Helsinki	21240	Finland
    --91	Wolski	Zbyszek	ul. Filtrowa 68	Walla	01-012	Poland
    --92	The Shire	Bilbo Baggins	1 Hobbit-Hole	Bag End	111	Middle Earth

-- Update Bilbo Baggins record so that the postal code changes to "11122"

    --UPDATE Customers
    --SET PostalCode = 11122
    --WHERE CustomerID = 92;

    --92	The Shire	Bilbo Baggins	1 Hobbit-Hole	Bag End	11122	Middle Earth


-- (Stretch) Find a query to discover how many different cities are stored in the Customers table. Repeats should not be double counted

    --SELECT COUNT(DISTINCT City)
    --FROM Customers;

    --70

-- (Stretch) Find all suppliers who have names longer than 20 characters. You can use `length(SupplierName)` to get the length of the name

    --SELECT *
    --FROM Suppliers
    --WHERE length(SupplierName) > 20;

    --2	New Orleans Cajun Delights	Shelley Burke	P.O. Box 78934	New Orleans	70117	USA	(100) 555-4822
    --3	Grandma Kelly's Homestead	Regina Murphy	707 Oxford Rd.	Ann Arbor	48104	USA	(313) 555-5735
    --5	Cooperativa de Quesos 'Las Cabras'	Antonio del Valle Saavedra	Calle del Rosal 4	Oviedo	33007	Spain	(98) 598 76 54
    --8  	Specialty Biscuits, Ltd.	Peter Wilson	29 King's Way	Manchester	M14 GSD	UK	(161) 555-4448
    --10	Refrescos Americanas LTDA	Carlos Diaz	Av. das Americanas 12.890	São Paulo	5442	Brazil	(11) 555 4640
    --11	Heli Süßwaren GmbH & Co. KG	Petra Winkler	Tiergartenstraße 5	Berlin	10785	Germany	(010) 9984510
    --12	Plutzer Lebensmittelgroßmärkte AG	Martin Bein	Bogenallee 51	Frankfurt	60439	Germany	(069) 992755
    --13	Nord-Ost-Fisch Handelsgesellschaft mbH	Sven Petersen	Frahmredder 112a	Cuxhaven	27478	Germany	(04721) 8713
    --14	Formaggi Fortini s.r.l.	Elio Rossi	Viale Dante, 75	Ravenna	48100	Italy	(0544) 60323
    --18	Aux joyeux ecclésiastiques	Guylène Nodier	203, Rue des Francs-Bourgeois	Paris	75004	France	(1) 03.83.00.68
    --19	New England Seafood Cannery	Robb Merchant	Order Processing Dept. 2100 Paul Revere Blvd.	Boston	02134	USA	(617) 555-3267