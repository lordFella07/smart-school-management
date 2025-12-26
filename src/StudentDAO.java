import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class StudentDAO {
    // Update with your database credentials
    private String dbURL = "jdbc:mysql://localhost:3306/your_database_name";
    private String dbUser = "root";
    private String dbPassword = "your_password";
    private String jdbcDriver = "com.mysql.cj.jdbc.Driver";

    private static final String INSERT_STUDENT_SQL = "INSERT INTO student (name, nric, year, class_name, dob, gender, address) VALUES (?, ?, ?, ?, ?, ?, ?)";

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName(jdbcDriver);
            connection = DriverManager.getConnection(dbURL, dbUser, dbPassword);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public boolean registerStudent(Student student) throws SQLException {
        boolean rowInserted = false;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_STUDENT_SQL)) {
            
            preparedStatement.setString(1, student.getName());
            preparedStatement.setString(2, student.getNric());
            preparedStatement.setInt(3, student.getYear());
            preparedStatement.setString(4, student.getClassName());
            preparedStatement.setString(5, student.getDob());
            preparedStatement.setString(6, student.getGender());
            preparedStatement.setString(7, student.getAddress());

            rowInserted = preparedStatement.executeUpdate() > 0;
        }
        return rowInserted;
    }
}