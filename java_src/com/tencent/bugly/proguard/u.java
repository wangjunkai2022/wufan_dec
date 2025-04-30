package com.tencent.bugly.proguard;

import android.content.Context;
import android.os.Process;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    private static u f59807a;

    /* renamed from: c  reason: collision with root package name */
    private final Context f59809c;

    /* renamed from: e  reason: collision with root package name */
    private long f59811e;

    /* renamed from: f  reason: collision with root package name */
    private long f59812f;

    /* renamed from: d  reason: collision with root package name */
    private Map<Integer, Long> f59810d = new HashMap();

    /* renamed from: g  reason: collision with root package name */
    private LinkedBlockingQueue<Runnable> f59813g = new LinkedBlockingQueue<>();

    /* renamed from: h  reason: collision with root package name */
    private LinkedBlockingQueue<Runnable> f59814h = new LinkedBlockingQueue<>();

    /* renamed from: i  reason: collision with root package name */
    private final Object f59815i = new Object();

    /* renamed from: j  reason: collision with root package name */
    private int f59816j = 0;

    /* renamed from: b  reason: collision with root package name */
    private final p f59808b = p.a();

    private u(Context context) {
        this.f59809c = context;
    }

    static /* synthetic */ int b(u uVar) {
        int i2 = uVar.f59816j - 1;
        uVar.f59816j = i2;
        return i2;
    }

    private void c(int i2) {
        w a4 = w.a();
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        final LinkedBlockingQueue linkedBlockingQueue2 = new LinkedBlockingQueue();
        synchronized (this.f59815i) {
            x.c("[UploadManager] Try to poll all upload task need and put them into temp queue (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
            int size = this.f59813g.size();
            final int size2 = this.f59814h.size();
            if (size == 0 && size2 == 0) {
                x.c("[UploadManager] There is no upload task in queue.", new Object[0]);
                return;
            }
            size2 = (a4 == null || !a4.c()) ? 0 : 0;
            for (int i4 = 0; i4 < size; i4++) {
                Runnable peek = this.f59813g.peek();
                if (peek == null) {
                    break;
                }
                linkedBlockingQueue.put(peek);
                this.f59813g.poll();
            }
            for (int i5 = 0; i5 < size2; i5++) {
                Runnable peek2 = this.f59814h.peek();
                if (peek2 == null) {
                    break;
                }
                linkedBlockingQueue2.put(peek2);
                this.f59814h.poll();
            }
            if (size > 0) {
                x.c("[UploadManager] Execute urgent upload tasks of queue which has %d tasks (pid=%d | tid=%d)", Integer.valueOf(size), Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
            }
            for (int i6 = 0; i6 < size; i6++) {
                final Runnable runnable = (Runnable) linkedBlockingQueue.poll();
                if (runnable == null) {
                    break;
                }
                synchronized (this.f59815i) {
                    if (this.f59816j >= 2 && a4 != null) {
                        a4.a(runnable);
                    } else {
                        x.a("[UploadManager] Create and start a new thread to execute a upload task: %s", "BUGLY_ASYNC_UPLOAD");
                        if (z.a(new Runnable() { // from class: com.tencent.bugly.proguard.u.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                runnable.run();
                                synchronized (u.this.f59815i) {
                                    u.b(u.this);
                                }
                            }
                        }, "BUGLY_ASYNC_UPLOAD") != null) {
                            synchronized (this.f59815i) {
                                this.f59816j++;
                            }
                        } else {
                            x.d("[UploadManager] Failed to start a thread to execute asynchronous upload task, will try again next time.", new Object[0]);
                            a(runnable, true);
                        }
                    }
                }
            }
            if (size2 > 0) {
                x.c("[UploadManager] Execute upload tasks of queue which has %d tasks (pid=%d | tid=%d)", Integer.valueOf(size2), Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
            }
            if (a4 != null) {
                a4.a(new Runnable(this) { // from class: com.tencent.bugly.proguard.u.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        Runnable runnable2;
                        for (int i7 = 0; i7 < size2 && (runnable2 = (Runnable) linkedBlockingQueue2.poll()) != null; i7++) {
                            runnable2.run();
                        }
                    }
                });
            }
        }
    }

    public static synchronized u a(Context context) {
        u uVar;
        synchronized (u.class) {
            if (f59807a == null) {
                f59807a = new u(context);
            }
            uVar = f59807a;
        }
        return uVar;
    }

    public final boolean b(int i2) {
        if (com.tencent.bugly.b.f59304c) {
            x.c("Uploading frequency will not be checked if SDK is in debug mode.", new Object[0]);
            return true;
        }
        long currentTimeMillis = System.currentTimeMillis() - a(i2);
        x.c("[UploadManager] Time interval is %d seconds since last uploading(ID: %d).", Long.valueOf(currentTimeMillis / 1000), Integer.valueOf(i2));
        if (currentTimeMillis < 30000) {
            x.a("[UploadManager] Data only be uploaded once in %d seconds.", 30L);
            return false;
        }
        return true;
    }

    public static synchronized u a() {
        u uVar;
        synchronized (u.class) {
            uVar = f59807a;
        }
        return uVar;
    }

    public final void a(int i2, am amVar, String str, String str2, t tVar, long j4, boolean z3) {
        try {
            try {
                a(new v(this.f59809c, i2, amVar.f59665g, a.a((Object) amVar), str, str2, tVar, true, z3), true, true, j4);
            } catch (Throwable th) {
                th = th;
                if (x.a(th)) {
                    return;
                }
                th.printStackTrace();
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final void a(int i2, am amVar, String str, String str2, t tVar, boolean z3) {
        try {
            try {
                a(new v(this.f59809c, i2, amVar.f59665g, a.a((Object) amVar), str, str2, tVar, 0, 0, false, null), z3, false, 0L);
            } catch (Throwable th) {
                th = th;
                if (x.a(th)) {
                    return;
                }
                th.printStackTrace();
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final long a(boolean z3) {
        long j4;
        long b4 = z.b();
        int i2 = z3 ? 5 : 3;
        List<r> a4 = this.f59808b.a(i2);
        if (a4 != null && a4.size() > 0) {
            j4 = 0;
            try {
                r rVar = a4.get(0);
                if (rVar.f59801e >= b4) {
                    j4 = z.b(rVar.f59803g);
                    if (i2 == 3) {
                        this.f59811e = j4;
                    } else {
                        this.f59812f = j4;
                    }
                    a4.remove(rVar);
                }
            } catch (Throwable th) {
                x.a(th);
            }
            if (a4.size() > 0) {
                this.f59808b.a(a4);
            }
        } else {
            j4 = z3 ? this.f59812f : this.f59811e;
        }
        x.c("[UploadManager] Local network consume: %d KB", Long.valueOf(j4 / 1024));
        return j4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final synchronized void a(long j4, boolean z3) {
        int i2 = z3 ? 5 : 3;
        r rVar = new r();
        rVar.f59798b = i2;
        rVar.f59801e = z.b();
        rVar.f59799c = "";
        rVar.f59800d = "";
        rVar.f59803g = z.c(j4);
        this.f59808b.b(i2);
        this.f59808b.a(rVar);
        if (z3) {
            this.f59812f = j4;
        } else {
            this.f59811e = j4;
        }
        x.c("[UploadManager] Network total consume: %d KB", Long.valueOf(j4 / 1024));
    }

    public final synchronized void a(int i2, long j4) {
        if (i2 < 0) {
            x.e("[UploadManager] Unknown uploading ID: %d", Integer.valueOf(i2));
            return;
        }
        this.f59810d.put(Integer.valueOf(i2), Long.valueOf(j4));
        r rVar = new r();
        rVar.f59798b = i2;
        rVar.f59801e = j4;
        rVar.f59799c = "";
        rVar.f59800d = "";
        rVar.f59803g = new byte[0];
        this.f59808b.b(i2);
        this.f59808b.a(rVar);
        x.c("[UploadManager] Uploading(ID:%d) time: %s", Integer.valueOf(i2), z.a(j4));
    }

    public final synchronized long a(int i2) {
        if (i2 >= 0) {
            Long l4 = this.f59810d.get(Integer.valueOf(i2));
            if (l4 != null) {
                return l4.longValue();
            }
        } else {
            x.e("[UploadManager] Unknown upload ID: %d", Integer.valueOf(i2));
        }
        return 0L;
    }

    private boolean a(Runnable runnable, boolean z3) {
        if (runnable == null) {
            x.a("[UploadManager] Upload task should not be null", new Object[0]);
            return false;
        }
        try {
            x.c("[UploadManager] Add upload task to queue (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
            synchronized (this.f59815i) {
                if (z3) {
                    this.f59813g.put(runnable);
                } else {
                    this.f59814h.put(runnable);
                }
            }
            return true;
        } catch (Throwable th) {
            x.e("[UploadManager] Failed to add upload task to queue: %s", th.getMessage());
            return false;
        }
    }

    private void a(Runnable runnable, boolean z3, boolean z4, long j4) {
        if (runnable == null) {
            x.d("[UploadManager] Upload task should not be null", new Object[0]);
        }
        x.c("[UploadManager] Add upload task (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
        if (!z4) {
            a(runnable, z3);
            c(0);
        } else if (runnable == null) {
            x.d("[UploadManager] Upload task should not be null", new Object[0]);
        } else {
            x.c("[UploadManager] Execute synchronized upload task (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
            Thread a4 = z.a(runnable, "BUGLY_SYNC_UPLOAD");
            if (a4 == null) {
                x.e("[UploadManager] Failed to start a thread to execute synchronized upload task, add it to queue.", new Object[0]);
                a(runnable, true);
                return;
            }
            try {
                a4.join(j4);
            } catch (Throwable th) {
                x.e("[UploadManager] Failed to join upload synchronized task with message: %s. Add it to queue.", th.getMessage());
                a(runnable, true);
                c(0);
            }
        }
    }
}
