package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Categoria;
import modelo.Supleente;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-06-28T20:56:18")
@StaticMetamodel(Suplemento.class)
public class Suplemento_ { 

    public static volatile SingularAttribute<Suplemento, Categoria> categoria;
    public static volatile SingularAttribute<Suplemento, Long> suplemento;
    public static volatile SingularAttribute<Suplemento, String> nomeSuple;
    public static volatile SingularAttribute<Suplemento, Integer> quantidade;
    public static volatile CollectionAttribute<Suplemento, Supleente> supleenteCollection;

}