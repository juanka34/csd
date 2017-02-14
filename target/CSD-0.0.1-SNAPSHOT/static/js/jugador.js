
$(document).ready(function() {
	$('.btn-borrar').on('click', function(){
		var id = $(this).parents('tr').data('id');
		
		$.ajax({
			url : "jugador/"+id,
			type: 'DELETE',
		    success: function(result) {
		    	$('tr[data-id="'+id+'"]').remove();
				var jugador = parseInt( $('#cantidades-jugador').text() );
		    	$('#cantidades-jugador').text(equipos - 1);
		    },
		    error: function(){
		        alert('error!');
		    }
		});
	});
	
	$('.btn-editar').on('click', function(){
		var id = $(this).parents('tr').data('id');
		var url = 'jugador/'+id;
		
		$.get(url)
			.done(function(jugador){
				
				$('#id').val(jugador.id);
				$('#nombre').val(jugador.nombre);
				$('#edad').val(jugador.edad);
				$('#goles').val(jugador.goles);
				$('#equipos').val(jugador.equipos);
				$('#form-jugador .modal-title').text ("Editando....");
				
				$('#modal-jugador').modal('show');
			});
	});
});

