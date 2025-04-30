package androidx.appcompat.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.DrawableCompat;
/* JADX INFO: Access modifiers changed from: package-private */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class DrawableContainer extends Drawable implements Drawable.Callback {

    /* renamed from: m  reason: collision with root package name */
    private static final boolean f382m = false;

    /* renamed from: n  reason: collision with root package name */
    private static final String f383n = "DrawableContainer";

    /* renamed from: o  reason: collision with root package name */
    private static final boolean f384o = true;

    /* renamed from: a  reason: collision with root package name */
    private DrawableContainerState f385a;

    /* renamed from: b  reason: collision with root package name */
    private Rect f386b;

    /* renamed from: c  reason: collision with root package name */
    private Drawable f387c;

    /* renamed from: d  reason: collision with root package name */
    private Drawable f388d;

    /* renamed from: f  reason: collision with root package name */
    private boolean f390f;

    /* renamed from: h  reason: collision with root package name */
    private boolean f392h;

    /* renamed from: i  reason: collision with root package name */
    private Runnable f393i;

    /* renamed from: j  reason: collision with root package name */
    private long f394j;

    /* renamed from: k  reason: collision with root package name */
    private long f395k;

    /* renamed from: l  reason: collision with root package name */
    private BlockInvalidateCallback f396l;

    /* renamed from: e  reason: collision with root package name */
    private int f389e = 255;

    /* renamed from: g  reason: collision with root package name */
    private int f391g = -1;

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(21)
    /* loaded from: classes.dex */
    public static class Api21Impl {
        private Api21Impl() {
        }

        public static boolean canApplyTheme(Drawable.ConstantState constantState) {
            return constantState.canApplyTheme();
        }

        public static void getOutline(Drawable drawable, Outline outline) {
            drawable.getOutline(outline);
        }

        public static Resources getResources(Resources.Theme theme) {
            return theme.getResources();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class BlockInvalidateCallback implements Drawable.Callback {

        /* renamed from: a  reason: collision with root package name */
        private Drawable.Callback f398a;

        BlockInvalidateCallback() {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(@NonNull Drawable drawable) {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j4) {
            Drawable.Callback callback = this.f398a;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j4);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
            Drawable.Callback callback = this.f398a;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }

        public Drawable.Callback unwrap() {
            Drawable.Callback callback = this.f398a;
            this.f398a = null;
            return callback;
        }

        public BlockInvalidateCallback wrap(Drawable.Callback callback) {
            this.f398a = callback;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static abstract class DrawableContainerState extends Drawable.ConstantState {
        int A;
        int B;
        boolean C;
        ColorFilter D;
        boolean E;
        ColorStateList F;
        PorterDuff.Mode G;
        boolean H;
        boolean I;

        /* renamed from: a  reason: collision with root package name */
        final DrawableContainer f399a;

        /* renamed from: b  reason: collision with root package name */
        Resources f400b;

        /* renamed from: c  reason: collision with root package name */
        int f401c;

        /* renamed from: d  reason: collision with root package name */
        int f402d;

        /* renamed from: e  reason: collision with root package name */
        int f403e;

        /* renamed from: f  reason: collision with root package name */
        SparseArray<Drawable.ConstantState> f404f;

        /* renamed from: g  reason: collision with root package name */
        Drawable[] f405g;

        /* renamed from: h  reason: collision with root package name */
        int f406h;

        /* renamed from: i  reason: collision with root package name */
        boolean f407i;

        /* renamed from: j  reason: collision with root package name */
        boolean f408j;

        /* renamed from: k  reason: collision with root package name */
        Rect f409k;

        /* renamed from: l  reason: collision with root package name */
        boolean f410l;

        /* renamed from: m  reason: collision with root package name */
        boolean f411m;

        /* renamed from: n  reason: collision with root package name */
        int f412n;

        /* renamed from: o  reason: collision with root package name */
        int f413o;

        /* renamed from: p  reason: collision with root package name */
        int f414p;

        /* renamed from: q  reason: collision with root package name */
        int f415q;

        /* renamed from: r  reason: collision with root package name */
        boolean f416r;

        /* renamed from: s  reason: collision with root package name */
        int f417s;

        /* renamed from: t  reason: collision with root package name */
        boolean f418t;

        /* renamed from: u  reason: collision with root package name */
        boolean f419u;

        /* renamed from: v  reason: collision with root package name */
        boolean f420v;

        /* renamed from: w  reason: collision with root package name */
        boolean f421w;

        /* renamed from: x  reason: collision with root package name */
        boolean f422x;

        /* renamed from: y  reason: collision with root package name */
        boolean f423y;

        /* renamed from: z  reason: collision with root package name */
        int f424z;

        /* JADX INFO: Access modifiers changed from: package-private */
        public DrawableContainerState(DrawableContainerState drawableContainerState, DrawableContainer drawableContainer, Resources resources) {
            Resources resources2;
            this.f407i = false;
            this.f410l = false;
            this.f422x = true;
            this.A = 0;
            this.B = 0;
            this.f399a = drawableContainer;
            if (resources != null) {
                resources2 = resources;
            } else {
                resources2 = drawableContainerState != null ? drawableContainerState.f400b : null;
            }
            this.f400b = resources2;
            int g4 = DrawableContainer.g(resources, drawableContainerState != null ? drawableContainerState.f401c : 0);
            this.f401c = g4;
            if (drawableContainerState != null) {
                this.f402d = drawableContainerState.f402d;
                this.f403e = drawableContainerState.f403e;
                this.f420v = true;
                this.f421w = true;
                this.f407i = drawableContainerState.f407i;
                this.f410l = drawableContainerState.f410l;
                this.f422x = drawableContainerState.f422x;
                this.f423y = drawableContainerState.f423y;
                this.f424z = drawableContainerState.f424z;
                this.A = drawableContainerState.A;
                this.B = drawableContainerState.B;
                this.C = drawableContainerState.C;
                this.D = drawableContainerState.D;
                this.E = drawableContainerState.E;
                this.F = drawableContainerState.F;
                this.G = drawableContainerState.G;
                this.H = drawableContainerState.H;
                this.I = drawableContainerState.I;
                if (drawableContainerState.f401c == g4) {
                    if (drawableContainerState.f408j) {
                        this.f409k = drawableContainerState.f409k != null ? new Rect(drawableContainerState.f409k) : null;
                        this.f408j = true;
                    }
                    if (drawableContainerState.f411m) {
                        this.f412n = drawableContainerState.f412n;
                        this.f413o = drawableContainerState.f413o;
                        this.f414p = drawableContainerState.f414p;
                        this.f415q = drawableContainerState.f415q;
                        this.f411m = true;
                    }
                }
                if (drawableContainerState.f416r) {
                    this.f417s = drawableContainerState.f417s;
                    this.f416r = true;
                }
                if (drawableContainerState.f418t) {
                    this.f419u = drawableContainerState.f419u;
                    this.f418t = true;
                }
                Drawable[] drawableArr = drawableContainerState.f405g;
                this.f405g = new Drawable[drawableArr.length];
                this.f406h = drawableContainerState.f406h;
                SparseArray<Drawable.ConstantState> sparseArray = drawableContainerState.f404f;
                if (sparseArray != null) {
                    this.f404f = sparseArray.clone();
                } else {
                    this.f404f = new SparseArray<>(this.f406h);
                }
                int i2 = this.f406h;
                for (int i4 = 0; i4 < i2; i4++) {
                    if (drawableArr[i4] != null) {
                        Drawable.ConstantState constantState = drawableArr[i4].getConstantState();
                        if (constantState != null) {
                            this.f404f.put(i4, constantState);
                        } else {
                            this.f405g[i4] = drawableArr[i4];
                        }
                    }
                }
                return;
            }
            this.f405g = new Drawable[10];
            this.f406h = 0;
        }

        private void d() {
            SparseArray<Drawable.ConstantState> sparseArray = this.f404f;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i2 = 0; i2 < size; i2++) {
                    this.f405g[this.f404f.keyAt(i2)] = h(this.f404f.valueAt(i2).newDrawable(this.f400b));
                }
                this.f404f = null;
            }
        }

        private Drawable h(Drawable drawable) {
            if (Build.VERSION.SDK_INT >= 23) {
                DrawableCompat.setLayoutDirection(drawable, this.f424z);
            }
            Drawable mutate = drawable.mutate();
            mutate.setCallback(this.f399a);
            return mutate;
        }

        @RequiresApi(21)
        final void a(Resources.Theme theme) {
            if (theme != null) {
                d();
                int i2 = this.f406h;
                Drawable[] drawableArr = this.f405g;
                for (int i4 = 0; i4 < i2; i4++) {
                    if (drawableArr[i4] != null && DrawableCompat.canApplyTheme(drawableArr[i4])) {
                        DrawableCompat.applyTheme(drawableArr[i4], theme);
                        this.f403e |= drawableArr[i4].getChangingConfigurations();
                    }
                }
                j(Api21Impl.getResources(theme));
            }
        }

        public final int addChild(Drawable drawable) {
            int i2 = this.f406h;
            if (i2 >= this.f405g.length) {
                growArray(i2, i2 + 10);
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.f399a);
            this.f405g[i2] = drawable;
            this.f406h++;
            this.f403e = drawable.getChangingConfigurations() | this.f403e;
            f();
            this.f409k = null;
            this.f408j = false;
            this.f411m = false;
            this.f420v = false;
            return i2;
        }

        final void b() {
            this.f423y = false;
        }

        protected void c() {
            this.f411m = true;
            d();
            int i2 = this.f406h;
            Drawable[] drawableArr = this.f405g;
            this.f413o = -1;
            this.f412n = -1;
            this.f415q = 0;
            this.f414p = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                Drawable drawable = drawableArr[i4];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.f412n) {
                    this.f412n = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.f413o) {
                    this.f413o = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.f414p) {
                    this.f414p = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.f415q) {
                    this.f415q = minimumHeight;
                }
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @RequiresApi(21)
        public boolean canApplyTheme() {
            int i2 = this.f406h;
            Drawable[] drawableArr = this.f405g;
            for (int i4 = 0; i4 < i2; i4++) {
                Drawable drawable = drawableArr[i4];
                if (drawable != null) {
                    if (DrawableCompat.canApplyTheme(drawable)) {
                        return true;
                    }
                } else {
                    Drawable.ConstantState constantState = this.f404f.get(i4);
                    if (constantState != null && Api21Impl.canApplyTheme(constantState)) {
                        return true;
                    }
                }
            }
            return false;
        }

        public boolean canConstantState() {
            if (this.f420v) {
                return this.f421w;
            }
            d();
            this.f420v = true;
            int i2 = this.f406h;
            Drawable[] drawableArr = this.f405g;
            for (int i4 = 0; i4 < i2; i4++) {
                if (drawableArr[i4].getConstantState() == null) {
                    this.f421w = false;
                    return false;
                }
            }
            this.f421w = true;
            return true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final int e() {
            return this.f405g.length;
        }

        void f() {
            this.f416r = false;
            this.f418t = false;
        }

        void g() {
            int i2 = this.f406h;
            Drawable[] drawableArr = this.f405g;
            for (int i4 = 0; i4 < i2; i4++) {
                if (drawableArr[i4] != null) {
                    drawableArr[i4].mutate();
                }
            }
            this.f423y = true;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f402d | this.f403e;
        }

        public final Drawable getChild(int i2) {
            int indexOfKey;
            Drawable drawable = this.f405g[i2];
            if (drawable != null) {
                return drawable;
            }
            SparseArray<Drawable.ConstantState> sparseArray = this.f404f;
            if (sparseArray == null || (indexOfKey = sparseArray.indexOfKey(i2)) < 0) {
                return null;
            }
            Drawable h4 = h(this.f404f.valueAt(indexOfKey).newDrawable(this.f400b));
            this.f405g[i2] = h4;
            this.f404f.removeAt(indexOfKey);
            if (this.f404f.size() == 0) {
                this.f404f = null;
            }
            return h4;
        }

        public final int getChildCount() {
            return this.f406h;
        }

        public final int getConstantHeight() {
            if (!this.f411m) {
                c();
            }
            return this.f413o;
        }

        public final int getConstantMinimumHeight() {
            if (!this.f411m) {
                c();
            }
            return this.f415q;
        }

        public final int getConstantMinimumWidth() {
            if (!this.f411m) {
                c();
            }
            return this.f414p;
        }

        public final Rect getConstantPadding() {
            Rect rect = null;
            if (this.f407i) {
                return null;
            }
            Rect rect2 = this.f409k;
            if (rect2 != null || this.f408j) {
                return rect2;
            }
            d();
            Rect rect3 = new Rect();
            int i2 = this.f406h;
            Drawable[] drawableArr = this.f405g;
            for (int i4 = 0; i4 < i2; i4++) {
                if (drawableArr[i4].getPadding(rect3)) {
                    if (rect == null) {
                        rect = new Rect(0, 0, 0, 0);
                    }
                    int i5 = rect3.left;
                    if (i5 > rect.left) {
                        rect.left = i5;
                    }
                    int i6 = rect3.top;
                    if (i6 > rect.top) {
                        rect.top = i6;
                    }
                    int i7 = rect3.right;
                    if (i7 > rect.right) {
                        rect.right = i7;
                    }
                    int i8 = rect3.bottom;
                    if (i8 > rect.bottom) {
                        rect.bottom = i8;
                    }
                }
            }
            this.f408j = true;
            this.f409k = rect;
            return rect;
        }

        public final int getConstantWidth() {
            if (!this.f411m) {
                c();
            }
            return this.f412n;
        }

        public final int getEnterFadeDuration() {
            return this.A;
        }

        public final int getExitFadeDuration() {
            return this.B;
        }

        public final int getOpacity() {
            if (this.f416r) {
                return this.f417s;
            }
            d();
            int i2 = this.f406h;
            Drawable[] drawableArr = this.f405g;
            int opacity = i2 > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i4 = 1; i4 < i2; i4++) {
                opacity = Drawable.resolveOpacity(opacity, drawableArr[i4].getOpacity());
            }
            this.f417s = opacity;
            this.f416r = true;
            return opacity;
        }

        public void growArray(int i2, int i4) {
            Drawable[] drawableArr = new Drawable[i4];
            Drawable[] drawableArr2 = this.f405g;
            if (drawableArr2 != null) {
                System.arraycopy(drawableArr2, 0, drawableArr, 0, i2);
            }
            this.f405g = drawableArr;
        }

        final boolean i(int i2, int i4) {
            int i5 = this.f406h;
            Drawable[] drawableArr = this.f405g;
            boolean z3 = false;
            for (int i6 = 0; i6 < i5; i6++) {
                if (drawableArr[i6] != null) {
                    boolean layoutDirection = Build.VERSION.SDK_INT >= 23 ? DrawableCompat.setLayoutDirection(drawableArr[i6], i2) : false;
                    if (i6 == i4) {
                        z3 = layoutDirection;
                    }
                }
            }
            this.f424z = i2;
            return z3;
        }

        public final boolean isConstantSize() {
            return this.f410l;
        }

        public final boolean isStateful() {
            if (this.f418t) {
                return this.f419u;
            }
            d();
            int i2 = this.f406h;
            Drawable[] drawableArr = this.f405g;
            boolean z3 = false;
            int i4 = 0;
            while (true) {
                if (i4 >= i2) {
                    break;
                } else if (drawableArr[i4].isStateful()) {
                    z3 = true;
                    break;
                } else {
                    i4++;
                }
            }
            this.f419u = z3;
            this.f418t = true;
            return z3;
        }

        final void j(Resources resources) {
            if (resources != null) {
                this.f400b = resources;
                int g4 = DrawableContainer.g(resources, this.f401c);
                int i2 = this.f401c;
                this.f401c = g4;
                if (i2 != g4) {
                    this.f411m = false;
                    this.f408j = false;
                }
            }
        }

        public final void setConstantSize(boolean z3) {
            this.f410l = z3;
        }

        public final void setEnterFadeDuration(int i2) {
            this.A = i2;
        }

        public final void setExitFadeDuration(int i2) {
            this.B = i2;
        }

        public final void setVariablePadding(boolean z3) {
            this.f407i = z3;
        }
    }

    private void e(Drawable drawable) {
        if (this.f396l == null) {
            this.f396l = new BlockInvalidateCallback();
        }
        drawable.setCallback(this.f396l.wrap(drawable.getCallback()));
        try {
            if (this.f385a.A <= 0 && this.f390f) {
                drawable.setAlpha(this.f389e);
            }
            DrawableContainerState drawableContainerState = this.f385a;
            if (drawableContainerState.E) {
                drawable.setColorFilter(drawableContainerState.D);
            } else {
                if (drawableContainerState.H) {
                    DrawableCompat.setTintList(drawable, drawableContainerState.F);
                }
                DrawableContainerState drawableContainerState2 = this.f385a;
                if (drawableContainerState2.I) {
                    DrawableCompat.setTintMode(drawable, drawableContainerState2.G);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f385a.f422x);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 23) {
                DrawableCompat.setLayoutDirection(drawable, DrawableCompat.getLayoutDirection(this));
            }
            if (i2 >= 19) {
                DrawableCompat.setAutoMirrored(drawable, this.f385a.C);
            }
            Rect rect = this.f386b;
            if (i2 >= 21 && rect != null) {
                DrawableCompat.setHotspotBounds(drawable, rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            drawable.setCallback(this.f396l.unwrap());
        }
    }

    private boolean f() {
        return isAutoMirrored() && DrawableCompat.getLayoutDirection(this) == 1;
    }

    static int g(@Nullable Resources resources, int i2) {
        if (resources != null) {
            i2 = resources.getDisplayMetrics().densityDpi;
        }
        if (i2 == 0) {
            return 160;
        }
        return i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void a(boolean r14) {
        /*
            r13 = this;
            r0 = 1
            r13.f390f = r0
            long r1 = android.os.SystemClock.uptimeMillis()
            android.graphics.drawable.Drawable r3 = r13.f387c
            r4 = 255(0xff, double:1.26E-321)
            r6 = 0
            r7 = 0
            if (r3 == 0) goto L38
            long r9 = r13.f394j
            int r11 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r11 == 0) goto L3a
            int r11 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r11 > 0) goto L22
            int r9 = r13.f389e
            r3.setAlpha(r9)
            r13.f394j = r7
            goto L3a
        L22:
            long r9 = r9 - r1
            long r9 = r9 * r4
            int r10 = (int) r9
            androidx.appcompat.graphics.drawable.DrawableContainer$DrawableContainerState r9 = r13.f385a
            int r9 = r9.A
            int r10 = r10 / r9
            int r9 = 255 - r10
            int r10 = r13.f389e
            int r9 = r9 * r10
            int r9 = r9 / 255
            r3.setAlpha(r9)
            r3 = 1
            goto L3b
        L38:
            r13.f394j = r7
        L3a:
            r3 = 0
        L3b:
            android.graphics.drawable.Drawable r9 = r13.f388d
            if (r9 == 0) goto L65
            long r10 = r13.f395k
            int r12 = (r10 > r7 ? 1 : (r10 == r7 ? 0 : -1))
            if (r12 == 0) goto L67
            int r12 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
            if (r12 > 0) goto L52
            r9.setVisible(r6, r6)
            r0 = 0
            r13.f388d = r0
            r13.f395k = r7
            goto L67
        L52:
            long r10 = r10 - r1
            long r10 = r10 * r4
            int r3 = (int) r10
            androidx.appcompat.graphics.drawable.DrawableContainer$DrawableContainerState r4 = r13.f385a
            int r4 = r4.B
            int r3 = r3 / r4
            int r4 = r13.f389e
            int r3 = r3 * r4
            int r3 = r3 / 255
            r9.setAlpha(r3)
            goto L68
        L65:
            r13.f395k = r7
        L67:
            r0 = r3
        L68:
            if (r14 == 0) goto L74
            if (r0 == 0) goto L74
            java.lang.Runnable r14 = r13.f393i
            r3 = 16
            long r1 = r1 + r3
            r13.scheduleSelf(r14, r1)
        L74:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.DrawableContainer.a(boolean):void");
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(21)
    public void applyTheme(@NonNull Resources.Theme theme) {
        this.f385a.a(theme);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        this.f385a.b();
        this.f392h = false;
    }

    DrawableContainerState c() {
        return this.f385a;
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(21)
    public boolean canApplyTheme() {
        return this.f385a.canApplyTheme();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d() {
        return this.f391g;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Drawable drawable = this.f387c;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f388d;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f389e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f385a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.f385a.canConstantState()) {
            this.f385a.f402d = getChangingConfigurations();
            return this.f385a;
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable getCurrent() {
        return this.f387c;
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(@NonNull Rect rect) {
        Rect rect2 = this.f386b;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.f385a.isConstantSize()) {
            return this.f385a.getConstantHeight();
        }
        Drawable drawable = this.f387c;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.f385a.isConstantSize()) {
            return this.f385a.getConstantWidth();
        }
        Drawable drawable = this.f387c;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        if (this.f385a.isConstantSize()) {
            return this.f385a.getConstantMinimumHeight();
        }
        Drawable drawable = this.f387c;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        if (this.f385a.isConstantSize()) {
            return this.f385a.getConstantMinimumWidth();
        }
        Drawable drawable = this.f387c;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f387c;
        if (drawable == null || !drawable.isVisible()) {
            return -2;
        }
        return this.f385a.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(21)
    public void getOutline(@NonNull Outline outline) {
        Drawable drawable = this.f387c;
        if (drawable != null) {
            Api21Impl.getOutline(drawable, outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        boolean padding;
        Rect constantPadding = this.f385a.getConstantPadding();
        if (constantPadding != null) {
            rect.set(constantPadding);
            padding = (constantPadding.right | ((constantPadding.left | constantPadding.top) | constantPadding.bottom)) != 0;
        } else {
            Drawable drawable = this.f387c;
            if (drawable != null) {
                padding = drawable.getPadding(rect);
            } else {
                padding = super.getPadding(rect);
            }
        }
        if (f()) {
            int i2 = rect.left;
            rect.left = rect.right;
            rect.right = i2;
        }
        return padding;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0073  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean h(int r10) {
        /*
            r9 = this;
            int r0 = r9.f391g
            r1 = 0
            if (r10 != r0) goto L6
            return r1
        L6:
            long r2 = android.os.SystemClock.uptimeMillis()
            androidx.appcompat.graphics.drawable.DrawableContainer$DrawableContainerState r0 = r9.f385a
            int r0 = r0.B
            r4 = 0
            r5 = 0
            if (r0 <= 0) goto L2e
            android.graphics.drawable.Drawable r0 = r9.f388d
            if (r0 == 0) goto L1a
            r0.setVisible(r1, r1)
        L1a:
            android.graphics.drawable.Drawable r0 = r9.f387c
            if (r0 == 0) goto L29
            r9.f388d = r0
            androidx.appcompat.graphics.drawable.DrawableContainer$DrawableContainerState r0 = r9.f385a
            int r0 = r0.B
            long r0 = (long) r0
            long r0 = r0 + r2
            r9.f395k = r0
            goto L35
        L29:
            r9.f388d = r4
            r9.f395k = r5
            goto L35
        L2e:
            android.graphics.drawable.Drawable r0 = r9.f387c
            if (r0 == 0) goto L35
            r0.setVisible(r1, r1)
        L35:
            if (r10 < 0) goto L55
            androidx.appcompat.graphics.drawable.DrawableContainer$DrawableContainerState r0 = r9.f385a
            int r1 = r0.f406h
            if (r10 >= r1) goto L55
            android.graphics.drawable.Drawable r0 = r0.getChild(r10)
            r9.f387c = r0
            r9.f391g = r10
            if (r0 == 0) goto L5a
            androidx.appcompat.graphics.drawable.DrawableContainer$DrawableContainerState r10 = r9.f385a
            int r10 = r10.A
            if (r10 <= 0) goto L51
            long r7 = (long) r10
            long r2 = r2 + r7
            r9.f394j = r2
        L51:
            r9.e(r0)
            goto L5a
        L55:
            r9.f387c = r4
            r10 = -1
            r9.f391g = r10
        L5a:
            long r0 = r9.f394j
            r10 = 1
            int r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r2 != 0) goto L67
            long r0 = r9.f395k
            int r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r2 == 0) goto L79
        L67:
            java.lang.Runnable r0 = r9.f393i
            if (r0 != 0) goto L73
            androidx.appcompat.graphics.drawable.DrawableContainer$1 r0 = new androidx.appcompat.graphics.drawable.DrawableContainer$1
            r0.<init>()
            r9.f393i = r0
            goto L76
        L73:
            r9.unscheduleSelf(r0)
        L76:
            r9.a(r10)
        L79:
            r9.invalidateSelf()
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.DrawableContainer.h(int):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i(DrawableContainerState drawableContainerState) {
        this.f385a = drawableContainerState;
        int i2 = this.f391g;
        if (i2 >= 0) {
            Drawable child = drawableContainerState.getChild(i2);
            this.f387c = child;
            if (child != null) {
                e(child);
            }
        }
        this.f388d = null;
    }

    public void invalidateDrawable(@NonNull Drawable drawable) {
        DrawableContainerState drawableContainerState = this.f385a;
        if (drawableContainerState != null) {
            drawableContainerState.f();
        }
        if (drawable != this.f387c || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f385a.C;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.f385a.isStateful();
    }

    void j(int i2) {
        h(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z3;
        Drawable drawable = this.f388d;
        boolean z4 = true;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.f388d = null;
            z3 = true;
        } else {
            z3 = false;
        }
        Drawable drawable2 = this.f387c;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f390f) {
                this.f387c.setAlpha(this.f389e);
            }
        }
        if (this.f395k != 0) {
            this.f395k = 0L;
            z3 = true;
        }
        if (this.f394j != 0) {
            this.f394j = 0L;
        } else {
            z4 = z3;
        }
        if (z4) {
            invalidateSelf();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void k(Resources resources) {
        this.f385a.j(resources);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f392h && super.mutate() == this) {
            DrawableContainerState c4 = c();
            c4.g();
            i(c4);
            this.f392h = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f388d;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f387c;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i2) {
        return this.f385a.i(i2, d());
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i2) {
        Drawable drawable = this.f388d;
        if (drawable != null) {
            return drawable.setLevel(i2);
        }
        Drawable drawable2 = this.f387c;
        if (drawable2 != null) {
            return drawable2.setLevel(i2);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f388d;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.f387c;
        if (drawable2 != null) {
            return drawable2.setState(iArr);
        }
        return false;
    }

    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j4) {
        if (drawable != this.f387c || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j4);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        if (this.f390f && this.f389e == i2) {
            return;
        }
        this.f390f = true;
        this.f389e = i2;
        Drawable drawable = this.f387c;
        if (drawable != null) {
            if (this.f394j == 0) {
                drawable.setAlpha(i2);
            } else {
                a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z3) {
        DrawableContainerState drawableContainerState = this.f385a;
        if (drawableContainerState.C != z3) {
            drawableContainerState.C = z3;
            Drawable drawable = this.f387c;
            if (drawable != null) {
                DrawableCompat.setAutoMirrored(drawable, z3);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        DrawableContainerState drawableContainerState = this.f385a;
        drawableContainerState.E = true;
        if (drawableContainerState.D != colorFilter) {
            drawableContainerState.D = colorFilter;
            Drawable drawable = this.f387c;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z3) {
        DrawableContainerState drawableContainerState = this.f385a;
        if (drawableContainerState.f422x != z3) {
            drawableContainerState.f422x = z3;
            Drawable drawable = this.f387c;
            if (drawable != null) {
                drawable.setDither(z3);
            }
        }
    }

    public void setEnterFadeDuration(int i2) {
        this.f385a.A = i2;
    }

    public void setExitFadeDuration(int i2) {
        this.f385a.B = i2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f4, float f5) {
        Drawable drawable = this.f387c;
        if (drawable != null) {
            DrawableCompat.setHotspot(drawable, f4, f5);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i2, int i4, int i5, int i6) {
        Rect rect = this.f386b;
        if (rect == null) {
            this.f386b = new Rect(i2, i4, i5, i6);
        } else {
            rect.set(i2, i4, i5, i6);
        }
        Drawable drawable = this.f387c;
        if (drawable != null) {
            DrawableCompat.setHotspotBounds(drawable, i2, i4, i5, i6);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(ColorStateList colorStateList) {
        DrawableContainerState drawableContainerState = this.f385a;
        drawableContainerState.H = true;
        if (drawableContainerState.F != colorStateList) {
            drawableContainerState.F = colorStateList;
            DrawableCompat.setTintList(this.f387c, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        DrawableContainerState drawableContainerState = this.f385a;
        drawableContainerState.I = true;
        if (drawableContainerState.G != mode) {
            drawableContainerState.G = mode;
            DrawableCompat.setTintMode(this.f387c, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z3, boolean z4) {
        boolean visible = super.setVisible(z3, z4);
        Drawable drawable = this.f388d;
        if (drawable != null) {
            drawable.setVisible(z3, z4);
        }
        Drawable drawable2 = this.f387c;
        if (drawable2 != null) {
            drawable2.setVisible(z3, z4);
        }
        return visible;
    }

    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        if (drawable != this.f387c || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }
}
