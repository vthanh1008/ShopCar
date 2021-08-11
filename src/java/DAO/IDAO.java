/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public interface IDAO<E> {

    public List<E> getAll();

    public E getOne(int id);

    public boolean add(E obj);

    public boolean update(E obj, int id);

    public boolean delete(int id);

}
