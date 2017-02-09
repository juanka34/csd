

$(document).ready(function() {
	
	$('.btn-borrar').on('click', function(){
		var id = $(this).parents('tr').data('id');
		
		$.ajax({
			url : "equipos/"+id,
			type: 'DELETE',
		    success: function(result) {
		    	$('tr[data-id="'+id+'"]').remove();
				var equipos = parseInt( $('#cantidades-equipos').text() );
		    	$('#cantidades-equipos').text(equipos - 1);
		    }
		});
	});
	
	$('.btn-editar').on('click', function(){
		var id = $(this).parents('tr').data('id');
		var url = 'equipos/'+id;
		
		$.get(url)
			.done(function(equipo){
				
				$('#id').val(equipo.id);
				$('#nombre').val(equipo.nombre);
				$('#estadio').val(equipo.pais);
				$('#presupuesto').val(equipo.presupuesto);
				$('#federaciones').val(equipo.federaciones);
				$('#form-equipos .modal-title').text ("Editando....");
				
				$('#modal-equipos').modal('show');
			});
	});
});

