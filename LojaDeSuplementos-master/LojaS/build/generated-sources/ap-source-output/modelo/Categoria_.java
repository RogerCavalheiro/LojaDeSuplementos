package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Suplemento;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-07-05T05:31:58")
@StaticMetamodel(Categoria.class)
public class Categoria_ { 

    public static volatile ListAttribute<Categoria, Suplemento> suplementoList;
    public static volatile SingularAttribute<Categoria, Integer> categoria;
    public static volatile SingularAttribute<Categoria, String> nomeCategoria;

}