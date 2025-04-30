package androidx.appcompat.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.SpinnerAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.DecorToolbar;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ToolbarWidgetWrapper;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
/* loaded from: classes.dex */
class ToolbarActionBar extends ActionBar {

    /* renamed from: a  reason: collision with root package name */
    final DecorToolbar f289a;

    /* renamed from: b  reason: collision with root package name */
    final Window.Callback f290b;

    /* renamed from: c  reason: collision with root package name */
    final AppCompatDelegateImpl.ActionBarMenuCallback f291c;

    /* renamed from: d  reason: collision with root package name */
    boolean f292d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f293e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f294f;

    /* renamed from: g  reason: collision with root package name */
    private ArrayList<ActionBar.OnMenuVisibilityListener> f295g = new ArrayList<>();

    /* renamed from: h  reason: collision with root package name */
    private final Runnable f296h = new Runnable() { // from class: androidx.appcompat.app.ToolbarActionBar.1
        @Override // java.lang.Runnable
        public void run() {
            ToolbarActionBar.this.c();
        }
    };

    /* renamed from: i  reason: collision with root package name */
    private final Toolbar.OnMenuItemClickListener f297i;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class ActionMenuPresenterCallback implements MenuPresenter.Callback {

        /* renamed from: a  reason: collision with root package name */
        private boolean f300a;

        ActionMenuPresenterCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public void onCloseMenu(@NonNull MenuBuilder menuBuilder, boolean z3) {
            if (this.f300a) {
                return;
            }
            this.f300a = true;
            ToolbarActionBar.this.f289a.dismissPopupMenus();
            ToolbarActionBar.this.f290b.onPanelClosed(108, menuBuilder);
            this.f300a = false;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(@NonNull MenuBuilder menuBuilder) {
            ToolbarActionBar.this.f290b.onMenuOpened(108, menuBuilder);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class MenuBuilderCallback implements MenuBuilder.Callback {
        MenuBuilderCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(@NonNull MenuBuilder menuBuilder) {
            if (ToolbarActionBar.this.f289a.isOverflowMenuShowing()) {
                ToolbarActionBar.this.f290b.onPanelClosed(108, menuBuilder);
            } else if (ToolbarActionBar.this.f290b.onPreparePanel(0, null, menuBuilder)) {
                ToolbarActionBar.this.f290b.onMenuOpened(108, menuBuilder);
            }
        }
    }

    /* loaded from: classes.dex */
    private class ToolbarMenuCallback implements AppCompatDelegateImpl.ActionBarMenuCallback {
        ToolbarMenuCallback() {
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.ActionBarMenuCallback
        public View onCreatePanelView(int i2) {
            if (i2 == 0) {
                return new View(ToolbarActionBar.this.f289a.getContext());
            }
            return null;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.ActionBarMenuCallback
        public boolean onPreparePanel(int i2) {
            if (i2 == 0) {
                ToolbarActionBar toolbarActionBar = ToolbarActionBar.this;
                if (toolbarActionBar.f292d) {
                    return false;
                }
                toolbarActionBar.f289a.setMenuPrepared();
                ToolbarActionBar.this.f292d = true;
                return false;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ToolbarActionBar(@NonNull Toolbar toolbar, @Nullable CharSequence charSequence, @NonNull Window.Callback callback) {
        Toolbar.OnMenuItemClickListener onMenuItemClickListener = new Toolbar.OnMenuItemClickListener() { // from class: androidx.appcompat.app.ToolbarActionBar.2
            @Override // androidx.appcompat.widget.Toolbar.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                return ToolbarActionBar.this.f290b.onMenuItemSelected(0, menuItem);
            }
        };
        this.f297i = onMenuItemClickListener;
        Preconditions.checkNotNull(toolbar);
        ToolbarWidgetWrapper toolbarWidgetWrapper = new ToolbarWidgetWrapper(toolbar, false);
        this.f289a = toolbarWidgetWrapper;
        this.f290b = (Window.Callback) Preconditions.checkNotNull(callback);
        toolbarWidgetWrapper.setWindowCallback(callback);
        toolbar.setOnMenuItemClickListener(onMenuItemClickListener);
        toolbarWidgetWrapper.setWindowTitle(charSequence);
        this.f291c = new ToolbarMenuCallback();
    }

    private Menu b() {
        if (!this.f293e) {
            this.f289a.setMenuCallbacks(new ActionMenuPresenterCallback(), new MenuBuilderCallback());
            this.f293e = true;
        }
        return this.f289a.getMenu();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.app.ActionBar
    public void a() {
        this.f289a.getViewGroup().removeCallbacks(this.f296h);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void addOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener onMenuVisibilityListener) {
        this.f295g.add(onMenuVisibilityListener);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void addTab(ActionBar.Tab tab) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    void c() {
        Menu b4 = b();
        MenuBuilder menuBuilder = b4 instanceof MenuBuilder ? (MenuBuilder) b4 : null;
        if (menuBuilder != null) {
            menuBuilder.stopDispatchingItemsChanged();
        }
        try {
            b4.clear();
            if (!this.f290b.onCreatePanelMenu(0, b4) || !this.f290b.onPreparePanel(0, null, b4)) {
                b4.clear();
            }
        } finally {
            if (menuBuilder != null) {
                menuBuilder.startDispatchingItemsChanged();
            }
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean closeOptionsMenu() {
        return this.f289a.hideOverflowMenu();
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean collapseActionView() {
        if (this.f289a.hasExpandedActionView()) {
            this.f289a.collapseActionView();
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.app.ActionBar
    public void dispatchMenuVisibilityChanged(boolean z3) {
        if (z3 == this.f294f) {
            return;
        }
        this.f294f = z3;
        int size = this.f295g.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f295g.get(i2).onMenuVisibilityChanged(z3);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public View getCustomView() {
        return this.f289a.getCustomView();
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getDisplayOptions() {
        return this.f289a.getDisplayOptions();
    }

    @Override // androidx.appcompat.app.ActionBar
    public float getElevation() {
        return ViewCompat.getElevation(this.f289a.getViewGroup());
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getHeight() {
        return this.f289a.getHeight();
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getNavigationItemCount() {
        return 0;
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getNavigationMode() {
        return 0;
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getSelectedNavigationIndex() {
        return -1;
    }

    @Override // androidx.appcompat.app.ActionBar
    public ActionBar.Tab getSelectedTab() {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.ActionBar
    public CharSequence getSubtitle() {
        return this.f289a.getSubtitle();
    }

    @Override // androidx.appcompat.app.ActionBar
    public ActionBar.Tab getTabAt(int i2) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getTabCount() {
        return 0;
    }

    @Override // androidx.appcompat.app.ActionBar
    public Context getThemedContext() {
        return this.f289a.getContext();
    }

    @Override // androidx.appcompat.app.ActionBar
    public CharSequence getTitle() {
        return this.f289a.getTitle();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void hide() {
        this.f289a.setVisibility(8);
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean invalidateOptionsMenu() {
        this.f289a.getViewGroup().removeCallbacks(this.f296h);
        ViewCompat.postOnAnimation(this.f289a.getViewGroup(), this.f296h);
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean isShowing() {
        return this.f289a.getVisibility() == 0;
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean isTitleTruncated() {
        return super.isTitleTruncated();
    }

    @Override // androidx.appcompat.app.ActionBar
    public ActionBar.Tab newTab() {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.ActionBar
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean onKeyShortcut(int i2, KeyEvent keyEvent) {
        Menu b4 = b();
        if (b4 != null) {
            b4.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
            return b4.performShortcut(i2, keyEvent, 0);
        }
        return false;
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean onMenuKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            openOptionsMenu();
        }
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean openOptionsMenu() {
        return this.f289a.showOverflowMenu();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void removeAllTabs() {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.ActionBar
    public void removeOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener onMenuVisibilityListener) {
        this.f295g.remove(onMenuVisibilityListener);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void removeTab(ActionBar.Tab tab) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.ActionBar
    public void removeTabAt(int i2) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean requestFocus() {
        ViewGroup viewGroup = this.f289a.getViewGroup();
        if (viewGroup == null || viewGroup.hasFocus()) {
            return false;
        }
        viewGroup.requestFocus();
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    public void selectTab(ActionBar.Tab tab) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        this.f289a.setBackgroundDrawable(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setCustomView(View view) {
        setCustomView(view, new ActionBar.LayoutParams(-2, -2));
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setDefaultDisplayHomeAsUpEnabled(boolean z3) {
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setDisplayHomeAsUpEnabled(boolean z3) {
        setDisplayOptions(z3 ? 4 : 0, 4);
    }

    @Override // androidx.appcompat.app.ActionBar
    @SuppressLint({"WrongConstant"})
    public void setDisplayOptions(int i2) {
        setDisplayOptions(i2, -1);
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
        ViewCompat.setElevation(this.f289a.getViewGroup(), f4);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setHomeActionContentDescription(CharSequence charSequence) {
        this.f289a.setNavigationContentDescription(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setHomeAsUpIndicator(Drawable drawable) {
        this.f289a.setNavigationIcon(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setHomeButtonEnabled(boolean z3) {
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setIcon(int i2) {
        this.f289a.setIcon(i2);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setListNavigationCallbacks(SpinnerAdapter spinnerAdapter, ActionBar.OnNavigationListener onNavigationListener) {
        this.f289a.setDropdownParams(spinnerAdapter, new NavItemSelectedListener(onNavigationListener));
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setLogo(int i2) {
        this.f289a.setLogo(i2);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setNavigationMode(int i2) {
        if (i2 != 2) {
            this.f289a.setNavigationMode(i2);
            return;
        }
        throw new IllegalArgumentException("Tabs not supported in this configuration");
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setSelectedNavigationItem(int i2) {
        if (this.f289a.getNavigationMode() == 1) {
            this.f289a.setDropdownSelectedPosition(i2);
            return;
        }
        throw new IllegalStateException("setSelectedNavigationIndex not valid for current navigation mode");
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setShowHideAnimationEnabled(boolean z3) {
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setSplitBackgroundDrawable(Drawable drawable) {
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setStackedBackgroundDrawable(Drawable drawable) {
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setSubtitle(CharSequence charSequence) {
        this.f289a.setSubtitle(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setTitle(CharSequence charSequence) {
        this.f289a.setTitle(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setWindowTitle(CharSequence charSequence) {
        this.f289a.setWindowTitle(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void show() {
        this.f289a.setVisibility(0);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void addTab(ActionBar.Tab tab, boolean z3) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setCustomView(View view, ActionBar.LayoutParams layoutParams) {
        if (view != null) {
            view.setLayoutParams(layoutParams);
        }
        this.f289a.setCustomView(view);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setDisplayOptions(int i2, int i4) {
        this.f289a.setDisplayOptions((i2 & i4) | ((i4 ^ (-1)) & this.f289a.getDisplayOptions()));
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setHomeActionContentDescription(int i2) {
        this.f289a.setNavigationContentDescription(i2);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setHomeAsUpIndicator(int i2) {
        this.f289a.setNavigationIcon(i2);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setIcon(Drawable drawable) {
        this.f289a.setIcon(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setLogo(Drawable drawable) {
        this.f289a.setLogo(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setSubtitle(int i2) {
        DecorToolbar decorToolbar = this.f289a;
        decorToolbar.setSubtitle(i2 != 0 ? decorToolbar.getContext().getText(i2) : null);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setTitle(int i2) {
        DecorToolbar decorToolbar = this.f289a;
        decorToolbar.setTitle(i2 != 0 ? decorToolbar.getContext().getText(i2) : null);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void addTab(ActionBar.Tab tab, int i2) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.ActionBar
    public void addTab(ActionBar.Tab tab, int i2, boolean z3) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setCustomView(int i2) {
        setCustomView(LayoutInflater.from(this.f289a.getContext()).inflate(i2, this.f289a.getViewGroup(), false));
    }
}
