package com.androidquery.callback;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.util.Xml;
import android.view.View;
import com.androidquery.auth.AccountHandle;
import com.androidquery.auth.GoogleHandle;
import com.androidquery.util.AQUtility;
import com.androidquery.util.Common;
import com.androidquery.util.Constants;
import com.androidquery.util.Progress;
import com.androidquery.util.XmlDom;
import com.facebook.common.util.f;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.ByteArrayInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
import m.a;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.protocol.HttpContext;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2.dex */
public abstract class AbstractAjaxCallback<T, K> implements Runnable {
    private static String AGENT = null;
    private static final Class<?>[] DEFAULT_SIG = {String.class, Object.class, AjaxStatus.class};
    private static boolean GZIP = true;
    private static int NETWORK_POOL = 4;
    private static int NET_TIMEOUT = 30000;
    private static boolean REUSE_CLIENT = true;
    private static boolean SIMULATE_ERROR = false;
    private static final String boundary = "*****";
    private static DefaultHttpClient client = null;
    private static ExecutorService fetchExe = null;
    private static int lastStatus = 200;
    private static final String lineEnd = "\r\n";
    private static ProxyHandle proxyHandle = null;
    private static SocketFactory ssf = null;
    private static Transformer st = null;
    private static final String twoHyphens = "--";
    private boolean abort;
    private WeakReference<Activity> act;
    protected AccountHandle ah;
    private boolean blocked;
    private File cacheDir;
    private String callback;
    private boolean completed;
    protected Map<String, String> cookies;
    private long expire;
    protected boolean fileCache;
    private Object handler;
    protected Map<String, String> headers;
    protected boolean memCache;
    private String networkUrl;
    protected Map<String, Object> params;
    private WeakReference<Object> progress;
    private HttpHost proxy;
    private boolean reauth;
    private boolean refresh;
    private HttpUriRequest request;
    protected T result;
    protected AjaxStatus status;
    private File targetFile;
    private Transformer transformer;
    private Class<T> type;
    private String url;
    private Reference<Object> whandler;
    private int policy = 0;
    private int timeout = 0;
    private boolean redirect = true;
    private String encoding = "UTF-8";
    private int method = 4;
    private boolean uiCallback = true;
    private int retry = 0;

    private void afterWork() {
        String str = this.url;
        if (str != null && this.memCache) {
            memPut(str, this.result);
        }
        callback();
        clear();
    }

    private void backgroundWork() {
        if (!this.refresh && this.fileCache) {
            fileWork();
        }
        if (this.result == null) {
            datastoreWork();
        }
        if (this.result == null) {
            networkWork();
        }
    }

    public static void cancel() {
        ExecutorService executorService = fetchExe;
        if (executorService != null) {
            executorService.shutdownNow();
            fetchExe = null;
        }
        BitmapAjaxCallback.clearTasks();
    }

    private void clear() {
        this.whandler = null;
        this.handler = null;
        this.progress = null;
        this.request = null;
        this.transformer = null;
        this.ah = null;
        this.act = null;
    }

    private void copy(InputStream inputStream, OutputStream outputStream, int i2, File file, File file2) throws IOException {
        if (file2 == null) {
            copy(inputStream, outputStream, i2);
            return;
        }
        try {
            copy(inputStream, outputStream, i2);
            inputStream.close();
            outputStream.close();
            file.renameTo(file2);
        } catch (IOException e4) {
            AQUtility.debug("copy failed, deleting files");
            file.delete();
            file2.delete();
            AQUtility.close(inputStream);
            AQUtility.close(outputStream);
            throw e4;
        }
    }

    private String correctEncoding(byte[] bArr, String str, AjaxStatus ajaxStatus) {
        String str2 = null;
        try {
            if (!"utf-8".equalsIgnoreCase(str)) {
                return new String(bArr, str);
            }
            String parseCharset = parseCharset(ajaxStatus.getHeader("Content-Type"));
            AQUtility.debug("parsing header", parseCharset);
            if (parseCharset != null) {
                return new String(bArr, parseCharset);
            }
            String str3 = new String(bArr, "utf-8");
            try {
                String charset = getCharset(str3);
                AQUtility.debug("parsing needed", charset);
                if (charset == null || "utf-8".equalsIgnoreCase(charset)) {
                    return str3;
                }
                AQUtility.debug("correction needed", charset);
                String str4 = new String(bArr, charset);
                try {
                    ajaxStatus.data(str4.getBytes("utf-8"));
                    return str4;
                } catch (Exception e4) {
                    e = e4;
                    str2 = str4;
                    AQUtility.report(e);
                    return str2;
                }
            } catch (Exception e5) {
                e = e5;
                str2 = str3;
            }
        } catch (Exception e6) {
            e = e6;
        }
    }

    private void datastoreWork() {
        T datastoreGet = datastoreGet(this.url);
        this.result = datastoreGet;
        if (datastoreGet != null) {
            this.status.source(2).done();
        }
    }

    public static void execute(Runnable runnable) {
        if (fetchExe == null) {
            fetchExe = Executors.newFixedThreadPool(NETWORK_POOL);
        }
        fetchExe.execute(runnable);
    }

    private static Map<String, Object> extractParams(Uri uri) {
        HashMap hashMap = new HashMap();
        for (String str : uri.getQuery().split(a.f72566d)) {
            String[] split = str.split(SimpleComparison.EQUAL_TO_OPERATION);
            if (split.length >= 2) {
                hashMap.put(split[0], split[1]);
            } else if (split.length == 1) {
                hashMap.put(split[0], "");
            }
        }
        return hashMap;
    }

    private static String extractUrl(Uri uri) {
        String str = String.valueOf(uri.getScheme()) + "://" + uri.getAuthority() + uri.getPath();
        String fragment = uri.getFragment();
        if (fragment != null) {
            return String.valueOf(str) + "#" + fragment;
        }
        return str;
    }

    private void fileWork() {
        File accessFile = accessFile(this.cacheDir, getCacheUrl());
        if (accessFile != null) {
            this.status.source(3);
            T fileGet = fileGet(this.url, accessFile, this.status);
            this.result = fileGet;
            if (fileGet != null) {
                this.status.time(new Date(accessFile.lastModified())).done();
            }
        }
    }

    public static int getActiveCount() {
        ExecutorService executorService = fetchExe;
        if (executorService instanceof ThreadPoolExecutor) {
            return ((ThreadPoolExecutor) executorService).getActiveCount();
        }
        return 0;
    }

    private String getCacheUrl() {
        AccountHandle accountHandle = this.ah;
        if (accountHandle != null) {
            return accountHandle.getCacheUrl(this.url);
        }
        return this.url;
    }

    private String getCharset(String str) {
        Matcher matcher = Pattern.compile("<meta [^>]*http-equiv[^>]*\"Content-Type\"[^>]*>", 2).matcher(str);
        if (matcher.find()) {
            return parseCharset(matcher.group());
        }
        return null;
    }

    private static DefaultHttpClient getClient() {
        if (client == null || !REUSE_CLIENT) {
            AQUtility.debug("creating http client");
            BasicHttpParams basicHttpParams = new BasicHttpParams();
            HttpConnectionParams.setConnectionTimeout(basicHttpParams, NET_TIMEOUT);
            HttpConnectionParams.setSoTimeout(basicHttpParams, NET_TIMEOUT);
            ConnManagerParams.setMaxConnectionsPerRoute(basicHttpParams, new ConnPerRouteBean(25));
            HttpConnectionParams.setSocketBufferSize(basicHttpParams, 8192);
            SchemeRegistry schemeRegistry = new SchemeRegistry();
            schemeRegistry.register(new Scheme(f.f11765a, PlainSocketFactory.getSocketFactory(), 80));
            SocketFactory socketFactory = ssf;
            if (socketFactory == null) {
                socketFactory = SSLSocketFactory.getSocketFactory();
            }
            schemeRegistry.register(new Scheme("https", socketFactory, 443));
            client = new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
        }
        return client;
    }

    private String getEncoding(HttpEntity httpEntity) {
        Header contentEncoding;
        if (httpEntity == null || (contentEncoding = httpEntity.getContentEncoding()) == null) {
            return null;
        }
        return contentEncoding.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int getLastStatus() {
        return lastStatus;
    }

    private String getNetworkUrl(String str) {
        String str2 = this.networkUrl;
        if (str2 != null) {
            str = str2;
        }
        AccountHandle accountHandle = this.ah;
        return accountHandle != null ? accountHandle.getNetworkUrl(str) : str;
    }

    private File getPreFile() {
        File file;
        if (isStreamingContent()) {
            file = this.targetFile;
            if (file == null) {
                if (this.fileCache) {
                    file = getCacheFile();
                } else {
                    File tempDir = AQUtility.getTempDir();
                    if (tempDir == null) {
                        tempDir = this.cacheDir;
                    }
                    file = AQUtility.getCacheFile(tempDir, this.url);
                }
            }
        } else {
            file = null;
        }
        if (file != null && !file.exists()) {
            try {
                file.getParentFile().mkdirs();
                file.createNewFile();
            } catch (Exception e4) {
                AQUtility.report(e4);
                return null;
            }
        }
        return file;
    }

    private void httpDelete(String str, AjaxStatus ajaxStatus) throws IOException {
        AQUtility.debug("get", str);
        String patchUrl = patchUrl(str);
        httpDo(new HttpDelete(patchUrl), patchUrl, ajaxStatus);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:114:0x01ed  */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.io.OutputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void httpDo(org.apache.http.client.methods.HttpUriRequest r19, java.lang.String r20, com.androidquery.callback.AjaxStatus r21) throws org.apache.http.client.ClientProtocolException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 573
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.androidquery.callback.AbstractAjaxCallback.httpDo(org.apache.http.client.methods.HttpUriRequest, java.lang.String, com.androidquery.callback.AjaxStatus):void");
    }

    private void httpEntity(String str, HttpEntityEnclosingRequestBase httpEntityEnclosingRequestBase, Map<String, Object> map, AjaxStatus ajaxStatus) throws ClientProtocolException, IOException {
        HttpEntity urlEncodedFormEntity;
        httpEntityEnclosingRequestBase.getParams().setBooleanParameter("http.protocol.expect-continue", false);
        Object obj = map.get(Constants.POST_ENTITY);
        if (obj instanceof HttpEntity) {
            urlEncodedFormEntity = (HttpEntity) obj;
        } else {
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                Object value = entry.getValue();
                if (value != null) {
                    arrayList.add(new BasicNameValuePair(entry.getKey(), value.toString()));
                }
            }
            urlEncodedFormEntity = new UrlEncodedFormEntity(arrayList, "UTF-8");
        }
        Map<String, String> map2 = this.headers;
        if (map2 != null && !map2.containsKey("Content-Type")) {
            this.headers.put("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8");
        }
        httpEntityEnclosingRequestBase.setEntity(urlEncodedFormEntity);
        httpDo(httpEntityEnclosingRequestBase, str, ajaxStatus);
    }

    private void httpGet(String str, AjaxStatus ajaxStatus) throws IOException {
        AQUtility.debug("get", str);
        String patchUrl = patchUrl(str);
        httpDo(new HttpGet(patchUrl), patchUrl, ajaxStatus);
    }

    private void httpMulti(String str, Map<String, Object> map, AjaxStatus ajaxStatus) throws IOException {
        Proxy makeProxy;
        HttpURLConnection httpURLConnection;
        String str2;
        byte[] bArr;
        AQUtility.debug("multipart", str);
        URL url = new URL(str);
        HttpHost httpHost = this.proxy;
        if (httpHost != null) {
            AQUtility.debug("proxy", httpHost);
            makeProxy = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(this.proxy.getHostName(), this.proxy.getPort()));
        } else {
            ProxyHandle proxyHandle2 = proxyHandle;
            makeProxy = proxyHandle2 != null ? proxyHandle2.makeProxy(this) : null;
        }
        if (makeProxy == null) {
            httpURLConnection = (HttpURLConnection) url.openConnection();
        } else {
            httpURLConnection = (HttpURLConnection) url.openConnection(makeProxy);
        }
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setConnectTimeout(NET_TIMEOUT * 4);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("Connection", "Keep-Alive");
        httpURLConnection.setRequestProperty("Content-Type", "multipart/form-data;charset=utf-8;boundary=*****");
        Map<String, String> map2 = this.headers;
        if (map2 != null) {
            for (String str3 : map2.keySet()) {
                httpURLConnection.setRequestProperty(str3, this.headers.get(str3));
            }
        }
        String makeCookie = makeCookie();
        if (makeCookie != null) {
            httpURLConnection.setRequestProperty(HttpHeaders.Names.COOKIE, makeCookie);
        }
        AccountHandle accountHandle = this.ah;
        if (accountHandle != null) {
            accountHandle.applyToken((AbstractAjaxCallback<?, ?>) this, httpURLConnection);
        }
        DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            writeObject(dataOutputStream, entry.getKey(), entry.getValue());
        }
        dataOutputStream.writeBytes("--*****--\r\n");
        dataOutputStream.flush();
        dataOutputStream.close();
        httpURLConnection.connect();
        int responseCode = httpURLConnection.getResponseCode();
        String responseMessage = httpURLConnection.getResponseMessage();
        String contentEncoding = httpURLConnection.getContentEncoding();
        if (responseCode >= 200 && responseCode < 300) {
            bArr = toData(contentEncoding, httpURLConnection.getInputStream());
            str2 = null;
        } else {
            str2 = new String(toData(contentEncoding, httpURLConnection.getErrorStream()), "UTF-8");
            AQUtility.debug("error", str2);
            bArr = null;
        }
        AQUtility.debug(GrantCredentialsPermissionActivity.f64044h, Integer.valueOf(responseCode));
        if (bArr != null) {
            AQUtility.debug(Integer.valueOf(bArr.length), str);
        }
        ajaxStatus.code(responseCode).message(responseMessage).redirect(str).time(new Date()).data(bArr).error(str2).client(null);
    }

    private void httpPost(String str, Map<String, Object> map, AjaxStatus ajaxStatus) throws ClientProtocolException, IOException {
        AQUtility.debug("post", str);
        httpEntity(str, new HttpPost(str), map, ajaxStatus);
    }

    private void httpPut(String str, Map<String, Object> map, AjaxStatus ajaxStatus) throws ClientProtocolException, IOException {
        AQUtility.debug("put", str);
        httpEntity(str, new HttpPut(str), map, ajaxStatus);
    }

    private boolean isActive() {
        WeakReference<Activity> weakReference = this.act;
        if (weakReference == null) {
            return true;
        }
        Activity activity = weakReference.get();
        return (activity == null || activity.isFinishing()) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0010  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean isMultiPart(java.util.Map<java.lang.String, java.lang.Object> r2) {
        /*
            java.util.Set r2 = r2.entrySet()
            java.util.Iterator r2 = r2.iterator()
        L8:
            boolean r0 = r2.hasNext()
            if (r0 != 0) goto L10
            r2 = 0
            return r2
        L10:
            java.lang.Object r0 = r2.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            java.lang.Object r1 = r0.getValue()
            java.lang.Object r0 = r0.getKey()
            com.androidquery.util.AQUtility.debug(r0, r1)
            boolean r0 = r1 instanceof java.io.File
            if (r0 != 0) goto L2d
            boolean r0 = r1 instanceof byte[]
            if (r0 != 0) goto L2d
            boolean r0 = r1 instanceof java.io.InputStream
            if (r0 == 0) goto L8
        L2d:
            r2 = 1
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.androidquery.callback.AbstractAjaxCallback.isMultiPart(java.util.Map):boolean");
    }

    private static String makeAuthHeader(String str, String str2) {
        byte[] bytes = (String.valueOf(str) + ":" + str2).getBytes();
        return "Basic " + new String(AQUtility.encode64(bytes, 0, bytes.length));
    }

    private String makeCookie() {
        Map<String, String> map = this.cookies;
        if (map == null || map.size() == 0) {
            return null;
        }
        Iterator<String> it2 = this.cookies.keySet().iterator();
        StringBuilder sb = new StringBuilder();
        while (it2.hasNext()) {
            String next = it2.next();
            sb.append(next);
            sb.append(SimpleComparison.EQUAL_TO_OPERATION);
            sb.append(this.cookies.get(next));
            if (it2.hasNext()) {
                sb.append("; ");
            }
        }
        return sb.toString();
    }

    private File makeTempFile(File file) throws IOException {
        File file2 = new File(String.valueOf(file.getAbsolutePath()) + ".tmp");
        file2.createNewFile();
        return file2;
    }

    private void network(int i2) throws IOException {
        if (i2 <= 1) {
            network();
            return;
        }
        for (int i4 = 0; i4 < i2; i4++) {
            try {
                network();
                return;
            } catch (IOException e4) {
                if (i4 == i2 - 1) {
                    throw e4;
                }
            }
        }
    }

    private void networkWork() {
        if (this.url == null) {
            this.status.code(AjaxStatus.NETWORK_ERROR).done();
            return;
        }
        byte[] bArr = null;
        try {
            network(this.retry + 1);
            AccountHandle accountHandle = this.ah;
            if (accountHandle != null && accountHandle.expired(this, this.status) && !this.reauth) {
                AQUtility.debug("reauth needed", this.status.getMessage());
                this.reauth = true;
                if (this.ah.reauth(this)) {
                    network();
                } else {
                    this.status.reauth(true);
                    return;
                }
            }
            bArr = this.status.getData();
        } catch (IOException e4) {
            AQUtility.debug("IOException");
            String message = e4.getMessage();
            if (message != null && message.contains("No authentication challenges found")) {
                this.status.code(401).message(message);
            } else {
                this.status.code(AjaxStatus.NETWORK_ERROR).message("network error");
            }
        } catch (Exception e5) {
            AQUtility.debug((Throwable) e5);
            this.status.code(AjaxStatus.NETWORK_ERROR).message("network error");
        }
        try {
            this.result = transform(this.url, bArr, this.status);
        } catch (Exception e6) {
            AQUtility.debug((Throwable) e6);
        }
        if (this.result == null && bArr != null) {
            this.status.code(AjaxStatus.TRANSFORM_ERROR).message("transform error");
        }
        lastStatus = this.status.getCode();
        this.status.done();
    }

    private String parseCharset(String str) {
        int indexOf;
        if (str == null || (indexOf = str.indexOf("charset")) == -1) {
            return null;
        }
        int indexOf2 = str.indexOf(";", indexOf);
        if (indexOf2 == -1) {
            indexOf2 = str.length();
        }
        return str.substring(indexOf + 7, indexOf2).replaceAll("[^\\w-]", "");
    }

    private static String patchUrl(String str) {
        return str.replaceAll(" ", "%20").replaceAll("\\|", "%7C");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private K self() {
        return this;
    }

    public static void setAgent(String str) {
        AGENT = str;
    }

    public static void setGZip(boolean z3) {
        GZIP = z3;
    }

    public static void setNetworkLimit(int i2) {
        int max = Math.max(1, Math.min(25, i2));
        NETWORK_POOL = max;
        fetchExe = null;
        AQUtility.debug("setting network limit", Integer.valueOf(max));
    }

    public static void setProxyHandle(ProxyHandle proxyHandle2) {
        proxyHandle = proxyHandle2;
    }

    public static void setReuseHttpClient(boolean z3) {
        REUSE_CLIENT = z3;
        client = null;
    }

    public static void setSSF(SocketFactory socketFactory) {
        ssf = socketFactory;
        client = null;
    }

    public static void setSimulateError(boolean z3) {
        SIMULATE_ERROR = z3;
    }

    public static void setTimeout(int i2) {
        NET_TIMEOUT = i2;
    }

    public static void setTransformer(Transformer transformer) {
        st = transformer;
    }

    private byte[] toData(String str, InputStream inputStream) throws IOException {
        if ("gzip".equalsIgnoreCase(str)) {
            inputStream = new GZIPInputStream(inputStream);
        }
        return AQUtility.toBytes(inputStream);
    }

    private void wake() {
        if (this.blocked) {
            synchronized (this) {
                try {
                    notifyAll();
                } catch (Exception unused) {
                }
            }
        }
    }

    private void work(Context context) {
        T memGet = memGet(this.url);
        if (memGet != null) {
            this.result = memGet;
            this.status.source(4).done();
            callback();
            return;
        }
        this.cacheDir = AQUtility.getCacheDir(context, this.policy);
        execute(this);
    }

    private static void writeData(DataOutputStream dataOutputStream, String str, String str2, InputStream inputStream) throws IOException {
        dataOutputStream.writeBytes("--*****\r\n");
        dataOutputStream.writeBytes("Content-Disposition: form-data; name=\"" + str + "\"; filename=\"" + str2 + a.f72569g + lineEnd);
        dataOutputStream.writeBytes("Content-Type: application/octet-stream");
        dataOutputStream.writeBytes(lineEnd);
        dataOutputStream.writeBytes("Content-Transfer-Encoding: binary");
        dataOutputStream.writeBytes(lineEnd);
        dataOutputStream.writeBytes(lineEnd);
        AQUtility.copy(inputStream, dataOutputStream);
        dataOutputStream.writeBytes(lineEnd);
    }

    private static void writeField(DataOutputStream dataOutputStream, String str, String str2) throws IOException {
        dataOutputStream.writeBytes("--*****\r\n");
        dataOutputStream.writeBytes("Content-Disposition: form-data; name=\"" + str + a.f72569g);
        dataOutputStream.writeBytes(lineEnd);
        dataOutputStream.writeBytes(lineEnd);
        dataOutputStream.write(str2.getBytes("UTF-8"));
        dataOutputStream.writeBytes(lineEnd);
    }

    private static void writeObject(DataOutputStream dataOutputStream, String str, Object obj) throws IOException {
        if (obj == null) {
            return;
        }
        if (obj instanceof File) {
            File file = (File) obj;
            writeData(dataOutputStream, str, file.getName(), new FileInputStream(file));
        } else if (obj instanceof byte[]) {
            writeData(dataOutputStream, str, str, new ByteArrayInputStream((byte[]) obj));
        } else if (obj instanceof InputStream) {
            writeData(dataOutputStream, str, str, (InputStream) obj);
        } else {
            writeField(dataOutputStream, str, obj.toString());
        }
    }

    public void abort() {
        this.abort = true;
        HttpUriRequest httpUriRequest = this.request;
        if (httpUriRequest == null || httpUriRequest.isAborted()) {
            return;
        }
        this.request.abort();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public File accessFile(File file, String str) {
        if (this.expire < 0) {
            return null;
        }
        File existedCacheByUrl = AQUtility.getExistedCacheByUrl(file, str);
        if (existedCacheByUrl == null || this.expire == 0 || System.currentTimeMillis() - existedCacheByUrl.lastModified() <= this.expire) {
            return existedCacheByUrl;
        }
        return null;
    }

    public void async(Activity activity) {
        if (activity.isFinishing()) {
            AQUtility.warn("Warning", "Possible memory leak. Calling ajax with a terminated activity.");
        }
        if (this.type == null) {
            AQUtility.warn("Warning", "type() is not called with response type.");
            return;
        }
        this.act = new WeakReference<>(activity);
        async((Context) activity);
    }

    public K auth(Activity activity, String str, String str2) {
        if (Build.VERSION.SDK_INT >= 5 && str.startsWith("g.")) {
            this.ah = new GoogleHandle(activity, str, str2);
        }
        return self();
    }

    public void block() {
        if (!AQUtility.isUIThread()) {
            if (this.completed) {
                return;
            }
            try {
                synchronized (this) {
                    this.blocked = true;
                    wait(NET_TIMEOUT + 5000);
                }
                return;
            } catch (Exception unused) {
                return;
            }
        }
        throw new IllegalStateException("Cannot block UI thread.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean cacheAvailable(Context context) {
        return this.fileCache && AQUtility.getExistedCacheByUrl(AQUtility.getCacheDir(context, this.policy), this.url) != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void callback() {
        showProgress(false);
        this.completed = true;
        if (isActive()) {
            if (this.callback != null) {
                AQUtility.invokeHandler(getHandler(), this.callback, true, true, new Class[]{String.class, this.type, AjaxStatus.class}, DEFAULT_SIG, this.url, this.result, this.status);
            } else {
                try {
                    callback(this.url, this.result, this.status);
                } catch (Exception e4) {
                    AQUtility.report(e4);
                }
            }
        } else {
            skip(this.url, this.result, this.status);
        }
        filePut();
        if (!this.blocked) {
            this.status.close();
        }
        wake();
        AQUtility.debugNotify();
    }

    public void callback(String str, T t3, AjaxStatus ajaxStatus) {
    }

    public K cookie(String str, String str2) {
        if (this.cookies == null) {
            this.cookies = new HashMap();
        }
        this.cookies.put(str, str2);
        return self();
    }

    public K cookies(Map<String, String> map) {
        this.cookies = map;
        return self();
    }

    protected T datastoreGet(String str) {
        return null;
    }

    public K encoding(String str) {
        this.encoding = str;
        return self();
    }

    public K expire(long j4) {
        this.expire = j4;
        return self();
    }

    public void failure(int i2, String str) {
        AjaxStatus ajaxStatus = this.status;
        if (ajaxStatus != null) {
            ajaxStatus.code(i2).message(str).done();
            if (this.uiCallback) {
                AQUtility.post(this);
            } else {
                afterWork();
            }
        }
    }

    public K fileCache(boolean z3) {
        this.fileCache = z3;
        return self();
    }

    protected T fileGet(String str, File file, AjaxStatus ajaxStatus) {
        byte[] bytes;
        try {
            if (isStreamingContent()) {
                ajaxStatus.file(file);
                bytes = null;
            } else {
                bytes = AQUtility.toBytes(new FileInputStream(file));
            }
            return transform(str, bytes, ajaxStatus);
        } catch (Exception e4) {
            AQUtility.debug((Throwable) e4);
            return null;
        }
    }

    protected void filePut(String str, T t3, File file, byte[] bArr) {
        if (file == null || bArr == null) {
            return;
        }
        AQUtility.storeAsync(file, bArr, 0L);
    }

    protected File getCacheFile() {
        return AQUtility.getCacheFile(this.cacheDir, getCacheUrl());
    }

    public String getCallback() {
        return this.callback;
    }

    public Object getHandler() {
        Object obj = this.handler;
        if (obj != null) {
            return obj;
        }
        Reference<Object> reference = this.whandler;
        if (reference == null) {
            return null;
        }
        return reference.get();
    }

    public T getResult() {
        return this.result;
    }

    public AjaxStatus getStatus() {
        return this.status;
    }

    public Class<T> getType() {
        return this.type;
    }

    public String getUrl() {
        return this.url;
    }

    public K handler(Object obj, String str) {
        this.handler = obj;
        this.callback = str;
        this.whandler = null;
        return self();
    }

    public K header(String str, String str2) {
        if (this.headers == null) {
            this.headers = new HashMap();
        }
        this.headers.put(str, str2);
        return self();
    }

    public K headers(Map<String, String> map) {
        this.headers = map;
        return self();
    }

    protected boolean isStreamingContent() {
        return File.class.equals(this.type) || XmlPullParser.class.equals(this.type) || InputStream.class.equals(this.type) || XmlDom.class.equals(this.type);
    }

    public K memCache(boolean z3) {
        this.memCache = z3;
        return self();
    }

    protected T memGet(String str) {
        return null;
    }

    protected void memPut(String str, T t3) {
    }

    public K method(int i2) {
        this.method = i2;
        return self();
    }

    public K networkUrl(String str) {
        this.networkUrl = str;
        return self();
    }

    public K param(String str, Object obj) {
        if (this.params == null) {
            this.params = new HashMap();
        }
        this.params.put(str, obj);
        return self();
    }

    public K params(Map<String, ?> map) {
        this.params = map;
        return self();
    }

    public K policy(int i2) {
        this.policy = i2;
        return self();
    }

    public K progress(View view) {
        return progress((Object) view);
    }

    public K proxy(String str, int i2) {
        this.proxy = new HttpHost(str, i2);
        return self();
    }

    public K redirect(boolean z3) {
        this.redirect = z3;
        return self();
    }

    public K refresh(boolean z3) {
        this.refresh = z3;
        return self();
    }

    public K retry(int i2) {
        this.retry = i2;
        return self();
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!this.status.getDone()) {
            try {
                backgroundWork();
            } catch (Throwable th) {
                AQUtility.debug(th);
                this.status.code(AjaxStatus.NETWORK_ERROR).done();
            }
            if (this.status.getReauth()) {
                return;
            }
            if (this.uiCallback) {
                AQUtility.post(this);
                return;
            } else {
                afterWork();
                return;
            }
        }
        afterWork();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void showProgress(final boolean z3) {
        WeakReference<Object> weakReference = this.progress;
        final Object obj = weakReference == null ? null : weakReference.get();
        if (obj != null) {
            if (AQUtility.isUIThread()) {
                Common.showProgress(obj, this.url, z3);
            } else {
                AQUtility.post(new Runnable() { // from class: com.androidquery.callback.AbstractAjaxCallback.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Common.showProgress(obj, AbstractAjaxCallback.this.url, z3);
                    }
                });
            }
        }
    }

    protected void skip(String str, T t3, AjaxStatus ajaxStatus) {
    }

    public K targetFile(File file) {
        this.targetFile = file;
        return self();
    }

    public K timeout(int i2) {
        this.timeout = i2;
        return self();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [T, java.io.File] */
    /* JADX WARN: Type inference failed for: r9v12, types: [T, java.io.Closeable, java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r9v13, types: [T, org.xmlpull.v1.XmlPullParser] */
    protected T transform(String str, byte[] bArr, AjaxStatus ajaxStatus) {
        String str2;
        if (this.type == null) {
            return null;
        }
        ?? r02 = (T) ajaxStatus.getFile();
        if (bArr != 0) {
            if (this.type.equals(Bitmap.class)) {
                return (T) BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
            }
            if (this.type.equals(JSONObject.class)) {
                try {
                    str2 = new String(bArr, this.encoding);
                } catch (Exception e4) {
                    e = e4;
                    str2 = null;
                }
                try {
                    return (T) ((JSONObject) new JSONTokener(str2).nextValue());
                } catch (Exception e5) {
                    e = e5;
                    AQUtility.debug((Throwable) e);
                    AQUtility.debug(str2);
                    return null;
                }
            } else if (this.type.equals(JSONArray.class)) {
                try {
                    return (T) ((JSONArray) new JSONTokener(new String(bArr, this.encoding)).nextValue());
                } catch (Exception e6) {
                    AQUtility.debug((Throwable) e6);
                    return null;
                }
            } else if (this.type.equals(String.class)) {
                if (ajaxStatus.getSource() == 1) {
                    AQUtility.debug("network");
                    return (T) correctEncoding(bArr, this.encoding, ajaxStatus);
                }
                AQUtility.debug(f.f11767c);
                try {
                    return (T) new String(bArr, this.encoding);
                } catch (Exception e7) {
                    AQUtility.debug((Throwable) e7);
                    return null;
                }
            } else if (this.type.equals(byte[].class)) {
                return bArr;
            } else {
                Transformer transformer = this.transformer;
                if (transformer != null) {
                    return (T) transformer.transform(str, this.type, this.encoding, bArr, ajaxStatus);
                }
                Transformer transformer2 = st;
                if (transformer2 != null) {
                    return (T) transformer2.transform(str, this.type, this.encoding, bArr, ajaxStatus);
                }
            }
        } else if (r02 != 0) {
            if (this.type.equals(File.class)) {
                return r02;
            }
            if (this.type.equals(XmlDom.class)) {
                try {
                    FileInputStream fileInputStream = new FileInputStream((File) r02);
                    T t3 = (T) new XmlDom(fileInputStream);
                    ajaxStatus.closeLater(fileInputStream);
                    return t3;
                } catch (Exception e8) {
                    AQUtility.report(e8);
                    return null;
                }
            } else if (this.type.equals(XmlPullParser.class)) {
                ?? r9 = (T) Xml.newPullParser();
                try {
                    FileInputStream fileInputStream2 = new FileInputStream((File) r02);
                    r9.setInput(fileInputStream2, this.encoding);
                    ajaxStatus.closeLater(fileInputStream2);
                    return r9;
                } catch (Exception e9) {
                    AQUtility.report(e9);
                    return null;
                }
            } else if (this.type.equals(InputStream.class)) {
                try {
                    ?? r92 = (T) new FileInputStream((File) r02);
                    ajaxStatus.closeLater(r92);
                    return r92;
                } catch (Exception e10) {
                    AQUtility.report(e10);
                }
            }
        }
        return null;
    }

    public K transformer(Transformer transformer) {
        this.transformer = transformer;
        return self();
    }

    public K type(Class<T> cls) {
        this.type = cls;
        return self();
    }

    public K uiCallback(boolean z3) {
        this.uiCallback = z3;
        return self();
    }

    public K url(String str) {
        this.url = str;
        return self();
    }

    public K weakHandler(Object obj, String str) {
        this.whandler = new WeakReference(obj);
        this.callback = str;
        this.handler = null;
        return self();
    }

    private void filePut() {
        if (this.result != null && this.fileCache) {
            byte[] data = this.status.getData();
            if (data != null) {
                try {
                    if (this.status.getSource() == 1) {
                        File cacheFile = getCacheFile();
                        if (!this.status.getInvalid()) {
                            filePut(this.url, this.result, cacheFile, data);
                        } else if (cacheFile.exists()) {
                            cacheFile.delete();
                        }
                    }
                } catch (Exception e4) {
                    AQUtility.debug((Throwable) e4);
                }
            }
            this.status.data(null);
        } else if (this.status.getCode() == -103) {
            File cacheFile2 = getCacheFile();
            if (cacheFile2.exists()) {
                cacheFile2.delete();
                AQUtility.debug("invalidated cache due to transform error");
            }
        }
    }

    public K progress(Dialog dialog) {
        return progress((Object) dialog);
    }

    public String getEncoding() {
        return this.encoding;
    }

    public K progress(Object obj) {
        if (obj != null) {
            this.progress = new WeakReference<>(obj);
        }
        return self();
    }

    public K proxy(String str, int i2, String str2, String str3) {
        proxy(str, i2);
        String makeAuthHeader = makeAuthHeader(str2, str3);
        AQUtility.debug("proxy auth", makeAuthHeader);
        return header("Proxy-Authorization", makeAuthHeader);
    }

    private HttpResponse execute(HttpUriRequest httpUriRequest, DefaultHttpClient defaultHttpClient, HttpContext httpContext) throws ClientProtocolException, IOException {
        HttpHost httpHost;
        if (httpUriRequest.getURI().getAuthority().contains("_")) {
            URL url = httpUriRequest.getURI().toURL();
            if (url.getPort() == -1) {
                httpHost = new HttpHost(url.getHost(), 80, url.getProtocol());
            } else {
                httpHost = new HttpHost(url.getHost(), url.getPort(), url.getProtocol());
            }
            return defaultHttpClient.execute(httpHost, httpUriRequest, httpContext);
        }
        return defaultHttpClient.execute(httpUriRequest, httpContext);
    }

    private void network() throws IOException {
        String str = this.url;
        Map<String, Object> map = this.params;
        if (map == null && str.length() > 2000) {
            Uri parse = Uri.parse(str);
            String extractUrl = extractUrl(parse);
            map = extractParams(parse);
            str = extractUrl;
        }
        String networkUrl = getNetworkUrl(str);
        int i2 = this.method;
        if (2 == i2) {
            httpDelete(networkUrl, this.status);
        } else if (3 == i2) {
            httpPut(networkUrl, map, this.status);
        } else {
            if (1 == i2 && map == null) {
                map = new HashMap<>();
            }
            if (map == null) {
                httpGet(networkUrl, this.status);
            } else if (isMultiPart(map)) {
                httpMulti(networkUrl, map, this.status);
            } else {
                httpPost(networkUrl, map, this.status);
            }
        }
    }

    public K auth(AccountHandle accountHandle) {
        this.ah = accountHandle;
        return self();
    }

    public void async(Context context) {
        AjaxStatus ajaxStatus = this.status;
        if (ajaxStatus == null) {
            AjaxStatus ajaxStatus2 = new AjaxStatus();
            this.status = ajaxStatus2;
            ajaxStatus2.redirect(this.url).refresh(this.refresh);
        } else if (ajaxStatus.getDone()) {
            this.status.reset();
            this.result = null;
        }
        showProgress(true);
        AccountHandle accountHandle = this.ah;
        if (accountHandle != null && !accountHandle.authenticated()) {
            AQUtility.debug("auth needed", this.url);
            this.ah.auth(this);
            return;
        }
        work(context);
    }

    private void copy(InputStream inputStream, OutputStream outputStream, int i2) throws IOException {
        WeakReference<Object> weakReference = this.progress;
        Object obj = weakReference != null ? weakReference.get() : null;
        AQUtility.copy(inputStream, outputStream, i2, obj != null ? new Progress(obj) : null);
    }
}
