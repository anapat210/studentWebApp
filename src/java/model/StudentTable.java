/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this tstdlate file, choose Tools | Tstdlates
 * and open the tstdlate in the editor.
 */
package model;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author asus
 */
public class StudentTable {
    
    public static List<Student> findAllStudent(){
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("StudentWebAppPU");
        EntityManager em = emf.createEntityManager();
        List<Student> stdList = null;
         try {
            stdList = (List<Student>) em.createNamedQuery("Student.findAll").getResultList();         
        } catch (Exception e) {
            throw new RuntimeException(e);
            
        }
        finally {
            em.close();
            emf.close();
        }
        return stdList;
    }
    public static Student findStudentById(int id) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("StudentWebAppPU");
        EntityManager em = emf.createEntityManager();
        Student std = null;
        try {
            std = em.find(Student.class, id);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        finally {
            em.close();
            emf.close();
        }
        return std;
    }
    
    public static int updateStudent(Student std) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("StudentWebAppPU");
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            Student target = em.find(Student.class, std.getId());
            if (target == null) {
                return 0;
            }
            target.setName(std.getName());
            target.setGpa(std.getGpa());
            em.persist(target);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
            
        }
        finally {
            em.close();
            emf.close();
        }
        return 1;
        
    }
    public static int removeStudent(int id) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("StudentWebAppPU");
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            Student target = em.find(Student.class, id);
            if (target == null) {
                return 0;
            }
            em.remove(target);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
            
        }
        finally {
            em.close();
            emf.close();
        }
        return 1;
    }
    
    
    public static int insertStudent(Student std) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("StudentWebAppPU");
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            Student target = em.find(Student.class, std.getId());
            if (target != null) {
                return 0;
            }
            em.persist(std);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
            
        }
        finally {
            em.close();
            emf.close();
        }
        return 1;
    }
    
        public static int countStudent(){
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("StudentWebAppPU");
        EntityManager em = emf.createEntityManager();
        List<Student> stdList = null;
         try {
            stdList = (List<Student>) em.createNamedQuery("Student.count").getResultList();         
        } catch (Exception e) {
            throw new RuntimeException(e);
            
        }
        finally {
            em.close();
            emf.close();
        }
        int count = stdList.size();
        return count;
        }
}
