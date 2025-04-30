package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.menu.ActionMenuItem;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ToolbarWidgetWrapper implements DecorToolbar {

    /* renamed from: s  reason: collision with root package name */
    private static final String f1505s = "ToolbarWidgetWrapper";

    /* renamed from: t  reason: collision with root package name */
    private static final int f1506t = 3;

    /* renamed from: u  reason: collision with root package name */
    private static final long f1507u = 200;

    /* renamed from: a  reason: collision with root package name */
    Toolbar f1508a;

    /* renamed from: b  reason: collision with root package name */
    private int f1509b;

    /* renamed from: c  reason: collision with root package name */
    private View f1510c;

    /* renamed from: d  reason: collision with root package name */
    private Spinner f1511d;

    /* renamed from: e  reason: collision with root package name */
    private View f1512e;

    /* renamed from: f  reason: collision with root package name */
    private Drawable f1513f;

    /* renamed from: g  reason: collision with root package name */
    private Drawable f1514g;

    /* renamed from: h  reason: collision with root package name */
    private Drawable f1515h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f1516i;

    /* renamed from: j  reason: collision with root package name */
    CharSequence f1517j;

    /* renamed from: k  reason: collision with root package name */
    private CharSequence f1518k;

    /* renamed from: l  reason: collision with root package name */
    private CharSequence f1519l;

    /* renamed from: m  reason: collision with root package name */
    Window.Callback f1520m;

    /* renamed from: n  reason: collision with root package name */
    boolean f1521n;

    /* renamed from: o  reason: collision with root package name */
    private ActionMenuPresenter f1522o;

    /* renamed from: p  reason: collision with root package name */
    private int f1523p;

    /* renamed from: q  reason: collision with root package name */
    private int f1524q;

    /* renamed from: r  reason: collision with root package name */
    private Drawable f1525r;

    public ToolbarWidgetWrapper(Toolbar toolbar, boolean z3) {
        this(toolbar, z3, R.string.abc_action_bar_up_description, R.drawable.abc_ic_ab_back_material);
    }

    private int a() {
        if (this.f1508a.getNavigationIcon() != null) {
            this.f1525r = this.f1508a.getNavigationIcon();
            return 15;
        }
        return 11;
    }

    private void b() {
        if (this.f1511d == null) {
            this.f1511d = new AppCompatSpinner(getContext(), null, R.attr.actionDropDownStyle);
            this.f1511d.setLayoutParams(new Toolbar.LayoutParams(-2, -2, 8388627));
        }
    }

    private void c(CharSequence charSequence) {
        this.f1517j = charSequence;
        if ((this.f1509b & 8) != 0) {
            this.f1508a.setTitle(charSequence);
            if (this.f1516i) {
                ViewCompat.setAccessibilityPaneTitle(this.f1508a.getRootView(), charSequence);
            }
        }
    }

    private void d() {
        if ((this.f1509b & 4) != 0) {
            if (TextUtils.isEmpty(this.f1519l)) {
                this.f1508a.setNavigationContentDescription(this.f1524q);
            } else {
                this.f1508a.setNavigationContentDescription(this.f1519l);
            }
        }
    }

    private void e() {
        if ((this.f1509b & 4) != 0) {
            Toolbar toolbar = this.f1508a;
            Drawable drawable = this.f1515h;
            if (drawable == null) {
                drawable = this.f1525r;
            }
            toolbar.setNavigationIcon(drawable);
            return;
        }
        this.f1508a.setNavigationIcon((Drawable) null);
    }

    private void f() {
        Drawable drawable;
        int i2 = this.f1509b;
        if ((i2 & 2) == 0) {
            drawable = null;
        } else if ((i2 & 1) != 0) {
            drawable = this.f1514g;
            if (drawable == null) {
                drawable = this.f1513f;
            }
        } else {
            drawable = this.f1513f;
        }
        this.f1508a.setLogo(drawable);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void animateToVisibility(int i2) {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = setupAnimatorToVisibility(i2, 200L);
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.start();
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean canShowOverflowMenu() {
        return this.f1508a.canShowOverflowMenu();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void collapseActionView() {
        this.f1508a.collapseActionView();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void dismissPopupMenus() {
        this.f1508a.dismissPopupMenus();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public Context getContext() {
        return this.f1508a.getContext();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public View getCustomView() {
        return this.f1512e;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public int getDisplayOptions() {
        return this.f1509b;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public int getDropdownItemCount() {
        Spinner spinner = this.f1511d;
        if (spinner != null) {
            return spinner.getCount();
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public int getDropdownSelectedPosition() {
        Spinner spinner = this.f1511d;
        if (spinner != null) {
            return spinner.getSelectedItemPosition();
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public int getHeight() {
        return this.f1508a.getHeight();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public Menu getMenu() {
        return this.f1508a.getMenu();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public int getNavigationMode() {
        return this.f1523p;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public CharSequence getSubtitle() {
        return this.f1508a.getSubtitle();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public CharSequence getTitle() {
        return this.f1508a.getTitle();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public ViewGroup getViewGroup() {
        return this.f1508a;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public int getVisibility() {
        return this.f1508a.getVisibility();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean hasEmbeddedTabs() {
        return this.f1510c != null;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean hasExpandedActionView() {
        return this.f1508a.hasExpandedActionView();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean hasIcon() {
        return this.f1513f != null;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean hasLogo() {
        return this.f1514g != null;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean hideOverflowMenu() {
        return this.f1508a.hideOverflowMenu();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void initIndeterminateProgress() {
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void initProgress() {
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean isOverflowMenuShowPending() {
        return this.f1508a.isOverflowMenuShowPending();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean isOverflowMenuShowing() {
        return this.f1508a.isOverflowMenuShowing();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean isTitleTruncated() {
        return this.f1508a.isTitleTruncated();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void restoreHierarchyState(SparseArray<Parcelable> sparseArray) {
        this.f1508a.restoreHierarchyState(sparseArray);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void saveHierarchyState(SparseArray<Parcelable> sparseArray) {
        this.f1508a.saveHierarchyState(sparseArray);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setBackgroundDrawable(Drawable drawable) {
        ViewCompat.setBackground(this.f1508a, drawable);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setCollapsible(boolean z3) {
        this.f1508a.setCollapsible(z3);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setCustomView(View view) {
        View view2 = this.f1512e;
        if (view2 != null && (this.f1509b & 16) != 0) {
            this.f1508a.removeView(view2);
        }
        this.f1512e = view;
        if (view == null || (this.f1509b & 16) == 0) {
            return;
        }
        this.f1508a.addView(view);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setDefaultNavigationContentDescription(int i2) {
        if (i2 == this.f1524q) {
            return;
        }
        this.f1524q = i2;
        if (TextUtils.isEmpty(this.f1508a.getNavigationContentDescription())) {
            setNavigationContentDescription(this.f1524q);
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setDefaultNavigationIcon(Drawable drawable) {
        if (this.f1525r != drawable) {
            this.f1525r = drawable;
            e();
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setDisplayOptions(int i2) {
        View view;
        int i4 = this.f1509b ^ i2;
        this.f1509b = i2;
        if (i4 != 0) {
            if ((i4 & 4) != 0) {
                if ((i2 & 4) != 0) {
                    d();
                }
                e();
            }
            if ((i4 & 3) != 0) {
                f();
            }
            if ((i4 & 8) != 0) {
                if ((i2 & 8) != 0) {
                    this.f1508a.setTitle(this.f1517j);
                    this.f1508a.setSubtitle(this.f1518k);
                } else {
                    this.f1508a.setTitle((CharSequence) null);
                    this.f1508a.setSubtitle((CharSequence) null);
                }
            }
            if ((i4 & 16) == 0 || (view = this.f1512e) == null) {
                return;
            }
            if ((i2 & 16) != 0) {
                this.f1508a.addView(view);
            } else {
                this.f1508a.removeView(view);
            }
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setDropdownParams(SpinnerAdapter spinnerAdapter, AdapterView.OnItemSelectedListener onItemSelectedListener) {
        b();
        this.f1511d.setAdapter(spinnerAdapter);
        this.f1511d.setOnItemSelectedListener(onItemSelectedListener);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setDropdownSelectedPosition(int i2) {
        Spinner spinner = this.f1511d;
        if (spinner != null) {
            spinner.setSelection(i2);
            return;
        }
        throw new IllegalStateException("Can't set dropdown selected position without an adapter");
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setEmbeddedTabView(ScrollingTabContainerView scrollingTabContainerView) {
        View view = this.f1510c;
        if (view != null) {
            ViewParent parent = view.getParent();
            Toolbar toolbar = this.f1508a;
            if (parent == toolbar) {
                toolbar.removeView(this.f1510c);
            }
        }
        this.f1510c = scrollingTabContainerView;
        if (scrollingTabContainerView == null || this.f1523p != 2) {
            return;
        }
        this.f1508a.addView(scrollingTabContainerView, 0);
        Toolbar.LayoutParams layoutParams = (Toolbar.LayoutParams) this.f1510c.getLayoutParams();
        ((ViewGroup.MarginLayoutParams) layoutParams).width = -2;
        ((ViewGroup.MarginLayoutParams) layoutParams).height = -2;
        layoutParams.gravity = 8388691;
        scrollingTabContainerView.setAllowCollapse(true);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setHomeButtonEnabled(boolean z3) {
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setIcon(int i2) {
        setIcon(i2 != 0 ? AppCompatResources.getDrawable(getContext(), i2) : null);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setLogo(int i2) {
        setLogo(i2 != 0 ? AppCompatResources.getDrawable(getContext(), i2) : null);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setMenu(Menu menu, MenuPresenter.Callback callback) {
        if (this.f1522o == null) {
            ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(this.f1508a.getContext());
            this.f1522o = actionMenuPresenter;
            actionMenuPresenter.setId(R.id.action_menu_presenter);
        }
        this.f1522o.setCallback(callback);
        this.f1508a.setMenu((MenuBuilder) menu, this.f1522o);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setMenuCallbacks(MenuPresenter.Callback callback, MenuBuilder.Callback callback2) {
        this.f1508a.setMenuCallbacks(callback, callback2);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setMenuPrepared() {
        this.f1521n = true;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setNavigationContentDescription(CharSequence charSequence) {
        this.f1519l = charSequence;
        d();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setNavigationIcon(Drawable drawable) {
        this.f1515h = drawable;
        e();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setNavigationMode(int i2) {
        View view;
        int i4 = this.f1523p;
        if (i2 != i4) {
            if (i4 == 1) {
                Spinner spinner = this.f1511d;
                if (spinner != null) {
                    ViewParent parent = spinner.getParent();
                    Toolbar toolbar = this.f1508a;
                    if (parent == toolbar) {
                        toolbar.removeView(this.f1511d);
                    }
                }
            } else if (i4 == 2 && (view = this.f1510c) != null) {
                ViewParent parent2 = view.getParent();
                Toolbar toolbar2 = this.f1508a;
                if (parent2 == toolbar2) {
                    toolbar2.removeView(this.f1510c);
                }
            }
            this.f1523p = i2;
            if (i2 != 0) {
                if (i2 == 1) {
                    b();
                    this.f1508a.addView(this.f1511d, 0);
                } else if (i2 == 2) {
                    View view2 = this.f1510c;
                    if (view2 != null) {
                        this.f1508a.addView(view2, 0);
                        Toolbar.LayoutParams layoutParams = (Toolbar.LayoutParams) this.f1510c.getLayoutParams();
                        ((ViewGroup.MarginLayoutParams) layoutParams).width = -2;
                        ((ViewGroup.MarginLayoutParams) layoutParams).height = -2;
                        layoutParams.gravity = 8388691;
                    }
                } else {
                    throw new IllegalArgumentException("Invalid navigation mode " + i2);
                }
            }
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setSubtitle(CharSequence charSequence) {
        this.f1518k = charSequence;
        if ((this.f1509b & 8) != 0) {
            this.f1508a.setSubtitle(charSequence);
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setTitle(CharSequence charSequence) {
        this.f1516i = true;
        c(charSequence);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setVisibility(int i2) {
        this.f1508a.setVisibility(i2);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setWindowCallback(Window.Callback callback) {
        this.f1520m = callback;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setWindowTitle(CharSequence charSequence) {
        if (this.f1516i) {
            return;
        }
        c(charSequence);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public ViewPropertyAnimatorCompat setupAnimatorToVisibility(final int i2, long j4) {
        return ViewCompat.animate(this.f1508a).alpha(i2 == 0 ? 1.0f : 0.0f).setDuration(j4).setListener(new ViewPropertyAnimatorListenerAdapter() { // from class: androidx.appcompat.widget.ToolbarWidgetWrapper.2

            /* renamed from: a  reason: collision with root package name */
            private boolean f1528a = false;

            @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
            public void onAnimationCancel(View view) {
                this.f1528a = true;
            }

            @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
            public void onAnimationEnd(View view) {
                if (this.f1528a) {
                    return;
                }
                ToolbarWidgetWrapper.this.f1508a.setVisibility(i2);
            }

            @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
            public void onAnimationStart(View view) {
                ToolbarWidgetWrapper.this.f1508a.setVisibility(0);
            }
        });
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean showOverflowMenu() {
        return this.f1508a.showOverflowMenu();
    }

    public ToolbarWidgetWrapper(Toolbar toolbar, boolean z3, int i2, int i4) {
        Drawable drawable;
        this.f1523p = 0;
        this.f1524q = 0;
        this.f1508a = toolbar;
        this.f1517j = toolbar.getTitle();
        this.f1518k = toolbar.getSubtitle();
        this.f1516i = this.f1517j != null;
        this.f1515h = toolbar.getNavigationIcon();
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(toolbar.getContext(), null, R.styleable.ActionBar, R.attr.actionBarStyle, 0);
        this.f1525r = obtainStyledAttributes.getDrawable(R.styleable.ActionBar_homeAsUpIndicator);
        if (z3) {
            CharSequence text = obtainStyledAttributes.getText(R.styleable.ActionBar_title);
            if (!TextUtils.isEmpty(text)) {
                setTitle(text);
            }
            CharSequence text2 = obtainStyledAttributes.getText(R.styleable.ActionBar_subtitle);
            if (!TextUtils.isEmpty(text2)) {
                setSubtitle(text2);
            }
            Drawable drawable2 = obtainStyledAttributes.getDrawable(R.styleable.ActionBar_logo);
            if (drawable2 != null) {
                setLogo(drawable2);
            }
            Drawable drawable3 = obtainStyledAttributes.getDrawable(R.styleable.ActionBar_icon);
            if (drawable3 != null) {
                setIcon(drawable3);
            }
            if (this.f1515h == null && (drawable = this.f1525r) != null) {
                setNavigationIcon(drawable);
            }
            setDisplayOptions(obtainStyledAttributes.getInt(R.styleable.ActionBar_displayOptions, 0));
            int resourceId = obtainStyledAttributes.getResourceId(R.styleable.ActionBar_customNavigationLayout, 0);
            if (resourceId != 0) {
                setCustomView(LayoutInflater.from(this.f1508a.getContext()).inflate(resourceId, (ViewGroup) this.f1508a, false));
                setDisplayOptions(this.f1509b | 16);
            }
            int layoutDimension = obtainStyledAttributes.getLayoutDimension(R.styleable.ActionBar_height, 0);
            if (layoutDimension > 0) {
                ViewGroup.LayoutParams layoutParams = this.f1508a.getLayoutParams();
                layoutParams.height = layoutDimension;
                this.f1508a.setLayoutParams(layoutParams);
            }
            int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.ActionBar_contentInsetStart, -1);
            int dimensionPixelOffset2 = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.ActionBar_contentInsetEnd, -1);
            if (dimensionPixelOffset >= 0 || dimensionPixelOffset2 >= 0) {
                this.f1508a.setContentInsetsRelative(Math.max(dimensionPixelOffset, 0), Math.max(dimensionPixelOffset2, 0));
            }
            int resourceId2 = obtainStyledAttributes.getResourceId(R.styleable.ActionBar_titleTextStyle, 0);
            if (resourceId2 != 0) {
                Toolbar toolbar2 = this.f1508a;
                toolbar2.setTitleTextAppearance(toolbar2.getContext(), resourceId2);
            }
            int resourceId3 = obtainStyledAttributes.getResourceId(R.styleable.ActionBar_subtitleTextStyle, 0);
            if (resourceId3 != 0) {
                Toolbar toolbar3 = this.f1508a;
                toolbar3.setSubtitleTextAppearance(toolbar3.getContext(), resourceId3);
            }
            int resourceId4 = obtainStyledAttributes.getResourceId(R.styleable.ActionBar_popupTheme, 0);
            if (resourceId4 != 0) {
                this.f1508a.setPopupTheme(resourceId4);
            }
        } else {
            this.f1509b = a();
        }
        obtainStyledAttributes.recycle();
        setDefaultNavigationContentDescription(i2);
        this.f1519l = this.f1508a.getNavigationContentDescription();
        this.f1508a.setNavigationOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.widget.ToolbarWidgetWrapper.1

            /* renamed from: a  reason: collision with root package name */
            final ActionMenuItem f1526a;

            {
                this.f1526a = new ActionMenuItem(ToolbarWidgetWrapper.this.f1508a.getContext(), 0, 16908332, 0, 0, ToolbarWidgetWrapper.this.f1517j);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ToolbarWidgetWrapper toolbarWidgetWrapper = ToolbarWidgetWrapper.this;
                Window.Callback callback = toolbarWidgetWrapper.f1520m;
                if (callback == null || !toolbarWidgetWrapper.f1521n) {
                    return;
                }
                callback.onMenuItemSelected(0, this.f1526a);
            }
        });
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setIcon(Drawable drawable) {
        this.f1513f = drawable;
        f();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setLogo(Drawable drawable) {
        this.f1514g = drawable;
        f();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setNavigationContentDescription(int i2) {
        setNavigationContentDescription(i2 == 0 ? null : getContext().getString(i2));
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setNavigationIcon(int i2) {
        setNavigationIcon(i2 != 0 ? AppCompatResources.getDrawable(getContext(), i2) : null);
    }
}
