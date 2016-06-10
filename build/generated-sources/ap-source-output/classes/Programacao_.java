package classes;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Programacao.class)
public abstract class Programacao_ {

	public static volatile SingularAttribute<Programacao, Integer> vagas;
	public static volatile SingularAttribute<Programacao, Integer> idProgramacao;
	public static volatile SingularAttribute<Programacao, Date> data;
	public static volatile SingularAttribute<Programacao, Motorista> motorista;
	public static volatile SingularAttribute<Programacao, String> origem;
	public static volatile SingularAttribute<Programacao, String> destino;
	public static volatile SingularAttribute<Programacao, String> adicional;
	public static volatile SingularAttribute<Programacao, Boolean> efetuada;

}

