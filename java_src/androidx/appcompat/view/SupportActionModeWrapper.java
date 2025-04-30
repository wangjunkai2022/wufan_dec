package androidx.appcompat.view;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.menu.MenuItemWrapperICS;
import androidx.appcompat.view.menu.MenuWrapperICS;
import androidx.collection.SimpleArrayMap;
import androidx.core.internal.view.SupportMenu;
import androidx.core.internal.view.SupportMenuItem;
import java.util.ArrayList;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class SupportActionModeWrapper extends android.view.ActionMode {

    /* renamed from: a  reason: collision with root package name */
    final Context f459a;

    /* renamed from: b  reason: collision with root package name */
    final ActionMode f460b;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public static class CallbackWrapper implements ActionMode.Callback {

        /* renamed from: a  reason: collision with root package name */
        final ActionMode.Callback f461a;

        /* renamed from: b  reason: collision with root package name */
        final Context f462b;

        /* renamed from: c  reason: collision with root package name */
        final ArrayList<SupportActionModeWrapper> f463c = new ArrayList<>();

        /* renamed from: d  reason: collision with root package name */
        final SimpleArrayMap<Menu, Menu> f464d = new SimpleArrayMap<>();

        public CallbackWrapper(Context context, ActionMode.Callback callback) {
            this.f462b = context;
            this.f461a = callback;
        }

        private Menu a(Menu menu) {
            Menu menu2 = this.f464d.get(menu);
            if (menu2 == null) {
                MenuWrapperICS menuWrapperICS = new MenuWrapperICS(this.f462b, (SupportMenu) menu);
                this.f464d.put(menu, menuWrapperICS);
                return menuWrapperICS;
            }
            return menu2;
        }

        public android.view.ActionMode getActionModeWrapper(ActionMode actionMode) {
            int size = this.f463c.size();
            for (int i2 = 0; i2 < size; i2++) {
                SupportActionModeWrapper supportActionModeWrapper = this.f463c.get(i2);
                if (supportActionModeWrapper != null && supportActionModeWrapper.f460b == actionMode) {
                    return supportActionModeWrapper;
                }
            }
            SupportActionModeWrapper supportActionModeWrapper2 = new SupportActionModeWrapper(this.f462b, actionMode);
            this.f463c.add(supportActionModeWrapper2);
            return supportActionModeWrapper2;
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.f461a.onActionItemClicked(getActionModeWrapper(actionMode), new MenuItemWrapperICS(this.f462b, (SupportMenuItem) menuItem));
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.f461a.onCreateActionMode(getActionModeWrapper(actionMode), a(menu));
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            this.f461a.onDestroyActionMode(getActionModeWrapper(actionMode));
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            return this.f461a.onPrepareActionMode(getActionModeWrapper(actionMode), a(menu));
        }
    }

    public SupportActionModeWrapper(Context context, ActionMode actionMode) {
        this.f459a = context;
        this.f460b = actionMode;
    }

    @Override // android.view.ActionMode
    public void finish() {
        this.f460b.finish();
    }

    @Override // android.view.ActionMode
    public View getCustomView() {
        return this.f460b.getCustomView();
    }

    @Override // android.view.ActionMode
    public Menu getMenu() {
        return new MenuWrapperICS(this.f459a, (SupportMenu) this.f460b.getMenu());
    }

    @Override // android.view.ActionMode
    public MenuInflater getMenuInflater() {
        return this.f460b.getMenuInflater();
    }

    @Override // android.view.ActionMode
    public CharSequence getSubtitle() {
        return this.f460b.getSubtitle();
    }

    @Override // android.view.ActionMode
    public Object getTag() {
        return this.f460b.getTag();
    }

    @Override // android.view.ActionMode
    public CharSequence getTitle() {
        return this.f460b.getTitle();
    }

    @Override // android.view.ActionMode
    public boolean getTitleOptionalHint() {
        return this.f460b.getTitleOptionalHint();
    }

    @Override // android.view.ActionMode
    public void invalidate() {
        this.f460b.invalidate();
    }

    @Override // android.view.ActionMode
    public boolean isTitleOptional() {
        return this.f460b.isTitleOptional();
    }

    @Override // android.view.ActionMode
    public void setCustomView(View view) {
        this.f460b.setCustomView(view);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.f460b.setSubtitle(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTag(Object obj) {
        this.f460b.setTag(obj);
    }

    @Override // android.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.f460b.setTitle(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTitleOptionalHint(boolean z3) {
        this.f460b.setTitleOptionalHint(z3);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i2) {
        this.f460b.setSubtitle(i2);
    }

    @Override // android.view.ActionMode
    public void setTitle(int i2) {
        this.f460b.setTitle(i2);
    }
}
