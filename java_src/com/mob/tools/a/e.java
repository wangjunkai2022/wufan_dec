package com.mob.tools.a;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Build;
import android.os.Looper;
import com.mob.commons.a.o;
import com.mob.tools.MobLog;
import com.mob.tools.utils.ReflectHelper;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Enumeration;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4.dex */
public class e implements k {

    /* renamed from: a  reason: collision with root package name */
    private Context f53394a;

    /* renamed from: b  reason: collision with root package name */
    private Object f53395b;

    /* renamed from: c  reason: collision with root package name */
    private PackageManager f53396c;

    /* renamed from: d  reason: collision with root package name */
    private ConcurrentHashMap<String, Object> f53397d = new ConcurrentHashMap<>();

    /* renamed from: e  reason: collision with root package name */
    private ConcurrentHashMap<String, Integer> f53398e = new ConcurrentHashMap<>();

    /* renamed from: f  reason: collision with root package name */
    private ConcurrentHashMap<String, Long> f53399f = new ConcurrentHashMap<>();

    /* renamed from: g  reason: collision with root package name */
    private String f53400g;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static abstract class a<T> {

        /* renamed from: a  reason: collision with root package name */
        private T f53407a;

        /* renamed from: b  reason: collision with root package name */
        private long f53408b;

        /* renamed from: d  reason: collision with root package name */
        public int f53409d;

        public a(T t3) {
            this(t3, 0L);
        }

        protected abstract T b() throws Throwable;

        public a(T t3, long j4) {
            this(t3, 1, j4);
        }

        public a(T t3, int i2, long j4) {
            this.f53409d = 1;
            this.f53407a = t3;
            this.f53409d = i2;
            this.f53408b = j4;
        }
    }

    public e(Context context) {
        this.f53394a = context;
        String packageName = context.getPackageName();
        this.f53400g = packageName;
        try {
            a(packageName, 193);
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
    }

    @Override // com.mob.tools.a.k
    public String b() {
        try {
            if (Build.VERSION.SDK_INT >= 29 || !c.a(this.f53394a).b().h(com.mob.commons.j.a("035<bdbi$f9bfcabc8f8cj9cg(bfVj'bcdedebccabicjecebchdgbbeffbdjcdebbbcfcgchcgeb"))) {
                return null;
            }
            if (this.f53395b == null) {
                this.f53395b = c("phone");
            }
            return (String) a(this.f53395b, com.mob.commons.j.a("015UddOgb<cfbadadebebfbcda7gGbfceFf"), new Object[0]);
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return null;
        }
    }

    @Override // com.mob.tools.a.k
    public Enumeration<NetworkInterface> c() {
        try {
            return NetworkInterface.getNetworkInterfaces();
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return null;
        }
    }

    @Override // com.mob.tools.a.k
    public int d() {
        try {
            if (this.f53395b == null) {
                this.f53395b = c("phone");
            }
            return ((Integer) ReflectHelper.invokeInstanceMethod(this.f53395b, com.mob.commons.j.a("014IddAgbLcdEgbRdbcabfbhcgbg,cg"), new Object[0])).intValue();
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return -1;
        }
    }

    @Override // com.mob.tools.a.k
    public int e() {
        try {
            if (Build.VERSION.SDK_INT < 24 || !c.a(this.f53394a).b().h(com.mob.commons.j.a("035^bdbiDf0bfcabcCfLcj1cg3bf9jTbcdedebccabicjecebchdgbbeffbdjcdebbbcfcgchcgeb"))) {
                return -1;
            }
            if (this.f53395b == null) {
                this.f53395b = c("phone");
            }
            return ((Integer) ReflectHelper.invokeInstanceMethod(this.f53395b, com.mob.commons.j.a("018+dd gb.dgbdPbCbdcdIgb+dbcabfbhcgbgLcg"), new Object[0])).intValue();
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return -1;
        }
    }

    @Override // com.mob.tools.a.k
    public ApplicationInfo f() {
        return this.f53394a.getApplicationInfo();
    }

    @Override // com.mob.tools.a.k
    public String a() {
        try {
            if (Build.VERSION.SDK_INT >= 29 || !c.a(this.f53394a).b().h(com.mob.commons.j.a("035.bdbi_f?bfcabcVfScjKcgZbf*j3bcdedebccabicjecebchdgbbeffbdjcdebbbcfcgchcgeb"))) {
                return null;
            }
            if (this.f53395b == null) {
                this.f53395b = c("phone");
            }
            return (String) a(this.f53395b, com.mob.commons.j.a("011-ddCgb?dgCgh*bcbe g:cePf"), new Object[0]);
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return null;
        }
    }

    public Object c(String str) {
        try {
            return this.f53394a.getSystemService(str);
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return null;
        }
    }

    @Override // com.mob.tools.a.k
    public ResolveInfo b(Intent intent, int i2) {
        try {
            return (ResolveInfo) ReflectHelper.invokeInstanceMethod(this.f53394a.getPackageManager(), com.mob.commons.j.a("015=bf]g2decacb:hgZchbe.b2bc>hTbc*bYbg"), new Object[]{intent, Integer.valueOf(i2)}, new Class[]{Intent.class, Integer.TYPE});
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return null;
        }
    }

    @Override // com.mob.tools.a.k
    public String a(int i2) {
        try {
            if (Build.VERSION.SDK_INT >= 29 || !c.a(this.f53394a).b().h(com.mob.commons.j.a("035PbdbiGf,bfcabcEfHcj=cgXbfPjZbcdedebccabicjecebchdgbbeffbdjcdebbbcfcgchcgeb"))) {
                return null;
            }
            if (this.f53395b == null) {
                this.f53395b = c("phone");
            }
            return (String) a(this.f53395b, com.mob.commons.j.a("011Vdd?gbBdg$gh.bcbe6g:ceFf"), new Object[]{Integer.valueOf(i2)}, new Class[]{Integer.TYPE});
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return null;
        }
    }

    @Override // com.mob.tools.a.k
    public Location b(String str) {
        LocationManager locationManager;
        try {
            if ((c.a(this.f53394a).b().h(com.mob.commons.j.a("039AbdbiTfYbfcabc4fZcj3cg<bf*j@bcdedebccabicjcheeeeebcfcfbbdicecdebbbcidjeechcgcedjcd")) || (Build.VERSION.SDK_INT >= 29 && c.a(this.f53394a).b().h(com.mob.commons.j.a("045%bdbi$f(bfcabcNfGcj@cgBbf6j6bcdedebccabicjcheeeeebcfcfbbdhcheefhfiecdjcccddgbbcidjeechcgcedjcd")))) && (locationManager = (LocationManager) c("location")) != null) {
                return (Location) ReflectHelper.invokeInstanceMethod(locationManager, com.mob.commons.j.a("020@ddYgb cibddeQbMfhbicadbbicicabebd%bAbccabi"), str);
            }
            return null;
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return null;
        }
    }

    @Override // com.mob.tools.a.k
    public String a(String str) {
        try {
            Object invokeStaticMethod = ReflectHelper.invokeStaticMethod(ReflectHelper.importClass(com.mob.commons.j.a("027^bdbi,f%bfcabcIfXcjcadecjcfbgde4bgjZefbfca^cg5bf=bIbcJg@de")), com.mob.commons.j.a("003Kdd6gb"), str);
            return invokeStaticMethod != null ? String.valueOf(invokeStaticMethod) : "";
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return "";
        }
    }

    @Override // com.mob.tools.a.k
    public ApplicationInfo b(String str, int i2) throws PackageManager.NameNotFoundException {
        if (this.f53396c == null) {
            this.f53396c = this.f53394a.getPackageManager();
        }
        return this.f53396c.getApplicationInfo(str, i2);
    }

    @Override // com.mob.tools.a.k
    public String a(String str, String str2) {
        try {
            Object invokeStaticMethod = ReflectHelper.invokeStaticMethod(ReflectHelper.importClass(com.mob.commons.j.a("027%bdbi-fMbfcabc]f3cjcadecjcfbgde7bgj?efbfcaKcg-bfCbRbc gLde")), com.mob.commons.j.a("003Rdd(gb"), str, str2);
            if (invokeStaticMethod != null) {
                return String.valueOf(invokeStaticMethod);
            }
            return null;
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return null;
        }
    }

    @Override // com.mob.tools.a.k
    public List<ResolveInfo> a(Intent intent, int i2) {
        try {
            return (List) ReflectHelper.invokeInstanceMethod(this.f53394a.getPackageManager(), com.mob.commons.j.a("019i+ba$gTbfbgcebi;bg3biHb-cf@g>bf:h-bcbe=gUde"), new Object[]{intent, Integer.valueOf(i2)}, new Class[]{Intent.class, Integer.TYPE});
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return null;
        }
    }

    @Override // com.mob.tools.a.k
    public PackageInfo a(final String str, final int i2) throws PackageManager.NameNotFoundException {
        if (this.f53396c == null) {
            this.f53396c = this.f53394a.getPackageManager();
        }
        if (str.equals(this.f53400g)) {
            final int i4 = (i2 == 0 || i2 == 1 || i2 == 128 || i2 == 64) ? 193 : i2;
            PackageInfo packageInfo = (PackageInfo) a("gpisys-" + str + "-" + i4, new a<PackageInfo>(null) { // from class: com.mob.tools.a.e.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.mob.tools.a.e.a
                /* renamed from: a */
                public PackageInfo b() throws Throwable {
                    return e.this.f53396c.getPackageInfo(str, i4);
                }
            });
            if (packageInfo == null && i4 == 193) {
                return (PackageInfo) a("gpisys-" + str + "-" + i2, new a<PackageInfo>(null) { // from class: com.mob.tools.a.e.2
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.mob.tools.a.e.a
                    /* renamed from: a */
                    public PackageInfo b() throws Throwable {
                        return e.this.f53396c.getPackageInfo(str, i2);
                    }
                });
            }
            return packageInfo;
        }
        return this.f53396c.getPackageInfo(str, i2);
    }

    @Override // com.mob.tools.a.k
    public void a(String str, long j4, float f4, LocationListener locationListener) {
        LocationManager locationManager;
        try {
            if ((c.a(this.f53394a).b().h(com.mob.commons.j.a("0396bdbi9f4bfcabc=fHcj2cg!bf@j?bcdedebccabicjcheeeeebcfcfbbdicecdebbbcidjeechcgcedjcd")) || (Build.VERSION.SDK_INT >= 29 && c.a(this.f53394a).b().h(com.mob.commons.j.a("045*bdbiMf[bfcabcSf:cj(cgRbfTj+bcdedebccabicjcheeeeebcfcfbbdhcheefhfiecdjcccddgbbcidjeechcgcedjcd")))) && (locationManager = (LocationManager) c("location")) != null) {
                ReflectHelper.invokeInstanceMethod(locationManager, com.mob.commons.j.a("022ObfDgiTbaGg$deFb.cicabebdBbRbccabicc2cf5bdSbg3de"), new Object[]{str, Long.valueOf(j4), Float.valueOf(f4), locationListener, o.a().b()}, new Class[]{String.class, Long.TYPE, Float.TYPE, LocationListener.class, Looper.class});
            }
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
        }
    }

    @Override // com.mob.tools.a.k
    public Enumeration<InetAddress> a(NetworkInterface networkInterface) {
        try {
            return (Enumeration) ReflectHelper.invokeInstanceMethod(networkInterface, "getInetAddresses", new Object[0]);
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return null;
        }
    }

    public <T> T a(Object obj, String str, Object... objArr) {
        try {
            return (T) ReflectHelper.invokeInstanceMethod(obj, str, objArr);
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return null;
        }
    }

    public <T> T a(Object obj, String str, Object[] objArr, Class<?>[] clsArr) {
        try {
            return (T) ReflectHelper.invokeInstanceMethod(obj, str, objArr, clsArr);
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return null;
        }
    }

    private <T> T a(String str, a<T> aVar) {
        return (T) a(str, (a<Object>) aVar, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private <T> T a(java.lang.String r10, com.mob.tools.a.e.a<T> r11, boolean r12) {
        /*
            r9 = this;
            r0 = 0
            if (r10 != 0) goto L9
            java.lang.Object r10 = r11.b()     // Catch: java.lang.Throwable -> L8b
            goto L94
        L9:
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.Integer> r1 = r9.f53398e     // Catch: java.lang.Throwable -> L8b
            java.lang.Object r1 = r1.get(r10)     // Catch: java.lang.Throwable -> L8b
            java.lang.Integer r1 = (java.lang.Integer) r1     // Catch: java.lang.Throwable -> L8b
            if (r1 == 0) goto L2a
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.Object> r2 = r9.f53397d     // Catch: java.lang.Throwable -> L8b
            java.lang.Object r0 = r2.get(r10)     // Catch: java.lang.Throwable -> L8b
            if (r0 != 0) goto L2a
            int r2 = r1.intValue()     // Catch: java.lang.Throwable -> L8b
            int r3 = r11.f53409d     // Catch: java.lang.Throwable -> L8b
            if (r2 < r3) goto L2a
            if (r12 != 0) goto L2a
            java.lang.Object r10 = com.mob.tools.a.e.a.a(r11)     // Catch: java.lang.Throwable -> L8b
            return r10
        L2a:
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.Long> r2 = r9.f53399f     // Catch: java.lang.Throwable -> L8b
            java.lang.Object r2 = r2.get(r10)     // Catch: java.lang.Throwable -> L8b
            java.lang.Long r2 = (java.lang.Long) r2     // Catch: java.lang.Throwable -> L8b
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L43
            long r5 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L8b
            long r7 = r2.longValue()     // Catch: java.lang.Throwable -> L8b
            int r2 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r2 < 0) goto L43
            r3 = 1
        L43:
            if (r0 == 0) goto L49
            if (r3 != 0) goto L49
            if (r12 == 0) goto L93
        L49:
            java.lang.Object r0 = r11.b()     // Catch: java.lang.Throwable -> L8b
            if (r0 == 0) goto L70
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.Object> r12 = r9.f53397d     // Catch: java.lang.Throwable -> L8b
            r12.put(r10, r0)     // Catch: java.lang.Throwable -> L8b
            long r2 = com.mob.tools.a.e.a.b(r11)     // Catch: java.lang.Throwable -> L8b
            r5 = 0
            int r12 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
            if (r12 <= 0) goto L70
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.Long> r12 = r9.f53399f     // Catch: java.lang.Throwable -> L8b
            long r2 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L8b
            long r5 = com.mob.tools.a.e.a.b(r11)     // Catch: java.lang.Throwable -> L8b
            long r2 = r2 + r5
            java.lang.Long r2 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L8b
            r12.put(r10, r2)     // Catch: java.lang.Throwable -> L8b
        L70:
            if (r1 != 0) goto L7c
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.Integer> r12 = r9.f53398e     // Catch: java.lang.Throwable -> L8b
            java.lang.Integer r1 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Throwable -> L8b
            r12.put(r10, r1)     // Catch: java.lang.Throwable -> L8b
            goto L93
        L7c:
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.Integer> r12 = r9.f53398e     // Catch: java.lang.Throwable -> L8b
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L8b
            int r1 = r1 + r4
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Throwable -> L8b
            r12.put(r10, r1)     // Catch: java.lang.Throwable -> L8b
            goto L93
        L8b:
            r10 = move-exception
            com.mob.tools.log.NLog r12 = com.mob.tools.MobLog.getInstance()
            r12.d(r10)
        L93:
            r10 = r0
        L94:
            if (r10 != 0) goto L9a
            java.lang.Object r10 = com.mob.tools.a.e.a.a(r11)
        L9a:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mob.tools.a.e.a(java.lang.String, com.mob.tools.a.e$a, boolean):java.lang.Object");
    }
}
