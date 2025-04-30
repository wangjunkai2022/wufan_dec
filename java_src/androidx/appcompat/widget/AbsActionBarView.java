package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class AbsActionBarView extends ViewGroup {

    /* renamed from: i  reason: collision with root package name */
    private static final int f748i = 200;

    /* renamed from: a  reason: collision with root package name */
    protected final VisibilityAnimListener f749a;

    /* renamed from: b  reason: collision with root package name */
    protected final Context f750b;

    /* renamed from: c  reason: collision with root package name */
    protected ActionMenuView f751c;

    /* renamed from: d  reason: collision with root package name */
    protected ActionMenuPresenter f752d;

    /* renamed from: e  reason: collision with root package name */
    protected int f753e;

    /* renamed from: f  reason: collision with root package name */
    protected ViewPropertyAnimatorCompat f754f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f755g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f756h;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public class VisibilityAnimListener implements ViewPropertyAnimatorListener {

        /* renamed from: a  reason: collision with root package name */
        private boolean f758a = false;

        /* renamed from: b  reason: collision with root package name */
        int f759b;

        protected VisibilityAnimListener() {
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationCancel(View view) {
            this.f758a = true;
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            if (this.f758a) {
                return;
            }
            AbsActionBarView absActionBarView = AbsActionBarView.this;
            absActionBarView.f754f = null;
            AbsActionBarView.super.setVisibility(this.f759b);
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationStart(View view) {
            AbsActionBarView.super.setVisibility(0);
            this.f758a = false;
        }

        public VisibilityAnimListener withFinalVisibility(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, int i2) {
            AbsActionBarView.this.f754f = viewPropertyAnimatorCompat;
            this.f759b = i2;
            return this;
        }
    }

    AbsActionBarView(@NonNull Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int d(int i2, int i4, boolean z3) {
        return z3 ? i2 - i4 : i2 + i4;
    }

    public void animateToVisibility(int i2) {
        setupAnimatorToVisibility(i2, 200L).start();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int c(View view, int i2, int i4, int i5) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE), i4);
        return Math.max(0, (i2 - view.getMeasuredWidth()) - i5);
    }

    public boolean canShowOverflowMenu() {
        return isOverflowReserved() && getVisibility() == 0;
    }

    public void dismissPopupMenus() {
        ActionMenuPresenter actionMenuPresenter = this.f752d;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.dismissPopupMenus();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int e(View view, int i2, int i4, int i5, boolean z3) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i6 = i4 + ((i5 - measuredHeight) / 2);
        if (z3) {
            view.layout(i2 - measuredWidth, i6, i2, measuredHeight + i6);
        } else {
            view.layout(i2, i6, i2 + measuredWidth, measuredHeight + i6);
        }
        return z3 ? -measuredWidth : measuredWidth;
    }

    public int getAnimatedVisibility() {
        if (this.f754f != null) {
            return this.f749a.f759b;
        }
        return getVisibility();
    }

    public int getContentHeight() {
        return this.f753e;
    }

    public boolean hideOverflowMenu() {
        ActionMenuPresenter actionMenuPresenter = this.f752d;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.hideOverflowMenu();
        }
        return false;
    }

    public boolean isOverflowMenuShowPending() {
        ActionMenuPresenter actionMenuPresenter = this.f752d;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.isOverflowMenuShowPending();
        }
        return false;
    }

    public boolean isOverflowMenuShowing() {
        ActionMenuPresenter actionMenuPresenter = this.f752d;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.isOverflowMenuShowing();
        }
        return false;
    }

    public boolean isOverflowReserved() {
        ActionMenuPresenter actionMenuPresenter = this.f752d;
        return actionMenuPresenter != null && actionMenuPresenter.isOverflowReserved();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, R.styleable.ActionBar, R.attr.actionBarStyle, 0);
        setContentHeight(obtainStyledAttributes.getLayoutDimension(R.styleable.ActionBar_height, 0));
        obtainStyledAttributes.recycle();
        ActionMenuPresenter actionMenuPresenter = this.f752d;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.onConfigurationChanged(configuration);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f756h = false;
        }
        if (!this.f756h) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f756h = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f756h = false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f755g = false;
        }
        if (!this.f755g) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f755g = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f755g = false;
        }
        return true;
    }

    public void postShowOverflowMenu() {
        post(new Runnable() { // from class: androidx.appcompat.widget.AbsActionBarView.1
            @Override // java.lang.Runnable
            public void run() {
                AbsActionBarView.this.showOverflowMenu();
            }
        });
    }

    public void setContentHeight(int i2) {
        this.f753e = i2;
        requestLayout();
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        if (i2 != getVisibility()) {
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.f754f;
            if (viewPropertyAnimatorCompat != null) {
                viewPropertyAnimatorCompat.cancel();
            }
            super.setVisibility(i2);
        }
    }

    public ViewPropertyAnimatorCompat setupAnimatorToVisibility(int i2, long j4) {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.f754f;
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.cancel();
        }
        if (i2 == 0) {
            if (getVisibility() != 0) {
                setAlpha(0.0f);
            }
            ViewPropertyAnimatorCompat alpha = ViewCompat.animate(this).alpha(1.0f);
            alpha.setDuration(j4);
            alpha.setListener(this.f749a.withFinalVisibility(alpha, i2));
            return alpha;
        }
        ViewPropertyAnimatorCompat alpha2 = ViewCompat.animate(this).alpha(0.0f);
        alpha2.setDuration(j4);
        alpha2.setListener(this.f749a.withFinalVisibility(alpha2, i2));
        return alpha2;
    }

    public boolean showOverflowMenu() {
        ActionMenuPresenter actionMenuPresenter = this.f752d;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.showOverflowMenu();
        }
        return false;
    }

    AbsActionBarView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbsActionBarView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f749a = new VisibilityAnimListener();
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true) && typedValue.resourceId != 0) {
            this.f750b = new ContextThemeWrapper(context, typedValue.resourceId);
        } else {
            this.f750b = context;
        }
    }
}
