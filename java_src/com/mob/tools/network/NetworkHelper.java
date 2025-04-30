package com.mob.tools.network;

import android.content.Context;
import android.os.Build;
import com.alipay.sdk.packet.d;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.facebook.imagepipeline.producers.s;
import com.mob.MobSDK;
import com.mob.commons.i;
import com.mob.tools.MobLog;
import com.mob.tools.log.NLog;
import com.mob.tools.proguard.EverythingKeeper;
import com.mob.tools.proguard.PublicMemberKeeper;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.FileUtils;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.HashonHelper;
import com.mob.tools.utils.ReflectHelper;
import com.tencent.bugly.Bugly;
import io.netty.handler.codec.http.HttpHeaders;
import io.netty.handler.codec.http.multipart.HttpPostBodyUtil;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import kotlin.text.Typography;
import org.apache.http.client.methods.HttpPutHC4;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.conn.ssl.X509HostnameVerifier;
/* loaded from: classes4.dex */
public class NetworkHelper implements EverythingKeeper {
    public static int connectionTimeout = 0;
    private static boolean followRedirects = true;
    public static int readTimout;
    protected boolean instanceFollowRedirects = followRedirects;

    /* loaded from: classes4.dex */
    public static class NetworkTimeOut implements PublicMemberKeeper {
        public int connectionTimeout;
        public int readTimout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class a implements InvocationHandler {

        /* renamed from: a  reason: collision with root package name */
        private Object f53902a;

        /* renamed from: b  reason: collision with root package name */
        private String f53903b;

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            if (name.equals(i.a("018Dfi:ekQfifliigffgSk.fm*fWgkfjfehiWfkj"))) {
                return null;
            }
            if (name.equals(i.a("018^fi1ekEfiflgj5kWfj!lk$fjgkfjfehiCfkj"))) {
                Object[] objArr2 = (Object[]) objArr[0];
                String str = (String) objArr[1];
                if (objArr2 != null) {
                    if (objArr2.length == 1) {
                        try {
                            Method declaredMethod = objArr2[0].getClass().getDeclaredMethod(i.a("013Xfi>ek:fiflihfhgffgUj9fgOf*fk"), new Class[0]);
                            declaredMethod.setAccessible(true);
                            declaredMethod.invoke(objArr2[0], new Object[0]);
                            return null;
                        } catch (Throwable th) {
                            MobLog.getInstance().e(th);
                            return null;
                        }
                    } else if (this.f53902a != null) {
                        if (Build.VERSION.SDK_INT >= 17) {
                            try {
                                Object newInstance = Class.forName("android.net.http.X509TrustManagerExtensions").getConstructor(Class.forName(i.a("030Mjhfh5lKfhfngnfm2kf-gnhihigfgnjijghgjjgkfjfehiPf7ikfhfmfhhhAk]fj"))).newInstance(this.f53902a);
                                Method declaredMethod2 = newInstance.getClass().getDeclaredMethod(i.a("0189fi8ek5fiflgj6k(fjSlk^fjgkfjfehi^fkj"), Array.newInstance(Class.forName(i.a("034)jhfh!l,fhgnhiAkSfifefjfgWf(fkgnfiBk>fjCf5gnjijghgjjiiPk?fj!fMfghjfgfifh_fk")), 0).getClass(), String.class, String.class);
                                declaredMethod2.setAccessible(true);
                                declaredMethod2.invoke(newInstance, objArr2, str, this.f53903b);
                                return null;
                            } catch (Throwable th2) {
                                MobLog.getInstance().e(th2);
                                return null;
                            }
                        }
                        try {
                            Method declaredMethod3 = this.f53902a.getClass().getDeclaredMethod(i.a("018:fi9ekFfiflgj4k?fj lkJfjgkfjfehiMfkj"), Array.newInstance(Class.forName(i.a("034 jhfh[lOfhgnhi+kIfifefjfgCf<fkgnfiTk.fjFfGgnjijghgjjiiZk>fj4fBfghjfgfifhBfk")), 0).getClass(), String.class);
                            declaredMethod3.setAccessible(true);
                            declaredMethod3.invoke(this.f53902a, objArr2, str);
                            return null;
                        } catch (Throwable th3) {
                            MobLog.getInstance().e(th3);
                            return null;
                        }
                    } else {
                        throw new CertificateException("there were one more certificates but no trust manager found.");
                    }
                }
                throw new IllegalArgumentException("there were no certificates.");
            } else if (name.equals(i.a("018BhhCkf=glfifi(kgfkjWgihihifeXkXfjhi"))) {
                try {
                    return Array.newInstance(Class.forName(i.a("0342jhfh?lKfhgnhi-k*fifefjfgNfMfkgnfiHk^fj.fPgnjijghgjjii=k=fjQf%fghjfgfifhWfk")), 0);
                } catch (Throwable th4) {
                    MobLog.getInstance().e(th4);
                    return null;
                }
            } else if (name.equals(TTDownloadField.TT_HASHCODE)) {
                return Integer.valueOf(hashCode());
            } else {
                if (name.equals("toString")) {
                    return toString();
                }
                return null;
            }
        }

        private a(String str) {
            try {
                this.f53903b = str;
                Method declaredMethod = Class.forName(i.a("033!jhfhSl<fhfngnfm>kf(gnhihigfgngkfjfehi>f[ikfhfmfhhh5k$fjhmfhfi4fPgefjfk")).getDeclaredMethod(i.a("011?hh kf6gifmhiKf[fhfmfi1k"), String.class);
                declaredMethod.setAccessible(true);
                Object invoke = declaredMethod.invoke(null, i.a("004-jijghgjj"));
                Method method = invoke.getClass().getMethod(i.a("004Nfgfmfg,f"), Class.forName(i.a("022=jhfh+l-fhgnhi_kQfifefjfg;fHfkgnjlOkCfkgj?fUgefj0k")));
                method.setAccessible(true);
                method.invoke(invoke, null);
                Method method2 = invoke.getClass().getMethod(i.a("016RhhLkfCgkfjfehiNfXikfhfmfhhh%k3fjhi"), new Class[0]);
                method2.setAccessible(true);
                Object[] objArr = (Object[]) method2.invoke(invoke, new Object[0]);
                if (objArr != null && objArr.length != 0) {
                    this.f53902a = objArr[0];
                    return;
                }
                throw new NoSuchAlgorithmException("no trust manager found.");
            } catch (Exception e4) {
                NLog mobLog = MobLog.getInstance();
                mobLog.d("failed to initialize the standard trust manager: " + e4.getMessage(), new Object[0]);
                this.f53902a = null;
            }
        }
    }

    @Deprecated
    public static String checkHttpRequestUrl(String str) {
        return NetCommunicator.checkHttpRequestUrl(str);
    }

    private HttpURLConnection getConnection(String str, NetworkTimeOut networkTimeOut) throws Throwable {
        Object obj;
        boolean z3;
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        String a4 = i.a("012nkfe)ge[j7gkgefl$k=fmhi");
        try {
            obj = ReflectHelper.getInstanceField(httpURLConnection, a4);
        } catch (Throwable unused) {
            obj = null;
        }
        if (obj == null) {
            a4 = "PERMITTED_USER_METHODS";
            try {
                obj = ReflectHelper.getStaticField("HttpURLConnection", "PERMITTED_USER_METHODS");
            } catch (Throwable unused2) {
            }
            z3 = true;
        } else {
            z3 = false;
        }
        if (obj != null) {
            String[] strArr = (String[]) obj;
            String[] strArr2 = new String[strArr.length + 1];
            System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
            strArr2[strArr.length] = i.a("0050ijglgkiijf");
            if (z3) {
                ReflectHelper.setStaticField("HttpURLConnection", a4, strArr2);
            } else {
                ReflectHelper.setInstanceField(httpURLConnection, a4, strArr2);
            }
        }
        System.setProperty("http.keepAlive", Bugly.SDK_IS_DEV);
        if (httpURLConnection instanceof HttpsURLConnection) {
            X509HostnameVerifier x509HostnameVerifier = SSLSocketFactory.STRICT_HOSTNAME_VERIFIER;
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpURLConnection;
            SSLContext sSLContext = SSLContext.getInstance(i.a("003Agkgmgj"));
            TrustManager[] trustManagerArr = new TrustManager[0];
            try {
                trustManagerArr = new TrustManager[]{(TrustManager) getTrustManager(httpsURLConnection.getURL().getHost())};
            } catch (Throwable th) {
                MobLog.getInstance().e(th);
            }
            sSLContext.init(null, trustManagerArr, new SecureRandom());
            httpsURLConnection.setSSLSocketFactory(sSLContext.getSocketFactory());
            httpsURLConnection.setHostnameVerifier(x509HostnameVerifier);
        }
        int i2 = networkTimeOut == null ? connectionTimeout : networkTimeOut.connectionTimeout;
        if (i2 > 0) {
            httpURLConnection.setConnectTimeout(i2);
        }
        int i4 = networkTimeOut == null ? readTimout : networkTimeOut.readTimout;
        if (i4 > 0) {
            httpURLConnection.setReadTimeout(i4);
        }
        return httpURLConnection;
    }

    @Deprecated
    private HTTPPart getDataPostHttpPart(HttpURLConnection httpURLConnection, String str, byte[] bArr) throws Throwable {
        ByteArrayPart byteArrayPart = new ByteArrayPart();
        byteArrayPart.append(bArr);
        return byteArrayPart;
    }

    @Deprecated
    private HTTPPart getFilePostHTTPPart(HttpURLConnection httpURLConnection, String str, ArrayList<KVPair<String>> arrayList, ArrayList<KVPair<String>> arrayList2) throws Throwable {
        String uuid = UUID.randomUUID().toString();
        httpURLConnection.setRequestProperty("Content-Type", "multipart/form-data; boundary=" + uuid);
        MultiPart multiPart = new MultiPart();
        StringPart stringPart = new StringPart();
        if (arrayList != null) {
            Iterator<KVPair<String>> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                KVPair<String> next = it2.next();
                stringPart.append("--").append(uuid).append("\r\n");
                stringPart.append("Content-Disposition: form-data; name=\"").append(next.name).append("\"\r\n\r\n");
                stringPart.append(next.value).append("\r\n");
            }
        }
        multiPart.append(stringPart);
        Iterator<KVPair<String>> it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            KVPair<String> next2 = it3.next();
            StringPart stringPart2 = new StringPart();
            File file = new File(next2.value);
            stringPart2.append("--").append(uuid).append("\r\n");
            stringPart2.append("Content-Disposition: form-data; name=\"").append(next2.name).append("\"; filename=\"").append(file.getName()).append("\"\r\n");
            String contentTypeFor = URLConnection.getFileNameMap().getContentTypeFor(next2.value);
            if (contentTypeFor == null || contentTypeFor.length() <= 0) {
                if (next2.value.toLowerCase().endsWith("jpg") || next2.value.toLowerCase().endsWith("jpeg")) {
                    contentTypeFor = "image/jpeg";
                } else if (next2.value.toLowerCase().endsWith("png")) {
                    contentTypeFor = "image/png";
                } else if (next2.value.toLowerCase().endsWith("gif")) {
                    contentTypeFor = "image/gif";
                } else {
                    FileInputStream fileInputStream = null;
                    try {
                        FileInputStream fileInputStream2 = new FileInputStream(next2.value);
                        try {
                            contentTypeFor = URLConnection.guessContentTypeFromStream(fileInputStream2);
                            FileUtils.closeIO(fileInputStream2);
                            if (contentTypeFor == null || contentTypeFor.length() <= 0) {
                                contentTypeFor = HttpPostBodyUtil.DEFAULT_BINARY_CONTENT_TYPE;
                            }
                        } catch (Throwable th) {
                            th = th;
                            fileInputStream = fileInputStream2;
                            FileUtils.closeIO(fileInputStream);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
            }
            stringPart2.append("Content-Type: ").append(contentTypeFor).append("\r\n\r\n");
            multiPart.append(stringPart2);
            FilePart filePart = new FilePart();
            filePart.setFile(next2.value);
            multiPart.append(filePart);
            StringPart stringPart3 = new StringPart();
            stringPart3.append("\r\n");
            multiPart.append(stringPart3);
        }
        StringPart stringPart4 = new StringPart();
        stringPart4.append("--").append(uuid).append("--\r\n");
        multiPart.append(stringPart4);
        return multiPart;
    }

    @Deprecated
    private HTTPPart getTextPostHTTPPart(HttpURLConnection httpURLConnection, String str, ArrayList<KVPair<String>> arrayList) throws Throwable {
        httpURLConnection.setRequestProperty("Content-Type", i.a("033>fhRggBgffgfifhPf.fggefm5iZfnjkhfhfhfjkhjgefjCnYjkfefjgfDkUfmfigeEjkj"));
        StringPart stringPart = new StringPart();
        if (arrayList != null) {
            stringPart.append(requestParamsToUrl(kvPairsToObjHashMap(arrayList)));
        }
        return stringPart;
    }

    public static Object getTrustManager(String str) throws Throwable {
        Class<?> cls = Class.forName(i.a("030,jhfh[lCfhfngnfmHkfYgnhihigfgnjijghgjjgkfjfehi[fAikfhfmfhhh=k2fj"));
        return Proxy.newProxyInstance(ClassLoader.getSystemClassLoader(), new Class[]{cls}, new a(str));
    }

    @Deprecated
    private HashMap<String, Object> kvPairsToObjHashMap(ArrayList<KVPair<String>> arrayList) throws Throwable {
        if (arrayList == null) {
            return null;
        }
        HashMap<String, Object> hashMap = new HashMap<>();
        Iterator<KVPair<String>> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            KVPair<String> next = it2.next();
            hashMap.put(next.name, next.value);
        }
        return hashMap;
    }

    @Deprecated
    private HashMap<String, String> kvPairsToStrHashMap(ArrayList<KVPair<String>> arrayList) throws Throwable {
        if (arrayList == null) {
            return null;
        }
        HashMap<String, String> hashMap = new HashMap<>();
        Iterator<KVPair<String>> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            KVPair<String> next = it2.next();
            hashMap.put(next.name, next.value);
        }
        return hashMap;
    }

    private String requestParamsToUrl(HashMap<String, Object> hashMap) throws Throwable {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, Object> entry : hashMap.entrySet()) {
            String urlEncode = Data.urlEncode(entry.getKey(), "utf-8");
            String urlEncode2 = entry.getValue() == null ? "" : Data.urlEncode(String.valueOf(entry.getValue()), "utf-8");
            if (sb.length() > 0) {
                sb.append(Typography.amp);
            }
            sb.append(urlEncode);
            sb.append('=');
            sb.append(urlEncode2);
        }
        return sb.toString();
    }

    private void setHeader(URLConnection uRLConnection, HashMap<String, String> hashMap) {
        if (hashMap == null || hashMap.isEmpty()) {
            return;
        }
        for (Map.Entry<String, String> entry : hashMap.entrySet()) {
            uRLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
    }

    public void download(String str, final OutputStream outputStream, NetworkTimeOut networkTimeOut) throws Throwable {
        final byte[] bArr = new byte[1024];
        rawGet(str, new RawNetworkCallback() { // from class: com.mob.tools.network.NetworkHelper.1
            @Override // com.mob.tools.network.RawNetworkCallback
            public void onResponse(InputStream inputStream) throws Throwable {
                int read = inputStream.read(bArr);
                while (read != -1) {
                    outputStream.write(bArr, 0, read);
                    read = inputStream.read(bArr);
                }
            }
        }, networkTimeOut);
        outputStream.flush();
    }

    public String downloadCache(Context context, String str, String str2, boolean z3, NetworkTimeOut networkTimeOut) throws Throwable {
        return downloadCache(context, str, str2, z3, networkTimeOut, null);
    }

    @Deprecated
    public String httpGet(String str, ArrayList<KVPair<String>> arrayList, ArrayList<KVPair<String>> arrayList2, NetworkTimeOut networkTimeOut) throws Throwable {
        return httpGetNew(str, kvPairsToObjHashMap(arrayList), kvPairsToStrHashMap(arrayList2), networkTimeOut);
    }

    public String httpGetNew(String str, HashMap<String, Object> hashMap, HashMap<String, String> hashMap2, NetworkTimeOut networkTimeOut) throws Throwable {
        InputStreamReader inputStreamReader;
        InputStreamReader inputStreamReader2;
        MobLog.getInstance().d(String.format("hgt: %s", str) + "\n" + String.format("hd: %s", hashMap2), new Object[0]);
        long currentTimeMillis = System.currentTimeMillis();
        if (hashMap != null) {
            String requestParamsToUrl = requestParamsToUrl(hashMap);
            if (requestParamsToUrl.length() > 0) {
                str = str + "?" + requestParamsToUrl;
            }
        }
        HttpURLConnection connection = getConnection(str, networkTimeOut);
        setHeader(connection, hashMap2);
        connection.setInstanceFollowRedirects(this.instanceFollowRedirects);
        connection.connect();
        int responseCode = connection.getResponseCode();
        BufferedReader bufferedReader = null;
        if (responseCode == 200) {
            StringBuilder sb = new StringBuilder();
            try {
                inputStreamReader2 = new InputStreamReader(connection.getInputStream(), Charset.forName("utf-8"));
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(inputStreamReader2);
                    try {
                        for (String readLine = bufferedReader2.readLine(); readLine != null; readLine = bufferedReader2.readLine()) {
                            if (sb.length() > 0) {
                                sb.append('\n');
                            }
                            sb.append(readLine);
                        }
                        FileUtils.closeIO(bufferedReader2, inputStreamReader2);
                        connection.disconnect();
                        String sb2 = sb.toString();
                        MobLog.getInstance().d("use time: " + (System.currentTimeMillis() - currentTimeMillis), new Object[0]);
                        return sb2;
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        FileUtils.closeIO(bufferedReader, inputStreamReader2);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                inputStreamReader2 = null;
            }
        } else {
            StringBuilder sb3 = new StringBuilder();
            try {
                inputStreamReader = new InputStreamReader(connection.getErrorStream(), Charset.forName("utf-8"));
                try {
                    BufferedReader bufferedReader3 = new BufferedReader(inputStreamReader);
                    try {
                        for (String readLine2 = bufferedReader3.readLine(); readLine2 != null; readLine2 = bufferedReader3.readLine()) {
                            if (sb3.length() > 0) {
                                sb3.append('\n');
                            }
                            sb3.append(readLine2);
                        }
                        FileUtils.closeIO(bufferedReader3, inputStreamReader);
                        connection.disconnect();
                        HashMap hashMap3 = new HashMap();
                        hashMap3.put(i.a("005k^fjfjgefj"), sb3.toString());
                        hashMap3.put(i.a("0067hi%f(fh.fLfehi"), Integer.valueOf(responseCode));
                        throw new Throwable(HashonHelper.fromHashMap(hashMap3));
                    } catch (Throwable th4) {
                        th = th4;
                        bufferedReader = bufferedReader3;
                        FileUtils.closeIO(bufferedReader, inputStreamReader);
                        throw th;
                    }
                } catch (Throwable th5) {
                    th = th5;
                }
            } catch (Throwable th6) {
                th = th6;
                inputStreamReader = null;
            }
        }
    }

    @Deprecated
    public String httpPost(String str, ArrayList<KVPair<String>> arrayList, KVPair<String> kVPair, ArrayList<KVPair<String>> arrayList2, NetworkTimeOut networkTimeOut) throws Throwable {
        return httpPostNew(str, kvPairsToObjHashMap(arrayList), kvPairsToStrHashMap(arrayList2), networkTimeOut);
    }

    @Deprecated
    public String httpPostFiles(String str, ArrayList<KVPair<String>> arrayList, ArrayList<KVPair<String>> arrayList2, ArrayList<KVPair<String>> arrayList3, int i2, NetworkTimeOut networkTimeOut) throws Throwable {
        final HashMap hashMap = new HashMap();
        httpPost(str, arrayList, arrayList2, arrayList3, i2, new HttpResponseCallback() { // from class: com.mob.tools.network.NetworkHelper.3
            @Override // com.mob.tools.network.HttpResponseCallback
            public void onResponse(HttpConnection httpConnection) throws Throwable {
                InputStreamReader inputStreamReader;
                BufferedReader bufferedReader;
                InputStreamReader inputStreamReader2;
                int responseCode = httpConnection.getResponseCode();
                BufferedReader bufferedReader2 = null;
                if (responseCode != 200 && responseCode >= 300) {
                    StringBuilder sb = new StringBuilder();
                    try {
                        inputStreamReader2 = new InputStreamReader(httpConnection.getErrorStream(), Charset.forName("utf-8"));
                        try {
                            BufferedReader bufferedReader3 = new BufferedReader(inputStreamReader2);
                            try {
                                for (String readLine = bufferedReader3.readLine(); readLine != null; readLine = bufferedReader3.readLine()) {
                                    if (sb.length() > 0) {
                                        sb.append('\n');
                                    }
                                    sb.append(readLine);
                                }
                                FileUtils.closeIO(bufferedReader3, inputStreamReader2);
                                HashMap hashMap2 = new HashMap();
                                hashMap2.put(i.a("005k:fjfjgefj"), sb.toString());
                                hashMap2.put(i.a("0062hi>f(fh@f=fehi"), Integer.valueOf(responseCode));
                                throw new Throwable(new Hashon().fromHashMap(hashMap2));
                            } catch (Throwable th) {
                                th = th;
                                bufferedReader2 = bufferedReader3;
                                FileUtils.closeIO(bufferedReader2, inputStreamReader2);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        inputStreamReader2 = null;
                    }
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    try {
                        inputStreamReader = new InputStreamReader(httpConnection.getInputStream(), Charset.forName("utf-8"));
                        try {
                            bufferedReader = new BufferedReader(inputStreamReader);
                        } catch (Throwable th4) {
                            th = th4;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        inputStreamReader = null;
                    }
                    try {
                        for (String readLine2 = bufferedReader.readLine(); readLine2 != null; readLine2 = bufferedReader.readLine()) {
                            if (sb2.length() > 0) {
                                sb2.append('\n');
                            }
                            sb2.append(readLine2);
                        }
                        FileUtils.closeIO(bufferedReader, inputStreamReader);
                        hashMap.put("resp", sb2.toString());
                    } catch (Throwable th6) {
                        th = th6;
                        bufferedReader2 = bufferedReader;
                        FileUtils.closeIO(bufferedReader2, inputStreamReader);
                        throw th;
                    }
                }
            }
        }, networkTimeOut);
        return (String) hashMap.get("resp");
    }

    @Deprecated
    public String httpPostFilesChecked(String str, ArrayList<KVPair<String>> arrayList, byte[] bArr, ArrayList<KVPair<String>> arrayList2, int i2, NetworkTimeOut networkTimeOut) throws Throwable {
        final HashMap hashMap = new HashMap();
        httpPost(str, arrayList, bArr, arrayList2, i2, new HttpResponseCallback() { // from class: com.mob.tools.network.NetworkHelper.4
            @Override // com.mob.tools.network.HttpResponseCallback
            public void onResponse(HttpConnection httpConnection) throws Throwable {
                InputStreamReader inputStreamReader;
                BufferedReader bufferedReader;
                InputStreamReader inputStreamReader2;
                int responseCode = httpConnection.getResponseCode();
                BufferedReader bufferedReader2 = null;
                if (responseCode != 200 && responseCode >= 300) {
                    StringBuilder sb = new StringBuilder();
                    try {
                        inputStreamReader2 = new InputStreamReader(httpConnection.getErrorStream(), Charset.forName("utf-8"));
                        try {
                            BufferedReader bufferedReader3 = new BufferedReader(inputStreamReader2);
                            try {
                                for (String readLine = bufferedReader3.readLine(); readLine != null; readLine = bufferedReader3.readLine()) {
                                    if (sb.length() > 0) {
                                        sb.append('\n');
                                    }
                                    sb.append(readLine);
                                }
                                FileUtils.closeIO(bufferedReader3, inputStreamReader2);
                                HashMap hashMap2 = new HashMap();
                                hashMap2.put(i.a("005kWfjfjgefj"), sb.toString());
                                hashMap2.put(i.a("0067hi f4fh_f8fehi"), Integer.valueOf(responseCode));
                                throw new Throwable(new Hashon().fromHashMap(hashMap2));
                            } catch (Throwable th) {
                                th = th;
                                bufferedReader2 = bufferedReader3;
                                FileUtils.closeIO(bufferedReader2, inputStreamReader2);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        inputStreamReader2 = null;
                    }
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    try {
                        inputStreamReader = new InputStreamReader(httpConnection.getInputStream(), Charset.forName("utf-8"));
                        try {
                            bufferedReader = new BufferedReader(inputStreamReader);
                        } catch (Throwable th4) {
                            th = th4;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        inputStreamReader = null;
                    }
                    try {
                        for (String readLine2 = bufferedReader.readLine(); readLine2 != null; readLine2 = bufferedReader.readLine()) {
                            if (sb2.length() > 0) {
                                sb2.append('\n');
                            }
                            sb2.append(readLine2);
                        }
                        FileUtils.closeIO(bufferedReader, inputStreamReader);
                        hashMap.put("resp", sb2.toString());
                    } catch (Throwable th6) {
                        th = th6;
                        bufferedReader2 = bufferedReader;
                        FileUtils.closeIO(bufferedReader2, inputStreamReader);
                        throw th;
                    }
                }
            }
        }, networkTimeOut);
        return (String) hashMap.get("resp");
    }

    public String httpPostNew(String str, HashMap<String, Object> hashMap, HashMap<String, String> hashMap2, NetworkTimeOut networkTimeOut) throws Throwable {
        InputStream inputStream;
        OutputStream outputStream;
        Throwable th;
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader;
        InputStreamReader inputStreamReader2;
        BufferedReader bufferedReader2;
        BufferedReader bufferedReader3;
        InputStreamReader inputStreamReader3;
        long currentTimeMillis = System.currentTimeMillis();
        NLog mobLog = MobLog.getInstance();
        mobLog.d("hpt: " + str + "\nhd: " + hashMap2, new Object[0]);
        HttpURLConnection connection = getConnection(str, networkTimeOut);
        connection.setDoOutput(true);
        setHeader(connection, hashMap2);
        connection.setRequestProperty(i.a("010Miigefmfm kXfiUf7fggefm"), "Keep-Alive");
        connection.setRequestProperty("Content-Type", i.a("0332fhGggFgffgfifhVf$fggefmAi'fnjkhfhfhfjkhjgefj;n=jkfefjgf9kLfmfige'jkj"));
        StringPart stringPart = new StringPart();
        if (hashMap != null) {
            stringPart.append(requestParamsToUrl(hashMap));
        }
        connection.setFixedLengthStreamingMode((int) stringPart.b());
        connection.setInstanceFollowRedirects(this.instanceFollowRedirects);
        connection.connect();
        try {
            outputStream = connection.getOutputStream();
            try {
                InputStream inputStream2 = stringPart.toInputStream();
                try {
                    byte[] bArr = new byte[65536];
                    for (int read = inputStream2.read(bArr); read > 0; read = inputStream2.read(bArr)) {
                        outputStream.write(bArr, 0, read);
                    }
                    outputStream.flush();
                    int responseCode = connection.getResponseCode();
                    if (responseCode != 200 && responseCode >= 300) {
                        StringBuilder sb = new StringBuilder();
                        try {
                            inputStreamReader3 = new InputStreamReader(connection.getErrorStream(), Charset.forName("utf-8"));
                            try {
                                bufferedReader3 = new BufferedReader(inputStreamReader3);
                                try {
                                    for (String readLine = bufferedReader3.readLine(); readLine != null; readLine = bufferedReader3.readLine()) {
                                        if (sb.length() > 0) {
                                            sb.append('\n');
                                        }
                                        sb.append(readLine);
                                    }
                                    FileUtils.closeIO(bufferedReader3, inputStreamReader3);
                                    HashMap hashMap3 = new HashMap();
                                    hashMap3.put(i.a("005k<fjfjgefj"), sb.toString());
                                    hashMap3.put(i.a("006]hiAf$fhDf*fehi"), Integer.valueOf(responseCode));
                                    throw new Throwable(HashonHelper.fromHashMap(hashMap3));
                                } catch (Throwable th2) {
                                    th = th2;
                                    FileUtils.closeIO(bufferedReader3, inputStreamReader3);
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                bufferedReader3 = null;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            bufferedReader3 = null;
                            inputStreamReader3 = null;
                        }
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        try {
                            inputStreamReader2 = new InputStreamReader(connection.getInputStream(), Charset.forName("utf-8"));
                            try {
                                bufferedReader2 = new BufferedReader(inputStreamReader2);
                            } catch (Throwable th5) {
                                th = th5;
                                inputStreamReader = inputStreamReader2;
                                bufferedReader = null;
                                FileUtils.closeIO(bufferedReader, inputStreamReader);
                                throw th;
                            }
                        } catch (Throwable th6) {
                            th = th6;
                            inputStreamReader = null;
                        }
                        try {
                            for (String readLine2 = bufferedReader2.readLine(); readLine2 != null; readLine2 = bufferedReader2.readLine()) {
                                if (sb2.length() > 0) {
                                    sb2.append('\n');
                                }
                                sb2.append(readLine2);
                            }
                            FileUtils.closeIO(bufferedReader2, inputStreamReader2);
                            String sb3 = sb2.toString();
                            connection.disconnect();
                            FileUtils.closeIO(inputStream2, outputStream);
                            NLog mobLog2 = MobLog.getInstance();
                            mobLog2.d("use time: " + (System.currentTimeMillis() - currentTimeMillis), new Object[0]);
                            return sb3;
                        } catch (Throwable th7) {
                            th = th7;
                            inputStreamReader = inputStreamReader2;
                            bufferedReader = bufferedReader2;
                            FileUtils.closeIO(bufferedReader, inputStreamReader);
                            throw th;
                        }
                    }
                } catch (Throwable th8) {
                    th = th8;
                    inputStream = inputStream2;
                    connection.disconnect();
                    FileUtils.closeIO(inputStream, outputStream);
                    NLog mobLog3 = MobLog.getInstance();
                    mobLog3.d("use time: " + (System.currentTimeMillis() - currentTimeMillis), new Object[0]);
                    throw th;
                }
            } catch (Throwable th9) {
                th = th9;
                inputStream = null;
            }
        } catch (Throwable th10) {
            th = th10;
            inputStream = null;
            outputStream = null;
        }
    }

    public String httpPostWithBytes(String str, byte[] bArr, HashMap<String, String> hashMap, NetworkTimeOut networkTimeOut) throws Throwable {
        ByteArrayInputStream byteArrayInputStream;
        OutputStream outputStream;
        Throwable th;
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader;
        InputStreamReader inputStreamReader2;
        BufferedReader bufferedReader2;
        BufferedReader bufferedReader3;
        InputStreamReader inputStreamReader3;
        long currentTimeMillis = System.currentTimeMillis();
        NLog mobLog = MobLog.getInstance();
        mobLog.d("hpt: " + str, new Object[0]);
        HttpURLConnection connection = getConnection(str, networkTimeOut);
        connection.setDoOutput(true);
        setHeader(connection, hashMap);
        connection.setRequestProperty(i.a("010[iigefmfm%kAfi,fQfggefm"), "Keep-Alive");
        connection.setRequestProperty("Content-Type", HttpPostBodyUtil.DEFAULT_BINARY_CONTENT_TYPE);
        connection.setInstanceFollowRedirects(this.instanceFollowRedirects);
        connection.connect();
        try {
            outputStream = connection.getOutputStream();
            try {
                byte[] bytes = MobSDK.getAppkey().getBytes("utf-8");
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                dataOutputStream.writeInt(bytes.length);
                dataOutputStream.write(bytes);
                dataOutputStream.write(bArr);
                byteArrayOutputStream.flush();
                byteArrayOutputStream.close();
                ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
                try {
                    byte[] bArr2 = new byte[65536];
                    for (int read = byteArrayInputStream2.read(bArr2); read > 0; read = byteArrayInputStream2.read(bArr2)) {
                        outputStream.write(bArr2, 0, read);
                    }
                    outputStream.flush();
                    int responseCode = connection.getResponseCode();
                    if (responseCode != 200 && responseCode >= 300) {
                        StringBuilder sb = new StringBuilder();
                        try {
                            inputStreamReader3 = new InputStreamReader(connection.getErrorStream(), Charset.forName("utf-8"));
                            try {
                                BufferedReader bufferedReader4 = new BufferedReader(inputStreamReader3);
                                try {
                                    for (String readLine = bufferedReader4.readLine(); readLine != null; readLine = bufferedReader4.readLine()) {
                                        if (sb.length() > 0) {
                                            sb.append('\n');
                                        }
                                        sb.append(readLine);
                                    }
                                    FileUtils.closeIO(bufferedReader4, inputStreamReader3);
                                    HashMap hashMap2 = new HashMap();
                                    hashMap2.put(i.a("005kFfjfjgefj"), sb.toString());
                                    hashMap2.put(i.a("006=hiTf(fhLfJfehi"), Integer.valueOf(responseCode));
                                    throw new Throwable(HashonHelper.fromHashMap(hashMap2));
                                } catch (Throwable th2) {
                                    th = th2;
                                    bufferedReader3 = bufferedReader4;
                                    FileUtils.closeIO(bufferedReader3, inputStreamReader3);
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                bufferedReader3 = null;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            bufferedReader3 = null;
                            inputStreamReader3 = null;
                        }
                    }
                    StringBuilder sb2 = new StringBuilder();
                    try {
                        inputStreamReader2 = new InputStreamReader(connection.getInputStream(), Charset.forName("utf-8"));
                        try {
                            bufferedReader2 = new BufferedReader(inputStreamReader2);
                        } catch (Throwable th5) {
                            th = th5;
                            inputStreamReader = inputStreamReader2;
                            bufferedReader = null;
                            FileUtils.closeIO(bufferedReader, inputStreamReader);
                            throw th;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        inputStreamReader = null;
                    }
                    try {
                        for (String readLine2 = bufferedReader2.readLine(); readLine2 != null; readLine2 = bufferedReader2.readLine()) {
                            if (sb2.length() > 0) {
                                sb2.append('\n');
                            }
                            sb2.append(readLine2);
                        }
                        FileUtils.closeIO(bufferedReader2, inputStreamReader2);
                        String sb3 = sb2.toString();
                        connection.disconnect();
                        FileUtils.closeIO(byteArrayInputStream2, outputStream);
                        NLog mobLog2 = MobLog.getInstance();
                        mobLog2.d("use time: " + (System.currentTimeMillis() - currentTimeMillis), new Object[0]);
                        return sb3;
                    } catch (Throwable th7) {
                        th = th7;
                        inputStreamReader = inputStreamReader2;
                        bufferedReader = bufferedReader2;
                        FileUtils.closeIO(bufferedReader, inputStreamReader);
                        throw th;
                    }
                } catch (Throwable th8) {
                    th = th8;
                    byteArrayInputStream = byteArrayInputStream2;
                    connection.disconnect();
                    FileUtils.closeIO(byteArrayInputStream, outputStream);
                    NLog mobLog3 = MobLog.getInstance();
                    mobLog3.d("use time: " + (System.currentTimeMillis() - currentTimeMillis), new Object[0]);
                    throw th;
                }
            } catch (Throwable th9) {
                th = th9;
                byteArrayInputStream = null;
            }
        } catch (Throwable th10) {
            th = th10;
            byteArrayInputStream = null;
            outputStream = null;
        }
    }

    @Deprecated
    public String httpPut(String str, ArrayList<KVPair<String>> arrayList, KVPair<String> kVPair, ArrayList<KVPair<String>> arrayList2, NetworkTimeOut networkTimeOut) throws Throwable {
        return httpPut(str, kvPairsToObjHashMap(arrayList), kVPair, arrayList2, networkTimeOut, null);
    }

    @Deprecated
    public String jsonPost(String str, ArrayList<KVPair<String>> arrayList, ArrayList<KVPair<String>> arrayList2, NetworkTimeOut networkTimeOut) throws Throwable {
        final HashMap hashMap = new HashMap();
        jsonPost(str, arrayList, arrayList2, networkTimeOut, new HttpResponseCallback() { // from class: com.mob.tools.network.NetworkHelper.2
            @Override // com.mob.tools.network.HttpResponseCallback
            public void onResponse(HttpConnection httpConnection) throws Throwable {
                InputStreamReader inputStreamReader;
                InputStreamReader inputStreamReader2;
                int responseCode = httpConnection.getResponseCode();
                BufferedReader bufferedReader = null;
                if (responseCode != 200 && responseCode != 201) {
                    StringBuilder sb = new StringBuilder();
                    try {
                        inputStreamReader2 = new InputStreamReader(httpConnection.getErrorStream(), Charset.forName("utf-8"));
                        try {
                            BufferedReader bufferedReader2 = new BufferedReader(inputStreamReader2);
                            try {
                                for (String readLine = bufferedReader2.readLine(); readLine != null; readLine = bufferedReader2.readLine()) {
                                    if (sb.length() > 0) {
                                        sb.append('\n');
                                    }
                                    sb.append(readLine);
                                }
                                FileUtils.closeIO(bufferedReader2, inputStreamReader2);
                                HashMap hashMap2 = new HashMap();
                                hashMap2.put(i.a("005kJfjfjgefj"), sb.toString());
                                hashMap2.put(i.a("0067hiBfOfhTfUfehi"), Integer.valueOf(responseCode));
                                throw new Throwable(new Hashon().fromHashMap(hashMap2));
                            } catch (Throwable th) {
                                th = th;
                                bufferedReader = bufferedReader2;
                                FileUtils.closeIO(bufferedReader, inputStreamReader2);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        inputStreamReader2 = null;
                    }
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    try {
                        inputStreamReader = new InputStreamReader(httpConnection.getInputStream(), Charset.forName("utf-8"));
                        try {
                            BufferedReader bufferedReader3 = new BufferedReader(inputStreamReader);
                            try {
                                for (String readLine2 = bufferedReader3.readLine(); readLine2 != null; readLine2 = bufferedReader3.readLine()) {
                                    if (sb2.length() > 0) {
                                        sb2.append('\n');
                                    }
                                    sb2.append(readLine2);
                                }
                                FileUtils.closeIO(bufferedReader3, inputStreamReader);
                                hashMap.put(i.a("003$fjTk_hi"), sb2.toString());
                            } catch (Throwable th4) {
                                th = th4;
                                bufferedReader = bufferedReader3;
                                FileUtils.closeIO(bufferedReader, inputStreamReader);
                                throw th;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        inputStreamReader = null;
                    }
                }
            }
        });
        if (hashMap.containsKey(i.a("003Wfj7kAhi"))) {
            return (String) hashMap.get(i.a("003PfjPkDhi"));
        }
        return null;
    }

    @Deprecated
    public void rawGet(String str, ArrayList<KVPair<String>> arrayList, RawNetworkCallback rawNetworkCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        rawGet(str, kvPairsToStrHashMap(arrayList), rawNetworkCallback, networkTimeOut);
    }

    @Deprecated
    public void rawPost(String str, ArrayList<KVPair<String>> arrayList, HTTPPart hTTPPart, HttpResponseCallback httpResponseCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        rawPost(str, arrayList, hTTPPart, 0, httpResponseCallback, networkTimeOut);
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x024f A[Catch: all -> 0x02b6, TryCatch #5 {all -> 0x02b6, blocks: (B:100:0x022d, B:107:0x024f, B:109:0x0255, B:111:0x025b, B:112:0x025e, B:118:0x0271, B:119:0x0284, B:104:0x023e), top: B:170:0x022d }] */
    /* JADX WARN: Removed duplicated region for block: B:167:0x01e2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x024b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x020e A[Catch: all -> 0x02b8, TryCatch #6 {all -> 0x02b8, blocks: (B:91:0x0205, B:93:0x020e, B:97:0x021d), top: B:171:0x0205 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String downloadCache(android.content.Context r20, java.lang.String r21, java.lang.String r22, boolean r23, com.mob.tools.network.NetworkHelper.NetworkTimeOut r24, com.mob.tools.network.FileDownloadListener r25) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 872
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mob.tools.network.NetworkHelper.downloadCache(android.content.Context, java.lang.String, java.lang.String, boolean, com.mob.tools.network.NetworkHelper$NetworkTimeOut, com.mob.tools.network.FileDownloadListener):java.lang.String");
    }

    public String httpGet(String str, HashMap<String, Object> hashMap, HashMap<String, String> hashMap2) throws Throwable {
        NetworkTimeOut networkTimeOut = new NetworkTimeOut();
        networkTimeOut.readTimout = s.f13217g;
        networkTimeOut.connectionTimeout = 10000;
        return httpGetNew(str, hashMap, hashMap2, networkTimeOut);
    }

    @Deprecated
    public void httpPost(String str, ArrayList<KVPair<String>> arrayList, ArrayList<KVPair<String>> arrayList2, ArrayList<KVPair<String>> arrayList3, int i2, HttpResponseCallback httpResponseCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        HTTPPart textPostHTTPPart;
        OutputStream outputStream;
        long currentTimeMillis = System.currentTimeMillis();
        MobLog.getInstance().i("httpPost: " + str);
        HttpURLConnection connection = getConnection(str, networkTimeOut);
        connection.setDoOutput(true);
        connection.setRequestProperty(i.a("010Giigefmfm@k)fi-f$fggefm"), "Keep-Alive");
        if (arrayList2 != null && arrayList2.size() > 0) {
            textPostHTTPPart = getFilePostHTTPPart(connection, str, arrayList, arrayList2);
            if (i2 >= 0) {
                connection.setChunkedStreamingMode(i2);
            }
        } else {
            textPostHTTPPart = getTextPostHTTPPart(connection, str, arrayList);
            connection.setFixedLengthStreamingMode((int) textPostHTTPPart.b());
        }
        if (arrayList3 != null) {
            Iterator<KVPair<String>> it2 = arrayList3.iterator();
            while (it2.hasNext()) {
                KVPair<String> next = it2.next();
                connection.setRequestProperty(next.name, next.value);
            }
        }
        connection.setInstanceFollowRedirects(this.instanceFollowRedirects);
        connection.connect();
        InputStream inputStream = null;
        try {
            outputStream = connection.getOutputStream();
            try {
                inputStream = textPostHTTPPart.toInputStream();
                byte[] bArr = new byte[65536];
                for (int read = inputStream.read(bArr); read > 0; read = inputStream.read(bArr)) {
                    outputStream.write(bArr, 0, read);
                }
                outputStream.flush();
                FileUtils.closeIO(inputStream, outputStream);
                if (httpResponseCallback != null) {
                    try {
                        httpResponseCallback.onResponse(new HttpConnectionImpl23(connection));
                        connection.disconnect();
                    } finally {
                    }
                }
                MobLog.getInstance().i("use time: " + (System.currentTimeMillis() - currentTimeMillis));
            } catch (Throwable th) {
                th = th;
                FileUtils.closeIO(inputStream, outputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            outputStream = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public String httpPut(String str, HashMap<String, Object> hashMap, KVPair<String> kVPair, ArrayList<KVPair<String>> arrayList, NetworkTimeOut networkTimeOut, OnReadListener onReadListener) throws Throwable {
        OutputStream outputStream;
        InputStreamReader inputStreamReader;
        InputStreamReader inputStreamReader2;
        long currentTimeMillis = System.currentTimeMillis();
        MobLog.getInstance().i("httpPut: " + str);
        if (hashMap != null) {
            String requestParamsToUrl = requestParamsToUrl(hashMap);
            if (requestParamsToUrl.length() > 0) {
                str = str + "?" + requestParamsToUrl;
            }
        }
        HttpURLConnection connection = getConnection(str, networkTimeOut);
        connection.setDoOutput(true);
        connection.setChunkedStreamingMode(0);
        connection.setRequestMethod(HttpPutHC4.METHOD_NAME);
        connection.setRequestProperty("Content-Type", HttpPostBodyUtil.DEFAULT_BINARY_CONTENT_TYPE);
        setHeader(connection, kvPairsToStrHashMap(arrayList));
        connection.setInstanceFollowRedirects(this.instanceFollowRedirects);
        connection.connect();
        InputStream inputStream = null;
        try {
            outputStream = connection.getOutputStream();
            try {
                FilePart filePart = new FilePart();
                if (onReadListener != null) {
                    filePart.setOnReadListener(onReadListener);
                }
                filePart.setFile(kVPair.value);
                InputStream inputStream2 = filePart.toInputStream();
                try {
                    byte[] bArr = new byte[65536];
                    for (int read = inputStream2.read(bArr); read > 0; read = inputStream2.read(bArr)) {
                        outputStream.write(bArr, 0, read);
                    }
                    outputStream.flush();
                    FileUtils.closeIO(inputStream2, outputStream);
                    int responseCode = connection.getResponseCode();
                    if (responseCode != 200 && responseCode != 201) {
                        StringBuilder sb = new StringBuilder();
                        try {
                            inputStreamReader2 = new InputStreamReader(connection.getErrorStream(), Charset.forName("utf-8"));
                            try {
                                BufferedReader bufferedReader = new BufferedReader(inputStreamReader2);
                                try {
                                    for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                                        if (sb.length() > 0) {
                                            sb.append('\n');
                                        }
                                        sb.append(readLine);
                                    }
                                    FileUtils.closeIO(bufferedReader, inputStreamReader2);
                                    HashMap hashMap2 = new HashMap();
                                    hashMap2.put(i.a("005k^fjfjgefj"), sb.toString());
                                    hashMap2.put(i.a("006,hiQf.fhKf@fehi"), Integer.valueOf(responseCode));
                                    throw new Throwable(new Hashon().fromHashMap(hashMap2));
                                } catch (Throwable th) {
                                    th = th;
                                    inputStream = bufferedReader;
                                    FileUtils.closeIO(inputStream, inputStreamReader2);
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            inputStreamReader2 = null;
                        }
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        try {
                            inputStreamReader = new InputStreamReader(connection.getInputStream(), Charset.forName("utf-8"));
                            try {
                                BufferedReader bufferedReader2 = new BufferedReader(inputStreamReader);
                                try {
                                    for (String readLine2 = bufferedReader2.readLine(); readLine2 != null; readLine2 = bufferedReader2.readLine()) {
                                        if (sb2.length() > 0) {
                                            sb2.append('\n');
                                        }
                                        sb2.append(readLine2);
                                    }
                                    FileUtils.closeIO(bufferedReader2, inputStreamReader);
                                    connection.disconnect();
                                    String sb3 = sb2.toString();
                                    MobLog.getInstance().i("use time: " + (System.currentTimeMillis() - currentTimeMillis));
                                    return sb3;
                                } catch (Throwable th4) {
                                    th = th4;
                                    inputStream = bufferedReader2;
                                    FileUtils.closeIO(inputStream, inputStreamReader);
                                    throw th;
                                }
                            } catch (Throwable th5) {
                                th = th5;
                            }
                        } catch (Throwable th6) {
                            th = th6;
                            inputStreamReader = null;
                        }
                    }
                } catch (Throwable th7) {
                    th = th7;
                    inputStream = inputStream2;
                    FileUtils.closeIO(inputStream, outputStream);
                    throw th;
                }
            } catch (Throwable th8) {
                th = th8;
            }
        } catch (Throwable th9) {
            th = th9;
            outputStream = null;
        }
    }

    @Deprecated
    public void rawGet(String str, ArrayList<KVPair<String>> arrayList, HttpResponseCallback httpResponseCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        rawGet(str, kvPairsToStrHashMap(arrayList), httpResponseCallback, networkTimeOut);
    }

    @Deprecated
    public void rawPost(String str, ArrayList<KVPair<String>> arrayList, HTTPPart hTTPPart, int i2, HttpResponseCallback httpResponseCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        rawPost(str, kvPairsToStrHashMap(arrayList), hTTPPart, 0, httpResponseCallback, networkTimeOut);
    }

    public void rawGet(String str, RawNetworkCallback rawNetworkCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        rawGet(str, new HashMap<>(), rawNetworkCallback, networkTimeOut);
    }

    public void rawPost(String str, HashMap<String, String> hashMap, HTTPPart hTTPPart, int i2, HttpResponseCallback httpResponseCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        OutputStream outputStream;
        long currentTimeMillis = System.currentTimeMillis();
        MobLog.getInstance().d("hptr: " + str, new Object[0]);
        HttpURLConnection connection = getConnection(str, networkTimeOut);
        connection.setDoOutput(true);
        if (i2 >= 0) {
            connection.setChunkedStreamingMode(0);
        }
        setHeader(connection, hashMap);
        connection.setInstanceFollowRedirects(this.instanceFollowRedirects);
        connection.connect();
        InputStream inputStream = null;
        try {
            outputStream = connection.getOutputStream();
            try {
                inputStream = hTTPPart.toInputStream();
                byte[] bArr = new byte[65536];
                for (int read = inputStream.read(bArr); read > 0; read = inputStream.read(bArr)) {
                    outputStream.write(bArr, 0, read);
                }
                outputStream.flush();
                FileUtils.closeIO(inputStream, outputStream);
                if (httpResponseCallback != null) {
                    try {
                        httpResponseCallback.onResponse(new HttpConnectionImpl23(connection));
                        connection.disconnect();
                    } finally {
                    }
                }
                MobLog.getInstance().d("use time: " + (System.currentTimeMillis() - currentTimeMillis), new Object[0]);
            } catch (Throwable th) {
                th = th;
                FileUtils.closeIO(inputStream, outputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            outputStream = null;
        }
    }

    public void rawGet(String str, HashMap<String, String> hashMap, RawNetworkCallback rawNetworkCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        InputStreamReader inputStreamReader;
        long currentTimeMillis = System.currentTimeMillis();
        MobLog.getInstance().d("rawGet: " + str, new Object[0]);
        HttpURLConnection connection = getConnection(str, networkTimeOut);
        setHeader(connection, hashMap);
        connection.setInstanceFollowRedirects(this.instanceFollowRedirects);
        connection.connect();
        int responseCode = connection.getResponseCode();
        if (responseCode == 200) {
            if (rawNetworkCallback != null) {
                rawNetworkCallback.onResponse(connection.getInputStream());
            }
            connection.disconnect();
            MobLog.getInstance().d("use time: " + (System.currentTimeMillis() - currentTimeMillis), new Object[0]);
            return;
        }
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = null;
        try {
            inputStreamReader = new InputStreamReader(connection.getErrorStream(), Charset.forName("utf-8"));
            try {
                BufferedReader bufferedReader2 = new BufferedReader(inputStreamReader);
                try {
                    for (String readLine = bufferedReader2.readLine(); readLine != null; readLine = bufferedReader2.readLine()) {
                        if (sb.length() > 0) {
                            sb.append('\n');
                        }
                        sb.append(readLine);
                    }
                    FileUtils.closeIO(bufferedReader2, inputStreamReader);
                    connection.disconnect();
                    HashMap hashMap2 = new HashMap();
                    hashMap2.put(i.a("005k,fjfjgefj"), sb.toString());
                    hashMap2.put(i.a("0060hiXf1fhRfZfehi"), Integer.valueOf(responseCode));
                    throw new Throwable(HashonHelper.fromHashMap(hashMap2));
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = bufferedReader2;
                    FileUtils.closeIO(bufferedReader, inputStreamReader);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStreamReader = null;
        }
    }

    @Deprecated
    private void jsonPost(String str, ArrayList<KVPair<String>> arrayList, ArrayList<KVPair<String>> arrayList2, NetworkTimeOut networkTimeOut, HttpResponseCallback httpResponseCallback) throws Throwable {
        HashMap<String, Object> hashMap = new HashMap<>();
        Iterator<KVPair<String>> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            KVPair<String> next = it2.next();
            hashMap.put(next.name, next.value);
        }
        jsonPost(str, hashMap, arrayList2, networkTimeOut, httpResponseCallback);
    }

    @Deprecated
    public void jsonPost(String str, HashMap<String, Object> hashMap, ArrayList<KVPair<String>> arrayList, NetworkTimeOut networkTimeOut, HttpResponseCallback httpResponseCallback) throws Throwable {
        OutputStream outputStream;
        long currentTimeMillis = System.currentTimeMillis();
        MobLog.getInstance().i("jsonPost: " + str);
        HttpURLConnection connection = getConnection(str, networkTimeOut);
        connection.setDoOutput(true);
        connection.setChunkedStreamingMode(0);
        connection.setRequestProperty(d.f9785f, HttpHeaders.Values.APPLICATION_JSON);
        if (arrayList != null) {
            Iterator<KVPair<String>> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                KVPair<String> next = it2.next();
                connection.setRequestProperty(next.name, next.value);
            }
        }
        StringPart stringPart = new StringPart();
        if (hashMap != null) {
            stringPart.append(new Hashon().fromHashMap(hashMap));
        }
        connection.setInstanceFollowRedirects(this.instanceFollowRedirects);
        connection.connect();
        InputStream inputStream = null;
        try {
            outputStream = connection.getOutputStream();
            try {
                inputStream = stringPart.toInputStream();
                byte[] bArr = new byte[65536];
                for (int read = inputStream.read(bArr); read > 0; read = inputStream.read(bArr)) {
                    outputStream.write(bArr, 0, read);
                }
                outputStream.flush();
                FileUtils.closeIO(inputStream, outputStream);
                if (httpResponseCallback != null) {
                    try {
                        httpResponseCallback.onResponse(new HttpConnectionImpl23(connection));
                        connection.disconnect();
                    } finally {
                    }
                }
                MobLog.getInstance().i("use time: " + (System.currentTimeMillis() - currentTimeMillis));
            } catch (Throwable th) {
                th = th;
                FileUtils.closeIO(inputStream, outputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            outputStream = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public void rawPost(String str, ArrayList<KVPair<String>> arrayList, HTTPPart hTTPPart, RawNetworkCallback rawNetworkCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        OutputStream outputStream;
        InputStreamReader inputStreamReader;
        long currentTimeMillis = System.currentTimeMillis();
        MobLog.getInstance().i("rawpost: " + str);
        HttpURLConnection connection = getConnection(str, networkTimeOut);
        connection.setDoOutput(true);
        connection.setChunkedStreamingMode(0);
        if (arrayList != null) {
            Iterator<KVPair<String>> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                KVPair<String> next = it2.next();
                connection.setRequestProperty(next.name, next.value);
            }
        }
        connection.setInstanceFollowRedirects(this.instanceFollowRedirects);
        connection.connect();
        InputStream inputStream = null;
        try {
            outputStream = connection.getOutputStream();
            try {
                InputStream inputStream2 = hTTPPart.toInputStream();
                try {
                    byte[] bArr = new byte[65536];
                    for (int read = inputStream2.read(bArr); read > 0; read = inputStream2.read(bArr)) {
                        outputStream.write(bArr, 0, read);
                    }
                    outputStream.flush();
                    FileUtils.closeIO(inputStream2, outputStream);
                    int responseCode = connection.getResponseCode();
                    if (responseCode == 200) {
                        if (rawNetworkCallback != null) {
                            InputStream inputStream3 = connection.getInputStream();
                            try {
                                rawNetworkCallback.onResponse(inputStream3);
                                FileUtils.closeIO(inputStream3);
                                connection.disconnect();
                            } finally {
                            }
                        } else {
                            connection.disconnect();
                        }
                        MobLog.getInstance().i("use time: " + (System.currentTimeMillis() - currentTimeMillis));
                        return;
                    }
                    StringBuilder sb = new StringBuilder();
                    try {
                        inputStreamReader = new InputStreamReader(connection.getErrorStream(), Charset.forName("utf-8"));
                        try {
                            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
                            try {
                                for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                                    if (sb.length() > 0) {
                                        sb.append('\n');
                                    }
                                    sb.append(readLine);
                                }
                                FileUtils.closeIO(bufferedReader, inputStreamReader);
                                connection.disconnect();
                                HashMap hashMap = new HashMap();
                                hashMap.put(i.a("005kMfjfjgefj"), sb.toString());
                                hashMap.put(i.a("006;hi2fOfhYf0fehi"), Integer.valueOf(responseCode));
                                throw new Throwable(new Hashon().fromHashMap(hashMap));
                            } catch (Throwable th) {
                                th = th;
                                inputStream = bufferedReader;
                                FileUtils.closeIO(inputStream, inputStreamReader);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        inputStreamReader = null;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    inputStream = inputStream2;
                    FileUtils.closeIO(inputStream, outputStream);
                    throw th;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            th = th6;
            outputStream = null;
        }
    }

    public void rawGet(String str, HttpResponseCallback httpResponseCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        rawGet(str, new HashMap<>(), httpResponseCallback, networkTimeOut);
    }

    public void rawGet(String str, HashMap<String, String> hashMap, HttpResponseCallback httpResponseCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        long currentTimeMillis = System.currentTimeMillis();
        NLog mobLog = MobLog.getInstance();
        mobLog.d("rawGet: " + str, new Object[0]);
        HttpURLConnection connection = getConnection(str, networkTimeOut);
        setHeader(connection, hashMap);
        connection.setInstanceFollowRedirects(this.instanceFollowRedirects);
        connection.connect();
        if (connection.getResponseCode() == 301) {
            rawGet(connection.getHeaderField(i.a("008'gmgefifh[f4fggefm")), new HashMap<>(), httpResponseCallback, networkTimeOut);
        } else if (httpResponseCallback != null) {
            try {
                httpResponseCallback.onResponse(new HttpConnectionImpl23(connection));
                connection.disconnect();
            } finally {
            }
        }
        NLog mobLog2 = MobLog.getInstance();
        mobLog2.d("use time: " + (System.currentTimeMillis() - currentTimeMillis), new Object[0]);
    }

    @Deprecated
    public void httpPost(String str, ArrayList<KVPair<String>> arrayList, byte[] bArr, ArrayList<KVPair<String>> arrayList2, int i2, HttpResponseCallback httpResponseCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        HTTPPart textPostHTTPPart;
        OutputStream outputStream;
        long currentTimeMillis = System.currentTimeMillis();
        MobLog.getInstance().i("httpPost: " + str);
        HttpURLConnection connection = getConnection(str, networkTimeOut);
        connection.setDoOutput(true);
        connection.setRequestProperty(i.a("010AiigefmfmMk2fi!fIfggefm"), "Keep-Alive");
        if (bArr != null && bArr.length > 0) {
            textPostHTTPPart = getDataPostHttpPart(connection, str, bArr);
            if (i2 >= 0) {
                connection.setChunkedStreamingMode(i2);
            }
        } else {
            textPostHTTPPart = getTextPostHTTPPart(connection, str, arrayList);
            connection.setFixedLengthStreamingMode((int) textPostHTTPPart.b());
        }
        if (arrayList2 != null) {
            Iterator<KVPair<String>> it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                KVPair<String> next = it2.next();
                connection.setRequestProperty(next.name, next.value);
            }
        }
        connection.setInstanceFollowRedirects(this.instanceFollowRedirects);
        connection.connect();
        InputStream inputStream = null;
        try {
            outputStream = connection.getOutputStream();
            try {
                inputStream = textPostHTTPPart.toInputStream();
                byte[] bArr2 = new byte[65536];
                for (int read = inputStream.read(bArr2); read > 0; read = inputStream.read(bArr2)) {
                    outputStream.write(bArr2, 0, read);
                }
                outputStream.flush();
                FileUtils.closeIO(inputStream, outputStream);
                if (httpResponseCallback != null) {
                    try {
                        httpResponseCallback.onResponse(new HttpConnectionImpl23(connection));
                        connection.disconnect();
                    } finally {
                    }
                }
                MobLog.getInstance().i("use time: " + (System.currentTimeMillis() - currentTimeMillis));
            } catch (Throwable th) {
                th = th;
                FileUtils.closeIO(inputStream, outputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            outputStream = null;
        }
    }

    @Deprecated
    public String httpPost(String str, ArrayList<KVPair<String>> arrayList, int i2, NetworkTimeOut networkTimeOut) throws Throwable {
        final HashMap hashMap = new HashMap();
        httpPost(str, arrayList, i2, new HttpResponseCallback() { // from class: com.mob.tools.network.NetworkHelper.5
            @Override // com.mob.tools.network.HttpResponseCallback
            public void onResponse(HttpConnection httpConnection) throws Throwable {
                InputStreamReader inputStreamReader;
                BufferedReader bufferedReader;
                InputStreamReader inputStreamReader2;
                int responseCode = httpConnection.getResponseCode();
                BufferedReader bufferedReader2 = null;
                if (responseCode != 200 && responseCode >= 300) {
                    StringBuilder sb = new StringBuilder();
                    try {
                        inputStreamReader2 = new InputStreamReader(httpConnection.getErrorStream(), Charset.forName("utf-8"));
                        try {
                            BufferedReader bufferedReader3 = new BufferedReader(inputStreamReader2);
                            try {
                                for (String readLine = bufferedReader3.readLine(); readLine != null; readLine = bufferedReader3.readLine()) {
                                    if (sb.length() > 0) {
                                        sb.append('\n');
                                    }
                                    sb.append(readLine);
                                }
                                FileUtils.closeIO(bufferedReader3, inputStreamReader2);
                                HashMap hashMap2 = new HashMap();
                                hashMap2.put(i.a("005k.fjfjgefj"), sb.toString());
                                hashMap2.put(i.a("006Rhi_f(fhCfNfehi"), Integer.valueOf(responseCode));
                                throw new Throwable(new Hashon().fromHashMap(hashMap2));
                            } catch (Throwable th) {
                                th = th;
                                bufferedReader2 = bufferedReader3;
                                FileUtils.closeIO(bufferedReader2, inputStreamReader2);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        inputStreamReader2 = null;
                    }
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    try {
                        inputStreamReader = new InputStreamReader(httpConnection.getInputStream(), Charset.forName("utf-8"));
                        try {
                            bufferedReader = new BufferedReader(inputStreamReader);
                        } catch (Throwable th4) {
                            th = th4;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        inputStreamReader = null;
                    }
                    try {
                        for (String readLine2 = bufferedReader.readLine(); readLine2 != null; readLine2 = bufferedReader.readLine()) {
                            if (sb2.length() > 0) {
                                sb2.append('\n');
                            }
                            sb2.append(readLine2);
                        }
                        FileUtils.closeIO(bufferedReader, inputStreamReader);
                        hashMap.put("resp", sb2.toString());
                    } catch (Throwable th6) {
                        th = th6;
                        bufferedReader2 = bufferedReader;
                        FileUtils.closeIO(bufferedReader2, inputStreamReader);
                        throw th;
                    }
                }
            }
        }, networkTimeOut);
        return (String) hashMap.get("resp");
    }

    @Deprecated
    public void httpPost(String str, ArrayList<KVPair<String>> arrayList, int i2, HttpResponseCallback httpResponseCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        OutputStream outputStream;
        long currentTimeMillis = System.currentTimeMillis();
        MobLog.getInstance().i("httpPost: " + str);
        HttpURLConnection connection = getConnection(str, networkTimeOut);
        connection.setDoOutput(true);
        connection.setRequestProperty(i.a("010ZiigefmfmCk>fi3fHfggefm"), "Keep-Alive");
        if (arrayList != null) {
            Iterator<KVPair<String>> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                KVPair<String> next = it2.next();
                connection.setRequestProperty(next.name, next.value);
            }
        }
        StringPart stringPart = new StringPart();
        InputStream inputStream = null;
        stringPart.append(null);
        connection.setInstanceFollowRedirects(this.instanceFollowRedirects);
        connection.connect();
        try {
            outputStream = connection.getOutputStream();
            try {
                inputStream = stringPart.toInputStream();
                byte[] bArr = new byte[65536];
                for (int read = inputStream.read(bArr); read > 0; read = inputStream.read(bArr)) {
                    outputStream.write(bArr, 0, read);
                }
                outputStream.flush();
                FileUtils.closeIO(inputStream, outputStream);
                if (httpResponseCallback != null) {
                    try {
                        httpResponseCallback.onResponse(new HttpConnectionImpl23(connection));
                        connection.disconnect();
                    } finally {
                    }
                }
                MobLog.getInstance().i("use time: " + (System.currentTimeMillis() - currentTimeMillis));
            } catch (Throwable th) {
                th = th;
                FileUtils.closeIO(inputStream, outputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            outputStream = null;
        }
    }
}
