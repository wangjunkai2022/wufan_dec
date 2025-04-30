package androidx.core.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.R;
import androidx.core.graphics.Insets;
import androidx.core.view.WindowInsetsCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
/* loaded from: classes.dex */
public final class WindowInsetsAnimationCompat {

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f4864b = false;

    /* renamed from: c  reason: collision with root package name */
    private static final String f4865c = "WindowInsetsAnimCompat";

    /* renamed from: a  reason: collision with root package name */
    private Impl f4866a;

    /* loaded from: classes.dex */
    public static abstract class Callback {
        public static final int DISPATCH_MODE_CONTINUE_ON_SUBTREE = 1;
        public static final int DISPATCH_MODE_STOP = 0;

        /* renamed from: a  reason: collision with root package name */
        WindowInsets f4869a;

        /* renamed from: b  reason: collision with root package name */
        private final int f4870b;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        /* loaded from: classes.dex */
        public @interface DispatchMode {
        }

        public Callback(int i2) {
            this.f4870b = i2;
        }

        public final int getDispatchMode() {
            return this.f4870b;
        }

        public void onEnd(@NonNull WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        }

        public void onPrepare(@NonNull WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        }

        @NonNull
        public abstract WindowInsetsCompat onProgress(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull List<WindowInsetsAnimationCompat> list);

        @NonNull
        public BoundsCompat onStart(@NonNull WindowInsetsAnimationCompat windowInsetsAnimationCompat, @NonNull BoundsCompat boundsCompat) {
            return boundsCompat;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class Impl {

        /* renamed from: a  reason: collision with root package name */
        private final int f4871a;

        /* renamed from: b  reason: collision with root package name */
        private float f4872b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final Interpolator f4873c;

        /* renamed from: d  reason: collision with root package name */
        private final long f4874d;

        /* renamed from: e  reason: collision with root package name */
        private float f4875e;

        Impl(int i2, @Nullable Interpolator interpolator, long j4) {
            this.f4871a = i2;
            this.f4873c = interpolator;
            this.f4874d = j4;
        }

        public float getAlpha() {
            return this.f4875e;
        }

        public long getDurationMillis() {
            return this.f4874d;
        }

        public float getFraction() {
            return this.f4872b;
        }

        public float getInterpolatedFraction() {
            Interpolator interpolator = this.f4873c;
            if (interpolator != null) {
                return interpolator.getInterpolation(this.f4872b);
            }
            return this.f4872b;
        }

        @Nullable
        public Interpolator getInterpolator() {
            return this.f4873c;
        }

        public int getTypeMask() {
            return this.f4871a;
        }

        public void setAlpha(float f4) {
            this.f4875e = f4;
        }

        public void setFraction(float f4) {
            this.f4872b = f4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(21)
    /* loaded from: classes.dex */
    public static class Impl21 extends Impl {

        /* JADX INFO: Access modifiers changed from: private */
        @RequiresApi(21)
        /* loaded from: classes.dex */
        public static class Impl21OnApplyWindowInsetsListener implements View.OnApplyWindowInsetsListener {

            /* renamed from: c  reason: collision with root package name */
            private static final int f4876c = 160;

            /* renamed from: a  reason: collision with root package name */
            final Callback f4877a;

            /* renamed from: b  reason: collision with root package name */
            private WindowInsetsCompat f4878b;

            Impl21OnApplyWindowInsetsListener(@NonNull View view, @NonNull Callback callback) {
                this.f4877a = callback;
                WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(view);
                this.f4878b = rootWindowInsets != null ? new WindowInsetsCompat.Builder(rootWindowInsets).build() : null;
            }

            @Override // android.view.View.OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(final View view, WindowInsets windowInsets) {
                if (!view.isLaidOut()) {
                    this.f4878b = WindowInsetsCompat.toWindowInsetsCompat(windowInsets, view);
                    return Impl21.h(view, windowInsets);
                }
                final WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(windowInsets, view);
                if (this.f4878b == null) {
                    this.f4878b = ViewCompat.getRootWindowInsets(view);
                }
                if (this.f4878b == null) {
                    this.f4878b = windowInsetsCompat;
                    return Impl21.h(view, windowInsets);
                }
                Callback i2 = Impl21.i(view);
                if (i2 != null && Objects.equals(i2.f4869a, windowInsets)) {
                    return Impl21.h(view, windowInsets);
                }
                final int a4 = Impl21.a(windowInsetsCompat, this.f4878b);
                if (a4 == 0) {
                    return Impl21.h(view, windowInsets);
                }
                final WindowInsetsCompat windowInsetsCompat2 = this.f4878b;
                final WindowInsetsAnimationCompat windowInsetsAnimationCompat = new WindowInsetsAnimationCompat(a4, new DecelerateInterpolator(), 160L);
                windowInsetsAnimationCompat.setFraction(0.0f);
                final ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(windowInsetsAnimationCompat.getDurationMillis());
                final BoundsCompat b4 = Impl21.b(windowInsetsCompat, windowInsetsCompat2, a4);
                Impl21.e(view, windowInsetsAnimationCompat, windowInsets, false);
                duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.core.view.WindowInsetsAnimationCompat.Impl21.Impl21OnApplyWindowInsetsListener.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        windowInsetsAnimationCompat.setFraction(valueAnimator.getAnimatedFraction());
                        Impl21.f(view, Impl21.j(windowInsetsCompat, windowInsetsCompat2, windowInsetsAnimationCompat.getInterpolatedFraction(), a4), Collections.singletonList(windowInsetsAnimationCompat));
                    }
                });
                duration.addListener(new AnimatorListenerAdapter() { // from class: androidx.core.view.WindowInsetsAnimationCompat.Impl21.Impl21OnApplyWindowInsetsListener.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        windowInsetsAnimationCompat.setFraction(1.0f);
                        Impl21.d(view, windowInsetsAnimationCompat);
                    }
                });
                OneShotPreDrawListener.add(view, new Runnable() { // from class: androidx.core.view.WindowInsetsAnimationCompat.Impl21.Impl21OnApplyWindowInsetsListener.3
                    @Override // java.lang.Runnable
                    public void run() {
                        Impl21.g(view, windowInsetsAnimationCompat, b4);
                        duration.start();
                    }
                });
                this.f4878b = windowInsetsCompat;
                return Impl21.h(view, windowInsets);
            }
        }

        Impl21(int i2, @Nullable Interpolator interpolator, long j4) {
            super(i2, interpolator, j4);
        }

        @SuppressLint({"WrongConstant"})
        static int a(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsetsCompat windowInsetsCompat2) {
            int i2 = 0;
            for (int i4 = 1; i4 <= 256; i4 <<= 1) {
                if (!windowInsetsCompat.getInsets(i4).equals(windowInsetsCompat2.getInsets(i4))) {
                    i2 |= i4;
                }
            }
            return i2;
        }

        @NonNull
        static BoundsCompat b(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsetsCompat windowInsetsCompat2, int i2) {
            Insets insets = windowInsetsCompat.getInsets(i2);
            Insets insets2 = windowInsetsCompat2.getInsets(i2);
            return new BoundsCompat(Insets.of(Math.min(insets.left, insets2.left), Math.min(insets.top, insets2.top), Math.min(insets.right, insets2.right), Math.min(insets.bottom, insets2.bottom)), Insets.of(Math.max(insets.left, insets2.left), Math.max(insets.top, insets2.top), Math.max(insets.right, insets2.right), Math.max(insets.bottom, insets2.bottom)));
        }

        @NonNull
        private static View.OnApplyWindowInsetsListener c(@NonNull View view, @NonNull Callback callback) {
            return new Impl21OnApplyWindowInsetsListener(view, callback);
        }

        static void d(@NonNull View view, @NonNull WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
            Callback i2 = i(view);
            if (i2 != null) {
                i2.onEnd(windowInsetsAnimationCompat);
                if (i2.getDispatchMode() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
                    d(viewGroup.getChildAt(i4), windowInsetsAnimationCompat);
                }
            }
        }

        static void e(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsets windowInsets, boolean z3) {
            Callback i2 = i(view);
            if (i2 != null) {
                i2.f4869a = windowInsets;
                if (!z3) {
                    i2.onPrepare(windowInsetsAnimationCompat);
                    z3 = i2.getDispatchMode() == 0;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
                    e(viewGroup.getChildAt(i4), windowInsetsAnimationCompat, windowInsets, z3);
                }
            }
        }

        static void f(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull List<WindowInsetsAnimationCompat> list) {
            Callback i2 = i(view);
            if (i2 != null) {
                windowInsetsCompat = i2.onProgress(windowInsetsCompat, list);
                if (i2.getDispatchMode() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
                    f(viewGroup.getChildAt(i4), windowInsetsCompat, list);
                }
            }
        }

        static void g(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, BoundsCompat boundsCompat) {
            Callback i2 = i(view);
            if (i2 != null) {
                i2.onStart(windowInsetsAnimationCompat, boundsCompat);
                if (i2.getDispatchMode() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
                    g(viewGroup.getChildAt(i4), windowInsetsAnimationCompat, boundsCompat);
                }
            }
        }

        @NonNull
        static WindowInsets h(@NonNull View view, @NonNull WindowInsets windowInsets) {
            return view.getTag(R.id.tag_on_apply_window_listener) != null ? windowInsets : view.onApplyWindowInsets(windowInsets);
        }

        @Nullable
        static Callback i(View view) {
            Object tag = view.getTag(R.id.tag_window_insets_animation_callback);
            if (tag instanceof Impl21OnApplyWindowInsetsListener) {
                return ((Impl21OnApplyWindowInsetsListener) tag).f4877a;
            }
            return null;
        }

        @SuppressLint({"WrongConstant"})
        static WindowInsetsCompat j(WindowInsetsCompat windowInsetsCompat, WindowInsetsCompat windowInsetsCompat2, float f4, int i2) {
            WindowInsetsCompat.Builder builder = new WindowInsetsCompat.Builder(windowInsetsCompat);
            for (int i4 = 1; i4 <= 256; i4 <<= 1) {
                if ((i2 & i4) == 0) {
                    builder.setInsets(i4, windowInsetsCompat.getInsets(i4));
                } else {
                    Insets insets = windowInsetsCompat.getInsets(i4);
                    Insets insets2 = windowInsetsCompat2.getInsets(i4);
                    float f5 = 1.0f - f4;
                    double d4 = (insets.left - insets2.left) * f5;
                    Double.isNaN(d4);
                    int i5 = (int) (d4 + 0.5d);
                    double d5 = (insets.top - insets2.top) * f5;
                    Double.isNaN(d5);
                    double d6 = (insets.right - insets2.right) * f5;
                    Double.isNaN(d6);
                    int i6 = (int) (d6 + 0.5d);
                    double d7 = (insets.bottom - insets2.bottom) * f5;
                    Double.isNaN(d7);
                    builder.setInsets(i4, WindowInsetsCompat.b(insets, i5, (int) (d5 + 0.5d), i6, (int) (d7 + 0.5d)));
                }
            }
            return builder.build();
        }

        static void setCallback(@NonNull View view, @Nullable Callback callback) {
            Object tag = view.getTag(R.id.tag_on_apply_window_listener);
            if (callback == null) {
                view.setTag(R.id.tag_window_insets_animation_callback, null);
                if (tag == null) {
                    view.setOnApplyWindowInsetsListener(null);
                    return;
                }
                return;
            }
            View.OnApplyWindowInsetsListener c4 = c(view, callback);
            view.setTag(R.id.tag_window_insets_animation_callback, c4);
            if (tag == null) {
                view.setOnApplyWindowInsetsListener(c4);
            }
        }
    }

    public WindowInsetsAnimationCompat(int i2, @Nullable Interpolator interpolator, long j4) {
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 30) {
            this.f4866a = new Impl30(i2, interpolator, j4);
        } else if (i4 >= 21) {
            this.f4866a = new Impl21(i2, interpolator, j4);
        } else {
            this.f4866a = new Impl(0, interpolator, j4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(@NonNull View view, @Nullable Callback callback) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 30) {
            Impl30.setCallback(view, callback);
        } else if (i2 >= 21) {
            Impl21.setCallback(view, callback);
        }
    }

    @RequiresApi(30)
    static WindowInsetsAnimationCompat b(WindowInsetsAnimation windowInsetsAnimation) {
        return new WindowInsetsAnimationCompat(windowInsetsAnimation);
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float getAlpha() {
        return this.f4866a.getAlpha();
    }

    public long getDurationMillis() {
        return this.f4866a.getDurationMillis();
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float getFraction() {
        return this.f4866a.getFraction();
    }

    public float getInterpolatedFraction() {
        return this.f4866a.getInterpolatedFraction();
    }

    @Nullable
    public Interpolator getInterpolator() {
        return this.f4866a.getInterpolator();
    }

    public int getTypeMask() {
        return this.f4866a.getTypeMask();
    }

    public void setAlpha(@FloatRange(from = 0.0d, to = 1.0d) float f4) {
        this.f4866a.setAlpha(f4);
    }

    public void setFraction(@FloatRange(from = 0.0d, to = 1.0d) float f4) {
        this.f4866a.setFraction(f4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(30)
    /* loaded from: classes.dex */
    public static class Impl30 extends Impl {
        @NonNull

        /* renamed from: f  reason: collision with root package name */
        private final WindowInsetsAnimation f4893f;

        /* JADX INFO: Access modifiers changed from: private */
        @RequiresApi(30)
        /* loaded from: classes.dex */
        public static class ProxyCallback extends WindowInsetsAnimation.Callback {

            /* renamed from: a  reason: collision with root package name */
            private final Callback f4894a;

            /* renamed from: b  reason: collision with root package name */
            private List<WindowInsetsAnimationCompat> f4895b;

            /* renamed from: c  reason: collision with root package name */
            private ArrayList<WindowInsetsAnimationCompat> f4896c;

            /* renamed from: d  reason: collision with root package name */
            private final HashMap<WindowInsetsAnimation, WindowInsetsAnimationCompat> f4897d;

            ProxyCallback(@NonNull Callback callback) {
                super(callback.getDispatchMode());
                this.f4897d = new HashMap<>();
                this.f4894a = callback;
            }

            @NonNull
            private WindowInsetsAnimationCompat a(@NonNull WindowInsetsAnimation windowInsetsAnimation) {
                WindowInsetsAnimationCompat windowInsetsAnimationCompat = this.f4897d.get(windowInsetsAnimation);
                if (windowInsetsAnimationCompat == null) {
                    WindowInsetsAnimationCompat b4 = WindowInsetsAnimationCompat.b(windowInsetsAnimation);
                    this.f4897d.put(windowInsetsAnimation, b4);
                    return b4;
                }
                return windowInsetsAnimationCompat;
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            public void onEnd(@NonNull WindowInsetsAnimation windowInsetsAnimation) {
                this.f4894a.onEnd(a(windowInsetsAnimation));
                this.f4897d.remove(windowInsetsAnimation);
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            public void onPrepare(@NonNull WindowInsetsAnimation windowInsetsAnimation) {
                this.f4894a.onPrepare(a(windowInsetsAnimation));
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            @NonNull
            public WindowInsets onProgress(@NonNull WindowInsets windowInsets, @NonNull List<WindowInsetsAnimation> list) {
                ArrayList<WindowInsetsAnimationCompat> arrayList = this.f4896c;
                if (arrayList == null) {
                    ArrayList<WindowInsetsAnimationCompat> arrayList2 = new ArrayList<>(list.size());
                    this.f4896c = arrayList2;
                    this.f4895b = Collections.unmodifiableList(arrayList2);
                } else {
                    arrayList.clear();
                }
                for (int size = list.size() - 1; size >= 0; size--) {
                    WindowInsetsAnimation windowInsetsAnimation = list.get(size);
                    WindowInsetsAnimationCompat a4 = a(windowInsetsAnimation);
                    a4.setFraction(windowInsetsAnimation.getFraction());
                    this.f4896c.add(a4);
                }
                return this.f4894a.onProgress(WindowInsetsCompat.toWindowInsetsCompat(windowInsets), this.f4895b).toWindowInsets();
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            @NonNull
            public WindowInsetsAnimation.Bounds onStart(@NonNull WindowInsetsAnimation windowInsetsAnimation, @NonNull WindowInsetsAnimation.Bounds bounds) {
                return this.f4894a.onStart(a(windowInsetsAnimation), BoundsCompat.toBoundsCompat(bounds)).toBounds();
            }
        }

        Impl30(@NonNull WindowInsetsAnimation windowInsetsAnimation) {
            super(0, null, 0L);
            this.f4893f = windowInsetsAnimation;
        }

        @NonNull
        public static WindowInsetsAnimation.Bounds createPlatformBounds(@NonNull BoundsCompat boundsCompat) {
            return new WindowInsetsAnimation.Bounds(boundsCompat.getLowerBound().toPlatformInsets(), boundsCompat.getUpperBound().toPlatformInsets());
        }

        @NonNull
        public static Insets getHigherBounds(@NonNull WindowInsetsAnimation.Bounds bounds) {
            return Insets.toCompatInsets(bounds.getUpperBound());
        }

        @NonNull
        public static Insets getLowerBounds(@NonNull WindowInsetsAnimation.Bounds bounds) {
            return Insets.toCompatInsets(bounds.getLowerBound());
        }

        public static void setCallback(@NonNull View view, @Nullable Callback callback) {
            view.setWindowInsetsAnimationCallback(callback != null ? new ProxyCallback(callback) : null);
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public long getDurationMillis() {
            return this.f4893f.getDurationMillis();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public float getFraction() {
            return this.f4893f.getFraction();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public float getInterpolatedFraction() {
            return this.f4893f.getInterpolatedFraction();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        @Nullable
        public Interpolator getInterpolator() {
            return this.f4893f.getInterpolator();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public int getTypeMask() {
            return this.f4893f.getTypeMask();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public void setFraction(float f4) {
            this.f4893f.setFraction(f4);
        }

        Impl30(int i2, Interpolator interpolator, long j4) {
            this(new WindowInsetsAnimation(i2, interpolator, j4));
        }
    }

    /* loaded from: classes.dex */
    public static final class BoundsCompat {

        /* renamed from: a  reason: collision with root package name */
        private final Insets f4867a;

        /* renamed from: b  reason: collision with root package name */
        private final Insets f4868b;

        public BoundsCompat(@NonNull Insets insets, @NonNull Insets insets2) {
            this.f4867a = insets;
            this.f4868b = insets2;
        }

        @NonNull
        @RequiresApi(30)
        public static BoundsCompat toBoundsCompat(@NonNull WindowInsetsAnimation.Bounds bounds) {
            return new BoundsCompat(bounds);
        }

        @NonNull
        public Insets getLowerBound() {
            return this.f4867a;
        }

        @NonNull
        public Insets getUpperBound() {
            return this.f4868b;
        }

        @NonNull
        public BoundsCompat inset(@NonNull Insets insets) {
            return new BoundsCompat(WindowInsetsCompat.b(this.f4867a, insets.left, insets.top, insets.right, insets.bottom), WindowInsetsCompat.b(this.f4868b, insets.left, insets.top, insets.right, insets.bottom));
        }

        @NonNull
        @RequiresApi(30)
        public WindowInsetsAnimation.Bounds toBounds() {
            return Impl30.createPlatformBounds(this);
        }

        public String toString() {
            return "Bounds{lower=" + this.f4867a + " upper=" + this.f4868b + "}";
        }

        @RequiresApi(30)
        private BoundsCompat(@NonNull WindowInsetsAnimation.Bounds bounds) {
            this.f4867a = Impl30.getLowerBounds(bounds);
            this.f4868b = Impl30.getHigherBounds(bounds);
        }
    }

    @RequiresApi(30)
    private WindowInsetsAnimationCompat(@NonNull WindowInsetsAnimation windowInsetsAnimation) {
        this(0, null, 0L);
        if (Build.VERSION.SDK_INT >= 30) {
            this.f4866a = new Impl30(windowInsetsAnimation);
        }
    }
}
