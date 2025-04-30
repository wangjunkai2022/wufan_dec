package androidx.activity;

import android.annotation.SuppressLint;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import java.util.ArrayDeque;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class OnBackPressedDispatcher {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Runnable f48a;

    /* renamed from: b  reason: collision with root package name */
    final ArrayDeque<OnBackPressedCallback> f49b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class LifecycleOnBackPressedCancellable implements LifecycleEventObserver, Cancellable {

        /* renamed from: a  reason: collision with root package name */
        private final Lifecycle f50a;

        /* renamed from: b  reason: collision with root package name */
        private final OnBackPressedCallback f51b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private Cancellable f52c;

        LifecycleOnBackPressedCancellable(@NonNull Lifecycle lifecycle, @NonNull OnBackPressedCallback onBackPressedCallback) {
            this.f50a = lifecycle;
            this.f51b = onBackPressedCallback;
            lifecycle.addObserver(this);
        }

        @Override // androidx.activity.Cancellable
        public void cancel() {
            this.f50a.removeObserver(this);
            this.f51b.b(this);
            Cancellable cancellable = this.f52c;
            if (cancellable != null) {
                cancellable.cancel();
                this.f52c = null;
            }
        }

        @Override // androidx.lifecycle.LifecycleEventObserver
        public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
            if (event == Lifecycle.Event.ON_START) {
                this.f52c = OnBackPressedDispatcher.this.a(this.f51b);
            } else if (event == Lifecycle.Event.ON_STOP) {
                Cancellable cancellable = this.f52c;
                if (cancellable != null) {
                    cancellable.cancel();
                }
            } else if (event == Lifecycle.Event.ON_DESTROY) {
                cancel();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class OnBackPressedCancellable implements Cancellable {

        /* renamed from: a  reason: collision with root package name */
        private final OnBackPressedCallback f54a;

        OnBackPressedCancellable(OnBackPressedCallback onBackPressedCallback) {
            this.f54a = onBackPressedCallback;
        }

        @Override // androidx.activity.Cancellable
        public void cancel() {
            OnBackPressedDispatcher.this.f49b.remove(this.f54a);
            this.f54a.b(this);
        }
    }

    public OnBackPressedDispatcher() {
        this(null);
    }

    @NonNull
    @MainThread
    Cancellable a(@NonNull OnBackPressedCallback onBackPressedCallback) {
        this.f49b.add(onBackPressedCallback);
        OnBackPressedCancellable onBackPressedCancellable = new OnBackPressedCancellable(onBackPressedCallback);
        onBackPressedCallback.a(onBackPressedCancellable);
        return onBackPressedCancellable;
    }

    @MainThread
    public void addCallback(@NonNull OnBackPressedCallback onBackPressedCallback) {
        a(onBackPressedCallback);
    }

    @MainThread
    public boolean hasEnabledCallbacks() {
        Iterator<OnBackPressedCallback> descendingIterator = this.f49b.descendingIterator();
        while (descendingIterator.hasNext()) {
            if (descendingIterator.next().isEnabled()) {
                return true;
            }
        }
        return false;
    }

    @MainThread
    public void onBackPressed() {
        Iterator<OnBackPressedCallback> descendingIterator = this.f49b.descendingIterator();
        while (descendingIterator.hasNext()) {
            OnBackPressedCallback next = descendingIterator.next();
            if (next.isEnabled()) {
                next.handleOnBackPressed();
                return;
            }
        }
        Runnable runnable = this.f48a;
        if (runnable != null) {
            runnable.run();
        }
    }

    public OnBackPressedDispatcher(@Nullable Runnable runnable) {
        this.f49b = new ArrayDeque<>();
        this.f48a = runnable;
    }

    @SuppressLint({"LambdaLast"})
    @MainThread
    public void addCallback(@NonNull LifecycleOwner lifecycleOwner, @NonNull OnBackPressedCallback onBackPressedCallback) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
            return;
        }
        onBackPressedCallback.a(new LifecycleOnBackPressedCancellable(lifecycle, onBackPressedCallback));
    }
}
