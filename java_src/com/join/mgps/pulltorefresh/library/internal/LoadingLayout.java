package com.join.mgps.pulltorefresh.library.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pulltorefresh.library.PullToRefreshBase;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes4.dex */
public abstract class LoadingLayout extends FrameLayout implements com.join.mgps.pulltorefresh.library.a {

    /* renamed from: l  reason: collision with root package name */
    static final String f51428l = "PullToRefresh-LoadingLayout";

    /* renamed from: m  reason: collision with root package name */
    static final Interpolator f51429m = new LinearInterpolator();

    /* renamed from: a  reason: collision with root package name */
    private FrameLayout f51430a;

    /* renamed from: b  reason: collision with root package name */
    protected final ImageView f51431b;

    /* renamed from: c  reason: collision with root package name */
    protected final ProgressBar f51432c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f51433d;

    /* renamed from: e  reason: collision with root package name */
    private final TextView f51434e;

    /* renamed from: f  reason: collision with root package name */
    private final TextView f51435f;

    /* renamed from: g  reason: collision with root package name */
    protected final PullToRefreshBase.Mode f51436g;

    /* renamed from: h  reason: collision with root package name */
    protected final PullToRefreshBase.Orientation f51437h;

    /* renamed from: i  reason: collision with root package name */
    private CharSequence f51438i;

    /* renamed from: j  reason: collision with root package name */
    private CharSequence f51439j;

    /* renamed from: k  reason: collision with root package name */
    private CharSequence f51440k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f51441a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f51442b;

        static {
            int[] iArr = new int[PullToRefreshBase.Mode.values().length];
            f51442b = iArr;
            try {
                iArr[PullToRefreshBase.Mode.PULL_FROM_END.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f51442b[PullToRefreshBase.Mode.PULL_FROM_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[PullToRefreshBase.Orientation.values().length];
            f51441a = iArr2;
            try {
                iArr2[PullToRefreshBase.Orientation.HORIZONTAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f51441a[PullToRefreshBase.Orientation.VERTICAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public LoadingLayout(Context context, PullToRefreshBase.Mode mode, PullToRefreshBase.Orientation orientation, TypedArray typedArray) {
        super(context);
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        Drawable drawable;
        this.f51436g = mode;
        this.f51437h = orientation;
        if (a.f51441a[orientation.ordinal()] != 1) {
            LayoutInflater.from(context).inflate(R.layout.pull_to_refresh_header_vertical, this);
        } else {
            LayoutInflater.from(context).inflate(R.layout.pull_to_refresh_header_horizontal, this);
        }
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.fl_inner);
        this.f51430a = frameLayout;
        this.f51434e = (TextView) frameLayout.findViewById(R.id.pull_to_refresh_text);
        this.f51432c = (ProgressBar) this.f51430a.findViewById(R.id.pull_to_refresh_progress);
        this.f51435f = (TextView) this.f51430a.findViewById(R.id.pull_to_refresh_sub_text);
        this.f51431b = (ImageView) this.f51430a.findViewById(R.id.pull_to_refresh_image);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f51430a.getLayoutParams();
        int[] iArr = a.f51442b;
        if (iArr[mode.ordinal()] != 1) {
            layoutParams.gravity = orientation == PullToRefreshBase.Orientation.VERTICAL ? 80 : 5;
            this.f51438i = context.getString(R.string.pull_to_refresh_pull_label);
            this.f51439j = context.getString(R.string.pull_to_refresh_refreshing_label);
            this.f51440k = context.getString(R.string.pull_to_refresh_release_label);
        } else {
            layoutParams.gravity = orientation == PullToRefreshBase.Orientation.VERTICAL ? 48 : 3;
            this.f51438i = context.getString(R.string.pull_to_refresh_from_bottom_pull_label);
            this.f51439j = context.getString(R.string.pull_to_refresh_from_bottom_refreshing_label);
            this.f51440k = context.getString(R.string.pull_to_refresh_from_bottom_release_label);
        }
        if (typedArray.hasValue(7) && (drawable = typedArray.getDrawable(7)) != null) {
            c.b(this, drawable);
        }
        if (typedArray.hasValue(9)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(9, typedValue);
            setTextAppearance(typedValue.data);
        }
        if (typedArray.hasValue(18)) {
            TypedValue typedValue2 = new TypedValue();
            typedArray.getValue(18, typedValue2);
            setSubTextAppearance(typedValue2.data);
        }
        if (typedArray.hasValue(10) && (colorStateList2 = typedArray.getColorStateList(10)) != null) {
            setTextColor(colorStateList2);
        }
        if (typedArray.hasValue(8) && (colorStateList = typedArray.getColorStateList(8)) != null) {
            setSubTextColor(colorStateList);
        }
        Drawable drawable2 = typedArray.hasValue(2) ? typedArray.getDrawable(2) : null;
        if (iArr[mode.ordinal()] != 1) {
            if (typedArray.hasValue(5)) {
                drawable2 = typedArray.getDrawable(5);
            } else if (typedArray.hasValue(6)) {
                b.a("ptrDrawableTop", "ptrDrawableStart");
                drawable2 = typedArray.getDrawable(6);
            }
        } else if (typedArray.hasValue(4)) {
            drawable2 = typedArray.getDrawable(4);
        } else if (typedArray.hasValue(3)) {
            b.a("ptrDrawableBottom", "ptrDrawableEnd");
            drawable2 = typedArray.getDrawable(3);
        }
        setLoadingDrawable(drawable2 == null ? context.getResources().getDrawable(getDefaultDrawableResId()) : drawable2);
        k();
    }

    private void setSubHeaderText(CharSequence charSequence) {
        if (this.f51435f != null) {
            if (TextUtils.isEmpty(charSequence)) {
                this.f51435f.setVisibility(8);
                return;
            }
            this.f51435f.setText(charSequence);
            if (8 == this.f51435f.getVisibility()) {
                this.f51435f.setVisibility(0);
            }
        }
    }

    private void setSubTextAppearance(int i2) {
        TextView textView = this.f51435f;
        if (textView != null) {
            textView.setTextAppearance(getContext(), i2);
        }
    }

    private void setSubTextColor(ColorStateList colorStateList) {
        TextView textView = this.f51435f;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    private void setTextAppearance(int i2) {
        TextView textView = this.f51434e;
        if (textView != null) {
            textView.setTextAppearance(getContext(), i2);
        }
        TextView textView2 = this.f51435f;
        if (textView2 != null) {
            textView2.setTextAppearance(getContext(), i2);
        }
    }

    private void setTextColor(ColorStateList colorStateList) {
        TextView textView = this.f51434e;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
        TextView textView2 = this.f51435f;
        if (textView2 != null) {
            textView2.setTextColor(colorStateList);
        }
    }

    public final void a() {
        if (this.f51434e.getVisibility() == 0) {
            this.f51434e.setVisibility(4);
        }
        if (this.f51432c.getVisibility() == 0) {
            this.f51432c.setVisibility(4);
        }
        if (this.f51431b.getVisibility() == 0) {
            this.f51431b.setVisibility(4);
        }
        if (this.f51435f.getVisibility() == 0) {
            this.f51435f.setVisibility(4);
        }
    }

    protected abstract void b(Drawable drawable);

    public final void c(float f4) {
        if (this.f51433d) {
            return;
        }
        d(f4);
    }

    protected abstract void d(float f4);

    public final void e() {
        TextView textView = this.f51434e;
        if (textView != null) {
            textView.setText(this.f51438i);
        }
        f();
    }

    protected abstract void f();

    public final void g() {
        TextView textView = this.f51434e;
        if (textView != null) {
            textView.setText(this.f51439j);
        }
        if (this.f51433d) {
            ((AnimationDrawable) this.f51431b.getDrawable()).start();
        } else {
            h();
        }
        TextView textView2 = this.f51435f;
        if (textView2 != null) {
            textView2.setVisibility(8);
        }
    }

    public final int getContentSize() {
        if (a.f51441a[this.f51437h.ordinal()] != 1) {
            return this.f51430a.getHeight();
        }
        return this.f51430a.getWidth();
    }

    protected abstract int getDefaultDrawableResId();

    protected abstract void h();

    public final void i() {
        TextView textView = this.f51434e;
        if (textView != null) {
            textView.setText(this.f51440k);
        }
        j();
    }

    protected abstract void j();

    public final void k() {
        TextView textView = this.f51434e;
        if (textView != null) {
            textView.setText(this.f51438i);
        }
        this.f51431b.setVisibility(0);
        if (this.f51433d) {
            ((AnimationDrawable) this.f51431b.getDrawable()).stop();
        } else {
            l();
        }
        TextView textView2 = this.f51435f;
        if (textView2 != null) {
            if (TextUtils.isEmpty(textView2.getText())) {
                this.f51435f.setVisibility(8);
            } else {
                this.f51435f.setVisibility(0);
            }
        }
    }

    protected abstract void l();

    public final void m() {
        if (4 == this.f51434e.getVisibility()) {
            this.f51434e.setVisibility(0);
        }
        if (4 == this.f51432c.getVisibility()) {
            this.f51432c.setVisibility(0);
        }
        if (4 == this.f51431b.getVisibility()) {
            this.f51431b.setVisibility(0);
        }
        if (4 == this.f51435f.getVisibility()) {
            this.f51435f.setVisibility(0);
        }
    }

    public final void setHeight(int i2) {
        getLayoutParams().height = i2;
        requestLayout();
    }

    @Override // com.join.mgps.pulltorefresh.library.a
    public void setLastUpdatedLabel(CharSequence charSequence) {
        setSubHeaderText(charSequence);
    }

    @Override // com.join.mgps.pulltorefresh.library.a
    public final void setLoadingDrawable(Drawable drawable) {
        this.f51431b.setImageDrawable(drawable);
        this.f51433d = drawable instanceof AnimationDrawable;
        b(drawable);
    }

    @Override // com.join.mgps.pulltorefresh.library.a
    public void setPullLabel(CharSequence charSequence) {
        this.f51438i = charSequence;
    }

    @Override // com.join.mgps.pulltorefresh.library.a
    public void setRefreshingLabel(CharSequence charSequence) {
        this.f51439j = charSequence;
    }

    @Override // com.join.mgps.pulltorefresh.library.a
    public void setReleaseLabel(CharSequence charSequence) {
        this.f51440k = charSequence;
    }

    @Override // com.join.mgps.pulltorefresh.library.a
    public void setTextTypeface(Typeface typeface) {
        this.f51434e.setTypeface(typeface);
    }

    public final void setWidth(int i2) {
        getLayoutParams().width = i2;
        requestLayout();
    }
}
