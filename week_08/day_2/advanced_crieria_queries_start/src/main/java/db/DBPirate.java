package db;

import com.sun.tools.corba.se.idl.constExpr.Or;
import models.Pirate;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

import java.util.List;

public class DBPirate {

    private static Session session;
    private static Transaction transaction;



    public static List<Pirate> orderByAge(){
        session = HibernateUtil.getSessionFactory().openSession();

        List<Pirate> pirates = null;

        try{
            Criteria criteria = session.createCriteria(Pirate.class);
            criteria.addOrder(Order.desc("age"));
            pirates = criteria.list();
        }catch (HibernateException e){
            e.printStackTrace();
        }finally {
            session.close();
        }
        return pirates;
        }


        public static Double getAverageAge(){
        session = HibernateUtil.getSessionFactory().openSession();

        Double average = null;

        try{

            Criteria criteria = session.createCriteria(Pirate.class);
            criteria.setProjection(Projections.avg("age"));

            average = (Double) criteria.uniqueResult();

        }catch (HibernateException e){

            e.printStackTrace();
        }finally {
            session.close();
        }
        return average;
        }
}
