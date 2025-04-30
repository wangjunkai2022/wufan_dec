package com.mob.commons;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import com.mob.MobSDK;
import com.mob.tools.MobLog;
import com.mob.tools.network.NetCommunicator;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.FileLocker;
import com.mob.tools.utils.HashonHelper;
import com.mob.tools.utils.ResHelper;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private boolean f52756a = false;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f52757b = new byte[0];

    private String c() {
        return n.a("016Aef;g5cidkcfdbKkkZdbcjceIdHdkefAg6ci");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File d() {
        return ResHelper.getDataCacheFile(MobSDK.getContext(), j.f53038b);
    }

    private boolean e() {
        w a4 = w.a();
        String str = w.f53126a;
        long b4 = a4.b(str, -1L);
        if (b4 != -1) {
            return System.currentTimeMillis() >= b4 + (((Long) com.mob.commons.b.a(n.a("005g@cdeece2d"), 2592000L)).longValue() * 1000);
        }
        w.a().a(str, System.currentTimeMillis());
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized String b() {
        String str;
        String str2 = null;
        try {
            str = a();
        } catch (Throwable th) {
            th = th;
        }
        try {
        } catch (Throwable th2) {
            th = th2;
            str2 = str;
            MobLog.getInstance().d(th);
            str = str2;
            return str;
        }
        if (TextUtils.isEmpty(str)) {
            C0238a a4 = new b().a();
            if (a4 != null) {
                str2 = a4.c();
                HashMap<String, Object> hashMap = new HashMap<>();
                hashMap.put(n.a("004gNcbcd2g"), str2);
                a(hashMap);
                str = str2;
            }
            return str;
        }
        return str;
    }

    /* loaded from: classes4.dex */
    private static class b {

        /* renamed from: a  reason: collision with root package name */
        private static final List<String> f52767a = Arrays.asList("4c5f81a0-4728-476f-a57f-b46fa44f07d3", "f6af99e2-2b64-4eb6-aba6-4d44fb935939", "00000000-0000-0000-0000-000000000000");

        /* renamed from: b  reason: collision with root package name */
        private static final List<String> f52768b = Arrays.asList("0", "867731020001006", "00000000", "012345678912345", "1152", "000000000000000");

        /* renamed from: c  reason: collision with root package name */
        private static final List<String> f52769c = Arrays.asList("D01EB0A014660Q99", "ZTEBA611T", "C1330", "ZTEBA610T", "28Y67IJ7T3", "HMN5S1FLOQ", "01234567890123456789", n.a("007,cbcjcicjdbeccj"), "1234567890ABCDEF", "SY58S62YHN", "ACKRZJFKSN", "ZTEBA910", "LenovoTAB2A8", "ZTEBA520", net.lingala.zip4j.crypto.PBKDF2.a.f72880a, "ZTEBA510");

        /* renamed from: d  reason: collision with root package name */
        private static final List<String> f52770d = Arrays.asList("14:63:18:3D:AB:18", "00:81:df:d5:a6:a5", "080027C446C0", "08:00:27:a9:d5:97", "00:02:00:00:00:00", n.a("017<edfj8e,eded<eSeded@e?eded[eWeded1e=eded"), "ff:ff:ff:ff:ff:ff", "00:81:3c:75:32:e1", "A6:C0:80:E4:1A:50", n.a("017Meded'eQeded@e9ededYe1eded]e=eded,eYeded"), "58:02:03:04:05:06", "00:90:4c:11:22:33", "08:00:27:b2:8b:50", "90:67:1c:e6:4d:55");

        /* renamed from: e  reason: collision with root package name */
        private static final List<String> f52771e = Arrays.asList("00000000-0000-0000-0000-000000000000", "00000000000000000000000000000000");

        /* renamed from: f  reason: collision with root package name */
        private List<String> f52772f;

        /* renamed from: g  reason: collision with root package name */
        private List<String> f52773g;

        /* renamed from: h  reason: collision with root package name */
        private List<String> f52774h;

        /* renamed from: i  reason: collision with root package name */
        private List<String> f52775i;

        /* renamed from: j  reason: collision with root package name */
        private List<String> f52776j;

        private b() {
        }

        private void c() {
            c e4;
            this.f52772f = f52767a;
            this.f52773g = f52768b;
            this.f52774h = f52769c;
            this.f52775i = f52770d;
            this.f52776j = f52771e;
            if (MobSDK.SDK_VERSION_CODE + 30 >= d()) {
                e4 = w.a().e();
            } else {
                e4 = e();
            }
            if (e4 != null) {
                if (e4.c() != null) {
                    this.f52772f = e4.c();
                }
                if (e4.d() != null) {
                    this.f52773g = e4.d();
                }
                if (e4.e() != null) {
                    this.f52774h = e4.e();
                }
                if (e4.f() != null) {
                    this.f52775i = e4.f();
                }
                if (e4.g() != null) {
                    this.f52776j = e4.g();
                }
            }
        }

        private int d() {
            try {
                return Integer.parseInt(new SimpleDateFormat("yyyyMMdd").format(new Date()));
            } catch (Throwable th) {
                MobLog.getInstance().d(th);
                return 0;
            }
        }

        private c e() {
            try {
                NetworkHelper networkHelper = new NetworkHelper();
                NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
                networkTimeOut.connectionTimeout = 2000;
                networkTimeOut.readTimout = 5000;
                String httpPostNew = networkHelper.httpPostNew(com.mob.commons.c.a(com.mob.commons.c.f52908e) + "/getDuidBlacklist", null, null, networkTimeOut);
                HashMap fromJson = HashonHelper.fromJson(httpPostNew);
                if (fromJson != null && !fromJson.isEmpty()) {
                    if ("200".equals(String.valueOf(fromJson.get(n.a("0063ef;c]ceHc^cbef"))))) {
                        String valueOf = String.valueOf(fromJson.get(n.a("004g ce(c;ce")));
                        if (!TextUtils.isEmpty(valueOf)) {
                            c a4 = c.a(Data.AES128Decode(f(), Base64.decode(valueOf, 0)));
                            w.a().a(a4);
                            return a4;
                        }
                    } else {
                        throw new Throwable("RS is illegal: " + httpPostNew);
                    }
                }
            } catch (Throwable th) {
                MobLog.getInstance().d(th);
            }
            return null;
        }

        private String f() {
            String[] strArr = {"QvxJJ", "FYsAX", "cvWe", "MqlWJL"};
            return strArr[1] + strArr[3] + new String[]{"akuRE", "wbMqR", "uBs", "CDpnc"}[3];
        }

        public C0238a a() {
            try {
                c();
                return b();
            } catch (Throwable th) {
                MobLog.getInstance().d(th);
                return null;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:68:0x0137 A[Catch: all -> 0x0140, TRY_LEAVE, TryCatch #1 {all -> 0x017c, blocks: (B:3:0x0003, B:7:0x0040, B:9:0x0046, B:13:0x0054, B:15:0x005a, B:21:0x006b, B:23:0x0071, B:26:0x007a, B:28:0x0084, B:30:0x008a, B:57:0x00fe, B:59:0x0104, B:61:0x010a, B:65:0x0113, B:74:0x014b, B:75:0x015c, B:33:0x0095, B:35:0x009b, B:38:0x00a4, B:40:0x00aa, B:42:0x00b0, B:45:0x00c3, B:47:0x00c9, B:49:0x00cf, B:51:0x00e1, B:53:0x00e7, B:55:0x00ed, B:20:0x0067, B:12:0x0050, B:6:0x003c, B:66:0x0131, B:68:0x0137), top: B:80:0x0003 }] */
        /* JADX WARN: Removed duplicated region for block: B:72:0x0148  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x014b A[Catch: all -> 0x017c, TryCatch #1 {all -> 0x017c, blocks: (B:3:0x0003, B:7:0x0040, B:9:0x0046, B:13:0x0054, B:15:0x005a, B:21:0x006b, B:23:0x0071, B:26:0x007a, B:28:0x0084, B:30:0x008a, B:57:0x00fe, B:59:0x0104, B:61:0x010a, B:65:0x0113, B:74:0x014b, B:75:0x015c, B:33:0x0095, B:35:0x009b, B:38:0x00a4, B:40:0x00aa, B:42:0x00b0, B:45:0x00c3, B:47:0x00c9, B:49:0x00cf, B:51:0x00e1, B:53:0x00e7, B:55:0x00ed, B:20:0x0067, B:12:0x0050, B:6:0x003c, B:66:0x0131, B:68:0x0137), top: B:80:0x0003 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.mob.commons.a.C0238a b() {
            /*
                Method dump skipped, instructions count: 389
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mob.commons.a.b.b():com.mob.commons.a$a");
        }

        private String a(long j4) {
            try {
                String uuid = UUID.randomUUID().toString();
                return TextUtils.isEmpty(uuid) ? b(j4) : uuid;
            } catch (Throwable th) {
                MobLog.getInstance().d(th);
                return null;
            }
        }

        private String b(long j4) {
            DataOutputStream dataOutputStream;
            String str = null;
            try {
                try {
                    long nextLong = new SecureRandom().nextLong();
                    long currentTimeMillis = j4 + System.currentTimeMillis();
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                    try {
                        dataOutputStream.writeLong(nextLong);
                        dataOutputStream.writeLong(currentTimeMillis);
                        str = Data.byteToHex(byteArrayOutputStream.toByteArray());
                        dataOutputStream.flush();
                        dataOutputStream.close();
                    } catch (Throwable th) {
                        th = th;
                        try {
                            MobLog.getInstance().d(th);
                            if (dataOutputStream != null) {
                                dataOutputStream.flush();
                                dataOutputStream.close();
                            }
                            return str;
                        } catch (Throwable th2) {
                            if (dataOutputStream != null) {
                                try {
                                    dataOutputStream.flush();
                                    dataOutputStream.close();
                                } catch (Throwable th3) {
                                    MobLog.getInstance().d(th3);
                                }
                            }
                            throw th2;
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    dataOutputStream = null;
                }
            } catch (Throwable th5) {
                MobLog.getInstance().d(th5);
            }
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized String a() {
        String str;
        str = null;
        try {
            C0238a f4 = w.a().f();
            if (f4 != null && !TextUtils.isEmpty(f4.c())) {
                str = f4.c();
            } else {
                HashMap<String, Object> a4 = a(false);
                if (a4 != null) {
                    str = (String) a4.get(n.a("004g=cbcdLg"));
                }
            }
        } finally {
            return str;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private List<String> f52777a;

        /* renamed from: b  reason: collision with root package name */
        private List<String> f52778b;

        /* renamed from: c  reason: collision with root package name */
        private List<String> f52779c;

        /* renamed from: d  reason: collision with root package name */
        private List<String> f52780d;

        /* renamed from: e  reason: collision with root package name */
        private List<String> f52781e;

        public c(List<String> list, List<String> list2, List<String> list3, List<String> list4, List<String> list5) {
            this.f52777a = list;
            this.f52778b = list2;
            this.f52779c = list3;
            this.f52780d = list4;
            this.f52781e = list5;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x002f A[Catch: all -> 0x009e, TryCatch #0 {all -> 0x009e, blocks: (B:4:0x0007, B:6:0x0013, B:8:0x0017, B:14:0x0027, B:16:0x002f, B:18:0x0033, B:24:0x0043, B:26:0x004b, B:28:0x004f, B:34:0x005f, B:36:0x0067, B:38:0x006b, B:44:0x007b, B:46:0x0083, B:48:0x0087, B:54:0x0097, B:50:0x008f, B:52:0x0093, B:40:0x0073, B:42:0x0077, B:30:0x0057, B:32:0x005b, B:20:0x003b, B:22:0x003f, B:10:0x001f, B:12:0x0023), top: B:59:0x0007 }] */
        /* JADX WARN: Removed duplicated region for block: B:26:0x004b A[Catch: all -> 0x009e, TryCatch #0 {all -> 0x009e, blocks: (B:4:0x0007, B:6:0x0013, B:8:0x0017, B:14:0x0027, B:16:0x002f, B:18:0x0033, B:24:0x0043, B:26:0x004b, B:28:0x004f, B:34:0x005f, B:36:0x0067, B:38:0x006b, B:44:0x007b, B:46:0x0083, B:48:0x0087, B:54:0x0097, B:50:0x008f, B:52:0x0093, B:40:0x0073, B:42:0x0077, B:30:0x0057, B:32:0x005b, B:20:0x003b, B:22:0x003f, B:10:0x001f, B:12:0x0023), top: B:59:0x0007 }] */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0067 A[Catch: all -> 0x009e, TryCatch #0 {all -> 0x009e, blocks: (B:4:0x0007, B:6:0x0013, B:8:0x0017, B:14:0x0027, B:16:0x002f, B:18:0x0033, B:24:0x0043, B:26:0x004b, B:28:0x004f, B:34:0x005f, B:36:0x0067, B:38:0x006b, B:44:0x007b, B:46:0x0083, B:48:0x0087, B:54:0x0097, B:50:0x008f, B:52:0x0093, B:40:0x0073, B:42:0x0077, B:30:0x0057, B:32:0x005b, B:20:0x003b, B:22:0x003f, B:10:0x001f, B:12:0x0023), top: B:59:0x0007 }] */
        /* JADX WARN: Removed duplicated region for block: B:46:0x0083 A[Catch: all -> 0x009e, TryCatch #0 {all -> 0x009e, blocks: (B:4:0x0007, B:6:0x0013, B:8:0x0017, B:14:0x0027, B:16:0x002f, B:18:0x0033, B:24:0x0043, B:26:0x004b, B:28:0x004f, B:34:0x005f, B:36:0x0067, B:38:0x006b, B:44:0x007b, B:46:0x0083, B:48:0x0087, B:54:0x0097, B:50:0x008f, B:52:0x0093, B:40:0x0073, B:42:0x0077, B:30:0x0057, B:32:0x005b, B:20:0x003b, B:22:0x003f, B:10:0x001f, B:12:0x0023), top: B:59:0x0007 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.mob.commons.a.c a(java.lang.String r8) {
            /*
                boolean r0 = android.text.TextUtils.isEmpty(r8)
                r1 = 0
                if (r0 != 0) goto La6
                java.util.HashMap r8 = com.mob.tools.utils.HashonHelper.fromJson(r8)     // Catch: java.lang.Throwable -> L9e
                java.lang.String r0 = "idfas"
                java.lang.Object r0 = r8.get(r0)     // Catch: java.lang.Throwable -> L9e
                if (r0 == 0) goto L26
                boolean r2 = r0 instanceof java.lang.String     // Catch: java.lang.Throwable -> L9e
                if (r2 == 0) goto L1f
                java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L9e
                java.util.List r0 = b(r0)     // Catch: java.lang.Throwable -> L9e
            L1d:
                r3 = r0
                goto L27
            L1f:
                boolean r2 = r0 instanceof java.util.List     // Catch: java.lang.Throwable -> L9e
                if (r2 == 0) goto L26
                java.util.List r0 = (java.util.List) r0     // Catch: java.lang.Throwable -> L9e
                goto L1d
            L26:
                r3 = r1
            L27:
                java.lang.String r0 = "ieid"
                java.lang.Object r0 = r8.get(r0)     // Catch: java.lang.Throwable -> L9e
                if (r0 == 0) goto L42
                boolean r2 = r0 instanceof java.lang.String     // Catch: java.lang.Throwable -> L9e
                if (r2 == 0) goto L3b
                java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L9e
                java.util.List r0 = b(r0)     // Catch: java.lang.Throwable -> L9e
            L39:
                r4 = r0
                goto L43
            L3b:
                boolean r2 = r0 instanceof java.util.List     // Catch: java.lang.Throwable -> L9e
                if (r2 == 0) goto L42
                java.util.List r0 = (java.util.List) r0     // Catch: java.lang.Throwable -> L9e
                goto L39
            L42:
                r4 = r1
            L43:
                java.lang.String r0 = "snid"
                java.lang.Object r0 = r8.get(r0)     // Catch: java.lang.Throwable -> L9e
                if (r0 == 0) goto L5e
                boolean r2 = r0 instanceof java.lang.String     // Catch: java.lang.Throwable -> L9e
                if (r2 == 0) goto L57
                java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L9e
                java.util.List r0 = b(r0)     // Catch: java.lang.Throwable -> L9e
            L55:
                r5 = r0
                goto L5f
            L57:
                boolean r2 = r0 instanceof java.util.List     // Catch: java.lang.Throwable -> L9e
                if (r2 == 0) goto L5e
                java.util.List r0 = (java.util.List) r0     // Catch: java.lang.Throwable -> L9e
                goto L55
            L5e:
                r5 = r1
            L5f:
                java.lang.String r0 = "mcid"
                java.lang.Object r0 = r8.get(r0)     // Catch: java.lang.Throwable -> L9e
                if (r0 == 0) goto L7a
                boolean r2 = r0 instanceof java.lang.String     // Catch: java.lang.Throwable -> L9e
                if (r2 == 0) goto L73
                java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L9e
                java.util.List r0 = b(r0)     // Catch: java.lang.Throwable -> L9e
            L71:
                r6 = r0
                goto L7b
            L73:
                boolean r2 = r0 instanceof java.util.List     // Catch: java.lang.Throwable -> L9e
                if (r2 == 0) goto L7a
                java.util.List r0 = (java.util.List) r0     // Catch: java.lang.Throwable -> L9e
                goto L71
            L7a:
                r6 = r1
            L7b:
                java.lang.String r0 = "oiid"
                java.lang.Object r8 = r8.get(r0)     // Catch: java.lang.Throwable -> L9e
                if (r8 == 0) goto L96
                boolean r0 = r8 instanceof java.lang.String     // Catch: java.lang.Throwable -> L9e
                if (r0 == 0) goto L8f
                java.lang.String r8 = (java.lang.String) r8     // Catch: java.lang.Throwable -> L9e
                java.util.List r8 = b(r8)     // Catch: java.lang.Throwable -> L9e
            L8d:
                r7 = r8
                goto L97
            L8f:
                boolean r0 = r8 instanceof java.util.List     // Catch: java.lang.Throwable -> L9e
                if (r0 == 0) goto L96
                java.util.List r8 = (java.util.List) r8     // Catch: java.lang.Throwable -> L9e
                goto L8d
            L96:
                r7 = r1
            L97:
                com.mob.commons.a$c r8 = new com.mob.commons.a$c     // Catch: java.lang.Throwable -> L9e
                r2 = r8
                r2.<init>(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L9e
                return r8
            L9e:
                r8 = move-exception
                com.mob.tools.log.NLog r0 = com.mob.tools.MobLog.getInstance()
                r0.d(r8)
            La6:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mob.commons.a.c.a(java.lang.String):com.mob.commons.a$c");
        }

        public HashMap<String, Object> b() {
            HashMap<String, Object> hashMap = new HashMap<>();
            hashMap.put("idfas", this.f52777a);
            hashMap.put("ieid", this.f52778b);
            hashMap.put("snid", this.f52779c);
            hashMap.put("mcid", this.f52780d);
            hashMap.put("oiid", this.f52781e);
            return hashMap;
        }

        public List<String> c() {
            return this.f52777a;
        }

        public List<String> d() {
            return this.f52778b;
        }

        public List<String> e() {
            return this.f52779c;
        }

        public List<String> f() {
            return this.f52780d;
        }

        public List<String> g() {
            return this.f52781e;
        }

        private static List<String> b(String str) {
            String[] split;
            ArrayList arrayList = new ArrayList();
            try {
                return (TextUtils.isEmpty(str) || (split = str.split(",")) == null || split.length <= 0) ? arrayList : new ArrayList(Arrays.asList(split));
            } catch (Throwable th) {
                MobLog.getInstance().d(th);
                return arrayList;
            }
        }

        public String a() {
            return HashonHelper.fromHashMap(b());
        }
    }

    public void a(MobProduct mobProduct) {
        boolean z3;
        boolean z4;
        boolean z5 = false;
        MobLog.getInstance().d("di init", new Object[0]);
        synchronized (this.f52757b) {
            String a4 = a(e.f53005a);
            HashMap<String, Object> a5 = a(false);
            boolean z6 = true;
            if (a4 != null) {
                z4 = !TextUtils.equals(a4, (String) a5.get(n.a("004gHcbcd.g")));
                a5.put(n.a("004gHcbcdHg"), a4);
                z3 = true;
            } else {
                z3 = false;
                z4 = false;
            }
            boolean a6 = a(a5, z4);
            boolean e4 = e();
            MobLog.getInstance().d("map: " + a5 + "\nisCh: " + a6 + "\nisG: " + e4, new Object[0]);
            z5 = (a6 || e4) ? true : true;
            this.f52756a = z5;
            if (z5) {
                b(a5);
                z3 = true;
            }
            if (!a(a5, mobProduct)) {
                z6 = z3;
            }
            if (this.f52756a) {
                a(a5, (String) a5.get(n.a("004g4cbcd6g")));
            }
            if (z6) {
                a(a5);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x01f6 A[Catch: all -> 0x0225, TryCatch #4 {all -> 0x0225, blocks: (B:3:0x0002, B:5:0x0018, B:6:0x0026, B:8:0x004b, B:21:0x008c, B:23:0x0096, B:29:0x00a9, B:31:0x00af, B:50:0x00fc, B:85:0x015a, B:87:0x0164, B:88:0x016d, B:92:0x0187, B:105:0x01c8, B:107:0x01d2, B:109:0x01d8, B:110:0x01db, B:112:0x01f6, B:113:0x01fb, B:115:0x0209, B:116:0x020e, B:101:0x01b2, B:25:0x009c, B:52:0x0101, B:54:0x0107, B:79:0x0145, B:81:0x014e, B:44:0x00e4, B:46:0x00ee, B:32:0x00b4, B:34:0x00be, B:15:0x0070, B:17:0x007a, B:9:0x0054, B:11:0x005e, B:93:0x0194, B:97:0x019c, B:38:0x00cc, B:40:0x00d6), top: B:125:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0209 A[Catch: all -> 0x0225, TryCatch #4 {all -> 0x0225, blocks: (B:3:0x0002, B:5:0x0018, B:6:0x0026, B:8:0x004b, B:21:0x008c, B:23:0x0096, B:29:0x00a9, B:31:0x00af, B:50:0x00fc, B:85:0x015a, B:87:0x0164, B:88:0x016d, B:92:0x0187, B:105:0x01c8, B:107:0x01d2, B:109:0x01d8, B:110:0x01db, B:112:0x01f6, B:113:0x01fb, B:115:0x0209, B:116:0x020e, B:101:0x01b2, B:25:0x009c, B:52:0x0101, B:54:0x0107, B:79:0x0145, B:81:0x014e, B:44:0x00e4, B:46:0x00ee, B:32:0x00b4, B:34:0x00be, B:15:0x0070, B:17:0x007a, B:9:0x0054, B:11:0x005e, B:93:0x0194, B:97:0x019c, B:38:0x00cc, B:40:0x00d6), top: B:125:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x014e A[Catch: all -> 0x0152, TRY_LEAVE, TryCatch #4 {all -> 0x0225, blocks: (B:3:0x0002, B:5:0x0018, B:6:0x0026, B:8:0x004b, B:21:0x008c, B:23:0x0096, B:29:0x00a9, B:31:0x00af, B:50:0x00fc, B:85:0x015a, B:87:0x0164, B:88:0x016d, B:92:0x0187, B:105:0x01c8, B:107:0x01d2, B:109:0x01d8, B:110:0x01db, B:112:0x01f6, B:113:0x01fb, B:115:0x0209, B:116:0x020e, B:101:0x01b2, B:25:0x009c, B:52:0x0101, B:54:0x0107, B:79:0x0145, B:81:0x014e, B:44:0x00e4, B:46:0x00ee, B:32:0x00b4, B:34:0x00be, B:15:0x0070, B:17:0x007a, B:9:0x0054, B:11:0x005e, B:93:0x0194, B:97:0x019c, B:38:0x00cc, B:40:0x00d6), top: B:125:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0164 A[Catch: all -> 0x0225, TryCatch #4 {all -> 0x0225, blocks: (B:3:0x0002, B:5:0x0018, B:6:0x0026, B:8:0x004b, B:21:0x008c, B:23:0x0096, B:29:0x00a9, B:31:0x00af, B:50:0x00fc, B:85:0x015a, B:87:0x0164, B:88:0x016d, B:92:0x0187, B:105:0x01c8, B:107:0x01d2, B:109:0x01d8, B:110:0x01db, B:112:0x01f6, B:113:0x01fb, B:115:0x0209, B:116:0x020e, B:101:0x01b2, B:25:0x009c, B:52:0x0101, B:54:0x0107, B:79:0x0145, B:81:0x014e, B:44:0x00e4, B:46:0x00ee, B:32:0x00b4, B:34:0x00be, B:15:0x0070, B:17:0x007a, B:9:0x0054, B:11:0x005e, B:93:0x0194, B:97:0x019c, B:38:0x00cc, B:40:0x00d6), top: B:125:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x019b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(java.util.HashMap<java.lang.String, java.lang.Object> r13) {
        /*
            Method dump skipped, instructions count: 558
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mob.commons.a.b(java.util.HashMap):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mob.commons.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0238a {

        /* renamed from: a  reason: collision with root package name */
        private String f52760a;

        /* renamed from: b  reason: collision with root package name */
        private long f52761b;

        /* renamed from: c  reason: collision with root package name */
        private String f52762c;

        /* renamed from: d  reason: collision with root package name */
        private long f52763d;

        /* renamed from: e  reason: collision with root package name */
        private String f52764e;

        public C0238a(String str, long j4, String str2, long j5, String str3) {
            this.f52760a = str;
            this.f52761b = j4;
            this.f52762c = str2;
            this.f52763d = j5;
            this.f52764e = str3;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x004d A[Catch: all -> 0x0079, TryCatch #0 {all -> 0x0079, blocks: (B:4:0x0006, B:6:0x0022, B:8:0x0026, B:14:0x003b, B:16:0x004d, B:18:0x0051, B:19:0x0058, B:21:0x005c, B:22:0x0063, B:10:0x002e, B:12:0x0032), top: B:28:0x0006 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.mob.commons.a.C0238a a(java.lang.String r10) {
            /*
                boolean r0 = android.text.TextUtils.isEmpty(r10)
                if (r0 != 0) goto L81
                java.util.HashMap r10 = com.mob.tools.utils.HashonHelper.fromJson(r10)     // Catch: java.lang.Throwable -> L79
                java.lang.String r0 = "004gWcbcdXg"
                java.lang.String r0 = com.mob.commons.n.a(r0)     // Catch: java.lang.Throwable -> L79
                java.lang.Object r0 = r10.get(r0)     // Catch: java.lang.Throwable -> L79
                java.lang.String r2 = java.lang.String.valueOf(r0)     // Catch: java.lang.Throwable -> L79
                java.lang.String r0 = "gt"
                java.lang.Object r0 = r10.get(r0)     // Catch: java.lang.Throwable -> L79
                r3 = 0
                if (r0 == 0) goto L3a
                boolean r1 = r0 instanceof java.lang.Long     // Catch: java.lang.Throwable -> L79
                if (r1 == 0) goto L2e
                java.lang.Long r0 = (java.lang.Long) r0     // Catch: java.lang.Throwable -> L79
                long r0 = r0.longValue()     // Catch: java.lang.Throwable -> L79
            L2c:
                r5 = r0
                goto L3b
            L2e:
                boolean r1 = r0 instanceof java.lang.Integer     // Catch: java.lang.Throwable -> L79
                if (r1 == 0) goto L3a
                java.lang.Integer r0 = (java.lang.Integer) r0     // Catch: java.lang.Throwable -> L79
                int r0 = r0.intValue()     // Catch: java.lang.Throwable -> L79
                long r0 = (long) r0     // Catch: java.lang.Throwable -> L79
                goto L2c
            L3a:
                r5 = r3
            L3b:
                java.lang.String r0 = "genType"
                java.lang.Object r0 = r10.get(r0)     // Catch: java.lang.Throwable -> L79
                java.lang.String r0 = java.lang.String.valueOf(r0)     // Catch: java.lang.Throwable -> L79
                java.lang.String r1 = "expTime"
                java.lang.Object r1 = r10.get(r1)     // Catch: java.lang.Throwable -> L79
                if (r1 == 0) goto L63
                boolean r7 = r1 instanceof java.lang.Long     // Catch: java.lang.Throwable -> L79
                if (r7 == 0) goto L58
                java.lang.Long r1 = (java.lang.Long) r1     // Catch: java.lang.Throwable -> L79
                long r3 = r1.longValue()     // Catch: java.lang.Throwable -> L79
                goto L63
            L58:
                boolean r7 = r1 instanceof java.lang.Integer     // Catch: java.lang.Throwable -> L79
                if (r7 == 0) goto L63
                java.lang.Integer r1 = (java.lang.Integer) r1     // Catch: java.lang.Throwable -> L79
                int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L79
                long r3 = (long) r1     // Catch: java.lang.Throwable -> L79
            L63:
                r7 = r3
                java.lang.String r1 = "gp"
                java.lang.Object r10 = r10.get(r1)     // Catch: java.lang.Throwable -> L79
                java.lang.String r10 = java.lang.String.valueOf(r10)     // Catch: java.lang.Throwable -> L79
                com.mob.commons.a$a r9 = new com.mob.commons.a$a     // Catch: java.lang.Throwable -> L79
                r1 = r9
                r3 = r5
                r5 = r0
                r6 = r7
                r8 = r10
                r1.<init>(r2, r3, r5, r6, r8)     // Catch: java.lang.Throwable -> L79
                return r9
            L79:
                r10 = move-exception
                com.mob.tools.log.NLog r0 = com.mob.tools.MobLog.getInstance()
                r0.d(r10)
            L81:
                r10 = 0
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mob.commons.a.C0238a.a(java.lang.String):com.mob.commons.a$a");
        }

        public HashMap<String, Object> b() {
            HashMap<String, Object> hashMap = new HashMap<>();
            hashMap.put(n.a("004g-cbcd:g"), this.f52760a);
            hashMap.put("gt", Long.valueOf(this.f52761b));
            hashMap.put("genType", this.f52762c);
            hashMap.put("expTime", Long.valueOf(this.f52763d));
            hashMap.put("gp", this.f52764e);
            return hashMap;
        }

        public String c() {
            return this.f52760a;
        }

        public long d() {
            return this.f52761b;
        }

        public String e() {
            return this.f52762c;
        }

        public long f() {
            return this.f52763d;
        }

        public String g() {
            return this.f52764e;
        }

        public String a() {
            try {
                return HashonHelper.fromHashMap(b());
            } catch (Throwable th) {
                MobLog.getInstance().d(th);
                return null;
            }
        }

        public boolean a(long j4) {
            long j5 = this.f52763d;
            return j5 == 0 || j4 + (j5 * 1000) <= System.currentTimeMillis();
        }
    }

    private String a(String str) {
        try {
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
        }
        if (com.mob.commons.b.c()) {
            C0238a f4 = w.a().f();
            if (f4 == null || f4.a(w.a().b("key_request_duid_time", 0L)) || t.a().d()) {
                DeviceHelper deviceHelper = DeviceHelper.getInstance(MobSDK.getContext());
                HashMap<String, Object> hashMap = new HashMap<>();
                hashMap.put(n.a("004d!dcceKc"), 1);
                hashMap.put("iemt", deviceHelper.getIMEI());
                hashMap.put("snmt", deviceHelper.getSerialno());
                hashMap.put(n.a("005k$db7ghBdc"), deviceHelper.getModel());
                hashMap.put(n.a("0078egcecfKc)dbcgch"), deviceHelper.getManufacturer());
                hashMap.put("admt", deviceHelper.getAdvertisingID());
                hashMap.put("oamt", com.mob.tools.a.c.a(MobSDK.getContext()).b().aX());
                hashMap.put("ismt", deviceHelper.getIMSI());
                hashMap.put("ssnmt", deviceHelper.getSimSerialNumber());
                hashMap.put("inpkgt", Long.valueOf(deviceHelper.getAppLastUpdateTime()));
                hashMap.put("btt", Long.valueOf(SystemClock.elapsedRealtime()));
                hashMap.put("rdid", t.a().e());
                hashMap.put("v", t.a().b());
                hashMap.put(com.umeng.analytics.pro.c.N, t.a().f());
                hashMap.put("drmid", t.a().g());
                if (f4 == null) {
                    hashMap.put(n.a("004g-cbcd[g"), str);
                    hashMap.put("genType", "common");
                } else {
                    hashMap.put(n.a("004gRcbcdWg"), f4.c());
                    hashMap.put("gt", Long.valueOf(f4.d()));
                    hashMap.put("genType", f4.e());
                    hashMap.put("expTime", Long.valueOf(f4.f()));
                    hashMap.put("gp", f4.g());
                }
                NetCommunicator netCommunicator = new NetCommunicator(1024, "ceeef5035212dfe7c6a0acdc0ef35ce5b118aab916477037d7381f85c6b6176fcf57b1d1c3296af0bb1c483fe5e1eb0ce9eb2953b44e494ca60777a1b033cc07", "191737288d17e660c4b61440d5d14228a0bf9854499f9d68d8274db55d6d954489371ecf314f26bec236e58fac7fffa9b27bcf923e1229c4080d49f7758739e5bd6014383ed2a75ce1be9b0ab22f283c5c5e11216c5658ba444212b6270d629f2d615b8dfdec8545fb7d4f935b0cc10b6948ab4fc1cb1dd496a8f94b51e888dd");
                HashMap hashMap2 = (HashMap) netCommunicator.requestSynchronized(hashMap, com.mob.commons.c.a(com.mob.commons.c.f52908e) + "/v3/dgen", false);
                if (hashMap2 != null) {
                    w.a().a("key_request_duid_time", System.currentTimeMillis());
                    Object obj = hashMap2.get("rdid");
                    if (obj != null) {
                        t.a().a(String.valueOf(obj));
                    }
                    C0238a a4 = C0238a.a(HashonHelper.fromHashMap(hashMap2));
                    if (a4 != null) {
                        w.a().a(a4);
                        return a4.c();
                    }
                }
                return null;
            }
            return null;
        }
        return null;
    }

    private boolean a(HashMap<String, Object> hashMap, MobProduct mobProduct) {
        if (mobProduct == null) {
            mobProduct = new MobProduct() { // from class: com.mob.commons.Authorizer$1
                @Override // com.mob.commons.MobProduct
                public String getProductTag() {
                    return n.a("006[ffekfhfhekde");
                }

                @Override // com.mob.commons.MobProduct
                public int getSdkver() {
                    return MobSDK.SDK_VERSION_CODE;
                }
            };
        }
        boolean z3 = false;
        try {
            HashMap hashMap2 = (HashMap) hashMap.get(n.a("007:ceSdd8dfcjegdb"));
            if (hashMap2 == null) {
                hashMap2 = new HashMap();
                hashMap.put(n.a("007BceJdd5dfcjegdb"), hashMap2);
                z3 = true;
            }
            HashMap hashMap3 = (HashMap) hashMap2.get(DeviceHelper.getInstance(MobSDK.getContext()).getPackageName());
            String str = hashMap3 != null ? (String) hashMap3.get(mobProduct.getProductTag()) : null;
            String appkey = MobSDK.getAppkey();
            if (str == null || !str.equals(appkey)) {
                if (a(mobProduct, hashMap)) {
                    return true;
                }
            }
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
        return z3;
    }

    private boolean a(MobProduct mobProduct, HashMap<String, Object> hashMap) throws Throwable {
        if (com.mob.commons.b.c()) {
            DeviceHelper deviceHelper = DeviceHelper.getInstance(MobSDK.getContext());
            HashMap<String, Object> hashMap2 = new HashMap<>();
            hashMap2.put(n.a("007dRcgdbAg*cbcfWc"), mobProduct.getProductTag());
            C0238a f4 = w.a().f();
            String c4 = f4 != null ? f4.c() : null;
            String valueOf = String.valueOf(deviceHelper.getPackageName());
            hashMap2.put(n.a("006NcePddEci>hXch"), MobSDK.getAppkey());
            hashMap2.put(n.a("004g[cbcd%g"), c4);
            hashMap2.put(n.a("006IceNdddVciee"), valueOf);
            hashMap2.put(n.a("0060ce ddihAcg"), String.valueOf(deviceHelper.getAppVersion()));
            hashMap2.put(n.a("006<ef@gEci:ihYcg"), String.valueOf(mobProduct.getSdkver()));
            hashMap2.put(n.a("007[cj6hcCecdbcgci"), String.valueOf(deviceHelper.getDetailNetworkTypeForStatic()));
            HashMap<String, String> hashMap3 = new HashMap<>();
            hashMap3.put(n.a("013>ddefZhLcgghdfWghYcj5cMcdEc2ch"), v.c());
            hashMap3.put(n.a("004kHdbcdEg"), DeviceHelper.getInstance(MobSDK.getContext()).getODH());
            NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
            networkTimeOut.readTimout = 10000;
            networkTimeOut.connectionTimeout = 10000;
            HashMap fromJson = HashonHelper.fromJson(new NetworkHelper().httpPostNew(com.mob.commons.c.a(com.mob.commons.c.f52908e) + n.a("006fg!efcdeecj"), hashMap2, hashMap3, networkTimeOut));
            if (n.a("004c_cgcb=h").equals(String.valueOf(fromJson.get(n.a("004;cg!h?cbSd"))))) {
                this.f52756a = true;
            }
            if ("200".equals(String.valueOf(fromJson.get(n.a("0062ef1cSceJcAcbef"))))) {
                HashMap hashMap4 = (HashMap) hashMap.get(n.a("007<ce(dd9dfcjegdb"));
                HashMap hashMap5 = (HashMap) hashMap4.get(valueOf);
                if (hashMap5 == null) {
                    hashMap5 = new HashMap();
                }
                hashMap5.put(mobProduct.getProductTag(), MobSDK.getAppkey());
                hashMap4.put(valueOf, hashMap5);
                hashMap.put(n.a("007'ce-ddLdfcjegdb"), hashMap4);
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(File file, HashMap<String, Object> hashMap) {
        FileOutputStream fileOutputStream;
        try {
            byte[] a4 = a(DeviceHelper.getInstance(MobSDK.getContext()).getModel(), hashMap);
            ResHelper.deleteFileAndFolder(file);
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            file.createNewFile();
            FileChannel fileChannel = null;
            try {
                fileOutputStream = new FileOutputStream(file);
                try {
                    fileChannel = fileOutputStream.getChannel();
                    fileChannel.write(ByteBuffer.wrap(a4));
                    fileChannel.force(true);
                    r.a(fileChannel, fileOutputStream);
                } catch (Throwable th) {
                    th = th;
                    r.a(fileChannel, fileOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
            }
        } catch (Throwable th3) {
            MobLog.getInstance().d(th3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static HashMap<String, Object> b(File file) {
        FileChannel fileChannel;
        if (file.exists()) {
            FileChannel fileChannel2 = null;
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    fileChannel2 = fileInputStream.getChannel();
                    ByteBuffer allocate = ByteBuffer.allocate((int) fileChannel2.size());
                    while (fileChannel2.read(allocate) > 0) {
                    }
                    HashMap<String, Object> a4 = a(DeviceHelper.getInstance(MobSDK.getContext()).getModel(), allocate.array());
                    r.a(fileChannel2, fileInputStream);
                    return a4;
                } catch (Throwable th) {
                    th = th;
                    fileChannel = fileChannel2;
                    fileChannel2 = fileInputStream;
                    try {
                        MobLog.getInstance().d(th);
                        r.a(fileChannel, fileChannel2);
                        return new HashMap<>();
                    } catch (Throwable th2) {
                        r.a(fileChannel, fileChannel2);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                fileChannel = null;
            }
        }
        return new HashMap<>();
    }

    private void a(HashMap<String, Object> hashMap, String str) {
        try {
            if (com.mob.commons.b.c()) {
                b(hashMap);
                HashMap hashMap2 = new HashMap();
                hashMap2.put(n.a("005cVdbciWh_cj"), x.a().b());
                for (Map.Entry entry : ((HashMap) hashMap.get(n.a("010ghiUcdcfAh?dfcjegdb"))).entrySet()) {
                    hashMap2.put(entry.getKey(), entry.getValue());
                }
                try {
                    hashMap2.put(n.a("0075cfcecgcgcdLh2cg"), Integer.valueOf(Integer.parseInt(String.valueOf(hashMap2.get(n.a("007Zcfcecgcgcd;h^cg"))))));
                } catch (Throwable unused) {
                }
                DeviceHelper deviceHelper = DeviceHelper.getInstance(MobSDK.getContext());
                hashMap2.put(n.a("004g$cbcdJg"), str);
                String[] queryIMEI = deviceHelper.queryIMEI();
                if (queryIMEI != null && queryIMEI.length > 0) {
                    hashMap2.put("iemtarr", queryIMEI);
                }
                HashMap<String, Long> memoryInfo = deviceHelper.getMemoryInfo();
                HashMap<String, HashMap<String, Long>> sizeInfo = deviceHelper.getSizeInfo();
                if (memoryInfo != null) {
                    hashMap2.put(n.a("003Hcgce8k"), memoryInfo.get(n.a("005cHdb%c1cedc")));
                }
                if (sizeInfo != null) {
                    HashMap<String, Long> hashMap3 = sizeInfo.get(n.a("006_ef0gTcfcecgTg"));
                    if (hashMap3 != null) {
                        hashMap2.put(n.a("013Sef7g_cfcecg8g)dg0c3dbcgceeeMh"), hashMap3.get(n.a("005cNdb[c6cedc")));
                    }
                    HashMap<String, Long> hashMap4 = sizeInfo.get(n.a("004gHceOc ce"));
                    if (hashMap4 != null) {
                        hashMap2.put(n.a("011g9ce8c4cedgCcLdbcgceee,h"), hashMap4.get(n.a("005c_db*cFcedc")));
                    }
                }
                hashMap2.put(n.a("006@cgdbWk dfZk%ee"), deviceHelper.getMIUIVersion());
                if (TextUtils.isEmpty((String) hashMap2.get("iemt"))) {
                    hashMap2.put("iemt", com.mob.tools.a.c.a(MobSDK.getContext()).b().a(true));
                }
                if (TextUtils.isEmpty((String) hashMap2.get("ismt"))) {
                    hashMap2.put("ismt", com.mob.tools.a.c.a(MobSDK.getContext()).b().b(true));
                }
                String encodeToString = Base64.encodeToString(Data.AES128Encode(c(), HashonHelper.fromHashMap(hashMap2)), 2);
                HashMap<String, Object> hashMap5 = new HashMap<>();
                hashMap5.put("m", encodeToString);
                NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
                networkTimeOut.readTimout = com.facebook.imagepipeline.producers.s.f13217g;
                networkTimeOut.connectionTimeout = com.facebook.imagepipeline.producers.s.f13217g;
                NetworkHelper networkHelper = new NetworkHelper();
                String str2 = com.mob.commons.c.a(com.mob.commons.c.f52908e) + n.a("006fgQcdcjegdb");
                HashMap<String, String> hashMap6 = new HashMap<>();
                hashMap6.put(n.a("013!ddef7hZcgghdfCgh7cj]c%cd6c(ch"), v.c());
                hashMap6.put(n.a("004k6dbcd0g"), com.mob.tools.a.c.a(MobSDK.getContext()).b().aY());
                if ("200".equals(String.valueOf(HashonHelper.fromJson(networkHelper.httpPostNew(str2, hashMap5, hashMap6, networkTimeOut)).get(n.a("006BefUcCceLc*cbef"))))) {
                    w.a().a(w.f53126a, System.currentTimeMillis());
                }
            }
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
        }
    }

    private HashMap<String, Object> a(boolean z3) {
        File d4;
        try {
            if (z3) {
                d4 = ResHelper.getCacheRootFile(MobSDK.getContext(), j.f53038b);
            } else {
                d4 = d();
            }
            return a(d4);
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return null;
        }
    }

    private void a(final HashMap<String, Object> hashMap) {
        l.a(l.a(l.f53047c), new k() { // from class: com.mob.commons.a.1
            @Override // com.mob.commons.k
            public boolean a(FileLocker fileLocker) {
                try {
                    a.b(a.this.d(), hashMap);
                    return false;
                } catch (Throwable th) {
                    MobLog.getInstance().w(th);
                    return false;
                }
            }
        });
    }

    private boolean a(HashMap<String, Object> hashMap, boolean z3) {
        HashMap hashMap2;
        int i2;
        if (hashMap != null && !hashMap.isEmpty() && (hashMap2 = (HashMap) hashMap.get(n.a("010ghiBcdcf6hYdfcjegdb"))) != null && !hashMap2.isEmpty()) {
            DeviceHelper deviceHelper = DeviceHelper.getInstance(MobSDK.getContext());
            Object obj = hashMap2.get("admt");
            String str = null;
            try {
                str = deviceHelper.getAdvertisingID();
            } catch (Throwable th) {
                MobLog.getInstance().w(th);
            }
            boolean z4 = (str == null || str.equals(obj)) ? false : true;
            Object obj2 = hashMap2.get("ssnmt");
            String simSerialNumber = deviceHelper.getSimSerialNumber();
            if (simSerialNumber != null && !simSerialNumber.equals(obj2)) {
                z4 = true;
            }
            Object obj3 = hashMap2.get("iemt");
            String imei = deviceHelper.getIMEI();
            if (imei == null || imei.equals(obj3)) {
                i2 = 0;
            } else {
                z4 = true;
                i2 = 1;
            }
            Object obj4 = hashMap2.get("ismt");
            String imsi = deviceHelper.getIMSI();
            if (imsi != null && !imsi.equals(obj4)) {
                i2 |= 2;
                z4 = true;
            }
            if (z3) {
                i2 |= 4;
            }
            Object obj5 = hashMap2.get(n.a("004)dbcecdBg"));
            String aX = com.mob.tools.a.c.a(MobSDK.getContext()).b().aX();
            if ((obj5 == null && !TextUtils.isEmpty(aX)) || (obj5 != null && !String.valueOf(obj5).equals(aX))) {
                i2 |= 8;
                z4 = true;
            }
            Object obj6 = hashMap2.get("rdid");
            String c4 = t.a().c();
            if ((obj6 == null && !TextUtils.isEmpty(c4)) || (obj6 != null && !String.valueOf(obj6).equals(c4))) {
                i2 |= 16;
                z4 = true;
            }
            Object obj7 = hashMap2.get("drmid");
            String g4 = t.a().g();
            if ((obj7 == null && !TextUtils.isEmpty(g4)) || (obj7 != null && !String.valueOf(obj7).equals(g4))) {
                i2 |= 32;
                z4 = true;
            }
            Object obj8 = hashMap2.get(com.umeng.analytics.pro.c.N);
            String f4 = t.a().f();
            if ((obj8 == null && !TextUtils.isEmpty(f4)) || (obj8 != null && !String.valueOf(obj8).equals(f4))) {
                i2 |= 64;
                z4 = true;
            }
            Object obj9 = hashMap2.get(n.a("004OcbJg8cd1g"));
            String ud = DeviceHelper.getInstance(MobSDK.getContext()).getUD();
            if ((obj9 == null && !TextUtils.isEmpty(ud)) || (obj9 != null && !String.valueOf(obj9).equals(ud))) {
                i2 |= 128;
            }
            Object obj10 = hashMap2.get("v");
            String b4 = t.a().b();
            if ((obj10 == null && !TextUtils.isEmpty(b4)) || (obj10 != null && !String.valueOf(obj10).equals(b4))) {
                z4 = true;
            }
            hashMap2.put("cid_modify", Integer.valueOf(i2));
            if (z4) {
                return true;
            }
            Object obj11 = hashMap2.get("snmt");
            String serialno = deviceHelper.getSerialno();
            if (serialno != null && !serialno.equals(obj11)) {
                return true;
            }
            Object obj12 = hashMap2.get(n.a("005k!db.gh?dc"));
            String model = deviceHelper.getModel();
            if (model != null && !model.equals(obj12)) {
                return true;
            }
            Object obj13 = hashMap2.get(n.a("007XegcecfMc*dbcgch"));
            String manufacturer = deviceHelper.getManufacturer();
            if (manufacturer != null && !manufacturer.equals(obj13)) {
                return true;
            }
            Object obj14 = hashMap2.get(n.a("007IcfcecgcgcdIhAcg"));
            String carrier = deviceHelper.getCarrier();
            if (carrier != null && !carrier.equals(obj14)) {
                return true;
            }
            Object obj15 = hashMap2.get("ismtarr");
            String[] queryIMSI = deviceHelper.queryIMSI();
            if (queryIMSI != null && queryIMSI.length > 0) {
                if (obj15 == null) {
                    return true;
                }
                try {
                    ArrayList arrayList = (ArrayList) obj15;
                    if (arrayList.size() != queryIMSI.length) {
                        return true;
                    }
                    boolean z5 = false;
                    for (String str2 : queryIMSI) {
                        Iterator it2 = arrayList.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                if (str2.equals((String) it2.next())) {
                                    z5 = false;
                                    break;
                                }
                            } else {
                                z5 = true;
                                break;
                            }
                        }
                    }
                    if (z5) {
                        return true;
                    }
                } catch (Throwable unused) {
                }
            }
            Object obj16 = hashMap2.get(n.a("0062efchef1ih-cg"));
            String oSVersionName = deviceHelper.getOSVersionName();
            if (oSVersionName != null && !oSVersionName.equals(obj16)) {
                return true;
            }
            Object obj17 = hashMap2.get(n.a("002)ck$d"));
            boolean cx = deviceHelper.cx();
            if (obj17 != null && String.valueOf(cx ? 1 : 0).equals(String.valueOf(obj17))) {
                Object obj18 = hashMap2.get(n.a("007Jebcg^h1ceci[hg"));
                boolean isRooted = deviceHelper.isRooted();
                return (obj18 == null && isRooted) || !(obj18 == null || String.valueOf(obj18).equals(String.valueOf(isRooted)));
            }
        }
        return true;
    }

    private HashMap<String, Object> a(File file) {
        FileInputStream fileInputStream;
        ObjectInputStream objectInputStream;
        HashMap<String, Object> hashMap = null;
        if (file.exists() && file.isFile()) {
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    objectInputStream = new ObjectInputStream(fileInputStream);
                    try {
                        hashMap = (HashMap) objectInputStream.readObject();
                    } catch (Throwable unused) {
                    }
                } catch (Throwable unused2) {
                    objectInputStream = null;
                }
            } catch (Throwable unused3) {
                fileInputStream = null;
                objectInputStream = null;
            }
            if (hashMap != null) {
                try {
                    if (!hashMap.isEmpty() && hashMap.keySet().contains(n.a("004gVcbcd g"))) {
                        file.delete();
                        b(d(), hashMap);
                        r.a(fileInputStream, objectInputStream);
                    }
                } catch (Throwable th) {
                    try {
                        MobLog.getInstance().w(th);
                        r.a(fileInputStream, objectInputStream);
                    } catch (Throwable th2) {
                        r.a(fileInputStream, objectInputStream);
                        throw th2;
                    }
                }
            }
            hashMap = b(file);
            r.a(fileInputStream, objectInputStream);
        }
        return hashMap;
    }

    private static byte[] a(String str, HashMap<String, Object> hashMap) {
        String fromHashMap = HashonHelper.fromHashMap(hashMap);
        try {
            return Data.AES128Encode(str, fromHashMap);
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return fromHashMap.getBytes();
        }
    }

    private static HashMap<String, Object> a(String str, byte[] bArr) {
        try {
            return HashonHelper.fromJson(Data.AES128Decode(str, bArr));
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return new HashMap<>();
        }
    }
}
