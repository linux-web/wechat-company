package pp.service.client;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.apache.log4j.Logger;

public abstract class Client {
	
	public static final String ENCODING = "UTF-8";
	public static final int ENV_PRODUCTION = 0;
	public static final int ENV_TESTING = 1;
	public static final int ENV_DEVELOPMENT = 2;
	
	private static Properties props = null;
	private static Logger logger = Logger.getLogger(Service.class);
	
	public static String getConfig(String key) {
		if (props == null) {
			props = new Properties();
			String classPath = Thread.currentThread().getContextClassLoader().getResource("").getPath();
			
			try {
				InputStream is = new FileInputStream(classPath + "pp.service.client.properties");
				props.load(is);
				is.close();
				
			} catch (FileNotFoundException e) {
				logger.warn("Config file not found: pp.service.client.properties");
			} catch (IOException e) {
				logger.error("IOException: pp.service.client.properties");
			}
		}
		
		return props.getProperty(key);
	}
	
}
