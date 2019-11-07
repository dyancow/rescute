--Tested against database implemented on Firebase using open source tool Firestation. Formatted for Firestation querying. 
--[DogInfo] Get all of dog’s information after click
select * from Dogs where 
    age > 10
    and breed LIKE "hound"; 

--[Userpage] Get all of user’s associated dogs
select * from Dogs where user-email='pierce@msn.com';

--[Owner page] Populate with owner’s information
select * from User where email = 'pierce@msn.com';

--[Signup] Add the new user parameters to the users database
insert into User (address, email, name, number, password) values ('somewhre', 'mail@domain.org', 'somename', 9999999999, 'badpassword123');

--[AddDog] Add a dog to the database
insert into Dogs (age, breed, name, picture, special needs) values (10, 'Afghan Hound', 'Lily', 'image_url', 'hip dysplasia');
