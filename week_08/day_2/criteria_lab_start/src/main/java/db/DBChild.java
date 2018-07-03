package db;

import models.Child;
import org.hibernate.*;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

import java.util.List;


public class DBChild {

    private static Transaction transaction;
    private static Session session;


    public static Child findByName(String name){
        session = session.getSessionFactory().openSession();
        Child result = null;
        try{
            Criteria criteria = session.createCriteria(Child.class);
            criteria.add(Restrictions.eq("name", name));
            result = (Child) criteria.uniqueResult();
        }catch (HibernateException e){
            e.printStackTrace();
        }finally {
            session.close();
        }
        return result;
    }



    public static List<Child> orderByAge(){
        session = HibernateUtil.getSessionFactory().openSession();
        List<Child> children = null;
        try{
            Criteria criteria = session.createCriteria(Child.class);
            criteria.addOrder(Order.asc("age"));
            children = criteria.list();
        }catch (HibernateException e){
            e.printStackTrace();
        }finally {
            session.close();
        }
        return children;
    }

    public static List<Child> sopranos(){
        session = HibernateUtil.getSessionFactory().openSession();
        List<Child> results = null;
        try {
            Criteria criteria = session.createCriteria(Child.class);
            criteria.add(Restrictions.ilike("range", "Sop%"));
            results = criteria.list();
        } catch (HibernateException e){
            e.printStackTrace();
        }finally {
            session.close();
        } return results;
    }

    public static List<Child> youngestChildren(){
        session = HibernateUtil.getSessionFactory().openSession();
        List<Child> results = null;
        try {
            Criteria criteria = session.createCriteria(Child.class);
            criteria.add(Restrictions.lt("age", 15));
            results = criteria.list();
        } catch (HibernateException e){
            e.printStackTrace();
        }finally {
            session.close();
        } return results;
    }

    public static Double getAverageAge(){
        session = HibernateUtil.getSessionFactory().openSession();
        Double average = null;
        try{
            Criteria criteria = session.createCriteria(Child.class);
            criteria.setProjection(Projections.avg("age"));
            average = (Double) criteria.uniqueResult();
        } catch (HibernateException e){
            e.printStackTrace();
        }finally {
            session.close();
        }
        return average;
    }

    public static Integer getOldestChild(){
        session = HibernateUtil.getSessionFactory().openSession();
        Integer oldest = null;
        try{
            Criteria criteria = session.createCriteria(Child.class);
            criteria.setProjection(Projections.max("age"));
           oldest = (Integer) criteria.uniqueResult();
        } catch (HibernateException e){
            e.printStackTrace();
        }finally {
            session.close();
        }
        return oldest;
    }

    public static Integer getYoungestChild(){
        session = HibernateUtil.getSessionFactory().openSession();
        Integer youngest = null;
        try{
            Criteria criteria = session.createCriteria(Child.class);
            criteria.setProjection(Projections.min("age"));
            youngest = (Integer) criteria.uniqueResult();
        } catch (HibernateException e){
            e.printStackTrace();
        }finally {
            session.close();
        }
        return youngest;
    }

    public static Long totalAge(){
        session = HibernateUtil.getSessionFactory().openSession();
        Long total = null;
        try{
            Criteria criteria = session.createCriteria(Child.class);
            criteria.setProjection(Projections.sum("age"));
            total = (Long)criteria.uniqueResult();
        } catch (HibernateException e){
            e.printStackTrace();
        }finally {
            session.close();
        }
        return total;
    }




}

