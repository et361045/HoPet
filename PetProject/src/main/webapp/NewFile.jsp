package com.dapail.util;

import java.io.BufferedReader;  
import java.io.IOException;  
import java.io.InputStreamReader;  
import java.net.URL;  
import java.net.URLEncoder;  
import java.util.HashMap;  
import java.util.Map;  
  
  
import org.apache.commons.lang.StringUtils;  
 /**
  * 地址轉經緯度 
  * @author Administrator
  *
  */
  
public class AddressToGpsUtil {  
  
  
    public static final String KEY_1 = "7d9fbeb43e975cd1e9477a7e5d5e192a";  
  
  
  
  
    /** 
     * 返回輸入地址的經緯度座標 
     * key lng(經度),lat(緯度) 
     */  
    public static Map<String,String> getGeocoderLatitude(String address){  
        BufferedReader in = null;  
        try {  
            //將地址轉換成utf-8的16進位制  
            address = URLEncoder.encode(address, "UTF-8");  
            URL tirc = new URL("http://api.map.baidu.com/geocoder?address="+ address +"&output=json&key="+ KEY_1);  
  
  
            in = new BufferedReader(new InputStreamReader(tirc.openStream(),"UTF-8"));  
            String res;  
            StringBuilder sb = new StringBuilder("");  
            while((res = in.readLine())!=null){  
                sb.append(res.trim());  
            }  
            String str = sb.toString();  
            Map<String,String> map = null;  
            if(StringUtils.isNotEmpty(str)){  
                int lngStart = str.indexOf("lng\":");  
                int lngEnd = str.indexOf(",\"lat");  
                int latEnd = str.indexOf("},\"precise");  
                if(lngStart > 0 && lngEnd > 0 && latEnd > 0){  
                    String lng = str.substring(lngStart+5, lngEnd);  
                    String lat = str.substring(lngEnd+7, latEnd);  
                    map = new HashMap<String,String>();  
                    map.put("lng", lng);  
                    map.put("lat", lat);  
                    return map;  
                }  
            }  
        }catch (Exception e) {  
            e.printStackTrace();  
        }finally{  
            try {  
                in.close();  
            } catch (IOException e) {  
                e.printStackTrace();  
            }  
        }  
        return null;  
    }  
      
    public static void main(String args[]){  
        try {  
            Map<String, String> json = AddressToGpsUtil.getGeocoderLatitude("湖北省黃岡市麻城市金龍大道");  
            System.out.println("lng : " + json.get("lng"));  
            System.out.println("lat : " + json.get("lat"));  
        }catch (Exception e ){  
           e.printStackTrace();  
        }  
    }  
  
  
}  