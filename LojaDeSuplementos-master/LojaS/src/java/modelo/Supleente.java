/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author TurtleDAO
 */
@Entity
@Table(name = "supleente")
@NamedQueries({
    @NamedQuery(name = "Supleente.findAll", query = "SELECT s FROM Supleente s")})
public class Supleente implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "supleente")
    private Integer supleente;
    @Basic(optional = false)
    @Column(name = "comentario")
    private String comentario;
    @Basic(optional = false)
    @Column(name = "avaliacao")
    private int avaliacao;
    @Basic(optional = false)
    @Column(name = "cliente")
    private int cliente;
    @JoinColumn(name = "suplemento", referencedColumnName = "suplemento")
    @ManyToOne(optional = false)
    private Suplemento suplemento;

    public Supleente() {
    }

    public Supleente(Integer supleente) {
        this.supleente = supleente;
    }

    public Supleente(Integer supleente, String comentario, int avaliacao, int cliente) {
        this.supleente = supleente;
        this.comentario = comentario;
        this.avaliacao = avaliacao;
        this.cliente = cliente;
    }

    public Integer getSupleente() {
        return supleente;
    }

    public void setSupleente(Integer supleente) {
        this.supleente = supleente;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public int getAvaliacao() {
        return avaliacao;
    }

    public void setAvaliacao(int avaliacao) {
        this.avaliacao = avaliacao;
    }

    public int getCliente() {
        return cliente;
    }

    public void setCliente(int cliente) {
        this.cliente = cliente;
    }

    public Suplemento getSuplemento() {
        return suplemento;
    }

    public void setSuplemento(Suplemento suplemento) {
        this.suplemento = suplemento;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (supleente != null ? supleente.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Supleente)) {
            return false;
        }
        Supleente other = (Supleente) object;
        if ((this.supleente == null && other.supleente != null) || (this.supleente != null && !this.supleente.equals(other.supleente))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "dao.Supleente[ supleente=" + supleente + " ]";
    }
    
}
