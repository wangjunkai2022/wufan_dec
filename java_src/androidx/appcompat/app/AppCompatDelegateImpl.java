package androidx.appcompat.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.R;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.SupportActionModeWrapper;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.WindowCallbackWrapper;
import androidx.appcompat.view.menu.ListMenuPresenter;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.DecorContentParent;
import androidx.appcompat.widget.FitWindowsViewGroup;
import androidx.appcompat.widget.TintTypedArray;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.VectorEnabledTintResources;
import androidx.appcompat.widget.ViewUtils;
import androidx.collection.SimpleArrayMap;
import androidx.core.app.NavUtils;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.KeyEventDispatcher;
import androidx.core.view.LayoutInflaterCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import androidx.core.view.WindowInsetsCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import java.lang.Thread;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
/* JADX INFO: Access modifiers changed from: package-private */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class AppCompatDelegateImpl extends AppCompatDelegate implements MenuBuilder.Callback, LayoutInflater.Factory2 {
    private static final SimpleArrayMap<String, Integer> F0 = new SimpleArrayMap<>();
    private static final boolean G0;
    private static final int[] H0;
    private static final boolean I0;
    private static final boolean J0;
    private static boolean K0 = false;
    static final String L0 = ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.";
    private boolean A;
    private boolean A0;
    private boolean B;
    private Rect B0;
    boolean C;
    private Rect C0;
    boolean D;
    private AppCompatViewInflater D0;
    boolean E;
    private LayoutIncludeDetector E0;
    boolean F;
    boolean G;
    private boolean H;
    private PanelFeatureState[] I;
    private PanelFeatureState J;
    private boolean K;

    /* renamed from: f  reason: collision with root package name */
    final Object f183f;

    /* renamed from: g  reason: collision with root package name */
    final Context f184g;

    /* renamed from: h  reason: collision with root package name */
    Window f185h;

    /* renamed from: i  reason: collision with root package name */
    private AppCompatWindowCallback f186i;

    /* renamed from: j  reason: collision with root package name */
    final AppCompatCallback f187j;

    /* renamed from: k  reason: collision with root package name */
    ActionBar f188k;

    /* renamed from: l  reason: collision with root package name */
    MenuInflater f189l;

    /* renamed from: m  reason: collision with root package name */
    private CharSequence f190m;

    /* renamed from: n  reason: collision with root package name */
    private DecorContentParent f191n;

    /* renamed from: n0  reason: collision with root package name */
    private boolean f192n0;

    /* renamed from: o  reason: collision with root package name */
    private ActionMenuPresenterCallback f193o;

    /* renamed from: o0  reason: collision with root package name */
    private boolean f194o0;

    /* renamed from: p  reason: collision with root package name */
    private PanelMenuPresenterCallback f195p;

    /* renamed from: p0  reason: collision with root package name */
    boolean f196p0;

    /* renamed from: q  reason: collision with root package name */
    ActionMode f197q;

    /* renamed from: q0  reason: collision with root package name */
    private Configuration f198q0;

    /* renamed from: r  reason: collision with root package name */
    ActionBarContextView f199r;

    /* renamed from: r0  reason: collision with root package name */
    private int f200r0;

    /* renamed from: s  reason: collision with root package name */
    PopupWindow f201s;

    /* renamed from: s0  reason: collision with root package name */
    private int f202s0;

    /* renamed from: t  reason: collision with root package name */
    Runnable f203t;

    /* renamed from: t0  reason: collision with root package name */
    private boolean f204t0;

    /* renamed from: u  reason: collision with root package name */
    ViewPropertyAnimatorCompat f205u;

    /* renamed from: u0  reason: collision with root package name */
    private boolean f206u0;

    /* renamed from: v  reason: collision with root package name */
    private boolean f207v;

    /* renamed from: v0  reason: collision with root package name */
    private AutoNightModeManager f208v0;

    /* renamed from: w  reason: collision with root package name */
    private boolean f209w;

    /* renamed from: w0  reason: collision with root package name */
    private AutoNightModeManager f210w0;

    /* renamed from: x  reason: collision with root package name */
    ViewGroup f211x;

    /* renamed from: x0  reason: collision with root package name */
    boolean f212x0;

    /* renamed from: y  reason: collision with root package name */
    private TextView f213y;

    /* renamed from: y0  reason: collision with root package name */
    int f214y0;

    /* renamed from: z  reason: collision with root package name */
    private View f215z;

    /* renamed from: z0  reason: collision with root package name */
    private final Runnable f216z0;

    /* loaded from: classes.dex */
    private class ActionBarDrawableToggleImpl implements ActionBarDrawerToggle.Delegate {
        ActionBarDrawableToggleImpl() {
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public Context getActionBarThemedContext() {
            return AppCompatDelegateImpl.this.x();
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public Drawable getThemeUpIndicator() {
            TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(getActionBarThemedContext(), (AttributeSet) null, new int[]{R.attr.homeAsUpIndicator});
            Drawable drawable = obtainStyledAttributes.getDrawable(0);
            obtainStyledAttributes.recycle();
            return drawable;
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public boolean isNavigationVisible() {
            ActionBar supportActionBar = AppCompatDelegateImpl.this.getSupportActionBar();
            return (supportActionBar == null || (supportActionBar.getDisplayOptions() & 4) == 0) ? false : true;
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public void setActionBarDescription(int i2) {
            ActionBar supportActionBar = AppCompatDelegateImpl.this.getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.setHomeActionContentDescription(i2);
            }
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public void setActionBarUpIndicator(Drawable drawable, int i2) {
            ActionBar supportActionBar = AppCompatDelegateImpl.this.getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.setHomeAsUpIndicator(drawable);
                supportActionBar.setHomeActionContentDescription(i2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface ActionBarMenuCallback {
        @Nullable
        View onCreatePanelView(int i2);

        boolean onPreparePanel(int i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class ActionMenuPresenterCallback implements MenuPresenter.Callback {
        ActionMenuPresenterCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public void onCloseMenu(@NonNull MenuBuilder menuBuilder, boolean z3) {
            AppCompatDelegateImpl.this.j(menuBuilder);
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(@NonNull MenuBuilder menuBuilder) {
            Window.Callback E = AppCompatDelegateImpl.this.E();
            if (E != null) {
                E.onMenuOpened(108, menuBuilder);
                return true;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class ActionModeCallbackWrapperV9 implements ActionMode.Callback {

        /* renamed from: a  reason: collision with root package name */
        private ActionMode.Callback f227a;

        public ActionModeCallbackWrapperV9(ActionMode.Callback callback) {
            this.f227a = callback;
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.f227a.onActionItemClicked(actionMode, menuItem);
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.f227a.onCreateActionMode(actionMode, menu);
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            this.f227a.onDestroyActionMode(actionMode);
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl.f201s != null) {
                appCompatDelegateImpl.f185h.getDecorView().removeCallbacks(AppCompatDelegateImpl.this.f203t);
            }
            AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl2.f199r != null) {
                appCompatDelegateImpl2.s();
                AppCompatDelegateImpl appCompatDelegateImpl3 = AppCompatDelegateImpl.this;
                appCompatDelegateImpl3.f205u = ViewCompat.animate(appCompatDelegateImpl3.f199r).alpha(0.0f);
                AppCompatDelegateImpl.this.f205u.setListener(new ViewPropertyAnimatorListenerAdapter() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.ActionModeCallbackWrapperV9.1
                    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
                    public void onAnimationEnd(View view) {
                        AppCompatDelegateImpl.this.f199r.setVisibility(8);
                        AppCompatDelegateImpl appCompatDelegateImpl4 = AppCompatDelegateImpl.this;
                        PopupWindow popupWindow = appCompatDelegateImpl4.f201s;
                        if (popupWindow != null) {
                            popupWindow.dismiss();
                        } else if (appCompatDelegateImpl4.f199r.getParent() instanceof View) {
                            ViewCompat.requestApplyInsets((View) AppCompatDelegateImpl.this.f199r.getParent());
                        }
                        AppCompatDelegateImpl.this.f199r.killMode();
                        AppCompatDelegateImpl.this.f205u.setListener(null);
                        AppCompatDelegateImpl appCompatDelegateImpl5 = AppCompatDelegateImpl.this;
                        appCompatDelegateImpl5.f205u = null;
                        ViewCompat.requestApplyInsets(appCompatDelegateImpl5.f211x);
                    }
                });
            }
            AppCompatDelegateImpl appCompatDelegateImpl4 = AppCompatDelegateImpl.this;
            AppCompatCallback appCompatCallback = appCompatDelegateImpl4.f187j;
            if (appCompatCallback != null) {
                appCompatCallback.onSupportActionModeFinished(appCompatDelegateImpl4.f197q);
            }
            AppCompatDelegateImpl appCompatDelegateImpl5 = AppCompatDelegateImpl.this;
            appCompatDelegateImpl5.f197q = null;
            ViewCompat.requestApplyInsets(appCompatDelegateImpl5.f211x);
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            ViewCompat.requestApplyInsets(AppCompatDelegateImpl.this.f211x);
            return this.f227a.onPrepareActionMode(actionMode, menu);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(17)
    /* loaded from: classes.dex */
    public static class Api17Impl {
        private Api17Impl() {
        }

        static Context a(@NonNull Context context, @NonNull Configuration configuration) {
            return context.createConfigurationContext(configuration);
        }

        static void b(@NonNull Configuration configuration, @NonNull Configuration configuration2, @NonNull Configuration configuration3) {
            int i2 = configuration.densityDpi;
            int i4 = configuration2.densityDpi;
            if (i2 != i4) {
                configuration3.densityDpi = i4;
            }
        }
    }

    @RequiresApi(21)
    /* loaded from: classes.dex */
    static class Api21Impl {
        private Api21Impl() {
        }

        static boolean a(PowerManager powerManager) {
            return powerManager.isPowerSaveMode();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(24)
    /* loaded from: classes.dex */
    public static class Api24Impl {
        private Api24Impl() {
        }

        static void a(@NonNull Configuration configuration, @NonNull Configuration configuration2, @NonNull Configuration configuration3) {
            LocaleList locales = configuration.getLocales();
            LocaleList locales2 = configuration2.getLocales();
            if (locales.equals(locales2)) {
                return;
            }
            configuration3.setLocales(locales2);
            configuration3.locale = configuration2.locale;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(26)
    /* loaded from: classes.dex */
    public static class Api26Impl {
        private Api26Impl() {
        }

        static void a(@NonNull Configuration configuration, @NonNull Configuration configuration2, @NonNull Configuration configuration3) {
            int i2 = configuration.colorMode & 3;
            int i4 = configuration2.colorMode;
            if (i2 != (i4 & 3)) {
                configuration3.colorMode |= i4 & 3;
            }
            int i5 = configuration.colorMode & 12;
            int i6 = configuration2.colorMode;
            if (i5 != (i6 & 12)) {
                configuration3.colorMode |= i6 & 12;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class AutoBatteryNightModeManager extends AutoNightModeManager {

        /* renamed from: c  reason: collision with root package name */
        private final PowerManager f232c;

        AutoBatteryNightModeManager(@NonNull Context context) {
            super();
            this.f232c = (PowerManager) context.getApplicationContext().getSystemService("power");
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        IntentFilter b() {
            if (Build.VERSION.SDK_INT >= 21) {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
                return intentFilter;
            }
            return null;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        public int getApplyableNightMode() {
            return (Build.VERSION.SDK_INT < 21 || !Api21Impl.a(this.f232c)) ? 1 : 2;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        public void onChange() {
            AppCompatDelegateImpl.this.applyDayNight();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting
    /* loaded from: classes.dex */
    public abstract class AutoNightModeManager {

        /* renamed from: a  reason: collision with root package name */
        private BroadcastReceiver f234a;

        AutoNightModeManager() {
        }

        void a() {
            BroadcastReceiver broadcastReceiver = this.f234a;
            if (broadcastReceiver != null) {
                try {
                    AppCompatDelegateImpl.this.f184g.unregisterReceiver(broadcastReceiver);
                } catch (IllegalArgumentException unused) {
                }
                this.f234a = null;
            }
        }

        @Nullable
        abstract IntentFilter b();

        boolean c() {
            return this.f234a != null;
        }

        void d() {
            a();
            IntentFilter b4 = b();
            if (b4 == null || b4.countActions() == 0) {
                return;
            }
            if (this.f234a == null) {
                this.f234a = new BroadcastReceiver() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager.1
                    @Override // android.content.BroadcastReceiver
                    public void onReceive(Context context, Intent intent) {
                        AutoNightModeManager.this.onChange();
                    }
                };
            }
            AppCompatDelegateImpl.this.f184g.registerReceiver(this.f234a, b4);
        }

        abstract int getApplyableNightMode();

        abstract void onChange();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class AutoTimeNightModeManager extends AutoNightModeManager {

        /* renamed from: c  reason: collision with root package name */
        private final TwilightManager f237c;

        AutoTimeNightModeManager(@NonNull TwilightManager twilightManager) {
            super();
            this.f237c = twilightManager;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        IntentFilter b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        public int getApplyableNightMode() {
            return this.f237c.d() ? 2 : 1;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        public void onChange() {
            AppCompatDelegateImpl.this.applyDayNight();
        }
    }

    @RequiresApi(17)
    /* loaded from: classes.dex */
    private static class ContextThemeWrapperCompatApi17Impl {
        private ContextThemeWrapperCompatApi17Impl() {
        }

        static void a(ContextThemeWrapper contextThemeWrapper, Configuration configuration) {
            contextThemeWrapper.applyOverrideConfiguration(configuration);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ListMenuDecorView extends ContentFrameLayout {
        public ListMenuDecorView(Context context) {
            super(context);
        }

        private boolean a(int i2, int i4) {
            return i2 < -5 || i4 < -5 || i2 > getWidth() + 5 || i4 > getHeight() + 5;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.q(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0 && a((int) motionEvent.getX(), (int) motionEvent.getY())) {
                AppCompatDelegateImpl.this.l(0);
                return true;
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public void setBackgroundResource(int i2) {
            setBackgroundDrawable(AppCompatResources.getDrawable(getContext(), i2));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static final class PanelFeatureState {

        /* renamed from: a  reason: collision with root package name */
        int f240a;

        /* renamed from: b  reason: collision with root package name */
        int f241b;

        /* renamed from: c  reason: collision with root package name */
        int f242c;

        /* renamed from: d  reason: collision with root package name */
        int f243d;

        /* renamed from: e  reason: collision with root package name */
        int f244e;

        /* renamed from: f  reason: collision with root package name */
        int f245f;

        /* renamed from: g  reason: collision with root package name */
        ViewGroup f246g;

        /* renamed from: h  reason: collision with root package name */
        View f247h;

        /* renamed from: i  reason: collision with root package name */
        View f248i;

        /* renamed from: j  reason: collision with root package name */
        MenuBuilder f249j;

        /* renamed from: k  reason: collision with root package name */
        ListMenuPresenter f250k;

        /* renamed from: l  reason: collision with root package name */
        Context f251l;

        /* renamed from: m  reason: collision with root package name */
        boolean f252m;

        /* renamed from: n  reason: collision with root package name */
        boolean f253n;

        /* renamed from: o  reason: collision with root package name */
        boolean f254o;

        /* renamed from: p  reason: collision with root package name */
        boolean f255p = false;

        /* renamed from: q  reason: collision with root package name */
        boolean f256q;
        public boolean qwertyMode;

        /* renamed from: r  reason: collision with root package name */
        boolean f257r;

        /* renamed from: s  reason: collision with root package name */
        Bundle f258s;

        /* renamed from: t  reason: collision with root package name */
        Bundle f259t;

        /* JADX INFO: Access modifiers changed from: private */
        @SuppressLint({"BanParcelableUsage"})
        /* loaded from: classes.dex */
        public static class SavedState implements Parcelable {
            public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState.SavedState.1
                @Override // android.os.Parcelable.Creator
                public SavedState[] newArray(int i2) {
                    return new SavedState[i2];
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.ClassLoaderCreator
                public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return SavedState.a(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                public SavedState createFromParcel(Parcel parcel) {
                    return SavedState.a(parcel, null);
                }
            };

            /* renamed from: a  reason: collision with root package name */
            int f260a;

            /* renamed from: b  reason: collision with root package name */
            boolean f261b;

            /* renamed from: c  reason: collision with root package name */
            Bundle f262c;

            SavedState() {
            }

            static SavedState a(Parcel parcel, ClassLoader classLoader) {
                SavedState savedState = new SavedState();
                savedState.f260a = parcel.readInt();
                boolean z3 = parcel.readInt() == 1;
                savedState.f261b = z3;
                if (z3) {
                    savedState.f262c = parcel.readBundle(classLoader);
                }
                return savedState;
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i2) {
                parcel.writeInt(this.f260a);
                parcel.writeInt(this.f261b ? 1 : 0);
                if (this.f261b) {
                    parcel.writeBundle(this.f262c);
                }
            }
        }

        PanelFeatureState(int i2) {
            this.f240a = i2;
        }

        void a() {
            Bundle bundle;
            MenuBuilder menuBuilder = this.f249j;
            if (menuBuilder == null || (bundle = this.f258s) == null) {
                return;
            }
            menuBuilder.restorePresenterStates(bundle);
            this.f258s = null;
        }

        MenuView b(MenuPresenter.Callback callback) {
            if (this.f249j == null) {
                return null;
            }
            if (this.f250k == null) {
                ListMenuPresenter listMenuPresenter = new ListMenuPresenter(this.f251l, R.layout.abc_list_menu_item_layout);
                this.f250k = listMenuPresenter;
                listMenuPresenter.setCallback(callback);
                this.f249j.addMenuPresenter(this.f250k);
            }
            return this.f250k.getMenuView(this.f246g);
        }

        void c(Parcelable parcelable) {
            SavedState savedState = (SavedState) parcelable;
            this.f240a = savedState.f260a;
            this.f257r = savedState.f261b;
            this.f258s = savedState.f262c;
            this.f247h = null;
            this.f246g = null;
        }

        public void clearMenuPresenters() {
            MenuBuilder menuBuilder = this.f249j;
            if (menuBuilder != null) {
                menuBuilder.removeMenuPresenter(this.f250k);
            }
            this.f250k = null;
        }

        Parcelable d() {
            SavedState savedState = new SavedState();
            savedState.f260a = this.f240a;
            savedState.f261b = this.f254o;
            if (this.f249j != null) {
                Bundle bundle = new Bundle();
                savedState.f262c = bundle;
                this.f249j.savePresenterStates(bundle);
            }
            return savedState;
        }

        void e(MenuBuilder menuBuilder) {
            ListMenuPresenter listMenuPresenter;
            MenuBuilder menuBuilder2 = this.f249j;
            if (menuBuilder == menuBuilder2) {
                return;
            }
            if (menuBuilder2 != null) {
                menuBuilder2.removeMenuPresenter(this.f250k);
            }
            this.f249j = menuBuilder;
            if (menuBuilder == null || (listMenuPresenter = this.f250k) == null) {
                return;
            }
            menuBuilder.addMenuPresenter(listMenuPresenter);
        }

        void f(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme newTheme = context.getResources().newTheme();
            newTheme.setTo(context.getTheme());
            newTheme.resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true);
            int i2 = typedValue.resourceId;
            if (i2 != 0) {
                newTheme.applyStyle(i2, true);
            }
            newTheme.resolveAttribute(R.attr.panelMenuListTheme, typedValue, true);
            int i4 = typedValue.resourceId;
            if (i4 != 0) {
                newTheme.applyStyle(i4, true);
            } else {
                newTheme.applyStyle(R.style.Theme_AppCompat_CompactMenu, true);
            }
            androidx.appcompat.view.ContextThemeWrapper contextThemeWrapper = new androidx.appcompat.view.ContextThemeWrapper(context, 0);
            contextThemeWrapper.getTheme().setTo(newTheme);
            this.f251l = contextThemeWrapper;
            TypedArray obtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(R.styleable.AppCompatTheme);
            this.f241b = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTheme_panelBackground, 0);
            this.f245f = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTheme_android_windowAnimationStyle, 0);
            obtainStyledAttributes.recycle();
        }

        public boolean hasPanelItems() {
            if (this.f247h == null) {
                return false;
            }
            return this.f248i != null || this.f250k.getAdapter().getCount() > 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class PanelMenuPresenterCallback implements MenuPresenter.Callback {
        PanelMenuPresenterCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public void onCloseMenu(@NonNull MenuBuilder menuBuilder, boolean z3) {
            MenuBuilder rootMenu = menuBuilder.getRootMenu();
            boolean z4 = rootMenu != menuBuilder;
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (z4) {
                menuBuilder = rootMenu;
            }
            PanelFeatureState v3 = appCompatDelegateImpl.v(menuBuilder);
            if (v3 != null) {
                if (z4) {
                    AppCompatDelegateImpl.this.i(v3.f240a, v3, rootMenu);
                    AppCompatDelegateImpl.this.m(v3, true);
                    return;
                }
                AppCompatDelegateImpl.this.m(v3, z3);
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(@NonNull MenuBuilder menuBuilder) {
            Window.Callback E;
            if (menuBuilder == menuBuilder.getRootMenu()) {
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                if (!appCompatDelegateImpl.C || (E = appCompatDelegateImpl.E()) == null || AppCompatDelegateImpl.this.f196p0) {
                    return true;
                }
                E.onMenuOpened(108, menuBuilder);
                return true;
            }
            return true;
        }
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        boolean z3 = i2 < 21;
        G0 = z3;
        H0 = new int[]{16842836};
        I0 = !"robolectric".equals(Build.FINGERPRINT);
        J0 = i2 >= 17;
        if (!z3 || K0) {
            return;
        }
        final Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.1
            private boolean a(Throwable th) {
                String message;
                if (!(th instanceof Resources.NotFoundException) || (message = th.getMessage()) == null) {
                    return false;
                }
                return message.contains("drawable") || message.contains("Drawable");
            }

            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(@NonNull Thread thread, @NonNull Throwable th) {
                if (a(th)) {
                    Resources.NotFoundException notFoundException = new Resources.NotFoundException(th.getMessage() + AppCompatDelegateImpl.L0);
                    notFoundException.initCause(th.getCause());
                    notFoundException.setStackTrace(th.getStackTrace());
                    defaultUncaughtExceptionHandler.uncaughtException(thread, notFoundException);
                    return;
                }
                defaultUncaughtExceptionHandler.uncaughtException(thread, th);
            }
        });
        K0 = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatDelegateImpl(Activity activity, AppCompatCallback appCompatCallback) {
        this(activity, null, appCompatCallback, activity);
    }

    private AutoNightModeManager A(@NonNull Context context) {
        if (this.f208v0 == null) {
            this.f208v0 = new AutoTimeNightModeManager(TwilightManager.a(context));
        }
        return this.f208v0;
    }

    private void F() {
        t();
        if (this.C && this.f188k == null) {
            Object obj = this.f183f;
            if (obj instanceof Activity) {
                this.f188k = new WindowDecorActionBar((Activity) this.f183f, this.D);
            } else if (obj instanceof Dialog) {
                this.f188k = new WindowDecorActionBar((Dialog) this.f183f);
            }
            ActionBar actionBar = this.f188k;
            if (actionBar != null) {
                actionBar.setDefaultDisplayHomeAsUpEnabled(this.A0);
            }
        }
    }

    private boolean G(PanelFeatureState panelFeatureState) {
        View view = panelFeatureState.f248i;
        if (view != null) {
            panelFeatureState.f247h = view;
            return true;
        } else if (panelFeatureState.f249j == null) {
            return false;
        } else {
            if (this.f195p == null) {
                this.f195p = new PanelMenuPresenterCallback();
            }
            View view2 = (View) panelFeatureState.b(this.f195p);
            panelFeatureState.f247h = view2;
            return view2 != null;
        }
    }

    private boolean H(PanelFeatureState panelFeatureState) {
        panelFeatureState.f(x());
        panelFeatureState.f246g = new ListMenuDecorView(panelFeatureState.f251l);
        panelFeatureState.f242c = 81;
        return true;
    }

    private boolean I(PanelFeatureState panelFeatureState) {
        Context context = this.f184g;
        int i2 = panelFeatureState.f240a;
        if ((i2 == 0 || i2 == 108) && this.f191n != null) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme theme = context.getTheme();
            theme.resolveAttribute(R.attr.actionBarTheme, typedValue, true);
            Resources.Theme theme2 = null;
            if (typedValue.resourceId != 0) {
                theme2 = context.getResources().newTheme();
                theme2.setTo(theme);
                theme2.applyStyle(typedValue.resourceId, true);
                theme2.resolveAttribute(R.attr.actionBarWidgetTheme, typedValue, true);
            } else {
                theme.resolveAttribute(R.attr.actionBarWidgetTheme, typedValue, true);
            }
            if (typedValue.resourceId != 0) {
                if (theme2 == null) {
                    theme2 = context.getResources().newTheme();
                    theme2.setTo(theme);
                }
                theme2.applyStyle(typedValue.resourceId, true);
            }
            if (theme2 != null) {
                androidx.appcompat.view.ContextThemeWrapper contextThemeWrapper = new androidx.appcompat.view.ContextThemeWrapper(context, 0);
                contextThemeWrapper.getTheme().setTo(theme2);
                context = contextThemeWrapper;
            }
        }
        MenuBuilder menuBuilder = new MenuBuilder(context);
        menuBuilder.setCallback(this);
        panelFeatureState.e(menuBuilder);
        return true;
    }

    private void J(int i2) {
        this.f214y0 = (1 << i2) | this.f214y0;
        if (this.f212x0) {
            return;
        }
        ViewCompat.postOnAnimation(this.f185h.getDecorView(), this.f216z0);
        this.f212x0 = true;
    }

    private boolean K() {
        if (!this.f206u0 && (this.f183f instanceof Activity)) {
            PackageManager packageManager = this.f184g.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            try {
                int i2 = Build.VERSION.SDK_INT;
                ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(this.f184g, this.f183f.getClass()), i2 >= 29 ? 269221888 : i2 >= 24 ? 786432 : 0);
                this.f204t0 = (activityInfo == null || (activityInfo.configChanges & 512) == 0) ? false : true;
            } catch (PackageManager.NameNotFoundException unused) {
                this.f204t0 = false;
            }
        }
        this.f206u0 = true;
        return this.f204t0;
    }

    private boolean O(int i2, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() == 0) {
            PanelFeatureState B = B(i2, true);
            if (B.f254o) {
                return false;
            }
            return Y(B, keyEvent);
        }
        return false;
    }

    private boolean R(int i2, KeyEvent keyEvent) {
        boolean z3;
        AudioManager audioManager;
        DecorContentParent decorContentParent;
        if (this.f197q != null) {
            return false;
        }
        boolean z4 = true;
        PanelFeatureState B = B(i2, true);
        if (i2 == 0 && (decorContentParent = this.f191n) != null && decorContentParent.canShowOverflowMenu() && !ViewConfiguration.get(this.f184g).hasPermanentMenuKey()) {
            if (!this.f191n.isOverflowMenuShowing()) {
                if (!this.f196p0 && Y(B, keyEvent)) {
                    z4 = this.f191n.showOverflowMenu();
                }
                z4 = false;
            } else {
                z4 = this.f191n.hideOverflowMenu();
            }
        } else {
            boolean z5 = B.f254o;
            if (!z5 && !B.f253n) {
                if (B.f252m) {
                    if (B.f256q) {
                        B.f252m = false;
                        z3 = Y(B, keyEvent);
                    } else {
                        z3 = true;
                    }
                    if (z3) {
                        V(B, keyEvent);
                    }
                }
                z4 = false;
            } else {
                m(B, true);
                z4 = z5;
            }
        }
        if (z4 && (audioManager = (AudioManager) this.f184g.getApplicationContext().getSystemService("audio")) != null) {
            audioManager.playSoundEffect(0);
        }
        return z4;
    }

    private void V(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        int i2;
        ViewGroup.LayoutParams layoutParams;
        if (panelFeatureState.f254o || this.f196p0) {
            return;
        }
        if (panelFeatureState.f240a == 0) {
            if ((this.f184g.getResources().getConfiguration().screenLayout & 15) == 4) {
                return;
            }
        }
        Window.Callback E = E();
        if (E != null && !E.onMenuOpened(panelFeatureState.f240a, panelFeatureState.f249j)) {
            m(panelFeatureState, true);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f184g.getSystemService("window");
        if (windowManager != null && Y(panelFeatureState, keyEvent)) {
            ViewGroup viewGroup = panelFeatureState.f246g;
            if (viewGroup != null && !panelFeatureState.f255p) {
                View view = panelFeatureState.f248i;
                if (view != null && (layoutParams = view.getLayoutParams()) != null && layoutParams.width == -1) {
                    i2 = -1;
                    panelFeatureState.f253n = false;
                    WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams(i2, -2, panelFeatureState.f243d, panelFeatureState.f244e, 1002, 8519680, -3);
                    layoutParams2.gravity = panelFeatureState.f242c;
                    layoutParams2.windowAnimations = panelFeatureState.f245f;
                    windowManager.addView(panelFeatureState.f246g, layoutParams2);
                    panelFeatureState.f254o = true;
                }
            } else {
                if (viewGroup == null) {
                    if (!H(panelFeatureState) || panelFeatureState.f246g == null) {
                        return;
                    }
                } else if (panelFeatureState.f255p && viewGroup.getChildCount() > 0) {
                    panelFeatureState.f246g.removeAllViews();
                }
                if (G(panelFeatureState) && panelFeatureState.hasPanelItems()) {
                    ViewGroup.LayoutParams layoutParams3 = panelFeatureState.f247h.getLayoutParams();
                    if (layoutParams3 == null) {
                        layoutParams3 = new ViewGroup.LayoutParams(-2, -2);
                    }
                    panelFeatureState.f246g.setBackgroundResource(panelFeatureState.f241b);
                    ViewParent parent = panelFeatureState.f247h.getParent();
                    if (parent instanceof ViewGroup) {
                        ((ViewGroup) parent).removeView(panelFeatureState.f247h);
                    }
                    panelFeatureState.f246g.addView(panelFeatureState.f247h, layoutParams3);
                    if (!panelFeatureState.f247h.hasFocus()) {
                        panelFeatureState.f247h.requestFocus();
                    }
                } else {
                    panelFeatureState.f255p = true;
                    return;
                }
            }
            i2 = -2;
            panelFeatureState.f253n = false;
            WindowManager.LayoutParams layoutParams22 = new WindowManager.LayoutParams(i2, -2, panelFeatureState.f243d, panelFeatureState.f244e, 1002, 8519680, -3);
            layoutParams22.gravity = panelFeatureState.f242c;
            layoutParams22.windowAnimations = panelFeatureState.f245f;
            windowManager.addView(panelFeatureState.f246g, layoutParams22);
            panelFeatureState.f254o = true;
        }
    }

    private boolean X(PanelFeatureState panelFeatureState, int i2, KeyEvent keyEvent, int i4) {
        MenuBuilder menuBuilder;
        boolean z3 = false;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((panelFeatureState.f252m || Y(panelFeatureState, keyEvent)) && (menuBuilder = panelFeatureState.f249j) != null) {
            z3 = menuBuilder.performShortcut(i2, keyEvent, i4);
        }
        if (z3 && (i4 & 1) == 0 && this.f191n == null) {
            m(panelFeatureState, true);
        }
        return z3;
    }

    private boolean Y(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        DecorContentParent decorContentParent;
        DecorContentParent decorContentParent2;
        DecorContentParent decorContentParent3;
        if (this.f196p0) {
            return false;
        }
        if (panelFeatureState.f252m) {
            return true;
        }
        PanelFeatureState panelFeatureState2 = this.J;
        if (panelFeatureState2 != null && panelFeatureState2 != panelFeatureState) {
            m(panelFeatureState2, false);
        }
        Window.Callback E = E();
        if (E != null) {
            panelFeatureState.f248i = E.onCreatePanelView(panelFeatureState.f240a);
        }
        int i2 = panelFeatureState.f240a;
        boolean z3 = i2 == 0 || i2 == 108;
        if (z3 && (decorContentParent3 = this.f191n) != null) {
            decorContentParent3.setMenuPrepared();
        }
        if (panelFeatureState.f248i == null && (!z3 || !(W() instanceof ToolbarActionBar))) {
            MenuBuilder menuBuilder = panelFeatureState.f249j;
            if (menuBuilder == null || panelFeatureState.f256q) {
                if (menuBuilder == null && (!I(panelFeatureState) || panelFeatureState.f249j == null)) {
                    return false;
                }
                if (z3 && this.f191n != null) {
                    if (this.f193o == null) {
                        this.f193o = new ActionMenuPresenterCallback();
                    }
                    this.f191n.setMenu(panelFeatureState.f249j, this.f193o);
                }
                panelFeatureState.f249j.stopDispatchingItemsChanged();
                if (!E.onCreatePanelMenu(panelFeatureState.f240a, panelFeatureState.f249j)) {
                    panelFeatureState.e(null);
                    if (z3 && (decorContentParent = this.f191n) != null) {
                        decorContentParent.setMenu(null, this.f193o);
                    }
                    return false;
                }
                panelFeatureState.f256q = false;
            }
            panelFeatureState.f249j.stopDispatchingItemsChanged();
            Bundle bundle = panelFeatureState.f259t;
            if (bundle != null) {
                panelFeatureState.f249j.restoreActionViewStates(bundle);
                panelFeatureState.f259t = null;
            }
            if (!E.onPreparePanel(0, panelFeatureState.f248i, panelFeatureState.f249j)) {
                if (z3 && (decorContentParent2 = this.f191n) != null) {
                    decorContentParent2.setMenu(null, this.f193o);
                }
                panelFeatureState.f249j.startDispatchingItemsChanged();
                return false;
            }
            boolean z4 = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            panelFeatureState.qwertyMode = z4;
            panelFeatureState.f249j.setQwertyMode(z4);
            panelFeatureState.f249j.startDispatchingItemsChanged();
        }
        panelFeatureState.f252m = true;
        panelFeatureState.f253n = false;
        this.J = panelFeatureState;
        return true;
    }

    private void Z(boolean z3) {
        DecorContentParent decorContentParent = this.f191n;
        if (decorContentParent != null && decorContentParent.canShowOverflowMenu() && (!ViewConfiguration.get(this.f184g).hasPermanentMenuKey() || this.f191n.isOverflowMenuShowPending())) {
            Window.Callback E = E();
            if (this.f191n.isOverflowMenuShowing() && z3) {
                this.f191n.hideOverflowMenu();
                if (this.f196p0) {
                    return;
                }
                E.onPanelClosed(108, B(0, true).f249j);
                return;
            } else if (E == null || this.f196p0) {
                return;
            } else {
                if (this.f212x0 && (this.f214y0 & 1) != 0) {
                    this.f185h.getDecorView().removeCallbacks(this.f216z0);
                    this.f216z0.run();
                }
                PanelFeatureState B = B(0, true);
                MenuBuilder menuBuilder = B.f249j;
                if (menuBuilder == null || B.f256q || !E.onPreparePanel(0, B.f248i, menuBuilder)) {
                    return;
                }
                E.onMenuOpened(108, B.f249j);
                this.f191n.showOverflowMenu();
                return;
            }
        }
        PanelFeatureState B2 = B(0, true);
        B2.f255p = true;
        m(B2, false);
        V(B2, null);
    }

    private int a0(int i2) {
        if (i2 == 8) {
            return 108;
        }
        if (i2 == 9) {
            return 109;
        }
        return i2;
    }

    private boolean c0(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.f185h.getDecorView();
        while (viewParent != null) {
            if (viewParent == decorView || !(viewParent instanceof View) || ViewCompat.isAttachedToWindow((View) viewParent)) {
                return false;
            }
            viewParent = viewParent.getParent();
        }
        return true;
    }

    private boolean e(boolean z3) {
        if (this.f196p0) {
            return false;
        }
        int h4 = h();
        boolean g02 = g0(L(this.f184g, h4), z3);
        if (h4 == 0) {
            A(this.f184g).d();
        } else {
            AutoNightModeManager autoNightModeManager = this.f208v0;
            if (autoNightModeManager != null) {
                autoNightModeManager.a();
            }
        }
        if (h4 == 3) {
            y(this.f184g).d();
        } else {
            AutoNightModeManager autoNightModeManager2 = this.f210w0;
            if (autoNightModeManager2 != null) {
                autoNightModeManager2.a();
            }
        }
        return g02;
    }

    private void e0() {
        if (this.f209w) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    private void f() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.f211x.findViewById(16908290);
        View decorView = this.f185h.getDecorView();
        contentFrameLayout.setDecorPadding(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray obtainStyledAttributes = this.f184g.obtainStyledAttributes(R.styleable.AppCompatTheme);
        obtainStyledAttributes.getValue(R.styleable.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        obtainStyledAttributes.getValue(R.styleable.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        int i2 = R.styleable.AppCompatTheme_windowFixedWidthMajor;
        if (obtainStyledAttributes.hasValue(i2)) {
            obtainStyledAttributes.getValue(i2, contentFrameLayout.getFixedWidthMajor());
        }
        int i4 = R.styleable.AppCompatTheme_windowFixedWidthMinor;
        if (obtainStyledAttributes.hasValue(i4)) {
            obtainStyledAttributes.getValue(i4, contentFrameLayout.getFixedWidthMinor());
        }
        int i5 = R.styleable.AppCompatTheme_windowFixedHeightMajor;
        if (obtainStyledAttributes.hasValue(i5)) {
            obtainStyledAttributes.getValue(i5, contentFrameLayout.getFixedHeightMajor());
        }
        int i6 = R.styleable.AppCompatTheme_windowFixedHeightMinor;
        if (obtainStyledAttributes.hasValue(i6)) {
            obtainStyledAttributes.getValue(i6, contentFrameLayout.getFixedHeightMinor());
        }
        obtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    @Nullable
    private AppCompatActivity f0() {
        for (Context context = this.f184g; context != null; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof AppCompatActivity) {
                return (AppCompatActivity) context;
            }
            if (!(context instanceof ContextWrapper)) {
                break;
            }
        }
        return null;
    }

    private void g(@NonNull Window window) {
        if (this.f185h == null) {
            Window.Callback callback = window.getCallback();
            if (!(callback instanceof AppCompatWindowCallback)) {
                AppCompatWindowCallback appCompatWindowCallback = new AppCompatWindowCallback(callback);
                this.f186i = appCompatWindowCallback;
                window.setCallback(appCompatWindowCallback);
                TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.f184g, (AttributeSet) null, H0);
                Drawable drawableIfKnown = obtainStyledAttributes.getDrawableIfKnown(0);
                if (drawableIfKnown != null) {
                    window.setBackgroundDrawable(drawableIfKnown);
                }
                obtainStyledAttributes.recycle();
                this.f185h = window;
                return;
            }
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        throw new IllegalStateException("AppCompat has already installed itself into the Window");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean g0(int r7, boolean r8) {
        /*
            r6 = this;
            android.content.Context r0 = r6.f184g
            r1 = 0
            android.content.res.Configuration r0 = r6.n(r0, r7, r1)
            boolean r2 = r6.K()
            android.content.res.Configuration r3 = r6.f198q0
            if (r3 != 0) goto L19
            android.content.Context r3 = r6.f184g
            android.content.res.Resources r3 = r3.getResources()
            android.content.res.Configuration r3 = r3.getConfiguration()
        L19:
            int r3 = r3.uiMode
            r3 = r3 & 48
            int r0 = r0.uiMode
            r0 = r0 & 48
            r4 = 1
            if (r3 == r0) goto L4b
            if (r8 == 0) goto L4b
            if (r2 != 0) goto L4b
            boolean r8 = r6.f192n0
            if (r8 == 0) goto L4b
            boolean r8 = androidx.appcompat.app.AppCompatDelegateImpl.I0
            if (r8 != 0) goto L34
            boolean r8 = r6.f194o0
            if (r8 == 0) goto L4b
        L34:
            java.lang.Object r8 = r6.f183f
            boolean r5 = r8 instanceof android.app.Activity
            if (r5 == 0) goto L4b
            android.app.Activity r8 = (android.app.Activity) r8
            boolean r8 = r8.isChild()
            if (r8 != 0) goto L4b
            java.lang.Object r8 = r6.f183f
            android.app.Activity r8 = (android.app.Activity) r8
            androidx.core.app.ActivityCompat.recreate(r8)
            r8 = 1
            goto L4c
        L4b:
            r8 = 0
        L4c:
            if (r8 != 0) goto L54
            if (r3 == r0) goto L54
            r6.h0(r0, r2, r1)
            goto L55
        L54:
            r4 = r8
        L55:
            if (r4 == 0) goto L62
            java.lang.Object r8 = r6.f183f
            boolean r0 = r8 instanceof androidx.appcompat.app.AppCompatActivity
            if (r0 == 0) goto L62
            androidx.appcompat.app.AppCompatActivity r8 = (androidx.appcompat.app.AppCompatActivity) r8
            r8.onNightModeChanged(r7)
        L62:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.g0(int, boolean):boolean");
    }

    private int h() {
        int i2 = this.f200r0;
        return i2 != -100 ? i2 : AppCompatDelegate.getDefaultNightMode();
    }

    private void h0(int i2, boolean z3, @Nullable Configuration configuration) {
        Resources resources = this.f184g.getResources();
        Configuration configuration2 = new Configuration(resources.getConfiguration());
        if (configuration != null) {
            configuration2.updateFrom(configuration);
        }
        configuration2.uiMode = i2 | (resources.getConfiguration().uiMode & (-49));
        resources.updateConfiguration(configuration2, null);
        int i4 = Build.VERSION.SDK_INT;
        if (i4 < 26) {
            ResourcesFlusher.a(resources);
        }
        int i5 = this.f202s0;
        if (i5 != 0) {
            this.f184g.setTheme(i5);
            if (i4 >= 23) {
                this.f184g.getTheme().applyStyle(this.f202s0, true);
            }
        }
        if (z3) {
            Object obj = this.f183f;
            if (obj instanceof Activity) {
                Activity activity = (Activity) obj;
                if (activity instanceof LifecycleOwner) {
                    if (((LifecycleOwner) activity).getLifecycle().getCurrentState().isAtLeast(Lifecycle.State.CREATED)) {
                        activity.onConfigurationChanged(configuration2);
                    }
                } else if (!this.f194o0 || this.f196p0) {
                } else {
                    activity.onConfigurationChanged(configuration2);
                }
            }
        }
    }

    private void j0(View view) {
        int color;
        if ((ViewCompat.getWindowSystemUiVisibility(view) & 8192) != 0) {
            color = ContextCompat.getColor(this.f184g, R.color.abc_decor_view_status_guard_light);
        } else {
            color = ContextCompat.getColor(this.f184g, R.color.abc_decor_view_status_guard);
        }
        view.setBackgroundColor(color);
    }

    private void k() {
        AutoNightModeManager autoNightModeManager = this.f208v0;
        if (autoNightModeManager != null) {
            autoNightModeManager.a();
        }
        AutoNightModeManager autoNightModeManager2 = this.f210w0;
        if (autoNightModeManager2 != null) {
            autoNightModeManager2.a();
        }
    }

    @NonNull
    private Configuration n(@NonNull Context context, int i2, @Nullable Configuration configuration) {
        int i4;
        if (i2 != 1) {
            i4 = i2 != 2 ? context.getApplicationContext().getResources().getConfiguration().uiMode & 48 : 32;
        } else {
            i4 = 16;
        }
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i4 | (configuration2.uiMode & (-49));
        return configuration2;
    }

    private ViewGroup o() {
        ViewGroup viewGroup;
        Context context;
        TypedArray obtainStyledAttributes = this.f184g.obtainStyledAttributes(R.styleable.AppCompatTheme);
        int i2 = R.styleable.AppCompatTheme_windowActionBar;
        if (obtainStyledAttributes.hasValue(i2)) {
            if (obtainStyledAttributes.getBoolean(R.styleable.AppCompatTheme_windowNoTitle, false)) {
                requestWindowFeature(1);
            } else if (obtainStyledAttributes.getBoolean(i2, false)) {
                requestWindowFeature(108);
            }
            if (obtainStyledAttributes.getBoolean(R.styleable.AppCompatTheme_windowActionBarOverlay, false)) {
                requestWindowFeature(109);
            }
            if (obtainStyledAttributes.getBoolean(R.styleable.AppCompatTheme_windowActionModeOverlay, false)) {
                requestWindowFeature(10);
            }
            this.F = obtainStyledAttributes.getBoolean(R.styleable.AppCompatTheme_android_windowIsFloating, false);
            obtainStyledAttributes.recycle();
            u();
            this.f185h.getDecorView();
            LayoutInflater from = LayoutInflater.from(this.f184g);
            if (!this.G) {
                if (this.F) {
                    viewGroup = (ViewGroup) from.inflate(R.layout.abc_dialog_title_material, (ViewGroup) null);
                    this.D = false;
                    this.C = false;
                } else if (this.C) {
                    TypedValue typedValue = new TypedValue();
                    this.f184g.getTheme().resolveAttribute(R.attr.actionBarTheme, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        context = new androidx.appcompat.view.ContextThemeWrapper(this.f184g, typedValue.resourceId);
                    } else {
                        context = this.f184g;
                    }
                    viewGroup = (ViewGroup) LayoutInflater.from(context).inflate(R.layout.abc_screen_toolbar, (ViewGroup) null);
                    DecorContentParent decorContentParent = (DecorContentParent) viewGroup.findViewById(R.id.decor_content_parent);
                    this.f191n = decorContentParent;
                    decorContentParent.setWindowCallback(E());
                    if (this.D) {
                        this.f191n.initFeature(109);
                    }
                    if (this.A) {
                        this.f191n.initFeature(2);
                    }
                    if (this.B) {
                        this.f191n.initFeature(5);
                    }
                } else {
                    viewGroup = null;
                }
            } else {
                viewGroup = this.E ? (ViewGroup) from.inflate(R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) from.inflate(R.layout.abc_screen_simple, (ViewGroup) null);
            }
            if (viewGroup != null) {
                if (Build.VERSION.SDK_INT >= 21) {
                    ViewCompat.setOnApplyWindowInsetsListener(viewGroup, new OnApplyWindowInsetsListener() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.3
                        @Override // androidx.core.view.OnApplyWindowInsetsListener
                        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                            int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
                            int i02 = AppCompatDelegateImpl.this.i0(windowInsetsCompat, null);
                            if (systemWindowInsetTop != i02) {
                                windowInsetsCompat = windowInsetsCompat.replaceSystemWindowInsets(windowInsetsCompat.getSystemWindowInsetLeft(), i02, windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
                            }
                            return ViewCompat.onApplyWindowInsets(view, windowInsetsCompat);
                        }
                    });
                } else if (viewGroup instanceof FitWindowsViewGroup) {
                    ((FitWindowsViewGroup) viewGroup).setOnFitSystemWindowsListener(new FitWindowsViewGroup.OnFitSystemWindowsListener() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.4
                        @Override // androidx.appcompat.widget.FitWindowsViewGroup.OnFitSystemWindowsListener
                        public void onFitSystemWindows(Rect rect) {
                            rect.top = AppCompatDelegateImpl.this.i0(null, rect);
                        }
                    });
                }
                if (this.f191n == null) {
                    this.f213y = (TextView) viewGroup.findViewById(R.id.title);
                }
                ViewUtils.makeOptionalFitsSystemWindows(viewGroup);
                ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(R.id.action_bar_activity_content);
                ViewGroup viewGroup2 = (ViewGroup) this.f185h.findViewById(16908290);
                if (viewGroup2 != null) {
                    while (viewGroup2.getChildCount() > 0) {
                        View childAt = viewGroup2.getChildAt(0);
                        viewGroup2.removeViewAt(0);
                        contentFrameLayout.addView(childAt);
                    }
                    viewGroup2.setId(-1);
                    contentFrameLayout.setId(16908290);
                    if (viewGroup2 instanceof FrameLayout) {
                        ((FrameLayout) viewGroup2).setForeground(null);
                    }
                }
                this.f185h.setContentView(viewGroup);
                contentFrameLayout.setAttachListener(new ContentFrameLayout.OnAttachListener() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.5
                    @Override // androidx.appcompat.widget.ContentFrameLayout.OnAttachListener
                    public void onAttachedFromWindow() {
                    }

                    @Override // androidx.appcompat.widget.ContentFrameLayout.OnAttachListener
                    public void onDetachedFromWindow() {
                        AppCompatDelegateImpl.this.p();
                    }
                });
                return viewGroup;
            }
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.C + ", windowActionBarOverlay: " + this.D + ", android:windowIsFloating: " + this.F + ", windowActionModeOverlay: " + this.E + ", windowNoTitle: " + this.G + " }");
        }
        obtainStyledAttributes.recycle();
        throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
    }

    private void t() {
        if (this.f209w) {
            return;
        }
        this.f211x = o();
        CharSequence D = D();
        if (!TextUtils.isEmpty(D)) {
            DecorContentParent decorContentParent = this.f191n;
            if (decorContentParent != null) {
                decorContentParent.setWindowTitle(D);
            } else if (W() != null) {
                W().setWindowTitle(D);
            } else {
                TextView textView = this.f213y;
                if (textView != null) {
                    textView.setText(D);
                }
            }
        }
        f();
        U(this.f211x);
        this.f209w = true;
        PanelFeatureState B = B(0, false);
        if (this.f196p0) {
            return;
        }
        if (B == null || B.f249j == null) {
            J(108);
        }
    }

    private void u() {
        if (this.f185h == null) {
            Object obj = this.f183f;
            if (obj instanceof Activity) {
                g(((Activity) obj).getWindow());
            }
        }
        if (this.f185h == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    @NonNull
    private static Configuration w(@NonNull Configuration configuration, @Nullable Configuration configuration2) {
        Configuration configuration3 = new Configuration();
        configuration3.fontScale = 0.0f;
        if (configuration2 != null && configuration.diff(configuration2) != 0) {
            float f4 = configuration.fontScale;
            float f5 = configuration2.fontScale;
            if (f4 != f5) {
                configuration3.fontScale = f5;
            }
            int i2 = configuration.mcc;
            int i4 = configuration2.mcc;
            if (i2 != i4) {
                configuration3.mcc = i4;
            }
            int i5 = configuration.mnc;
            int i6 = configuration2.mnc;
            if (i5 != i6) {
                configuration3.mnc = i6;
            }
            int i7 = Build.VERSION.SDK_INT;
            if (i7 >= 24) {
                Api24Impl.a(configuration, configuration2, configuration3);
            } else if (!ObjectsCompat.equals(configuration.locale, configuration2.locale)) {
                configuration3.locale = configuration2.locale;
            }
            int i8 = configuration.touchscreen;
            int i9 = configuration2.touchscreen;
            if (i8 != i9) {
                configuration3.touchscreen = i9;
            }
            int i10 = configuration.keyboard;
            int i11 = configuration2.keyboard;
            if (i10 != i11) {
                configuration3.keyboard = i11;
            }
            int i12 = configuration.keyboardHidden;
            int i13 = configuration2.keyboardHidden;
            if (i12 != i13) {
                configuration3.keyboardHidden = i13;
            }
            int i14 = configuration.navigation;
            int i15 = configuration2.navigation;
            if (i14 != i15) {
                configuration3.navigation = i15;
            }
            int i16 = configuration.navigationHidden;
            int i17 = configuration2.navigationHidden;
            if (i16 != i17) {
                configuration3.navigationHidden = i17;
            }
            int i18 = configuration.orientation;
            int i19 = configuration2.orientation;
            if (i18 != i19) {
                configuration3.orientation = i19;
            }
            int i20 = configuration.screenLayout & 15;
            int i21 = configuration2.screenLayout;
            if (i20 != (i21 & 15)) {
                configuration3.screenLayout |= i21 & 15;
            }
            int i22 = configuration.screenLayout & 192;
            int i23 = configuration2.screenLayout;
            if (i22 != (i23 & 192)) {
                configuration3.screenLayout |= i23 & 192;
            }
            int i24 = configuration.screenLayout & 48;
            int i25 = configuration2.screenLayout;
            if (i24 != (i25 & 48)) {
                configuration3.screenLayout |= i25 & 48;
            }
            int i26 = configuration.screenLayout & 768;
            int i27 = configuration2.screenLayout;
            if (i26 != (i27 & 768)) {
                configuration3.screenLayout |= i27 & 768;
            }
            if (i7 >= 26) {
                Api26Impl.a(configuration, configuration2, configuration3);
            }
            int i28 = configuration.uiMode & 15;
            int i29 = configuration2.uiMode;
            if (i28 != (i29 & 15)) {
                configuration3.uiMode |= i29 & 15;
            }
            int i30 = configuration.uiMode & 48;
            int i31 = configuration2.uiMode;
            if (i30 != (i31 & 48)) {
                configuration3.uiMode |= i31 & 48;
            }
            int i32 = configuration.screenWidthDp;
            int i33 = configuration2.screenWidthDp;
            if (i32 != i33) {
                configuration3.screenWidthDp = i33;
            }
            int i34 = configuration.screenHeightDp;
            int i35 = configuration2.screenHeightDp;
            if (i34 != i35) {
                configuration3.screenHeightDp = i35;
            }
            int i36 = configuration.smallestScreenWidthDp;
            int i37 = configuration2.smallestScreenWidthDp;
            if (i36 != i37) {
                configuration3.smallestScreenWidthDp = i37;
            }
            if (i7 >= 17) {
                Api17Impl.b(configuration, configuration2, configuration3);
            }
        }
        return configuration3;
    }

    private AutoNightModeManager y(@NonNull Context context) {
        if (this.f210w0 == null) {
            this.f210w0 = new AutoBatteryNightModeManager(context);
        }
        return this.f210w0;
    }

    protected PanelFeatureState B(int i2, boolean z3) {
        PanelFeatureState[] panelFeatureStateArr = this.I;
        if (panelFeatureStateArr == null || panelFeatureStateArr.length <= i2) {
            PanelFeatureState[] panelFeatureStateArr2 = new PanelFeatureState[i2 + 1];
            if (panelFeatureStateArr != null) {
                System.arraycopy(panelFeatureStateArr, 0, panelFeatureStateArr2, 0, panelFeatureStateArr.length);
            }
            this.I = panelFeatureStateArr2;
            panelFeatureStateArr = panelFeatureStateArr2;
        }
        PanelFeatureState panelFeatureState = panelFeatureStateArr[i2];
        if (panelFeatureState == null) {
            PanelFeatureState panelFeatureState2 = new PanelFeatureState(i2);
            panelFeatureStateArr[i2] = panelFeatureState2;
            return panelFeatureState2;
        }
        return panelFeatureState;
    }

    ViewGroup C() {
        return this.f211x;
    }

    final CharSequence D() {
        Object obj = this.f183f;
        if (obj instanceof Activity) {
            return ((Activity) obj).getTitle();
        }
        return this.f190m;
    }

    final Window.Callback E() {
        return this.f185h.getCallback();
    }

    int L(@NonNull Context context, int i2) {
        if (i2 != -100) {
            if (i2 != -1) {
                if (i2 == 0) {
                    if (Build.VERSION.SDK_INT < 23 || ((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() != 0) {
                        return A(context).getApplyableNightMode();
                    }
                    return -1;
                } else if (i2 != 1 && i2 != 2) {
                    if (i2 == 3) {
                        return y(context).getApplyableNightMode();
                    }
                    throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                }
            }
            return i2;
        }
        return -1;
    }

    boolean M() {
        ActionMode actionMode = this.f197q;
        if (actionMode != null) {
            actionMode.finish();
            return true;
        }
        ActionBar supportActionBar = getSupportActionBar();
        return supportActionBar != null && supportActionBar.collapseActionView();
    }

    boolean N(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            this.K = (keyEvent.getFlags() & 128) != 0;
        } else if (i2 == 82) {
            O(0, keyEvent);
            return true;
        }
        return false;
    }

    boolean P(int i2, KeyEvent keyEvent) {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar == null || !supportActionBar.onKeyShortcut(i2, keyEvent)) {
            PanelFeatureState panelFeatureState = this.J;
            if (panelFeatureState != null && X(panelFeatureState, keyEvent.getKeyCode(), keyEvent, 1)) {
                PanelFeatureState panelFeatureState2 = this.J;
                if (panelFeatureState2 != null) {
                    panelFeatureState2.f253n = true;
                }
                return true;
            }
            if (this.J == null) {
                PanelFeatureState B = B(0, true);
                Y(B, keyEvent);
                boolean X = X(B, keyEvent.getKeyCode(), keyEvent, 1);
                B.f252m = false;
                if (X) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    boolean Q(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            boolean z3 = this.K;
            this.K = false;
            PanelFeatureState B = B(0, false);
            if (B != null && B.f254o) {
                if (!z3) {
                    m(B, true);
                }
                return true;
            } else if (M()) {
                return true;
            }
        } else if (i2 == 82) {
            R(0, keyEvent);
            return true;
        }
        return false;
    }

    void S(int i2) {
        ActionBar supportActionBar;
        if (i2 != 108 || (supportActionBar = getSupportActionBar()) == null) {
            return;
        }
        supportActionBar.dispatchMenuVisibilityChanged(true);
    }

    void T(int i2) {
        if (i2 == 108) {
            ActionBar supportActionBar = getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.dispatchMenuVisibilityChanged(false);
            }
        } else if (i2 == 0) {
            PanelFeatureState B = B(i2, true);
            if (B.f254o) {
                m(B, false);
            }
        }
    }

    void U(ViewGroup viewGroup) {
    }

    final ActionBar W() {
        return this.f188k;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        t();
        ((ViewGroup) this.f211x.findViewById(16908290)).addView(view, layoutParams);
        this.f186i.getWrapped().onContentChanged();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public boolean applyDayNight() {
        return e(true);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    @NonNull
    @CallSuper
    public Context attachBaseContext2(@NonNull Context context) {
        this.f192n0 = true;
        int L = L(context, h());
        Configuration configuration = null;
        if (J0 && (context instanceof ContextThemeWrapper)) {
            try {
                ContextThemeWrapperCompatApi17Impl.a((ContextThemeWrapper) context, n(context, L, null));
                return context;
            } catch (IllegalStateException unused) {
            }
        }
        if (context instanceof androidx.appcompat.view.ContextThemeWrapper) {
            try {
                ((androidx.appcompat.view.ContextThemeWrapper) context).applyOverrideConfiguration(n(context, L, null));
                return context;
            } catch (IllegalStateException unused2) {
            }
        }
        if (!I0) {
            return super.attachBaseContext2(context);
        }
        if (Build.VERSION.SDK_INT >= 17) {
            Configuration configuration2 = new Configuration();
            configuration2.uiMode = -1;
            configuration2.fontScale = 0.0f;
            Configuration configuration3 = Api17Impl.a(context, configuration2).getResources().getConfiguration();
            Configuration configuration4 = context.getResources().getConfiguration();
            configuration3.uiMode = configuration4.uiMode;
            if (!configuration3.equals(configuration4)) {
                configuration = w(configuration3, configuration4);
            }
        }
        Configuration n4 = n(context, L, configuration);
        androidx.appcompat.view.ContextThemeWrapper contextThemeWrapper = new androidx.appcompat.view.ContextThemeWrapper(context, R.style.Theme_AppCompat_Empty);
        contextThemeWrapper.applyOverrideConfiguration(n4);
        boolean z3 = false;
        try {
            z3 = context.getTheme() != null;
        } catch (NullPointerException unused3) {
        }
        if (z3) {
            ResourcesCompat.ThemeCompat.rebase(contextThemeWrapper.getTheme());
        }
        return super.attachBaseContext2(contextThemeWrapper);
    }

    final boolean b0() {
        ViewGroup viewGroup;
        return this.f209w && (viewGroup = this.f211x) != null && ViewCompat.isLaidOut(viewGroup);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public View createView(View view, String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        boolean z3;
        boolean z4 = false;
        if (this.D0 == null) {
            String string = this.f184g.obtainStyledAttributes(R.styleable.AppCompatTheme).getString(R.styleable.AppCompatTheme_viewInflaterClass);
            if (string == null) {
                this.D0 = new AppCompatViewInflater();
            } else {
                try {
                    this.D0 = (AppCompatViewInflater) this.f184g.getClassLoader().loadClass(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable unused) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Failed to instantiate custom view inflater ");
                    sb.append(string);
                    sb.append(". Falling back to default.");
                    this.D0 = new AppCompatViewInflater();
                }
            }
        }
        boolean z5 = G0;
        if (z5) {
            if (this.E0 == null) {
                this.E0 = new LayoutIncludeDetector();
            }
            if (this.E0.a(attributeSet)) {
                z3 = true;
            } else {
                if (attributeSet instanceof XmlPullParser) {
                    if (((XmlPullParser) attributeSet).getDepth() > 1) {
                        z4 = true;
                    }
                } else {
                    z4 = c0((ViewParent) view);
                }
                z3 = z4;
            }
        } else {
            z3 = false;
        }
        return this.D0.r(view, str, context, attributeSet, z3, z5, true, VectorEnabledTintResources.shouldBeUsed());
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    androidx.appcompat.view.ActionMode d0(@androidx.annotation.NonNull androidx.appcompat.view.ActionMode.Callback r8) {
        /*
            Method dump skipped, instructions count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.d0(androidx.appcompat.view.ActionMode$Callback):androidx.appcompat.view.ActionMode");
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    @Nullable
    public <T extends View> T findViewById(@IdRes int i2) {
        t();
        return (T) this.f185h.findViewById(i2);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final ActionBarDrawerToggle.Delegate getDrawerToggleDelegate() {
        return new ActionBarDrawableToggleImpl();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public int getLocalNightMode() {
        return this.f200r0;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public MenuInflater getMenuInflater() {
        if (this.f189l == null) {
            F();
            ActionBar actionBar = this.f188k;
            this.f189l = new SupportMenuInflater(actionBar != null ? actionBar.getThemedContext() : this.f184g);
        }
        return this.f189l;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public ActionBar getSupportActionBar() {
        F();
        return this.f188k;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public boolean hasWindowFeature(int i2) {
        boolean z3;
        int a02 = a0(i2);
        if (a02 == 1) {
            z3 = this.G;
        } else if (a02 == 2) {
            z3 = this.A;
        } else if (a02 == 5) {
            z3 = this.B;
        } else if (a02 == 10) {
            z3 = this.E;
        } else if (a02 != 108) {
            z3 = a02 != 109 ? false : this.D;
        } else {
            z3 = this.C;
        }
        return z3 || this.f185h.hasFeature(i2);
    }

    void i(int i2, PanelFeatureState panelFeatureState, Menu menu) {
        if (menu == null) {
            if (panelFeatureState == null && i2 >= 0) {
                PanelFeatureState[] panelFeatureStateArr = this.I;
                if (i2 < panelFeatureStateArr.length) {
                    panelFeatureState = panelFeatureStateArr[i2];
                }
            }
            if (panelFeatureState != null) {
                menu = panelFeatureState.f249j;
            }
        }
        if ((panelFeatureState == null || panelFeatureState.f254o) && !this.f196p0) {
            this.f186i.getWrapped().onPanelClosed(i2, menu);
        }
    }

    final int i0(@Nullable WindowInsetsCompat windowInsetsCompat, @Nullable Rect rect) {
        int i2;
        boolean z3;
        boolean z4;
        if (windowInsetsCompat != null) {
            i2 = windowInsetsCompat.getSystemWindowInsetTop();
        } else {
            i2 = rect != null ? rect.top : 0;
        }
        ActionBarContextView actionBarContextView = this.f199r;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z3 = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f199r.getLayoutParams();
            if (this.f199r.isShown()) {
                if (this.B0 == null) {
                    this.B0 = new Rect();
                    this.C0 = new Rect();
                }
                Rect rect2 = this.B0;
                Rect rect3 = this.C0;
                if (windowInsetsCompat == null) {
                    rect2.set(rect);
                } else {
                    rect2.set(windowInsetsCompat.getSystemWindowInsetLeft(), windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
                }
                ViewUtils.computeFitSystemWindows(this.f211x, rect2, rect3);
                int i4 = rect2.top;
                int i5 = rect2.left;
                int i6 = rect2.right;
                WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(this.f211x);
                int systemWindowInsetLeft = rootWindowInsets == null ? 0 : rootWindowInsets.getSystemWindowInsetLeft();
                int systemWindowInsetRight = rootWindowInsets == null ? 0 : rootWindowInsets.getSystemWindowInsetRight();
                if (marginLayoutParams.topMargin == i4 && marginLayoutParams.leftMargin == i5 && marginLayoutParams.rightMargin == i6) {
                    z4 = false;
                } else {
                    marginLayoutParams.topMargin = i4;
                    marginLayoutParams.leftMargin = i5;
                    marginLayoutParams.rightMargin = i6;
                    z4 = true;
                }
                if (i4 > 0 && this.f215z == null) {
                    View view = new View(this.f184g);
                    this.f215z = view;
                    view.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = systemWindowInsetLeft;
                    layoutParams.rightMargin = systemWindowInsetRight;
                    this.f211x.addView(this.f215z, -1, layoutParams);
                } else {
                    View view2 = this.f215z;
                    if (view2 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view2.getLayoutParams();
                        int i7 = marginLayoutParams2.height;
                        int i8 = marginLayoutParams.topMargin;
                        if (i7 != i8 || marginLayoutParams2.leftMargin != systemWindowInsetLeft || marginLayoutParams2.rightMargin != systemWindowInsetRight) {
                            marginLayoutParams2.height = i8;
                            marginLayoutParams2.leftMargin = systemWindowInsetLeft;
                            marginLayoutParams2.rightMargin = systemWindowInsetRight;
                            this.f215z.setLayoutParams(marginLayoutParams2);
                        }
                    }
                }
                View view3 = this.f215z;
                r5 = view3 != null;
                if (r5 && view3.getVisibility() != 0) {
                    j0(this.f215z);
                }
                if (!this.E && r5) {
                    i2 = 0;
                }
                z3 = r5;
                r5 = z4;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z3 = false;
            } else {
                z3 = false;
                r5 = false;
            }
            if (r5) {
                this.f199r.setLayoutParams(marginLayoutParams);
            }
        }
        View view4 = this.f215z;
        if (view4 != null) {
            view4.setVisibility(z3 ? 0 : 8);
        }
        return i2;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void installViewFactory() {
        LayoutInflater from = LayoutInflater.from(this.f184g);
        if (from.getFactory() == null) {
            LayoutInflaterCompat.setFactory2(from, this);
        } else {
            boolean z3 = from.getFactory2() instanceof AppCompatDelegateImpl;
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void invalidateOptionsMenu() {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar == null || !supportActionBar.invalidateOptionsMenu()) {
            J(0);
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public boolean isHandleNativeActionModesEnabled() {
        return this.f207v;
    }

    void j(@NonNull MenuBuilder menuBuilder) {
        if (this.H) {
            return;
        }
        this.H = true;
        this.f191n.dismissPopups();
        Window.Callback E = E();
        if (E != null && !this.f196p0) {
            E.onPanelClosed(108, menuBuilder);
        }
        this.H = false;
    }

    void l(int i2) {
        m(B(i2, true), true);
    }

    void m(PanelFeatureState panelFeatureState, boolean z3) {
        ViewGroup viewGroup;
        DecorContentParent decorContentParent;
        if (z3 && panelFeatureState.f240a == 0 && (decorContentParent = this.f191n) != null && decorContentParent.isOverflowMenuShowing()) {
            j(panelFeatureState.f249j);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f184g.getSystemService("window");
        if (windowManager != null && panelFeatureState.f254o && (viewGroup = panelFeatureState.f246g) != null) {
            windowManager.removeView(viewGroup);
            if (z3) {
                i(panelFeatureState.f240a, panelFeatureState, null);
            }
        }
        panelFeatureState.f252m = false;
        panelFeatureState.f253n = false;
        panelFeatureState.f254o = false;
        panelFeatureState.f247h = null;
        panelFeatureState.f255p = true;
        if (this.J == panelFeatureState) {
            this.J = null;
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onConfigurationChanged(Configuration configuration) {
        ActionBar supportActionBar;
        if (this.C && this.f209w && (supportActionBar = getSupportActionBar()) != null) {
            supportActionBar.onConfigurationChanged(configuration);
        }
        AppCompatDrawableManager.get().onConfigurationChanged(this.f184g);
        this.f198q0 = new Configuration(this.f184g.getResources().getConfiguration());
        e(false);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onCreate(Bundle bundle) {
        this.f192n0 = true;
        e(false);
        u();
        Object obj = this.f183f;
        if (obj instanceof Activity) {
            String str = null;
            try {
                str = NavUtils.getParentActivityName((Activity) obj);
            } catch (IllegalArgumentException unused) {
            }
            if (str != null) {
                ActionBar W = W();
                if (W == null) {
                    this.A0 = true;
                } else {
                    W.setDefaultDisplayHomeAsUpEnabled(true);
                }
            }
            AppCompatDelegate.a(this);
        }
        this.f198q0 = new Configuration(this.f184g.getResources().getConfiguration());
        this.f194o0 = true;
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return createView(view, str, context, attributeSet);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0058  */
    @Override // androidx.appcompat.app.AppCompatDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDestroy() {
        /*
            r3 = this;
            java.lang.Object r0 = r3.f183f
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L9
            androidx.appcompat.app.AppCompatDelegate.c(r3)
        L9:
            boolean r0 = r3.f212x0
            if (r0 == 0) goto L18
            android.view.Window r0 = r3.f185h
            android.view.View r0 = r0.getDecorView()
            java.lang.Runnable r1 = r3.f216z0
            r0.removeCallbacks(r1)
        L18:
            r0 = 1
            r3.f196p0 = r0
            int r0 = r3.f200r0
            r1 = -100
            if (r0 == r1) goto L45
            java.lang.Object r0 = r3.f183f
            boolean r1 = r0 instanceof android.app.Activity
            if (r1 == 0) goto L45
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChangingConfigurations()
            if (r0 == 0) goto L45
            androidx.collection.SimpleArrayMap<java.lang.String, java.lang.Integer> r0 = androidx.appcompat.app.AppCompatDelegateImpl.F0
            java.lang.Object r1 = r3.f183f
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            int r2 = r3.f200r0
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r0.put(r1, r2)
            goto L54
        L45:
            androidx.collection.SimpleArrayMap<java.lang.String, java.lang.Integer> r0 = androidx.appcompat.app.AppCompatDelegateImpl.F0
            java.lang.Object r1 = r3.f183f
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r0.remove(r1)
        L54:
            androidx.appcompat.app.ActionBar r0 = r3.f188k
            if (r0 == 0) goto L5b
            r0.a()
        L5b:
            r3.k()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.onDestroy():void");
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public boolean onMenuItemSelected(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
        PanelFeatureState v3;
        Window.Callback E = E();
        if (E == null || this.f196p0 || (v3 = v(menuBuilder.getRootMenu())) == null) {
            return false;
        }
        return E.onMenuItemSelected(v3.f240a, menuItem);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public void onMenuModeChange(@NonNull MenuBuilder menuBuilder) {
        Z(true);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onPostCreate(Bundle bundle) {
        t();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onPostResume() {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setShowHideAnimationEnabled(true);
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onSaveInstanceState(Bundle bundle) {
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onStart() {
        applyDayNight();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onStop() {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setShowHideAnimationEnabled(false);
        }
    }

    void p() {
        MenuBuilder menuBuilder;
        DecorContentParent decorContentParent = this.f191n;
        if (decorContentParent != null) {
            decorContentParent.dismissPopups();
        }
        if (this.f201s != null) {
            this.f185h.getDecorView().removeCallbacks(this.f203t);
            if (this.f201s.isShowing()) {
                try {
                    this.f201s.dismiss();
                } catch (IllegalArgumentException unused) {
                }
            }
            this.f201s = null;
        }
        s();
        PanelFeatureState B = B(0, false);
        if (B == null || (menuBuilder = B.f249j) == null) {
            return;
        }
        menuBuilder.close();
    }

    boolean q(KeyEvent keyEvent) {
        View decorView;
        Object obj = this.f183f;
        if (((obj instanceof KeyEventDispatcher.Component) || (obj instanceof AppCompatDialog)) && (decorView = this.f185h.getDecorView()) != null && KeyEventDispatcher.dispatchBeforeHierarchy(decorView, keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 82 && this.f186i.getWrapped().dispatchKeyEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        return keyEvent.getAction() == 0 ? N(keyCode, keyEvent) : Q(keyCode, keyEvent);
    }

    void r(int i2) {
        PanelFeatureState B;
        PanelFeatureState B2 = B(i2, true);
        if (B2.f249j != null) {
            Bundle bundle = new Bundle();
            B2.f249j.saveActionViewStates(bundle);
            if (bundle.size() > 0) {
                B2.f259t = bundle;
            }
            B2.f249j.stopDispatchingItemsChanged();
            B2.f249j.clear();
        }
        B2.f256q = true;
        B2.f255p = true;
        if ((i2 != 108 && i2 != 0) || this.f191n == null || (B = B(0, false)) == null) {
            return;
        }
        B.f252m = false;
        Y(B, null);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public boolean requestWindowFeature(int i2) {
        int a02 = a0(i2);
        if (this.G && a02 == 108) {
            return false;
        }
        if (this.C && a02 == 1) {
            this.C = false;
        }
        if (a02 == 1) {
            e0();
            this.G = true;
            return true;
        } else if (a02 == 2) {
            e0();
            this.A = true;
            return true;
        } else if (a02 == 5) {
            e0();
            this.B = true;
            return true;
        } else if (a02 == 10) {
            e0();
            this.E = true;
            return true;
        } else if (a02 == 108) {
            e0();
            this.C = true;
            return true;
        } else if (a02 != 109) {
            return this.f185h.requestFeature(a02);
        } else {
            e0();
            this.D = true;
            return true;
        }
    }

    void s() {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.f205u;
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.cancel();
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setContentView(View view) {
        t();
        ViewGroup viewGroup = (ViewGroup) this.f211x.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f186i.getWrapped().onContentChanged();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setHandleNativeActionModesEnabled(boolean z3) {
        this.f207v = z3;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    @RequiresApi(17)
    public void setLocalNightMode(int i2) {
        if (this.f200r0 != i2) {
            this.f200r0 = i2;
            if (this.f192n0) {
                applyDayNight();
            }
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setSupportActionBar(Toolbar toolbar) {
        if (this.f183f instanceof Activity) {
            ActionBar supportActionBar = getSupportActionBar();
            if (!(supportActionBar instanceof WindowDecorActionBar)) {
                this.f189l = null;
                if (supportActionBar != null) {
                    supportActionBar.a();
                }
                this.f188k = null;
                if (toolbar != null) {
                    ToolbarActionBar toolbarActionBar = new ToolbarActionBar(toolbar, D(), this.f186i);
                    this.f188k = toolbarActionBar;
                    this.f186i.a(toolbarActionBar.f291c);
                } else {
                    this.f186i.a(null);
                }
                invalidateOptionsMenu();
                return;
            }
            throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setTheme(@StyleRes int i2) {
        this.f202s0 = i2;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void setTitle(CharSequence charSequence) {
        this.f190m = charSequence;
        DecorContentParent decorContentParent = this.f191n;
        if (decorContentParent != null) {
            decorContentParent.setWindowTitle(charSequence);
        } else if (W() != null) {
            W().setWindowTitle(charSequence);
        } else {
            TextView textView = this.f213y;
            if (textView != null) {
                textView.setText(charSequence);
            }
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public ActionMode startSupportActionMode(@NonNull ActionMode.Callback callback) {
        AppCompatCallback appCompatCallback;
        if (callback != null) {
            ActionMode actionMode = this.f197q;
            if (actionMode != null) {
                actionMode.finish();
            }
            ActionModeCallbackWrapperV9 actionModeCallbackWrapperV9 = new ActionModeCallbackWrapperV9(callback);
            ActionBar supportActionBar = getSupportActionBar();
            if (supportActionBar != null) {
                ActionMode startActionMode = supportActionBar.startActionMode(actionModeCallbackWrapperV9);
                this.f197q = startActionMode;
                if (startActionMode != null && (appCompatCallback = this.f187j) != null) {
                    appCompatCallback.onSupportActionModeStarted(startActionMode);
                }
            }
            if (this.f197q == null) {
                this.f197q = d0(actionModeCallbackWrapperV9);
            }
            return this.f197q;
        }
        throw new IllegalArgumentException("ActionMode callback can not be null.");
    }

    PanelFeatureState v(Menu menu) {
        PanelFeatureState[] panelFeatureStateArr = this.I;
        int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
        for (int i2 = 0; i2 < length; i2++) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[i2];
            if (panelFeatureState != null && panelFeatureState.f249j == menu) {
                return panelFeatureState;
            }
        }
        return null;
    }

    final Context x() {
        ActionBar supportActionBar = getSupportActionBar();
        Context themedContext = supportActionBar != null ? supportActionBar.getThemedContext() : null;
        return themedContext == null ? this.f184g : themedContext;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting
    final AutoNightModeManager z() {
        return A(this.f184g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatDelegateImpl(Dialog dialog, AppCompatCallback appCompatCallback) {
        this(dialog.getContext(), dialog.getWindow(), appCompatCallback, dialog);
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatDelegateImpl(Context context, Window window, AppCompatCallback appCompatCallback) {
        this(context, window, appCompatCallback, context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class AppCompatWindowCallback extends WindowCallbackWrapper {

        /* renamed from: b  reason: collision with root package name */
        private ActionBarMenuCallback f230b;

        AppCompatWindowCallback(Window.Callback callback) {
            super(callback);
        }

        void a(@Nullable ActionBarMenuCallback actionBarMenuCallback) {
            this.f230b = actionBarMenuCallback;
        }

        final android.view.ActionMode b(ActionMode.Callback callback) {
            SupportActionModeWrapper.CallbackWrapper callbackWrapper = new SupportActionModeWrapper.CallbackWrapper(AppCompatDelegateImpl.this.f184g, callback);
            androidx.appcompat.view.ActionMode startSupportActionMode = AppCompatDelegateImpl.this.startSupportActionMode(callbackWrapper);
            if (startSupportActionMode != null) {
                return callbackWrapper.getActionModeWrapper(startSupportActionMode);
            }
            return null;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.q(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return super.dispatchKeyShortcutEvent(keyEvent) || AppCompatDelegateImpl.this.P(keyEvent.getKeyCode(), keyEvent);
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public void onContentChanged() {
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean onCreatePanelMenu(int i2, Menu menu) {
            if (i2 != 0 || (menu instanceof MenuBuilder)) {
                return super.onCreatePanelMenu(i2, menu);
            }
            return false;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public View onCreatePanelView(int i2) {
            View onCreatePanelView;
            ActionBarMenuCallback actionBarMenuCallback = this.f230b;
            return (actionBarMenuCallback == null || (onCreatePanelView = actionBarMenuCallback.onCreatePanelView(i2)) == null) ? super.onCreatePanelView(i2) : onCreatePanelView;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean onMenuOpened(int i2, Menu menu) {
            super.onMenuOpened(i2, menu);
            AppCompatDelegateImpl.this.S(i2);
            return true;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public void onPanelClosed(int i2, Menu menu) {
            super.onPanelClosed(i2, menu);
            AppCompatDelegateImpl.this.T(i2);
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean onPreparePanel(int i2, View view, Menu menu) {
            MenuBuilder menuBuilder = menu instanceof MenuBuilder ? (MenuBuilder) menu : null;
            if (i2 == 0 && menuBuilder == null) {
                return false;
            }
            boolean z3 = true;
            if (menuBuilder != null) {
                menuBuilder.setOverrideVisibleItems(true);
            }
            ActionBarMenuCallback actionBarMenuCallback = this.f230b;
            z3 = (actionBarMenuCallback == null || !actionBarMenuCallback.onPreparePanel(i2)) ? false : false;
            if (!z3) {
                z3 = super.onPreparePanel(i2, view, menu);
            }
            if (menuBuilder != null) {
                menuBuilder.setOverrideVisibleItems(false);
            }
            return z3;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        @RequiresApi(24)
        public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i2) {
            MenuBuilder menuBuilder;
            PanelFeatureState B = AppCompatDelegateImpl.this.B(0, true);
            if (B != null && (menuBuilder = B.f249j) != null) {
                super.onProvideKeyboardShortcuts(list, menuBuilder, i2);
            } else {
                super.onProvideKeyboardShortcuts(list, menu, i2);
            }
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public android.view.ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            if (Build.VERSION.SDK_INT >= 23) {
                return null;
            }
            if (AppCompatDelegateImpl.this.isHandleNativeActionModesEnabled()) {
                return b(callback);
            }
            return super.onWindowStartingActionMode(callback);
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        @RequiresApi(23)
        public android.view.ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i2) {
            if (AppCompatDelegateImpl.this.isHandleNativeActionModesEnabled() && i2 == 0) {
                return b(callback);
            }
            return super.onWindowStartingActionMode(callback, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatDelegateImpl(Context context, Activity activity, AppCompatCallback appCompatCallback) {
        this(context, null, appCompatCallback, activity);
    }

    private AppCompatDelegateImpl(Context context, Window window, AppCompatCallback appCompatCallback, Object obj) {
        SimpleArrayMap<String, Integer> simpleArrayMap;
        Integer num;
        AppCompatActivity f02;
        this.f205u = null;
        this.f207v = true;
        this.f200r0 = -100;
        this.f216z0 = new Runnable() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.2
            @Override // java.lang.Runnable
            public void run() {
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                if ((appCompatDelegateImpl.f214y0 & 1) != 0) {
                    appCompatDelegateImpl.r(0);
                }
                AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
                if ((appCompatDelegateImpl2.f214y0 & 4096) != 0) {
                    appCompatDelegateImpl2.r(108);
                }
                AppCompatDelegateImpl appCompatDelegateImpl3 = AppCompatDelegateImpl.this;
                appCompatDelegateImpl3.f212x0 = false;
                appCompatDelegateImpl3.f214y0 = 0;
            }
        };
        this.f184g = context;
        this.f187j = appCompatCallback;
        this.f183f = obj;
        if (this.f200r0 == -100 && (obj instanceof Dialog) && (f02 = f0()) != null) {
            this.f200r0 = f02.getDelegate().getLocalNightMode();
        }
        if (this.f200r0 == -100 && (num = (simpleArrayMap = F0).get(obj.getClass().getName())) != null) {
            this.f200r0 = num.intValue();
            simpleArrayMap.remove(obj.getClass().getName());
        }
        if (window != null) {
            g(window);
        }
        AppCompatDrawableManager.preload();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setContentView(int i2) {
        t();
        ViewGroup viewGroup = (ViewGroup) this.f211x.findViewById(16908290);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f184g).inflate(i2, viewGroup);
        this.f186i.getWrapped().onContentChanged();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        t();
        ViewGroup viewGroup = (ViewGroup) this.f211x.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f186i.getWrapped().onContentChanged();
    }
}
