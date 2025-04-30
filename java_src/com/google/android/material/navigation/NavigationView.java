package com.google.android.material.navigation;

import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.content.ContextCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import androidx.drawerlayout.widget.DrawerLayout;
import com.google.android.material.R;
import com.google.android.material.internal.ScrimInsetsFrameLayout;
import com.google.android.material.internal.h;
import com.google.android.material.internal.i;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.m;
import com.google.android.material.shape.n;
/* loaded from: classes2.dex */
public class NavigationView extends ScrimInsetsFrameLayout {

    /* renamed from: s  reason: collision with root package name */
    private static final int[] f15314s = {16842912};

    /* renamed from: t  reason: collision with root package name */
    private static final int[] f15315t = {-16842910};

    /* renamed from: u  reason: collision with root package name */
    private static final int f15316u = R.style.Widget_Design_NavigationView;

    /* renamed from: v  reason: collision with root package name */
    private static final int f15317v = 1;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final h f15318f;

    /* renamed from: g  reason: collision with root package name */
    private final i f15319g;

    /* renamed from: h  reason: collision with root package name */
    c f15320h;

    /* renamed from: i  reason: collision with root package name */
    private final int f15321i;

    /* renamed from: j  reason: collision with root package name */
    private final int[] f15322j;

    /* renamed from: k  reason: collision with root package name */
    private MenuInflater f15323k;

    /* renamed from: l  reason: collision with root package name */
    private ViewTreeObserver.OnGlobalLayoutListener f15324l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f15325m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f15326n;

    /* renamed from: o  reason: collision with root package name */
    private int f15327o;
    @Px

    /* renamed from: p  reason: collision with root package name */
    private int f15328p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private Path f15329q;

    /* renamed from: r  reason: collision with root package name */
    private final RectF f15330r;

    /* loaded from: classes2.dex */
    class a implements MenuBuilder.Callback {
        a() {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            c cVar = NavigationView.this.f15320h;
            return cVar != null && cVar.a(menuItem);
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(MenuBuilder menuBuilder) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            NavigationView navigationView = NavigationView.this;
            navigationView.getLocationOnScreen(navigationView.f15322j);
            boolean z3 = true;
            boolean z4 = NavigationView.this.f15322j[1] == 0;
            NavigationView.this.f15319g.u(z4);
            NavigationView navigationView2 = NavigationView.this;
            navigationView2.setDrawTopInsetForeground(z4 && navigationView2.m());
            Activity activity = com.google.android.material.internal.c.getActivity(NavigationView.this.getContext());
            if (activity == null || Build.VERSION.SDK_INT < 21) {
                return;
            }
            boolean z5 = activity.findViewById(16908290).getHeight() == NavigationView.this.getHeight();
            boolean z6 = Color.alpha(activity.getWindow().getNavigationBarColor()) != 0;
            NavigationView navigationView3 = NavigationView.this;
            navigationView3.setDrawBottomInsetForeground((z5 && z6 && navigationView3.l()) ? false : false);
        }
    }

    /* loaded from: classes2.dex */
    public interface c {
        boolean a(@NonNull MenuItem menuItem);
    }

    public NavigationView(@NonNull Context context) {
        this(context, null);
    }

    @Nullable
    private ColorStateList e(int i2) {
        TypedValue typedValue = new TypedValue();
        if (getContext().getTheme().resolveAttribute(i2, typedValue, true)) {
            ColorStateList colorStateList = AppCompatResources.getColorStateList(getContext(), typedValue.resourceId);
            if (getContext().getTheme().resolveAttribute(androidx.appcompat.R.attr.colorPrimary, typedValue, true)) {
                int i4 = typedValue.data;
                int defaultColor = colorStateList.getDefaultColor();
                int[] iArr = f15315t;
                return new ColorStateList(new int[][]{iArr, f15314s, FrameLayout.EMPTY_STATE_SET}, new int[]{colorStateList.getColorForState(iArr, defaultColor), i4, defaultColor});
            }
            return null;
        }
        return null;
    }

    @NonNull
    private Drawable f(@NonNull TintTypedArray tintTypedArray) {
        return g(tintTypedArray, com.google.android.material.resources.c.b(getContext(), tintTypedArray, R.styleable.NavigationView_itemShapeFillColor));
    }

    @NonNull
    private Drawable g(@NonNull TintTypedArray tintTypedArray, @Nullable ColorStateList colorStateList) {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(m.b(getContext(), tintTypedArray.getResourceId(R.styleable.NavigationView_itemShapeAppearance, 0), tintTypedArray.getResourceId(R.styleable.NavigationView_itemShapeAppearanceOverlay, 0)).m());
        materialShapeDrawable.o0(colorStateList);
        return new InsetDrawable((Drawable) materialShapeDrawable, tintTypedArray.getDimensionPixelSize(R.styleable.NavigationView_itemShapeInsetStart, 0), tintTypedArray.getDimensionPixelSize(R.styleable.NavigationView_itemShapeInsetTop, 0), tintTypedArray.getDimensionPixelSize(R.styleable.NavigationView_itemShapeInsetEnd, 0), tintTypedArray.getDimensionPixelSize(R.styleable.NavigationView_itemShapeInsetBottom, 0));
    }

    private MenuInflater getMenuInflater() {
        if (this.f15323k == null) {
            this.f15323k = new SupportMenuInflater(getContext());
        }
        return this.f15323k;
    }

    private boolean i(@NonNull TintTypedArray tintTypedArray) {
        return tintTypedArray.hasValue(R.styleable.NavigationView_itemShapeAppearance) || tintTypedArray.hasValue(R.styleable.NavigationView_itemShapeAppearanceOverlay);
    }

    private void n(@Px int i2, @Px int i4) {
        if ((getParent() instanceof DrawerLayout) && this.f15328p > 0 && (getBackground() instanceof MaterialShapeDrawable)) {
            MaterialShapeDrawable materialShapeDrawable = (MaterialShapeDrawable) getBackground();
            m.b v3 = materialShapeDrawable.getShapeAppearanceModel().v();
            if (GravityCompat.getAbsoluteGravity(this.f15327o, ViewCompat.getLayoutDirection(this)) == 3) {
                v3.P(this.f15328p);
                v3.C(this.f15328p);
            } else {
                v3.K(this.f15328p);
                v3.x(this.f15328p);
            }
            materialShapeDrawable.setShapeAppearanceModel(v3.m());
            if (this.f15329q == null) {
                this.f15329q = new Path();
            }
            this.f15329q.reset();
            this.f15330r.set(0.0f, 0.0f, i2, i4);
            n.k().d(materialShapeDrawable.getShapeAppearanceModel(), materialShapeDrawable.z(), this.f15330r, this.f15329q);
            invalidate();
            return;
        }
        this.f15329q = null;
        this.f15330r.setEmpty();
    }

    private void p() {
        this.f15324l = new b();
        getViewTreeObserver().addOnGlobalLayoutListener(this.f15324l);
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    protected void a(@NonNull WindowInsetsCompat windowInsetsCompat) {
        this.f15319g.c(windowInsetsCompat);
    }

    public void d(@NonNull View view) {
        this.f15319g.b(view);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(@NonNull Canvas canvas) {
        if (this.f15329q == null) {
            super.dispatchDraw(canvas);
            return;
        }
        int save = canvas.save();
        canvas.clipPath(this.f15329q);
        super.dispatchDraw(canvas);
        canvas.restoreToCount(save);
    }

    @Nullable
    public MenuItem getCheckedItem() {
        return this.f15319g.d();
    }

    @Px
    public int getDividerInsetEnd() {
        return this.f15319g.e();
    }

    @Px
    public int getDividerInsetStart() {
        return this.f15319g.f();
    }

    public int getHeaderCount() {
        return this.f15319g.g();
    }

    @Nullable
    public Drawable getItemBackground() {
        return this.f15319g.i();
    }

    @Dimension
    public int getItemHorizontalPadding() {
        return this.f15319g.j();
    }

    @Dimension
    public int getItemIconPadding() {
        return this.f15319g.k();
    }

    @Nullable
    public ColorStateList getItemIconTintList() {
        return this.f15319g.n();
    }

    public int getItemMaxLines() {
        return this.f15319g.l();
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.f15319g.m();
    }

    @Px
    public int getItemVerticalPadding() {
        return this.f15319g.o();
    }

    @NonNull
    public Menu getMenu() {
        return this.f15318f;
    }

    @Px
    public int getSubheaderInsetEnd() {
        return this.f15319g.p();
    }

    @Px
    public int getSubheaderInsetStart() {
        return this.f15319g.q();
    }

    public View h(int i2) {
        return this.f15319g.h(i2);
    }

    public View j(@LayoutRes int i2) {
        return this.f15319g.r(i2);
    }

    public void k(int i2) {
        this.f15319g.O(true);
        getMenuInflater().inflate(i2, this.f15318f);
        this.f15319g.O(false);
        this.f15319g.updateMenuView(false);
    }

    public boolean l() {
        return this.f15326n;
    }

    public boolean m() {
        return this.f15325m;
    }

    public void o(@NonNull View view) {
        this.f15319g.t(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.google.android.material.shape.i.e(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (Build.VERSION.SDK_INT < 16) {
            getViewTreeObserver().removeGlobalOnLayoutListener(this.f15324l);
        } else {
            getViewTreeObserver().removeOnGlobalLayoutListener(this.f15324l);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i2, int i4) {
        int mode = View.MeasureSpec.getMode(i2);
        if (mode == Integer.MIN_VALUE) {
            i2 = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i2), this.f15321i), 1073741824);
        } else if (mode == 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(this.f15321i, 1073741824);
        }
        super.onMeasure(i2, i4);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f15318f.restorePresenterStates(savedState.f15331a);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.f15331a = bundle;
        this.f15318f.savePresenterStates(bundle);
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i4, int i5, int i6) {
        super.onSizeChanged(i2, i4, i5, i6);
        n(i2, i4);
    }

    public void setBottomInsetScrimEnabled(boolean z3) {
        this.f15326n = z3;
    }

    public void setCheckedItem(@IdRes int i2) {
        MenuItem findItem = this.f15318f.findItem(i2);
        if (findItem != null) {
            this.f15319g.v((MenuItemImpl) findItem);
        }
    }

    public void setDividerInsetEnd(@Px int i2) {
        this.f15319g.w(i2);
    }

    public void setDividerInsetStart(@Px int i2) {
        this.f15319g.x(i2);
    }

    @Override // android.view.View
    public void setElevation(float f4) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.setElevation(f4);
        }
        com.google.android.material.shape.i.d(this, f4);
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.f15319g.z(drawable);
    }

    public void setItemBackgroundResource(@DrawableRes int i2) {
        setItemBackground(ContextCompat.getDrawable(getContext(), i2));
    }

    public void setItemHorizontalPadding(@Dimension int i2) {
        this.f15319g.B(i2);
    }

    public void setItemHorizontalPaddingResource(@DimenRes int i2) {
        this.f15319g.B(getResources().getDimensionPixelSize(i2));
    }

    public void setItemIconPadding(@Dimension int i2) {
        this.f15319g.C(i2);
    }

    public void setItemIconPaddingResource(int i2) {
        this.f15319g.C(getResources().getDimensionPixelSize(i2));
    }

    public void setItemIconSize(@Dimension int i2) {
        this.f15319g.D(i2);
    }

    public void setItemIconTintList(@Nullable ColorStateList colorStateList) {
        this.f15319g.E(colorStateList);
    }

    public void setItemMaxLines(int i2) {
        this.f15319g.F(i2);
    }

    public void setItemTextAppearance(@StyleRes int i2) {
        this.f15319g.G(i2);
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.f15319g.H(colorStateList);
    }

    public void setItemVerticalPadding(@Px int i2) {
        this.f15319g.I(i2);
    }

    public void setItemVerticalPaddingResource(@DimenRes int i2) {
        this.f15319g.I(getResources().getDimensionPixelSize(i2));
    }

    public void setNavigationItemSelectedListener(@Nullable c cVar) {
        this.f15320h = cVar;
    }

    @Override // android.view.View
    public void setOverScrollMode(int i2) {
        super.setOverScrollMode(i2);
        i iVar = this.f15319g;
        if (iVar != null) {
            iVar.J(i2);
        }
    }

    public void setSubheaderInsetEnd(@Px int i2) {
        this.f15319g.M(i2);
    }

    public void setSubheaderInsetStart(@Px int i2) {
        this.f15319g.M(i2);
    }

    public void setTopInsetScrimEnabled(boolean z3) {
        this.f15325m = z3;
    }

    /* loaded from: classes2.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public Bundle f15331a;

        /* loaded from: classes2.dex */
        class a implements Parcelable.ClassLoaderCreator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            @Nullable
            /* renamed from: a */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            @NonNull
            /* renamed from: b */
            public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* renamed from: c */
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        }

        public SavedState(@NonNull Parcel parcel, @Nullable ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f15331a = parcel.readBundle(classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeBundle(this.f15331a);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public NavigationView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.navigationViewStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public NavigationView(@androidx.annotation.NonNull android.content.Context r17, @androidx.annotation.Nullable android.util.AttributeSet r18, int r19) {
        /*
            Method dump skipped, instructions count: 547
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.navigation.NavigationView.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    public void setCheckedItem(@NonNull MenuItem menuItem) {
        MenuItem findItem = this.f15318f.findItem(menuItem.getItemId());
        if (findItem != null) {
            this.f15319g.v((MenuItemImpl) findItem);
            return;
        }
        throw new IllegalArgumentException("Called setCheckedItem(MenuItem) with an item that is not in the current menu.");
    }
}
