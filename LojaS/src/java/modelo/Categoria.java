/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import dao.*;
import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author Aluno
 */
@Entity
@Table(name = "categoria")
@NamedQueries({
    @NamedQuery(name = "Categoria.findAll", query = "SELECT c FROM Categoria c")})
public class Categoria implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "categoria")
    private Long categoria;
    @Basic(optional = false)
    @Column(name = "nome_categoria")
    private String nomeCategoria;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "categoria")
    private Collection<Suplemento> suplementoCollection;

    public Categoria() {
    }

    public Categoria(Long categoria) {
        this.categoria = categoria;
    }

    public Categoria(Long categoria, String nomeCategoria) {
        this.categoria = categoria;
        this.nomeCategoria = nomeCategoria;
    }

    public Long getCategoria() {
        return categoria;
    }

    public void setCategoria(Long categoria) {
        this.categoria = categoria;
    }

    public String getNomeCategoria() {
        return nomeCategoria;
    }

    public void setNomeCategoria(String nomeCategoria) {
        this.nomeCategoria = nomeCategoria;
    }

    public Collection<Suplemento> getSuplementoCollection() {
        return suplementoCollection;
    }

    public void setSuplementoCollection(Collection<Suplemento> suplementoCollection) {
        this.suplementoCollection = suplementoCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (categoria != null ? categoria.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Categoria)) {
            return false;
        }
        Categoria other = (Categoria) object;
        if ((this.categoria == null && other.categoria != null) || (this.categoria != null && !this.categoria.equals(other.categoria))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "dao.Categoria[ categoria=" + categoria + " ]";
    }
    
}
