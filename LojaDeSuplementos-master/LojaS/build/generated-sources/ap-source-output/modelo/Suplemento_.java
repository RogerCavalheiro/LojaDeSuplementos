package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Categoria;
import modelo.Supleente;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-07-05T05:31:58")
@StaticMetamodel(Suplemento.class)
public class Suplemento_ { 

    public static volatile ListAttribute<Suplemento, Supleente> supleenteList;
    public static volatile SingularAttribute<Suplemento, Categoria> categoria;
    public static volatile SingularAttribute<Suplemento, Integer> suplemento;
    public static volatile SingularAttribute<Suplemento, String> nomeSuple;
    public static volatile SingularAttribute<Suplemento, Integer> quantidade;

}