package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.internal.view.SupportMenuItem;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ActionMenuItem implements SupportMenuItem {

    /* renamed from: u  reason: collision with root package name */
    private static final int f515u = 1;

    /* renamed from: v  reason: collision with root package name */
    private static final int f516v = 2;

    /* renamed from: w  reason: collision with root package name */
    private static final int f517w = 4;

    /* renamed from: x  reason: collision with root package name */
    private static final int f518x = 8;

    /* renamed from: y  reason: collision with root package name */
    private static final int f519y = 16;

    /* renamed from: a  reason: collision with root package name */
    private final int f520a;

    /* renamed from: b  reason: collision with root package name */
    private final int f521b;

    /* renamed from: c  reason: collision with root package name */
    private final int f522c;

    /* renamed from: d  reason: collision with root package name */
    private CharSequence f523d;

    /* renamed from: e  reason: collision with root package name */
    private CharSequence f524e;

    /* renamed from: f  reason: collision with root package name */
    private Intent f525f;

    /* renamed from: g  reason: collision with root package name */
    private char f526g;

    /* renamed from: i  reason: collision with root package name */
    private char f528i;

    /* renamed from: k  reason: collision with root package name */
    private Drawable f530k;

    /* renamed from: l  reason: collision with root package name */
    private Context f531l;

    /* renamed from: m  reason: collision with root package name */
    private MenuItem.OnMenuItemClickListener f532m;

    /* renamed from: n  reason: collision with root package name */
    private CharSequence f533n;

    /* renamed from: o  reason: collision with root package name */
    private CharSequence f534o;

    /* renamed from: h  reason: collision with root package name */
    private int f527h = 4096;

    /* renamed from: j  reason: collision with root package name */
    private int f529j = 4096;

    /* renamed from: p  reason: collision with root package name */
    private ColorStateList f535p = null;

    /* renamed from: q  reason: collision with root package name */
    private PorterDuff.Mode f536q = null;

    /* renamed from: r  reason: collision with root package name */
    private boolean f537r = false;

    /* renamed from: s  reason: collision with root package name */
    private boolean f538s = false;

    /* renamed from: t  reason: collision with root package name */
    private int f539t = 16;

    public ActionMenuItem(Context context, int i2, int i4, int i5, int i6, CharSequence charSequence) {
        this.f531l = context;
        this.f520a = i4;
        this.f521b = i2;
        this.f522c = i6;
        this.f523d = charSequence;
    }

    private void a() {
        Drawable drawable = this.f530k;
        if (drawable != null) {
            if (this.f537r || this.f538s) {
                Drawable wrap = DrawableCompat.wrap(drawable);
                this.f530k = wrap;
                Drawable mutate = wrap.mutate();
                this.f530k = mutate;
                if (this.f537r) {
                    DrawableCompat.setTintList(mutate, this.f535p);
                }
                if (this.f538s) {
                    DrawableCompat.setTintMode(this.f530k, this.f536q);
                }
            }
        }
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean collapseActionView() {
        return false;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean expandActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public View getActionView() {
        return null;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f529j;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f528i;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f533n;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f521b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f530k;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f535p;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f536q;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f525f;
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f520a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f527h;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f526g;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f522c;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return null;
    }

    @Override // androidx.core.internal.view.SupportMenuItem
    public androidx.core.view.ActionProvider getSupportActionProvider() {
        return null;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f523d;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f524e;
        return charSequence != null ? charSequence : this.f523d;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f534o;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return false;
    }

    public boolean invoke() {
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.f532m;
        if (onMenuItemClickListener == null || !onMenuItemClickListener.onMenuItemClick(this)) {
            Intent intent = this.f525f;
            if (intent != null) {
                this.f531l.startActivity(intent);
                return true;
            }
            return false;
        }
        return true;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.f539t & 1) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f539t & 2) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f539t & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return (this.f539t & 8) == 0;
    }

    @Override // androidx.core.internal.view.SupportMenuItem
    public boolean requiresActionButton() {
        return true;
    }

    @Override // androidx.core.internal.view.SupportMenuItem
    public boolean requiresOverflow() {
        return false;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c4) {
        this.f528i = Character.toLowerCase(c4);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z3) {
        this.f539t = (z3 ? 1 : 0) | (this.f539t & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z3) {
        this.f539t = (z3 ? 2 : 0) | (this.f539t & (-3));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z3) {
        this.f539t = (z3 ? 16 : 0) | (this.f539t & (-17));
        return this;
    }

    public ActionMenuItem setExclusiveCheckable(boolean z3) {
        this.f539t = (z3 ? 4 : 0) | (this.f539t & (-5));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f530k = drawable;
        a();
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setIconTintList(@Nullable ColorStateList colorStateList) {
        this.f535p = colorStateList;
        this.f537r = true;
        a();
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f536q = mode;
        this.f538s = true;
        a();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f525f = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c4) {
        this.f526g = c4;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f532m = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c4, char c5) {
        this.f526g = c4;
        this.f528i = Character.toLowerCase(c5);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public void setShowAsAction(int i2) {
    }

    @Override // androidx.core.internal.view.SupportMenuItem
    public SupportMenuItem setSupportActionProvider(androidx.core.view.ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f523d = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f524e = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z3) {
        this.f539t = (this.f539t & 8) | (z3 ? 0 : 8);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c4, int i2) {
        this.f528i = Character.toLowerCase(c4);
        this.f529j = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public SupportMenuItem setContentDescription(CharSequence charSequence) {
        this.f533n = charSequence;
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setNumericShortcut(char c4, int i2) {
        this.f526g = c4;
        this.f527h = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public SupportMenuItem setShowAsActionFlags(int i2) {
        setShowAsAction(i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i2) {
        this.f523d = this.f531l.getResources().getString(i2);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public SupportMenuItem setTooltipText(CharSequence charSequence) {
        this.f534o = charSequence;
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public SupportMenuItem setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i2) {
        this.f530k = ContextCompat.getDrawable(this.f531l, i2);
        a();
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setShortcut(char c4, char c5, int i2, int i4) {
        this.f526g = c4;
        this.f527h = KeyEvent.normalizeMetaState(i2);
        this.f528i = Character.toLowerCase(c5);
        this.f529j = KeyEvent.normalizeMetaState(i4);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public SupportMenuItem setActionView(int i2) {
        throw new UnsupportedOperationException();
    }
}
