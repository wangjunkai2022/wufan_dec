package com.join.mgps.Util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Map;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
/* compiled from: HttpUtils.java */
/* loaded from: classes3.dex */
public class n0 {

    /* renamed from: a  reason: collision with root package name */
    private static String f27701a = "HttpUtils";

    /* renamed from: b  reason: collision with root package name */
    private static final MediaType f27702b = MediaType.parse("image/png");

    private n0() {
    }

    public static String a(String str, boolean z3) {
        HttpURLConnection httpURLConnection;
        Exception e4;
        String str2 = "";
        HttpURLConnection httpURLConnection2 = null;
        int i2 = 0;
        while (i2 < 2) {
            try {
                if (!d2.h(str)) {
                    httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                    try {
                        try {
                            httpURLConnection.setRequestMethod("GET");
                            httpURLConnection.setConnectTimeout(5000);
                            httpURLConnection.setReadTimeout(10000);
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            if (httpURLConnection.getResponseCode() == 200) {
                                InputStream inputStream = httpURLConnection.getInputStream();
                                while (true) {
                                    int read = inputStream.read();
                                    if (read != -1) {
                                        byteArrayOutputStream.write(read);
                                    } else {
                                        byteArrayOutputStream.flush();
                                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                                        String str3 = new String(byteArray, 0, byteArray.length);
                                        try {
                                            inputStream.close();
                                            byteArrayOutputStream.close();
                                            httpURLConnection.disconnect();
                                            return str3;
                                        } catch (Exception e5) {
                                            e4 = e5;
                                            str2 = str3;
                                            e4.printStackTrace();
                                            i2++;
                                            if (httpURLConnection != null) {
                                                httpURLConnection.disconnect();
                                            }
                                            httpURLConnection2 = httpURLConnection;
                                        }
                                    }
                                }
                            } else {
                                httpURLConnection2 = httpURLConnection;
                            }
                        } catch (Exception e6) {
                            e4 = e6;
                        }
                    } catch (Throwable th) {
                        th = th;
                        httpURLConnection2 = httpURLConnection;
                        if (httpURLConnection2 != null) {
                            httpURLConnection2.disconnect();
                        }
                        throw th;
                    }
                }
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
                return str2;
            } catch (Exception e7) {
                httpURLConnection = httpURLConnection2;
                e4 = e7;
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return str2;
    }

    public static String b(String str, boolean z3, Map<String, String> map) {
        int i2 = 3;
        u0.e(f27701a, "doPostRequest", "url=" + str);
        String str2 = "";
        int i4 = 0;
        while (i4 < 2) {
            try {
                String[] strArr = new String[i2];
                strArr[0] = f27701a;
                strArr[1] = "doPostRequest";
                strArr[2] = "retry=" + i4;
                u0.e(strArr);
                if (d2.h(str)) {
                    break;
                }
                if (!d2.h(str) && map != null && map.size() != 0) {
                    ArrayList arrayList = new ArrayList();
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        arrayList.add(new BasicNameValuePair(entry.getKey(), entry.getValue()));
                    }
                    BasicHttpParams basicHttpParams = new BasicHttpParams();
                    HttpConnectionParams.setConnectionTimeout(basicHttpParams, com.facebook.imagepipeline.producers.s.f13217g);
                    HttpConnectionParams.setSoTimeout(basicHttpParams, 5000);
                    HttpConnectionParams.setTcpNoDelay(basicHttpParams, true);
                    SchemeRegistry schemeRegistry = new SchemeRegistry();
                    schemeRegistry.register(new Scheme(com.facebook.common.util.f.f11765a, PlainSocketFactory.getSocketFactory(), 80));
                    schemeRegistry.register(new Scheme("https", j2.a(), 443));
                    DefaultHttpClient defaultHttpClient = new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
                    HttpPost httpPost = new HttpPost(str);
                    if (!arrayList.isEmpty()) {
                        httpPost.setEntity(new UrlEncodedFormEntity(arrayList, "utf-8"));
                    }
                    HttpResponse execute = defaultHttpClient.execute(httpPost);
                    HttpEntity entity = execute.getStatusLine().getStatusCode() == 200 ? execute.getEntity() : null;
                    if (entity == null) {
                        break;
                    }
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(entity.getContent(), "UTF-8"));
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        sb.append(readLine);
                    }
                    str2 = sb.toString().trim();
                    break;
                }
                return null;
            } catch (Exception e4) {
                e4.printStackTrace();
                i4++;
                str2 = "-1";
                i2 = 3;
            }
        }
        u0.e(f27701a, "doPostRequest", "url=" + str, "response=" + str2);
        return str2;
    }

    public static String c(String str, String str2, String str3) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setConnectTimeout(5000);
            httpURLConnection.setReadTimeout(5000);
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty("Connection", "Keep-Alive");
            httpURLConnection.setRequestProperty("Charset", "utf-8");
            httpURLConnection.setRequestProperty("Content-type", HttpHeaders.Values.APPLICATION_JSON);
            httpURLConnection.setRequestProperty("accept", HttpHeaders.Values.APPLICATION_JSON);
            httpURLConnection.setRequestProperty("X-WuFan-APP-ID", "wufan-third-game-api-event");
            httpURLConnection.setRequestProperty("X-Real-IP", str3);
            httpURLConnection.connect();
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.writeBytes(str2);
            dataOutputStream.flush();
            dataOutputStream.close();
            if (httpURLConnection.getResponseCode() != 200) {
                return "";
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
            StringBuffer stringBuffer = new StringBuffer("");
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    stringBuffer.append(readLine);
                } else {
                    u0.e(GrantCredentialsPermissionActivity.f64044h, ((Object) stringBuffer) + "");
                    bufferedReader.close();
                    httpURLConnection.disconnect();
                    return stringBuffer.toString();
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static boolean d(Context context) {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        return connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isConnected() && activeNetworkInfo.getState() == NetworkInfo.State.CONNECTED;
    }

    public static void e(String[] strArr, String str, String str2, String str3, String str4, String str5) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(com.join.mgps.rpc.g.f51569z + "/cloud/backupArchive").openConnection();
            httpURLConnection.setDoInput(true);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty("Connection", "Keep-Alive");
            httpURLConnection.setRequestProperty("Charset", "UTF-8");
            httpURLConnection.setRequestProperty("Content-Type", "multipart/form-data;boundary=*****");
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            for (int i2 = 0; i2 < strArr.length; i2++) {
                String str6 = strArr[i2];
                String substring = str6.substring(str6.lastIndexOf("//") + 1);
                dataOutputStream.writeBytes("uid=" + URLEncoder.encode(str) + "&token=" + URLEncoder.encode(str2) + "&gameId=" + URLEncoder.encode(str3) + "&archiveName=" + URLEncoder.encode(str4) + "&archiveFileName=" + URLEncoder.encode(str5));
                StringBuilder sb = new StringBuilder();
                sb.append("--");
                sb.append("*****");
                sb.append("/r/n");
                dataOutputStream.writeBytes(sb.toString());
                dataOutputStream.writeBytes("Content-Disposition: form-data; name=\"file" + i2 + "\";filename=\"" + substring + m.a.f72569g + "/r/n");
                dataOutputStream.writeBytes("/r/n");
                FileInputStream fileInputStream = new FileInputStream(str6);
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = fileInputStream.read(bArr);
                    if (read != -1) {
                        dataOutputStream.write(bArr, 0, read);
                    }
                }
                dataOutputStream.writeBytes("/r/n");
                fileInputStream.close();
            }
            dataOutputStream.writeBytes("--*****--/r/n");
            dataOutputStream.flush();
            InputStream inputStream = httpURLConnection.getInputStream();
            StringBuffer stringBuffer = new StringBuffer();
            while (true) {
                int read2 = inputStream.read();
                if (read2 == -1) {
                    break;
                }
                stringBuffer.append((char) read2);
            }
            String stringBuffer2 = stringBuffer.toString();
            if (stringBuffer2.contains("successfully")) {
                int indexOf = stringBuffer2.indexOf("url =") + 5;
                System.out.println(stringBuffer2.substring(indexOf, stringBuffer2.indexOf("/n", indexOf)).trim());
            }
            dataOutputStream.close();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static String f(File file, String str, String str2, String str3, String str4, String str5) {
        OkHttpClient okHttpClient = new OkHttpClient();
        MultipartBody build = new MultipartBody.Builder().setType(MultipartBody.FORM).addFormDataPart(com.facebook.common.util.f.f11767c, file.getName(), RequestBody.create(MediaType.parse("image/png"), file)).addFormDataPart("uid", str).addFormDataPart("token", str2).addFormDataPart("gameId", str3).addFormDataPart("typeId", str4).addFormDataPart("describe", str5).build();
        Request.Builder builder = new Request.Builder();
        try {
            Response execute = okHttpClient.newCall(builder.url(com.join.mgps.rpc.g.f51518i + "/android/v2/game/gamescreenshot/addPic").post(build).build()).execute();
            String string = execute.body().string();
            StringBuilder sb = new StringBuilder();
            sb.append(" upload jsonString =");
            sb.append(string);
            return !execute.isSuccessful() ? "" : string;
        } catch (IOException unused) {
            return "";
        }
    }
}
