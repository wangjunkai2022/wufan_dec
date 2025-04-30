package com.mob.commons;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.mob.MobSDK;
import com.mob.tools.MobLog;
import com.mob.tools.log.NLog;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.HashonHelper;
import com.mob.tools.utils.MobRSA;
import com.mob.tools.utils.ResHelper;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.TreeMap;
import java.util.zip.GZIPOutputStream;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class x {

    /* renamed from: a  reason: collision with root package name */
    private static final String f53152a = com.mob.commons.a.o.a("002*fjgl");

    /* renamed from: b  reason: collision with root package name */
    private static final String f53153b = com.mob.commons.a.o.a("005LfmfdPfeLel");

    /* renamed from: c  reason: collision with root package name */
    private static final String f53154c = com.mob.commons.a.o.a("005<fmfd[fiBel");

    /* renamed from: d  reason: collision with root package name */
    private static final String f53155d = com.mob.commons.a.o.a("016!hmhlkdkjifjfjihkiigfeggdehGi2gief");

    /* renamed from: e  reason: collision with root package name */
    private static x f53156e;

    /* renamed from: f  reason: collision with root package name */
    private String f53157f;

    /* renamed from: g  reason: collision with root package name */
    private DeviceHelper f53158g;

    /* renamed from: h  reason: collision with root package name */
    private Context f53159h;

    /* renamed from: i  reason: collision with root package name */
    private TreeMap<String, Object> f53160i;

    private x() {
        Context context = MobSDK.getContext();
        this.f53159h = context;
        this.f53158g = DeviceHelper.getInstance(context);
    }

    public static x a() {
        if (f53156e == null) {
            synchronized (x.class) {
                if (f53156e == null) {
                    f53156e = new x();
                }
            }
        }
        return f53156e;
    }

    private String d() {
        this.f53160i = new TreeMap<>();
        String str = null;
        try {
            String e4 = e();
            boolean a4 = a(f());
            if (TextUtils.isEmpty(e4)) {
                str = a(this.f53160i);
            } else {
                NLog mobLog = MobLog.getInstance();
                mobLog.d("[%s] %s", f53152a, "tk status: " + a4);
                str = !a4 ? e4 : a(this.f53160i);
            }
            f53156e.f53157f = str;
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
        return str;
    }

    private String e() {
        DataInputStream dataInputStream;
        String str;
        DataInputStream dataInputStream2 = null;
        try {
            File dataCacheFile = ResHelper.getDataCacheFile(this.f53159h, f53153b);
            if (dataCacheFile == null || !dataCacheFile.exists()) {
                str = null;
            } else {
                dataInputStream = new DataInputStream(new FileInputStream(dataCacheFile));
                try {
                    str = dataInputStream.readUTF();
                    dataInputStream2 = dataInputStream;
                } catch (Throwable th) {
                    th = th;
                    try {
                        MobLog.getInstance().d(th);
                        r.a(dataInputStream);
                        return null;
                    } catch (Throwable th2) {
                        r.a(dataInputStream);
                        throw th2;
                    }
                }
            }
            r.a(dataInputStream2);
            return str;
        } catch (Throwable th3) {
            th = th3;
            dataInputStream = null;
        }
    }

    private HashMap<String, Object> f() {
        FileChannel fileChannel;
        HashMap<String, Object> hashMap;
        FileChannel fileChannel2 = null;
        try {
            File dataCacheFile = ResHelper.getDataCacheFile(this.f53159h, f53154c);
            if (dataCacheFile == null || !dataCacheFile.exists()) {
                hashMap = null;
            } else {
                fileChannel = new FileInputStream(dataCacheFile).getChannel();
                try {
                    ByteBuffer allocate = ByteBuffer.allocate((int) fileChannel.size());
                    while (fileChannel.read(allocate) > 0) {
                    }
                    hashMap = a(f53155d, allocate.array());
                    fileChannel2 = fileChannel;
                } catch (Throwable th) {
                    th = th;
                    try {
                        MobLog.getInstance().d(th);
                        r.a(fileChannel);
                        return null;
                    } catch (Throwable th2) {
                        r.a(fileChannel);
                        throw th2;
                    }
                }
            }
            r.a(fileChannel2);
            return hashMap;
        } catch (Throwable th3) {
            th = th3;
            fileChannel = null;
        }
    }

    public String b() {
        if (TextUtils.isEmpty(this.f53157f)) {
            synchronized (x.class) {
                if (TextUtils.isEmpty(this.f53157f)) {
                    return d();
                }
            }
        }
        return this.f53157f;
    }

    public String c() {
        return this.f53157f;
    }

    private boolean a(HashMap<String, Object> hashMap) {
        try {
            this.f53160i.put(com.mob.commons.a.o.a("007]giegeh.e^fdeiej"), this.f53158g.getManufacturer());
            this.f53160i.put(com.mob.commons.a.o.a("005mJfd?ij?fe"), this.f53158g.getModel());
            this.f53160i.put(com.mob.commons.a.o.a("006NghejghMkjYei"), Integer.valueOf(this.f53158g.getOSVersionInt()));
            this.f53160i.put(com.mob.commons.a.o.a("008ijkJefeh?j6fhAi"), this.f53158g.getDeviceKey());
            this.f53160i.put(com.mob.commons.a.o.a("004iOedefWi"), e.a((MobProduct) null));
            String MD5 = Data.MD5(new JSONObject(this.f53160i).toString());
            TreeMap<String, Object> treeMap = new TreeMap<>();
            treeMap.put(com.mob.commons.a.o.a("010Zgg-j3elFjVeiegfehj i$if"), MD5);
            b(treeMap);
            if (hashMap == null || hashMap.isEmpty() || !MD5.equals((String) hashMap.get(com.mob.commons.a.o.a("010Kgg'j^elTj!eiegfehj8iFif")))) {
                return true;
            }
            MobLog.getInstance().d("[%s] %s", f53152a, "No changes");
            return false;
        } catch (Throwable th) {
            MobLog.getInstance().e(th);
            return false;
        }
    }

    private void b(String str) {
        DataOutputStream dataOutputStream = null;
        try {
            File dataCacheFile = ResHelper.getDataCacheFile(this.f53159h, f53153b);
            if (dataCacheFile != null) {
                DataOutputStream dataOutputStream2 = new DataOutputStream(new FileOutputStream(dataCacheFile));
                try {
                    dataOutputStream2.writeUTF(str);
                    dataOutputStream2.flush();
                    dataOutputStream = dataOutputStream2;
                } catch (Throwable th) {
                    th = th;
                    dataOutputStream = dataOutputStream2;
                    try {
                        MobLog.getInstance().d(th);
                        r.a(dataOutputStream);
                        return;
                    } catch (Throwable th2) {
                        r.a(dataOutputStream);
                        throw th2;
                    }
                }
            }
            r.a(dataOutputStream);
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private void b(TreeMap<String, Object> treeMap) {
        FileChannel fileChannel = null;
        try {
            File dataCacheFile = ResHelper.getDataCacheFile(this.f53159h, f53154c);
            byte[] a4 = a(f53155d, treeMap);
            if (a4 != null && a4.length > 0) {
                fileChannel = new FileOutputStream(dataCacheFile).getChannel();
                fileChannel.write(ByteBuffer.wrap(a4));
                fileChannel.force(true);
            }
            r.a(fileChannel);
        } catch (Throwable th) {
            try {
                MobLog.getInstance().d(th);
                r.a(fileChannel);
            } catch (Throwable th2) {
                r.a(fileChannel);
                throw th2;
            }
        }
    }

    private String a(TreeMap<String, Object> treeMap) {
        HashMap hashMap;
        String str = null;
        if (!b.c() || treeMap == null || treeMap.isEmpty()) {
            return null;
        }
        try {
            HashMap hashMap2 = new HashMap();
            hashMap2.put(com.mob.commons.a.o.a("007?giegeh;eFfdeiej"), treeMap.get(com.mob.commons.a.o.a("007?giegeh;eFfdeiej")));
            hashMap2.put(com.mob.commons.a.o.a("005m?fd0ij]fe"), treeMap.get(com.mob.commons.a.o.a("005m?fd0ij]fe")));
            hashMap2.put(com.mob.commons.a.o.a("006:ghejgh_kj]ei"), treeMap.get(com.mob.commons.a.o.a("006:ghejgh_kj]ei")));
            hashMap2.put(com.mob.commons.a.o.a("008ijk:efeh'jHfh>i"), treeMap.get(com.mob.commons.a.o.a("008ijk:efeh'jHfh>i")));
            hashMap2.put(com.mob.commons.a.o.a("004iOedef:i"), treeMap.get(com.mob.commons.a.o.a("004iOedef:i")));
            HashMap<String, Object> hashMap3 = new HashMap<>();
            hashMap3.put(com.mob.commons.a.o.a("006<egXff=ek>j1ej"), MobSDK.getAppkey());
            hashMap3.put("m", a(HashonHelper.fromHashMap(hashMap2)));
            HashMap<String, String> hashMap4 = new HashMap<>();
            hashMap4.put(com.mob.commons.a.o.a("0134ffghCj:eiijfhGij?el;eHef.eAej"), v.c());
            hashMap4.put(com.mob.commons.a.o.a("004m.fdef?i"), com.mob.tools.a.c.a(MobSDK.getContext()).b().aY());
            NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
            networkTimeOut.readTimout = com.facebook.imagepipeline.producers.s.f13217g;
            networkTimeOut.connectionTimeout = com.facebook.imagepipeline.producers.s.f13217g;
            NetworkHelper networkHelper = new NetworkHelper();
            HashMap fromJson = HashonHelper.fromJson(networkHelper.httpPostNew(c.a(c.f52906c) + com.mob.commons.a.o.a("007hVfdVfj0elef9i"), hashMap3, hashMap4, networkTimeOut));
            if (!"200".equals(String.valueOf(fromJson.get(com.mob.commons.a.o.a("004]ehfdKij")))) || (hashMap = (HashMap) fromJson.get(com.mob.commons.a.o.a("004i7eg9eLeg"))) == null) {
                return null;
            }
            String str2 = (String) hashMap.get(com.mob.commons.a.o.a("005e!fdekSj!el"));
            try {
                f53156e.f53157f = str2;
                b(str2);
                return str2;
            } catch (Throwable th) {
                th = th;
                str = str2;
                MobLog.getInstance().e(th);
                return str;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private String a(String str) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = null;
        try {
            DataOutputStream dataOutputStream2 = new DataOutputStream(byteArrayOutputStream);
            try {
                SecureRandom secureRandom = new SecureRandom();
                dataOutputStream2.writeLong(secureRandom.nextLong());
                dataOutputStream2.writeLong(secureRandom.nextLong());
                dataOutputStream2.flush();
                r.a(dataOutputStream2);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                try {
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new GZIPOutputStream(byteArrayOutputStream2));
                    try {
                        bufferedOutputStream.write(str.getBytes("utf-8"));
                        bufferedOutputStream.flush();
                        r.a(bufferedOutputStream);
                        byte[] AES128Encode = Data.AES128Encode(byteArray, byteArrayOutputStream2.toByteArray());
                        byte[] encode = new MobRSA(1024).encode(byteArray, new BigInteger("ceeef5035212dfe7c6a0acdc0ef35ce5b118aab916477037d7381f85c6b6176fcf57b1d1c3296af0bb1c483fe5e1eb0ce9eb2953b44e494ca60777a1b033cc07", 16), new BigInteger("191737288d17e660c4b61440d5d14228a0bf9854499f9d68d8274db55d6d954489371ecf314f26bec236e58fac7fffa9b27bcf923e1229c4080d49f7758739e5bd6014383ed2a75ce1be9b0ab22f283c5c5e11216c5658ba444212b6270d629f2d615b8dfdec8545fb7d4f935b0cc10b6948ab4fc1cb1dd496a8f94b51e888dd", 16));
                        ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
                        DataOutputStream dataOutputStream3 = new DataOutputStream(byteArrayOutputStream3);
                        try {
                            dataOutputStream3.writeInt(encode.length);
                            dataOutputStream3.write(encode);
                            dataOutputStream3.writeInt(AES128Encode.length);
                            dataOutputStream3.write(AES128Encode);
                            dataOutputStream3.flush();
                            r.a(dataOutputStream3);
                            return Base64.encodeToString(byteArrayOutputStream3.toByteArray(), 2);
                        } catch (Throwable th) {
                            r.a(dataOutputStream3);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        dataOutputStream = bufferedOutputStream;
                        r.a(dataOutputStream);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
                dataOutputStream = dataOutputStream2;
                r.a(dataOutputStream);
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }

    private byte[] a(String str, TreeMap<String, Object> treeMap) {
        try {
            return Data.AES128Encode(str, new JSONObject(treeMap).toString());
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return null;
        }
    }

    private HashMap<String, Object> a(String str, byte[] bArr) {
        try {
            return HashonHelper.fromJson(Data.AES128Decode(str, bArr));
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return new HashMap<>();
        }
    }
}
