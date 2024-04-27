package pe.edu.cibertec.WAEC2Dynamite.models;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
@Data
@Entity
@Table (name="usuario")
public class Usuario {
    @Id
    @Getter
    @Setter
    private int idusuario;
    @Getter
    @Setter
    private String nomusuario;
    @Getter
    @Setter
    private String email;
    @Getter
    @Setter
    private String password;
    @Getter
    @Setter
    private String nombres;
    @Getter
    @Setter
    private String apellidos;
    @Getter
    @Setter
    private int activo;
}
