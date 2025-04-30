package androidx.core.view;

import android.os.Build;
import android.os.CancellationSignal;
import android.view.View;
import android.view.Window;
import android.view.WindowInsetsAnimationControlListener;
import android.view.WindowInsetsAnimationController;
import android.view.WindowInsetsController;
import android.view.animation.Interpolator;
import android.view.inputmethod.InputMethodManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.collection.SimpleArrayMap;
/* loaded from: classes.dex */
public final class WindowInsetsControllerCompat {
    public static final int BEHAVIOR_SHOW_BARS_BY_SWIPE = 1;
    public static final int BEHAVIOR_SHOW_BARS_BY_TOUCH = 0;
    public static final int BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE = 2;

    /* renamed from: a  reason: collision with root package name */
    private final Impl f4945a;

    /* loaded from: classes.dex */
    private static class Impl {
        Impl() {
        }

        void a(OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        }

        void b(int i2, long j4, Interpolator interpolator, CancellationSignal cancellationSignal, WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat) {
        }

        int c() {
            return 0;
        }

        void d(int i2) {
        }

        void e(@NonNull OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        }

        void f(int i2) {
        }

        void g(int i2) {
        }

        public boolean isAppearanceLightNavigationBars() {
            return false;
        }

        public boolean isAppearanceLightStatusBars() {
            return false;
        }

        public void setAppearanceLightNavigationBars(boolean z3) {
        }

        public void setAppearanceLightStatusBars(boolean z3) {
        }
    }

    @RequiresApi(20)
    /* loaded from: classes.dex */
    private static class Impl20 extends Impl {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        protected final Window f4946a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final View f4947b;

        Impl20(@NonNull Window window, @Nullable View view) {
            this.f4946a = window;
            this.f4947b = view;
        }

        private void h(int i2) {
            if (i2 == 1) {
                i(4);
            } else if (i2 == 2) {
                i(2);
            } else if (i2 != 8) {
            } else {
                ((InputMethodManager) this.f4946a.getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.f4946a.getDecorView().getWindowToken(), 0);
            }
        }

        private void k(int i2) {
            if (i2 == 1) {
                l(4);
                m(1024);
            } else if (i2 == 2) {
                l(2);
            } else if (i2 != 8) {
            } else {
                final View view = this.f4947b;
                if (view != null && (view.isInEditMode() || view.onCheckIsTextEditor())) {
                    view.requestFocus();
                } else {
                    view = this.f4946a.getCurrentFocus();
                }
                if (view == null) {
                    view = this.f4946a.findViewById(16908290);
                }
                if (view == null || !view.hasWindowFocus()) {
                    return;
                }
                view.post(new Runnable() { // from class: androidx.core.view.WindowInsetsControllerCompat.Impl20.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 0);
                    }
                });
            }
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        void a(OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        void b(int i2, long j4, Interpolator interpolator, CancellationSignal cancellationSignal, WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat) {
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        int c() {
            return 0;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        void d(int i2) {
            for (int i4 = 1; i4 <= 256; i4 <<= 1) {
                if ((i2 & i4) != 0) {
                    h(i4);
                }
            }
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        void e(@NonNull OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        void f(int i2) {
            if (i2 == 0) {
                l(6144);
            } else if (i2 == 1) {
                l(4096);
                i(2048);
            } else if (i2 != 2) {
            } else {
                l(2048);
                i(4096);
            }
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        void g(int i2) {
            for (int i4 = 1; i4 <= 256; i4 <<= 1) {
                if ((i2 & i4) != 0) {
                    k(i4);
                }
            }
        }

        protected void i(int i2) {
            View decorView = this.f4946a.getDecorView();
            decorView.setSystemUiVisibility(i2 | decorView.getSystemUiVisibility());
        }

        protected void j(int i2) {
            this.f4946a.addFlags(i2);
        }

        protected void l(int i2) {
            View decorView = this.f4946a.getDecorView();
            decorView.setSystemUiVisibility((i2 ^ (-1)) & decorView.getSystemUiVisibility());
        }

        protected void m(int i2) {
            this.f4946a.clearFlags(i2);
        }
    }

    @RequiresApi(23)
    /* loaded from: classes.dex */
    private static class Impl23 extends Impl20 {
        Impl23(@NonNull Window window, @Nullable View view) {
            super(window, view);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public boolean isAppearanceLightStatusBars() {
            return (this.f4946a.getDecorView().getSystemUiVisibility() & 8192) != 0;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public void setAppearanceLightStatusBars(boolean z3) {
            if (z3) {
                m(67108864);
                j(Integer.MIN_VALUE);
                i(8192);
                return;
            }
            l(8192);
        }
    }

    @RequiresApi(26)
    /* loaded from: classes.dex */
    private static class Impl26 extends Impl23 {
        Impl26(@NonNull Window window, @Nullable View view) {
            super(window, view);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public boolean isAppearanceLightNavigationBars() {
            return (this.f4946a.getDecorView().getSystemUiVisibility() & 16) != 0;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public void setAppearanceLightNavigationBars(boolean z3) {
            if (z3) {
                m(134217728);
                j(Integer.MIN_VALUE);
                i(16);
                return;
            }
            l(16);
        }
    }

    /* loaded from: classes.dex */
    public interface OnControllableInsetsChangedListener {
        void onControllableInsetsChanged(@NonNull WindowInsetsControllerCompat windowInsetsControllerCompat, int i2);
    }

    @RequiresApi(30)
    private WindowInsetsControllerCompat(@NonNull WindowInsetsController windowInsetsController) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.f4945a = new Impl30(windowInsetsController, this);
        } else {
            this.f4945a = new Impl();
        }
    }

    @NonNull
    @RequiresApi(30)
    public static WindowInsetsControllerCompat toWindowInsetsControllerCompat(@NonNull WindowInsetsController windowInsetsController) {
        return new WindowInsetsControllerCompat(windowInsetsController);
    }

    public void addOnControllableInsetsChangedListener(@NonNull OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        this.f4945a.a(onControllableInsetsChangedListener);
    }

    public void controlWindowInsetsAnimation(int i2, long j4, @Nullable Interpolator interpolator, @Nullable CancellationSignal cancellationSignal, @NonNull WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat) {
        this.f4945a.b(i2, j4, interpolator, cancellationSignal, windowInsetsAnimationControlListenerCompat);
    }

    public int getSystemBarsBehavior() {
        return this.f4945a.c();
    }

    public void hide(int i2) {
        this.f4945a.d(i2);
    }

    public boolean isAppearanceLightNavigationBars() {
        return this.f4945a.isAppearanceLightNavigationBars();
    }

    public boolean isAppearanceLightStatusBars() {
        return this.f4945a.isAppearanceLightStatusBars();
    }

    public void removeOnControllableInsetsChangedListener(@NonNull OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        this.f4945a.e(onControllableInsetsChangedListener);
    }

    public void setAppearanceLightNavigationBars(boolean z3) {
        this.f4945a.setAppearanceLightNavigationBars(z3);
    }

    public void setAppearanceLightStatusBars(boolean z3) {
        this.f4945a.setAppearanceLightStatusBars(z3);
    }

    public void setSystemBarsBehavior(int i2) {
        this.f4945a.f(i2);
    }

    public void show(int i2) {
        this.f4945a.g(i2);
    }

    @RequiresApi(30)
    /* loaded from: classes.dex */
    private static class Impl30 extends Impl {

        /* renamed from: a  reason: collision with root package name */
        final WindowInsetsControllerCompat f4950a;

        /* renamed from: b  reason: collision with root package name */
        final WindowInsetsController f4951b;

        /* renamed from: c  reason: collision with root package name */
        private final SimpleArrayMap<OnControllableInsetsChangedListener, WindowInsetsController.OnControllableInsetsChangedListener> f4952c;

        /* renamed from: d  reason: collision with root package name */
        protected Window f4953d;

        Impl30(@NonNull Window window, @NonNull WindowInsetsControllerCompat windowInsetsControllerCompat) {
            this(window.getInsetsController(), windowInsetsControllerCompat);
            this.f4953d = window;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        void a(@NonNull final OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
            if (this.f4952c.containsKey(onControllableInsetsChangedListener)) {
                return;
            }
            WindowInsetsController.OnControllableInsetsChangedListener onControllableInsetsChangedListener2 = new WindowInsetsController.OnControllableInsetsChangedListener() { // from class: androidx.core.view.WindowInsetsControllerCompat.Impl30.2
                @Override // android.view.WindowInsetsController.OnControllableInsetsChangedListener
                public void onControllableInsetsChanged(@NonNull WindowInsetsController windowInsetsController, int i2) {
                    Impl30 impl30 = Impl30.this;
                    if (impl30.f4951b == windowInsetsController) {
                        onControllableInsetsChangedListener.onControllableInsetsChanged(impl30.f4950a, i2);
                    }
                }
            };
            this.f4952c.put(onControllableInsetsChangedListener, onControllableInsetsChangedListener2);
            this.f4951b.addOnControllableInsetsChangedListener(onControllableInsetsChangedListener2);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        void b(int i2, long j4, @Nullable Interpolator interpolator, @Nullable CancellationSignal cancellationSignal, @NonNull final WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat) {
            this.f4951b.controlWindowInsetsAnimation(i2, j4, interpolator, cancellationSignal, new WindowInsetsAnimationControlListener() { // from class: androidx.core.view.WindowInsetsControllerCompat.Impl30.1

                /* renamed from: a  reason: collision with root package name */
                private WindowInsetsAnimationControllerCompat f4954a = null;

                @Override // android.view.WindowInsetsAnimationControlListener
                public void onCancelled(@Nullable WindowInsetsAnimationController windowInsetsAnimationController) {
                    windowInsetsAnimationControlListenerCompat.onCancelled(windowInsetsAnimationController == null ? null : this.f4954a);
                }

                @Override // android.view.WindowInsetsAnimationControlListener
                public void onFinished(@NonNull WindowInsetsAnimationController windowInsetsAnimationController) {
                    windowInsetsAnimationControlListenerCompat.onFinished(this.f4954a);
                }

                @Override // android.view.WindowInsetsAnimationControlListener
                public void onReady(@NonNull WindowInsetsAnimationController windowInsetsAnimationController, int i4) {
                    WindowInsetsAnimationControllerCompat windowInsetsAnimationControllerCompat = new WindowInsetsAnimationControllerCompat(windowInsetsAnimationController);
                    this.f4954a = windowInsetsAnimationControllerCompat;
                    windowInsetsAnimationControlListenerCompat.onReady(windowInsetsAnimationControllerCompat, i4);
                }
            });
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        int c() {
            return this.f4951b.getSystemBarsBehavior();
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        void d(int i2) {
            this.f4951b.hide(i2);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        void e(@NonNull OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
            WindowInsetsController.OnControllableInsetsChangedListener remove = this.f4952c.remove(onControllableInsetsChangedListener);
            if (remove != null) {
                this.f4951b.removeOnControllableInsetsChangedListener(remove);
            }
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        void f(int i2) {
            this.f4951b.setSystemBarsBehavior(i2);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        void g(int i2) {
            this.f4951b.show(i2);
        }

        protected void h(int i2) {
            View decorView = this.f4953d.getDecorView();
            decorView.setSystemUiVisibility((i2 ^ (-1)) & decorView.getSystemUiVisibility());
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public boolean isAppearanceLightNavigationBars() {
            return (this.f4951b.getSystemBarsAppearance() & 16) != 0;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public boolean isAppearanceLightStatusBars() {
            return (this.f4951b.getSystemBarsAppearance() & 8) != 0;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public void setAppearanceLightNavigationBars(boolean z3) {
            if (z3) {
                this.f4951b.setSystemBarsAppearance(16, 16);
            } else {
                this.f4951b.setSystemBarsAppearance(0, 16);
            }
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public void setAppearanceLightStatusBars(boolean z3) {
            if (z3) {
                if (this.f4953d != null) {
                    h(8192);
                }
                this.f4951b.setSystemBarsAppearance(8, 8);
                return;
            }
            this.f4951b.setSystemBarsAppearance(0, 8);
        }

        Impl30(@NonNull WindowInsetsController windowInsetsController, @NonNull WindowInsetsControllerCompat windowInsetsControllerCompat) {
            this.f4952c = new SimpleArrayMap<>();
            this.f4951b = windowInsetsController;
            this.f4950a = windowInsetsControllerCompat;
        }
    }

    public WindowInsetsControllerCompat(@NonNull Window window, @NonNull View view) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 30) {
            this.f4945a = new Impl30(window, this);
        } else if (i2 >= 26) {
            this.f4945a = new Impl26(window, view);
        } else if (i2 >= 23) {
            this.f4945a = new Impl23(window, view);
        } else if (i2 >= 20) {
            this.f4945a = new Impl20(window, view);
        } else {
            this.f4945a = new Impl();
        }
    }
}
