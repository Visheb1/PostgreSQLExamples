ALTER TABLE product
ADD FOREIGN KEY (id_product) references people(id) ON DELETE CASCADE;