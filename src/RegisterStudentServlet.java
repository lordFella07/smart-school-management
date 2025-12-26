
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterStudentServlet")
public class RegisterStudentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private StudentDAO studentDAO;

    public void init() {
        studentDAO = new StudentDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String name = request.getParameter("name");
        String nric = request.getParameter("nric");
        int year = Integer.parseInt(request.getParameter("year"));
        String className = request.getParameter("class_name");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");

        Student newStudent = new Student();
        newStudent.setName(name);
        newStudent.setNric(nric);
        newStudent.setYear(year);
        newStudent.setClassName(className);
        newStudent.setDob(dob);
        newStudent.setGender(gender);
        newStudent.setAddress(address);

        try {
            if(studentDAO.registerStudent(newStudent)) {
                // Success - redirect to student list or a success page
                response.sendRedirect("student_list.html"); 
            } else {
                // Failure - redirect back to form with an error (simplest for now)
                response.sendRedirect("register_student.jsp?error=1");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle database errors
            response.sendRedirect("register_student.jsp?error=db");
        }
    }
}