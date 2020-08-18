create view soldiers_type_view as
select soldiers.*, soldier_types.type as soldier_type from soldiers join soldier_types on soldiers.solider_type_id = soldier_types.id