package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.R;
import com.google.android.material.snackbar.BaseTransientBottomBar;
/* loaded from: classes2.dex */
public class Snackbar extends BaseTransientBottomBar<Snackbar> {
    private static final int[] M;
    private static final int[] N;
    @Nullable
    private final AccessibilityManager J;
    private boolean K;
    @Nullable
    private BaseTransientBottomBar.BaseCallback<Snackbar> L;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes2.dex */
    public static final class SnackbarLayout extends BaseTransientBottomBar.SnackbarBaseLayout {
        public SnackbarLayout(Context context) {
            super(context);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.widget.FrameLayout, android.view.View
        public void onMeasure(int i2, int i4) {
            super.onMeasure(i2, i4);
            int childCount = getChildCount();
            int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                if (childAt.getLayoutParams().width == -1) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt.getMeasuredHeight(), 1073741824));
                }
            }
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setBackground(@Nullable Drawable drawable) {
            super.setBackground(drawable);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setBackgroundDrawable(@Nullable Drawable drawable) {
            super.setBackgroundDrawable(drawable);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
            super.setBackgroundTintList(colorStateList);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
            super.setBackgroundTintMode(mode);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
            super.setLayoutParams(layoutParams);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
            super.setOnClickListener(onClickListener);
        }

        public SnackbarLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View.OnClickListener f15846a;

        a(View.OnClickListener onClickListener) {
            this.f15846a = onClickListener;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f15846a.onClick(view);
            Snackbar.this.u(1);
        }
    }

    /* loaded from: classes2.dex */
    public static class b extends BaseTransientBottomBar.BaseCallback<Snackbar> {

        /* renamed from: f  reason: collision with root package name */
        public static final int f15848f = 0;

        /* renamed from: g  reason: collision with root package name */
        public static final int f15849g = 1;

        /* renamed from: h  reason: collision with root package name */
        public static final int f15850h = 2;

        /* renamed from: i  reason: collision with root package name */
        public static final int f15851i = 3;

        /* renamed from: j  reason: collision with root package name */
        public static final int f15852j = 4;

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.BaseCallback
        /* renamed from: c */
        public void a(Snackbar snackbar, int i2) {
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.BaseCallback
        /* renamed from: d */
        public void b(Snackbar snackbar) {
        }
    }

    static {
        int i2 = R.attr.snackbarButtonStyle;
        M = new int[]{i2};
        N = new int[]{i2, R.attr.snackbarTextViewStyle};
    }

    private Snackbar(@NonNull Context context, @NonNull ViewGroup viewGroup, @NonNull View view, @NonNull com.google.android.material.snackbar.a aVar) {
        super(context, viewGroup, view, aVar);
        this.J = (AccessibilityManager) viewGroup.getContext().getSystemService("accessibility");
    }

    @Nullable
    private static ViewGroup n0(View view) {
        ViewGroup viewGroup = null;
        while (!(view instanceof CoordinatorLayout)) {
            if (view instanceof FrameLayout) {
                if (view.getId() == 16908290) {
                    return (ViewGroup) view;
                }
                viewGroup = (ViewGroup) view;
            }
            if (view != null) {
                ViewParent parent = view.getParent();
                if (parent instanceof View) {
                    view = (View) parent;
                    continue;
                } else {
                    view = null;
                    continue;
                }
            }
            if (view == null) {
                return viewGroup;
            }
        }
        return (ViewGroup) view;
    }

    private Button o0() {
        return p0().getActionView();
    }

    private SnackbarContentLayout p0() {
        return (SnackbarContentLayout) this.f15789c.getChildAt(0);
    }

    private TextView q0() {
        return p0().getMessageView();
    }

    @Deprecated
    protected static boolean r0(@NonNull Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(M);
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        return resourceId != -1;
    }

    private static boolean s0(@NonNull Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(N);
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        int resourceId2 = obtainStyledAttributes.getResourceId(1, -1);
        obtainStyledAttributes.recycle();
        return (resourceId == -1 || resourceId2 == -1) ? false : true;
    }

    @NonNull
    public static Snackbar t0(@NonNull Context context, @NonNull View view, @NonNull CharSequence charSequence, int i2) {
        return w0(context, view, charSequence, i2);
    }

    @NonNull
    public static Snackbar u0(@NonNull View view, @StringRes int i2, int i4) {
        return v0(view, view.getResources().getText(i2), i4);
    }

    @NonNull
    public static Snackbar v0(@NonNull View view, @NonNull CharSequence charSequence, int i2) {
        return w0(null, view, charSequence, i2);
    }

    @NonNull
    private static Snackbar w0(@Nullable Context context, @NonNull View view, @NonNull CharSequence charSequence, int i2) {
        int i4;
        ViewGroup n02 = n0(view);
        if (n02 != null) {
            if (context == null) {
                context = n02.getContext();
            }
            LayoutInflater from = LayoutInflater.from(context);
            if (s0(context)) {
                i4 = R.layout.mtrl_layout_snackbar_include;
            } else {
                i4 = R.layout.design_layout_snackbar_include;
            }
            SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) from.inflate(i4, n02, false);
            Snackbar snackbar = new Snackbar(context, n02, snackbarContentLayout, snackbarContentLayout);
            snackbar.H0(charSequence);
            snackbar.a0(i2);
            return snackbar;
        }
        throw new IllegalArgumentException("No suitable parent found from the given view. Please provide a valid view.");
    }

    @NonNull
    public Snackbar A0(ColorStateList colorStateList) {
        o0().setTextColor(colorStateList);
        return this;
    }

    @NonNull
    public Snackbar B0(@ColorInt int i2) {
        return C0(ColorStateList.valueOf(i2));
    }

    @NonNull
    public Snackbar C0(@Nullable ColorStateList colorStateList) {
        this.f15789c.setBackgroundTintList(colorStateList);
        return this;
    }

    @NonNull
    public Snackbar D0(@Nullable PorterDuff.Mode mode) {
        this.f15789c.setBackgroundTintMode(mode);
        return this;
    }

    @NonNull
    @Deprecated
    public Snackbar E0(@Nullable b bVar) {
        BaseTransientBottomBar.BaseCallback<Snackbar> baseCallback = this.L;
        if (baseCallback != null) {
            U(baseCallback);
        }
        if (bVar != null) {
            p(bVar);
        }
        this.L = bVar;
        return this;
    }

    @NonNull
    public Snackbar F0(@Dimension int i2) {
        p0().setMaxInlineActionWidth(i2);
        return this;
    }

    @NonNull
    public Snackbar G0(@StringRes int i2) {
        return H0(getContext().getText(i2));
    }

    @NonNull
    public Snackbar H0(@NonNull CharSequence charSequence) {
        q0().setText(charSequence);
        return this;
    }

    @NonNull
    public Snackbar I0(@ColorInt int i2) {
        q0().setTextColor(i2);
        return this;
    }

    @NonNull
    public Snackbar J0(ColorStateList colorStateList) {
        q0().setTextColor(colorStateList);
        return this;
    }

    @NonNull
    public Snackbar K0(int i2) {
        q0().setMaxLines(i2);
        return this;
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    public boolean L() {
        return super.L();
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    public void f0() {
        super.f0();
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    public void t() {
        super.t();
    }

    @NonNull
    public Snackbar x0(@StringRes int i2, View.OnClickListener onClickListener) {
        return y0(getContext().getText(i2), onClickListener);
    }

    @NonNull
    public Snackbar y0(@Nullable CharSequence charSequence, @Nullable View.OnClickListener onClickListener) {
        Button o02 = o0();
        if (!TextUtils.isEmpty(charSequence) && onClickListener != null) {
            this.K = true;
            o02.setVisibility(0);
            o02.setText(charSequence);
            o02.setOnClickListener(new a(onClickListener));
        } else {
            o02.setVisibility(8);
            o02.setOnClickListener(null);
            this.K = false;
        }
        return this;
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    public int z() {
        int z3 = super.z();
        if (z3 == -2) {
            return -2;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            return this.J.getRecommendedTimeoutMillis(z3, (this.K ? 4 : 0) | 1 | 2);
        } else if (this.K && this.J.isTouchExplorationEnabled()) {
            return -2;
        } else {
            return z3;
        }
    }

    @NonNull
    public Snackbar z0(@ColorInt int i2) {
        o0().setTextColor(i2);
        return this;
    }
}
