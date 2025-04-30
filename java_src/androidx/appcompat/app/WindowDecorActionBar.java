package androidx.appcompat.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.SpinnerAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.ActionBarPolicy;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.ViewPropertyAnimatorCompatSet;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.DecorToolbar;
import androidx.appcompat.widget.ScrollingTabContainerView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListener;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import androidx.core.view.ViewPropertyAnimatorUpdateListener;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class WindowDecorActionBar extends ActionBar implements ActionBarOverlayLayout.ActionBarVisibilityCallback {
    private static final String F = "WindowDecorActionBar";
    private static final Interpolator G = new AccelerateInterpolator();
    private static final Interpolator H = new DecelerateInterpolator();
    private static final int I = -1;
    private static final long J = 100;
    private static final long K = 200;
    private boolean A;
    boolean B;

    /* renamed from: a  reason: collision with root package name */
    Context f326a;

    /* renamed from: b  reason: collision with root package name */
    private Context f327b;

    /* renamed from: c  reason: collision with root package name */
    private Activity f328c;

    /* renamed from: d  reason: collision with root package name */
    ActionBarOverlayLayout f329d;

    /* renamed from: e  reason: collision with root package name */
    ActionBarContainer f330e;

    /* renamed from: f  reason: collision with root package name */
    DecorToolbar f331f;

    /* renamed from: g  reason: collision with root package name */
    ActionBarContextView f332g;

    /* renamed from: h  reason: collision with root package name */
    View f333h;

    /* renamed from: i  reason: collision with root package name */
    ScrollingTabContainerView f334i;

    /* renamed from: k  reason: collision with root package name */
    private TabImpl f336k;

    /* renamed from: m  reason: collision with root package name */
    private boolean f338m;

    /* renamed from: n  reason: collision with root package name */
    ActionModeImpl f339n;

    /* renamed from: o  reason: collision with root package name */
    ActionMode f340o;

    /* renamed from: p  reason: collision with root package name */
    ActionMode.Callback f341p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f342q;

    /* renamed from: s  reason: collision with root package name */
    private boolean f344s;

    /* renamed from: v  reason: collision with root package name */
    boolean f347v;

    /* renamed from: w  reason: collision with root package name */
    boolean f348w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f349x;

    /* renamed from: z  reason: collision with root package name */
    ViewPropertyAnimatorCompatSet f351z;

    /* renamed from: j  reason: collision with root package name */
    private ArrayList<TabImpl> f335j = new ArrayList<>();

    /* renamed from: l  reason: collision with root package name */
    private int f337l = -1;

    /* renamed from: r  reason: collision with root package name */
    private ArrayList<ActionBar.OnMenuVisibilityListener> f343r = new ArrayList<>();

    /* renamed from: t  reason: collision with root package name */
    private int f345t = 0;

    /* renamed from: u  reason: collision with root package name */
    boolean f346u = true;

    /* renamed from: y  reason: collision with root package name */
    private boolean f350y = true;
    final ViewPropertyAnimatorListener C = new ViewPropertyAnimatorListenerAdapter() { // from class: androidx.appcompat.app.WindowDecorActionBar.1
        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            View view2;
            WindowDecorActionBar windowDecorActionBar = WindowDecorActionBar.this;
            if (windowDecorActionBar.f346u && (view2 = windowDecorActionBar.f333h) != null) {
                view2.setTranslationY(0.0f);
                WindowDecorActionBar.this.f330e.setTranslationY(0.0f);
            }
            WindowDecorActionBar.this.f330e.setVisibility(8);
            WindowDecorActionBar.this.f330e.setTransitioning(false);
            WindowDecorActionBar windowDecorActionBar2 = WindowDecorActionBar.this;
            windowDecorActionBar2.f351z = null;
            windowDecorActionBar2.d();
            ActionBarOverlayLayout actionBarOverlayLayout = WindowDecorActionBar.this.f329d;
            if (actionBarOverlayLayout != null) {
                ViewCompat.requestApplyInsets(actionBarOverlayLayout);
            }
        }
    };
    final ViewPropertyAnimatorListener D = new ViewPropertyAnimatorListenerAdapter() { // from class: androidx.appcompat.app.WindowDecorActionBar.2
        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            WindowDecorActionBar windowDecorActionBar = WindowDecorActionBar.this;
            windowDecorActionBar.f351z = null;
            windowDecorActionBar.f330e.requestLayout();
        }
    };
    final ViewPropertyAnimatorUpdateListener E = new ViewPropertyAnimatorUpdateListener() { // from class: androidx.appcompat.app.WindowDecorActionBar.3
        @Override // androidx.core.view.ViewPropertyAnimatorUpdateListener
        public void onAnimationUpdate(View view) {
            ((View) WindowDecorActionBar.this.f330e.getParent()).invalidate();
        }
    };

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public class ActionModeImpl extends ActionMode implements MenuBuilder.Callback {

        /* renamed from: c  reason: collision with root package name */
        private final Context f355c;

        /* renamed from: d  reason: collision with root package name */
        private final MenuBuilder f356d;

        /* renamed from: e  reason: collision with root package name */
        private ActionMode.Callback f357e;

        /* renamed from: f  reason: collision with root package name */
        private WeakReference<View> f358f;

        public ActionModeImpl(Context context, ActionMode.Callback callback) {
            this.f355c = context;
            this.f357e = callback;
            MenuBuilder defaultShowAsAction = new MenuBuilder(context).setDefaultShowAsAction(1);
            this.f356d = defaultShowAsAction;
            defaultShowAsAction.setCallback(this);
        }

        public boolean dispatchOnCreate() {
            this.f356d.stopDispatchingItemsChanged();
            try {
                return this.f357e.onCreateActionMode(this, this.f356d);
            } finally {
                this.f356d.startDispatchingItemsChanged();
            }
        }

        @Override // androidx.appcompat.view.ActionMode
        public void finish() {
            WindowDecorActionBar windowDecorActionBar = WindowDecorActionBar.this;
            if (windowDecorActionBar.f339n != this) {
                return;
            }
            if (!WindowDecorActionBar.b(windowDecorActionBar.f347v, windowDecorActionBar.f348w, false)) {
                WindowDecorActionBar windowDecorActionBar2 = WindowDecorActionBar.this;
                windowDecorActionBar2.f340o = this;
                windowDecorActionBar2.f341p = this.f357e;
            } else {
                this.f357e.onDestroyActionMode(this);
            }
            this.f357e = null;
            WindowDecorActionBar.this.animateToMode(false);
            WindowDecorActionBar.this.f332g.closeMode();
            WindowDecorActionBar windowDecorActionBar3 = WindowDecorActionBar.this;
            windowDecorActionBar3.f329d.setHideOnContentScrollEnabled(windowDecorActionBar3.B);
            WindowDecorActionBar.this.f339n = null;
        }

        @Override // androidx.appcompat.view.ActionMode
        public View getCustomView() {
            WeakReference<View> weakReference = this.f358f;
            if (weakReference != null) {
                return weakReference.get();
            }
            return null;
        }

        @Override // androidx.appcompat.view.ActionMode
        public Menu getMenu() {
            return this.f356d;
        }

        @Override // androidx.appcompat.view.ActionMode
        public MenuInflater getMenuInflater() {
            return new SupportMenuInflater(this.f355c);
        }

        @Override // androidx.appcompat.view.ActionMode
        public CharSequence getSubtitle() {
            return WindowDecorActionBar.this.f332g.getSubtitle();
        }

        @Override // androidx.appcompat.view.ActionMode
        public CharSequence getTitle() {
            return WindowDecorActionBar.this.f332g.getTitle();
        }

        @Override // androidx.appcompat.view.ActionMode
        public void invalidate() {
            if (WindowDecorActionBar.this.f339n != this) {
                return;
            }
            this.f356d.stopDispatchingItemsChanged();
            try {
                this.f357e.onPrepareActionMode(this, this.f356d);
            } finally {
                this.f356d.startDispatchingItemsChanged();
            }
        }

        @Override // androidx.appcompat.view.ActionMode
        public boolean isTitleOptional() {
            return WindowDecorActionBar.this.f332g.isTitleOptional();
        }

        public void onCloseMenu(MenuBuilder menuBuilder, boolean z3) {
        }

        public void onCloseSubMenu(SubMenuBuilder subMenuBuilder) {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
            ActionMode.Callback callback = this.f357e;
            if (callback != null) {
                return callback.onActionItemClicked(this, menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(@NonNull MenuBuilder menuBuilder) {
            if (this.f357e == null) {
                return;
            }
            invalidate();
            WindowDecorActionBar.this.f332g.showOverflowMenu();
        }

        public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
            if (this.f357e == null) {
                return false;
            }
            if (subMenuBuilder.hasVisibleItems()) {
                new MenuPopupHelper(WindowDecorActionBar.this.getThemedContext(), subMenuBuilder).show();
                return true;
            }
            return true;
        }

        @Override // androidx.appcompat.view.ActionMode
        public void setCustomView(View view) {
            WindowDecorActionBar.this.f332g.setCustomView(view);
            this.f358f = new WeakReference<>(view);
        }

        @Override // androidx.appcompat.view.ActionMode
        public void setSubtitle(CharSequence charSequence) {
            WindowDecorActionBar.this.f332g.setSubtitle(charSequence);
        }

        @Override // androidx.appcompat.view.ActionMode
        public void setTitle(CharSequence charSequence) {
            WindowDecorActionBar.this.f332g.setTitle(charSequence);
        }

        @Override // androidx.appcompat.view.ActionMode
        public void setTitleOptionalHint(boolean z3) {
            super.setTitleOptionalHint(z3);
            WindowDecorActionBar.this.f332g.setTitleOptional(z3);
        }

        @Override // androidx.appcompat.view.ActionMode
        public void setSubtitle(int i2) {
            setSubtitle(WindowDecorActionBar.this.f326a.getResources().getString(i2));
        }

        @Override // androidx.appcompat.view.ActionMode
        public void setTitle(int i2) {
            setTitle(WindowDecorActionBar.this.f326a.getResources().getString(i2));
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public class TabImpl extends ActionBar.Tab {

        /* renamed from: a  reason: collision with root package name */
        private ActionBar.TabListener f360a;

        /* renamed from: b  reason: collision with root package name */
        private Object f361b;

        /* renamed from: c  reason: collision with root package name */
        private Drawable f362c;

        /* renamed from: d  reason: collision with root package name */
        private CharSequence f363d;

        /* renamed from: e  reason: collision with root package name */
        private CharSequence f364e;

        /* renamed from: f  reason: collision with root package name */
        private int f365f = -1;

        /* renamed from: g  reason: collision with root package name */
        private View f366g;

        public TabImpl() {
        }

        public ActionBar.TabListener getCallback() {
            return this.f360a;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public CharSequence getContentDescription() {
            return this.f364e;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public View getCustomView() {
            return this.f366g;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public Drawable getIcon() {
            return this.f362c;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public int getPosition() {
            return this.f365f;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public Object getTag() {
            return this.f361b;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public CharSequence getText() {
            return this.f363d;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public void select() {
            WindowDecorActionBar.this.selectTab(this);
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public ActionBar.Tab setContentDescription(int i2) {
            return setContentDescription(WindowDecorActionBar.this.f326a.getResources().getText(i2));
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public ActionBar.Tab setCustomView(View view) {
            this.f366g = view;
            int i2 = this.f365f;
            if (i2 >= 0) {
                WindowDecorActionBar.this.f334i.updateTab(i2);
            }
            return this;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public ActionBar.Tab setIcon(Drawable drawable) {
            this.f362c = drawable;
            int i2 = this.f365f;
            if (i2 >= 0) {
                WindowDecorActionBar.this.f334i.updateTab(i2);
            }
            return this;
        }

        public void setPosition(int i2) {
            this.f365f = i2;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public ActionBar.Tab setTabListener(ActionBar.TabListener tabListener) {
            this.f360a = tabListener;
            return this;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public ActionBar.Tab setTag(Object obj) {
            this.f361b = obj;
            return this;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public ActionBar.Tab setText(CharSequence charSequence) {
            this.f363d = charSequence;
            int i2 = this.f365f;
            if (i2 >= 0) {
                WindowDecorActionBar.this.f334i.updateTab(i2);
            }
            return this;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public ActionBar.Tab setContentDescription(CharSequence charSequence) {
            this.f364e = charSequence;
            int i2 = this.f365f;
            if (i2 >= 0) {
                WindowDecorActionBar.this.f334i.updateTab(i2);
            }
            return this;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public ActionBar.Tab setCustomView(int i2) {
            return setCustomView(LayoutInflater.from(WindowDecorActionBar.this.getThemedContext()).inflate(i2, (ViewGroup) null));
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public ActionBar.Tab setIcon(int i2) {
            return setIcon(AppCompatResources.getDrawable(WindowDecorActionBar.this.f326a, i2));
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public ActionBar.Tab setText(int i2) {
            return setText(WindowDecorActionBar.this.f326a.getResources().getText(i2));
        }
    }

    public WindowDecorActionBar(Activity activity, boolean z3) {
        this.f328c = activity;
        View decorView = activity.getWindow().getDecorView();
        i(decorView);
        if (z3) {
            return;
        }
        this.f333h = decorView.findViewById(16908290);
    }

    static boolean b(boolean z3, boolean z4, boolean z5) {
        if (z5) {
            return true;
        }
        return (z3 || z4) ? false : true;
    }

    private void c() {
        if (this.f336k != null) {
            selectTab(null);
        }
        this.f335j.clear();
        ScrollingTabContainerView scrollingTabContainerView = this.f334i;
        if (scrollingTabContainerView != null) {
            scrollingTabContainerView.removeAllTabs();
        }
        this.f337l = -1;
    }

    private void e(ActionBar.Tab tab, int i2) {
        TabImpl tabImpl = (TabImpl) tab;
        if (tabImpl.getCallback() != null) {
            tabImpl.setPosition(i2);
            this.f335j.add(i2, tabImpl);
            int size = this.f335j.size();
            while (true) {
                i2++;
                if (i2 >= size) {
                    return;
                }
                this.f335j.get(i2).setPosition(i2);
            }
        } else {
            throw new IllegalStateException("Action Bar Tab must have a Callback");
        }
    }

    private void f() {
        if (this.f334i != null) {
            return;
        }
        ScrollingTabContainerView scrollingTabContainerView = new ScrollingTabContainerView(this.f326a);
        if (this.f344s) {
            scrollingTabContainerView.setVisibility(0);
            this.f331f.setEmbeddedTabView(scrollingTabContainerView);
        } else {
            if (getNavigationMode() == 2) {
                scrollingTabContainerView.setVisibility(0);
                ActionBarOverlayLayout actionBarOverlayLayout = this.f329d;
                if (actionBarOverlayLayout != null) {
                    ViewCompat.requestApplyInsets(actionBarOverlayLayout);
                }
            } else {
                scrollingTabContainerView.setVisibility(8);
            }
            this.f330e.setTabContainer(scrollingTabContainerView);
        }
        this.f334i = scrollingTabContainerView;
    }

    private DecorToolbar g(View view) {
        if (view instanceof DecorToolbar) {
            return (DecorToolbar) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't make a decor toolbar out of ");
        sb.append(view != null ? view.getClass().getSimpleName() : "null");
        throw new IllegalStateException(sb.toString());
    }

    private void h() {
        if (this.f349x) {
            this.f349x = false;
            ActionBarOverlayLayout actionBarOverlayLayout = this.f329d;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(false);
            }
            m(false);
        }
    }

    private void i(View view) {
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(R.id.decor_content_parent);
        this.f329d = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        this.f331f = g(view.findViewById(R.id.action_bar));
        this.f332g = (ActionBarContextView) view.findViewById(R.id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(R.id.action_bar_container);
        this.f330e = actionBarContainer;
        DecorToolbar decorToolbar = this.f331f;
        if (decorToolbar != null && this.f332g != null && actionBarContainer != null) {
            this.f326a = decorToolbar.getContext();
            boolean z3 = (this.f331f.getDisplayOptions() & 4) != 0;
            if (z3) {
                this.f338m = true;
            }
            ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(this.f326a);
            setHomeButtonEnabled(actionBarPolicy.enableHomeButtonByDefault() || z3);
            j(actionBarPolicy.hasEmbeddedTabs());
            TypedArray obtainStyledAttributes = this.f326a.obtainStyledAttributes(null, R.styleable.ActionBar, R.attr.actionBarStyle, 0);
            if (obtainStyledAttributes.getBoolean(R.styleable.ActionBar_hideOnContentScroll, false)) {
                setHideOnContentScrollEnabled(true);
            }
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ActionBar_elevation, 0);
            if (dimensionPixelSize != 0) {
                setElevation(dimensionPixelSize);
            }
            obtainStyledAttributes.recycle();
            return;
        }
        throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
    }

    private void j(boolean z3) {
        this.f344s = z3;
        if (!z3) {
            this.f331f.setEmbeddedTabView(null);
            this.f330e.setTabContainer(this.f334i);
        } else {
            this.f330e.setTabContainer(null);
            this.f331f.setEmbeddedTabView(this.f334i);
        }
        boolean z4 = true;
        boolean z5 = getNavigationMode() == 2;
        ScrollingTabContainerView scrollingTabContainerView = this.f334i;
        if (scrollingTabContainerView != null) {
            if (z5) {
                scrollingTabContainerView.setVisibility(0);
                ActionBarOverlayLayout actionBarOverlayLayout = this.f329d;
                if (actionBarOverlayLayout != null) {
                    ViewCompat.requestApplyInsets(actionBarOverlayLayout);
                }
            } else {
                scrollingTabContainerView.setVisibility(8);
            }
        }
        this.f331f.setCollapsible(!this.f344s && z5);
        this.f329d.setHasNonEmbeddedTabs((this.f344s || !z5) ? false : false);
    }

    private boolean k() {
        return ViewCompat.isLaidOut(this.f330e);
    }

    private void l() {
        if (this.f349x) {
            return;
        }
        this.f349x = true;
        ActionBarOverlayLayout actionBarOverlayLayout = this.f329d;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setShowingForActionMode(true);
        }
        m(false);
    }

    private void m(boolean z3) {
        if (b(this.f347v, this.f348w, this.f349x)) {
            if (this.f350y) {
                return;
            }
            this.f350y = true;
            doShow(z3);
        } else if (this.f350y) {
            this.f350y = false;
            doHide(z3);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public void addOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener onMenuVisibilityListener) {
        this.f343r.add(onMenuVisibilityListener);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void addTab(ActionBar.Tab tab) {
        addTab(tab, this.f335j.isEmpty());
    }

    public void animateToMode(boolean z3) {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat;
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2;
        if (z3) {
            l();
        } else {
            h();
        }
        if (!k()) {
            if (z3) {
                this.f331f.setVisibility(4);
                this.f332g.setVisibility(0);
                return;
            }
            this.f331f.setVisibility(0);
            this.f332g.setVisibility(8);
            return;
        }
        if (z3) {
            viewPropertyAnimatorCompat2 = this.f331f.setupAnimatorToVisibility(4, J);
            viewPropertyAnimatorCompat = this.f332g.setupAnimatorToVisibility(0, 200L);
        } else {
            viewPropertyAnimatorCompat = this.f331f.setupAnimatorToVisibility(0, 200L);
            viewPropertyAnimatorCompat2 = this.f332g.setupAnimatorToVisibility(8, J);
        }
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = new ViewPropertyAnimatorCompatSet();
        viewPropertyAnimatorCompatSet.playSequentially(viewPropertyAnimatorCompat2, viewPropertyAnimatorCompat);
        viewPropertyAnimatorCompatSet.start();
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean collapseActionView() {
        DecorToolbar decorToolbar = this.f331f;
        if (decorToolbar == null || !decorToolbar.hasExpandedActionView()) {
            return false;
        }
        this.f331f.collapseActionView();
        return true;
    }

    void d() {
        ActionMode.Callback callback = this.f341p;
        if (callback != null) {
            callback.onDestroyActionMode(this.f340o);
            this.f340o = null;
            this.f341p = null;
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public void dispatchMenuVisibilityChanged(boolean z3) {
        if (z3 == this.f342q) {
            return;
        }
        this.f342q = z3;
        int size = this.f343r.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f343r.get(i2).onMenuVisibilityChanged(z3);
        }
    }

    public void doHide(boolean z3) {
        View view;
        int[] iArr;
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = this.f351z;
        if (viewPropertyAnimatorCompatSet != null) {
            viewPropertyAnimatorCompatSet.cancel();
        }
        if (this.f345t == 0 && (this.A || z3)) {
            this.f330e.setAlpha(1.0f);
            this.f330e.setTransitioning(true);
            ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet2 = new ViewPropertyAnimatorCompatSet();
            float f4 = -this.f330e.getHeight();
            if (z3) {
                this.f330e.getLocationInWindow(new int[]{0, 0});
                f4 -= iArr[1];
            }
            ViewPropertyAnimatorCompat translationY = ViewCompat.animate(this.f330e).translationY(f4);
            translationY.setUpdateListener(this.E);
            viewPropertyAnimatorCompatSet2.play(translationY);
            if (this.f346u && (view = this.f333h) != null) {
                viewPropertyAnimatorCompatSet2.play(ViewCompat.animate(view).translationY(f4));
            }
            viewPropertyAnimatorCompatSet2.setInterpolator(G);
            viewPropertyAnimatorCompatSet2.setDuration(250L);
            viewPropertyAnimatorCompatSet2.setListener(this.C);
            this.f351z = viewPropertyAnimatorCompatSet2;
            viewPropertyAnimatorCompatSet2.start();
            return;
        }
        this.C.onAnimationEnd(null);
    }

    public void doShow(boolean z3) {
        View view;
        View view2;
        int[] iArr;
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = this.f351z;
        if (viewPropertyAnimatorCompatSet != null) {
            viewPropertyAnimatorCompatSet.cancel();
        }
        this.f330e.setVisibility(0);
        if (this.f345t == 0 && (this.A || z3)) {
            this.f330e.setTranslationY(0.0f);
            float f4 = -this.f330e.getHeight();
            if (z3) {
                this.f330e.getLocationInWindow(new int[]{0, 0});
                f4 -= iArr[1];
            }
            this.f330e.setTranslationY(f4);
            ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet2 = new ViewPropertyAnimatorCompatSet();
            ViewPropertyAnimatorCompat translationY = ViewCompat.animate(this.f330e).translationY(0.0f);
            translationY.setUpdateListener(this.E);
            viewPropertyAnimatorCompatSet2.play(translationY);
            if (this.f346u && (view2 = this.f333h) != null) {
                view2.setTranslationY(f4);
                viewPropertyAnimatorCompatSet2.play(ViewCompat.animate(this.f333h).translationY(0.0f));
            }
            viewPropertyAnimatorCompatSet2.setInterpolator(H);
            viewPropertyAnimatorCompatSet2.setDuration(250L);
            viewPropertyAnimatorCompatSet2.setListener(this.D);
            this.f351z = viewPropertyAnimatorCompatSet2;
            viewPropertyAnimatorCompatSet2.start();
        } else {
            this.f330e.setAlpha(1.0f);
            this.f330e.setTranslationY(0.0f);
            if (this.f346u && (view = this.f333h) != null) {
                view.setTranslationY(0.0f);
            }
            this.D.onAnimationEnd(null);
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f329d;
        if (actionBarOverlayLayout != null) {
            ViewCompat.requestApplyInsets(actionBarOverlayLayout);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void enableContentAnimations(boolean z3) {
        this.f346u = z3;
    }

    @Override // androidx.appcompat.app.ActionBar
    public View getCustomView() {
        return this.f331f.getCustomView();
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getDisplayOptions() {
        return this.f331f.getDisplayOptions();
    }

    @Override // androidx.appcompat.app.ActionBar
    public float getElevation() {
        return ViewCompat.getElevation(this.f330e);
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getHeight() {
        return this.f330e.getHeight();
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getHideOffset() {
        return this.f329d.getActionBarHideOffset();
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getNavigationItemCount() {
        int navigationMode = this.f331f.getNavigationMode();
        if (navigationMode != 1) {
            if (navigationMode != 2) {
                return 0;
            }
            return this.f335j.size();
        }
        return this.f331f.getDropdownItemCount();
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getNavigationMode() {
        return this.f331f.getNavigationMode();
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getSelectedNavigationIndex() {
        TabImpl tabImpl;
        int navigationMode = this.f331f.getNavigationMode();
        if (navigationMode != 1) {
            if (navigationMode == 2 && (tabImpl = this.f336k) != null) {
                return tabImpl.getPosition();
            }
            return -1;
        }
        return this.f331f.getDropdownSelectedPosition();
    }

    @Override // androidx.appcompat.app.ActionBar
    public ActionBar.Tab getSelectedTab() {
        return this.f336k;
    }

    @Override // androidx.appcompat.app.ActionBar
    public CharSequence getSubtitle() {
        return this.f331f.getSubtitle();
    }

    @Override // androidx.appcompat.app.ActionBar
    public ActionBar.Tab getTabAt(int i2) {
        return this.f335j.get(i2);
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getTabCount() {
        return this.f335j.size();
    }

    @Override // androidx.appcompat.app.ActionBar
    public Context getThemedContext() {
        if (this.f327b == null) {
            TypedValue typedValue = new TypedValue();
            this.f326a.getTheme().resolveAttribute(R.attr.actionBarWidgetTheme, typedValue, true);
            int i2 = typedValue.resourceId;
            if (i2 != 0) {
                this.f327b = new ContextThemeWrapper(this.f326a, i2);
            } else {
                this.f327b = this.f326a;
            }
        }
        return this.f327b;
    }

    @Override // androidx.appcompat.app.ActionBar
    public CharSequence getTitle() {
        return this.f331f.getTitle();
    }

    public boolean hasIcon() {
        return this.f331f.hasIcon();
    }

    public boolean hasLogo() {
        return this.f331f.hasLogo();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void hide() {
        if (this.f347v) {
            return;
        }
        this.f347v = true;
        m(false);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void hideForSystem() {
        if (this.f348w) {
            return;
        }
        this.f348w = true;
        m(true);
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean isHideOnContentScrollEnabled() {
        return this.f329d.isHideOnContentScrollEnabled();
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean isShowing() {
        int height = getHeight();
        return this.f350y && (height == 0 || getHideOffset() < height);
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean isTitleTruncated() {
        DecorToolbar decorToolbar = this.f331f;
        return decorToolbar != null && decorToolbar.isTitleTruncated();
    }

    @Override // androidx.appcompat.app.ActionBar
    public ActionBar.Tab newTab() {
        return new TabImpl();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void onConfigurationChanged(Configuration configuration) {
        j(ActionBarPolicy.get(this.f326a).hasEmbeddedTabs());
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void onContentScrollStarted() {
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = this.f351z;
        if (viewPropertyAnimatorCompatSet != null) {
            viewPropertyAnimatorCompatSet.cancel();
            this.f351z = null;
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void onContentScrollStopped() {
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean onKeyShortcut(int i2, KeyEvent keyEvent) {
        Menu menu;
        ActionModeImpl actionModeImpl = this.f339n;
        if (actionModeImpl == null || (menu = actionModeImpl.getMenu()) == null) {
            return false;
        }
        menu.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menu.performShortcut(i2, keyEvent, 0);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void onWindowVisibilityChanged(int i2) {
        this.f345t = i2;
    }

    @Override // androidx.appcompat.app.ActionBar
    public void removeAllTabs() {
        c();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void removeOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener onMenuVisibilityListener) {
        this.f343r.remove(onMenuVisibilityListener);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void removeTab(ActionBar.Tab tab) {
        removeTabAt(tab.getPosition());
    }

    @Override // androidx.appcompat.app.ActionBar
    public void removeTabAt(int i2) {
        if (this.f334i == null) {
            return;
        }
        TabImpl tabImpl = this.f336k;
        int position = tabImpl != null ? tabImpl.getPosition() : this.f337l;
        this.f334i.removeTabAt(i2);
        TabImpl remove = this.f335j.remove(i2);
        if (remove != null) {
            remove.setPosition(-1);
        }
        int size = this.f335j.size();
        for (int i4 = i2; i4 < size; i4++) {
            this.f335j.get(i4).setPosition(i4);
        }
        if (position == i2) {
            selectTab(this.f335j.isEmpty() ? null : this.f335j.get(Math.max(0, i2 - 1)));
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean requestFocus() {
        ViewGroup viewGroup = this.f331f.getViewGroup();
        if (viewGroup == null || viewGroup.hasFocus()) {
            return false;
        }
        viewGroup.requestFocus();
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    public void selectTab(ActionBar.Tab tab) {
        if (getNavigationMode() != 2) {
            this.f337l = tab != null ? tab.getPosition() : -1;
            return;
        }
        FragmentTransaction disallowAddToBackStack = (!(this.f328c instanceof FragmentActivity) || this.f331f.getViewGroup().isInEditMode()) ? null : ((FragmentActivity) this.f328c).getSupportFragmentManager().beginTransaction().disallowAddToBackStack();
        TabImpl tabImpl = this.f336k;
        if (tabImpl != tab) {
            this.f334i.setTabSelected(tab != null ? tab.getPosition() : -1);
            TabImpl tabImpl2 = this.f336k;
            if (tabImpl2 != null) {
                tabImpl2.getCallback().onTabUnselected(this.f336k, disallowAddToBackStack);
            }
            TabImpl tabImpl3 = (TabImpl) tab;
            this.f336k = tabImpl3;
            if (tabImpl3 != null) {
                tabImpl3.getCallback().onTabSelected(this.f336k, disallowAddToBackStack);
            }
        } else if (tabImpl != null) {
            tabImpl.getCallback().onTabReselected(this.f336k, disallowAddToBackStack);
            this.f334i.animateToTab(tab.getPosition());
        }
        if (disallowAddToBackStack == null || disallowAddToBackStack.isEmpty()) {
            return;
        }
        disallowAddToBackStack.commit();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setBackgroundDrawable(Drawable drawable) {
        this.f330e.setPrimaryBackground(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setCustomView(int i2) {
        setCustomView(LayoutInflater.from(getThemedContext()).inflate(i2, this.f331f.getViewGroup(), false));
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setDefaultDisplayHomeAsUpEnabled(boolean z3) {
        if (this.f338m) {
            return;
        }
        setDisplayHomeAsUpEnabled(z3);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setDisplayHomeAsUpEnabled(boolean z3) {
        setDisplayOptions(z3 ? 4 : 0, 4);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setDisplayOptions(int i2) {
        if ((i2 & 4) != 0) {
            this.f338m = true;
        }
        this.f331f.setDisplayOptions(i2);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setDisplayShowCustomEnabled(boolean z3) {
        setDisplayOptions(z3 ? 16 : 0, 16);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setDisplayShowHomeEnabled(boolean z3) {
        setDisplayOptions(z3 ? 2 : 0, 2);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setDisplayShowTitleEnabled(boolean z3) {
        setDisplayOptions(z3 ? 8 : 0, 8);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setDisplayUseLogoEnabled(boolean z3) {
        setDisplayOptions(z3 ? 1 : 0, 1);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setElevation(float f4) {
        ViewCompat.setElevation(this.f330e, f4);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setHideOffset(int i2) {
        if (i2 != 0 && !this.f329d.isInOverlayMode()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset");
        }
        this.f329d.setActionBarHideOffset(i2);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setHideOnContentScrollEnabled(boolean z3) {
        if (z3 && !this.f329d.isInOverlayMode()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
        }
        this.B = z3;
        this.f329d.setHideOnContentScrollEnabled(z3);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setHomeActionContentDescription(CharSequence charSequence) {
        this.f331f.setNavigationContentDescription(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setHomeAsUpIndicator(Drawable drawable) {
        this.f331f.setNavigationIcon(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setHomeButtonEnabled(boolean z3) {
        this.f331f.setHomeButtonEnabled(z3);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setIcon(int i2) {
        this.f331f.setIcon(i2);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setListNavigationCallbacks(SpinnerAdapter spinnerAdapter, ActionBar.OnNavigationListener onNavigationListener) {
        this.f331f.setDropdownParams(spinnerAdapter, new NavItemSelectedListener(onNavigationListener));
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setLogo(int i2) {
        this.f331f.setLogo(i2);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setNavigationMode(int i2) {
        ActionBarOverlayLayout actionBarOverlayLayout;
        int navigationMode = this.f331f.getNavigationMode();
        if (navigationMode == 2) {
            this.f337l = getSelectedNavigationIndex();
            selectTab(null);
            this.f334i.setVisibility(8);
        }
        if (navigationMode != i2 && !this.f344s && (actionBarOverlayLayout = this.f329d) != null) {
            ViewCompat.requestApplyInsets(actionBarOverlayLayout);
        }
        this.f331f.setNavigationMode(i2);
        boolean z3 = false;
        if (i2 == 2) {
            f();
            this.f334i.setVisibility(0);
            int i4 = this.f337l;
            if (i4 != -1) {
                setSelectedNavigationItem(i4);
                this.f337l = -1;
            }
        }
        this.f331f.setCollapsible(i2 == 2 && !this.f344s);
        ActionBarOverlayLayout actionBarOverlayLayout2 = this.f329d;
        if (i2 == 2 && !this.f344s) {
            z3 = true;
        }
        actionBarOverlayLayout2.setHasNonEmbeddedTabs(z3);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setSelectedNavigationItem(int i2) {
        int navigationMode = this.f331f.getNavigationMode();
        if (navigationMode == 1) {
            this.f331f.setDropdownSelectedPosition(i2);
        } else if (navigationMode == 2) {
            selectTab(this.f335j.get(i2));
        } else {
            throw new IllegalStateException("setSelectedNavigationIndex not valid for current navigation mode");
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setShowHideAnimationEnabled(boolean z3) {
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet;
        this.A = z3;
        if (z3 || (viewPropertyAnimatorCompatSet = this.f351z) == null) {
            return;
        }
        viewPropertyAnimatorCompatSet.cancel();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setSplitBackgroundDrawable(Drawable drawable) {
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setStackedBackgroundDrawable(Drawable drawable) {
        this.f330e.setStackedBackground(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setSubtitle(int i2) {
        setSubtitle(this.f326a.getString(i2));
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setTitle(int i2) {
        setTitle(this.f326a.getString(i2));
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setWindowTitle(CharSequence charSequence) {
        this.f331f.setWindowTitle(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void show() {
        if (this.f347v) {
            this.f347v = false;
            m(false);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void showForSystem() {
        if (this.f348w) {
            this.f348w = false;
            m(true);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public ActionMode startActionMode(ActionMode.Callback callback) {
        ActionModeImpl actionModeImpl = this.f339n;
        if (actionModeImpl != null) {
            actionModeImpl.finish();
        }
        this.f329d.setHideOnContentScrollEnabled(false);
        this.f332g.killMode();
        ActionModeImpl actionModeImpl2 = new ActionModeImpl(this.f332g.getContext(), callback);
        if (actionModeImpl2.dispatchOnCreate()) {
            this.f339n = actionModeImpl2;
            actionModeImpl2.invalidate();
            this.f332g.initForMode(actionModeImpl2);
            animateToMode(true);
            return actionModeImpl2;
        }
        return null;
    }

    @Override // androidx.appcompat.app.ActionBar
    public void addTab(ActionBar.Tab tab, int i2) {
        addTab(tab, i2, this.f335j.isEmpty());
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setHomeActionContentDescription(int i2) {
        this.f331f.setNavigationContentDescription(i2);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setHomeAsUpIndicator(int i2) {
        this.f331f.setNavigationIcon(i2);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setIcon(Drawable drawable) {
        this.f331f.setIcon(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setLogo(Drawable drawable) {
        this.f331f.setLogo(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setSubtitle(CharSequence charSequence) {
        this.f331f.setSubtitle(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setTitle(CharSequence charSequence) {
        this.f331f.setTitle(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void addTab(ActionBar.Tab tab, boolean z3) {
        f();
        this.f334i.addTab(tab, z3);
        e(tab, this.f335j.size());
        if (z3) {
            selectTab(tab);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setDisplayOptions(int i2, int i4) {
        int displayOptions = this.f331f.getDisplayOptions();
        if ((i4 & 4) != 0) {
            this.f338m = true;
        }
        this.f331f.setDisplayOptions((i2 & i4) | ((i4 ^ (-1)) & displayOptions));
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setCustomView(View view) {
        this.f331f.setCustomView(view);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setCustomView(View view, ActionBar.LayoutParams layoutParams) {
        view.setLayoutParams(layoutParams);
        this.f331f.setCustomView(view);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void addTab(ActionBar.Tab tab, int i2, boolean z3) {
        f();
        this.f334i.addTab(tab, i2, z3);
        e(tab, i2);
        if (z3) {
            selectTab(tab);
        }
    }

    public WindowDecorActionBar(Dialog dialog) {
        i(dialog.getWindow().getDecorView());
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public WindowDecorActionBar(View view) {
        i(view);
    }
}
