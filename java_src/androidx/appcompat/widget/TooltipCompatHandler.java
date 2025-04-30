package androidx.appcompat.widget;

import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewConfigurationCompat;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
class TooltipCompatHandler implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {

    /* renamed from: j  reason: collision with root package name */
    private static final String f1531j = "TooltipCompatHandler";

    /* renamed from: k  reason: collision with root package name */
    private static final long f1532k = 2500;

    /* renamed from: l  reason: collision with root package name */
    private static final long f1533l = 15000;

    /* renamed from: m  reason: collision with root package name */
    private static final long f1534m = 3000;

    /* renamed from: n  reason: collision with root package name */
    private static TooltipCompatHandler f1535n;

    /* renamed from: o  reason: collision with root package name */
    private static TooltipCompatHandler f1536o;

    /* renamed from: a  reason: collision with root package name */
    private final View f1537a;

    /* renamed from: b  reason: collision with root package name */
    private final CharSequence f1538b;

    /* renamed from: c  reason: collision with root package name */
    private final int f1539c;

    /* renamed from: d  reason: collision with root package name */
    private final Runnable f1540d = new Runnable() { // from class: androidx.appcompat.widget.TooltipCompatHandler.1
        @Override // java.lang.Runnable
        public void run() {
            TooltipCompatHandler.this.f(false);
        }
    };

    /* renamed from: e  reason: collision with root package name */
    private final Runnable f1541e = new Runnable() { // from class: androidx.appcompat.widget.TooltipCompatHandler.2
        @Override // java.lang.Runnable
        public void run() {
            TooltipCompatHandler.this.c();
        }
    };

    /* renamed from: f  reason: collision with root package name */
    private int f1542f;

    /* renamed from: g  reason: collision with root package name */
    private int f1543g;

    /* renamed from: h  reason: collision with root package name */
    private TooltipPopup f1544h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f1545i;

    private TooltipCompatHandler(View view, CharSequence charSequence) {
        this.f1537a = view;
        this.f1538b = charSequence;
        this.f1539c = ViewConfigurationCompat.getScaledHoverSlop(ViewConfiguration.get(view.getContext()));
        b();
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    private void a() {
        this.f1537a.removeCallbacks(this.f1540d);
    }

    private void b() {
        this.f1542f = Integer.MAX_VALUE;
        this.f1543g = Integer.MAX_VALUE;
    }

    private void d() {
        this.f1537a.postDelayed(this.f1540d, ViewConfiguration.getLongPressTimeout());
    }

    private static void e(TooltipCompatHandler tooltipCompatHandler) {
        TooltipCompatHandler tooltipCompatHandler2 = f1535n;
        if (tooltipCompatHandler2 != null) {
            tooltipCompatHandler2.a();
        }
        f1535n = tooltipCompatHandler;
        if (tooltipCompatHandler != null) {
            tooltipCompatHandler.d();
        }
    }

    private boolean g(MotionEvent motionEvent) {
        int x3 = (int) motionEvent.getX();
        int y3 = (int) motionEvent.getY();
        if (Math.abs(x3 - this.f1542f) > this.f1539c || Math.abs(y3 - this.f1543g) > this.f1539c) {
            this.f1542f = x3;
            this.f1543g = y3;
            return true;
        }
        return false;
    }

    public static void setTooltipText(View view, CharSequence charSequence) {
        TooltipCompatHandler tooltipCompatHandler = f1535n;
        if (tooltipCompatHandler != null && tooltipCompatHandler.f1537a == view) {
            e(null);
        }
        if (TextUtils.isEmpty(charSequence)) {
            TooltipCompatHandler tooltipCompatHandler2 = f1536o;
            if (tooltipCompatHandler2 != null && tooltipCompatHandler2.f1537a == view) {
                tooltipCompatHandler2.c();
            }
            view.setOnLongClickListener(null);
            view.setLongClickable(false);
            view.setOnHoverListener(null);
            return;
        }
        new TooltipCompatHandler(view, charSequence);
    }

    void c() {
        if (f1536o == this) {
            f1536o = null;
            TooltipPopup tooltipPopup = this.f1544h;
            if (tooltipPopup != null) {
                tooltipPopup.c();
                this.f1544h = null;
                b();
                this.f1537a.removeOnAttachStateChangeListener(this);
            }
        }
        if (f1535n == this) {
            e(null);
        }
        this.f1537a.removeCallbacks(this.f1541e);
    }

    void f(boolean z3) {
        long j4;
        int longPressTimeout;
        long j5;
        if (ViewCompat.isAttachedToWindow(this.f1537a)) {
            e(null);
            TooltipCompatHandler tooltipCompatHandler = f1536o;
            if (tooltipCompatHandler != null) {
                tooltipCompatHandler.c();
            }
            f1536o = this;
            this.f1545i = z3;
            TooltipPopup tooltipPopup = new TooltipPopup(this.f1537a.getContext());
            this.f1544h = tooltipPopup;
            tooltipPopup.e(this.f1537a, this.f1542f, this.f1543g, this.f1545i, this.f1538b);
            this.f1537a.addOnAttachStateChangeListener(this);
            if (this.f1545i) {
                j5 = f1532k;
            } else {
                if ((ViewCompat.getWindowSystemUiVisibility(this.f1537a) & 1) == 1) {
                    j4 = f1534m;
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                } else {
                    j4 = 15000;
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                }
                j5 = j4 - longPressTimeout;
            }
            this.f1537a.removeCallbacks(this.f1541e);
            this.f1537a.postDelayed(this.f1541e, j5);
        }
    }

    @Override // android.view.View.OnHoverListener
    public boolean onHover(View view, MotionEvent motionEvent) {
        if (this.f1544h == null || !this.f1545i) {
            AccessibilityManager accessibilityManager = (AccessibilityManager) this.f1537a.getContext().getSystemService("accessibility");
            if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
                return false;
            }
            int action = motionEvent.getAction();
            if (action != 7) {
                if (action == 10) {
                    b();
                    c();
                }
            } else if (this.f1537a.isEnabled() && this.f1544h == null && g(motionEvent)) {
                e(this);
            }
            return false;
        }
        return false;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.f1542f = view.getWidth() / 2;
        this.f1543g = view.getHeight() / 2;
        f(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        c();
    }
}
