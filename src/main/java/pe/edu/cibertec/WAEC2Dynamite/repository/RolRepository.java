package pe.edu.cibertec.WAEC2Dynamite.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pe.edu.cibertec.WAEC2Dynamite.models.Rol;

@Repository
public interface RolRepository extends JpaRepository<Rol, Integer> {
    Rol findByNomrol(String nombrerol);
}
