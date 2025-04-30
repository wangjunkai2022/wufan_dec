package androidx.appcompat.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.menu.MenuView;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.internal.view.SupportMenuItem;
import androidx.core.view.ActionProvider;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class MenuItemImpl implements SupportMenuItem {
    private static final String F = "MenuItemImpl";
    private static final int G = 3;
    private static final int H = 1;
    private static final int I = 2;
    private static final int J = 4;
    private static final int K = 8;
    private static final int L = 16;
    private static final int M = 32;
    static final int N = 0;
    private View A;
    private ActionProvider B;
    private MenuItem.OnActionExpandListener C;
    private ContextMenu.ContextMenuInfo E;

    /* renamed from: a  reason: collision with root package name */
    private final int f669a;

    /* renamed from: b  reason: collision with root package name */
    private final int f670b;

    /* renamed from: c  reason: collision with root package name */
    private final int f671c;

    /* renamed from: d  reason: collision with root package name */
    private final int f672d;

    /* renamed from: e  reason: collision with root package name */
    private CharSequence f673e;

    /* renamed from: f  reason: collision with root package name */
    private CharSequence f674f;

    /* renamed from: g  reason: collision with root package name */
    private Intent f675g;

    /* renamed from: h  reason: collision with root package name */
    private char f676h;

    /* renamed from: j  reason: collision with root package name */
    private char f678j;

    /* renamed from: l  reason: collision with root package name */
    private Drawable f680l;

    /* renamed from: n  reason: collision with root package name */
    MenuBuilder f682n;

    /* renamed from: o  reason: collision with root package name */
    private SubMenuBuilder f683o;

    /* renamed from: p  reason: collision with root package name */
    private Runnable f684p;

    /* renamed from: q  reason: collision with root package name */
    private MenuItem.OnMenuItemClickListener f685q;

    /* renamed from: r  reason: collision with root package name */
    private CharSequence f686r;

    /* renamed from: s  reason: collision with root package name */
    private CharSequence f687s;

    /* renamed from: z  reason: collision with root package name */
    private int f694z;

    /* renamed from: i  reason: collision with root package name */
    private int f677i = 4096;

    /* renamed from: k  reason: collision with root package name */
    private int f679k = 4096;

    /* renamed from: m  reason: collision with root package name */
    private int f681m = 0;

    /* renamed from: t  reason: collision with root package name */
    private ColorStateList f688t = null;

    /* renamed from: u  reason: collision with root package name */
    private PorterDuff.Mode f689u = null;

    /* renamed from: v  reason: collision with root package name */
    private boolean f690v = false;

    /* renamed from: w  reason: collision with root package name */
    private boolean f691w = false;

    /* renamed from: x  reason: collision with root package name */
    private boolean f692x = false;

    /* renamed from: y  reason: collision with root package name */
    private int f693y = 16;
    private boolean D = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MenuItemImpl(MenuBuilder menuBuilder, int i2, int i4, int i5, int i6, CharSequence charSequence, int i7) {
        this.f694z = 0;
        this.f682n = menuBuilder;
        this.f669a = i4;
        this.f670b = i2;
        this.f671c = i5;
        this.f672d = i6;
        this.f673e = charSequence;
        this.f694z = i7;
    }

    private static void a(StringBuilder sb, int i2, int i4, String str) {
        if ((i2 & i4) == i4) {
            sb.append(str);
        }
    }

    private Drawable b(Drawable drawable) {
        if (drawable != null && this.f692x && (this.f690v || this.f691w)) {
            drawable = DrawableCompat.wrap(drawable).mutate();
            if (this.f690v) {
                DrawableCompat.setTintList(drawable, this.f688t);
            }
            if (this.f691w) {
                DrawableCompat.setTintMode(drawable, this.f689u);
            }
            this.f692x = false;
        }
        return drawable;
    }

    public void actionFormatChanged() {
        this.f682n.m(this);
    }

    Runnable c() {
        return this.f684p;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean collapseActionView() {
        if ((this.f694z & 8) == 0) {
            return false;
        }
        if (this.A == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.C;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.f682n.collapseItemActionView(this);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public char d() {
        return this.f682n.isQwertyMode() ? this.f678j : this.f676h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String e() {
        char d4 = d();
        if (d4 == 0) {
            return "";
        }
        Resources resources = this.f682n.getContext().getResources();
        StringBuilder sb = new StringBuilder();
        if (ViewConfiguration.get(this.f682n.getContext()).hasPermanentMenuKey()) {
            sb.append(resources.getString(R.string.abc_prepend_shortcut_label));
        }
        int i2 = this.f682n.isQwertyMode() ? this.f679k : this.f677i;
        a(sb, i2, 65536, resources.getString(R.string.abc_menu_meta_shortcut_label));
        a(sb, i2, 4096, resources.getString(R.string.abc_menu_ctrl_shortcut_label));
        a(sb, i2, 2, resources.getString(R.string.abc_menu_alt_shortcut_label));
        a(sb, i2, 1, resources.getString(R.string.abc_menu_shift_shortcut_label));
        a(sb, i2, 4, resources.getString(R.string.abc_menu_sym_shortcut_label));
        a(sb, i2, 8, resources.getString(R.string.abc_menu_function_shortcut_label));
        if (d4 == '\b') {
            sb.append(resources.getString(R.string.abc_menu_delete_shortcut_label));
        } else if (d4 == '\n') {
            sb.append(resources.getString(R.string.abc_menu_enter_shortcut_label));
        } else if (d4 != ' ') {
            sb.append(d4);
        } else {
            sb.append(resources.getString(R.string.abc_menu_space_shortcut_label));
        }
        return sb.toString();
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean expandActionView() {
        if (hasCollapsibleActionView()) {
            MenuItem.OnActionExpandListener onActionExpandListener = this.C;
            if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
                return this.f682n.expandItemActionView(this);
            }
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CharSequence f(MenuView.ItemView itemView) {
        if (itemView != null && itemView.prefersCondensedTitle()) {
            return getTitleCondensed();
        }
        return getTitle();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(boolean z3) {
        int i2 = this.f693y;
        int i4 = (z3 ? 2 : 0) | (i2 & (-3));
        this.f693y = i4;
        if (i2 != i4) {
            this.f682n.onItemsChanged(false);
        }
    }

    @Override // android.view.MenuItem
    public android.view.ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public View getActionView() {
        View view = this.A;
        if (view != null) {
            return view;
        }
        ActionProvider actionProvider = this.B;
        if (actionProvider != null) {
            View onCreateActionView = actionProvider.onCreateActionView(this);
            this.A = onCreateActionView;
            return onCreateActionView;
        }
        return null;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f679k;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f678j;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f686r;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f670b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        Drawable drawable = this.f680l;
        if (drawable != null) {
            return b(drawable);
        }
        if (this.f681m != 0) {
            Drawable drawable2 = AppCompatResources.getDrawable(this.f682n.getContext(), this.f681m);
            this.f681m = 0;
            this.f680l = drawable2;
            return b(drawable2);
        }
        return null;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f688t;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f689u;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f675g;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public int getItemId() {
        return this.f669a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.E;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f677i;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f676h;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f671c;
    }

    public int getOrdering() {
        return this.f672d;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return this.f683o;
    }

    @Override // androidx.core.internal.view.SupportMenuItem
    public ActionProvider getSupportActionProvider() {
        return this.B;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public CharSequence getTitle() {
        return this.f673e;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f674f;
        if (charSequence == null) {
            charSequence = this.f673e;
        }
        return (Build.VERSION.SDK_INT >= 18 || charSequence == null || (charSequence instanceof String)) ? charSequence : charSequence.toString();
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f687s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.E = contextMenuInfo;
    }

    public boolean hasCollapsibleActionView() {
        ActionProvider actionProvider;
        if ((this.f694z & 8) != 0) {
            if (this.A == null && (actionProvider = this.B) != null) {
                this.A = actionProvider.onCreateActionView(this);
            }
            return this.A != null;
        }
        return false;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f683o != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean i(boolean z3) {
        int i2 = this.f693y;
        int i4 = (z3 ? 0 : 8) | (i2 & (-9));
        this.f693y = i4;
        return i2 != i4;
    }

    public boolean invoke() {
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.f685q;
        if (onMenuItemClickListener == null || !onMenuItemClickListener.onMenuItemClick(this)) {
            MenuBuilder menuBuilder = this.f682n;
            if (menuBuilder.c(menuBuilder, this)) {
                return true;
            }
            Runnable runnable = this.f684p;
            if (runnable != null) {
                runnable.run();
                return true;
            }
            if (this.f675g != null) {
                try {
                    this.f682n.getContext().startActivity(this.f675g);
                    return true;
                } catch (ActivityNotFoundException unused) {
                }
            }
            ActionProvider actionProvider = this.B;
            return actionProvider != null && actionProvider.onPerformDefaultAction();
        }
        return true;
    }

    public boolean isActionButton() {
        return (this.f693y & 32) == 32;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.D;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.f693y & 1) == 1;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f693y & 2) == 2;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f693y & 16) != 0;
    }

    public boolean isExclusiveCheckable() {
        return (this.f693y & 4) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        ActionProvider actionProvider = this.B;
        return (actionProvider == null || !actionProvider.overridesItemVisibility()) ? (this.f693y & 8) == 0 : (this.f693y & 8) == 0 && this.B.isVisible();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean j() {
        return this.f682n.isShortcutsVisible() && d() != 0;
    }

    public boolean requestsActionButton() {
        return (this.f694z & 1) == 1;
    }

    @Override // androidx.core.internal.view.SupportMenuItem
    public boolean requiresActionButton() {
        return (this.f694z & 2) == 2;
    }

    @Override // androidx.core.internal.view.SupportMenuItem
    public boolean requiresOverflow() {
        return (requiresActionButton() || requestsActionButton()) ? false : true;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(android.view.ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    public void setActionViewExpanded(boolean z3) {
        this.D = z3;
        this.f682n.onItemsChanged(false);
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c4) {
        if (this.f678j == c4) {
            return this;
        }
        this.f678j = Character.toLowerCase(c4);
        this.f682n.onItemsChanged(false);
        return this;
    }

    public MenuItem setCallback(Runnable runnable) {
        this.f684p = runnable;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z3) {
        int i2 = this.f693y;
        int i4 = (z3 ? 1 : 0) | (i2 & (-2));
        this.f693y = i4;
        if (i2 != i4) {
            this.f682n.onItemsChanged(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z3) {
        if ((this.f693y & 4) != 0) {
            this.f682n.p(this);
        } else {
            g(z3);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z3) {
        if (z3) {
            this.f693y |= 16;
        } else {
            this.f693y &= -17;
        }
        this.f682n.onItemsChanged(false);
        return this;
    }

    public void setExclusiveCheckable(boolean z3) {
        this.f693y = (z3 ? 4 : 0) | (this.f693y & (-5));
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f681m = 0;
        this.f680l = drawable;
        this.f692x = true;
        this.f682n.onItemsChanged(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setIconTintList(@Nullable ColorStateList colorStateList) {
        this.f688t = colorStateList;
        this.f690v = true;
        this.f692x = true;
        this.f682n.onItemsChanged(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f689u = mode;
        this.f691w = true;
        this.f692x = true;
        this.f682n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f675g = intent;
        return this;
    }

    public void setIsActionButton(boolean z3) {
        if (z3) {
            this.f693y |= 32;
        } else {
            this.f693y &= -33;
        }
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c4) {
        if (this.f676h == c4) {
            return this;
        }
        this.f676h = c4;
        this.f682n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.C = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f685q = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c4, char c5) {
        this.f676h = c4;
        this.f678j = Character.toLowerCase(c5);
        this.f682n.onItemsChanged(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public void setShowAsAction(int i2) {
        int i4 = i2 & 3;
        if (i4 != 0 && i4 != 1 && i4 != 2) {
            throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
        this.f694z = i2;
        this.f682n.m(this);
    }

    public void setSubMenu(SubMenuBuilder subMenuBuilder) {
        this.f683o = subMenuBuilder;
        subMenuBuilder.setHeaderTitle(getTitle());
    }

    @Override // androidx.core.internal.view.SupportMenuItem
    public SupportMenuItem setSupportActionProvider(ActionProvider actionProvider) {
        ActionProvider actionProvider2 = this.B;
        if (actionProvider2 != null) {
            actionProvider2.reset();
        }
        this.A = null;
        this.B = actionProvider;
        this.f682n.onItemsChanged(true);
        ActionProvider actionProvider3 = this.B;
        if (actionProvider3 != null) {
            actionProvider3.setVisibilityListener(new ActionProvider.VisibilityListener() { // from class: androidx.appcompat.view.menu.MenuItemImpl.1
                @Override // androidx.core.view.ActionProvider.VisibilityListener
                public void onActionProviderVisibilityChanged(boolean z3) {
                    MenuItemImpl menuItemImpl = MenuItemImpl.this;
                    menuItemImpl.f682n.n(menuItemImpl);
                }
            });
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f673e = charSequence;
        this.f682n.onItemsChanged(false);
        SubMenuBuilder subMenuBuilder = this.f683o;
        if (subMenuBuilder != null) {
            subMenuBuilder.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f674f = charSequence;
        this.f682n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z3) {
        if (i(z3)) {
            this.f682n.n(this);
        }
        return this;
    }

    public boolean shouldShowIcon() {
        return this.f682n.k();
    }

    public boolean showsTextAsAction() {
        return (this.f694z & 4) == 4;
    }

    public String toString() {
        CharSequence charSequence = this.f673e;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public SupportMenuItem setContentDescription(CharSequence charSequence) {
        this.f686r = charSequence;
        this.f682n.onItemsChanged(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public SupportMenuItem setShowAsActionFlags(int i2) {
        setShowAsAction(i2);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public SupportMenuItem setTooltipText(CharSequence charSequence) {
        this.f687s = charSequence;
        this.f682n.onItemsChanged(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public SupportMenuItem setActionView(View view) {
        int i2;
        this.A = view;
        this.B = null;
        if (view != null && view.getId() == -1 && (i2 = this.f669a) > 0) {
            view.setId(i2);
        }
        this.f682n.m(this);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c4, int i2) {
        if (this.f678j == c4 && this.f679k == i2) {
            return this;
        }
        this.f678j = Character.toLowerCase(c4);
        this.f679k = KeyEvent.normalizeMetaState(i2);
        this.f682n.onItemsChanged(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setNumericShortcut(char c4, int i2) {
        if (this.f676h == c4 && this.f677i == i2) {
            return this;
        }
        this.f676h = c4;
        this.f677i = KeyEvent.normalizeMetaState(i2);
        this.f682n.onItemsChanged(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setShortcut(char c4, char c5, int i2, int i4) {
        this.f676h = c4;
        this.f677i = KeyEvent.normalizeMetaState(i2);
        this.f678j = Character.toLowerCase(c5);
        this.f679k = KeyEvent.normalizeMetaState(i4);
        this.f682n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i2) {
        this.f680l = null;
        this.f681m = i2;
        this.f692x = true;
        this.f682n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i2) {
        return setTitle(this.f682n.getContext().getString(i2));
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public SupportMenuItem setActionView(int i2) {
        Context context = this.f682n.getContext();
        setActionView(LayoutInflater.from(context).inflate(i2, (ViewGroup) new LinearLayout(context), false));
        return this;
    }
}
