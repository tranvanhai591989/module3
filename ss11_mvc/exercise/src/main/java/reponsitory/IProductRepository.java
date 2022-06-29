package reponsitory;

import model.Product;

import java.util.List;

public interface IProductRepository {

    List<Product> findAll();

    void create(Product product);

    void edit(int id, Product product);

    void delete(int id);

    void seeDetails();

    Product findById(int id);

    List<Product> findByName(String name);
}