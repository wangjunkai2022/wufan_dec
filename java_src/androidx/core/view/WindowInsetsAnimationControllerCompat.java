package androidx.core.view;

import android.os.Build;
import android.view.WindowInsetsAnimationController;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.graphics.Insets;
/* loaded from: classes.dex */
public final class WindowInsetsAnimationControllerCompat {

    /* renamed from: a  reason: collision with root package name */
    private final Impl f4898a;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class Impl {
        Impl() {
        }

        void a(boolean z3) {
        }

        boolean b() {
            return true;
        }

        boolean c() {
            return false;
        }

        public float getCurrentAlpha() {
            return 0.0f;
        }

        @FloatRange(from = 0.0d, to = 1.0d)
        public float getCurrentFraction() {
            return 0.0f;
        }

        @NonNull
        public Insets getCurrentInsets() {
            return Insets.NONE;
        }

        @NonNull
        public Insets getHiddenStateInsets() {
            return Insets.NONE;
        }

        @NonNull
        public Insets getShownStateInsets() {
            return Insets.NONE;
        }

        public int getTypes() {
            return 0;
        }

        public boolean isReady() {
            return false;
        }

        public void setInsetsAndAlpha(@Nullable Insets insets, @FloatRange(from = 0.0d, to = 1.0d) float f4, @FloatRange(from = 0.0d, to = 1.0d) float f5) {
        }
    }

    @RequiresApi(30)
    /* loaded from: classes.dex */
    private static class Impl30 extends Impl {

        /* renamed from: a  reason: collision with root package name */
        private final WindowInsetsAnimationController f4899a;

        Impl30(@NonNull WindowInsetsAnimationController windowInsetsAnimationController) {
            this.f4899a = windowInsetsAnimationController;
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.Impl
        void a(boolean z3) {
            this.f4899a.finish(z3);
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.Impl
        boolean b() {
            return this.f4899a.isCancelled();
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.Impl
        boolean c() {
            return this.f4899a.isFinished();
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.Impl
        public float getCurrentAlpha() {
            return this.f4899a.getCurrentAlpha();
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.Impl
        public float getCurrentFraction() {
            return this.f4899a.getCurrentFraction();
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.Impl
        @NonNull
        public Insets getCurrentInsets() {
            return Insets.toCompatInsets(this.f4899a.getCurrentInsets());
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.Impl
        @NonNull
        public Insets getHiddenStateInsets() {
            return Insets.toCompatInsets(this.f4899a.getHiddenStateInsets());
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.Impl
        @NonNull
        public Insets getShownStateInsets() {
            return Insets.toCompatInsets(this.f4899a.getShownStateInsets());
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.Impl
        public int getTypes() {
            return this.f4899a.getTypes();
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.Impl
        public boolean isReady() {
            return this.f4899a.isReady();
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.Impl
        public void setInsetsAndAlpha(@Nullable Insets insets, float f4, float f5) {
            this.f4899a.setInsetsAndAlpha(insets == null ? null : insets.toPlatformInsets(), f4, f5);
        }
    }

    WindowInsetsAnimationControllerCompat() {
        if (Build.VERSION.SDK_INT < 30) {
            this.f4898a = new Impl();
            return;
        }
        throw new UnsupportedOperationException("On API 30+, the constructor taking a " + WindowInsetsAnimationController.class.getSimpleName() + " as parameter");
    }

    public void finish(boolean z3) {
        this.f4898a.a(z3);
    }

    public float getCurrentAlpha() {
        return this.f4898a.getCurrentAlpha();
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float getCurrentFraction() {
        return this.f4898a.getCurrentFraction();
    }

    @NonNull
    public Insets getCurrentInsets() {
        return this.f4898a.getCurrentInsets();
    }

    @NonNull
    public Insets getHiddenStateInsets() {
        return this.f4898a.getHiddenStateInsets();
    }

    @NonNull
    public Insets getShownStateInsets() {
        return this.f4898a.getShownStateInsets();
    }

    public int getTypes() {
        return this.f4898a.getTypes();
    }

    public boolean isCancelled() {
        return this.f4898a.b();
    }

    public boolean isFinished() {
        return this.f4898a.c();
    }

    public boolean isReady() {
        return (isFinished() || isCancelled()) ? false : true;
    }

    public void setInsetsAndAlpha(@Nullable Insets insets, @FloatRange(from = 0.0d, to = 1.0d) float f4, @FloatRange(from = 0.0d, to = 1.0d) float f5) {
        this.f4898a.setInsetsAndAlpha(insets, f4, f5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(30)
    public WindowInsetsAnimationControllerCompat(@NonNull WindowInsetsAnimationController windowInsetsAnimationController) {
        this.f4898a = new Impl30(windowInsetsAnimationController);
    }
}
