package service;

import model.Product;
import reponsitory.IProductRepository;
import reponsitory.ProductRepositoryImpl;

import java.util.List;

public class ProductServiceImpl implements IProductService {

    private IProductRepository  productRepository = new ProductRepositoryImpl();

    @Override
    public List<Product> findAll() {
        return productRepository.findAll();
    }

    @Override
    public void create(Product product) {
        productRepository.create(product);
    }

    @Override
    public void edit(Product product) {
        productRepository.edit(product);
    }

    @Override
    public void delete(int id) {
        productRepository.delete(id);
    }

    @Override
    public Product findById(int id) {
        return productRepository.findById(id);
    }

    @Override
    public List<Product> findByName(String name) {
        return productRepository.findByName(name);
    }

    @Override
    public List<Product> sortByName() {
        return null;
    }
}