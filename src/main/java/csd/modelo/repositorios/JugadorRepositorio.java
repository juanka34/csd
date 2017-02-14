package csd.modelo.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import csd.modelo.entidades.Jugador;



@Repository
public interface JugadorRepositorio  extends CrudRepository<Jugador, Long> {



	List<Jugador> findByNombreIgnoreCaseContaining(String busqueda);

}
