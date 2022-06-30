package reponsitory;

import model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductRepositoryImpl implements IProductRepository {
    static List<Product> productList = new ArrayList<>();

    private static final String FIND_ALL = "SELECT * FROM product ";
    private static final String FIND_BY_NAME = "SELECT * FROM product where name like ? ";
    private static final String FIND_BY_ID = "SELECT * FROM product where id = ? ";
    private static final String INSERT = " INSERT INTO product (name, price, producer)  " +
            " values( ?, ?, ?) ";
    private static final String UPDATE = " UPDATE product SET name = ? , price = ? , " +
            " producer = ? where id = ? " ;
    private static final String DELETE_BY_ID = " DELETE FROM product WHERE id= ? " ;
    private static final String SORT_BY_NAME = "SELECT * FROM product order by  name ";

    @Override
    public List<Product> findAll() {
        productList.clear();
        try {
            Connection connection = new BaseRepository().getConnection();
//          Tạo câu lệnh SQL
            PreparedStatement preparedStatement =
                    connection.prepareStatement(FIND_ALL);
//          Dùng executeQuery/Update để thực thi.
//          ResultSet : Nhận kết quả từ DB trả về để xử lý
            ResultSet resultSet = preparedStatement.executeQuery();
            Product product = null;
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                float price = Float.parseFloat(resultSet.getString("price"));
                String producer = resultSet.getString("producer");
                product = new Product(id, name, price, producer);
                productList.add(product);
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return productList;
    }

    @Override
    public void create(Product product) {
        try {
            Connection connection = new BaseRepository().getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT);
            preparedStatement.setString(1, product.getName());
            preparedStatement.setFloat(2, (float) product.getPrice());
            preparedStatement.setString(3, product.getProducer());
            preparedStatement.executeUpdate();
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        }
    }

    @Override
    public void edit( Product product) {
        try{
            Connection connection = new BaseRepository().getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE);
            preparedStatement.setString(1,product.getName());
            preparedStatement.setFloat(2, product.getPrice());
            preparedStatement.setString(3,product.getProducer());
            preparedStatement.setInt(4,product.getId());
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void delete(int id ) {
        try{
            Connection connection = new BaseRepository().getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_BY_ID);
            preparedStatement.setInt(1,id);
            preparedStatement.executeUpdate();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public Product findById(int id) {
        Product product = null;
        try{
            Connection connection =new BaseRepository().getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_ID);
            preparedStatement.setInt(1,id);
            ResultSet resultSet= preparedStatement.executeQuery();
            while (resultSet.next()){
                int idS = resultSet.getInt("id");
                String name = resultSet.getString("name");
                float price = resultSet.getFloat("price");
                String producer = resultSet.getString("producer");
                product = new Product(idS,name,price,producer);

            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return product;
    }

    @Override
    public List<Product> findByName(String nameS) {
        productList.clear();
        try {
            Connection connection = new BaseRepository().getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_NAME);
            preparedStatement.setString(1, "%" + nameS + "%");
            ResultSet resultSet = preparedStatement.executeQuery();
            Product product = null;
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                float price = resultSet.getFloat("price");
                String producer = resultSet.getString("producer");
                product = new Product(id,name,price,producer);
                productList.add(product);

            }
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        }
        return productList;
    }
}