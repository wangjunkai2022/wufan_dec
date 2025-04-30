package bolts;

import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: BoltsExecutors.java */
/* loaded from: classes2.dex */
final class b {

    /* renamed from: d  reason: collision with root package name */
    private static final b f8209d = new b();

    /* renamed from: a  reason: collision with root package name */
    private final ExecutorService f8210a;

    /* renamed from: b  reason: collision with root package name */
    private final ScheduledExecutorService f8211b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f8212c;

    /* compiled from: BoltsExecutors.java */
    /* renamed from: bolts.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private static class ExecutorC0012b implements Executor {

        /* renamed from: b  reason: collision with root package name */
        private static final int f8213b = 15;

        /* renamed from: a  reason: collision with root package name */
        private ThreadLocal<Integer> f8214a;

        private ExecutorC0012b() {
            this.f8214a = new ThreadLocal<>();
        }

        private int a() {
            Integer num = this.f8214a.get();
            if (num == null) {
                num = 0;
            }
            int intValue = num.intValue() - 1;
            if (intValue == 0) {
                this.f8214a.remove();
            } else {
                this.f8214a.set(Integer.valueOf(intValue));
            }
            return intValue;
        }

        private int b() {
            Integer num = this.f8214a.get();
            if (num == null) {
                num = 0;
            }
            int intValue = num.intValue() + 1;
            this.f8214a.set(Integer.valueOf(intValue));
            return intValue;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            try {
                if (b() <= 15) {
                    runnable.run();
                } else {
                    b.a().execute(runnable);
                }
            } finally {
                a();
            }
        }
    }

    private b() {
        this.f8210a = !c() ? Executors.newCachedThreadPool() : bolts.a.b();
        this.f8211b = Executors.newSingleThreadScheduledExecutor();
        this.f8212c = new ExecutorC0012b();
    }

    public static ExecutorService a() {
        return f8209d.f8210a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Executor b() {
        return f8209d.f8212c;
    }

    private static boolean c() {
        String property = System.getProperty("java.runtime.name");
        if (property == null) {
            return false;
        }
        return property.toLowerCase(Locale.US).contains(q.a.f73954a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ScheduledExecutorService d() {
        return f8209d.f8211b;
    }
}
