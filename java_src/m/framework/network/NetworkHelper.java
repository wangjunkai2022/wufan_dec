package m.framework.network;

import com.facebook.common.util.f;
import io.netty.handler.codec.http.multipart.HttpPostBodyUtil;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;
import kotlin.text.Typography;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.InputStreamEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.EntityUtils;
/* loaded from: classes5.dex */
public class NetworkHelper {
    public static int connectionTimeout;
    public static int readTimout;

    private HttpPost filePost(String str, ArrayList<KVPair<String>> arrayList, KVPair<String> kVPair) throws Throwable {
        HttpPost httpPost = new HttpPost(str);
        String uuid = UUID.randomUUID().toString();
        MultiPart multiPart = new MultiPart();
        StringPart stringPart = new StringPart();
        if (arrayList != null) {
            Iterator<KVPair<String>> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                KVPair<String> next = it2.next();
                stringPart.append("--").append(uuid).append("\r\n");
                stringPart.append("content-disposition: form-data; name=\"").append(next.name).append("\"\r\n\r\n");
                stringPart.append(next.value).append("\r\n");
            }
        }
        httpPost.setHeader("Content-Type", "multipart/form-data; boundary=" + uuid);
        stringPart.append("--").append(uuid).append("\r\n");
        stringPart.append("Content-Disposition: form-data; name=\"").append(kVPair.name).append("\"; filename=\"").append(new File(kVPair.value).getName()).append("\"\r\n");
        String contentTypeFor = URLConnection.getFileNameMap().getContentTypeFor(kVPair.value);
        if (contentTypeFor == null || contentTypeFor.length() <= 0) {
            if (kVPair.value.toLowerCase().endsWith("jpg") || kVPair.value.toLowerCase().endsWith("jepg")) {
                contentTypeFor = "image/jpeg";
            } else if (kVPair.value.toLowerCase().endsWith("png")) {
                contentTypeFor = "image/png";
            } else if (kVPair.value.toLowerCase().endsWith("gif")) {
                contentTypeFor = "image/gif";
            } else {
                FileInputStream fileInputStream = new FileInputStream(kVPair.value);
                String guessContentTypeFromStream = URLConnection.guessContentTypeFromStream(fileInputStream);
                fileInputStream.close();
                contentTypeFor = (guessContentTypeFromStream == null || guessContentTypeFromStream.length() <= 0) ? HttpPostBodyUtil.DEFAULT_BINARY_CONTENT_TYPE : guessContentTypeFromStream;
            }
        }
        stringPart.append("Content-Type: ").append(contentTypeFor).append("\r\n\r\n");
        multiPart.append(stringPart);
        FilePart filePart = new FilePart();
        filePart.setFile(kVPair.value);
        multiPart.append(filePart);
        StringPart stringPart2 = new StringPart();
        stringPart2.append("\r\n--").append(uuid).append("--\r\n");
        multiPart.append(stringPart2);
        httpPost.setEntity(multiPart.getInputStreamEntity());
        return httpPost;
    }

    private HttpClient getSSLHttpClient() throws Throwable {
        KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
        keyStore.load(null, null);
        SSLSocketFactoryEx sSLSocketFactoryEx = new SSLSocketFactoryEx(keyStore);
        sSLSocketFactoryEx.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
        HttpProtocolParams.setContentCharset(basicHttpParams, "UTF-8");
        SchemeRegistry schemeRegistry = new SchemeRegistry();
        schemeRegistry.register(new Scheme(f.f11765a, PlainSocketFactory.getSocketFactory(), 80));
        schemeRegistry.register(new Scheme("https", sSLSocketFactoryEx, 443));
        return new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
    }

    private String kvPairsToUrl(ArrayList<KVPair<String>> arrayList) throws Throwable {
        StringBuilder sb = new StringBuilder();
        Iterator<KVPair<String>> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            KVPair<String> next = it2.next();
            String encode = URLEncoder.encode(next.name, "utf-8");
            String str = next.value;
            String encode2 = str != null ? URLEncoder.encode(str, "utf-8") : "";
            if (sb.length() > 0) {
                sb.append(Typography.amp);
            }
            sb.append(encode);
            sb.append('=');
            sb.append(encode2);
        }
        return sb.toString();
    }

    private HttpPost textPost(String str, ArrayList<KVPair<String>> arrayList) throws Throwable {
        HttpPost httpPost = new HttpPost(str);
        if (arrayList != null) {
            StringPart stringPart = new StringPart();
            stringPart.append(kvPairsToUrl(arrayList));
            InputStreamEntity inputStreamEntity = stringPart.getInputStreamEntity();
            inputStreamEntity.setContentType("application/x-www-form-urlencoded");
            httpPost.setEntity(inputStreamEntity);
        }
        return httpPost;
    }

    public void download(String str, File file) throws Throwable {
        HttpClient defaultHttpClient;
        HttpGet httpGet = new HttpGet(str);
        if (str.startsWith("https://")) {
            defaultHttpClient = getSSLHttpClient();
        } else {
            defaultHttpClient = new DefaultHttpClient();
        }
        HttpResponse execute = defaultHttpClient.execute(httpGet);
        if (execute.getStatusLine().getStatusCode() == 200) {
            InputStream content = execute.getEntity().getContent();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] bArr = new byte[1024];
            for (int read = content.read(bArr); read > 0; read = content.read(bArr)) {
                fileOutputStream.write(bArr, 0, read);
            }
            fileOutputStream.flush();
            content.close();
            fileOutputStream.close();
            defaultHttpClient.getConnectionManager().shutdown();
            return;
        }
        String entityUtils = EntityUtils.toString(execute.getEntity(), "utf-8");
        defaultHttpClient.getConnectionManager().shutdown();
        throw new Throwable(entityUtils);
    }

    public String httpGet(String str, ArrayList<KVPair<String>> arrayList, ArrayList<KVPair<String>> arrayList2) throws Throwable {
        HttpClient defaultHttpClient;
        if (arrayList != null) {
            String kvPairsToUrl = kvPairsToUrl(arrayList);
            if (kvPairsToUrl.length() > 0) {
                str = String.valueOf(str) + "?" + kvPairsToUrl;
            }
        }
        HttpGet httpGet = new HttpGet(str);
        if (arrayList2 != null) {
            Iterator<KVPair<String>> it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                KVPair<String> next = it2.next();
                httpGet.setHeader(next.name, next.value);
            }
        }
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, connectionTimeout);
        HttpConnectionParams.setSoTimeout(basicHttpParams, readTimout);
        httpGet.setParams(basicHttpParams);
        if (str.startsWith("https://")) {
            defaultHttpClient = getSSLHttpClient();
        } else {
            defaultHttpClient = new DefaultHttpClient();
        }
        HttpResponse execute = defaultHttpClient.execute(httpGet);
        if (execute.getStatusLine().getStatusCode() == 200) {
            String entityUtils = EntityUtils.toString(execute.getEntity(), "utf-8");
            defaultHttpClient.getConnectionManager().shutdown();
            return entityUtils;
        }
        String entityUtils2 = EntityUtils.toString(execute.getEntity(), "utf-8");
        defaultHttpClient.getConnectionManager().shutdown();
        throw new Throwable(entityUtils2);
    }

    public String httpPost(String str, ArrayList<KVPair<String>> arrayList, KVPair<String> kVPair, ArrayList<KVPair<String>> arrayList2) throws Throwable {
        HttpPost textPost;
        HttpClient defaultHttpClient;
        if (kVPair != null && kVPair.value != null && new File(kVPair.value).exists()) {
            textPost = filePost(str, arrayList, kVPair);
        } else {
            textPost = textPost(str, arrayList);
        }
        if (arrayList2 != null) {
            Iterator<KVPair<String>> it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                KVPair<String> next = it2.next();
                textPost.setHeader(next.name, next.value);
            }
        }
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, connectionTimeout);
        HttpConnectionParams.setSoTimeout(basicHttpParams, readTimout);
        textPost.setParams(basicHttpParams);
        if (str.startsWith("https://")) {
            defaultHttpClient = getSSLHttpClient();
        } else {
            defaultHttpClient = new DefaultHttpClient();
        }
        HttpResponse execute = defaultHttpClient.execute(textPost);
        int statusCode = execute.getStatusLine().getStatusCode();
        if (statusCode != 200 && statusCode != 201) {
            String entityUtils = EntityUtils.toString(execute.getEntity(), "utf-8");
            defaultHttpClient.getConnectionManager().shutdown();
            throw new Throwable(entityUtils);
        }
        String entityUtils2 = EntityUtils.toString(execute.getEntity(), "utf-8");
        defaultHttpClient.getConnectionManager().shutdown();
        return entityUtils2;
    }

    public String httpPut(String str, ArrayList<KVPair<String>> arrayList, KVPair<String> kVPair, ArrayList<KVPair<String>> arrayList2) throws Throwable {
        HttpClient defaultHttpClient;
        if (arrayList != null) {
            String kvPairsToUrl = kvPairsToUrl(arrayList);
            if (kvPairsToUrl.length() > 0) {
                str = String.valueOf(str) + "?" + kvPairsToUrl;
            }
        }
        HttpPut httpPut = new HttpPut(str);
        if (arrayList2 != null) {
            Iterator<KVPair<String>> it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                KVPair<String> next = it2.next();
                httpPut.setHeader(next.name, next.value);
            }
        }
        FilePart filePart = new FilePart();
        filePart.setFile(kVPair.value);
        InputStreamEntity inputStreamEntity = filePart.getInputStreamEntity();
        inputStreamEntity.setContentEncoding(HttpPostBodyUtil.DEFAULT_BINARY_CONTENT_TYPE);
        httpPut.setEntity(inputStreamEntity);
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, connectionTimeout);
        HttpConnectionParams.setSoTimeout(basicHttpParams, readTimout);
        httpPut.setParams(basicHttpParams);
        if (str.startsWith("https://")) {
            defaultHttpClient = getSSLHttpClient();
        } else {
            defaultHttpClient = new DefaultHttpClient();
        }
        HttpResponse execute = defaultHttpClient.execute(httpPut);
        int statusCode = execute.getStatusLine().getStatusCode();
        if (statusCode != 200 && statusCode != 201) {
            String entityUtils = EntityUtils.toString(execute.getEntity(), "utf-8");
            defaultHttpClient.getConnectionManager().shutdown();
            throw new Throwable(entityUtils);
        }
        String entityUtils2 = EntityUtils.toString(execute.getEntity(), "utf-8");
        defaultHttpClient.getConnectionManager().shutdown();
        return entityUtils2;
    }

    public void rawPost(String str, ArrayList<KVPair<String>> arrayList, HTTPPart hTTPPart, ResponseCallback responseCallback) throws Throwable {
        HttpClient defaultHttpClient;
        HttpPost httpPost = new HttpPost(str);
        if (arrayList != null) {
            Iterator<KVPair<String>> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                KVPair<String> next = it2.next();
                httpPost.setHeader(next.name, next.value);
            }
        }
        httpPost.setEntity(hTTPPart.getInputStreamEntity());
        if (str.startsWith("https://")) {
            defaultHttpClient = getSSLHttpClient();
        } else {
            defaultHttpClient = new DefaultHttpClient();
        }
        HttpResponse execute = defaultHttpClient.execute(httpPost);
        if (execute.getStatusLine().getStatusCode() == 200) {
            InputStream content = execute.getEntity().getContent();
            if (responseCallback != null) {
                responseCallback.onResponse(content);
            }
            content.close();
            defaultHttpClient.getConnectionManager().shutdown();
        }
        String entityUtils = EntityUtils.toString(execute.getEntity(), "utf-8");
        defaultHttpClient.getConnectionManager().shutdown();
        throw new Throwable(entityUtils);
    }

    public void download(String str, ResponseCallback responseCallback) throws Throwable {
        HttpClient defaultHttpClient;
        HttpGet httpGet = new HttpGet(str);
        if (str.startsWith("https://")) {
            defaultHttpClient = getSSLHttpClient();
        } else {
            defaultHttpClient = new DefaultHttpClient();
        }
        HttpResponse execute = defaultHttpClient.execute(httpGet);
        if (execute.getStatusLine().getStatusCode() == 200) {
            InputStream content = execute.getEntity().getContent();
            if (responseCallback != null) {
                responseCallback.onResponse(content);
            }
            content.close();
            defaultHttpClient.getConnectionManager().shutdown();
            return;
        }
        String entityUtils = EntityUtils.toString(execute.getEntity(), "utf-8");
        defaultHttpClient.getConnectionManager().shutdown();
        throw new Throwable(entityUtils);
    }

    public void httpPost(String str, ArrayList<KVPair<String>> arrayList, KVPair<String> kVPair, ArrayList<KVPair<String>> arrayList2, ResponseCallback responseCallback) throws Throwable {
        HttpPost textPost;
        HttpClient defaultHttpClient;
        if (kVPair != null && kVPair.value != null && new File(kVPair.value).exists()) {
            textPost = filePost(str, arrayList, kVPair);
        } else {
            textPost = textPost(str, arrayList);
        }
        if (arrayList2 != null) {
            Iterator<KVPair<String>> it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                KVPair<String> next = it2.next();
                textPost.setHeader(next.name, next.value);
            }
        }
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, connectionTimeout);
        HttpConnectionParams.setSoTimeout(basicHttpParams, readTimout);
        textPost.setParams(basicHttpParams);
        if (str.startsWith("https://")) {
            defaultHttpClient = getSSLHttpClient();
        } else {
            defaultHttpClient = new DefaultHttpClient();
        }
        HttpResponse execute = defaultHttpClient.execute(textPost);
        int statusCode = execute.getStatusLine().getStatusCode();
        if (statusCode != 200 && statusCode != 201) {
            String entityUtils = EntityUtils.toString(execute.getEntity(), "utf-8");
            defaultHttpClient.getConnectionManager().shutdown();
            throw new Throwable(entityUtils);
        }
        InputStream content = execute.getEntity().getContent();
        if (responseCallback != null) {
            responseCallback.onResponse(content);
        }
        content.close();
        defaultHttpClient.getConnectionManager().shutdown();
    }

    public void httpGet(String str, ArrayList<KVPair<String>> arrayList, ArrayList<KVPair<String>> arrayList2, ResponseCallback responseCallback) throws Throwable {
        HttpClient defaultHttpClient;
        if (arrayList != null) {
            String kvPairsToUrl = kvPairsToUrl(arrayList);
            if (kvPairsToUrl.length() > 0) {
                str = String.valueOf(str) + "?" + kvPairsToUrl;
            }
        }
        HttpGet httpGet = new HttpGet(str);
        if (arrayList2 != null) {
            Iterator<KVPair<String>> it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                KVPair<String> next = it2.next();
                httpGet.setHeader(next.name, next.value);
            }
        }
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, connectionTimeout);
        HttpConnectionParams.setSoTimeout(basicHttpParams, readTimout);
        httpGet.setParams(basicHttpParams);
        if (str.startsWith("https://")) {
            defaultHttpClient = getSSLHttpClient();
        } else {
            defaultHttpClient = new DefaultHttpClient();
        }
        HttpResponse execute = defaultHttpClient.execute(httpGet);
        if (execute.getStatusLine().getStatusCode() == 200) {
            InputStream content = execute.getEntity().getContent();
            if (responseCallback != null) {
                responseCallback.onResponse(content);
            }
            content.close();
            defaultHttpClient.getConnectionManager().shutdown();
            return;
        }
        String entityUtils = EntityUtils.toString(execute.getEntity(), "utf-8");
        defaultHttpClient.getConnectionManager().shutdown();
        throw new Throwable(entityUtils);
    }
}
