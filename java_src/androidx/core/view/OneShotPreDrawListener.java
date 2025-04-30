package androidx.core.view;

import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import java.util.Objects;
/* loaded from: classes.dex */
public final class OneShotPreDrawListener implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: a  reason: collision with root package name */
    private final View f4812a;

    /* renamed from: b  reason: collision with root package name */
    private ViewTreeObserver f4813b;

    /* renamed from: c  reason: collision with root package name */
    private final Runnable f4814c;

    private OneShotPreDrawListener(View view, Runnable runnable) {
        this.f4812a = view;
        this.f4813b = view.getViewTreeObserver();
        this.f4814c = runnable;
    }

    @NonNull
    public static OneShotPreDrawListener add(@NonNull View view, @NonNull Runnable runnable) {
        Objects.requireNonNull(view, "view == null");
        Objects.requireNonNull(runnable, "runnable == null");
        OneShotPreDrawListener oneShotPreDrawListener = new OneShotPreDrawListener(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(oneShotPreDrawListener);
        view.addOnAttachStateChangeListener(oneShotPreDrawListener);
        return oneShotPreDrawListener;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        removeListener();
        this.f4814c.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.f4813b = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        removeListener();
    }

    public void removeListener() {
        if (this.f4813b.isAlive()) {
            this.f4813b.removeOnPreDrawListener(this);
        } else {
            this.f4812a.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.f4812a.removeOnAttachStateChangeListener(this);
    }
}
