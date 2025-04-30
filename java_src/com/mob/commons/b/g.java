package com.mob.commons.b;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.os.SystemClock;
import android.text.TextUtils;
import java.security.MessageDigest;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public abstract class g {

    /* renamed from: a  reason: collision with root package name */
    protected Context f52869a;

    /* renamed from: b  reason: collision with root package name */
    protected String f52870b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f52871c = false;

    /* renamed from: d  reason: collision with root package name */
    private boolean f52872d = false;

    /* renamed from: e  reason: collision with root package name */
    private String f52873e = null;

    /* renamed from: f  reason: collision with root package name */
    private String f52874f = null;

    /* renamed from: g  reason: collision with root package name */
    private String f52875g = null;

    /* renamed from: h  reason: collision with root package name */
    private String f52876h = null;

    /* renamed from: i  reason: collision with root package name */
    private int f52877i = 0;

    /* loaded from: classes4.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final char[] f52878a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

        /* JADX INFO: Access modifiers changed from: private */
        public static String b(String str) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(com.mob.commons.a.o.a("003:hjgjif"));
                messageDigest.update(str.getBytes("UTF-8"));
                byte[] digest = messageDigest.digest();
                StringBuilder sb = new StringBuilder();
                for (byte b4 : digest) {
                    char[] cArr = f52878a;
                    sb.append(cArr[(b4 & 240) >> 4]);
                    sb.append(cArr[b4 & 15]);
                }
                return sb.toString();
            } catch (Throwable th) {
                com.mob.commons.b.c.a().a(th);
                return str;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class b implements ServiceConnection {

        /* renamed from: a  reason: collision with root package name */
        boolean f52879a;

        /* renamed from: c  reason: collision with root package name */
        private final BlockingQueue<IBinder> f52881c;

        private b() {
            this.f52879a = false;
            this.f52881c = new LinkedBlockingQueue();
        }

        public IBinder a(long j4) throws InterruptedException {
            if (!this.f52879a) {
                this.f52879a = true;
                BlockingQueue<IBinder> blockingQueue = this.f52881c;
                if (j4 <= 0) {
                    j4 = 1500;
                }
                return blockingQueue.poll(j4, TimeUnit.MILLISECONDS);
            }
            throw new IllegalStateException();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.f52881c.put(iBinder);
            } catch (Throwable unused) {
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* loaded from: classes4.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        boolean f52882a;

        /* renamed from: b  reason: collision with root package name */
        String f52883b;

        /* renamed from: c  reason: collision with root package name */
        String f52884c;

        /* renamed from: d  reason: collision with root package name */
        String f52885d;

        /* renamed from: e  reason: collision with root package name */
        String f52886e;
    }

    public g(Context context) {
        this.f52869a = context;
        this.f52870b = context.getPackageName();
    }

    private synchronized void j() {
        if (this.f52871c) {
            return;
        }
        if (!a(a())) {
            if (this.f52877i >= 3) {
                this.f52871c = true;
            }
        } else {
            this.f52871c = true;
        }
    }

    protected Intent a() {
        return null;
    }

    protected c a(IBinder iBinder) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void a(String str) {
        this.f52873e = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void b(String str) {
        this.f52874f = str;
    }

    protected c c() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void c(String str) {
        this.f52876h = str;
    }

    protected long d() {
        return 2500L;
    }

    public synchronized String e() {
        j();
        return this.f52873e;
    }

    public synchronized String f() {
        j();
        return this.f52875g;
    }

    public synchronized String g() {
        j();
        return this.f52876h;
    }

    public synchronized boolean h() {
        j();
        return this.f52872d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String i() {
        if (TextUtils.isEmpty(this.f52870b)) {
            return "";
        }
        return a.b(com.mob.commons.a.o.a("009$gfemhmgfgfhkjfhmhm") + this.f52870b + com.mob.commons.a.o.a("011$gfemEi+hdgi!i_ge)j9efgeed"));
    }

    private synchronized boolean a(Intent intent) {
        boolean z3;
        boolean z4 = true;
        this.f52877i++;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        c c4 = c();
        if (c4 == null) {
            c4 = a(this.f52869a, intent);
        }
        if (c4 != null) {
            this.f52872d = c4.f52882a;
            this.f52873e = c4.f52883b;
            this.f52874f = c4.f52884c;
            this.f52875g = c4.f52885d;
            this.f52876h = c4.f52886e;
        } else {
            z4 = false;
        }
        z3 = z4;
        com.mob.commons.b.c.a().a("oa use time: " + (SystemClock.elapsedRealtime() - elapsedRealtime));
        return z3;
    }

    public synchronized String b() {
        j();
        return this.f52874f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String a(String str, IBinder iBinder, String str2, int i2, String... strArr) {
        Parcel parcel;
        Parcel parcel2;
        try {
            parcel = Parcel.obtain();
            try {
                parcel2 = Parcel.obtain();
            } catch (Throwable th) {
                th = th;
                parcel2 = null;
            }
        } catch (Throwable th2) {
            th = th2;
            parcel = null;
            parcel2 = null;
        }
        try {
            parcel.writeInterfaceToken(str2);
            if (strArr != null && strArr.length > 0) {
                for (String str3 : strArr) {
                    parcel.writeString(str3);
                }
            }
            iBinder.transact(i2, parcel, parcel2, 0);
            parcel2.readException();
            String readString = parcel2.readString();
            try {
                parcel2.recycle();
                parcel.recycle();
            } catch (Throwable unused) {
            }
            return readString;
        } catch (Throwable th3) {
            th = th3;
            try {
                com.mob.commons.b.c.a().a("getStringValue: " + str + " failed! " + th.getMessage());
                if (parcel2 != null) {
                    try {
                        parcel2.recycle();
                    } catch (Throwable unused2) {
                        return null;
                    }
                }
                if (parcel != null) {
                    parcel.recycle();
                }
                return null;
            } catch (Throwable th4) {
                if (parcel2 != null) {
                    try {
                        parcel2.recycle();
                    } catch (Throwable unused3) {
                        throw th4;
                    }
                }
                if (parcel != null) {
                    parcel.recycle();
                }
                throw th4;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0059 A[Catch: all -> 0x005c, TRY_LEAVE, TryCatch #2 {all -> 0x005c, blocks: (B:22:0x0054, B:24:0x0059), top: B:29:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0054 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int a(java.lang.String r4, android.os.IBinder r5, java.lang.String r6, int r7) {
        /*
            r3 = this;
            r0 = 0
            r1 = 0
            android.os.Parcel r2 = android.os.Parcel.obtain()     // Catch: java.lang.Throwable -> L23 android.os.RemoteException -> L26
            android.os.Parcel r1 = android.os.Parcel.obtain()     // Catch: java.lang.Throwable -> L1e android.os.RemoteException -> L20
            r2.writeInterfaceToken(r6)     // Catch: java.lang.Throwable -> L1e android.os.RemoteException -> L20
            r5.transact(r7, r2, r1, r0)     // Catch: java.lang.Throwable -> L1e android.os.RemoteException -> L20
            r1.readException()     // Catch: java.lang.Throwable -> L1e android.os.RemoteException -> L20
            int r4 = r1.readInt()     // Catch: java.lang.Throwable -> L1e android.os.RemoteException -> L20
            r1.recycle()     // Catch: java.lang.Throwable -> L1d
            r2.recycle()     // Catch: java.lang.Throwable -> L1d
        L1d:
            return r4
        L1e:
            r4 = move-exception
            goto L52
        L20:
            r5 = r1
            r1 = r2
            goto L27
        L23:
            r4 = move-exception
            r2 = r1
            goto L52
        L26:
            r5 = r1
        L27:
            com.mob.commons.b.c r6 = com.mob.commons.b.c.a()     // Catch: java.lang.Throwable -> L4f
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4f
            r7.<init>()     // Catch: java.lang.Throwable -> L4f
            java.lang.String r2 = "getIntValue: "
            r7.append(r2)     // Catch: java.lang.Throwable -> L4f
            r7.append(r4)     // Catch: java.lang.Throwable -> L4f
            java.lang.String r4 = " failed! (remoteException)"
            r7.append(r4)     // Catch: java.lang.Throwable -> L4f
            java.lang.String r4 = r7.toString()     // Catch: java.lang.Throwable -> L4f
            r6.a(r4)     // Catch: java.lang.Throwable -> L4f
            if (r5 == 0) goto L49
            r5.recycle()     // Catch: java.lang.Throwable -> L4e
        L49:
            if (r1 == 0) goto L4e
            r1.recycle()     // Catch: java.lang.Throwable -> L4e
        L4e:
            return r0
        L4f:
            r4 = move-exception
            r2 = r1
            r1 = r5
        L52:
            if (r1 == 0) goto L57
            r1.recycle()     // Catch: java.lang.Throwable -> L5c
        L57:
            if (r2 == 0) goto L5c
            r2.recycle()     // Catch: java.lang.Throwable -> L5c
        L5c:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mob.commons.b.g.a(java.lang.String, android.os.IBinder, java.lang.String, int):int");
    }

    private c a(Context context, Intent intent) throws Throwable {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            b bVar = new b();
            if (intent != null) {
                try {
                    if (context.bindService(intent, bVar, 1)) {
                        IBinder a4 = bVar.a(d());
                        if (a4 != null) {
                            return a(a4);
                        }
                        throw new Throwable("get binder " + intent.getComponent() + " failed!");
                    }
                } finally {
                    try {
                        context.unbindService(bVar);
                    } catch (Throwable th) {
                        com.mob.commons.b.c.a().a(th);
                    }
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append("bind service ");
            sb.append(intent == null ? "null" : intent.getComponent());
            sb.append(" failed!");
            throw new Throwable(sb.toString());
        }
        throw new Throwable("unable to invoke in main thread!");
    }
}
