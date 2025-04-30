package com.join.mgps.pulltorefresh.library;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pulltorefresh.library.internal.FlipLoadingLayout;
import com.join.mgps.pulltorefresh.library.internal.LoadingLayout;
import com.join.mgps.pulltorefresh.library.internal.RotateLoadingLayout;
/* loaded from: classes4.dex */
public abstract class PullToRefreshBase<T extends View> extends LinearLayout implements com.join.mgps.pulltorefresh.library.b<T> {
    static final String A = "PullToRefresh";
    static final float B = 2.0f;
    public static final int C = 200;
    public static final int D = 325;
    static final int E = 225;
    static final String F = "ptr_state";
    static final String G = "ptr_mode";
    static final String H = "ptr_current_mode";
    static final String I = "ptr_disable_scrolling";
    static final String J = "ptr_show_refreshing_view";
    static final String K = "ptr_super";

    /* renamed from: y  reason: collision with root package name */
    static final boolean f51371y = true;

    /* renamed from: z  reason: collision with root package name */
    static final boolean f51372z = false;

    /* renamed from: a  reason: collision with root package name */
    private int f51373a;

    /* renamed from: b  reason: collision with root package name */
    private float f51374b;

    /* renamed from: c  reason: collision with root package name */
    private float f51375c;

    /* renamed from: d  reason: collision with root package name */
    private float f51376d;

    /* renamed from: e  reason: collision with root package name */
    private float f51377e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f51378f;

    /* renamed from: g  reason: collision with root package name */
    private State f51379g;

    /* renamed from: h  reason: collision with root package name */
    private Mode f51380h;

    /* renamed from: i  reason: collision with root package name */
    private Mode f51381i;

    /* renamed from: j  reason: collision with root package name */
    T f51382j;

    /* renamed from: k  reason: collision with root package name */
    private FrameLayout f51383k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f51384l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f51385m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f51386n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f51387o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f51388p;

    /* renamed from: q  reason: collision with root package name */
    private Interpolator f51389q;

    /* renamed from: r  reason: collision with root package name */
    private AnimationStyle f51390r;

    /* renamed from: s  reason: collision with root package name */
    private LoadingLayout f51391s;

    /* renamed from: t  reason: collision with root package name */
    private LoadingLayout f51392t;

    /* renamed from: u  reason: collision with root package name */
    private h<T> f51393u;

    /* renamed from: v  reason: collision with root package name */
    private g<T> f51394v;

    /* renamed from: w  reason: collision with root package name */
    private f<T> f51395w;

    /* renamed from: x  reason: collision with root package name */
    private PullToRefreshBase<T>.j f51396x;

    /* loaded from: classes4.dex */
    public enum AnimationStyle {
        ROTATE,
        FLIP;

        static AnimationStyle getDefault() {
            return ROTATE;
        }

        static AnimationStyle mapIntToValue(int i2) {
            if (i2 != 1) {
                return ROTATE;
            }
            return FLIP;
        }

        LoadingLayout createLoadingLayout(Context context, Mode mode, Orientation orientation, TypedArray typedArray) {
            if (d.f51403d[ordinal()] != 2) {
                return new RotateLoadingLayout(context, mode, orientation, typedArray);
            }
            return new FlipLoadingLayout(context, mode, orientation, typedArray);
        }
    }

    /* loaded from: classes4.dex */
    public enum Mode {
        DISABLED(0),
        PULL_FROM_START(1),
        PULL_FROM_END(2),
        BOTH(3),
        MANUAL_REFRESH_ONLY(4);
        
        public static Mode PULL_DOWN_TO_REFRESH;
        public static Mode PULL_UP_TO_REFRESH;
        private int mIntValue;

        static {
            Mode mode = PULL_FROM_START;
            Mode mode2 = PULL_FROM_END;
            PULL_DOWN_TO_REFRESH = mode;
            PULL_UP_TO_REFRESH = mode2;
        }

        Mode(int i2) {
            this.mIntValue = i2;
        }

        static Mode getDefault() {
            return PULL_FROM_START;
        }

        static Mode mapIntToValue(int i2) {
            Mode[] values;
            for (Mode mode : values()) {
                if (i2 == mode.getIntValue()) {
                    return mode;
                }
            }
            return getDefault();
        }

        int getIntValue() {
            return this.mIntValue;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean permitsPullToRefresh() {
            return (this == DISABLED || this == MANUAL_REFRESH_ONLY) ? false : true;
        }

        public boolean showFooterLoadingLayout() {
            return this == PULL_FROM_END || this == BOTH || this == MANUAL_REFRESH_ONLY;
        }

        public boolean showHeaderLoadingLayout() {
            return this == PULL_FROM_START || this == BOTH;
        }
    }

    /* loaded from: classes4.dex */
    public enum Orientation {
        VERTICAL,
        HORIZONTAL
    }

    /* loaded from: classes4.dex */
    public enum State {
        RESET(0),
        PULL_TO_REFRESH(1),
        RELEASE_TO_REFRESH(2),
        REFRESHING(8),
        MANUAL_REFRESHING(9),
        OVERSCROLLING(16);
        
        private int mIntValue;

        State(int i2) {
            this.mIntValue = i2;
        }

        static State mapIntToValue(int i2) {
            State[] values;
            for (State state : values()) {
                if (i2 == state.getIntValue()) {
                    return state;
                }
            }
            return RESET;
        }

        int getIntValue() {
            return this.mIntValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements i {
        a() {
        }

        @Override // com.join.mgps.pulltorefresh.library.PullToRefreshBase.i
        public void a() {
            PullToRefreshBase.this.n();
        }
    }

    /* loaded from: classes4.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PullToRefreshBase.this.requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements i {
        c() {
        }

        @Override // com.join.mgps.pulltorefresh.library.PullToRefreshBase.i
        public void a() {
            PullToRefreshBase.this.K(0, 200L, 225L, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class d {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f51400a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f51401b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f51402c;

        /* renamed from: d  reason: collision with root package name */
        static final /* synthetic */ int[] f51403d;

        static {
            int[] iArr = new int[AnimationStyle.values().length];
            f51403d = iArr;
            try {
                iArr[AnimationStyle.ROTATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f51403d[AnimationStyle.FLIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[Mode.values().length];
            f51402c = iArr2;
            try {
                iArr2[Mode.PULL_FROM_END.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f51402c[Mode.PULL_FROM_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f51402c[Mode.MANUAL_REFRESH_ONLY.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f51402c[Mode.BOTH.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr3 = new int[State.values().length];
            f51401b = iArr3;
            try {
                iArr3[State.RESET.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f51401b[State.PULL_TO_REFRESH.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f51401b[State.RELEASE_TO_REFRESH.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f51401b[State.REFRESHING.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f51401b[State.MANUAL_REFRESHING.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f51401b[State.OVERSCROLLING.ordinal()] = 6;
            } catch (NoSuchFieldError unused12) {
            }
            int[] iArr4 = new int[Orientation.values().length];
            f51400a = iArr4;
            try {
                iArr4[Orientation.HORIZONTAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f51400a[Orientation.VERTICAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused14) {
            }
        }
    }

    /* loaded from: classes4.dex */
    public interface e {
        void a();
    }

    /* loaded from: classes4.dex */
    public interface f<V extends View> {
        void a(PullToRefreshBase<V> pullToRefreshBase, State state, Mode mode);
    }

    /* loaded from: classes4.dex */
    public interface g<V extends View> {
        void a(PullToRefreshBase<V> pullToRefreshBase);

        void b(PullToRefreshBase<V> pullToRefreshBase);
    }

    /* loaded from: classes4.dex */
    public interface h<V extends View> {
        void F(PullToRefreshBase<V> pullToRefreshBase);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public interface i {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public final class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final Interpolator f51404a;

        /* renamed from: b  reason: collision with root package name */
        private final int f51405b;

        /* renamed from: c  reason: collision with root package name */
        private final int f51406c;

        /* renamed from: d  reason: collision with root package name */
        private final long f51407d;

        /* renamed from: e  reason: collision with root package name */
        private i f51408e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f51409f = true;

        /* renamed from: g  reason: collision with root package name */
        private long f51410g = -1;

        /* renamed from: h  reason: collision with root package name */
        private int f51411h = -1;

        public j(int i2, int i4, long j4, i iVar) {
            this.f51406c = i2;
            this.f51405b = i4;
            this.f51404a = PullToRefreshBase.this.f51389q;
            this.f51407d = j4;
            this.f51408e = iVar;
        }

        public void a() {
            this.f51409f = false;
            PullToRefreshBase.this.removeCallbacks(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f51410g == -1) {
                this.f51410g = System.currentTimeMillis();
            } else {
                int round = this.f51406c - Math.round((this.f51406c - this.f51405b) * this.f51404a.getInterpolation(((float) Math.max(Math.min(((System.currentTimeMillis() - this.f51410g) * 1000) / this.f51407d, 1000L), 0L)) / 1000.0f));
                this.f51411h = round;
                PullToRefreshBase.this.setHeaderScroll(round);
            }
            if (this.f51409f && this.f51405b != this.f51411h) {
                com.join.mgps.pulltorefresh.library.internal.c.a(PullToRefreshBase.this, this);
                return;
            }
            i iVar = this.f51408e;
            if (iVar != null) {
                iVar.a();
            }
        }
    }

    public PullToRefreshBase(Context context) {
        super(context);
        this.f51378f = false;
        this.f51379g = State.RESET;
        this.f51380h = Mode.getDefault();
        this.f51384l = true;
        this.f51385m = false;
        this.f51386n = true;
        this.f51387o = true;
        this.f51388p = true;
        this.f51390r = AnimationStyle.getDefault();
        t(context, null);
    }

    private void E() {
        float f4;
        float f5;
        int round;
        int footerSize;
        if (d.f51400a[getPullToRefreshScrollDirection().ordinal()] != 1) {
            f4 = this.f51377e;
            f5 = this.f51375c;
        } else {
            f4 = this.f51376d;
            f5 = this.f51374b;
        }
        int[] iArr = d.f51402c;
        if (iArr[this.f51381i.ordinal()] != 1) {
            round = Math.round(Math.min(f4 - f5, 0.0f) / B);
            footerSize = getHeaderSize();
        } else {
            round = Math.round(Math.max(f4 - f5, 0.0f) / B);
            footerSize = getFooterSize();
        }
        setHeaderScroll(round);
        if (round == 0 || c()) {
            return;
        }
        float abs = Math.abs(round) / footerSize;
        if (iArr[this.f51381i.ordinal()] != 1) {
            this.f51391s.c(abs);
        } else {
            this.f51392t.c(abs);
        }
        State state = this.f51379g;
        State state2 = State.PULL_TO_REFRESH;
        if (state != state2 && footerSize >= Math.abs(round)) {
            H(state2, new boolean[0]);
        } else if (this.f51379g != state2 || footerSize >= Math.abs(round)) {
        } else {
            H(State.RELEASE_TO_REFRESH, new boolean[0]);
        }
    }

    private final void J(int i2, long j4) {
        K(i2, j4, 0L, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K(int i2, long j4, long j5, i iVar) {
        int scrollX;
        PullToRefreshBase<T>.j jVar = this.f51396x;
        if (jVar != null) {
            jVar.a();
        }
        if (d.f51400a[getPullToRefreshScrollDirection().ordinal()] != 1) {
            scrollX = getScrollY();
        } else {
            scrollX = getScrollX();
        }
        int i4 = scrollX;
        if (i4 != i2) {
            if (this.f51389q == null) {
                this.f51389q = new DecelerateInterpolator();
            }
            PullToRefreshBase<T>.j jVar2 = new j(i4, i2, j4, iVar);
            this.f51396x = jVar2;
            if (j5 > 0) {
                postDelayed(jVar2, j5);
            } else {
                post(jVar2);
            }
        }
    }

    private final void M(int i2) {
        K(i2, 200L, 0L, new c());
    }

    private LinearLayout.LayoutParams getLoadingLayoutLayoutParams() {
        if (d.f51400a[getPullToRefreshScrollDirection().ordinal()] != 1) {
            return new LinearLayout.LayoutParams(-1, -2);
        }
        return new LinearLayout.LayoutParams(-2, -1);
    }

    private int getMaximumPullScroll() {
        if (d.f51400a[getPullToRefreshScrollDirection().ordinal()] != 1) {
            return Math.round(getHeight() / B);
        }
        return Math.round(getWidth() / B);
    }

    private void k(Context context, T t3) {
        FrameLayout frameLayout = new FrameLayout(context);
        this.f51383k = frameLayout;
        frameLayout.addView(t3, -1, -1);
        m(this.f51383k, new LinearLayout.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        h<T> hVar = this.f51393u;
        if (hVar != null) {
            hVar.F(this);
            return;
        }
        g<T> gVar = this.f51394v;
        if (gVar != null) {
            Mode mode = this.f51381i;
            if (mode == Mode.PULL_FROM_START) {
                gVar.b(this);
            } else if (mode == Mode.PULL_FROM_END) {
                gVar.a(this);
            }
        }
    }

    private void t(Context context, AttributeSet attributeSet) {
        if (d.f51400a[getPullToRefreshScrollDirection().ordinal()] != 1) {
            setOrientation(1);
        } else {
            setOrientation(0);
        }
        setGravity(17);
        this.f51373a = ViewConfiguration.get(context).getScaledTouchSlop();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PullToRefresh);
        if (obtainStyledAttributes.hasValue(12)) {
            this.f51380h = Mode.mapIntToValue(obtainStyledAttributes.getInteger(12, 0));
        }
        if (obtainStyledAttributes.hasValue(1)) {
            this.f51390r = AnimationStyle.mapIntToValue(obtainStyledAttributes.getInteger(1, 0));
        }
        T q3 = q(context, attributeSet);
        this.f51382j = q3;
        k(context, q3);
        this.f51391s = o(context, Mode.PULL_FROM_START, obtainStyledAttributes);
        this.f51392t = o(context, Mode.PULL_FROM_END, obtainStyledAttributes);
        if (obtainStyledAttributes.hasValue(14)) {
            Drawable drawable = obtainStyledAttributes.getDrawable(14);
            if (drawable != null) {
                this.f51382j.setBackgroundDrawable(drawable);
            }
        } else if (obtainStyledAttributes.hasValue(0)) {
            com.join.mgps.pulltorefresh.library.internal.b.a("ptrAdapterViewBackground", "ptrRefreshableViewBackground");
            Drawable drawable2 = obtainStyledAttributes.getDrawable(0);
            if (drawable2 != null) {
                this.f51382j.setBackgroundDrawable(drawable2);
            }
        }
        if (obtainStyledAttributes.hasValue(13)) {
            this.f51387o = obtainStyledAttributes.getBoolean(13, true);
        }
        if (obtainStyledAttributes.hasValue(16)) {
            this.f51385m = obtainStyledAttributes.getBoolean(16, false);
        }
        s(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
        O();
    }

    private boolean v() {
        int i2 = d.f51402c[this.f51380h.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 4) {
                    return false;
                }
                return w() || x();
            }
            return x();
        }
        return w();
    }

    protected void A() {
        int i2 = d.f51402c[this.f51381i.ordinal()];
        if (i2 == 1) {
            this.f51392t.e();
        } else if (i2 != 2) {
        } else {
            this.f51391s.e();
        }
    }

    protected void B(boolean z3) {
        if (this.f51380h.showHeaderLoadingLayout()) {
            this.f51391s.g();
        }
        if (this.f51380h.showFooterLoadingLayout()) {
            this.f51392t.g();
        }
        if (z3) {
            if (this.f51384l) {
                a aVar = new a();
                int i2 = d.f51402c[this.f51381i.ordinal()];
                if (i2 != 1 && i2 != 3) {
                    L(-getHeaderSize(), aVar);
                    return;
                } else {
                    L(getFooterSize(), aVar);
                    return;
                }
            }
            I(0);
            return;
        }
        n();
    }

    protected void C() {
        int i2 = d.f51402c[this.f51381i.ordinal()];
        if (i2 == 1) {
            this.f51392t.i();
        } else if (i2 != 2) {
        } else {
            this.f51391s.i();
        }
    }

    protected void D() {
        this.f51378f = false;
        this.f51388p = true;
        this.f51391s.k();
        this.f51392t.k();
        I(0);
    }

    protected final void F() {
        int maximumPullScroll = (int) (getMaximumPullScroll() * 1.2f);
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int i2 = d.f51400a[getPullToRefreshScrollDirection().ordinal()];
        if (i2 == 1) {
            if (this.f51380h.showHeaderLoadingLayout()) {
                this.f51391s.setWidth(maximumPullScroll);
                paddingLeft = -maximumPullScroll;
            } else {
                paddingLeft = 0;
            }
            if (this.f51380h.showFooterLoadingLayout()) {
                this.f51392t.setWidth(maximumPullScroll);
                paddingRight = -maximumPullScroll;
            } else {
                paddingRight = 0;
            }
        } else if (i2 == 2) {
            if (this.f51380h.showHeaderLoadingLayout()) {
                this.f51391s.setHeight(maximumPullScroll);
                paddingTop = -maximumPullScroll;
            } else {
                paddingTop = 0;
            }
            if (this.f51380h.showFooterLoadingLayout()) {
                this.f51392t.setHeight(maximumPullScroll);
                paddingBottom = -maximumPullScroll;
            } else {
                paddingBottom = 0;
            }
        }
        String.format("Setting Padding. L: %d, T: %d, R: %d, B: %d", Integer.valueOf(paddingLeft), Integer.valueOf(paddingTop), Integer.valueOf(paddingRight), Integer.valueOf(paddingBottom));
        setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
    }

    protected final void G(int i2, int i4) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f51383k.getLayoutParams();
        int i5 = d.f51400a[getPullToRefreshScrollDirection().ordinal()];
        if (i5 != 1) {
            if (i5 == 2 && layoutParams.height != i4) {
                layoutParams.height = i4;
                this.f51383k.requestLayout();
            }
        } else if (layoutParams.width != i2) {
            layoutParams.width = i2;
            this.f51383k.requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void H(State state, boolean... zArr) {
        this.f51379g = state;
        StringBuilder sb = new StringBuilder();
        sb.append("State: ");
        sb.append(this.f51379g.name());
        int i2 = d.f51401b[this.f51379g.ordinal()];
        if (i2 == 1) {
            D();
        } else if (i2 == 2) {
            A();
        } else if (i2 == 3) {
            C();
        } else if (i2 == 4 || i2 == 5) {
            B(zArr[0]);
        }
        f<T> fVar = this.f51395w;
        if (fVar != null) {
            fVar.a(this, this.f51379g, this.f51381i);
        }
    }

    protected final void I(int i2) {
        J(i2, getPullToRefreshScrollDuration());
    }

    protected final void L(int i2, i iVar) {
        K(i2, getPullToRefreshScrollDuration(), 0L, iVar);
    }

    protected final void N(int i2) {
        J(i2, getPullToRefreshScrollDurationLonger());
    }

    protected void O() {
        LinearLayout.LayoutParams loadingLayoutLayoutParams = getLoadingLayoutLayoutParams();
        if (this == this.f51391s.getParent()) {
            removeView(this.f51391s);
        }
        if (this.f51380h.showHeaderLoadingLayout()) {
            l(this.f51391s, 0, loadingLayoutLayoutParams);
        }
        if (this == this.f51392t.getParent()) {
            removeView(this.f51392t);
        }
        if (this.f51380h.showFooterLoadingLayout()) {
            m(this.f51392t, loadingLayoutLayoutParams);
        }
        F();
        Mode mode = this.f51380h;
        if (mode == Mode.BOTH) {
            mode = Mode.PULL_FROM_START;
        }
        this.f51381i = mode;
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final boolean a() {
        return this.f51380h.permitsPullToRefresh();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        StringBuilder sb = new StringBuilder();
        sb.append("addView: ");
        sb.append(view.getClass().getSimpleName());
        T refreshableView = getRefreshableView();
        if (refreshableView instanceof ViewGroup) {
            ((ViewGroup) refreshableView).addView(view, i2, layoutParams);
            return;
        }
        throw new UnsupportedOperationException("Refreshable View is not a ViewGroup so can't addView");
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final com.join.mgps.pulltorefresh.library.a b(boolean z3, boolean z4) {
        return p(z3, z4);
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final boolean c() {
        State state = this.f51379g;
        return state == State.REFRESHING || state == State.MANUAL_REFRESHING;
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final boolean d() {
        if (this.f51380h.showHeaderLoadingLayout() && x()) {
            M((-getHeaderSize()) * 2);
            return true;
        } else if (this.f51380h.showFooterLoadingLayout() && w()) {
            M(getFooterSize() * 2);
            return true;
        } else {
            return false;
        }
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final boolean e() {
        return this.f51385m;
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final void f() {
        if (c()) {
            H(State.RESET, new boolean[0]);
        }
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final boolean g() {
        return Build.VERSION.SDK_INT >= 9 && this.f51387o && com.join.mgps.pulltorefresh.library.d.a(this.f51382j);
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final Mode getCurrentMode() {
        return this.f51381i;
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final boolean getFilterTouchEvents() {
        return this.f51386n;
    }

    protected final LoadingLayout getFooterLayout() {
        return this.f51392t;
    }

    protected final int getFooterSize() {
        return this.f51392t.getContentSize();
    }

    protected final LoadingLayout getHeaderLayout() {
        return this.f51391s;
    }

    protected final int getHeaderSize() {
        return this.f51391s.getContentSize();
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final com.join.mgps.pulltorefresh.library.a getLoadingLayoutProxy() {
        return b(true, true);
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final Mode getMode() {
        return this.f51380h;
    }

    public abstract Orientation getPullToRefreshScrollDirection();

    protected int getPullToRefreshScrollDuration() {
        return 200;
    }

    protected int getPullToRefreshScrollDurationLonger() {
        return D;
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final T getRefreshableView() {
        return this.f51382j;
    }

    protected FrameLayout getRefreshableViewWrapper() {
        return this.f51383k;
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final boolean getShowViewWhileRefreshing() {
        return this.f51384l;
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final State getState() {
        return this.f51379g;
    }

    protected final void l(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i2, layoutParams);
    }

    protected final void m(View view, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, -1, layoutParams);
    }

    protected LoadingLayout o(Context context, Mode mode, TypedArray typedArray) {
        LoadingLayout createLoadingLayout = this.f51390r.createLoadingLayout(context, mode, getPullToRefreshScrollDirection(), typedArray);
        createLoadingLayout.setVisibility(4);
        return createLoadingLayout;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        float f4;
        float f5;
        if (a()) {
            int action = motionEvent.getAction();
            if (action != 3 && action != 1) {
                if (action == 0 || !this.f51378f) {
                    if (action != 0) {
                        if (action == 2) {
                            if (!this.f51385m && c()) {
                                return true;
                            }
                            if (v()) {
                                float y3 = motionEvent.getY();
                                float x3 = motionEvent.getX();
                                if (d.f51400a[getPullToRefreshScrollDirection().ordinal()] != 1) {
                                    f4 = y3 - this.f51375c;
                                    f5 = x3 - this.f51374b;
                                } else {
                                    f4 = x3 - this.f51374b;
                                    f5 = y3 - this.f51375c;
                                }
                                float abs = Math.abs(f4);
                                if (abs > this.f51373a && (!this.f51386n || abs > Math.abs(f5))) {
                                    if (this.f51380h.showHeaderLoadingLayout() && f4 >= 1.0f && x()) {
                                        this.f51375c = y3;
                                        this.f51374b = x3;
                                        this.f51378f = true;
                                        if (this.f51380h == Mode.BOTH) {
                                            this.f51381i = Mode.PULL_FROM_START;
                                        }
                                    } else if (this.f51380h.showFooterLoadingLayout() && f4 <= -1.0f && w()) {
                                        this.f51375c = y3;
                                        this.f51374b = x3;
                                        this.f51378f = true;
                                        if (this.f51380h == Mode.BOTH) {
                                            this.f51381i = Mode.PULL_FROM_END;
                                        }
                                    }
                                }
                            }
                        }
                    } else if (v()) {
                        float y4 = motionEvent.getY();
                        this.f51377e = y4;
                        this.f51375c = y4;
                        float x4 = motionEvent.getX();
                        this.f51376d = x4;
                        this.f51374b = x4;
                        this.f51378f = false;
                    }
                    return this.f51378f;
                }
                return true;
            }
            this.f51378f = false;
            return false;
        }
        return false;
    }

    @Override // android.view.View
    protected final void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            setMode(Mode.mapIntToValue(bundle.getInt(G, 0)));
            this.f51381i = Mode.mapIntToValue(bundle.getInt(H, 0));
            this.f51385m = bundle.getBoolean(I, false);
            this.f51384l = bundle.getBoolean(J, true);
            super.onRestoreInstanceState(bundle.getParcelable(K));
            State mapIntToValue = State.mapIntToValue(bundle.getInt(F, 0));
            if (mapIntToValue == State.REFRESHING || mapIntToValue == State.MANUAL_REFRESHING) {
                H(mapIntToValue, true);
            }
            y(bundle);
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    protected final Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        z(bundle);
        bundle.putInt(F, this.f51379g.getIntValue());
        bundle.putInt(G, this.f51380h.getIntValue());
        bundle.putInt(H, this.f51381i.getIntValue());
        bundle.putBoolean(I, this.f51385m);
        bundle.putBoolean(J, this.f51384l);
        bundle.putParcelable(K, super.onSaveInstanceState());
        return bundle;
    }

    @Override // android.view.View
    protected final void onSizeChanged(int i2, int i4, int i5, int i6) {
        String.format("onSizeChanged. W: %d, H: %d", Integer.valueOf(i2), Integer.valueOf(i4));
        super.onSizeChanged(i2, i4, i5, i6);
        F();
        G(i2, i4);
        post(new b());
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x002d, code lost:
        if (r0 != 3) goto L22;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            r4 = this;
            boolean r0 = r4.a()
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            boolean r0 = r4.f51385m
            r2 = 1
            if (r0 != 0) goto L14
            boolean r0 = r4.c()
            if (r0 == 0) goto L14
            return r2
        L14:
            int r0 = r5.getAction()
            if (r0 != 0) goto L21
            int r0 = r5.getEdgeFlags()
            if (r0 == 0) goto L21
            return r1
        L21:
            int r0 = r5.getAction()
            if (r0 == 0) goto L74
            if (r0 == r2) goto L44
            r3 = 2
            if (r0 == r3) goto L30
            r5 = 3
            if (r0 == r5) goto L44
            goto L8b
        L30:
            boolean r0 = r4.f51378f
            if (r0 == 0) goto L8b
            float r0 = r5.getY()
            r4.f51375c = r0
            float r5 = r5.getX()
            r4.f51374b = r5
            r4.E()
            return r2
        L44:
            boolean r5 = r4.f51378f
            if (r5 == 0) goto L8b
            r4.f51378f = r1
            com.join.mgps.pulltorefresh.library.PullToRefreshBase$State r5 = r4.f51379g
            com.join.mgps.pulltorefresh.library.PullToRefreshBase$State r0 = com.join.mgps.pulltorefresh.library.PullToRefreshBase.State.RELEASE_TO_REFRESH
            if (r5 != r0) goto L62
            com.join.mgps.pulltorefresh.library.PullToRefreshBase$h<T extends android.view.View> r5 = r4.f51393u
            if (r5 != 0) goto L58
            com.join.mgps.pulltorefresh.library.PullToRefreshBase$g<T extends android.view.View> r5 = r4.f51394v
            if (r5 == 0) goto L62
        L58:
            com.join.mgps.pulltorefresh.library.PullToRefreshBase$State r5 = com.join.mgps.pulltorefresh.library.PullToRefreshBase.State.REFRESHING
            boolean[] r0 = new boolean[r2]
            r0[r1] = r2
            r4.H(r5, r0)
            return r2
        L62:
            boolean r5 = r4.c()
            if (r5 == 0) goto L6c
            r4.I(r1)
            return r2
        L6c:
            com.join.mgps.pulltorefresh.library.PullToRefreshBase$State r5 = com.join.mgps.pulltorefresh.library.PullToRefreshBase.State.RESET
            boolean[] r0 = new boolean[r1]
            r4.H(r5, r0)
            return r2
        L74:
            boolean r0 = r4.v()
            if (r0 == 0) goto L8b
            float r0 = r5.getY()
            r4.f51377e = r0
            r4.f51375c = r0
            float r5 = r5.getX()
            r4.f51376d = r5
            r4.f51374b = r5
            return r2
        L8b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.pulltorefresh.library.PullToRefreshBase.onTouchEvent(android.view.MotionEvent):boolean");
    }

    protected com.join.mgps.pulltorefresh.library.c p(boolean z3, boolean z4) {
        com.join.mgps.pulltorefresh.library.c cVar = new com.join.mgps.pulltorefresh.library.c();
        if (z3 && this.f51380h.showHeaderLoadingLayout()) {
            cVar.a(this.f51391s);
        }
        if (z4 && this.f51380h.showFooterLoadingLayout()) {
            cVar.a(this.f51392t);
        }
        return cVar;
    }

    protected abstract T q(Context context, AttributeSet attributeSet);

    protected final void r() {
        this.f51388p = false;
    }

    protected void s(TypedArray typedArray) {
    }

    public void setDisableScrollingWhileRefreshing(boolean z3) {
        setScrollingWhileRefreshingEnabled(!z3);
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final void setFilterTouchEvents(boolean z3) {
        this.f51386n = z3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setHeaderScroll(int i2) {
        StringBuilder sb = new StringBuilder();
        sb.append("setHeaderScroll: ");
        sb.append(i2);
        int maximumPullScroll = getMaximumPullScroll();
        int min = Math.min(maximumPullScroll, Math.max(-maximumPullScroll, i2));
        if (this.f51388p) {
            if (min < 0) {
                this.f51391s.setVisibility(0);
            } else if (min > 0) {
                this.f51392t.setVisibility(0);
            } else {
                this.f51391s.setVisibility(4);
                this.f51392t.setVisibility(4);
            }
        }
        int i4 = d.f51400a[getPullToRefreshScrollDirection().ordinal()];
        if (i4 == 1) {
            scrollTo(min, 0);
        } else if (i4 != 2) {
        } else {
            scrollTo(0, min);
        }
    }

    public void setLastUpdatedLabel(CharSequence charSequence) {
        getLoadingLayoutProxy().setLastUpdatedLabel(charSequence);
    }

    public void setLoadingDrawable(Drawable drawable) {
        getLoadingLayoutProxy().setLoadingDrawable(drawable);
    }

    @Override // android.view.View
    public void setLongClickable(boolean z3) {
        getRefreshableView().setLongClickable(z3);
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final void setMode(Mode mode) {
        if (mode != this.f51380h) {
            StringBuilder sb = new StringBuilder();
            sb.append("Setting mode to: ");
            sb.append(mode);
            this.f51380h = mode;
            O();
        }
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public void setOnPullEventListener(f<T> fVar) {
        this.f51395w = fVar;
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final void setOnRefreshListener(h<T> hVar) {
        this.f51393u = hVar;
        this.f51394v = null;
    }

    public void setPullLabel(CharSequence charSequence) {
        getLoadingLayoutProxy().setPullLabel(charSequence);
    }

    public final void setPullToRefreshEnabled(boolean z3) {
        setMode(z3 ? Mode.getDefault() : Mode.DISABLED);
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final void setPullToRefreshOverScrollEnabled(boolean z3) {
        this.f51387o = z3;
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final void setRefreshing() {
        setRefreshing(true);
    }

    public void setRefreshingLabel(CharSequence charSequence) {
        getLoadingLayoutProxy().setRefreshingLabel(charSequence);
    }

    public void setReleaseLabel(CharSequence charSequence) {
        setReleaseLabel(charSequence, Mode.BOTH);
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public void setScrollAnimationInterpolator(Interpolator interpolator) {
        this.f51389q = interpolator;
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final void setScrollingWhileRefreshingEnabled(boolean z3) {
        this.f51385m = z3;
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final void setShowViewWhileRefreshing(boolean z3) {
        this.f51384l = z3;
    }

    public final boolean u() {
        return !e();
    }

    protected abstract boolean w();

    protected abstract boolean x();

    protected void y(Bundle bundle) {
    }

    protected void z(Bundle bundle) {
    }

    public void setLoadingDrawable(Drawable drawable, Mode mode) {
        b(mode.showHeaderLoadingLayout(), mode.showFooterLoadingLayout()).setLoadingDrawable(drawable);
    }

    public void setPullLabel(CharSequence charSequence, Mode mode) {
        b(mode.showHeaderLoadingLayout(), mode.showFooterLoadingLayout()).setPullLabel(charSequence);
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final void setRefreshing(boolean z3) {
        if (c()) {
            return;
        }
        H(State.MANUAL_REFRESHING, z3);
    }

    public void setRefreshingLabel(CharSequence charSequence, Mode mode) {
        b(mode.showHeaderLoadingLayout(), mode.showFooterLoadingLayout()).setRefreshingLabel(charSequence);
    }

    public void setReleaseLabel(CharSequence charSequence, Mode mode) {
        b(mode.showHeaderLoadingLayout(), mode.showFooterLoadingLayout()).setReleaseLabel(charSequence);
    }

    @Override // com.join.mgps.pulltorefresh.library.b
    public final void setOnRefreshListener(g<T> gVar) {
        this.f51394v = gVar;
        this.f51393u = null;
    }

    public PullToRefreshBase(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f51378f = false;
        this.f51379g = State.RESET;
        this.f51380h = Mode.getDefault();
        this.f51384l = true;
        this.f51385m = false;
        this.f51386n = true;
        this.f51387o = true;
        this.f51388p = true;
        this.f51390r = AnimationStyle.getDefault();
        t(context, attributeSet);
    }

    public PullToRefreshBase(Context context, Mode mode) {
        super(context);
        this.f51378f = false;
        this.f51379g = State.RESET;
        this.f51380h = Mode.getDefault();
        this.f51384l = true;
        this.f51385m = false;
        this.f51386n = true;
        this.f51387o = true;
        this.f51388p = true;
        this.f51390r = AnimationStyle.getDefault();
        this.f51380h = mode;
        t(context, null);
    }

    public PullToRefreshBase(Context context, Mode mode, AnimationStyle animationStyle) {
        super(context);
        this.f51378f = false;
        this.f51379g = State.RESET;
        this.f51380h = Mode.getDefault();
        this.f51384l = true;
        this.f51385m = false;
        this.f51386n = true;
        this.f51387o = true;
        this.f51388p = true;
        this.f51390r = AnimationStyle.getDefault();
        this.f51380h = mode;
        this.f51390r = animationStyle;
        t(context, null);
    }
}
