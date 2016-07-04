package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Suplemento;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-06-28T20:56:18")
@StaticMetamodel(Categoria.class)
public class Categoria_ { 

    public static volatile SingularAttribute<Categoria, Long> categoria;
    public static volatile CollectionAttribute<Categoria, Suplemento> suplementoCollection;
    public static volatile SingularAttribute<Categoria, String> nomeCategoria;

}