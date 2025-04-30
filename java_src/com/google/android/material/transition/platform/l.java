package com.google.android.material.transition.platform;

import android.app.Activity;
import android.app.SharedElementCallback;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.transition.Transition;
import android.view.View;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.graphics.BlendModeColorFilterCompat;
import androidx.core.graphics.BlendModeCompat;
import com.google.android.material.R;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
/* compiled from: MaterialContainerTransformSharedElementCallback.java */
@RequiresApi(21)
/* loaded from: classes2.dex */
public class l extends SharedElementCallback {
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static WeakReference<View> f16586f;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private Rect f16590d;

    /* renamed from: a  reason: collision with root package name */
    private boolean f16587a = true;

    /* renamed from: b  reason: collision with root package name */
    private boolean f16588b = true;

    /* renamed from: c  reason: collision with root package name */
    private boolean f16589c = false;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private d f16591e = new e();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MaterialContainerTransformSharedElementCallback.java */
    /* loaded from: classes2.dex */
    public class a extends r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Window f16592a;

        a(Window window) {
            this.f16592a = window;
        }

        @Override // com.google.android.material.transition.platform.r, android.transition.Transition.TransitionListener
        public void onTransitionEnd(Transition transition) {
            l.j(this.f16592a);
        }

        @Override // com.google.android.material.transition.platform.r, android.transition.Transition.TransitionListener
        public void onTransitionStart(Transition transition) {
            l.i(this.f16592a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MaterialContainerTransformSharedElementCallback.java */
    /* loaded from: classes2.dex */
    public class b extends r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f16594a;

        b(Activity activity) {
            this.f16594a = activity;
        }

        @Override // com.google.android.material.transition.platform.r, android.transition.Transition.TransitionListener
        public void onTransitionEnd(Transition transition) {
            View view;
            if (l.f16586f != null && (view = (View) l.f16586f.get()) != null) {
                view.setAlpha(1.0f);
                WeakReference unused = l.f16586f = null;
            }
            this.f16594a.finish();
            this.f16594a.overridePendingTransition(0, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MaterialContainerTransformSharedElementCallback.java */
    /* loaded from: classes2.dex */
    public class c extends r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Window f16596a;

        c(Window window) {
            this.f16596a = window;
        }

        @Override // com.google.android.material.transition.platform.r, android.transition.Transition.TransitionListener
        public void onTransitionStart(Transition transition) {
            l.i(this.f16596a);
        }
    }

    /* compiled from: MaterialContainerTransformSharedElementCallback.java */
    /* loaded from: classes2.dex */
    public interface d {
        @Nullable
        com.google.android.material.shape.m a(@NonNull View view);
    }

    /* compiled from: MaterialContainerTransformSharedElementCallback.java */
    /* loaded from: classes2.dex */
    public static class e implements d {
        @Override // com.google.android.material.transition.platform.l.d
        @Nullable
        public com.google.android.material.shape.m a(@NonNull View view) {
            if (view instanceof com.google.android.material.shape.q) {
                return ((com.google.android.material.shape.q) view).getShapeAppearanceModel();
            }
            return null;
        }
    }

    @Nullable
    private static Drawable f(Window window) {
        return window.getDecorView().getBackground();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void i(Window window) {
        Drawable f4 = f(window);
        if (f4 == null) {
            return;
        }
        f4.mutate().setColorFilter(BlendModeColorFilterCompat.createBlendModeColorFilterCompat(0, BlendModeCompat.CLEAR));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void j(Window window) {
        Drawable f4 = f(window);
        if (f4 == null) {
            return;
        }
        f4.mutate().clearColorFilter();
    }

    private void n(Window window) {
        Transition sharedElementEnterTransition = window.getSharedElementEnterTransition();
        if (sharedElementEnterTransition instanceof MaterialContainerTransform) {
            MaterialContainerTransform materialContainerTransform = (MaterialContainerTransform) sharedElementEnterTransition;
            if (!this.f16589c) {
                window.setSharedElementReenterTransition(null);
            }
            if (this.f16588b) {
                p(window, materialContainerTransform);
                materialContainerTransform.addListener(new a(window));
            }
        }
    }

    private void o(Activity activity, Window window) {
        Transition sharedElementReturnTransition = window.getSharedElementReturnTransition();
        if (sharedElementReturnTransition instanceof MaterialContainerTransform) {
            MaterialContainerTransform materialContainerTransform = (MaterialContainerTransform) sharedElementReturnTransition;
            materialContainerTransform.V(true);
            materialContainerTransform.addListener(new b(activity));
            if (this.f16588b) {
                p(window, materialContainerTransform);
                materialContainerTransform.addListener(new c(window));
            }
        }
    }

    private static void p(Window window, MaterialContainerTransform materialContainerTransform) {
        if (materialContainerTransform.getDuration() >= 0) {
            window.setTransitionBackgroundFadeDuration(materialContainerTransform.getDuration());
        }
    }

    @Nullable
    public d e() {
        return this.f16591e;
    }

    public boolean g() {
        return this.f16589c;
    }

    public boolean h() {
        return this.f16588b;
    }

    public void k(@Nullable d dVar) {
        this.f16591e = dVar;
    }

    public void l(boolean z3) {
        this.f16589c = z3;
    }

    public void m(boolean z3) {
        this.f16588b = z3;
    }

    @Override // android.app.SharedElementCallback
    @Nullable
    public Parcelable onCaptureSharedElementSnapshot(@NonNull View view, @NonNull Matrix matrix, @NonNull RectF rectF) {
        f16586f = new WeakReference<>(view);
        return super.onCaptureSharedElementSnapshot(view, matrix, rectF);
    }

    @Override // android.app.SharedElementCallback
    @Nullable
    public View onCreateSnapshotView(@NonNull Context context, @Nullable Parcelable parcelable) {
        WeakReference<View> weakReference;
        View view;
        com.google.android.material.shape.m a4;
        View onCreateSnapshotView = super.onCreateSnapshotView(context, parcelable);
        if (onCreateSnapshotView != null && (weakReference = f16586f) != null && this.f16591e != null && (view = weakReference.get()) != null && (a4 = this.f16591e.a(view)) != null) {
            onCreateSnapshotView.setTag(R.id.mtrl_motion_snapshot_view, a4);
        }
        return onCreateSnapshotView;
    }

    @Override // android.app.SharedElementCallback
    public void onMapSharedElements(@NonNull List<String> list, @NonNull Map<String, View> map) {
        View view;
        Activity activity;
        if (list.isEmpty() || map.isEmpty() || (view = map.get(list.get(0))) == null || (activity = com.google.android.material.internal.c.getActivity(view.getContext())) == null) {
            return;
        }
        Window window = activity.getWindow();
        if (this.f16587a) {
            n(window);
        } else {
            o(activity, window);
        }
    }

    @Override // android.app.SharedElementCallback
    public void onSharedElementEnd(@NonNull List<String> list, @NonNull List<View> list2, @NonNull List<View> list3) {
        if (!list2.isEmpty()) {
            int i2 = R.id.mtrl_motion_snapshot_view;
            if (list2.get(0).getTag(i2) instanceof View) {
                list2.get(0).setTag(i2, null);
            }
        }
        if (!this.f16587a && !list2.isEmpty()) {
            this.f16590d = s.i(list2.get(0));
        }
        this.f16587a = false;
    }

    @Override // android.app.SharedElementCallback
    public void onSharedElementStart(@NonNull List<String> list, @NonNull List<View> list2, @NonNull List<View> list3) {
        if (!list2.isEmpty() && !list3.isEmpty()) {
            list2.get(0).setTag(R.id.mtrl_motion_snapshot_view, list3.get(0));
        }
        if (this.f16587a || list2.isEmpty() || this.f16590d == null) {
            return;
        }
        View view = list2.get(0);
        view.measure(View.MeasureSpec.makeMeasureSpec(this.f16590d.width(), 1073741824), View.MeasureSpec.makeMeasureSpec(this.f16590d.height(), 1073741824));
        Rect rect = this.f16590d;
        view.layout(rect.left, rect.top, rect.right, rect.bottom);
    }
}
