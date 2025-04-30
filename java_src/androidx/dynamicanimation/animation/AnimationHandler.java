package androidx.dynamicanimation.animation;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.Choreographer;
import androidx.annotation.RequiresApi;
import androidx.collection.SimpleArrayMap;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AnimationHandler {

    /* renamed from: g  reason: collision with root package name */
    private static final long f5430g = 10;
    public static final ThreadLocal<AnimationHandler> sAnimatorHandler = new ThreadLocal<>();

    /* renamed from: d  reason: collision with root package name */
    private AnimationFrameCallbackProvider f5434d;

    /* renamed from: a  reason: collision with root package name */
    private final SimpleArrayMap<AnimationFrameCallback, Long> f5431a = new SimpleArrayMap<>();

    /* renamed from: b  reason: collision with root package name */
    final ArrayList<AnimationFrameCallback> f5432b = new ArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    private final AnimationCallbackDispatcher f5433c = new AnimationCallbackDispatcher();

    /* renamed from: e  reason: collision with root package name */
    long f5435e = 0;

    /* renamed from: f  reason: collision with root package name */
    private boolean f5436f = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class AnimationCallbackDispatcher {
        AnimationCallbackDispatcher() {
        }

        void a() {
            AnimationHandler.this.f5435e = SystemClock.uptimeMillis();
            AnimationHandler animationHandler = AnimationHandler.this;
            animationHandler.b(animationHandler.f5435e);
            if (AnimationHandler.this.f5432b.size() > 0) {
                AnimationHandler.this.c().a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface AnimationFrameCallback {
        boolean doAnimationFrame(long j4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static abstract class AnimationFrameCallbackProvider {

        /* renamed from: a  reason: collision with root package name */
        final AnimationCallbackDispatcher f5438a;

        AnimationFrameCallbackProvider(AnimationCallbackDispatcher animationCallbackDispatcher) {
            this.f5438a = animationCallbackDispatcher;
        }

        abstract void a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class FrameCallbackProvider14 extends AnimationFrameCallbackProvider {

        /* renamed from: b  reason: collision with root package name */
        private final Runnable f5439b;

        /* renamed from: c  reason: collision with root package name */
        private final Handler f5440c;

        /* renamed from: d  reason: collision with root package name */
        long f5441d;

        FrameCallbackProvider14(AnimationCallbackDispatcher animationCallbackDispatcher) {
            super(animationCallbackDispatcher);
            this.f5441d = -1L;
            this.f5439b = new Runnable() { // from class: androidx.dynamicanimation.animation.AnimationHandler.FrameCallbackProvider14.1
                @Override // java.lang.Runnable
                public void run() {
                    FrameCallbackProvider14.this.f5441d = SystemClock.uptimeMillis();
                    FrameCallbackProvider14.this.f5438a.a();
                }
            };
            this.f5440c = new Handler(Looper.myLooper());
        }

        @Override // androidx.dynamicanimation.animation.AnimationHandler.AnimationFrameCallbackProvider
        void a() {
            this.f5440c.postDelayed(this.f5439b, Math.max(10 - (SystemClock.uptimeMillis() - this.f5441d), 0L));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(16)
    /* loaded from: classes.dex */
    public static class FrameCallbackProvider16 extends AnimationFrameCallbackProvider {

        /* renamed from: b  reason: collision with root package name */
        private final Choreographer f5443b;

        /* renamed from: c  reason: collision with root package name */
        private final Choreographer.FrameCallback f5444c;

        FrameCallbackProvider16(AnimationCallbackDispatcher animationCallbackDispatcher) {
            super(animationCallbackDispatcher);
            this.f5443b = Choreographer.getInstance();
            this.f5444c = new Choreographer.FrameCallback() { // from class: androidx.dynamicanimation.animation.AnimationHandler.FrameCallbackProvider16.1
                @Override // android.view.Choreographer.FrameCallback
                public void doFrame(long j4) {
                    FrameCallbackProvider16.this.f5438a.a();
                }
            };
        }

        @Override // androidx.dynamicanimation.animation.AnimationHandler.AnimationFrameCallbackProvider
        void a() {
            this.f5443b.postFrameCallback(this.f5444c);
        }
    }

    AnimationHandler() {
    }

    private void a() {
        if (this.f5436f) {
            for (int size = this.f5432b.size() - 1; size >= 0; size--) {
                if (this.f5432b.get(size) == null) {
                    this.f5432b.remove(size);
                }
            }
            this.f5436f = false;
        }
    }

    private boolean d(AnimationFrameCallback animationFrameCallback, long j4) {
        Long l4 = this.f5431a.get(animationFrameCallback);
        if (l4 == null) {
            return true;
        }
        if (l4.longValue() < j4) {
            this.f5431a.remove(animationFrameCallback);
            return true;
        }
        return false;
    }

    public static long getFrameTime() {
        ThreadLocal<AnimationHandler> threadLocal = sAnimatorHandler;
        if (threadLocal.get() == null) {
            return 0L;
        }
        return threadLocal.get().f5435e;
    }

    public static AnimationHandler getInstance() {
        ThreadLocal<AnimationHandler> threadLocal = sAnimatorHandler;
        if (threadLocal.get() == null) {
            threadLocal.set(new AnimationHandler());
        }
        return threadLocal.get();
    }

    public void addAnimationFrameCallback(AnimationFrameCallback animationFrameCallback, long j4) {
        if (this.f5432b.size() == 0) {
            c().a();
        }
        if (!this.f5432b.contains(animationFrameCallback)) {
            this.f5432b.add(animationFrameCallback);
        }
        if (j4 > 0) {
            this.f5431a.put(animationFrameCallback, Long.valueOf(SystemClock.uptimeMillis() + j4));
        }
    }

    void b(long j4) {
        long uptimeMillis = SystemClock.uptimeMillis();
        for (int i2 = 0; i2 < this.f5432b.size(); i2++) {
            AnimationFrameCallback animationFrameCallback = this.f5432b.get(i2);
            if (animationFrameCallback != null && d(animationFrameCallback, uptimeMillis)) {
                animationFrameCallback.doAnimationFrame(j4);
            }
        }
        a();
    }

    AnimationFrameCallbackProvider c() {
        if (this.f5434d == null) {
            if (Build.VERSION.SDK_INT >= 16) {
                this.f5434d = new FrameCallbackProvider16(this.f5433c);
            } else {
                this.f5434d = new FrameCallbackProvider14(this.f5433c);
            }
        }
        return this.f5434d;
    }

    public void removeCallback(AnimationFrameCallback animationFrameCallback) {
        this.f5431a.remove(animationFrameCallback);
        int indexOf = this.f5432b.indexOf(animationFrameCallback);
        if (indexOf >= 0) {
            this.f5432b.set(indexOf, null);
            this.f5436f = true;
        }
    }

    public void setProvider(AnimationFrameCallbackProvider animationFrameCallbackProvider) {
        this.f5434d = animationFrameCallbackProvider;
    }
}
