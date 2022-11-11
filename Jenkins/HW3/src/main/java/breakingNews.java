import javax.xml.transform.*;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.awt.*;
import java.net.*;
import java.io.*;
public class breakingNews {
    public static void main(String[] args) throws IOException, URISyntaxException {
        URL url = new URL("http://www.ynet.co.il/Integration/StoryRss2.xml");
        BufferedReader read = new BufferedReader(
                new InputStreamReader(url.openStream()));



        Source xml = new StreamSource(read);
        Source xslt = new StreamSource("src/main/resources/product.xsl");
        StringWriter sw = new StringWriter();

        try {

            FileWriter fw = new FileWriter("src/main/resources/result.html");
            TransformerFactory tFactory = TransformerFactory.newInstance();
            Transformer trasform = tFactory.newTransformer(xslt);
            trasform.transform(xml, new StreamResult(sw));
            fw.write(sw.toString());
            fw.close();

            System.out.println("product.html generated successfully at D:\\template ");


        } catch (IOException | TransformerConfigurationException e) {
            e.printStackTrace();
        } catch (TransformerFactoryConfigurationError e) {
            e.printStackTrace();
        } catch (TransformerException e) {
            e.printStackTrace();
        }



        String htmlFilePath = "src/main/resources/result.html"; // path to your new file
        File htmlFile = new File(htmlFilePath);


        Desktop.getDesktop().open(htmlFile);



    }
}
