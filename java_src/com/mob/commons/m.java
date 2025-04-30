package com.mob.commons;

import android.content.Intent;
import android.text.TextUtils;
import android.util.Base64;
import com.mob.MobSDK;
import com.mob.tools.MobLog;
import com.mob.tools.a;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.FileLocker;
import com.mob.tools.utils.HashonHelper;
import com.mob.tools.utils.MobRSA;
import com.tencent.stat.DeviceInfo;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.zip.GZIPOutputStream;
/* loaded from: classes4.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    public static volatile boolean f53057a;

    /* renamed from: b  reason: collision with root package name */
    private static m f53058b;

    /* renamed from: c  reason: collision with root package name */
    private File f53059c;

    /* renamed from: d  reason: collision with root package name */
    private BigInteger f53060d;

    /* renamed from: e  reason: collision with root package name */
    private BigInteger f53061e;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private static final a[] f53064a = new a[2];

        /* renamed from: b  reason: collision with root package name */
        private int f53065b;

        /* renamed from: c  reason: collision with root package name */
        private int f53066c;

        /* renamed from: d  reason: collision with root package name */
        private String f53067d;

        /* renamed from: e  reason: collision with root package name */
        private String f53068e;

        private a() {
        }

        static /* synthetic */ a a() {
            return b();
        }

        private static a b() {
            a[] aVarArr = f53064a;
            synchronized (aVarArr) {
                for (int i2 = 0; i2 < 2; i2++) {
                    a aVar = aVarArr[i2];
                    if (aVar != null) {
                        aVarArr[i2] = null;
                        return aVar;
                    }
                }
                return new a();
            }
        }

        private void c() {
            try {
                a[] aVarArr = f53064a;
                synchronized (aVarArr) {
                    for (int i2 = 0; i2 < 2; i2++) {
                        if (aVarArr[i2] == null) {
                            aVarArr[i2] = this;
                            return;
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                b(this.f53065b, this.f53066c, this.f53067d, this.f53068e);
            } finally {
                try {
                } finally {
                }
            }
        }

        public a a(int i2, int i4, String str, String str2) {
            this.f53065b = i2;
            this.f53066c = i4;
            this.f53067d = str;
            this.f53068e = str2;
            return this;
        }

        private void b(final int i2, final int i4, final String str, final String str2) {
            if (m.a().a(new com.mob.tools.utils.c() { // from class: com.mob.commons.m.a.1
                @Override // com.mob.tools.utils.c
                protected void a() {
                    try {
                        HashMap hashMap = new HashMap();
                        hashMap.put(i.a("010$hi>jEflihOk0fjhifggefm"), Integer.valueOf(i2));
                        hashMap.put(i.a("006FhiNjYflgkfhhh"), str);
                        hashMap.put(i.a("004fGfkMgk"), Integer.valueOf(i4));
                        hashMap.put(i.a("005kDfjfjfh3f"), Long.valueOf(System.currentTimeMillis()));
                        hashMap.put(i.a("003nUhihh"), Base64.encodeToString(str2.getBytes("utf-8"), 2));
                        hashMap.put(i.a("005fGfg'nkZhi"), 1);
                        m.b(i4).a(HashonHelper.fromHashMap(hashMap));
                    } catch (Throwable th) {
                        MobLog.getInstance().d(th);
                    }
                }
            })) {
                c.a().run();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private static final c[] f53077a = new c[2];

        /* renamed from: b  reason: collision with root package name */
        private Runnable f53078b = new com.mob.tools.utils.c() { // from class: com.mob.commons.m.c.1
            @Override // com.mob.tools.utils.c
            protected void a() {
                m.b(1).a(new b());
            }
        };

        /* renamed from: c  reason: collision with root package name */
        private Runnable f53079c = new com.mob.tools.utils.c() { // from class: com.mob.commons.m.c.2
            @Override // com.mob.tools.utils.c
            public void a() {
                m.b(2).a(new b());
            }
        };

        private c() {
        }

        static /* synthetic */ c a() {
            return b();
        }

        private static c b() {
            c[] cVarArr = f53077a;
            synchronized (cVarArr) {
                for (int i2 = 0; i2 < 2; i2++) {
                    c cVar = cVarArr[i2];
                    if (cVar != null) {
                        cVarArr[i2] = null;
                        return cVar;
                    }
                }
                return new c();
            }
        }

        private void c() {
            try {
                c[] cVarArr = f53077a;
                synchronized (cVarArr) {
                    for (int i2 = 0; i2 < 2; i2++) {
                        if (cVarArr[i2] == null) {
                            cVarArr[i2] = this;
                            return;
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
            } finally {
                try {
                } finally {
                }
            }
            if (com.mob.commons.b.c()) {
                if (i.a("0042fmgefm_k").equals(DeviceHelper.getInstance(MobSDK.getContext()).getDetailNetworkTypeForStatic())) {
                    return;
                }
                if (((Integer) com.mob.commons.b.a(i.a("004Hfi[kIfjfj"), 1)).intValue() == 1) {
                    m.a().a(this.f53078b);
                } else {
                    m.b(1).a(((Long) com.mob.commons.b.a("cerr_max", Long.valueOf((long) com.join.mgps.Util.u.f27844c))).longValue());
                }
                if (((Integer) com.mob.commons.b.a(i.a("004Nhi4k(fjfj"), 0)).intValue() == 1) {
                    m.a().a(this.f53079c);
                } else {
                    m.b(2).a(((Long) com.mob.commons.b.a("serr_max", 20971520L)).longValue());
                }
            }
        }
    }

    private m() {
    }

    private byte[] c() throws Throwable {
        DataOutputStream dataOutputStream;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream2 = null;
        try {
            dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        } catch (Throwable th) {
            th = th;
        }
        try {
            SecureRandom secureRandom = new SecureRandom();
            dataOutputStream.writeLong(secureRandom.nextLong());
            dataOutputStream.writeLong(secureRandom.nextLong());
            dataOutputStream.flush();
            r.a(dataOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th2) {
            th = th2;
            dataOutputStream2 = dataOutputStream;
            r.a(dataOutputStream2);
            throw th;
        }
    }

    public void b() {
        u.f53114c.execute(c.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static com.mob.tools.a b(int i2) {
        String a4 = i.a("005]gn(nKfigfhh");
        return new com.mob.tools.a(a4, i.a("005]gn(nKfigfhh") + "-" + i2, 50);
    }

    public static synchronized m a() {
        m mVar;
        synchronized (m.class) {
            if (f53058b == null) {
                f53058b = new m();
            }
            mVar = f53058b;
        }
        return mVar;
    }

    /* loaded from: classes4.dex */
    private static class b implements a.InterfaceC0244a {

        /* renamed from: a  reason: collision with root package name */
        ArrayList<HashMap<String, Object>> f53074a;

        /* renamed from: b  reason: collision with root package name */
        int f53075b;

        /* renamed from: c  reason: collision with root package name */
        String f53076c;

        private b() {
            this.f53074a = new ArrayList<>();
            this.f53075b = -1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private String b(String str) throws Throwable {
            ByteArrayInputStream byteArrayInputStream;
            Throwable th;
            byte[] bArr;
            GZIPOutputStream gZIPOutputStream;
            Throwable th2;
            try {
                bArr = str.getBytes();
                byteArrayInputStream = new ByteArrayInputStream(bArr);
                try {
                    try {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                            try {
                                byte[] bArr2 = new byte[1024];
                                while (true) {
                                    int read = byteArrayInputStream.read(bArr2, 0, 1024);
                                    if (read != -1) {
                                        gZIPOutputStream.write(bArr2, 0, read);
                                    } else {
                                        try {
                                            break;
                                        } catch (Throwable unused) {
                                        }
                                    }
                                }
                                gZIPOutputStream.flush();
                                r.a(gZIPOutputStream);
                                byte[] byteArray = byteArrayOutputStream.toByteArray();
                                byteArrayOutputStream.flush();
                                String encodeToString = Base64.encodeToString(byteArray, 2);
                                r.a(byteArrayOutputStream, byteArrayInputStream);
                                return encodeToString;
                            } catch (Throwable th3) {
                                th2 = th3;
                                r.a(gZIPOutputStream);
                                throw th2;
                            }
                        } catch (Throwable th4) {
                            gZIPOutputStream = null;
                            th2 = th4;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        r.a(bArr, byteArrayInputStream);
                        throw th;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    bArr = null;
                    r.a(bArr, byteArrayInputStream);
                    throw th;
                }
            } catch (Throwable th7) {
                byteArrayInputStream = null;
                th = th7;
                bArr = null;
            }
        }

        @Override // com.mob.tools.a.InterfaceC0244a
        public void a(String str) {
            HashMap<String, Object> fromJson = HashonHelper.fromJson(str);
            try {
                this.f53075b = Integer.parseInt(String.valueOf(fromJson.get(i.a("010VhiRj_flihEk;fjhifggefm"))));
            } catch (Throwable unused) {
            }
            this.f53076c = (String) fromJson.get(i.a("006ZhiHjAflgkfhhh"));
            this.f53074a.add(fromJson);
        }

        @Override // com.mob.tools.a.InterfaceC0244a
        public boolean a() {
            HashMap<String, Object> a4 = a(this.f53075b, this.f53076c);
            a4.put(i.a("006kJfjfjJn%hihh"), this.f53074a);
            try {
                String fromHashMap = HashonHelper.fromHashMap(a4);
                this.f53074a.clear();
                String b4 = b(fromHashMap);
                if (!i.a("004-fmgefmKk").equals(DeviceHelper.getInstance(MobSDK.getContext()).getDetailNetworkTypeForStatic())) {
                    HashMap<String, Object> hashMap = new HashMap<>();
                    hashMap.put("m", b4);
                    NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
                    networkTimeOut.readTimout = 10000;
                    networkTimeOut.connectionTimeout = 10000;
                    String str = com.mob.commons.c.a(com.mob.commons.c.f52907d) + "/errlog";
                    MobLog.getInstance().d(String.format("Response(%s): %s", str, new NetworkHelper().httpPostNew(str, hashMap, null, networkTimeOut)), new Object[0]);
                    return true;
                }
                throw new IllegalStateException("network is disconnected!");
            } catch (Throwable th) {
                MobLog.getInstance().d(th);
                return false;
            }
        }

        private HashMap<String, Object> a(int i2, String str) {
            HashMap<String, Object> hashMap = new HashMap<>();
            DeviceHelper deviceHelper = DeviceHelper.getInstance(MobSDK.getContext());
            hashMap.put(i.a("003Tfl0k_fk"), MobSDK.getAppkey());
            hashMap.put(i.a("004gHgffhSf"), Integer.valueOf(deviceHelper.getPlatformCode()));
            hashMap.put(i.a("003XhiVj7fl"), str);
            hashMap.put(i.a("006=hi*j:flTlkPfj"), Integer.valueOf(i2));
            hashMap.put(i.a("007>fh@gg%fmfhLnk"), deviceHelper.getAppName());
            hashMap.put(i.a("006]fh'ggg@flhh"), deviceHelper.getPackageName());
            hashMap.put(i.a("006=fhYgglkGfj"), String.valueOf(deviceHelper.getAppVersion()));
            hashMap.put(i.a("005n5geWjk$gf"), deviceHelper.getModel());
            if (com.mob.commons.b.b()) {
                hashMap.put(i.a("008jkl.fgfiCkLfgLj"), deviceHelper.getDeviceKey());
                hashMap.put(i.a("0048feGj]fg_j"), deviceHelper.getDeviceId());
            }
            hashMap.put(i.a("006(hifkhiLlkVfj"), String.valueOf(deviceHelper.getOSVersionInt()));
            hashMap.put(i.a("011Cfm[kf3hfgefjfl,f_fk@gk"), deviceHelper.getDetailNetworkTypeForStatic());
            return hashMap;
        }
    }

    public void a(int i2, String str, int i4, String str2) {
        u.f53114c.execute(a.a().a(i4, i2, str, str2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(final Runnable runnable) {
        if (this.f53059c == null) {
            File file = new File(MobSDK.getContext().getFilesDir(), i.a("0053gngfgefifl"));
            this.f53059c = file;
            if (!file.exists()) {
                try {
                    this.f53059c.createNewFile();
                } catch (Throwable unused) {
                }
            }
        }
        return l.a(this.f53059c, new k() { // from class: com.mob.commons.m.1
            @Override // com.mob.commons.k
            public boolean a(FileLocker fileLocker) {
                try {
                    runnable.run();
                    return false;
                } catch (Throwable th) {
                    MobLog.getInstance().i(th);
                    return false;
                }
            }
        });
    }

    public int a(int i2, String str) {
        if (MobSDK.getContextSafely() == null || !f53057a) {
            return 0;
        }
        try {
            Intent intent = new Intent();
            intent.setPackage(i.a("0159fifmgnhiKe.fhfjIk^hiVjZflgngfgehh"));
            intent.putExtra(i.a("007gWfhfiflfhhhBk"), MobSDK.getContext().getPackageName());
            intent.putExtra(i.a("008gXfjfggefjfgDf]fk"), i2);
            intent.putExtra(DeviceInfo.TAG_VERSION, MobSDK.SDK_VERSION_CODE);
            intent.putExtra(i.a("003n'hihh"), a(str));
            MobSDK.getContextSafely().sendBroadcast(intent);
            return 0;
        } catch (Throwable unused) {
            return 0;
        }
    }

    private String a(String str) {
        DataOutputStream dataOutputStream;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            if (this.f53060d == null) {
                this.f53060d = new BigInteger("f53c224aefb38daa0825c1b8ea691b16d2e16db10880548afddd780c6670a091a11dafa954ea4a9483797fda1045d2693a08daa48cf9cedce1e8733b857304cb", 16);
                this.f53061e = new BigInteger("27749621e6ca022469645faed16e8261acf6af822467382d55c24bb9bc02356ab16e76ddc799dc8ba6b4f110411996eeb63505c9dcf969d3fc085d712f0f1a9713b67aa1128d7cc41bda363afb0ec7ade60e542a4e22869395331cc0096de412034551e98bb2629ae1b7168b8bc82006d064ab335d8567283e70beb6a49e9423", 16);
            }
            byte[] c4 = c();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                try {
                    byte[] encode = new MobRSA(1024).encode(c4, this.f53060d, this.f53061e);
                    dataOutputStream.writeInt(encode.length);
                    dataOutputStream.write(encode);
                    byte[] AES128Encode = Data.AES128Encode(c4, str.getBytes("utf-8"));
                    dataOutputStream.writeInt(AES128Encode.length);
                    dataOutputStream.write(AES128Encode);
                    dataOutputStream.flush();
                    r.a(dataOutputStream);
                    return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
                } catch (Throwable th) {
                    th = th;
                    r.a(dataOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                dataOutputStream = null;
            }
        } catch (Throwable th3) {
            MobLog.getInstance().d(th3);
            return null;
        }
    }
}
