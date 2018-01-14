use dneprGarage;

SELECT clients.id,
	client_last_name.last_name, 
    client_first_name.name,
    service.service_name
    from clients
INNER JOIN
	client_last_name
ON
	clients.id_client_last_name = client_last_name.id
INNER JOIN
	client_first_name
ON
	clients.id_client_first_name = client_first_name.id
INNER JOIN
	service
ON
	clients.id_service_name = service.id

;