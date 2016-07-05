/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import modelo.Supleente;
import modelo.Categoria;
import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author TurtleDAO
 */
@Entity
@Table(name = "suplemento")
@NamedQueries({
    @NamedQuery(name = "Suplemento.findAll", query = "SELECT s FROM Suplemento s")})
public class Suplemento implements Serializable {

    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @Column(name = "nome_suple")
    private String nomeSuple;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "suplemento")
    private Integer suplemento;
    @Basic(optional = false)
    @Column(name = "quantidade")
    private int quantidade;
    @JoinColumn(name = "categoria", referencedColumnName = "categoria")
    @ManyToOne(optional = false)
    private Categoria categoria;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "suplemento")
    private List<Supleente> supleenteList;

    public Suplemento() {
    }

    public Suplemento(Integer suplemento) {
        this.suplemento = suplemento;
    }

    public Suplemento(Integer suplemento, String nomeSuple, int quantidade) {
        this.suplemento = suplemento;
        this.nomeSuple = nomeSuple;
        this.quantidade = quantidade;
    }

    public String getNomeSuple() {
        return nomeSuple;
    }

    public void setNomeSuple(String nomeSuple) {
        this.nomeSuple = nomeSuple;
    }

    public Integer getSuplemento() {
        return suplemento;
    }

    public void setSuplemento(Integer suplemento) {
        this.suplemento = suplemento;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public List<Supleente> getSupleenteList() {
        return supleenteList;
    }

    public void setSupleenteList(List<Supleente> supleenteList) {
        this.supleenteList = supleenteList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (suplemento != null ? suplemento.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Suplemento)) {
            return false;
        }
        Suplemento other = (Suplemento) object;
        if ((this.suplemento == null && other.suplemento != null) || (this.suplemento != null && !this.suplemento.equals(other.suplemento))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "dao.Suplemento[ suplemento=" + suplemento + " ]";
    }
    
}
