package com.google.android.material.navigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.AttrRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.o;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.i;
import com.google.android.material.shape.m;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes2.dex */
public abstract class NavigationBarView extends FrameLayout {

    /* renamed from: h  reason: collision with root package name */
    public static final int f15300h = -1;

    /* renamed from: i  reason: collision with root package name */
    public static final int f15301i = 0;

    /* renamed from: j  reason: collision with root package name */
    public static final int f15302j = 1;

    /* renamed from: k  reason: collision with root package name */
    public static final int f15303k = 2;

    /* renamed from: l  reason: collision with root package name */
    private static final int f15304l = 1;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.material.navigation.a f15305a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final NavigationBarMenuView f15306b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final NavigationBarPresenter f15307c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private ColorStateList f15308d;

    /* renamed from: e  reason: collision with root package name */
    private MenuInflater f15309e;

    /* renamed from: f  reason: collision with root package name */
    private c f15310f;

    /* renamed from: g  reason: collision with root package name */
    private b f15311g;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface LabelVisibility {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        Bundle f15312a;

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

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private void a(@NonNull Parcel parcel, ClassLoader classLoader) {
            this.f15312a = parcel.readBundle(classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeBundle(this.f15312a);
        }

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            a(parcel, classLoader == null ? getClass().getClassLoader() : classLoader);
        }
    }

    /* loaded from: classes2.dex */
    class a implements MenuBuilder.Callback {
        a() {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
            if (NavigationBarView.this.f15311g == null || menuItem.getItemId() != NavigationBarView.this.getSelectedItemId()) {
                return (NavigationBarView.this.f15310f == null || NavigationBarView.this.f15310f.a(menuItem)) ? false : true;
            }
            NavigationBarView.this.f15311g.a(menuItem);
            return true;
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(MenuBuilder menuBuilder) {
        }
    }

    /* loaded from: classes2.dex */
    public interface b {
        void a(@NonNull MenuItem menuItem);
    }

    /* loaded from: classes2.dex */
    public interface c {
        boolean a(@NonNull MenuItem menuItem);
    }

    public NavigationBarView(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i2, @StyleRes int i4) {
        super(com.google.android.material.theme.overlay.a.c(context, attributeSet, i2, i4), attributeSet, i2);
        NavigationBarPresenter navigationBarPresenter = new NavigationBarPresenter();
        this.f15307c = navigationBarPresenter;
        Context context2 = getContext();
        int[] iArr = R.styleable.NavigationBarView;
        int i5 = R.styleable.NavigationBarView_itemTextAppearanceInactive;
        int i6 = R.styleable.NavigationBarView_itemTextAppearanceActive;
        TintTypedArray k4 = o.k(context2, attributeSet, iArr, i2, i4, i5, i6);
        com.google.android.material.navigation.a aVar = new com.google.android.material.navigation.a(context2, getClass(), getMaxItemCount());
        this.f15305a = aVar;
        NavigationBarMenuView d4 = d(context2);
        this.f15306b = d4;
        navigationBarPresenter.b(d4);
        navigationBarPresenter.a(1);
        d4.setPresenter(navigationBarPresenter);
        aVar.addMenuPresenter(navigationBarPresenter);
        navigationBarPresenter.initForMenu(getContext(), aVar);
        int i7 = R.styleable.NavigationBarView_itemIconTint;
        if (k4.hasValue(i7)) {
            d4.setIconTintList(k4.getColorStateList(i7));
        } else {
            d4.setIconTintList(d4.d(16842808));
        }
        setItemIconSize(k4.getDimensionPixelSize(R.styleable.NavigationBarView_itemIconSize, getResources().getDimensionPixelSize(R.dimen.mtrl_navigation_bar_item_default_icon_size)));
        if (k4.hasValue(i5)) {
            setItemTextAppearanceInactive(k4.getResourceId(i5, 0));
        }
        if (k4.hasValue(i6)) {
            setItemTextAppearanceActive(k4.getResourceId(i6, 0));
        }
        int i8 = R.styleable.NavigationBarView_itemTextColor;
        if (k4.hasValue(i8)) {
            setItemTextColor(k4.getColorStateList(i8));
        }
        if (getBackground() == null || (getBackground() instanceof ColorDrawable)) {
            ViewCompat.setBackground(this, c(context2));
        }
        int i9 = R.styleable.NavigationBarView_itemPaddingTop;
        if (k4.hasValue(i9)) {
            setItemPaddingTop(k4.getDimensionPixelSize(i9, 0));
        }
        int i10 = R.styleable.NavigationBarView_itemPaddingBottom;
        if (k4.hasValue(i10)) {
            setItemPaddingBottom(k4.getDimensionPixelSize(i10, 0));
        }
        int i11 = R.styleable.NavigationBarView_elevation;
        if (k4.hasValue(i11)) {
            setElevation(k4.getDimensionPixelSize(i11, 0));
        }
        DrawableCompat.setTintList(getBackground().mutate(), com.google.android.material.resources.c.b(context2, k4, R.styleable.NavigationBarView_backgroundTint));
        setLabelVisibilityMode(k4.getInteger(R.styleable.NavigationBarView_labelVisibilityMode, -1));
        int resourceId = k4.getResourceId(R.styleable.NavigationBarView_itemBackground, 0);
        if (resourceId != 0) {
            d4.setItemBackgroundRes(resourceId);
        } else {
            setItemRippleColor(com.google.android.material.resources.c.b(context2, k4, R.styleable.NavigationBarView_itemRippleColor));
        }
        int resourceId2 = k4.getResourceId(R.styleable.NavigationBarView_itemActiveIndicatorStyle, 0);
        if (resourceId2 != 0) {
            setItemActiveIndicatorEnabled(true);
            TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(resourceId2, R.styleable.NavigationBarActiveIndicator);
            setItemActiveIndicatorWidth(obtainStyledAttributes.getDimensionPixelSize(R.styleable.NavigationBarActiveIndicator_android_width, 0));
            setItemActiveIndicatorHeight(obtainStyledAttributes.getDimensionPixelSize(R.styleable.NavigationBarActiveIndicator_android_height, 0));
            setItemActiveIndicatorMarginHorizontal(obtainStyledAttributes.getDimensionPixelOffset(R.styleable.NavigationBarActiveIndicator_marginHorizontal, 0));
            setItemActiveIndicatorColor(com.google.android.material.resources.c.a(context2, obtainStyledAttributes, R.styleable.NavigationBarActiveIndicator_android_color));
            setItemActiveIndicatorShapeAppearance(m.b(context2, obtainStyledAttributes.getResourceId(R.styleable.NavigationBarActiveIndicator_shapeAppearance, 0), 0).m());
            obtainStyledAttributes.recycle();
        }
        int i12 = R.styleable.NavigationBarView_menu;
        if (k4.hasValue(i12)) {
            g(k4.getResourceId(i12, 0));
        }
        k4.recycle();
        addView(d4);
        aVar.setCallback(new a());
    }

    @NonNull
    private MaterialShapeDrawable c(Context context) {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        Drawable background = getBackground();
        if (background instanceof ColorDrawable) {
            materialShapeDrawable.o0(ColorStateList.valueOf(((ColorDrawable) background).getColor()));
        }
        materialShapeDrawable.Z(context);
        return materialShapeDrawable;
    }

    private MenuInflater getMenuInflater() {
        if (this.f15309e == null) {
            this.f15309e = new SupportMenuInflater(getContext());
        }
        return this.f15309e;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    protected abstract NavigationBarMenuView d(@NonNull Context context);

    @Nullable
    public BadgeDrawable e(int i2) {
        return this.f15306b.h(i2);
    }

    @NonNull
    public BadgeDrawable f(int i2) {
        return this.f15306b.i(i2);
    }

    public void g(int i2) {
        this.f15307c.c(true);
        getMenuInflater().inflate(i2, this.f15305a);
        this.f15307c.c(false);
        this.f15307c.updateMenuView(true);
    }

    @Nullable
    public ColorStateList getItemActiveIndicatorColor() {
        return this.f15306b.getItemActiveIndicatorColor();
    }

    @Px
    public int getItemActiveIndicatorHeight() {
        return this.f15306b.getItemActiveIndicatorHeight();
    }

    @Px
    public int getItemActiveIndicatorMarginHorizontal() {
        return this.f15306b.getItemActiveIndicatorMarginHorizontal();
    }

    @Nullable
    public m getItemActiveIndicatorShapeAppearance() {
        return this.f15306b.getItemActiveIndicatorShapeAppearance();
    }

    @Px
    public int getItemActiveIndicatorWidth() {
        return this.f15306b.getItemActiveIndicatorWidth();
    }

    @Nullable
    public Drawable getItemBackground() {
        return this.f15306b.getItemBackground();
    }

    @DrawableRes
    @Deprecated
    public int getItemBackgroundResource() {
        return this.f15306b.getItemBackgroundRes();
    }

    @Dimension
    public int getItemIconSize() {
        return this.f15306b.getItemIconSize();
    }

    @Nullable
    public ColorStateList getItemIconTintList() {
        return this.f15306b.getIconTintList();
    }

    @Px
    public int getItemPaddingBottom() {
        return this.f15306b.getItemPaddingBottom();
    }

    @Px
    public int getItemPaddingTop() {
        return this.f15306b.getItemPaddingTop();
    }

    @Nullable
    public ColorStateList getItemRippleColor() {
        return this.f15308d;
    }

    @StyleRes
    public int getItemTextAppearanceActive() {
        return this.f15306b.getItemTextAppearanceActive();
    }

    @StyleRes
    public int getItemTextAppearanceInactive() {
        return this.f15306b.getItemTextAppearanceInactive();
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.f15306b.getItemTextColor();
    }

    public int getLabelVisibilityMode() {
        return this.f15306b.getLabelVisibilityMode();
    }

    public abstract int getMaxItemCount();

    @NonNull
    public Menu getMenu() {
        return this.f15305a;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public MenuView getMenuView() {
        return this.f15306b;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public NavigationBarPresenter getPresenter() {
        return this.f15307c;
    }

    @IdRes
    public int getSelectedItemId() {
        return this.f15306b.getSelectedItemId();
    }

    public boolean h() {
        return this.f15306b.getItemActiveIndicatorEnabled();
    }

    public void i(int i2) {
        this.f15306b.m(i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        i.e(this);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f15305a.restorePresenterStates(savedState.f15312a);
    }

    @Override // android.view.View
    @NonNull
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.f15312a = bundle;
        this.f15305a.savePresenterStates(bundle);
        return savedState;
    }

    @Override // android.view.View
    public void setElevation(float f4) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.setElevation(f4);
        }
        i.d(this, f4);
    }

    public void setItemActiveIndicatorColor(@Nullable ColorStateList colorStateList) {
        this.f15306b.setItemActiveIndicatorColor(colorStateList);
    }

    public void setItemActiveIndicatorEnabled(boolean z3) {
        this.f15306b.setItemActiveIndicatorEnabled(z3);
    }

    public void setItemActiveIndicatorHeight(@Px int i2) {
        this.f15306b.setItemActiveIndicatorHeight(i2);
    }

    public void setItemActiveIndicatorMarginHorizontal(@Px int i2) {
        this.f15306b.setItemActiveIndicatorMarginHorizontal(i2);
    }

    public void setItemActiveIndicatorShapeAppearance(@Nullable m mVar) {
        this.f15306b.setItemActiveIndicatorShapeAppearance(mVar);
    }

    public void setItemActiveIndicatorWidth(@Px int i2) {
        this.f15306b.setItemActiveIndicatorWidth(i2);
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.f15306b.setItemBackground(drawable);
        this.f15308d = null;
    }

    public void setItemBackgroundResource(@DrawableRes int i2) {
        this.f15306b.setItemBackgroundRes(i2);
        this.f15308d = null;
    }

    public void setItemIconSize(@Dimension int i2) {
        this.f15306b.setItemIconSize(i2);
    }

    public void setItemIconSizeRes(@DimenRes int i2) {
        setItemIconSize(getResources().getDimensionPixelSize(i2));
    }

    public void setItemIconTintList(@Nullable ColorStateList colorStateList) {
        this.f15306b.setIconTintList(colorStateList);
    }

    public void setItemOnTouchListener(int i2, @Nullable View.OnTouchListener onTouchListener) {
        this.f15306b.setItemOnTouchListener(i2, onTouchListener);
    }

    public void setItemPaddingBottom(@Px int i2) {
        this.f15306b.setItemPaddingBottom(i2);
    }

    public void setItemPaddingTop(@Px int i2) {
        this.f15306b.setItemPaddingTop(i2);
    }

    public void setItemRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.f15308d == colorStateList) {
            if (colorStateList != null || this.f15306b.getItemBackground() == null) {
                return;
            }
            this.f15306b.setItemBackground(null);
            return;
        }
        this.f15308d = colorStateList;
        if (colorStateList == null) {
            this.f15306b.setItemBackground(null);
            return;
        }
        ColorStateList a4 = com.google.android.material.ripple.b.a(colorStateList);
        if (Build.VERSION.SDK_INT >= 21) {
            this.f15306b.setItemBackground(new RippleDrawable(a4, null, null));
            return;
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(1.0E-5f);
        Drawable wrap = DrawableCompat.wrap(gradientDrawable);
        DrawableCompat.setTintList(wrap, a4);
        this.f15306b.setItemBackground(wrap);
    }

    public void setItemTextAppearanceActive(@StyleRes int i2) {
        this.f15306b.setItemTextAppearanceActive(i2);
    }

    public void setItemTextAppearanceInactive(@StyleRes int i2) {
        this.f15306b.setItemTextAppearanceInactive(i2);
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.f15306b.setItemTextColor(colorStateList);
    }

    public void setLabelVisibilityMode(int i2) {
        if (this.f15306b.getLabelVisibilityMode() != i2) {
            this.f15306b.setLabelVisibilityMode(i2);
            this.f15307c.updateMenuView(false);
        }
    }

    public void setOnItemReselectedListener(@Nullable b bVar) {
        this.f15311g = bVar;
    }

    public void setOnItemSelectedListener(@Nullable c cVar) {
        this.f15310f = cVar;
    }

    public void setSelectedItemId(@IdRes int i2) {
        MenuItem findItem = this.f15305a.findItem(i2);
        if (findItem == null || this.f15305a.performItemAction(findItem, this.f15307c, 0)) {
            return;
        }
        findItem.setChecked(true);
    }
}
