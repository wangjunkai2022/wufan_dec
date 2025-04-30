package com.mob.tools.a;

import android.content.Context;
import android.text.TextUtils;
import com.mob.MobSDK;
import com.mob.commons.a.o;
import com.mob.commons.r;
import com.mob.commons.u;
import com.mob.tools.MobLog;
import com.mob.tools.log.NLog;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.utils.HashonHelper;
import com.mob.tools.utils.ResHelper;
import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static d f53382a;

    /* renamed from: e  reason: collision with root package name */
    private static volatile boolean f53383e;

    /* renamed from: b  reason: collision with root package name */
    private Context f53384b;

    /* renamed from: c  reason: collision with root package name */
    private volatile String f53385c;

    /* renamed from: d  reason: collision with root package name */
    private HashMap<String, Object> f53386d;

    /* renamed from: h  reason: collision with root package name */
    private volatile File f53389h;

    /* renamed from: f  reason: collision with root package name */
    private byte[] f53387f = new byte[0];

    /* renamed from: g  reason: collision with root package name */
    private AtomicBoolean f53388g = new AtomicBoolean(false);

    /* renamed from: i  reason: collision with root package name */
    private ConcurrentLinkedQueue<CountDownLatch> f53390i = new ConcurrentLinkedQueue<>();

    /* renamed from: j  reason: collision with root package name */
    private volatile String f53391j = null;

    private d(Context context) {
        this.f53384b = context;
    }

    static /* synthetic */ String a(d dVar, String str) {
        dVar.f53385c = str;
        return str;
    }

    static /* synthetic */ File b(d dVar, File file) {
        dVar.f53389h = file;
        return file;
    }

    static /* synthetic */ String c(d dVar) {
        return dVar.f53385c;
    }

    static /* synthetic */ File d(d dVar, String str) {
        return dVar.c(str);
    }

    static /* synthetic */ String e(d dVar) {
        return dVar.f53391j;
    }

    static /* synthetic */ File f(d dVar) {
        return dVar.f53389h;
    }

    static /* synthetic */ Context g(d dVar) {
        return dVar.f53384b;
    }

    static /* synthetic */ ConcurrentLinkedQueue h(d dVar) {
        return dVar.f53390i;
    }

    static /* synthetic */ HashMap a(d dVar, File file) {
        return dVar.a(file);
    }

    static /* synthetic */ String b(d dVar) {
        return dVar.e();
    }

    static /* synthetic */ String c(d dVar, String str) {
        return dVar.a(str);
    }

    static /* synthetic */ AtomicBoolean d(d dVar) {
        return dVar.f53388g;
    }

    static /* synthetic */ String e(d dVar, String str) {
        return dVar.b(str);
    }

    static /* synthetic */ String f(d dVar, String str) {
        dVar.f53391j = str;
        return str;
    }

    static /* synthetic */ boolean a(d dVar, String str, File file) {
        return dVar.a(str, file);
    }

    static /* synthetic */ boolean b(d dVar, String str) {
        return dVar.d(str);
    }

    static /* synthetic */ boolean d() {
        return f53383e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String e() {
        try {
            String str = (String) com.mob.commons.b.b(o.a("002Oghgh"), null);
            return str == null ? (String) com.mob.commons.b.b(o.a("009'ghgdeifigeefCeTehBd"), null) : str;
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return null;
        }
    }

    public CountDownLatch c() {
        ConcurrentLinkedQueue<CountDownLatch> concurrentLinkedQueue = this.f53390i;
        if (concurrentLinkedQueue == null || concurrentLinkedQueue.isEmpty()) {
            return null;
        }
        try {
            return this.f53390i.peek();
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return null;
        }
    }

    static /* synthetic */ boolean a(boolean z3) {
        f53383e = z3;
        return z3;
    }

    public static boolean b() {
        return f53383e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(String str) {
        return (TextUtils.isEmpty(a(str)) || TextUtils.isEmpty(b(str))) ? false : true;
    }

    static /* synthetic */ byte[] a(d dVar) {
        return dVar.f53387f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String b(String str) {
        String[] split;
        if (TextUtils.isEmpty(str) || (split = str.split("#")) == null || split.length != 2) {
            return null;
        }
        return split[1];
    }

    public static d a(Context context) {
        if (f53382a == null) {
            synchronized (d.class) {
                if (f53382a == null) {
                    f53382a = new d(context);
                }
            }
        }
        return f53382a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return ResHelper.getDataCacheFile(this.f53384b, str);
    }

    public CountDownLatch a() {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        try {
            NLog mobLog = MobLog.getInstance();
            mobLog.d("dhs ofr: " + countDownLatch, new Object[0]);
            this.f53390i.offer(countDownLatch);
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
        u.f53117f.execute(new Runnable() { // from class: com.mob.tools.a.d.1
            /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
                jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:70:0x02c3
                	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
                	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
                	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
                */
            @Override // java.lang.Runnable
            public void run() {
                /*
                    Method dump skipped, instructions count: 862
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.mob.tools.a.d.AnonymousClass1.run():void");
            }
        });
        return countDownLatch;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HashMap<String, Object> a(File file) {
        String fromHashMap = HashonHelper.fromHashMap(new HashMap());
        HashMap<String, Object> hashMap = new HashMap<>();
        if (this.f53386d == null) {
            HashMap<String, Object> hashMap2 = new HashMap<>();
            this.f53386d = hashMap2;
            hashMap2.put("cacheMap", new ConcurrentHashMap());
            this.f53386d.put("invokeTimesMap", new ConcurrentHashMap());
            this.f53386d.put("expireTimeMap", new ConcurrentHashMap());
        }
        long currentTimeMillis = System.currentTimeMillis();
        try {
            com.mob.commons.cc.a.a(MobSDK.getContext(), file.getAbsolutePath(), fromHashMap, hashMap, this.f53386d);
            MobLog.getInstance().d(TextUtils.isEmpty(null) ? String.format("dhs l %d", Long.valueOf(System.currentTimeMillis() - currentTimeMillis)) : null, new Object[0]);
        } catch (Throwable th) {
            try {
                r3 = "dhs l e: " + th.getMessage();
                com.mob.commons.f.a().b(6, th);
                MobLog.getInstance().d(th);
            } catch (Throwable unused) {
            }
            if (TextUtils.isEmpty(r3)) {
                r3 = String.format("dhs l %d", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
            }
            MobLog.getInstance().d(r3, new Object[0]);
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(String str) {
        String[] split;
        if (TextUtils.isEmpty(str) || (split = str.split("#")) == null || split.length != 2) {
            return null;
        }
        return split[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str, File file) {
        FileOutputStream fileOutputStream;
        if (!TextUtils.isEmpty(str) && file != null) {
            long currentTimeMillis = System.currentTimeMillis();
            try {
                if (file.exists()) {
                    file.delete();
                }
                fileOutputStream = new FileOutputStream(file);
                try {
                    MobLog.getInstance().d("dhs d...", new Object[0]);
                    new NetworkHelper().download(str, fileOutputStream, null);
                    MobLog.getInstance().d(TextUtils.isEmpty(null) ? String.format("dhs d %d", Long.valueOf(System.currentTimeMillis() - currentTimeMillis)) : null, new Object[0]);
                    r.a(fileOutputStream);
                    return true;
                } catch (Throwable th) {
                    th = th;
                    try {
                        r1 = "dhs d e: " + th.getMessage();
                        MobLog.getInstance().d(th);
                        if (TextUtils.isEmpty(r1)) {
                            r1 = String.format("dhs d %d", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
                        }
                        MobLog.getInstance().d(r1, new Object[0]);
                        r.a(fileOutputStream);
                        return false;
                    } catch (Throwable th2) {
                        if (TextUtils.isEmpty(r1)) {
                            r1 = String.format("dhs d %d", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
                        }
                        MobLog.getInstance().d(r1, new Object[0]);
                        r.a(fileOutputStream);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = null;
            }
        }
        return false;
    }
}
