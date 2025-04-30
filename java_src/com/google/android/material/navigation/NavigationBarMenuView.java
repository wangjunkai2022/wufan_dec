package com.google.android.material.navigation;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.core.util.Pools;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.transition.AutoTransition;
import androidx.transition.TransitionManager;
import androidx.transition.TransitionSet;
import com.google.android.material.R;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.m;
import java.util.HashSet;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public abstract class NavigationBarMenuView extends ViewGroup implements MenuView {
    private static final int C = 5;
    private static final int D = -1;
    private static final int[] E = {16842912};
    private static final int[] F = {-16842910};
    private NavigationBarPresenter A;
    private MenuBuilder B;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final TransitionSet f15267a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final View.OnClickListener f15268b;

    /* renamed from: c  reason: collision with root package name */
    private final Pools.Pool<NavigationBarItemView> f15269c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final SparseArray<View.OnTouchListener> f15270d;

    /* renamed from: e  reason: collision with root package name */
    private int f15271e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private NavigationBarItemView[] f15272f;

    /* renamed from: g  reason: collision with root package name */
    private int f15273g;

    /* renamed from: h  reason: collision with root package name */
    private int f15274h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private ColorStateList f15275i;
    @Dimension

    /* renamed from: j  reason: collision with root package name */
    private int f15276j;

    /* renamed from: k  reason: collision with root package name */
    private ColorStateList f15277k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final ColorStateList f15278l;
    @StyleRes

    /* renamed from: m  reason: collision with root package name */
    private int f15279m;
    @StyleRes

    /* renamed from: n  reason: collision with root package name */
    private int f15280n;

    /* renamed from: o  reason: collision with root package name */
    private Drawable f15281o;

    /* renamed from: p  reason: collision with root package name */
    private int f15282p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    private final SparseArray<BadgeDrawable> f15283q;

    /* renamed from: r  reason: collision with root package name */
    private int f15284r;

    /* renamed from: s  reason: collision with root package name */
    private int f15285s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f15286t;

    /* renamed from: u  reason: collision with root package name */
    private int f15287u;

    /* renamed from: v  reason: collision with root package name */
    private int f15288v;

    /* renamed from: w  reason: collision with root package name */
    private int f15289w;

    /* renamed from: x  reason: collision with root package name */
    private m f15290x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f15291y;

    /* renamed from: z  reason: collision with root package name */
    private ColorStateList f15292z;

    /* loaded from: classes2.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MenuItemImpl itemData = ((NavigationBarItemView) view).getItemData();
            if (NavigationBarMenuView.this.B.performItemAction(itemData, NavigationBarMenuView.this.A, 0)) {
                return;
            }
            itemData.setChecked(true);
        }
    }

    public NavigationBarMenuView(@NonNull Context context) {
        super(context);
        this.f15269c = new Pools.SynchronizedPool(5);
        this.f15270d = new SparseArray<>(5);
        this.f15273g = 0;
        this.f15274h = 0;
        this.f15283q = new SparseArray<>(5);
        this.f15284r = -1;
        this.f15285s = -1;
        this.f15291y = false;
        this.f15278l = d(16842808);
        if (isInEditMode()) {
            this.f15267a = null;
        } else {
            AutoTransition autoTransition = new AutoTransition();
            this.f15267a = autoTransition;
            autoTransition.setOrdering(0);
            autoTransition.setDuration(d1.a.d(getContext(), R.attr.motionDurationLong1, getResources().getInteger(R.integer.material_motion_duration_long_1)));
            autoTransition.setInterpolator(d1.a.e(getContext(), R.attr.motionEasingStandard, com.google.android.material.animation.a.f14005b));
            autoTransition.addTransition(new com.google.android.material.internal.m());
        }
        this.f15268b = new a();
        ViewCompat.setImportantForAccessibility(this, 1);
    }

    @Nullable
    private Drawable e() {
        if (this.f15290x == null || this.f15292z == null) {
            return null;
        }
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this.f15290x);
        materialShapeDrawable.o0(this.f15292z);
        return materialShapeDrawable;
    }

    private NavigationBarItemView getNewItem() {
        NavigationBarItemView acquire = this.f15269c.acquire();
        return acquire == null ? f(getContext()) : acquire;
    }

    private boolean l(int i2) {
        return i2 != -1;
    }

    private void n() {
        HashSet hashSet = new HashSet();
        for (int i2 = 0; i2 < this.B.size(); i2++) {
            hashSet.add(Integer.valueOf(this.B.getItem(i2).getItemId()));
        }
        for (int i4 = 0; i4 < this.f15283q.size(); i4++) {
            int keyAt = this.f15283q.keyAt(i4);
            if (!hashSet.contains(Integer.valueOf(keyAt))) {
                this.f15283q.delete(keyAt);
            }
        }
    }

    private void r(int i2) {
        if (l(i2)) {
            return;
        }
        throw new IllegalArgumentException(i2 + " is not a valid view id");
    }

    private void setBadgeIfNeeded(@NonNull NavigationBarItemView navigationBarItemView) {
        BadgeDrawable badgeDrawable;
        int id = navigationBarItemView.getId();
        if (l(id) && (badgeDrawable = this.f15283q.get(id)) != null) {
            navigationBarItemView.setBadge(badgeDrawable);
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void c() {
        removeAllViews();
        NavigationBarItemView[] navigationBarItemViewArr = this.f15272f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                if (navigationBarItemView != null) {
                    this.f15269c.release(navigationBarItemView);
                    navigationBarItemView.f();
                }
            }
        }
        if (this.B.size() == 0) {
            this.f15273g = 0;
            this.f15274h = 0;
            this.f15272f = null;
            return;
        }
        n();
        this.f15272f = new NavigationBarItemView[this.B.size()];
        boolean k4 = k(this.f15271e, this.B.getVisibleItems().size());
        for (int i2 = 0; i2 < this.B.size(); i2++) {
            this.A.c(true);
            this.B.getItem(i2).setCheckable(true);
            this.A.c(false);
            NavigationBarItemView newItem = getNewItem();
            this.f15272f[i2] = newItem;
            newItem.setIconTintList(this.f15275i);
            newItem.setIconSize(this.f15276j);
            newItem.setTextColor(this.f15278l);
            newItem.setTextAppearanceInactive(this.f15279m);
            newItem.setTextAppearanceActive(this.f15280n);
            newItem.setTextColor(this.f15277k);
            int i4 = this.f15284r;
            if (i4 != -1) {
                newItem.setItemPaddingTop(i4);
            }
            int i5 = this.f15285s;
            if (i5 != -1) {
                newItem.setItemPaddingBottom(i5);
            }
            newItem.setActiveIndicatorWidth(this.f15287u);
            newItem.setActiveIndicatorHeight(this.f15288v);
            newItem.setActiveIndicatorMarginHorizontal(this.f15289w);
            newItem.setActiveIndicatorDrawable(e());
            newItem.setActiveIndicatorResizeable(this.f15291y);
            newItem.setActiveIndicatorEnabled(this.f15286t);
            Drawable drawable = this.f15281o;
            if (drawable != null) {
                newItem.setItemBackground(drawable);
            } else {
                newItem.setItemBackground(this.f15282p);
            }
            newItem.setShifting(k4);
            newItem.setLabelVisibilityMode(this.f15271e);
            MenuItemImpl menuItemImpl = (MenuItemImpl) this.B.getItem(i2);
            newItem.initialize(menuItemImpl, 0);
            newItem.setItemPosition(i2);
            int itemId = menuItemImpl.getItemId();
            newItem.setOnTouchListener(this.f15270d.get(itemId));
            newItem.setOnClickListener(this.f15268b);
            int i6 = this.f15273g;
            if (i6 != 0 && itemId == i6) {
                this.f15274h = i2;
            }
            setBadgeIfNeeded(newItem);
            addView(newItem);
        }
        int min = Math.min(this.B.size() - 1, this.f15274h);
        this.f15274h = min;
        this.B.getItem(min).setChecked(true);
    }

    @Nullable
    public ColorStateList d(int i2) {
        TypedValue typedValue = new TypedValue();
        if (getContext().getTheme().resolveAttribute(i2, typedValue, true)) {
            ColorStateList colorStateList = AppCompatResources.getColorStateList(getContext(), typedValue.resourceId);
            if (getContext().getTheme().resolveAttribute(androidx.appcompat.R.attr.colorPrimary, typedValue, true)) {
                int i4 = typedValue.data;
                int defaultColor = colorStateList.getDefaultColor();
                int[] iArr = F;
                return new ColorStateList(new int[][]{iArr, E, ViewGroup.EMPTY_STATE_SET}, new int[]{colorStateList.getColorForState(iArr, defaultColor), i4, defaultColor});
            }
            return null;
        }
        return null;
    }

    @NonNull
    protected abstract NavigationBarItemView f(@NonNull Context context);

    @Nullable
    public NavigationBarItemView g(int i2) {
        r(i2);
        NavigationBarItemView[] navigationBarItemViewArr = this.f15272f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                if (navigationBarItemView.getId() == i2) {
                    return navigationBarItemView;
                }
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SparseArray<BadgeDrawable> getBadgeDrawables() {
        return this.f15283q;
    }

    @Nullable
    public ColorStateList getIconTintList() {
        return this.f15275i;
    }

    @Nullable
    public ColorStateList getItemActiveIndicatorColor() {
        return this.f15292z;
    }

    public boolean getItemActiveIndicatorEnabled() {
        return this.f15286t;
    }

    @Px
    public int getItemActiveIndicatorHeight() {
        return this.f15288v;
    }

    @Px
    public int getItemActiveIndicatorMarginHorizontal() {
        return this.f15289w;
    }

    @Nullable
    public m getItemActiveIndicatorShapeAppearance() {
        return this.f15290x;
    }

    @Px
    public int getItemActiveIndicatorWidth() {
        return this.f15287u;
    }

    @Nullable
    public Drawable getItemBackground() {
        NavigationBarItemView[] navigationBarItemViewArr = this.f15272f;
        if (navigationBarItemViewArr != null && navigationBarItemViewArr.length > 0) {
            return navigationBarItemViewArr[0].getBackground();
        }
        return this.f15281o;
    }

    @Deprecated
    public int getItemBackgroundRes() {
        return this.f15282p;
    }

    @Dimension
    public int getItemIconSize() {
        return this.f15276j;
    }

    @Px
    public int getItemPaddingBottom() {
        return this.f15285s;
    }

    @Px
    public int getItemPaddingTop() {
        return this.f15284r;
    }

    @StyleRes
    public int getItemTextAppearanceActive() {
        return this.f15280n;
    }

    @StyleRes
    public int getItemTextAppearanceInactive() {
        return this.f15279m;
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.f15277k;
    }

    public int getLabelVisibilityMode() {
        return this.f15271e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public MenuBuilder getMenu() {
        return this.B;
    }

    public int getSelectedItemId() {
        return this.f15273g;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getSelectedItemPosition() {
        return this.f15274h;
    }

    @Override // androidx.appcompat.view.menu.MenuView
    public int getWindowAnimations() {
        return 0;
    }

    @Nullable
    public BadgeDrawable h(int i2) {
        return this.f15283q.get(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BadgeDrawable i(int i2) {
        r(i2);
        BadgeDrawable badgeDrawable = this.f15283q.get(i2);
        if (badgeDrawable == null) {
            badgeDrawable = BadgeDrawable.d(getContext());
            this.f15283q.put(i2, badgeDrawable);
        }
        NavigationBarItemView g4 = g(i2);
        if (g4 != null) {
            g4.setBadge(badgeDrawable);
        }
        return badgeDrawable;
    }

    @Override // androidx.appcompat.view.menu.MenuView
    public void initialize(@NonNull MenuBuilder menuBuilder) {
        this.B = menuBuilder;
    }

    protected boolean j() {
        return this.f15291y;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean k(int i2, int i4) {
        if (i2 == -1) {
            if (i4 > 3) {
                return true;
            }
        } else if (i2 == 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(int i2) {
        r(i2);
        BadgeDrawable badgeDrawable = this.f15283q.get(i2);
        NavigationBarItemView g4 = g(i2);
        if (g4 != null) {
            g4.l();
        }
        if (badgeDrawable != null) {
            this.f15283q.remove(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o(SparseArray<BadgeDrawable> sparseArray) {
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            int keyAt = sparseArray.keyAt(i2);
            if (this.f15283q.indexOfKey(keyAt) < 0) {
                this.f15283q.append(keyAt, sparseArray.get(keyAt));
            }
        }
        NavigationBarItemView[] navigationBarItemViewArr = this.f15272f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setBadge(this.f15283q.get(navigationBarItemView.getId()));
            }
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, this.B.getVisibleItems().size(), false, 1));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p(int i2) {
        int size = this.B.size();
        for (int i4 = 0; i4 < size; i4++) {
            MenuItem item = this.B.getItem(i4);
            if (i2 == item.getItemId()) {
                this.f15273g = i2;
                this.f15274h = i4;
                item.setChecked(true);
                return;
            }
        }
    }

    public void q() {
        TransitionSet transitionSet;
        MenuBuilder menuBuilder = this.B;
        if (menuBuilder == null || this.f15272f == null) {
            return;
        }
        int size = menuBuilder.size();
        if (size != this.f15272f.length) {
            c();
            return;
        }
        int i2 = this.f15273g;
        for (int i4 = 0; i4 < size; i4++) {
            MenuItem item = this.B.getItem(i4);
            if (item.isChecked()) {
                this.f15273g = item.getItemId();
                this.f15274h = i4;
            }
        }
        if (i2 != this.f15273g && (transitionSet = this.f15267a) != null) {
            TransitionManager.beginDelayedTransition(this, transitionSet);
        }
        boolean k4 = k(this.f15271e, this.B.getVisibleItems().size());
        for (int i5 = 0; i5 < size; i5++) {
            this.A.c(true);
            this.f15272f[i5].setLabelVisibilityMode(this.f15271e);
            this.f15272f[i5].setShifting(k4);
            this.f15272f[i5].initialize((MenuItemImpl) this.B.getItem(i5), 0);
            this.A.c(false);
        }
    }

    public void setIconTintList(@Nullable ColorStateList colorStateList) {
        this.f15275i = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.f15272f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setIconTintList(colorStateList);
            }
        }
    }

    public void setItemActiveIndicatorColor(@Nullable ColorStateList colorStateList) {
        this.f15292z = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.f15272f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorDrawable(e());
            }
        }
    }

    public void setItemActiveIndicatorEnabled(boolean z3) {
        this.f15286t = z3;
        NavigationBarItemView[] navigationBarItemViewArr = this.f15272f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorEnabled(z3);
            }
        }
    }

    public void setItemActiveIndicatorHeight(@Px int i2) {
        this.f15288v = i2;
        NavigationBarItemView[] navigationBarItemViewArr = this.f15272f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorHeight(i2);
            }
        }
    }

    public void setItemActiveIndicatorMarginHorizontal(@Px int i2) {
        this.f15289w = i2;
        NavigationBarItemView[] navigationBarItemViewArr = this.f15272f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorMarginHorizontal(i2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setItemActiveIndicatorResizeable(boolean z3) {
        this.f15291y = z3;
        NavigationBarItemView[] navigationBarItemViewArr = this.f15272f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorResizeable(z3);
            }
        }
    }

    public void setItemActiveIndicatorShapeAppearance(@Nullable m mVar) {
        this.f15290x = mVar;
        NavigationBarItemView[] navigationBarItemViewArr = this.f15272f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorDrawable(e());
            }
        }
    }

    public void setItemActiveIndicatorWidth(@Px int i2) {
        this.f15287u = i2;
        NavigationBarItemView[] navigationBarItemViewArr = this.f15272f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorWidth(i2);
            }
        }
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.f15281o = drawable;
        NavigationBarItemView[] navigationBarItemViewArr = this.f15272f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemBackground(drawable);
            }
        }
    }

    public void setItemBackgroundRes(int i2) {
        this.f15282p = i2;
        NavigationBarItemView[] navigationBarItemViewArr = this.f15272f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemBackground(i2);
            }
        }
    }

    public void setItemIconSize(@Dimension int i2) {
        this.f15276j = i2;
        NavigationBarItemView[] navigationBarItemViewArr = this.f15272f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setIconSize(i2);
            }
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void setItemOnTouchListener(int i2, @Nullable View.OnTouchListener onTouchListener) {
        if (onTouchListener == null) {
            this.f15270d.remove(i2);
        } else {
            this.f15270d.put(i2, onTouchListener);
        }
        NavigationBarItemView[] navigationBarItemViewArr = this.f15272f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                if (navigationBarItemView.getItemData().getItemId() == i2) {
                    navigationBarItemView.setOnTouchListener(onTouchListener);
                }
            }
        }
    }

    public void setItemPaddingBottom(@Px int i2) {
        this.f15285s = i2;
        NavigationBarItemView[] navigationBarItemViewArr = this.f15272f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemPaddingBottom(i2);
            }
        }
    }

    public void setItemPaddingTop(@Px int i2) {
        this.f15284r = i2;
        NavigationBarItemView[] navigationBarItemViewArr = this.f15272f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemPaddingTop(i2);
            }
        }
    }

    public void setItemTextAppearanceActive(@StyleRes int i2) {
        this.f15280n = i2;
        NavigationBarItemView[] navigationBarItemViewArr = this.f15272f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextAppearanceActive(i2);
                ColorStateList colorStateList = this.f15277k;
                if (colorStateList != null) {
                    navigationBarItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextAppearanceInactive(@StyleRes int i2) {
        this.f15279m = i2;
        NavigationBarItemView[] navigationBarItemViewArr = this.f15272f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextAppearanceInactive(i2);
                ColorStateList colorStateList = this.f15277k;
                if (colorStateList != null) {
                    navigationBarItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.f15277k = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.f15272f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextColor(colorStateList);
            }
        }
    }

    public void setLabelVisibilityMode(int i2) {
        this.f15271e = i2;
    }

    public void setPresenter(@NonNull NavigationBarPresenter navigationBarPresenter) {
        this.A = navigationBarPresenter;
    }
}
