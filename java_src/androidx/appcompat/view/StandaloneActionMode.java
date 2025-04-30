package androidx.appcompat.view;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class StandaloneActionMode extends ActionMode implements MenuBuilder.Callback {

    /* renamed from: c  reason: collision with root package name */
    private Context f452c;

    /* renamed from: d  reason: collision with root package name */
    private ActionBarContextView f453d;

    /* renamed from: e  reason: collision with root package name */
    private ActionMode.Callback f454e;

    /* renamed from: f  reason: collision with root package name */
    private WeakReference<View> f455f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f456g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f457h;

    /* renamed from: i  reason: collision with root package name */
    private MenuBuilder f458i;

    public StandaloneActionMode(Context context, ActionBarContextView actionBarContextView, ActionMode.Callback callback, boolean z3) {
        this.f452c = context;
        this.f453d = actionBarContextView;
        this.f454e = callback;
        MenuBuilder defaultShowAsAction = new MenuBuilder(actionBarContextView.getContext()).setDefaultShowAsAction(1);
        this.f458i = defaultShowAsAction;
        defaultShowAsAction.setCallback(this);
        this.f457h = z3;
    }

    @Override // androidx.appcompat.view.ActionMode
    public void finish() {
        if (this.f456g) {
            return;
        }
        this.f456g = true;
        this.f454e.onDestroyActionMode(this);
    }

    @Override // androidx.appcompat.view.ActionMode
    public View getCustomView() {
        WeakReference<View> weakReference = this.f455f;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override // androidx.appcompat.view.ActionMode
    public Menu getMenu() {
        return this.f458i;
    }

    @Override // androidx.appcompat.view.ActionMode
    public MenuInflater getMenuInflater() {
        return new SupportMenuInflater(this.f453d.getContext());
    }

    @Override // androidx.appcompat.view.ActionMode
    public CharSequence getSubtitle() {
        return this.f453d.getSubtitle();
    }

    @Override // androidx.appcompat.view.ActionMode
    public CharSequence getTitle() {
        return this.f453d.getTitle();
    }

    @Override // androidx.appcompat.view.ActionMode
    public void invalidate() {
        this.f454e.onPrepareActionMode(this, this.f458i);
    }

    @Override // androidx.appcompat.view.ActionMode
    public boolean isTitleOptional() {
        return this.f453d.isTitleOptional();
    }

    @Override // androidx.appcompat.view.ActionMode
    public boolean isUiFocusable() {
        return this.f457h;
    }

    public void onCloseMenu(MenuBuilder menuBuilder, boolean z3) {
    }

    public void onCloseSubMenu(SubMenuBuilder subMenuBuilder) {
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public boolean onMenuItemSelected(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
        return this.f454e.onActionItemClicked(this, menuItem);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public void onMenuModeChange(@NonNull MenuBuilder menuBuilder) {
        invalidate();
        this.f453d.showOverflowMenu();
    }

    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        if (subMenuBuilder.hasVisibleItems()) {
            new MenuPopupHelper(this.f453d.getContext(), subMenuBuilder).show();
            return true;
        }
        return true;
    }

    @Override // androidx.appcompat.view.ActionMode
    public void setCustomView(View view) {
        this.f453d.setCustomView(view);
        this.f455f = view != null ? new WeakReference<>(view) : null;
    }

    @Override // androidx.appcompat.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.f453d.setSubtitle(charSequence);
    }

    @Override // androidx.appcompat.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.f453d.setTitle(charSequence);
    }

    @Override // androidx.appcompat.view.ActionMode
    public void setTitleOptionalHint(boolean z3) {
        super.setTitleOptionalHint(z3);
        this.f453d.setTitleOptional(z3);
    }

    @Override // androidx.appcompat.view.ActionMode
    public void setSubtitle(int i2) {
        setSubtitle(this.f452c.getString(i2));
    }

    @Override // androidx.appcompat.view.ActionMode
    public void setTitle(int i2) {
        setTitle(this.f452c.getString(i2));
    }
}
