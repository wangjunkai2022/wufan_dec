package com.mob.tools.network;

import android.os.Handler;
import android.os.Message;
import android.util.Base64;
import com.facebook.imagepipeline.producers.s;
import com.mob.MobSDK;
import com.mob.commons.MobProduct;
import com.mob.commons.e;
import com.mob.commons.n;
import com.mob.commons.r;
import com.mob.commons.v;
import com.mob.mcl.b.a;
import com.mob.tools.MobLog;
import com.mob.tools.a.c;
import com.mob.tools.log.NLog;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.proguard.PublicMemberKeeper;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.HashonHelper;
import com.mob.tools.utils.MobRSA;
import com.mob.tools.utils.UIHandler;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.zip.GZIPOutputStream;
/* loaded from: classes4.dex */
public final class NetCommunicator implements PublicMemberKeeper {
    public static final String KEY_DUID_PREVIOUS = "duidPrevious";
    public static final String KEY_IS_MODIFIED = "isModified";

    /* renamed from: c  reason: collision with root package name */
    private BigInteger f53871c;

    /* renamed from: d  reason: collision with root package name */
    private BigInteger f53872d;

    /* renamed from: e  reason: collision with root package name */
    private MobRSA f53873e;

    /* renamed from: g  reason: collision with root package name */
    private NetworkHelper.NetworkTimeOut f53875g;

    /* renamed from: h  reason: collision with root package name */
    private ThreadPoolExecutor f53876h;
    public static final String KEY_DUID = n.a("004gPcbcd2g");

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadPoolExecutor f53869a = new ThreadPoolExecutor(3, 20, 60, TimeUnit.SECONDS, new LinkedBlockingDeque());

    /* renamed from: b  reason: collision with root package name */
    private SecureRandom f53870b = new SecureRandom();

    /* renamed from: f  reason: collision with root package name */
    private NetworkHelper f53874f = new NetworkHelper();

    /* loaded from: classes4.dex */
    public static class Callback<T> implements PublicMemberKeeper {
        public void onResultError(Throwable th) {
        }

        public void onResultOk(T t3) {
        }
    }

    /* loaded from: classes4.dex */
    public static class NetworkError extends Exception implements PublicMemberKeeper {
        private static final long serialVersionUID = -8447657431687664787L;

        public NetworkError(String str) {
            super(str);
        }
    }

    public NetCommunicator(int i2, String str, String str2) {
        this.f53873e = new MobRSA(i2);
        this.f53871c = new BigInteger(str, 16);
        this.f53872d = new BigInteger(str2, 16);
        NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
        this.f53875g = networkTimeOut;
        networkTimeOut.readTimout = s.f13217g;
        networkTimeOut.connectionTimeout = 5000;
        this.f53876h = f53869a;
    }

    public static String checkHttpRequestUrl(String str) {
        return r.b(str);
    }

    public static String dynamicModifyUrl(String str) {
        return r.a(str);
    }

    public static HashMap<String, String> getCommonDefaultHeaders() throws Throwable {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(n.a("003-ci;h9ch"), MobSDK.getAppkey());
        hashMap.put(n.a("013Nddef hScgghdfZgh cj%c<cd6c+ch"), v.c());
        hashMap.put(n.a("004kQdbcdLg"), c.a(MobSDK.getContext()).b().aY());
        return hashMap;
    }

    public static synchronized String getDUID(MobProduct mobProduct) {
        String a4;
        synchronized (NetCommunicator.class) {
            a4 = e.a(mobProduct);
        }
        return a4;
    }

    public static synchronized HashMap<String, Object> getDUIDWithModifyInfo(MobProduct mobProduct) {
        HashMap<String, Object> b4;
        synchronized (NetCommunicator.class) {
            b4 = e.b(mobProduct);
        }
        return b4;
    }

    public static String getSDKDomain(String str, String str2) {
        return com.mob.commons.c.a(str, str2);
    }

    public static boolean initSDKDM(HashMap<String, List<String>> hashMap) {
        return com.mob.commons.c.a(hashMap);
    }

    public void addTcpIntercept(String str) {
        try {
            a.a(str);
        } catch (Throwable unused) {
        }
    }

    public void removeTcpIntercept(String str) {
        try {
            a.b(str);
        } catch (Throwable unused) {
        }
    }

    public <T> void request(HashMap<String, Object> hashMap, String str, boolean z3, Callback<T> callback) {
        request(true, null, hashMap, str, z3, callback);
    }

    public <T> T requestSynchronized(HashMap<String, Object> hashMap, String str, boolean z3) throws Throwable {
        return (T) requestSynchronized((HashMap<String, String>) null, hashMap, str, z3);
    }

    public String requestSynchronizedGet(String str, HashMap<String, Object> hashMap, HashMap<String, String> hashMap2) throws Throwable {
        try {
            a.a((String) null);
            String a4 = a.a(false, str, hashMap, hashMap2, this.f53875g);
            NLog mobLog = MobLog.getInstance();
            mobLog.d(">>> gt res:  " + a4, new Object[0]);
            return a4;
        } catch (Throwable unused) {
            return this.f53874f.httpGetNew(str, hashMap, hashMap2, this.f53875g);
        }
    }

    public void setThreadPool(ThreadPoolExecutor threadPoolExecutor) {
        this.f53876h = threadPoolExecutor;
    }

    public <T> void request(HashMap<String, String> hashMap, HashMap<String, Object> hashMap2, String str, boolean z3, Callback<T> callback) {
        request(true, hashMap, hashMap2, str, z3, callback);
    }

    public <T> T requestSynchronized(HashMap<String, String> hashMap, HashMap<String, Object> hashMap2, String str, boolean z3) throws Throwable {
        return (T) requestSynchronized(true, hashMap, hashMap2, str, z3);
    }

    private byte[] a(byte[] bArr) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new GZIPOutputStream(byteArrayOutputStream));
        bufferedOutputStream.write(bArr);
        bufferedOutputStream.flush();
        bufferedOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    public <T> void request(final boolean z3, final HashMap<String, String> hashMap, final HashMap<String, Object> hashMap2, final String str, final boolean z4, final Callback<T> callback) {
        this.f53876h.execute(new com.mob.tools.utils.c() { // from class: com.mob.tools.network.NetCommunicator.1
            @Override // com.mob.tools.utils.c
            public void a() {
                try {
                    final Object requestSynchronized = NetCommunicator.this.requestSynchronized(z3, hashMap, hashMap2, str, z4);
                    if (callback != null) {
                        UIHandler.sendEmptyMessage(0, new Handler.Callback() { // from class: com.mob.tools.network.NetCommunicator.1.1
                            @Override // android.os.Handler.Callback
                            public boolean handleMessage(Message message) {
                                callback.onResultOk(requestSynchronized);
                                return false;
                            }
                        });
                    }
                } catch (Throwable th) {
                    MobLog.getInstance().d(th);
                    if (callback != null) {
                        UIHandler.sendEmptyMessage(0, new Handler.Callback() { // from class: com.mob.tools.network.NetCommunicator.1.2
                            @Override // android.os.Handler.Callback
                            public boolean handleMessage(Message message) {
                                callback.onResultError(th);
                                return false;
                            }
                        });
                    }
                }
            }
        });
    }

    public <T> T requestSynchronized(String str, String str2, boolean z3) throws Throwable {
        return (T) requestSynchronized((HashMap<String, String>) null, str, str2, z3);
    }

    public <T> T requestSynchronized(HashMap<String, String> hashMap, String str, String str2, boolean z3) throws Throwable {
        return (T) requestSynchronized(true, hashMap, str, str2, z3);
    }

    public <T> T requestSynchronized(boolean z3, HashMap<String, String> hashMap, HashMap<String, Object> hashMap2, String str, boolean z4) throws Throwable {
        String str2;
        if (hashMap2 != null) {
            String fromHashMap = HashonHelper.fromHashMap(hashMap2);
            if (fromHashMap.length() != 0) {
                str2 = fromHashMap;
                return (T) requestSynchronized(z3, hashMap, str2, str, z4);
            }
        }
        str2 = "{}";
        return (T) requestSynchronized(z3, hashMap, str2, str, z4);
    }

    public <T> T requestSynchronized(boolean z3, HashMap<String, String> hashMap, String str, String str2, boolean z4) throws Throwable {
        byte[] a4 = a();
        String a5 = a(a4, str, z4);
        HashMap<String, String> a6 = a(z3, hashMap, str, a5.getBytes("utf-8").length);
        boolean z5 = true;
        String[] strArr = new String[1];
        HttpResponseCallback a7 = a(a4, strArr);
        StringPart stringPart = new StringPart();
        stringPart.append(a5);
        NLog mobLog = MobLog.getInstance();
        mobLog.d(">>>  request(" + str2 + "): " + str + "\nheader = " + a6.toString(), new Object[0]);
        try {
            a.a((String) null);
        } catch (Throwable unused) {
            z5 = false;
        }
        if (z5) {
            a.a(false, str2, a6, stringPart, -1, a7, this.f53875g);
        } else {
            this.f53874f.rawPost(str2, a6, stringPart, -1, a7, this.f53875g);
        }
        if (strArr[0] != null) {
            NLog mobLog2 = MobLog.getInstance();
            mobLog2.d(">>> response(" + str2 + "): " + strArr[0], new Object[0]);
            return (T) a(strArr[0]);
        }
        return null;
    }

    private byte[] a() throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        dataOutputStream.writeLong(this.f53870b.nextLong());
        dataOutputStream.writeLong(this.f53870b.nextLong());
        dataOutputStream.flush();
        dataOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    private String a(byte[] bArr, String str, boolean z3) throws Throwable {
        byte[] bytes = str.getBytes("utf-8");
        if (z3) {
            bytes = a(bytes);
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        byte[] encode = this.f53873e.encode(bArr, this.f53871c, this.f53872d);
        dataOutputStream.writeInt(encode.length);
        dataOutputStream.write(encode);
        byte[] AES128Encode = Data.AES128Encode(bArr, bytes);
        dataOutputStream.writeInt(AES128Encode.length);
        dataOutputStream.write(AES128Encode);
        dataOutputStream.flush();
        dataOutputStream.close();
        return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
    }

    private HashMap<String, String> a(boolean z3, HashMap<String, String> hashMap, String str, int i2) throws Throwable {
        HashMap<String, String> a4 = z3 ? a(str, i2) : null;
        if (a4 == null) {
            a4 = new HashMap<>();
        }
        if (hashMap != null) {
            a4.putAll(hashMap);
        }
        return a4;
    }

    private HashMap<String, String> a(String str, int i2) throws Throwable {
        HashMap<String, String> commonDefaultHeaders = getCommonDefaultHeaders();
        String a4 = n.a("004'efcdeecj");
        commonDefaultHeaders.put(a4, Data.MD5(str + MobSDK.getAppSecret()));
        commonDefaultHeaders.put(n.a("003%ci8h*ch"), MobSDK.getAppkey());
        commonDefaultHeaders.put(n.a("014Affdbcj@chDcj8c2ghdjWhPcjee:cb"), String.valueOf(i2));
        return commonDefaultHeaders;
    }

    private HttpResponseCallback a(final byte[] bArr, final String[] strArr) {
        return new HttpResponseCallback() { // from class: com.mob.tools.network.NetCommunicator.2
            @Override // com.mob.tools.network.HttpResponseCallback
            public void onResponse(HttpConnection httpConnection) throws Throwable {
                int responseCode = httpConnection.getResponseCode();
                InputStream inputStream = responseCode == 200 ? httpConnection.getInputStream() : httpConnection.getErrorStream();
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr2 = new byte[1024];
                for (int read = inputStream.read(bArr2); read != -1; read = inputStream.read(bArr2)) {
                    byteArrayOutputStream.write(bArr2, 0, read);
                }
                inputStream.close();
                byteArrayOutputStream.close();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                if (responseCode == 200) {
                    long a4 = NetCommunicator.this.a(httpConnection);
                    if (a4 != -1 && a4 == byteArray.length) {
                        strArr[0] = NetCommunicator.this.a(bArr, byteArray);
                        return;
                    }
                    HashMap hashMap = new HashMap();
                    hashMap.put(n.a("010bccd0dg^cGce!c[cbef"), Integer.valueOf(responseCode));
                    hashMap.put(n.a("006ZefYc4ce7cEcbef"), -2);
                    hashMap.put(n.a("005hWcgcgdbcg"), "Illegal content length");
                    throw new NetworkError(HashonHelper.fromHashMap(hashMap));
                }
                HashMap fromJson = HashonHelper.fromJson(new String(byteArray, "utf-8"));
                fromJson.put(n.a("010bccdOdg4c+ce:cQcbef"), Integer.valueOf(responseCode));
                throw new NetworkError(HashonHelper.fromHashMap(fromJson));
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long a(HttpConnection httpConnection) throws Throwable {
        List<String> a4 = a(httpConnection, n.a("014$ffdbcjJch]cjXcOghdjYh:cjee7cb"));
        if (a4 == null || a4.size() <= 0) {
            return -1L;
        }
        return Long.parseLong(a4.get(0));
    }

    private List<String> a(HttpConnection httpConnection, String str) throws Throwable {
        Map<String, List<String>> headerFields = httpConnection.getHeaderFields();
        if (headerFields == null || headerFields.isEmpty()) {
            return null;
        }
        for (String str2 : headerFields.keySet()) {
            if (str2 != null && str2.equals(str)) {
                return headerFields.get(str2);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(byte[] bArr, byte[] bArr2) throws Throwable {
        return new String(Data.AES128Decode(bArr, Base64.decode(bArr2, 2)), "utf-8");
    }

    private Object a(String str) throws Throwable {
        if (str != null) {
            HashMap fromJson = HashonHelper.fromJson(str.trim());
            if (!fromJson.isEmpty()) {
                Object obj = fromJson.get(n.a("0032cgFh?ef"));
                return obj == null ? fromJson.get(n.a("004g+ce@c'ce")) : obj;
            }
            HashMap hashMap = new HashMap();
            hashMap.put(n.a("006Fef?cKceKcFcbef"), -1);
            hashMap.put(n.a("005h.cgcgdbcg"), "RS is empty");
            throw new NetworkError(HashonHelper.fromHashMap(hashMap));
        }
        HashMap hashMap2 = new HashMap();
        hashMap2.put(n.a("006[ef0c@ce!c1cbef"), -1);
        hashMap2.put(n.a("005h^cgcgdbcg"), "RS is empty");
        throw new NetworkError(HashonHelper.fromHashMap(hashMap2));
    }
}
