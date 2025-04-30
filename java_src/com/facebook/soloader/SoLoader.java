package com.facebook.soloader;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.StrictMode;
import android.text.TextUtils;
import dalvik.system.BaseDexClassLoader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;
@ThreadSafe
/* loaded from: classes.dex */
public class SoLoader {

    /* renamed from: a  reason: collision with root package name */
    static final String f13513a = "SoLoader";

    /* renamed from: b  reason: collision with root package name */
    static final boolean f13514b = false;

    /* renamed from: c  reason: collision with root package name */
    static final boolean f13515c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    static s f13516d = null;
    @GuardedBy("sSoSourcesLock")
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static v[] f13520h = null;
    @GuardedBy("sSoSourcesLock")
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static b f13521i = null;

    /* renamed from: n  reason: collision with root package name */
    private static final String f13526n = "lib-main";

    /* renamed from: o  reason: collision with root package name */
    private static final String f13527o = "lib-";

    /* renamed from: p  reason: collision with root package name */
    public static final int f13528p = 1;

    /* renamed from: q  reason: collision with root package name */
    public static final int f13529q = 2;

    /* renamed from: r  reason: collision with root package name */
    public static final int f13530r = 4;

    /* renamed from: s  reason: collision with root package name */
    public static final int f13531s = 8;
    @GuardedBy("sSoSourcesLock")

    /* renamed from: t  reason: collision with root package name */
    private static int f13532t;

    /* renamed from: e  reason: collision with root package name */
    private static final ReentrantReadWriteLock f13517e = new ReentrantReadWriteLock();
    @GuardedBy("sSoSourcesLock")
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static t[] f13518f = null;

    /* renamed from: g  reason: collision with root package name */
    private static int f13519g = 0;
    @GuardedBy("SoLoader.class")

    /* renamed from: j  reason: collision with root package name */
    private static final HashSet<String> f13522j = new HashSet<>();
    @GuardedBy("SoLoader.class")

    /* renamed from: k  reason: collision with root package name */
    private static final Map<String, Object> f13523k = new HashMap();

    /* renamed from: l  reason: collision with root package name */
    private static final Set<String> f13524l = Collections.newSetFromMap(new ConcurrentHashMap());
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private static u f13525m = null;

    /* JADX INFO: Access modifiers changed from: private */
    @DoNotOptimize
    @TargetApi(14)
    /* loaded from: classes2.dex */
    public static class Api14Utils {
        private Api14Utils() {
        }

        public static String a() {
            ClassLoader classLoader = SoLoader.class.getClassLoader();
            if (classLoader instanceof BaseDexClassLoader) {
                try {
                    return (String) BaseDexClassLoader.class.getMethod("getLdLibraryPath", new Class[0]).invoke((BaseDexClassLoader) classLoader, new Object[0]);
                } catch (Exception e4) {
                    throw new RuntimeException("Cannot call getLdLibraryPath", e4);
                }
            }
            throw new IllegalStateException("ClassLoader " + classLoader.getClass().getName() + " should be of type BaseDexClassLoader");
        }
    }

    /* loaded from: classes2.dex */
    public static final class WrongAbiError extends UnsatisfiedLinkError {
        WrongAbiError(Throwable th) {
            super("APK was built for a different platform");
            initCause(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a implements s {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f13533a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f13534b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f13535c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Runtime f13536d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Method f13537e;

        a(boolean z3, String str, String str2, Runtime runtime, Method method) {
            this.f13533a = z3;
            this.f13534b = str;
            this.f13535c = str2;
            this.f13536d = runtime;
            this.f13537e = method;
        }

        private String b(String str) {
            try {
                File file = new File(str);
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int read = fileInputStream.read(bArr);
                        if (read > 0) {
                            messageDigest.update(bArr, 0, read);
                        } else {
                            String format = String.format("%32x", new BigInteger(1, messageDigest.digest()));
                            fileInputStream.close();
                            return format;
                        }
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                        throw th2;
                    }
                }
            } catch (IOException e4) {
                return e4.toString();
            } catch (SecurityException e5) {
                return e5.toString();
            } catch (NoSuchAlgorithmException e6) {
                return e6.toString();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0035, code lost:
            if (r1 == null) goto L21;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0037, code lost:
            r0 = new java.lang.StringBuilder();
            r0.append("Error when loading lib: ");
            r0.append(r1);
            r0.append(" lib hash: ");
            r0.append(b(r9));
            r0.append(" search path is ");
            r0.append(r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:?, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:?, code lost:
            return;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:45:0x0095  */
        /* JADX WARN: Type inference failed for: r1v0 */
        /* JADX WARN: Type inference failed for: r1v2 */
        @Override // com.facebook.soloader.s
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void a(java.lang.String r9, int r10) {
            /*
                Method dump skipped, instructions count: 187
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.soloader.SoLoader.a.a(java.lang.String, int):void");
        }
    }

    static {
        boolean z3 = false;
        try {
            if (Build.VERSION.SDK_INT >= 18) {
                z3 = true;
            }
        } catch (NoClassDefFoundError | UnsatisfiedLinkError unused) {
        }
        f13515c = z3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x003e, code lost:
        r0 = new java.lang.StringBuilder();
        r0.append("abi not supported: ");
        r0.append(r3[r4]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004d, code lost:
        r0 = com.facebook.soloader.SoLoader.f13517e;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a() {
        /*
            java.util.concurrent.locks.ReentrantReadWriteLock r0 = com.facebook.soloader.SoLoader.f13517e
            java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock r1 = r0.readLock()
            r1.lock()
            com.facebook.soloader.t[] r1 = com.facebook.soloader.SoLoader.f13518f     // Catch: java.lang.Throwable -> L61
            r2 = 0
            if (r1 != 0) goto L16
        Le:
            java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock r0 = r0.readLock()
            r0.unlock()
            return r2
        L16:
            java.lang.String[] r0 = com.facebook.soloader.SysUtil.h()     // Catch: java.lang.Throwable -> L61
            r1 = 0
        L1b:
            com.facebook.soloader.t[] r3 = com.facebook.soloader.SoLoader.f13518f     // Catch: java.lang.Throwable -> L61
            int r4 = r3.length     // Catch: java.lang.Throwable -> L61
            if (r1 >= r4) goto L56
            r3 = r3[r1]     // Catch: java.lang.Throwable -> L61
            java.lang.String[] r3 = r3.b()     // Catch: java.lang.Throwable -> L61
            r4 = 0
        L27:
            int r5 = r3.length     // Catch: java.lang.Throwable -> L61
            if (r4 >= r5) goto L53
            r5 = 0
            r6 = 0
        L2c:
            int r7 = r0.length     // Catch: java.lang.Throwable -> L61
            if (r5 >= r7) goto L3c
            if (r6 != 0) goto L3c
            r6 = r3[r4]     // Catch: java.lang.Throwable -> L61
            r7 = r0[r5]     // Catch: java.lang.Throwable -> L61
            boolean r6 = r6.equals(r7)     // Catch: java.lang.Throwable -> L61
            int r5 = r5 + 1
            goto L2c
        L3c:
            if (r6 != 0) goto L50
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L61
            r0.<init>()     // Catch: java.lang.Throwable -> L61
            java.lang.String r1 = "abi not supported: "
            r0.append(r1)     // Catch: java.lang.Throwable -> L61
            r1 = r3[r4]     // Catch: java.lang.Throwable -> L61
            r0.append(r1)     // Catch: java.lang.Throwable -> L61
            java.util.concurrent.locks.ReentrantReadWriteLock r0 = com.facebook.soloader.SoLoader.f13517e
            goto Le
        L50:
            int r4 = r4 + 1
            goto L27
        L53:
            int r1 = r1 + 1
            goto L1b
        L56:
            java.util.concurrent.locks.ReentrantReadWriteLock r0 = com.facebook.soloader.SoLoader.f13517e
            java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock r0 = r0.readLock()
            r0.unlock()
            r0 = 1
            return r0
        L61:
            r0 = move-exception
            java.util.concurrent.locks.ReentrantReadWriteLock r1 = com.facebook.soloader.SoLoader.f13517e
            java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock r1 = r1.readLock()
            r1.unlock()
            goto L6d
        L6c:
            throw r0
        L6d:
            goto L6c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.soloader.SoLoader.a():boolean");
    }

    private static void b() {
        ReentrantReadWriteLock reentrantReadWriteLock = f13517e;
        reentrantReadWriteLock.readLock().lock();
        try {
            if (f13518f != null) {
                reentrantReadWriteLock.readLock().unlock();
                return;
            }
            throw new RuntimeException("SoLoader.init() not yet called");
        } catch (Throwable th) {
            f13517e.readLock().unlock();
            throw th;
        }
    }

    public static void c() {
        v(null);
    }

    private static void d(String str, int i2, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        boolean z3;
        UnsatisfiedLinkError unsatisfiedLinkError;
        boolean z4;
        ReentrantReadWriteLock reentrantReadWriteLock = f13517e;
        reentrantReadWriteLock.readLock().lock();
        try {
            if (f13518f != null) {
                reentrantReadWriteLock.readLock().unlock();
                if (threadPolicy == null) {
                    threadPolicy = StrictMode.allowThreadDiskReads();
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (f13515c) {
                    Api18TraceUtils.a("SoLoader.loadLibrary[" + str + "]");
                }
                int i4 = 0;
                do {
                    try {
                        f13517e.readLock().lock();
                        int i5 = f13519g;
                        int i6 = 0;
                        while (true) {
                            if (i4 != 0) {
                                break;
                            }
                            t[] tVarArr = f13518f;
                            if (i6 < tVarArr.length) {
                                i4 = tVarArr[i6].c(str, i2, threadPolicy);
                                if (i4 == 3 && f13520h != null) {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("Trying backup SoSource for ");
                                    sb.append(str);
                                    v[] vVarArr = f13520h;
                                    int length = vVarArr.length;
                                    int i7 = 0;
                                    while (true) {
                                        if (i7 >= length) {
                                            break;
                                        }
                                        v vVar = vVarArr[i7];
                                        vVar.p(str);
                                        int c4 = vVar.c(str, i2, threadPolicy);
                                        if (c4 == 1) {
                                            i4 = c4;
                                            break;
                                        }
                                        i7++;
                                    }
                                } else {
                                    i6++;
                                }
                            } else {
                                break;
                            }
                        }
                        ReentrantReadWriteLock reentrantReadWriteLock2 = f13517e;
                        reentrantReadWriteLock2.readLock().unlock();
                        if ((i2 & 2) == 2 && i4 == 0) {
                            reentrantReadWriteLock2.writeLock().lock();
                            b bVar = f13521i;
                            if (bVar != null && bVar.f()) {
                                f13519g++;
                            }
                            z4 = f13519g != i5;
                            reentrantReadWriteLock2.writeLock().unlock();
                            continue;
                        } else {
                            z4 = false;
                            continue;
                        }
                    } finally {
                        if (i4 == 0 || i4 == r5) {
                        }
                    }
                } while (z4);
                if (f13515c) {
                    Api18TraceUtils.b();
                }
                if (z3) {
                    StrictMode.setThreadPolicy(threadPolicy);
                }
                if (i4 == 0 || i4 == 3) {
                    throw new UnsatisfiedLinkError("couldn't find DSO to load: " + str);
                }
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Could not load: ");
            sb2.append(str);
            sb2.append(" because no SO source exists");
            throw new UnsatisfiedLinkError("couldn't find DSO to load: " + str);
        } catch (Throwable th) {
            f13517e.readLock().unlock();
            throw th;
        }
    }

    @Nullable
    private static Method e() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23 && i2 <= 27) {
            try {
                Method declaredMethod = Runtime.class.getDeclaredMethod("nativeLoad", String.class, ClassLoader.class, String.class);
                declaredMethod.setAccessible(true);
                return declaredMethod;
            } catch (NoSuchMethodException | SecurityException unused) {
            }
        }
        return null;
    }

    public static void f(Context context, int i2) throws IOException {
        g(context, i2, null);
    }

    private static void g(Context context, int i2, @Nullable s sVar) throws IOException {
        StrictMode.ThreadPolicy allowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        try {
            i(sVar);
            j(context, i2, sVar);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
        }
    }

    public static void h(Context context, boolean z3) {
        try {
            f(context, z3 ? 1 : 0);
        } catch (IOException e4) {
            throw new RuntimeException(e4);
        }
    }

    private static synchronized void i(@Nullable s sVar) {
        synchronized (SoLoader.class) {
            if (sVar != null) {
                f13516d = sVar;
                return;
            }
            Runtime runtime = Runtime.getRuntime();
            Method e4 = e();
            boolean z3 = e4 != null;
            String a4 = z3 ? Api14Utils.a() : null;
            f13516d = new a(z3, a4, p(a4), runtime, e4);
        }
    }

    private static void j(Context context, int i2, @Nullable s sVar) throws IOException {
        int i4;
        f13517e.writeLock().lock();
        try {
            if (f13518f == null) {
                f13532t = i2;
                ArrayList arrayList = new ArrayList();
                String str = System.getenv("LD_LIBRARY_PATH");
                if (str == null) {
                    str = "/vendor/lib:/system/lib";
                }
                String[] split = str.split(":");
                for (int i5 = 0; i5 < split.length; i5++) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("adding system library source: ");
                    sb.append(split[i5]);
                    arrayList.add(new c(new File(split[i5]), 2));
                }
                if (context != null) {
                    if ((i2 & 1) != 0) {
                        f13520h = null;
                        arrayList.add(0, new l(context, f13526n));
                    } else {
                        int i6 = context.getApplicationInfo().flags;
                        if ((i6 & 1) != 0 && (i6 & 128) == 0) {
                            i4 = 0;
                        } else {
                            f13521i = new b(context, Build.VERSION.SDK_INT <= 17 ? 1 : 0);
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("adding application source: ");
                            sb2.append(f13521i.toString());
                            arrayList.add(0, f13521i);
                            i4 = 1;
                        }
                        if ((f13532t & 8) != 0) {
                            f13520h = null;
                        } else {
                            File file = new File(context.getApplicationInfo().sourceDir);
                            ArrayList arrayList2 = new ArrayList();
                            com.facebook.soloader.a aVar = new com.facebook.soloader.a(context, file, f13526n, i4);
                            arrayList2.add(aVar);
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("adding backup source from : ");
                            sb3.append(aVar.toString());
                            if (Build.VERSION.SDK_INT >= 21 && context.getApplicationInfo().splitSourceDirs != null) {
                                String[] strArr = context.getApplicationInfo().splitSourceDirs;
                                int length = strArr.length;
                                int i7 = 0;
                                int i8 = 0;
                                while (i7 < length) {
                                    File file2 = new File(strArr[i7]);
                                    StringBuilder sb4 = new StringBuilder();
                                    sb4.append(f13527o);
                                    int i9 = i8 + 1;
                                    sb4.append(i8);
                                    com.facebook.soloader.a aVar2 = new com.facebook.soloader.a(context, file2, sb4.toString(), i4);
                                    StringBuilder sb5 = new StringBuilder();
                                    sb5.append("adding backup source: ");
                                    sb5.append(aVar2.toString());
                                    arrayList2.add(aVar2);
                                    i7++;
                                    i8 = i9;
                                }
                            }
                            f13520h = (v[]) arrayList2.toArray(new v[arrayList2.size()]);
                            arrayList.addAll(0, arrayList2);
                        }
                    }
                }
                t[] tVarArr = (t[]) arrayList.toArray(new t[arrayList.size()]);
                int q3 = q();
                int length2 = tVarArr.length;
                while (true) {
                    int i10 = length2 - 1;
                    if (length2 <= 0) {
                        break;
                    }
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append("Preparing SO source: ");
                    sb6.append(tVarArr[i10]);
                    tVarArr[i10].d(q3);
                    length2 = i10;
                }
                f13518f = tVarArr;
                f13519g++;
                StringBuilder sb7 = new StringBuilder();
                sb7.append("init finish: ");
                sb7.append(f13518f.length);
                sb7.append(" SO sources prepared");
            }
        } finally {
            f13517e.writeLock().unlock();
        }
    }

    public static boolean k(String str) {
        return l(str, 0);
    }

    public static boolean l(String str, int i2) throws UnsatisfiedLinkError {
        boolean z3;
        ReentrantReadWriteLock reentrantReadWriteLock = f13517e;
        reentrantReadWriteLock.readLock().lock();
        try {
            if (f13518f == null) {
                if ("http://www.android.com/".equals(System.getProperty("java.vendor.url"))) {
                    b();
                } else {
                    synchronized (SoLoader.class) {
                        z3 = !f13522j.contains(str);
                        if (z3) {
                            u uVar = f13525m;
                            if (uVar != null) {
                                uVar.loadLibrary(str);
                            } else {
                                System.loadLibrary(str);
                            }
                        }
                    }
                    reentrantReadWriteLock.readLock().unlock();
                    return z3;
                }
            }
            reentrantReadWriteLock.readLock().unlock();
            String b4 = o.b(str);
            return n(System.mapLibraryName(b4 != null ? b4 : str), str, b4, i2 | 2, null);
        } catch (Throwable th) {
            f13517e.readLock().unlock();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void m(String str, int i2, StrictMode.ThreadPolicy threadPolicy) {
        n(str, null, null, i2, threadPolicy);
    }

    private static boolean n(String str, @Nullable String str2, @Nullable String str3, int i2, @Nullable StrictMode.ThreadPolicy threadPolicy) {
        boolean z3;
        Object obj;
        boolean z4 = false;
        if (TextUtils.isEmpty(str2) || !f13524l.contains(str2)) {
            synchronized (SoLoader.class) {
                HashSet<String> hashSet = f13522j;
                if (!hashSet.contains(str)) {
                    z3 = false;
                } else if (str3 == null) {
                    return false;
                } else {
                    z3 = true;
                }
                Map<String, Object> map = f13523k;
                if (map.containsKey(str)) {
                    obj = map.get(str);
                } else {
                    Object obj2 = new Object();
                    map.put(str, obj2);
                    obj = obj2;
                }
                synchronized (obj) {
                    if (!z3) {
                        synchronized (SoLoader.class) {
                            if (hashSet.contains(str)) {
                                if (str3 == null) {
                                    return false;
                                }
                                z3 = true;
                            }
                            if (!z3) {
                                try {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("About to load: ");
                                    sb.append(str);
                                    d(str, i2, threadPolicy);
                                    synchronized (SoLoader.class) {
                                        StringBuilder sb2 = new StringBuilder();
                                        sb2.append("Loaded: ");
                                        sb2.append(str);
                                        hashSet.add(str);
                                    }
                                } catch (IOException e4) {
                                    throw new RuntimeException(e4);
                                } catch (UnsatisfiedLinkError e5) {
                                    String message = e5.getMessage();
                                    if (message != null && message.contains("unexpected e_machine:")) {
                                        throw new WrongAbiError(e5);
                                    }
                                    throw e5;
                                }
                            }
                        }
                    }
                    if (!TextUtils.isEmpty(str2) && f13524l.contains(str2)) {
                        z4 = true;
                    }
                    if (str3 != null && !z4) {
                        boolean z5 = f13515c;
                        if (z5) {
                            Api18TraceUtils.a("MergedSoMapping.invokeJniOnload[" + str2 + "]");
                        }
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("About to merge: ");
                        sb3.append(str2);
                        sb3.append(" / ");
                        sb3.append(str);
                        o.a(str2);
                        f13524l.add(str2);
                        if (z5) {
                            Api18TraceUtils.b();
                        }
                    }
                    return !z3;
                }
            }
        }
        return false;
    }

    public static String o() {
        f13517e.readLock().lock();
        try {
            b();
            ArrayList arrayList = new ArrayList();
            for (t tVar : f13518f) {
                tVar.a(arrayList);
            }
            String join = TextUtils.join(":", arrayList);
            StringBuilder sb = new StringBuilder();
            sb.append("makeLdLibraryPath final path: ");
            sb.append(join);
            return join;
        } finally {
            f13517e.readLock().unlock();
        }
    }

    @Nullable
    public static String p(String str) {
        if (str == null) {
            return null;
        }
        String[] split = str.split(":");
        ArrayList arrayList = new ArrayList(split.length);
        for (String str2 : split) {
            if (!str2.contains("!")) {
                arrayList.add(str2);
            }
        }
        return TextUtils.join(":", arrayList);
    }

    private static int q() {
        ReentrantReadWriteLock reentrantReadWriteLock = f13517e;
        reentrantReadWriteLock.writeLock().lock();
        try {
            int i2 = (f13532t & 2) != 0 ? 1 : 0;
            reentrantReadWriteLock.writeLock().unlock();
            return i2;
        } catch (Throwable th) {
            f13517e.writeLock().unlock();
            throw th;
        }
    }

    public static void r(t tVar) throws IOException {
        ReentrantReadWriteLock reentrantReadWriteLock = f13517e;
        reentrantReadWriteLock.writeLock().lock();
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("Prepending to SO sources: ");
            sb.append(tVar);
            b();
            tVar.d(q());
            t[] tVarArr = f13518f;
            t[] tVarArr2 = new t[tVarArr.length + 1];
            tVarArr2[0] = tVar;
            System.arraycopy(tVarArr, 0, tVarArr2, 1, tVarArr.length);
            f13518f = tVarArr2;
            f13519g++;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Prepended to SO sources: ");
            sb2.append(tVar);
            reentrantReadWriteLock.writeLock().unlock();
        } catch (Throwable th) {
            f13517e.writeLock().unlock();
            throw th;
        }
    }

    static void s() {
        synchronized (SoLoader.class) {
            f13522j.clear();
            f13523k.clear();
            f13516d = null;
        }
        v(null);
    }

    public static void t() {
        v(new t[]{new q()});
    }

    static void u(s sVar) {
        f13516d = sVar;
    }

    static void v(t[] tVarArr) {
        ReentrantReadWriteLock reentrantReadWriteLock = f13517e;
        reentrantReadWriteLock.writeLock().lock();
        try {
            f13518f = tVarArr;
            f13519g++;
            reentrantReadWriteLock.writeLock().unlock();
        } catch (Throwable th) {
            f13517e.writeLock().unlock();
            throw th;
        }
    }

    public static void w(u uVar) {
        f13525m = uVar;
    }

    public static File x(String str) throws UnsatisfiedLinkError {
        b();
        try {
            return y(System.mapLibraryName(str));
        } catch (IOException e4) {
            throw new RuntimeException(e4);
        }
    }

    static File y(String str) throws IOException {
        f13517e.readLock().lock();
        int i2 = 0;
        while (true) {
            try {
                t[] tVarArr = f13518f;
                if (i2 < tVarArr.length) {
                    File e4 = tVarArr[i2].e(str);
                    if (e4 != null) {
                        return e4;
                    }
                    i2++;
                } else {
                    f13517e.readLock().unlock();
                    throw new FileNotFoundException(str);
                }
            } finally {
                f13517e.readLock().unlock();
            }
        }
    }
}
