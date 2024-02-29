package Dao;

import entity.UserEntity;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;


public class UserDao{

    public UserEntity saveUser(UserEntity user) {
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory
                ("default");
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        EntityTransaction transaction = entityManager.getTransaction();
        try {
            transaction.begin();


            user.setId(1);
            user.setName("Nelson");
            user.setEmail("inga@gmail.com");
            user.setPassword("1111");
            user.setSex("Male");
            user.setCountry("india");

            entityManager.persist(user);


            transaction.commit();
        } finally {
            if (transaction.isActive()) {
                transaction.rollback();
            }
            entityManager.close();
            entityManagerFactory.close();
        }
        return user;
    }


    }

