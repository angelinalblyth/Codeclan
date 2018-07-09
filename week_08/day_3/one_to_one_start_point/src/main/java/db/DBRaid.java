package db;

import models.Pirate;
import models.Raid;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import java.util.List;

public class DBRaid {

    private static Session session;

    public static List<Pirate> getRaidPirates(Raid raid){
        session = HibernateUtil.getSessionFactory().openSession();
        List<Pirate> results = null;
        try {
            Criteria criteria = session.createCriteria(Pirate.class);
            criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
            criteria.createAlias("raids", "raid");
            criteria.add(Restrictions.eq("raid.id", raid.getId()));

            results = criteria.list();
        }catch (HibernateException e){
            e.printStackTrace();
        }finally {
            session.close();
        }return results;
    }
}
