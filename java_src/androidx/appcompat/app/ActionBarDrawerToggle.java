package androidx.appcompat.app;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.appcompat.app.ActionBarDrawerToggleHoneycomb;
import androidx.appcompat.graphics.drawable.DrawerArrowDrawable;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;
/* loaded from: classes.dex */
public class ActionBarDrawerToggle implements DrawerLayout.DrawerListener {

    /* renamed from: a  reason: collision with root package name */
    private final Delegate f100a;

    /* renamed from: b  reason: collision with root package name */
    private final DrawerLayout f101b;

    /* renamed from: c  reason: collision with root package name */
    private DrawerArrowDrawable f102c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f103d;

    /* renamed from: e  reason: collision with root package name */
    private Drawable f104e;

    /* renamed from: f  reason: collision with root package name */
    boolean f105f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f106g;

    /* renamed from: h  reason: collision with root package name */
    private final int f107h;

    /* renamed from: i  reason: collision with root package name */
    private final int f108i;

    /* renamed from: j  reason: collision with root package name */
    View.OnClickListener f109j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f110k;

    /* loaded from: classes.dex */
    public interface Delegate {
        Context getActionBarThemedContext();

        Drawable getThemeUpIndicator();

        boolean isNavigationVisible();

        void setActionBarDescription(@StringRes int i2);

        void setActionBarUpIndicator(Drawable drawable, @StringRes int i2);
    }

    /* loaded from: classes.dex */
    public interface DelegateProvider {
        @Nullable
        Delegate getDrawerToggleDelegate();
    }

    /* loaded from: classes.dex */
    private static class FrameworkActionBarDelegate implements Delegate {

        /* renamed from: a  reason: collision with root package name */
        private final Activity f112a;

        /* renamed from: b  reason: collision with root package name */
        private ActionBarDrawerToggleHoneycomb.SetIndicatorInfo f113b;

        FrameworkActionBarDelegate(Activity activity) {
            this.f112a = activity;
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public Context getActionBarThemedContext() {
            android.app.ActionBar actionBar = this.f112a.getActionBar();
            if (actionBar != null) {
                return actionBar.getThemedContext();
            }
            return this.f112a;
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public Drawable getThemeUpIndicator() {
            if (Build.VERSION.SDK_INT >= 18) {
                TypedArray obtainStyledAttributes = getActionBarThemedContext().obtainStyledAttributes(null, new int[]{16843531}, 16843470, 0);
                Drawable drawable = obtainStyledAttributes.getDrawable(0);
                obtainStyledAttributes.recycle();
                return drawable;
            }
            return ActionBarDrawerToggleHoneycomb.getThemeUpIndicator(this.f112a);
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public boolean isNavigationVisible() {
            android.app.ActionBar actionBar = this.f112a.getActionBar();
            return (actionBar == null || (actionBar.getDisplayOptions() & 4) == 0) ? false : true;
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public void setActionBarDescription(int i2) {
            if (Build.VERSION.SDK_INT >= 18) {
                android.app.ActionBar actionBar = this.f112a.getActionBar();
                if (actionBar != null) {
                    actionBar.setHomeActionContentDescription(i2);
                    return;
                }
                return;
            }
            this.f113b = ActionBarDrawerToggleHoneycomb.setActionBarDescription(this.f113b, this.f112a, i2);
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public void setActionBarUpIndicator(Drawable drawable, int i2) {
            android.app.ActionBar actionBar = this.f112a.getActionBar();
            if (actionBar != null) {
                if (Build.VERSION.SDK_INT >= 18) {
                    actionBar.setHomeAsUpIndicator(drawable);
                    actionBar.setHomeActionContentDescription(i2);
                    return;
                }
                actionBar.setDisplayShowHomeEnabled(true);
                this.f113b = ActionBarDrawerToggleHoneycomb.setActionBarUpIndicator(this.f112a, drawable, i2);
                actionBar.setDisplayShowHomeEnabled(false);
            }
        }
    }

    /* loaded from: classes.dex */
    static class ToolbarCompatDelegate implements Delegate {

        /* renamed from: a  reason: collision with root package name */
        final Toolbar f114a;

        /* renamed from: b  reason: collision with root package name */
        final Drawable f115b;

        /* renamed from: c  reason: collision with root package name */
        final CharSequence f116c;

        ToolbarCompatDelegate(Toolbar toolbar) {
            this.f114a = toolbar;
            this.f115b = toolbar.getNavigationIcon();
            this.f116c = toolbar.getNavigationContentDescription();
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public Context getActionBarThemedContext() {
            return this.f114a.getContext();
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public Drawable getThemeUpIndicator() {
            return this.f115b;
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public boolean isNavigationVisible() {
            return true;
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public void setActionBarDescription(@StringRes int i2) {
            if (i2 == 0) {
                this.f114a.setNavigationContentDescription(this.f116c);
            } else {
                this.f114a.setNavigationContentDescription(i2);
            }
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public void setActionBarUpIndicator(Drawable drawable, @StringRes int i2) {
            this.f114a.setNavigationIcon(drawable);
            setActionBarDescription(i2);
        }
    }

    public ActionBarDrawerToggle(Activity activity, DrawerLayout drawerLayout, @StringRes int i2, @StringRes int i4) {
        this(activity, null, drawerLayout, null, i2, i4);
    }

    private void d(float f4) {
        if (f4 == 1.0f) {
            this.f102c.setVerticalMirror(true);
        } else if (f4 == 0.0f) {
            this.f102c.setVerticalMirror(false);
        }
        this.f102c.setProgress(f4);
    }

    Drawable a() {
        return this.f100a.getThemeUpIndicator();
    }

    void b(int i2) {
        this.f100a.setActionBarDescription(i2);
    }

    void c(Drawable drawable, int i2) {
        if (!this.f110k && !this.f100a.isNavigationVisible()) {
            this.f110k = true;
        }
        this.f100a.setActionBarUpIndicator(drawable, i2);
    }

    void e() {
        int drawerLockMode = this.f101b.getDrawerLockMode(GravityCompat.START);
        if (this.f101b.isDrawerVisible(GravityCompat.START) && drawerLockMode != 2) {
            this.f101b.closeDrawer(GravityCompat.START);
        } else if (drawerLockMode != 1) {
            this.f101b.openDrawer(GravityCompat.START);
        }
    }

    @NonNull
    public DrawerArrowDrawable getDrawerArrowDrawable() {
        return this.f102c;
    }

    public View.OnClickListener getToolbarNavigationClickListener() {
        return this.f109j;
    }

    public boolean isDrawerIndicatorEnabled() {
        return this.f105f;
    }

    public boolean isDrawerSlideAnimationEnabled() {
        return this.f103d;
    }

    public void onConfigurationChanged(Configuration configuration) {
        if (!this.f106g) {
            this.f104e = a();
        }
        syncState();
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    public void onDrawerClosed(View view) {
        d(0.0f);
        if (this.f105f) {
            b(this.f107h);
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    public void onDrawerOpened(View view) {
        d(1.0f);
        if (this.f105f) {
            b(this.f108i);
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    public void onDrawerSlide(View view, float f4) {
        if (this.f103d) {
            d(Math.min(1.0f, Math.max(0.0f, f4)));
        } else {
            d(0.0f);
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    public void onDrawerStateChanged(int i2) {
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem != null && menuItem.getItemId() == 16908332 && this.f105f) {
            e();
            return true;
        }
        return false;
    }

    public void setDrawerArrowDrawable(@NonNull DrawerArrowDrawable drawerArrowDrawable) {
        this.f102c = drawerArrowDrawable;
        syncState();
    }

    public void setDrawerIndicatorEnabled(boolean z3) {
        if (z3 != this.f105f) {
            if (z3) {
                c(this.f102c, this.f101b.isDrawerOpen(GravityCompat.START) ? this.f108i : this.f107h);
            } else {
                c(this.f104e, 0);
            }
            this.f105f = z3;
        }
    }

    public void setDrawerSlideAnimationEnabled(boolean z3) {
        this.f103d = z3;
        if (z3) {
            return;
        }
        d(0.0f);
    }

    public void setHomeAsUpIndicator(Drawable drawable) {
        if (drawable == null) {
            this.f104e = a();
            this.f106g = false;
        } else {
            this.f104e = drawable;
            this.f106g = true;
        }
        if (this.f105f) {
            return;
        }
        c(this.f104e, 0);
    }

    public void setToolbarNavigationClickListener(View.OnClickListener onClickListener) {
        this.f109j = onClickListener;
    }

    public void syncState() {
        if (this.f101b.isDrawerOpen(GravityCompat.START)) {
            d(1.0f);
        } else {
            d(0.0f);
        }
        if (this.f105f) {
            c(this.f102c, this.f101b.isDrawerOpen(GravityCompat.START) ? this.f108i : this.f107h);
        }
    }

    public ActionBarDrawerToggle(Activity activity, DrawerLayout drawerLayout, Toolbar toolbar, @StringRes int i2, @StringRes int i4) {
        this(activity, toolbar, drawerLayout, null, i2, i4);
    }

    ActionBarDrawerToggle(Activity activity, Toolbar toolbar, DrawerLayout drawerLayout, DrawerArrowDrawable drawerArrowDrawable, @StringRes int i2, @StringRes int i4) {
        this.f103d = true;
        this.f105f = true;
        this.f110k = false;
        if (toolbar != null) {
            this.f100a = new ToolbarCompatDelegate(toolbar);
            toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.app.ActionBarDrawerToggle.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ActionBarDrawerToggle actionBarDrawerToggle = ActionBarDrawerToggle.this;
                    if (actionBarDrawerToggle.f105f) {
                        actionBarDrawerToggle.e();
                        return;
                    }
                    View.OnClickListener onClickListener = actionBarDrawerToggle.f109j;
                    if (onClickListener != null) {
                        onClickListener.onClick(view);
                    }
                }
            });
        } else if (activity instanceof DelegateProvider) {
            this.f100a = ((DelegateProvider) activity).getDrawerToggleDelegate();
        } else {
            this.f100a = new FrameworkActionBarDelegate(activity);
        }
        this.f101b = drawerLayout;
        this.f107h = i2;
        this.f108i = i4;
        if (drawerArrowDrawable == null) {
            this.f102c = new DrawerArrowDrawable(this.f100a.getActionBarThemedContext());
        } else {
            this.f102c = drawerArrowDrawable;
        }
        this.f104e = a();
    }

    public void setHomeAsUpIndicator(int i2) {
        setHomeAsUpIndicator(i2 != 0 ? this.f101b.getResources().getDrawable(i2) : null);
    }
}
