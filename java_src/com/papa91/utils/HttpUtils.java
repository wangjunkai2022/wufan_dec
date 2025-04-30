package com.papa91.utils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
/* loaded from: classes4.dex */
public class HttpUtils {
    public static String EXIT_AD_URL = "http://anv9.ctapi.5fun.com";
    public static String GAME_URL = "http://anctapi.5fun.com";
    public static String REWARD_CONFIG_URL = "http://anv3btapi.5fun.com";
    public static String RealName_URL = "http://anctapi.5fun.com";
    protected static final int SHOW_RESPONSE = 0;

    public void getUserRewardConfig(final String str, final String str2, final String str3, final HttpFinishInterface httpFinishInterface) {
        new Thread(new Runnable() { // from class: com.papa91.utils.HttpUtils.2
            public String inputStream2String(InputStream inputStream) {
                InputStreamReader inputStreamReader;
                try {
                    inputStreamReader = new InputStreamReader(inputStream, "UTF-8");
                } catch (UnsupportedEncodingException e4) {
                    e4.printStackTrace();
                    inputStreamReader = null;
                }
                BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
                StringBuilder sb = new StringBuilder();
                while (true) {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        sb.append(readLine);
                    } catch (IOException e5) {
                        e5.printStackTrace();
                    }
                }
                return sb.toString();
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(HttpUtils.REWARD_CONFIG_URL + "/user/activity/banana_peel/get_user_reward_info?uid=" + str + "&game_id=" + str2 + "&device_id=" + str3).openConnection();
                    httpURLConnection.setConnectTimeout(5000);
                    httpURLConnection.setRequestMethod("GET");
                    if (httpURLConnection.getResponseCode() == 200) {
                        String inputStream2String = inputStream2String(httpURLConnection.getInputStream());
                        HttpFinishInterface httpFinishInterface2 = httpFinishInterface;
                        if (httpFinishInterface2 != null) {
                            httpFinishInterface2.onRequestSuccess(inputStream2String);
                        }
                    } else {
                        HttpFinishInterface httpFinishInterface3 = httpFinishInterface;
                        if (httpFinishInterface3 != null) {
                            httpFinishInterface3.onRequestError("");
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }).start();
    }

    public void sendRequestWithHttpClient(final String str, final String str2, final HttpFinishInterface httpFinishInterface) {
        new Thread(new Runnable() { // from class: com.papa91.utils.HttpUtils.1
            @Override // java.lang.Runnable
            public void run() {
                DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
                HttpPost httpPost = new HttpPost(str);
                try {
                    httpPost.setEntity(new StringEntity(str2));
                } catch (UnsupportedEncodingException e4) {
                    e4.printStackTrace();
                }
                try {
                    HttpResponse execute = defaultHttpClient.execute(httpPost);
                    if (execute.getStatusLine().getStatusCode() == 200) {
                        String entityUtils = EntityUtils.toString(execute.getEntity(), "utf-8");
                        HttpFinishInterface httpFinishInterface2 = httpFinishInterface;
                        if (httpFinishInterface2 != null) {
                            httpFinishInterface2.onRequestSuccess(entityUtils);
                            return;
                        }
                        return;
                    }
                    HttpFinishInterface httpFinishInterface3 = httpFinishInterface;
                    if (httpFinishInterface3 != null) {
                        httpFinishInterface3.onRequestError("");
                    }
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
            }
        }).start();
    }
}
