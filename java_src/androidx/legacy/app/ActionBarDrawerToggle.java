package androidx.legacy.app;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.core.content.ContextCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import java.lang.reflect.Method;
@Deprecated
/* loaded from: classes.dex */
public class ActionBarDrawerToggle implements DrawerLayout.DrawerListener {

    /* renamed from: m  reason: collision with root package name */
    private static final String f6150m = "ActionBarDrawerToggle";

    /* renamed from: n  reason: collision with root package name */
    private static final int[] f6151n = {16843531};

    /* renamed from: o  reason: collision with root package name */
    private static final float f6152o = 0.33333334f;

    /* renamed from: p  reason: collision with root package name */
    private static final int f6153p = 16908332;

    /* renamed from: a  reason: collision with root package name */
    final Activity f6154a;

    /* renamed from: b  reason: collision with root package name */
    private final Delegate f6155b;

    /* renamed from: c  reason: collision with root package name */
    private final DrawerLayout f6156c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f6157d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f6158e;

    /* renamed from: f  reason: collision with root package name */
    private Drawable f6159f;

    /* renamed from: g  reason: collision with root package name */
    private Drawable f6160g;

    /* renamed from: h  reason: collision with root package name */
    private SlideDrawable f6161h;

    /* renamed from: i  reason: collision with root package name */
    private final int f6162i;

    /* renamed from: j  reason: collision with root package name */
    private final int f6163j;

    /* renamed from: k  reason: collision with root package name */
    private final int f6164k;

    /* renamed from: l  reason: collision with root package name */
    private SetIndicatorInfo f6165l;

    @Deprecated
    /* loaded from: classes.dex */
    public interface Delegate {
        @Nullable
        Drawable getThemeUpIndicator();

        void setActionBarDescription(@StringRes int i2);

        void setActionBarUpIndicator(Drawable drawable, @StringRes int i2);
    }

    @Deprecated
    /* loaded from: classes.dex */
    public interface DelegateProvider {
        @Nullable
        Delegate getDrawerToggleDelegate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class SetIndicatorInfo {

        /* renamed from: a  reason: collision with root package name */
        Method f6166a;

        /* renamed from: b  reason: collision with root package name */
        Method f6167b;

        /* renamed from: c  reason: collision with root package name */
        ImageView f6168c;

        SetIndicatorInfo(Activity activity) {
            try {
                this.f6166a = ActionBar.class.getDeclaredMethod("setHomeAsUpIndicator", Drawable.class);
                this.f6167b = ActionBar.class.getDeclaredMethod("setHomeActionContentDescription", Integer.TYPE);
            } catch (NoSuchMethodException unused) {
                View findViewById = activity.findViewById(ActionBarDrawerToggle.f6153p);
                if (findViewById == null) {
                    return;
                }
                ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
                if (viewGroup.getChildCount() != 2) {
                    return;
                }
                View childAt = viewGroup.getChildAt(0);
                childAt = childAt.getId() == ActionBarDrawerToggle.f6153p ? viewGroup.getChildAt(1) : childAt;
                if (childAt instanceof ImageView) {
                    this.f6168c = (ImageView) childAt;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class SlideDrawable extends InsetDrawable implements Drawable.Callback {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f6169a;

        /* renamed from: b  reason: collision with root package name */
        private final Rect f6170b;

        /* renamed from: c  reason: collision with root package name */
        private float f6171c;

        /* renamed from: d  reason: collision with root package name */
        private float f6172d;

        SlideDrawable(Drawable drawable) {
            super(drawable, 0);
            this.f6169a = Build.VERSION.SDK_INT > 18;
            this.f6170b = new Rect();
        }

        @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public void draw(@NonNull Canvas canvas) {
            copyBounds(this.f6170b);
            canvas.save();
            boolean z3 = ViewCompat.getLayoutDirection(ActionBarDrawerToggle.this.f6154a.getWindow().getDecorView()) == 1;
            int i2 = z3 ? -1 : 1;
            float width = this.f6170b.width();
            canvas.translate((-this.f6172d) * width * this.f6171c * i2, 0.0f);
            if (z3 && !this.f6169a) {
                canvas.translate(width, 0.0f);
                canvas.scale(-1.0f, 1.0f);
            }
            super.draw(canvas);
            canvas.restore();
        }

        public float getPosition() {
            return this.f6171c;
        }

        public void setOffset(float f4) {
            this.f6172d = f4;
            invalidateSelf();
        }

        public void setPosition(float f4) {
            this.f6171c = f4;
            invalidateSelf();
        }
    }

    public ActionBarDrawerToggle(Activity activity, DrawerLayout drawerLayout, @DrawableRes int i2, @StringRes int i4, @StringRes int i5) {
        this(activity, drawerLayout, !a(activity), i2, i4, i5);
    }

    private static boolean a(Context context) {
        return context.getApplicationInfo().targetSdkVersion >= 21 && Build.VERSION.SDK_INT >= 21;
    }

    private Drawable b() {
        Context context;
        Delegate delegate = this.f6155b;
        if (delegate != null) {
            return delegate.getThemeUpIndicator();
        }
        if (Build.VERSION.SDK_INT >= 18) {
            ActionBar actionBar = this.f6154a.getActionBar();
            if (actionBar != null) {
                context = actionBar.getThemedContext();
            } else {
                context = this.f6154a;
            }
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, f6151n, 16843470, 0);
            Drawable drawable = obtainStyledAttributes.getDrawable(0);
            obtainStyledAttributes.recycle();
            return drawable;
        }
        TypedArray obtainStyledAttributes2 = this.f6154a.obtainStyledAttributes(f6151n);
        Drawable drawable2 = obtainStyledAttributes2.getDrawable(0);
        obtainStyledAttributes2.recycle();
        return drawable2;
    }

    private void c(int i2) {
        Delegate delegate = this.f6155b;
        if (delegate != null) {
            delegate.setActionBarDescription(i2);
        } else if (Build.VERSION.SDK_INT >= 18) {
            ActionBar actionBar = this.f6154a.getActionBar();
            if (actionBar != null) {
                actionBar.setHomeActionContentDescription(i2);
            }
        } else {
            if (this.f6165l == null) {
                this.f6165l = new SetIndicatorInfo(this.f6154a);
            }
            if (this.f6165l.f6166a != null) {
                try {
                    ActionBar actionBar2 = this.f6154a.getActionBar();
                    this.f6165l.f6167b.invoke(actionBar2, Integer.valueOf(i2));
                    actionBar2.setSubtitle(actionBar2.getSubtitle());
                } catch (Exception unused) {
                }
            }
        }
    }

    private void d(Drawable drawable, int i2) {
        Delegate delegate = this.f6155b;
        if (delegate != null) {
            delegate.setActionBarUpIndicator(drawable, i2);
        } else if (Build.VERSION.SDK_INT >= 18) {
            ActionBar actionBar = this.f6154a.getActionBar();
            if (actionBar != null) {
                actionBar.setHomeAsUpIndicator(drawable);
                actionBar.setHomeActionContentDescription(i2);
            }
        } else {
            if (this.f6165l == null) {
                this.f6165l = new SetIndicatorInfo(this.f6154a);
            }
            SetIndicatorInfo setIndicatorInfo = this.f6165l;
            if (setIndicatorInfo.f6166a != null) {
                try {
                    ActionBar actionBar2 = this.f6154a.getActionBar();
                    this.f6165l.f6166a.invoke(actionBar2, drawable);
                    this.f6165l.f6167b.invoke(actionBar2, Integer.valueOf(i2));
                    return;
                } catch (Exception unused) {
                    return;
                }
            }
            ImageView imageView = setIndicatorInfo.f6168c;
            if (imageView != null) {
                imageView.setImageDrawable(drawable);
            }
        }
    }

    public boolean isDrawerIndicatorEnabled() {
        return this.f6157d;
    }

    public void onConfigurationChanged(Configuration configuration) {
        if (!this.f6158e) {
            this.f6159f = b();
        }
        this.f6160g = ContextCompat.getDrawable(this.f6154a, this.f6162i);
        syncState();
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    public void onDrawerClosed(View view) {
        this.f6161h.setPosition(0.0f);
        if (this.f6157d) {
            c(this.f6163j);
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    public void onDrawerOpened(View view) {
        this.f6161h.setPosition(1.0f);
        if (this.f6157d) {
            c(this.f6164k);
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    public void onDrawerSlide(View view, float f4) {
        float min;
        float position = this.f6161h.getPosition();
        if (f4 > 0.5f) {
            min = Math.max(position, Math.max(0.0f, f4 - 0.5f) * 2.0f);
        } else {
            min = Math.min(position, f4 * 2.0f);
        }
        this.f6161h.setPosition(min);
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    public void onDrawerStateChanged(int i2) {
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem != null && menuItem.getItemId() == f6153p && this.f6157d) {
            if (this.f6156c.isDrawerVisible(GravityCompat.START)) {
                this.f6156c.closeDrawer(GravityCompat.START);
                return true;
            }
            this.f6156c.openDrawer(GravityCompat.START);
            return true;
        }
        return false;
    }

    public void setDrawerIndicatorEnabled(boolean z3) {
        if (z3 != this.f6157d) {
            if (z3) {
                d(this.f6161h, this.f6156c.isDrawerOpen(GravityCompat.START) ? this.f6164k : this.f6163j);
            } else {
                d(this.f6159f, 0);
            }
            this.f6157d = z3;
        }
    }

    public void setHomeAsUpIndicator(Drawable drawable) {
        if (drawable == null) {
            this.f6159f = b();
            this.f6158e = false;
        } else {
            this.f6159f = drawable;
            this.f6158e = true;
        }
        if (this.f6157d) {
            return;
        }
        d(this.f6159f, 0);
    }

    public void syncState() {
        if (this.f6156c.isDrawerOpen(GravityCompat.START)) {
            this.f6161h.setPosition(1.0f);
        } else {
            this.f6161h.setPosition(0.0f);
        }
        if (this.f6157d) {
            d(this.f6161h, this.f6156c.isDrawerOpen(GravityCompat.START) ? this.f6164k : this.f6163j);
        }
    }

    public ActionBarDrawerToggle(Activity activity, DrawerLayout drawerLayout, boolean z3, @DrawableRes int i2, @StringRes int i4, @StringRes int i5) {
        this.f6157d = true;
        this.f6154a = activity;
        if (activity instanceof DelegateProvider) {
            this.f6155b = ((DelegateProvider) activity).getDrawerToggleDelegate();
        } else {
            this.f6155b = null;
        }
        this.f6156c = drawerLayout;
        this.f6162i = i2;
        this.f6163j = i4;
        this.f6164k = i5;
        this.f6159f = b();
        this.f6160g = ContextCompat.getDrawable(activity, i2);
        SlideDrawable slideDrawable = new SlideDrawable(this.f6160g);
        this.f6161h = slideDrawable;
        slideDrawable.setOffset(z3 ? f6152o : 0.0f);
    }

    public void setHomeAsUpIndicator(int i2) {
        setHomeAsUpIndicator(i2 != 0 ? ContextCompat.getDrawable(this.f6154a, i2) : null);
    }
}
