/*Exercici 1
Elimina de la taula transaction el registre amb ID 02C6201E-D90A-1859-B4EE-88D2986D3B02 de 
la base de dades*/
delete from transaction 
where id = '02C6201E-D90A-1859-B4EE-88D2986D3B0';
Select * 
from transaction
where id = '02C6201E-D90A-1859-B4EE-88D2986D3B0';
/*Exercici 2
 La secció de màrqueting desitja tenir accés a informació específica per a realitzar anàlisi 
 i estratègies efectives. S'ha sol·licitat crear una vista que proporcioni detalls clau sobre 
 les companyies i les seves transaccions. Serà necessària que creïs una vista anomenada 
 VistaMarketing que contingui la següent informació: Nom de la companyia. Telèfon de contacte. 
 País de residència. Mitjana de compra realitzat per cada companyia. Presenta la vista creada,
 ordenant les dades de major a menor mitjana de compra*/
create view VistaMarketing as
	select company_name as 'Companyia', phone as 'Telèfon', 
	country as 'País', avg(transaction.amount) as 'Despesa_Mitjana'
	from company
	join transaction 
	on transaction.company_id = company.id
	group by company_name, Telèfon, País;
select Companyia,Telèfon,País,Despesa_Mitjana
from VistaMarketing
order by Despesa_Mitjana DESC;

/* Exercici 3
Filtra la vista VistaMarketing per a mostrar només les companyies que tenen el seu 
país de residència en "Germany"*/
select *
from vistamarketing
where País= 'Germany';

