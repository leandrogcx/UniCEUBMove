/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.util.Date;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;

/**
 *
 * @author Rafael.Soares
 */
@Entity
public class Programacao {
 
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idProgramacao;
    private String origem;
    private String destino;
    
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date data;
    
    private String adicional;
    private int vagas;
    private boolean efetuada;
    
    @ManyToOne( cascade = CascadeType.ALL)
    private Motorista motorista;

    public int getIdProgramacao() {
        return idProgramacao;
    }

    public void setIdProgramacao(int idProgramacao) {
        this.idProgramacao = idProgramacao;
    }

    public String getOrigem() {
        return origem;
    }

    public void setOrigem(String origem) {
        this.origem = origem;
    }

    public String getDestino() {
        return destino;
    }

    public void setDestino(String destino) {
        this.destino = destino;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }

    public String getAdicional() {
        return adicional;
    }

    public void setAdicional(String adicional) {
        this.adicional = adicional;
    }

    public int getVagas() {
        return vagas;
    }

    public void setVagas(int vagas) {
        this.vagas = vagas;
    }

    public boolean isEfetuada() {
        return efetuada;
    }

    public void setEfetuada(boolean efetuada) {
        this.efetuada = efetuada;
    }

    public Motorista getMotorista() {
        return motorista;
    }

    public void setMotorista(Motorista motorista) {
        this.motorista = motorista;
    }
    
}