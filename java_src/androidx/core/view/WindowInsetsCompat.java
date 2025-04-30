package androidx.core.view;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.Insets;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Objects;
/* loaded from: classes.dex */
public class WindowInsetsCompat {
    @NonNull
    public static final WindowInsetsCompat CONSUMED;

    /* renamed from: b  reason: collision with root package name */
    private static final String f4900b = "WindowInsetsCompat";

    /* renamed from: a  reason: collision with root package name */
    private final Impl f4901a;

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(21)
    @SuppressLint({"SoonBlockedPrivateApi"})
    /* loaded from: classes.dex */
    public static class Api21ReflectionHolder {

        /* renamed from: a  reason: collision with root package name */
        private static Field f4902a;

        /* renamed from: b  reason: collision with root package name */
        private static Field f4903b;

        /* renamed from: c  reason: collision with root package name */
        private static Field f4904c;

        /* renamed from: d  reason: collision with root package name */
        private static boolean f4905d;

        static {
            try {
                Field declaredField = View.class.getDeclaredField("mAttachInfo");
                f4902a = declaredField;
                declaredField.setAccessible(true);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                Field declaredField2 = cls.getDeclaredField("mStableInsets");
                f4903b = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = cls.getDeclaredField("mContentInsets");
                f4904c = declaredField3;
                declaredField3.setAccessible(true);
                f4905d = true;
            } catch (ReflectiveOperationException e4) {
                StringBuilder sb = new StringBuilder();
                sb.append("Failed to get visible insets from AttachInfo ");
                sb.append(e4.getMessage());
            }
        }

        private Api21ReflectionHolder() {
        }

        @Nullable
        public static WindowInsetsCompat getRootWindowInsets(@NonNull View view) {
            if (f4905d && view.isAttachedToWindow()) {
                try {
                    Object obj = f4902a.get(view.getRootView());
                    if (obj != null) {
                        Rect rect = (Rect) f4903b.get(obj);
                        Rect rect2 = (Rect) f4904c.get(obj);
                        if (rect != null && rect2 != null) {
                            WindowInsetsCompat build = new Builder().setStableInsets(Insets.of(rect)).setSystemWindowInsets(Insets.of(rect2)).build();
                            build.e(build);
                            build.a(view.getRootView());
                            return build;
                        }
                    }
                } catch (IllegalAccessException e4) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Failed to get insets from AttachInfo. ");
                    sb.append(e4.getMessage());
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class BuilderImpl {

        /* renamed from: a  reason: collision with root package name */
        private final WindowInsetsCompat f4907a;

        /* renamed from: b  reason: collision with root package name */
        Insets[] f4908b;

        BuilderImpl() {
            this(new WindowInsetsCompat((WindowInsetsCompat) null));
        }

        protected final void a() {
            Insets[] insetsArr = this.f4908b;
            if (insetsArr != null) {
                Insets insets = insetsArr[Type.b(1)];
                Insets insets2 = this.f4908b[Type.b(2)];
                if (insets2 == null) {
                    insets2 = this.f4907a.getInsets(2);
                }
                if (insets == null) {
                    insets = this.f4907a.getInsets(1);
                }
                i(Insets.max(insets, insets2));
                Insets insets3 = this.f4908b[Type.b(16)];
                if (insets3 != null) {
                    h(insets3);
                }
                Insets insets4 = this.f4908b[Type.b(32)];
                if (insets4 != null) {
                    f(insets4);
                }
                Insets insets5 = this.f4908b[Type.b(64)];
                if (insets5 != null) {
                    j(insets5);
                }
            }
        }

        @NonNull
        WindowInsetsCompat b() {
            a();
            return this.f4907a;
        }

        void c(@Nullable DisplayCutoutCompat displayCutoutCompat) {
        }

        void d(int i2, @NonNull Insets insets) {
            if (this.f4908b == null) {
                this.f4908b = new Insets[9];
            }
            for (int i4 = 1; i4 <= 256; i4 <<= 1) {
                if ((i2 & i4) != 0) {
                    this.f4908b[Type.b(i4)] = insets;
                }
            }
        }

        void e(int i2, @NonNull Insets insets) {
            if (i2 == 8) {
                throw new IllegalArgumentException("Ignoring visibility inset not available for IME");
            }
        }

        void f(@NonNull Insets insets) {
        }

        void g(@NonNull Insets insets) {
        }

        void h(@NonNull Insets insets) {
        }

        void i(@NonNull Insets insets) {
        }

        void j(@NonNull Insets insets) {
        }

        void k(int i2, boolean z3) {
        }

        BuilderImpl(@NonNull WindowInsetsCompat windowInsetsCompat) {
            this.f4907a = windowInsetsCompat;
        }
    }

    @RequiresApi(30)
    /* loaded from: classes.dex */
    private static class BuilderImpl30 extends BuilderImpl29 {
        BuilderImpl30() {
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        void d(int i2, @NonNull Insets insets) {
            this.f4915c.setInsets(TypeImpl30.a(i2), insets.toPlatformInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        void e(int i2, @NonNull Insets insets) {
            this.f4915c.setInsetsIgnoringVisibility(TypeImpl30.a(i2), insets.toPlatformInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        void k(int i2, boolean z3) {
            this.f4915c.setVisible(TypeImpl30.a(i2), z3);
        }

        BuilderImpl30(@NonNull WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class Impl {
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        static final WindowInsetsCompat f4916b = new Builder().build().consumeDisplayCutout().consumeStableInsets().consumeSystemWindowInsets();

        /* renamed from: a  reason: collision with root package name */
        final WindowInsetsCompat f4917a;

        Impl(@NonNull WindowInsetsCompat windowInsetsCompat) {
            this.f4917a = windowInsetsCompat;
        }

        @NonNull
        WindowInsetsCompat a() {
            return this.f4917a;
        }

        @NonNull
        WindowInsetsCompat b() {
            return this.f4917a;
        }

        @NonNull
        WindowInsetsCompat c() {
            return this.f4917a;
        }

        void d(@NonNull View view) {
        }

        void e(@NonNull WindowInsetsCompat windowInsetsCompat) {
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Impl) {
                Impl impl = (Impl) obj;
                return n() == impl.n() && m() == impl.m() && ObjectsCompat.equals(j(), impl.j()) && ObjectsCompat.equals(h(), impl.h()) && ObjectsCompat.equals(f(), impl.f());
            }
            return false;
        }

        @Nullable
        DisplayCutoutCompat f() {
            return null;
        }

        @NonNull
        Insets g() {
            return j();
        }

        @NonNull
        Insets getInsets(int i2) {
            return Insets.NONE;
        }

        @NonNull
        Insets getInsetsIgnoringVisibility(int i2) {
            if ((i2 & 8) == 0) {
                return Insets.NONE;
            }
            throw new IllegalArgumentException("Unable to query the maximum insets for IME");
        }

        @NonNull
        Insets h() {
            return Insets.NONE;
        }

        public int hashCode() {
            return ObjectsCompat.hash(Boolean.valueOf(n()), Boolean.valueOf(m()), j(), h(), f());
        }

        @NonNull
        Insets i() {
            return j();
        }

        boolean isVisible(int i2) {
            return true;
        }

        @NonNull
        Insets j() {
            return Insets.NONE;
        }

        @NonNull
        Insets k() {
            return j();
        }

        @NonNull
        WindowInsetsCompat l(int i2, int i4, int i5, int i6) {
            return f4916b;
        }

        boolean m() {
            return false;
        }

        boolean n() {
            return false;
        }

        void o(@NonNull Insets insets) {
        }

        void p(@Nullable WindowInsetsCompat windowInsetsCompat) {
        }

        public void setOverriddenInsets(Insets[] insetsArr) {
        }

        public void setStableInsets(Insets insets) {
        }
    }

    @RequiresApi(28)
    /* loaded from: classes.dex */
    private static class Impl28 extends Impl21 {
        Impl28(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        WindowInsetsCompat a() {
            return WindowInsetsCompat.toWindowInsetsCompat(this.f4923c.consumeDisplayCutout());
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Impl28) {
                Impl28 impl28 = (Impl28) obj;
                return Objects.equals(this.f4923c, impl28.f4923c) && Objects.equals(this.f4927g, impl28.f4927g);
            }
            return false;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @Nullable
        DisplayCutoutCompat f() {
            return DisplayCutoutCompat.c(this.f4923c.getDisplayCutout());
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public int hashCode() {
            return this.f4923c.hashCode();
        }

        Impl28(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Impl28 impl28) {
            super(windowInsetsCompat, impl28);
        }
    }

    @RequiresApi(30)
    /* loaded from: classes.dex */
    private static class Impl30 extends Impl29 {
        @NonNull

        /* renamed from: q  reason: collision with root package name */
        static final WindowInsetsCompat f4932q = WindowInsetsCompat.toWindowInsetsCompat(WindowInsets.CONSUMED);

        Impl30(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        final void d(@NonNull View view) {
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        public Insets getInsets(int i2) {
            return Insets.toCompatInsets(this.f4923c.getInsets(TypeImpl30.a(i2)));
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        public Insets getInsetsIgnoringVisibility(int i2) {
            return Insets.toCompatInsets(this.f4923c.getInsetsIgnoringVisibility(TypeImpl30.a(i2)));
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public boolean isVisible(int i2) {
            return this.f4923c.isVisible(TypeImpl30.a(i2));
        }

        Impl30(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Impl30 impl30) {
            super(windowInsetsCompat, impl30);
        }
    }

    /* loaded from: classes.dex */
    public static final class Type {

        /* renamed from: a  reason: collision with root package name */
        static final int f4933a = 1;

        /* renamed from: b  reason: collision with root package name */
        static final int f4934b = 1;

        /* renamed from: c  reason: collision with root package name */
        static final int f4935c = 2;

        /* renamed from: d  reason: collision with root package name */
        static final int f4936d = 4;

        /* renamed from: e  reason: collision with root package name */
        static final int f4937e = 8;

        /* renamed from: f  reason: collision with root package name */
        static final int f4938f = 16;

        /* renamed from: g  reason: collision with root package name */
        static final int f4939g = 32;

        /* renamed from: h  reason: collision with root package name */
        static final int f4940h = 64;

        /* renamed from: i  reason: collision with root package name */
        static final int f4941i = 128;

        /* renamed from: j  reason: collision with root package name */
        static final int f4942j = 256;

        /* renamed from: k  reason: collision with root package name */
        static final int f4943k = 9;

        /* renamed from: l  reason: collision with root package name */
        static final int f4944l = 256;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        /* loaded from: classes.dex */
        public @interface InsetsType {
        }

        private Type() {
        }

        @SuppressLint({"WrongConstant"})
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        static int a() {
            return -1;
        }

        static int b(int i2) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 4) {
                        if (i2 != 8) {
                            if (i2 != 16) {
                                if (i2 != 32) {
                                    if (i2 != 64) {
                                        if (i2 != 128) {
                                            if (i2 == 256) {
                                                return 8;
                                            }
                                            throw new IllegalArgumentException("type needs to be >= FIRST and <= LAST, type=" + i2);
                                        }
                                        return 7;
                                    }
                                    return 6;
                                }
                                return 5;
                            }
                            return 4;
                        }
                        return 3;
                    }
                    return 2;
                }
                return 1;
            }
            return 0;
        }

        public static int captionBar() {
            return 4;
        }

        public static int displayCutout() {
            return 128;
        }

        public static int ime() {
            return 8;
        }

        public static int mandatorySystemGestures() {
            return 32;
        }

        public static int navigationBars() {
            return 2;
        }

        public static int statusBars() {
            return 1;
        }

        public static int systemBars() {
            return 7;
        }

        public static int systemGestures() {
            return 16;
        }

        public static int tappableElement() {
            return 64;
        }
    }

    @RequiresApi(30)
    /* loaded from: classes.dex */
    private static final class TypeImpl30 {
        private TypeImpl30() {
        }

        static int a(int i2) {
            int statusBars;
            int i4 = 0;
            for (int i5 = 1; i5 <= 256; i5 <<= 1) {
                if ((i2 & i5) != 0) {
                    if (i5 == 1) {
                        statusBars = WindowInsets.Type.statusBars();
                    } else if (i5 == 2) {
                        statusBars = WindowInsets.Type.navigationBars();
                    } else if (i5 == 4) {
                        statusBars = WindowInsets.Type.captionBar();
                    } else if (i5 == 8) {
                        statusBars = WindowInsets.Type.ime();
                    } else if (i5 == 16) {
                        statusBars = WindowInsets.Type.systemGestures();
                    } else if (i5 == 32) {
                        statusBars = WindowInsets.Type.mandatorySystemGestures();
                    } else if (i5 == 64) {
                        statusBars = WindowInsets.Type.tappableElement();
                    } else if (i5 == 128) {
                        statusBars = WindowInsets.Type.displayCutout();
                    }
                    i4 |= statusBars;
                }
            }
            return i4;
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            CONSUMED = Impl30.f4932q;
        } else {
            CONSUMED = Impl.f4916b;
        }
    }

    @RequiresApi(20)
    private WindowInsetsCompat(@NonNull WindowInsets windowInsets) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 30) {
            this.f4901a = new Impl30(this, windowInsets);
        } else if (i2 >= 29) {
            this.f4901a = new Impl29(this, windowInsets);
        } else if (i2 >= 28) {
            this.f4901a = new Impl28(this, windowInsets);
        } else if (i2 >= 21) {
            this.f4901a = new Impl21(this, windowInsets);
        } else if (i2 >= 20) {
            this.f4901a = new Impl20(this, windowInsets);
        } else {
            this.f4901a = new Impl(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Insets b(@NonNull Insets insets, int i2, int i4, int i5, int i6) {
        int max = Math.max(0, insets.left - i2);
        int max2 = Math.max(0, insets.top - i4);
        int max3 = Math.max(0, insets.right - i5);
        int max4 = Math.max(0, insets.bottom - i6);
        return (max == i2 && max2 == i4 && max3 == i5 && max4 == i6) ? insets : Insets.of(max, max2, max3, max4);
    }

    @NonNull
    @RequiresApi(20)
    public static WindowInsetsCompat toWindowInsetsCompat(@NonNull WindowInsets windowInsets) {
        return toWindowInsetsCompat(windowInsets, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull View view) {
        this.f4901a.d(view);
    }

    void c(Insets[] insetsArr) {
        this.f4901a.setOverriddenInsets(insetsArr);
    }

    @NonNull
    @Deprecated
    public WindowInsetsCompat consumeDisplayCutout() {
        return this.f4901a.a();
    }

    @NonNull
    @Deprecated
    public WindowInsetsCompat consumeStableInsets() {
        return this.f4901a.b();
    }

    @NonNull
    @Deprecated
    public WindowInsetsCompat consumeSystemWindowInsets() {
        return this.f4901a.c();
    }

    void d(@NonNull Insets insets) {
        this.f4901a.o(insets);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(@Nullable WindowInsetsCompat windowInsetsCompat) {
        this.f4901a.p(windowInsetsCompat);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WindowInsetsCompat) {
            return ObjectsCompat.equals(this.f4901a, ((WindowInsetsCompat) obj).f4901a);
        }
        return false;
    }

    void f(@Nullable Insets insets) {
        this.f4901a.setStableInsets(insets);
    }

    @Nullable
    public DisplayCutoutCompat getDisplayCutout() {
        return this.f4901a.f();
    }

    @NonNull
    public Insets getInsets(int i2) {
        return this.f4901a.getInsets(i2);
    }

    @NonNull
    public Insets getInsetsIgnoringVisibility(int i2) {
        return this.f4901a.getInsetsIgnoringVisibility(i2);
    }

    @NonNull
    @Deprecated
    public Insets getMandatorySystemGestureInsets() {
        return this.f4901a.g();
    }

    @Deprecated
    public int getStableInsetBottom() {
        return this.f4901a.h().bottom;
    }

    @Deprecated
    public int getStableInsetLeft() {
        return this.f4901a.h().left;
    }

    @Deprecated
    public int getStableInsetRight() {
        return this.f4901a.h().right;
    }

    @Deprecated
    public int getStableInsetTop() {
        return this.f4901a.h().top;
    }

    @NonNull
    @Deprecated
    public Insets getStableInsets() {
        return this.f4901a.h();
    }

    @NonNull
    @Deprecated
    public Insets getSystemGestureInsets() {
        return this.f4901a.i();
    }

    @Deprecated
    public int getSystemWindowInsetBottom() {
        return this.f4901a.j().bottom;
    }

    @Deprecated
    public int getSystemWindowInsetLeft() {
        return this.f4901a.j().left;
    }

    @Deprecated
    public int getSystemWindowInsetRight() {
        return this.f4901a.j().right;
    }

    @Deprecated
    public int getSystemWindowInsetTop() {
        return this.f4901a.j().top;
    }

    @NonNull
    @Deprecated
    public Insets getSystemWindowInsets() {
        return this.f4901a.j();
    }

    @NonNull
    @Deprecated
    public Insets getTappableElementInsets() {
        return this.f4901a.k();
    }

    public boolean hasInsets() {
        Insets insets = getInsets(Type.a());
        Insets insets2 = Insets.NONE;
        return (insets.equals(insets2) && getInsetsIgnoringVisibility(Type.a() ^ Type.ime()).equals(insets2) && getDisplayCutout() == null) ? false : true;
    }

    @Deprecated
    public boolean hasStableInsets() {
        return !this.f4901a.h().equals(Insets.NONE);
    }

    @Deprecated
    public boolean hasSystemWindowInsets() {
        return !this.f4901a.j().equals(Insets.NONE);
    }

    public int hashCode() {
        Impl impl = this.f4901a;
        if (impl == null) {
            return 0;
        }
        return impl.hashCode();
    }

    @NonNull
    public WindowInsetsCompat inset(@NonNull Insets insets) {
        return inset(insets.left, insets.top, insets.right, insets.bottom);
    }

    public boolean isConsumed() {
        return this.f4901a.m();
    }

    public boolean isRound() {
        return this.f4901a.n();
    }

    public boolean isVisible(int i2) {
        return this.f4901a.isVisible(i2);
    }

    @NonNull
    @Deprecated
    public WindowInsetsCompat replaceSystemWindowInsets(int i2, int i4, int i5, int i6) {
        return new Builder(this).setSystemWindowInsets(Insets.of(i2, i4, i5, i6)).build();
    }

    @Nullable
    @RequiresApi(20)
    public WindowInsets toWindowInsets() {
        Impl impl = this.f4901a;
        if (impl instanceof Impl20) {
            return ((Impl20) impl).f4923c;
        }
        return null;
    }

    @RequiresApi(api = 20)
    /* loaded from: classes.dex */
    private static class BuilderImpl20 extends BuilderImpl {

        /* renamed from: e  reason: collision with root package name */
        private static Field f4909e;

        /* renamed from: f  reason: collision with root package name */
        private static boolean f4910f;

        /* renamed from: g  reason: collision with root package name */
        private static Constructor<WindowInsets> f4911g;

        /* renamed from: h  reason: collision with root package name */
        private static boolean f4912h;

        /* renamed from: c  reason: collision with root package name */
        private WindowInsets f4913c;

        /* renamed from: d  reason: collision with root package name */
        private Insets f4914d;

        BuilderImpl20() {
            this.f4913c = l();
        }

        @Nullable
        private static WindowInsets l() {
            if (!f4910f) {
                try {
                    f4909e = WindowInsets.class.getDeclaredField("CONSUMED");
                } catch (ReflectiveOperationException unused) {
                }
                f4910f = true;
            }
            Field field = f4909e;
            if (field != null) {
                try {
                    WindowInsets windowInsets = (WindowInsets) field.get(null);
                    if (windowInsets != null) {
                        return new WindowInsets(windowInsets);
                    }
                } catch (ReflectiveOperationException unused2) {
                }
            }
            if (!f4912h) {
                try {
                    f4911g = WindowInsets.class.getConstructor(Rect.class);
                } catch (ReflectiveOperationException unused3) {
                }
                f4912h = true;
            }
            Constructor<WindowInsets> constructor = f4911g;
            if (constructor != null) {
                try {
                    return constructor.newInstance(new Rect());
                } catch (ReflectiveOperationException unused4) {
                }
            }
            return null;
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        @NonNull
        WindowInsetsCompat b() {
            a();
            WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(this.f4913c);
            windowInsetsCompat.c(this.f4908b);
            windowInsetsCompat.f(this.f4914d);
            return windowInsetsCompat;
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        void g(@Nullable Insets insets) {
            this.f4914d = insets;
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        void i(@NonNull Insets insets) {
            WindowInsets windowInsets = this.f4913c;
            if (windowInsets != null) {
                this.f4913c = windowInsets.replaceSystemWindowInsets(insets.left, insets.top, insets.right, insets.bottom);
            }
        }

        BuilderImpl20(@NonNull WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
            this.f4913c = windowInsetsCompat.toWindowInsets();
        }
    }

    @RequiresApi(api = 29)
    /* loaded from: classes.dex */
    private static class BuilderImpl29 extends BuilderImpl {

        /* renamed from: c  reason: collision with root package name */
        final WindowInsets.Builder f4915c;

        BuilderImpl29() {
            this.f4915c = new WindowInsets.Builder();
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        @NonNull
        WindowInsetsCompat b() {
            a();
            WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(this.f4915c.build());
            windowInsetsCompat.c(this.f4908b);
            return windowInsetsCompat;
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        void c(@Nullable DisplayCutoutCompat displayCutoutCompat) {
            this.f4915c.setDisplayCutout(displayCutoutCompat != null ? displayCutoutCompat.b() : null);
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        void f(@NonNull Insets insets) {
            this.f4915c.setMandatorySystemGestureInsets(insets.toPlatformInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        void g(@NonNull Insets insets) {
            this.f4915c.setStableInsets(insets.toPlatformInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        void h(@NonNull Insets insets) {
            this.f4915c.setSystemGestureInsets(insets.toPlatformInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        void i(@NonNull Insets insets) {
            this.f4915c.setSystemWindowInsets(insets.toPlatformInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        void j(@NonNull Insets insets) {
            this.f4915c.setTappableElementInsets(insets.toPlatformInsets());
        }

        BuilderImpl29(@NonNull WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
            WindowInsets.Builder builder;
            WindowInsets windowInsets = windowInsetsCompat.toWindowInsets();
            if (windowInsets != null) {
                builder = new WindowInsets.Builder(windowInsets);
            } else {
                builder = new WindowInsets.Builder();
            }
            this.f4915c = builder;
        }
    }

    @RequiresApi(21)
    /* loaded from: classes.dex */
    private static class Impl21 extends Impl20 {

        /* renamed from: m  reason: collision with root package name */
        private Insets f4928m;

        Impl21(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
            this.f4928m = null;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        WindowInsetsCompat b() {
            return WindowInsetsCompat.toWindowInsetsCompat(this.f4923c.consumeStableInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        WindowInsetsCompat c() {
            return WindowInsetsCompat.toWindowInsetsCompat(this.f4923c.consumeSystemWindowInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        final Insets h() {
            if (this.f4928m == null) {
                this.f4928m = Insets.of(this.f4923c.getStableInsetLeft(), this.f4923c.getStableInsetTop(), this.f4923c.getStableInsetRight(), this.f4923c.getStableInsetBottom());
            }
            return this.f4928m;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        boolean m() {
            return this.f4923c.isConsumed();
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void setStableInsets(@Nullable Insets insets) {
            this.f4928m = insets;
        }

        Impl21(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Impl21 impl21) {
            super(windowInsetsCompat, impl21);
            this.f4928m = null;
            this.f4928m = impl21.f4928m;
        }
    }

    @NonNull
    @RequiresApi(20)
    public static WindowInsetsCompat toWindowInsetsCompat(@NonNull WindowInsets windowInsets, @Nullable View view) {
        WindowInsetsCompat windowInsetsCompat = new WindowInsetsCompat((WindowInsets) Preconditions.checkNotNull(windowInsets));
        if (view != null && ViewCompat.isAttachedToWindow(view)) {
            windowInsetsCompat.e(ViewCompat.getRootWindowInsets(view));
            windowInsetsCompat.a(view.getRootView());
        }
        return windowInsetsCompat;
    }

    @NonNull
    public WindowInsetsCompat inset(@IntRange(from = 0) int i2, @IntRange(from = 0) int i4, @IntRange(from = 0) int i5, @IntRange(from = 0) int i6) {
        return this.f4901a.l(i2, i4, i5, i6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(20)
    /* loaded from: classes.dex */
    public static class Impl20 extends Impl {

        /* renamed from: h  reason: collision with root package name */
        private static boolean f4918h;

        /* renamed from: i  reason: collision with root package name */
        private static Method f4919i;

        /* renamed from: j  reason: collision with root package name */
        private static Class<?> f4920j;

        /* renamed from: k  reason: collision with root package name */
        private static Field f4921k;

        /* renamed from: l  reason: collision with root package name */
        private static Field f4922l;
        @NonNull

        /* renamed from: c  reason: collision with root package name */
        final WindowInsets f4923c;

        /* renamed from: d  reason: collision with root package name */
        private Insets[] f4924d;

        /* renamed from: e  reason: collision with root package name */
        private Insets f4925e;

        /* renamed from: f  reason: collision with root package name */
        private WindowInsetsCompat f4926f;

        /* renamed from: g  reason: collision with root package name */
        Insets f4927g;

        Impl20(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
            super(windowInsetsCompat);
            this.f4925e = null;
            this.f4923c = windowInsets;
        }

        @NonNull
        @SuppressLint({"WrongConstant"})
        private Insets q(int i2, boolean z3) {
            Insets insets = Insets.NONE;
            for (int i4 = 1; i4 <= 256; i4 <<= 1) {
                if ((i2 & i4) != 0) {
                    insets = Insets.max(insets, r(i4, z3));
                }
            }
            return insets;
        }

        private Insets s() {
            WindowInsetsCompat windowInsetsCompat = this.f4926f;
            if (windowInsetsCompat != null) {
                return windowInsetsCompat.getStableInsets();
            }
            return Insets.NONE;
        }

        @Nullable
        private Insets t(@NonNull View view) {
            if (Build.VERSION.SDK_INT < 30) {
                if (!f4918h) {
                    v();
                }
                Method method = f4919i;
                if (method != null && f4920j != null && f4921k != null) {
                    try {
                        Object invoke = method.invoke(view, new Object[0]);
                        if (invoke == null) {
                            return null;
                        }
                        Rect rect = (Rect) f4921k.get(f4922l.get(invoke));
                        if (rect != null) {
                            return Insets.of(rect);
                        }
                        return null;
                    } catch (ReflectiveOperationException e4) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Failed to get visible insets. (Reflection error). ");
                        sb.append(e4.getMessage());
                    }
                }
                return null;
            }
            throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
        }

        @SuppressLint({"PrivateApi"})
        private static void v() {
            try {
                f4919i = View.class.getDeclaredMethod("getViewRootImpl", new Class[0]);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                f4920j = cls;
                f4921k = cls.getDeclaredField("mVisibleInsets");
                f4922l = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
                f4921k.setAccessible(true);
                f4922l.setAccessible(true);
            } catch (ReflectiveOperationException e4) {
                StringBuilder sb = new StringBuilder();
                sb.append("Failed to get visible insets. (Reflection error). ");
                sb.append(e4.getMessage());
            }
            f4918h = true;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        void d(@NonNull View view) {
            Insets t3 = t(view);
            if (t3 == null) {
                t3 = Insets.NONE;
            }
            o(t3);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        void e(@NonNull WindowInsetsCompat windowInsetsCompat) {
            windowInsetsCompat.e(this.f4926f);
            windowInsetsCompat.d(this.f4927g);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public boolean equals(Object obj) {
            if (super.equals(obj)) {
                return Objects.equals(this.f4927g, ((Impl20) obj).f4927g);
            }
            return false;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        public Insets getInsets(int i2) {
            return q(i2, false);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        public Insets getInsetsIgnoringVisibility(int i2) {
            return q(i2, true);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @SuppressLint({"WrongConstant"})
        boolean isVisible(int i2) {
            for (int i4 = 1; i4 <= 256; i4 <<= 1) {
                if ((i2 & i4) != 0 && !u(i4)) {
                    return false;
                }
            }
            return true;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        final Insets j() {
            if (this.f4925e == null) {
                this.f4925e = Insets.of(this.f4923c.getSystemWindowInsetLeft(), this.f4923c.getSystemWindowInsetTop(), this.f4923c.getSystemWindowInsetRight(), this.f4923c.getSystemWindowInsetBottom());
            }
            return this.f4925e;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        WindowInsetsCompat l(int i2, int i4, int i5, int i6) {
            Builder builder = new Builder(WindowInsetsCompat.toWindowInsetsCompat(this.f4923c));
            builder.setSystemWindowInsets(WindowInsetsCompat.b(j(), i2, i4, i5, i6));
            builder.setStableInsets(WindowInsetsCompat.b(h(), i2, i4, i5, i6));
            return builder.build();
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        boolean n() {
            return this.f4923c.isRound();
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        void o(@NonNull Insets insets) {
            this.f4927g = insets;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        void p(@Nullable WindowInsetsCompat windowInsetsCompat) {
            this.f4926f = windowInsetsCompat;
        }

        @NonNull
        protected Insets r(int i2, boolean z3) {
            Insets stableInsets;
            int i4;
            DisplayCutoutCompat f4;
            if (i2 == 1) {
                if (z3) {
                    return Insets.of(0, Math.max(s().top, j().top), 0, 0);
                }
                return Insets.of(0, j().top, 0, 0);
            }
            if (i2 == 2) {
                if (z3) {
                    Insets s3 = s();
                    Insets h4 = h();
                    return Insets.of(Math.max(s3.left, h4.left), 0, Math.max(s3.right, h4.right), Math.max(s3.bottom, h4.bottom));
                }
                Insets j4 = j();
                WindowInsetsCompat windowInsetsCompat = this.f4926f;
                stableInsets = windowInsetsCompat != null ? windowInsetsCompat.getStableInsets() : null;
                int i5 = j4.bottom;
                if (stableInsets != null) {
                    i5 = Math.min(i5, stableInsets.bottom);
                }
                return Insets.of(j4.left, 0, j4.right, i5);
            } else if (i2 != 8) {
                if (i2 != 16) {
                    if (i2 != 32) {
                        if (i2 != 64) {
                            if (i2 != 128) {
                                return Insets.NONE;
                            }
                            WindowInsetsCompat windowInsetsCompat2 = this.f4926f;
                            if (windowInsetsCompat2 != null) {
                                f4 = windowInsetsCompat2.getDisplayCutout();
                            } else {
                                f4 = f();
                            }
                            if (f4 != null) {
                                return Insets.of(f4.getSafeInsetLeft(), f4.getSafeInsetTop(), f4.getSafeInsetRight(), f4.getSafeInsetBottom());
                            }
                            return Insets.NONE;
                        }
                        return k();
                    }
                    return g();
                }
                return i();
            } else {
                Insets[] insetsArr = this.f4924d;
                stableInsets = insetsArr != null ? insetsArr[Type.b(8)] : null;
                if (stableInsets != null) {
                    return stableInsets;
                }
                Insets j5 = j();
                Insets s4 = s();
                int i6 = j5.bottom;
                if (i6 > s4.bottom) {
                    return Insets.of(0, 0, 0, i6);
                }
                Insets insets = this.f4927g;
                if (insets != null && !insets.equals(Insets.NONE) && (i4 = this.f4927g.bottom) > s4.bottom) {
                    return Insets.of(0, 0, 0, i4);
                }
                return Insets.NONE;
            }
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void setOverriddenInsets(Insets[] insetsArr) {
            this.f4924d = insetsArr;
        }

        protected boolean u(int i2) {
            if (i2 != 1 && i2 != 2) {
                if (i2 == 4) {
                    return false;
                }
                if (i2 != 8 && i2 != 128) {
                    return true;
                }
            }
            return !r(i2, false).equals(Insets.NONE);
        }

        Impl20(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Impl20 impl20) {
            this(windowInsetsCompat, new WindowInsets(impl20.f4923c));
        }
    }

    @RequiresApi(29)
    /* loaded from: classes.dex */
    private static class Impl29 extends Impl28 {

        /* renamed from: n  reason: collision with root package name */
        private Insets f4929n;

        /* renamed from: o  reason: collision with root package name */
        private Insets f4930o;

        /* renamed from: p  reason: collision with root package name */
        private Insets f4931p;

        Impl29(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
            this.f4929n = null;
            this.f4930o = null;
            this.f4931p = null;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        Insets g() {
            if (this.f4930o == null) {
                this.f4930o = Insets.toCompatInsets(this.f4923c.getMandatorySystemGestureInsets());
            }
            return this.f4930o;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        Insets i() {
            if (this.f4929n == null) {
                this.f4929n = Insets.toCompatInsets(this.f4923c.getSystemGestureInsets());
            }
            return this.f4929n;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        Insets k() {
            if (this.f4931p == null) {
                this.f4931p = Insets.toCompatInsets(this.f4923c.getTappableElementInsets());
            }
            return this.f4931p;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        @NonNull
        WindowInsetsCompat l(int i2, int i4, int i5, int i6) {
            return WindowInsetsCompat.toWindowInsetsCompat(this.f4923c.inset(i2, i4, i5, i6));
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl21, androidx.core.view.WindowInsetsCompat.Impl
        public void setStableInsets(@Nullable Insets insets) {
        }

        Impl29(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Impl29 impl29) {
            super(windowInsetsCompat, impl29);
            this.f4929n = null;
            this.f4930o = null;
            this.f4931p = null;
        }
    }

    @NonNull
    @Deprecated
    public WindowInsetsCompat replaceSystemWindowInsets(@NonNull Rect rect) {
        return new Builder(this).setSystemWindowInsets(Insets.of(rect)).build();
    }

    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        private final BuilderImpl f4906a;

        public Builder() {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 30) {
                this.f4906a = new BuilderImpl30();
            } else if (i2 >= 29) {
                this.f4906a = new BuilderImpl29();
            } else if (i2 >= 20) {
                this.f4906a = new BuilderImpl20();
            } else {
                this.f4906a = new BuilderImpl();
            }
        }

        @NonNull
        public WindowInsetsCompat build() {
            return this.f4906a.b();
        }

        @NonNull
        public Builder setDisplayCutout(@Nullable DisplayCutoutCompat displayCutoutCompat) {
            this.f4906a.c(displayCutoutCompat);
            return this;
        }

        @NonNull
        public Builder setInsets(int i2, @NonNull Insets insets) {
            this.f4906a.d(i2, insets);
            return this;
        }

        @NonNull
        public Builder setInsetsIgnoringVisibility(int i2, @NonNull Insets insets) {
            this.f4906a.e(i2, insets);
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setMandatorySystemGestureInsets(@NonNull Insets insets) {
            this.f4906a.f(insets);
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setStableInsets(@NonNull Insets insets) {
            this.f4906a.g(insets);
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setSystemGestureInsets(@NonNull Insets insets) {
            this.f4906a.h(insets);
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setSystemWindowInsets(@NonNull Insets insets) {
            this.f4906a.i(insets);
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setTappableElementInsets(@NonNull Insets insets) {
            this.f4906a.j(insets);
            return this;
        }

        @NonNull
        public Builder setVisible(int i2, boolean z3) {
            this.f4906a.k(i2, z3);
            return this;
        }

        public Builder(@NonNull WindowInsetsCompat windowInsetsCompat) {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 30) {
                this.f4906a = new BuilderImpl30(windowInsetsCompat);
            } else if (i2 >= 29) {
                this.f4906a = new BuilderImpl29(windowInsetsCompat);
            } else if (i2 >= 20) {
                this.f4906a = new BuilderImpl20(windowInsetsCompat);
            } else {
                this.f4906a = new BuilderImpl(windowInsetsCompat);
            }
        }
    }

    public WindowInsetsCompat(@Nullable WindowInsetsCompat windowInsetsCompat) {
        if (windowInsetsCompat != null) {
            Impl impl = windowInsetsCompat.f4901a;
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 30 && (impl instanceof Impl30)) {
                this.f4901a = new Impl30(this, (Impl30) impl);
            } else if (i2 >= 29 && (impl instanceof Impl29)) {
                this.f4901a = new Impl29(this, (Impl29) impl);
            } else if (i2 >= 28 && (impl instanceof Impl28)) {
                this.f4901a = new Impl28(this, (Impl28) impl);
            } else if (i2 >= 21 && (impl instanceof Impl21)) {
                this.f4901a = new Impl21(this, (Impl21) impl);
            } else if (i2 >= 20 && (impl instanceof Impl20)) {
                this.f4901a = new Impl20(this, (Impl20) impl);
            } else {
                this.f4901a = new Impl(this);
            }
            impl.e(this);
            return;
        }
        this.f4901a = new Impl(this);
    }
}
