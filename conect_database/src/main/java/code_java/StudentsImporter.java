package code_java;

import com.sun.xml.internal.fastinfoset.tools.XML_SAX_StAX_FI;
import com.sun.xml.internal.ws.util.xml.XMLStreamReaderToXMLStreamWriter;

import java.io.FileInputStream;
import java.io.FileNotFoundException;

public class StudentsImporter {
    public static void main(String[] args) throws FileNotFoundException {
        String jdbcURL= "jdbc:mysql//localhost:3306/sales";
        String userName ="root";
        String password = "12345678";
        String excelFilePath="students.xlsx";
        FileInputStream inputStream =new FileInputStream(excelFilePath);
        XSSF
    }
}
