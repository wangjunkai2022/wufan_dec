package com.mob.commons;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import android.util.Base64;
import android.util.SparseArray;
import com.mob.MobSDK;
import com.mob.tools.MDP;
import com.mob.tools.MobLog;
import com.mob.tools.log.NLog;
import com.mob.tools.network.NetCommunicator;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.FileLocker;
import com.mob.tools.utils.HashonHelper;
import com.mob.tools.utils.MobRSA;
import com.mob.tools.utils.ResHelper;
import com.mob.tools.utils.SQLiteHelper;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.zip.GZIPOutputStream;
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static d f52992a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile SQLiteHelper.SingleTableDB f52993b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private static final b[] f53000a = new b[3];

        /* renamed from: b  reason: collision with root package name */
        private long f53001b;

        /* renamed from: c  reason: collision with root package name */
        private HashMap<String, Object> f53002c;

        private b(long j4, HashMap<String, Object> hashMap) {
            this.f53001b = j4;
            this.f53002c = hashMap;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                l.a(l.a(l.f53046b), new k() { // from class: com.mob.commons.d.b.1
                    @Override // com.mob.commons.k
                    public boolean a(FileLocker fileLocker) {
                        c a4;
                        try {
                            ContentValues contentValues = new ContentValues();
                            contentValues.put(o.a("004dFde<li"), String.valueOf(b.this.f53001b));
                            DeviceHelper deviceHelper = DeviceHelper.getInstance(MobSDK.getContext());
                            if (b.this.f53002c != null) {
                                b.this.f53002c.put(o.a("0062dfYeeCdjHiHdi"), MobSDK.getAppkey());
                                b.this.f53002c.put(o.a("006RdfYeee%djff"), deviceHelper.getPackageName());
                                b.this.f53002c.put(o.a("006%dfUeeji>dh"), deviceHelper.getAppVersionName());
                                long longValue = ((Long) com.mob.commons.b.a(o.a("010Vfg3d>dhdfWdiJffdieg=h"), 0L)).longValue();
                                if (longValue != 0) {
                                    b.this.f53002c.put(o.a("0104fgWd3dhdfWdiYffdieg*h"), Long.valueOf(longValue));
                                }
                            }
                            contentValues.put(o.a("004h*df8dYdf"), Base64.encodeToString(Data.AES128Encode(Data.rawMD5(deviceHelper.getManufacturer()), HashonHelper.fromHashMap(b.this.f53002c).getBytes("utf-8")), 2));
                            SQLiteHelper.insert(d.f52993b, contentValues);
                            ((Long) com.mob.commons.b.a(o.a("004hiOdc+e"), 2L)).longValue();
                            String networkType = deviceHelper.getNetworkType();
                            long j4 = (networkType == null || o.a("004TdkecdkJi").equals(networkType)) ? 120L : 120L;
                            if (!com.mob.commons.b.c() || (a4 = c.a()) == null) {
                                return false;
                            }
                            if (j4 <= 0) {
                                a4.run();
                                return false;
                            } else if (com.mob.commons.a.o.a().a(j4, a4)) {
                                return false;
                            } else {
                                a4.c();
                                return false;
                            }
                        } catch (Throwable th) {
                            MobLog.getInstance().w(th);
                            return false;
                        }
                    }
                });
            } finally {
                try {
                } finally {
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b b(long j4, HashMap<String, Object> hashMap) {
            b[] bVarArr = f53000a;
            synchronized (bVarArr) {
                for (int i2 = 0; i2 < 3; i2++) {
                    b bVar = bVarArr[i2];
                    if (bVar != null) {
                        bVar.f53001b = j4;
                        HashMap<String, Object> hashMap2 = bVar.f53002c;
                        if (hashMap2 != null) {
                            hashMap2.clear();
                        }
                        bVar.f53002c = hashMap;
                        bVarArr[i2] = null;
                        return bVar;
                    }
                }
                return new b(j4, hashMap);
            }
        }

        private void a() {
            try {
                b[] bVarArr = f53000a;
                synchronized (bVarArr) {
                    for (int i2 = 0; i2 < 3; i2++) {
                        if (bVarArr[i2] == null) {
                            this.f53001b = 0L;
                            HashMap<String, Object> hashMap = this.f53002c;
                            if (hashMap != null) {
                                hashMap.clear();
                            }
                            this.f53002c = null;
                            bVarArr[i2] = this;
                            return;
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    /* loaded from: classes4.dex */
    private static class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private static final c[] f53004a;

        static {
            f53004a = r0;
            c[] cVarArr = {new c()};
        }

        private c() {
        }

        static /* synthetic */ c a() {
            return b();
        }

        private static c b() {
            c[] cVarArr = f53004a;
            synchronized (cVarArr) {
                c cVar = cVarArr[0];
                if (cVar != null) {
                    cVarArr[0] = null;
                    return cVar;
                }
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c() {
            try {
                c[] cVarArr = f53004a;
                synchronized (cVarArr) {
                    if (cVarArr[0] == null) {
                        cVarArr[0] = this;
                    }
                }
            } catch (Throwable unused) {
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                String[][] strArr = new String[50];
                int a4 = a(strArr);
                while (a4 > 0) {
                    SparseArray<String> a5 = a(strArr, a4);
                    if (a5 == null) {
                        break;
                    }
                    if (a5.size() > 0) {
                        a(a5);
                    }
                    if (a4 < 50) {
                        break;
                    }
                    a4 = a(strArr);
                }
            } finally {
                try {
                } finally {
                }
            }
        }

        private int a(String[][] strArr) {
            Cursor cursor = null;
            int i2 = 0;
            try {
                cursor = SQLiteHelper.query(d.f52993b, new String[]{o.a("004dHdeMli"), o.a("004h,df^d%df")}, null, null, null);
                if (cursor == null) {
                    if (cursor != null) {
                        try {
                            cursor.close();
                        } catch (Throwable unused) {
                        }
                    }
                    return 0;
                } else if (!cursor.moveToFirst()) {
                    try {
                        cursor.close();
                    } catch (Throwable unused2) {
                    }
                    return 0;
                } else {
                    long currentTimeMillis = System.currentTimeMillis();
                    int i4 = 0;
                    try {
                        do {
                            try {
                                String[] strArr2 = new String[2];
                                strArr2[0] = cursor.getString(0);
                                strArr2[1] = cursor.getString(1);
                                long j4 = -1;
                                try {
                                    j4 = Long.parseLong(strArr2[0]);
                                } catch (Throwable unused3) {
                                }
                                if (j4 <= currentTimeMillis) {
                                    strArr[i4] = strArr2;
                                    i4++;
                                }
                                if (i4 >= strArr.length) {
                                    break;
                                }
                            } catch (Throwable th) {
                                th = th;
                                i2 = i4;
                                try {
                                    MobLog.getInstance().w(th);
                                    if (cursor != null) {
                                        try {
                                            cursor.close();
                                        } catch (Throwable unused4) {
                                        }
                                    }
                                    return i2;
                                } catch (Throwable th2) {
                                    if (cursor != null) {
                                        try {
                                            cursor.close();
                                        } catch (Throwable unused5) {
                                        }
                                    }
                                    throw th2;
                                }
                            }
                        } while (cursor.moveToNext());
                        break;
                        cursor.close();
                    } catch (Throwable unused6) {
                        return i4;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }

        private int a(SparseArray<String> sparseArray) {
            try {
                StringBuilder sb = new StringBuilder();
                int size = sparseArray.size();
                for (int i2 = 0; i2 < size; i2++) {
                    if (sb.length() > 0) {
                        sb.append(", ");
                    }
                    sb.append('\'');
                    sb.append(sparseArray.valueAt(i2));
                    sb.append('\'');
                }
                SQLiteHelper.SingleTableDB singleTableDB = d.f52993b;
                return SQLiteHelper.delete(singleTableDB, "time in (" + sb.toString() + ")", null);
            } catch (Throwable th) {
                MobLog.getInstance().w(th);
                return 0;
            }
        }

        private SparseArray<String> a(String[][] strArr, int i2) {
            try {
                SparseArray<String> sparseArray = new SparseArray<>();
                HashMap hashMap = new HashMap();
                DeviceHelper deviceHelper = DeviceHelper.getInstance(MobSDK.getContext());
                hashMap.put(o.a("004e.eddf2d"), Integer.valueOf(deviceHelper.getPlatformCode()));
                hashMap.put(o.a("006hij)dedg4i"), deviceHelper.getDeviceKey());
                hashMap.put(o.a("005lFec(hi,ed"), deviceHelper.getModel());
                hashMap.put(o.a("004h3dcdeLh"), e.a((MobProduct) null));
                hashMap.put("iemt", deviceHelper.getIMEI());
                hashMap.put("snmt", deviceHelper.getSerialno());
                hashMap.put(o.a("0115dk$idPfdecdhdj0d;di<ei"), deviceHelper.getDetailNetworkTypeForStatic());
                hashMap.put(o.a("015h(df9d1dfef2idDfdecdhdjeidiCei"), Integer.valueOf(deviceHelper.getDataNtType()));
                ArrayList arrayList = new ArrayList();
                byte[] rawMD5 = Data.rawMD5(deviceHelper.getManufacturer());
                for (int i4 = 0; i4 < i2; i4++) {
                    String[] strArr2 = strArr[i4];
                    HashMap fromJson = HashonHelper.fromJson(new String(Data.AES128Decode(rawMD5, Base64.decode(strArr2[1], 2)), "utf-8").trim());
                    sparseArray.put(i4, strArr2[0]);
                    arrayList.add(fromJson);
                }
                if (arrayList.isEmpty()) {
                    return new SparseArray<>();
                }
                hashMap.put(o.a("005h1dfNdYdffg"), arrayList);
                hashMap.put(o.a("005d8ecdjQi,dk"), x.a().b());
                HashMap<String, String> hashMap2 = new HashMap<>();
                hashMap2.put(o.a("013[eefgXi$dhhiegGhi9dk1d;deAdWdi"), v.c());
                hashMap2.put(o.a("004l)ecdeVh"), com.mob.tools.a.c.a(MobSDK.getContext()).b().aY());
                NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
                networkTimeOut.readTimout = com.facebook.imagepipeline.producers.s.f13217g;
                networkTimeOut.connectionTimeout = com.facebook.imagepipeline.producers.s.f13217g;
                NetworkHelper networkHelper = new NetworkHelper();
                if ("200".equals(String.valueOf(HashonHelper.fromJson(networkHelper.httpPostWithBytes(com.mob.commons.c.a(com.mob.commons.c.f52906c) + "/v6/gcl", a(HashonHelper.fromHashMap(hashMap)), hashMap2, networkTimeOut)).get(o.a("006SfgBdDdf6dOdcfg"))))) {
                    return sparseArray;
                }
                return null;
            } catch (Throwable th) {
                MobLog.getInstance().w(th);
                return null;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        private static byte[] a(String str) throws Throwable {
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
                            try {
                                DataOutputStream dataOutputStream3 = new DataOutputStream(byteArrayOutputStream3);
                                try {
                                    dataOutputStream3.writeInt(encode.length);
                                    dataOutputStream3.write(encode);
                                    dataOutputStream3.writeInt(AES128Encode.length);
                                    dataOutputStream3.write(AES128Encode);
                                    dataOutputStream3.flush();
                                    r.a(dataOutputStream3);
                                    return byteArrayOutputStream3.toByteArray();
                                } catch (Throwable th) {
                                    th = th;
                                    dataOutputStream2 = dataOutputStream3;
                                    r.a(dataOutputStream2);
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            dataOutputStream = bufferedOutputStream;
                            r.a(dataOutputStream);
                            throw th;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    dataOutputStream = dataOutputStream2;
                    r.a(dataOutputStream);
                    throw th;
                }
            } catch (Throwable th6) {
                th = th6;
            }
        }
    }

    private d() {
        try {
            Context context = MobSDK.getContext();
            String str = j.f53037a;
            File dataCacheFile = ResHelper.getDataCacheFile(context, str);
            if (dataCacheFile.exists() && dataCacheFile.length() > 209715200) {
                dataCacheFile.delete();
                dataCacheFile = ResHelper.getDataCacheFile(MobSDK.getContext(), str);
            }
            String absolutePath = dataCacheFile.getAbsolutePath();
            f52993b = SQLiteHelper.getDatabase(absolutePath, o.a("008?fidfWdUdfhd3i_df]e") + "_1");
            f52993b.addField(o.a("004d*de.li"), o.a("004diDdlMd"), true);
            f52993b.addField(o.a("004hGdfNdUdf"), o.a("004di!dl'd"), true);
            c a4 = c.a();
            if (a4 != null) {
                u.f53115d.execute(a4);
            }
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
        }
    }

    public static synchronized d a() {
        d dVar;
        synchronized (d.class) {
            if (f52992a == null) {
                f52992a = new d();
            }
            dVar = f52992a;
        }
        return dVar;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:41:0x00fb
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    private static java.io.File b(java.lang.Object... r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mob.commons.d.b(java.lang.Object[]):java.io.File");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        boolean f52996a;

        /* renamed from: b  reason: collision with root package name */
        private String f52997b;

        /* renamed from: c  reason: collision with root package name */
        private byte[] f52998c;

        /* renamed from: d  reason: collision with root package name */
        private String f52999d;

        public a(String str, String str2) {
            this.f52996a = false;
            this.f52997b = str;
            this.f52999d = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Method[] methods;
            try {
                Method method = null;
                boolean z3 = false;
                for (Method method2 : com.mob.tools.b.a.class.getMethods()) {
                    Annotation[] annotations = method2.getAnnotations();
                    if (annotations != null) {
                        int length = annotations.length;
                        int i2 = 0;
                        while (true) {
                            if (i2 >= length) {
                                break;
                            }
                            Annotation annotation = annotations[i2];
                            if (annotation != null && annotation.annotationType() == com.mob.tools.b.b.class) {
                                method = method2;
                                z3 = true;
                                break;
                            }
                            i2++;
                        }
                        if (z3) {
                            break;
                        }
                    }
                }
                if (this.f52996a) {
                    com.mob.commons.cc.a.a(MobSDK.getContext(), this.f52998c, this.f52999d, method);
                } else {
                    com.mob.commons.cc.a.a(MobSDK.getContext(), this.f52997b, this.f52999d, method);
                }
            } catch (Throwable th) {
                try {
                    f.a().b(6, th);
                    MobLog.getInstance().d(th);
                } catch (Throwable unused) {
                }
            }
        }

        public a(byte[] bArr, String str) {
            this.f52996a = false;
            this.f52996a = true;
            this.f52998c = bArr;
            this.f52999d = str;
        }
    }

    public void a(long j4, HashMap<String, Object> hashMap) {
        boolean a4 = com.mob.commons.b.a();
        NLog mobLog = MobLog.getInstance();
        mobLog.d("DH PD: " + hashMap.get(o.a("004dZdiOei")) + ", to: " + a4, new Object[0]);
        if (a4) {
            u.f53115d.execute(b.b(j4, hashMap));
        }
    }

    public static void a(Object... objArr) {
        try {
            f.a().a(13);
            ResHelper.deleteFileAndFolder(b(objArr));
        } catch (Throwable th) {
            f.a().a(4, th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(ArrayList<HashMap<String, Object>> arrayList) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        File file = new File(MobSDK.getContext().getFilesDir(), o.a("003;fgfced"));
        Iterator<HashMap<String, Object>> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            HashMap<String, Object> next = it2.next();
            Boolean bool = (Boolean) next.get(o.a("002Adffg"));
            boolean booleanValue = bool != null ? bool.booleanValue() : false;
            String str = (String) next.get(o.a("002Ofhed"));
            String str2 = (String) next.get("m");
            String str3 = (String) next.get("args");
            Object obj = next.get(o.a("002!de>h"));
            if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
                return;
            }
            FileOutputStream fileOutputStream = null;
            String a4 = e.a((MobProduct) null);
            HashMap hashMap = new HashMap();
            hashMap.put(o.a("004h0dcdeLh"), a4);
            hashMap.put(o.a("005d<ecdj,iHdk"), x.a().b());
            hashMap.put(o.a("004l2ecde$h"), com.mob.tools.a.c.a(MobSDK.getContext()).b().aX());
            hashMap.put(o.a("010'fg0h2djgfFiWdhfgdeecdk"), Integer.valueOf(MobSDK.SDK_VERSION_CODE));
            hashMap.put(o.a("0068dfLee$dj-i8di"), MobSDK.getAppkey());
            hashMap.put(o.a("009)dfMee6eh9i>dgdh;id"), MobSDK.getAppSecret());
            hashMap.put(o.a("006h ec(lSdfdedk"), MobSDK.getDomain().getDomain());
            hashMap.put(o.a("0104fhecdhdg=iIhd?ddeXfg"), Boolean.valueOf(MobSDK.checkForceHttps()));
            hashMap.put(o.a("004i[dgXiEdl"), Long.valueOf(((Long) com.mob.commons.b.a(o.a("004iJdgDi5dl"), 5L)).longValue()));
            hashMap.put(o.a("0025dg9h"), (String) com.mob.commons.b.a(o.a("0020dg+h"), o.a("006Ugkgkglglglgl")));
            hashMap.put("usridt", v.e());
            hashMap.put(o.a("002Ade[h"), obj);
            if (!TextUtils.isEmpty(str3)) {
                hashMap.put("args", HashonHelper.fromJson(str3));
            }
            DeviceHelper deviceHelper = DeviceHelper.getInstance(MobSDK.getContext());
            hashMap.put(o.a("008hijPdedg(iNegYh"), deviceHelper.getDeviceKey());
            hashMap.put(o.a("004Zde@liUde"), deviceHelper.getIMEI());
            hashMap.put(o.a("004Tde0l5fgde"), deviceHelper.getIMSI());
            hashMap.put("sno", deviceHelper.getSerialno());
            hashMap.put("ssno", deviceHelper.getSimSerialNumber());
            hashMap.put("miui", deviceHelper.getMIUIVersion());
            hashMap.put(o.a("005l)ec2hiNed"), deviceHelper.getModel());
            hashMap.put(o.a("007;fhdfdgDdMecdhdi"), deviceHelper.getManufacturer());
            hashMap.put(o.a("0050fcdhdfdk)h"), deviceHelper.getBrand());
            hashMap.put(o.a("005^dfDhJfgde%h"), deviceHelper.getAdvertisingID());
            hashMap.put(o.a("006*dfXeeji dh"), deviceHelper.getAppVersionName());
            hashMap.put(o.a("011e9dfdgdjdfffBi]efdf,li"), deviceHelper.getPackageName());
            hashMap.put(o.a("005Efcfgfgde?h"), deviceHelper.getBssid());
            hashMap.put("osint", Integer.valueOf(deviceHelper.getOSVersionInt()));
            hashMap.put("osname", deviceHelper.getOSVersionName());
            hashMap.put("mdpName", MDP.class.getName());
            String fromHashMap = HashonHelper.fromHashMap(hashMap);
            String checkHttpRequestUrl = NetCommunicator.checkHttpRequestUrl(str);
            if (booleanValue) {
                File file2 = new File(file, str2);
                if (file2.exists() && str2.equals(Data.MD5(file2))) {
                    new Thread(new a(file2.getAbsolutePath(), fromHashMap)).start();
                } else {
                    if (file2.exists()) {
                        file2.delete();
                    }
                    file.mkdirs();
                    try {
                        FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                        try {
                            new NetworkHelper().download(checkHttpRequestUrl, fileOutputStream2, null);
                            r.a(fileOutputStream2);
                            if (file2.length() > 0 && TextUtils.equals(str2, Data.MD5(file2))) {
                                new Thread(new a(file2.getAbsolutePath(), fromHashMap)).start();
                            }
                        } catch (Throwable th) {
                            th = th;
                            fileOutputStream = fileOutputStream2;
                            r.a(fileOutputStream);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
            } else {
                File file3 = new File(file, str2);
                if (file3.exists()) {
                    file3.delete();
                }
                final byte[][] bArr = new byte[1];
                final int[] iArr = new int[1];
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream() { // from class: com.mob.commons.d.1
                        @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                        public void close() throws IOException {
                            super.close();
                            bArr[0] = ((ByteArrayOutputStream) this).buf;
                            iArr[0] = ((ByteArrayOutputStream) this).count;
                        }
                    };
                } catch (Throwable th3) {
                    th = th3;
                }
                try {
                    new NetworkHelper().download(checkHttpRequestUrl, byteArrayOutputStream, null);
                    r.a(byteArrayOutputStream);
                    new Thread(new a(byteArrayOutputStream.toByteArray(), fromHashMap)).start();
                } catch (Throwable th4) {
                    th = th4;
                    fileOutputStream = byteArrayOutputStream;
                    r.a(fileOutputStream);
                    throw th;
                }
            }
        }
    }

    public static String a(int[] iArr) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            String e4 = s.e();
            if (iArr[i2] < e4.length()) {
                sb.append((char) (e4.charAt(iArr[i2]) - 2));
            }
        }
        return sb.toString();
    }
}
