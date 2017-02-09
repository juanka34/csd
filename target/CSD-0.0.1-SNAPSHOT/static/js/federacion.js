
$(document).ready(function() {
	
	$('.btn-borrar').on('click', function(){
		var id = $(this).parents('tr').data('id');
		
		$.ajax({
			url : "federacion/"+id,
			type: 'DELETE',
		    success: function(result) {
		    	$('tr[data-id="'+id+'"]').remove();
				var equipos = parseInt( $('#cantidades-federacion').text() );
		    	$('#cantidades-federacion').text(equipos - 1);
		    }
		});
	});
	
	$('.btn-editar').on('click', function(){
		var id = $(this).parents('tr').data('id');
		var url = 'federacion/'+id;
		
		$.get(url)
			.done(function(federacion){
				
				$('#id').val(federacion.id);
				$('#nombre').val(federacion.nombre);
				$('#pais').val(federacion.pais);
				$('#form-federacion .modal-title').text ("Editando....");
				
				$('#modal-federacion').modal('show');
			});
	});
});

