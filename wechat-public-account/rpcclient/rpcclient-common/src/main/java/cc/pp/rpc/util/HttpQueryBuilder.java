package cc.pp.rpc.util;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import pp.service.client.Client;

public abstract class HttpQueryBuilder {
	private static Logger logger = Logger.getLogger(HttpQueryBuilder.class);
	private static String build(Map<String, ?> params, String pkey) {
		String query = "";
		
		Iterator<String> iterator = params.keySet().iterator();
		
		while (iterator.hasNext()) {
			Object key = iterator.next();
			Object val = params.get(key);

			if (!query.equals("")) query += "&";
			
			String type = val.getClass().getSimpleName();
			
			String k = key.toString();
			if (!pkey.equals("")) k = pkey + "[" + k + "]";
			
			try {
				if (type.equals("HashMap")) {
					@SuppressWarnings("unchecked")
					Map<String, ?> inmap = (HashMap<String, ?>)params.get(key);
					query += build(inmap, k);
					
				} else if (type.equals("ArrayList")) {
					List<?> inarray = (ArrayList<?>)params.get(key);
					query += build(inarray, k);
				} else {
					query += k + "=" + URLEncoder.encode(val.toString(), Client.ENCODING);
				}
				
			} catch (UnsupportedEncodingException e) {
				logger.error("when HttpQueryBuilder build error",e);
			}
		}

		return query;
	}
	
	private static String build(List<?> params, String pkey) {
		String query = "";
		
		for(int i=0; i<params.size(); i++) {
			if (!query.equals("")) query += "&";
			
			String k = String.valueOf(i);
			if (!pkey.equals("")) k = pkey + "[" + k + "]";
			
			String type = params.get(i).getClass().getSimpleName();
			
			if (type.equals("HashMap")) {
				@SuppressWarnings("unchecked")
				Map<String, ?> inmap = (HashMap<String, ?>)params.get(i);
				query += build(inmap, k);
				
			} else if (type.equals("ArrayList")) {
				List<?> inarray = (ArrayList<?>)params.get(i);
				query += build(inarray, k);
				
			} else {
				try {
					query += k + "=" + URLEncoder.encode(params.get(i).toString(), Client.ENCODING);
				} catch (UnsupportedEncodingException e) {
					logger.error("when HttpQueryBuilder build error",e);
				}
			}
		}

		return query;
	}
	
	public static String build(Map<String, ?> params) {
		return build(params, "");
	}
	
	public static String build(List<?> params) {
		return build(params, "");
	}
	
}
