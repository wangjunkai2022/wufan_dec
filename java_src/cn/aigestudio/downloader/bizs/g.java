package cn.aigestudio.downloader.bizs;

import android.content.Context;
import android.text.TextUtils;
import com.github.snowdream.android.app.downloader.DownloadTask;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: DLManager.java */
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: c  reason: collision with root package name */
    private static final String f8391c = "g";

    /* renamed from: d  reason: collision with root package name */
    private static final int f8392d;

    /* renamed from: e  reason: collision with root package name */
    private static final int f8393e;

    /* renamed from: f  reason: collision with root package name */
    private static final int f8394f;

    /* renamed from: g  reason: collision with root package name */
    private static final BlockingQueue<Runnable> f8395g;

    /* renamed from: h  reason: collision with root package name */
    private static final BlockingQueue<Runnable> f8396h;

    /* renamed from: i  reason: collision with root package name */
    private static final ThreadFactory f8397i;

    /* renamed from: j  reason: collision with root package name */
    private static final ThreadFactory f8398j;

    /* renamed from: k  reason: collision with root package name */
    private static final ExecutorService f8399k;

    /* renamed from: l  reason: collision with root package name */
    private static final ExecutorService f8400l;

    /* renamed from: m  reason: collision with root package name */
    public static final ConcurrentHashMap<String, f> f8401m;

    /* renamed from: n  reason: collision with root package name */
    private static final List<f> f8402n;

    /* renamed from: o  reason: collision with root package name */
    private static final ConcurrentHashMap<String, f> f8403o;

    /* renamed from: p  reason: collision with root package name */
    private static g f8404p;

    /* renamed from: a  reason: collision with root package name */
    private Context f8405a;

    /* renamed from: b  reason: collision with root package name */
    private int f8406b = 3;

    /* compiled from: DLManager.java */
    /* loaded from: classes2.dex */
    class a implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicInteger f8407a = new AtomicInteger(1);

        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "DLTask #" + this.f8407a.getAndIncrement());
        }
    }

    /* compiled from: DLManager.java */
    /* loaded from: classes2.dex */
    class b implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicInteger f8408a = new AtomicInteger(1);

        b() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "DLThread #" + this.f8408a.getAndIncrement());
        }
    }

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        f8392d = availableProcessors;
        f8393e = availableProcessors + 1;
        f8394f = (availableProcessors * 2) + 1;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(56);
        f8395g = linkedBlockingQueue;
        LinkedBlockingQueue linkedBlockingQueue2 = new LinkedBlockingQueue(256);
        f8396h = linkedBlockingQueue2;
        a aVar = new a();
        f8397i = aVar;
        b bVar = new b();
        f8398j = bVar;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        f8399k = new ThreadPoolExecutor(3, 3, 3L, timeUnit, linkedBlockingQueue, aVar);
        f8400l = new ThreadPoolExecutor(3, 3, 2L, timeUnit, linkedBlockingQueue2, bVar);
        f8401m = new ConcurrentHashMap<>();
        f8402n = Collections.synchronizedList(new ArrayList());
        f8403o = new ConcurrentHashMap<>();
    }

    private g(Context context) {
        this.f8405a = context;
    }

    public static g q(Context context) {
        if (f8404p == null) {
            f8404p = new g(context);
        }
        return f8404p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized g a() {
        List<f> list = f8402n;
        if (!list.isEmpty()) {
            ConcurrentHashMap<String, f> concurrentHashMap = f8401m;
            if (concurrentHashMap.size() < this.f8406b) {
                f remove = list.remove(0);
                concurrentHashMap.put(remove.f8375e, remove);
                f8399k.execute(new h(this.f8405a, remove));
            }
        }
        return f8404p;
    }

    public synchronized g b(i iVar) {
        f8400l.execute(iVar);
        return f8404p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized g c(f fVar) {
        f8403o.put(fVar.f8375e, fVar);
        return f8404p;
    }

    public void d(String str) {
        f b4;
        ConcurrentHashMap<String, f> concurrentHashMap = f8401m;
        if (concurrentHashMap.containsKey(str)) {
            b4 = concurrentHashMap.remove(str);
        } else {
            b4 = c.k(this.f8405a).b(str);
        }
        if (b4 != null) {
            b4.f8390t = true;
        }
        if (b4 != null && b4.f8374d != null) {
            File file = new File(b4.f8374d);
            if (file.exists()) {
                file.delete();
            }
        }
        c.k(this.f8405a).h(str);
        c.k(this.f8405a).i(str);
        n(str);
    }

    public void e(String str) {
        f8403o.remove(str);
    }

    public void f() {
        f8402n.clear();
    }

    public void g() {
        for (String str : f8401m.keySet()) {
            f fVar = f8401m.get(str);
            if (!fVar.f8386p.isEmpty()) {
                for (j jVar : fVar.f8386p) {
                    c.k(this.f8405a).f(jVar);
                    jVar.f8425g = true;
                    c.k(this.f8405a).d(fVar);
                }
            }
        }
    }

    public void h(String str) {
        l(str, "", "", null, null);
    }

    public void i(String str, d.b bVar) {
        l(str, "", "", null, bVar);
    }

    public void j(String str, String str2, d.b bVar) {
        l(str, str2, "", null, bVar);
    }

    public void k(String str, String str2, String str3, d.b bVar) {
        l(str, str2, str3, null, bVar);
    }

    public synchronized void l(String str, String str2, String str3, List<e> list, d.b bVar) {
        f b4;
        boolean z3 = false;
        boolean z4 = bVar != null;
        if (TextUtils.isEmpty(str)) {
            if (z4) {
                bVar.g(str, 2, "Url can not be null.");
            }
        } else if (k.d(this.f8405a)) {
            StringBuilder sb = new StringBuilder();
            sb.append("TASK_DLING.size=");
            ConcurrentHashMap<String, f> concurrentHashMap = f8401m;
            sb.append(concurrentHashMap.size());
            sb.append(";dlStart.url=");
            sb.append(str);
            for (String str4 : concurrentHashMap.keySet()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("key=");
                sb2.append(str4);
            }
            ConcurrentHashMap<String, f> concurrentHashMap2 = f8401m;
            if (concurrentHashMap2.get(str) != null) {
                return;
            }
            if (concurrentHashMap2.containsKey(str)) {
                return;
            }
            ConcurrentHashMap<String, f> concurrentHashMap3 = f8403o;
            if (concurrentHashMap3.containsKey(str)) {
                boolean z5 = cn.aigestudio.downloader.bizs.a.f8306a;
                b4 = concurrentHashMap3.remove(str);
            } else {
                boolean z6 = cn.aigestudio.downloader.bizs.a.f8306a;
                b4 = c.k(this.f8405a).b(str);
                if (b4 != null) {
                    boolean z7 = cn.aigestudio.downloader.bizs.a.f8306a;
                    b4.f8386p.clear();
                    b4.f8386p.addAll(c.k(this.f8405a).j(str));
                    if (b4.f8386p.size() == 0) {
                        b4 = null;
                    }
                }
            }
            if (b4 == null) {
                boolean z8 = cn.aigestudio.downloader.bizs.a.f8306a;
                b4 = new f();
                b4.f8375e = str;
                b4.f8376f = str;
                if (TextUtils.isEmpty(str2)) {
                    str2 = this.f8405a.getCacheDir().getAbsolutePath();
                }
                b4.f8374d = str2.replace(".zip", "");
                b4.f8373c = str3;
            } else {
                b4.f8380j = true;
                for (j jVar : b4.f8386p) {
                    jVar.f8423e = false;
                }
            }
            b4.f8378h = 0;
            b4.f8385o = k.c(list, b4);
            b4.f8387q = bVar;
            b4.f8379i = z4;
            ConcurrentHashMap<String, f> concurrentHashMap4 = f8401m;
            if (concurrentHashMap4.size() >= this.f8406b) {
                boolean z9 = cn.aigestudio.downloader.bizs.a.f8306a;
                for (f fVar : f8402n) {
                    if (fVar.f8375e.equals(b4.f8375e)) {
                        z3 = true;
                    }
                }
                if (!z3) {
                    f8402n.add(b4);
                }
                if (z4) {
                    bVar.a(str);
                }
                if (cn.aigestudio.downloader.bizs.a.f8306a) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("TASK_PREPARE size is ");
                    sb3.append(f8402n.size());
                }
            } else {
                if (cn.aigestudio.downloader.bizs.a.f8306a) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("Prepare download from ");
                    sb4.append(b4.f8375e);
                }
                if (z4) {
                    bVar.onPrepare();
                }
                concurrentHashMap4.put(str, b4);
                f8399k.execute(new h(this.f8405a, b4));
            }
        } else if (z4) {
            bVar.g(str, 0, "Network is not available.");
        }
    }

    public synchronized boolean m(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("mehtod dlStop() called.url=");
        sb.append(str);
        Iterator<f> it2 = f8402n.iterator();
        while (it2.hasNext()) {
            f next = it2.next();
            if (next.f8375e.equals(str)) {
                it2.remove();
                if (next.f8379i) {
                    next.f8387q.e(str, -2L);
                    return true;
                }
            }
        }
        ConcurrentHashMap<String, f> concurrentHashMap = f8401m;
        if (concurrentHashMap.containsKey(str)) {
            f fVar = concurrentHashMap.get(str);
            if (!fVar.f8386p.isEmpty()) {
                for (j jVar : fVar.f8386p) {
                    jVar.f8423e = true;
                }
                return true;
            }
            fVar.f8389s = true;
        }
        return false;
    }

    public synchronized void n(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("mehtod dlStopDel() called.url=");
        sb.append(str);
        Iterator<f> it2 = f8402n.iterator();
        while (it2.hasNext()) {
            f next = it2.next();
            if (next.f8375e.equals(str)) {
                it2.remove();
                if (next.f8379i) {
                    next.f8387q.e(str, -1L);
                }
            }
        }
        ConcurrentHashMap<String, f> concurrentHashMap = f8401m;
        if (concurrentHashMap.containsKey(str)) {
            f fVar = concurrentHashMap.get(str);
            if (!fVar.f8386p.isEmpty()) {
                for (j jVar : fVar.f8386p) {
                    jVar.f8423e = true;
                }
            }
        }
        f8403o.remove(str);
    }

    @Deprecated
    public c o() {
        return c.k(this.f8405a);
    }

    public f p(String str) {
        return c.k(this.f8405a).b(str);
    }

    public void r(DownloadTask downloadTask) {
        StringBuilder sb = new StringBuilder();
        sb.append("method recoveryTaskInfo() called.url=");
        sb.append(downloadTask.getUrl());
        f8401m.clear();
        f8403o.clear();
        f b4 = c.k(this.f8405a).b(downloadTask.getUrl());
        if (b4 == null) {
            c.k(this.f8405a).i(downloadTask.getUrl());
            return;
        }
        List<j> j4 = c.k(this.f8405a).j(downloadTask.getUrl());
        File file = new File(b4.f8374d);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("check file :");
        sb2.append(b4.f8374d);
        if (file.exists() && file.isFile()) {
            b4.f8372b.set(file.length());
            c.k(this.f8405a).d(b4);
        }
        if (j4 == null || j4.size() <= 0) {
            return;
        }
        j4.get(0).f8421c = b4.f8372b.get();
        j4.get(0).f8425g = true;
        c.k(this.f8405a).f(j4.get(0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized g s(String str, int i2) {
        List<j> list;
        StringBuilder sb = new StringBuilder();
        sb.append("removeDLTask() called.url=");
        sb.append(str);
        sb.append(";type=");
        sb.append(i2);
        f remove = f8401m.remove(str);
        if (remove != null && (list = remove.f8386p) != null && list.size() > 0) {
            for (j jVar : remove.f8386p) {
                jVar.f8423e = true;
            }
        }
        return f8404p;
    }

    public g t(boolean z3) {
        cn.aigestudio.downloader.bizs.a.f8306a = z3;
        return f8404p;
    }

    public g u(int i2) {
        this.f8406b = i2;
        return f8404p;
    }
}
