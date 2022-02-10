import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection;
    private Config config;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Ad> all() {
        Statement statement;
        try {
            statement = connection.createStatement();

            ResultSet result = statement.executeQuery("SELECT * FROM ads");
            return createAds(result);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

//    @Override
//    public Long insert(Ad ad) {
//        return null;
//    }

    private Ad getAd(ResultSet result) throws SQLException {
        return new Ad(
                result.getLong("id"),
                result.getLong("user_id"),
                result.getString("title"),
                result.getString("description")
        );
    }

    private List<Ad> createAds(ResultSet result) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (result.next()) {
            ads.add(getAd(result));
        }
        return ads;
    }

}
