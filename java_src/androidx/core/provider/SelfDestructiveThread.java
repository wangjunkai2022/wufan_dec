package androidx.core.provider;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import androidx.annotation.GuardedBy;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
@Deprecated
/* loaded from: classes.dex */
public class SelfDestructiveThread {

    /* renamed from: i  reason: collision with root package name */
    private static final int f4571i = 1;

    /* renamed from: j  reason: collision with root package name */
    private static final int f4572j = 0;
    @GuardedBy("mLock")

    /* renamed from: b  reason: collision with root package name */
    private HandlerThread f4574b;
    @GuardedBy("mLock")

    /* renamed from: c  reason: collision with root package name */
    private Handler f4575c;

    /* renamed from: f  reason: collision with root package name */
    private final int f4578f;

    /* renamed from: g  reason: collision with root package name */
    private final int f4579g;

    /* renamed from: h  reason: collision with root package name */
    private final String f4580h;

    /* renamed from: a  reason: collision with root package name */
    private final Object f4573a = new Object();

    /* renamed from: e  reason: collision with root package name */
    private Handler.Callback f4577e = new Handler.Callback() { // from class: androidx.core.provider.SelfDestructiveThread.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 0) {
                SelfDestructiveThread.this.a();
                return true;
            } else if (i2 != 1) {
                return true;
            } else {
                SelfDestructiveThread.this.b((Runnable) message.obj);
                return true;
            }
        }
    };
    @GuardedBy("mLock")

    /* renamed from: d  reason: collision with root package name */
    private int f4576d = 0;

    /* loaded from: classes.dex */
    public interface ReplyCallback<T> {
        void onReply(T t3);
    }

    public SelfDestructiveThread(String str, int i2, int i4) {
        this.f4580h = str;
        this.f4579g = i2;
        this.f4578f = i4;
    }

    private void c(Runnable runnable) {
        synchronized (this.f4573a) {
            if (this.f4574b == null) {
                HandlerThread handlerThread = new HandlerThread(this.f4580h, this.f4579g);
                this.f4574b = handlerThread;
                handlerThread.start();
                this.f4575c = new Handler(this.f4574b.getLooper(), this.f4577e);
                this.f4576d++;
            }
            this.f4575c.removeMessages(0);
            Handler handler = this.f4575c;
            handler.sendMessage(handler.obtainMessage(1, runnable));
        }
    }

    void a() {
        synchronized (this.f4573a) {
            if (this.f4575c.hasMessages(1)) {
                return;
            }
            this.f4574b.quit();
            this.f4574b = null;
            this.f4575c = null;
        }
    }

    void b(Runnable runnable) {
        runnable.run();
        synchronized (this.f4573a) {
            this.f4575c.removeMessages(0);
            Handler handler = this.f4575c;
            handler.sendMessageDelayed(handler.obtainMessage(0), this.f4578f);
        }
    }

    @VisibleForTesting
    public int getGeneration() {
        int i2;
        synchronized (this.f4573a) {
            i2 = this.f4576d;
        }
        return i2;
    }

    @VisibleForTesting
    public boolean isRunning() {
        boolean z3;
        synchronized (this.f4573a) {
            z3 = this.f4574b != null;
        }
        return z3;
    }

    public <T> void postAndReply(final Callable<T> callable, final ReplyCallback<T> replyCallback) {
        final Handler a4 = CalleeHandler.a();
        c(new Runnable() { // from class: androidx.core.provider.SelfDestructiveThread.2
            @Override // java.lang.Runnable
            public void run() {
                final Object obj;
                try {
                    obj = callable.call();
                } catch (Exception unused) {
                    obj = null;
                }
                a4.post(new Runnable() { // from class: androidx.core.provider.SelfDestructiveThread.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        replyCallback.onReply(obj);
                    }
                });
            }
        });
    }

    public <T> T postAndWait(final Callable<T> callable, int i2) throws InterruptedException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition newCondition = reentrantLock.newCondition();
        final AtomicReference atomicReference = new AtomicReference();
        final AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        c(new Runnable() { // from class: androidx.core.provider.SelfDestructiveThread.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    atomicReference.set(callable.call());
                } catch (Exception unused) {
                }
                reentrantLock.lock();
                try {
                    atomicBoolean.set(false);
                    newCondition.signal();
                } finally {
                    reentrantLock.unlock();
                }
            }
        });
        reentrantLock.lock();
        try {
            if (!atomicBoolean.get()) {
                return (T) atomicReference.get();
            }
            long nanos = TimeUnit.MILLISECONDS.toNanos(i2);
            do {
                try {
                    nanos = newCondition.awaitNanos(nanos);
                } catch (InterruptedException unused) {
                }
                if (!atomicBoolean.get()) {
                    return (T) atomicReference.get();
                }
            } while (nanos > 0);
            throw new InterruptedException("timeout");
        } finally {
            reentrantLock.unlock();
        }
    }
}
