package androidx.lifecycle;

import android.annotation.SuppressLint;
import androidx.annotation.AnyThread;
import androidx.annotation.MainThread;
import com.umeng.analytics.pro.ai;
import com.xinzhu.overmind.utils.helpers.d;
import java.util.ArrayDeque;
import java.util.Queue;
import kotlin.Metadata;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.g1;
import kotlinx.coroutines.m2;
import org.jetbrains.annotations.NotNull;
/* compiled from: DispatchQueue.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0016\u0010\u0017J\b\u0010\u0003\u001a\u00020\u0002H\u0003J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0003J\b\u0010\b\u001a\u00020\u0006H\u0007J\b\u0010\t\u001a\u00020\u0006H\u0007J\b\u0010\n\u001a\u00020\u0006H\u0007J\b\u0010\u000b\u001a\u00020\u0006H\u0007J\u0010\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007R\u0016\u0010\u000f\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0016\u0010\u0010\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u000eR\u001c\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00040\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0015\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\u000e¨\u0006\u0018"}, d2 = {"Landroidx/lifecycle/DispatchQueue;", "", "", "a", "Ljava/lang/Runnable;", "runnable", "", "b", "pause", "resume", "finish", "drainQueue", "runOrEnqueue", ai.aD, "Z", "isDraining", "paused", "Ljava/util/Queue;", d.f64708a, "Ljava/util/Queue;", "queue", "finished", "<init>", "()V", "lifecycle-runtime-ktx_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class DispatchQueue {

    /* renamed from: b  reason: collision with root package name */
    private boolean f6203b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f6204c;

    /* renamed from: a  reason: collision with root package name */
    private boolean f6202a = true;

    /* renamed from: d  reason: collision with root package name */
    private final Queue<Runnable> f6205d = new ArrayDeque();

    @MainThread
    private final boolean a() {
        return this.f6203b || !this.f6202a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    public final void b(Runnable runnable) {
        if (this.f6205d.offer(runnable)) {
            drainQueue();
            return;
        }
        throw new IllegalStateException("cannot enqueue any more runnables".toString());
    }

    @MainThread
    public final void drainQueue() {
        if (this.f6204c) {
            return;
        }
        try {
            this.f6204c = true;
            while ((!this.f6205d.isEmpty()) && a()) {
                Runnable poll = this.f6205d.poll();
                if (poll != null) {
                    poll.run();
                }
            }
        } finally {
            this.f6204c = false;
        }
    }

    @MainThread
    public final void finish() {
        this.f6203b = true;
        drainQueue();
    }

    @MainThread
    public final void pause() {
        this.f6202a = true;
    }

    @MainThread
    public final void resume() {
        if (this.f6202a) {
            if (!this.f6203b) {
                this.f6202a = false;
                drainQueue();
                return;
            }
            throw new IllegalStateException("Cannot resume a finished dispatcher".toString());
        }
    }

    @AnyThread
    @SuppressLint({"WrongThread"})
    @ExperimentalCoroutinesApi
    public final void runOrEnqueue(@NotNull final Runnable runnable) {
        m2 y3 = g1.e().y();
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
        if (y3.isDispatchNeeded(emptyCoroutineContext)) {
            y3.dispatch(emptyCoroutineContext, new Runnable() { // from class: androidx.lifecycle.DispatchQueue$runOrEnqueue$$inlined$with$lambda$1
                @Override // java.lang.Runnable
                public final void run() {
                    DispatchQueue.this.b(runnable);
                }
            });
        } else {
            b(runnable);
        }
    }
}
