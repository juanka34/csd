	<div>   
        <form action="${path}/buscar" method="POST">
        <label style="color:white; "for="buscar ">Buscar:</label>
        <input id="busqueda"  style="width: 20%" name="busqueda" class="form-control"/> 
        <input id="csrf" name="_csrf" type="hidden" value="${_csrf.token}">
        <button type="submit" class="btn btn-primary btn-buscar">BUSCAR</button>  
        </form>
        
        </div><br><br>