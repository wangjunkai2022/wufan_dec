package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import java.util.ArrayList;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ListMenuPresenter implements MenuPresenter, AdapterView.OnItemClickListener {
    public static final String VIEWS_TAG = "android:menu:list";

    /* renamed from: k  reason: collision with root package name */
    private static final String f620k = "ListMenuPresenter";

    /* renamed from: a  reason: collision with root package name */
    Context f621a;

    /* renamed from: b  reason: collision with root package name */
    LayoutInflater f622b;

    /* renamed from: c  reason: collision with root package name */
    MenuBuilder f623c;

    /* renamed from: d  reason: collision with root package name */
    ExpandedMenuView f624d;

    /* renamed from: e  reason: collision with root package name */
    int f625e;

    /* renamed from: f  reason: collision with root package name */
    int f626f;

    /* renamed from: g  reason: collision with root package name */
    int f627g;

    /* renamed from: h  reason: collision with root package name */
    private MenuPresenter.Callback f628h;

    /* renamed from: i  reason: collision with root package name */
    MenuAdapter f629i;

    /* renamed from: j  reason: collision with root package name */
    private int f630j;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class MenuAdapter extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        private int f631a = -1;

        public MenuAdapter() {
            a();
        }

        void a() {
            MenuItemImpl expandedItem = ListMenuPresenter.this.f623c.getExpandedItem();
            if (expandedItem != null) {
                ArrayList<MenuItemImpl> nonActionItems = ListMenuPresenter.this.f623c.getNonActionItems();
                int size = nonActionItems.size();
                for (int i2 = 0; i2 < size; i2++) {
                    if (nonActionItems.get(i2) == expandedItem) {
                        this.f631a = i2;
                        return;
                    }
                }
            }
            this.f631a = -1;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int size = ListMenuPresenter.this.f623c.getNonActionItems().size() - ListMenuPresenter.this.f625e;
            return this.f631a < 0 ? size : size - 1;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            if (view == null) {
                ListMenuPresenter listMenuPresenter = ListMenuPresenter.this;
                view = listMenuPresenter.f622b.inflate(listMenuPresenter.f627g, viewGroup, false);
            }
            ((MenuView.ItemView) view).initialize(getItem(i2), 0);
            return view;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            a();
            super.notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public MenuItemImpl getItem(int i2) {
            ArrayList<MenuItemImpl> nonActionItems = ListMenuPresenter.this.f623c.getNonActionItems();
            int i4 = i2 + ListMenuPresenter.this.f625e;
            int i5 = this.f631a;
            if (i5 >= 0 && i4 >= i5) {
                i4++;
            }
            return nonActionItems.get(i4);
        }
    }

    public ListMenuPresenter(Context context, int i2) {
        this(i2, 0);
        this.f621a = context;
        this.f622b = LayoutInflater.from(context);
    }

    int a() {
        return this.f625e;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean flagActionItems() {
        return false;
    }

    public ListAdapter getAdapter() {
        if (this.f629i == null) {
            this.f629i = new MenuAdapter();
        }
        return this.f629i;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public int getId() {
        return this.f630j;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public MenuView getMenuView(ViewGroup viewGroup) {
        if (this.f624d == null) {
            this.f624d = (ExpandedMenuView) this.f622b.inflate(R.layout.abc_expanded_menu_layout, viewGroup, false);
            if (this.f629i == null) {
                this.f629i = new MenuAdapter();
            }
            this.f624d.setAdapter((ListAdapter) this.f629i);
            this.f624d.setOnItemClickListener(this);
        }
        return this.f624d;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void initForMenu(Context context, MenuBuilder menuBuilder) {
        if (this.f626f != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, this.f626f);
            this.f621a = contextThemeWrapper;
            this.f622b = LayoutInflater.from(contextThemeWrapper);
        } else if (this.f621a != null) {
            this.f621a = context;
            if (this.f622b == null) {
                this.f622b = LayoutInflater.from(context);
            }
        }
        this.f623c = menuBuilder;
        MenuAdapter menuAdapter = this.f629i;
        if (menuAdapter != null) {
            menuAdapter.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z3) {
        MenuPresenter.Callback callback = this.f628h;
        if (callback != null) {
            callback.onCloseMenu(menuBuilder, z3);
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
        this.f623c.performItemAction(this.f629i.getItem(i2), this, 0);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onRestoreInstanceState(Parcelable parcelable) {
        restoreHierarchyState((Bundle) parcelable);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public Parcelable onSaveInstanceState() {
        if (this.f624d == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        saveHierarchyState(bundle);
        return bundle;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        if (subMenuBuilder.hasVisibleItems()) {
            new MenuDialogHelper(subMenuBuilder).show(null);
            MenuPresenter.Callback callback = this.f628h;
            if (callback != null) {
                callback.onOpenSubMenu(subMenuBuilder);
                return true;
            }
            return true;
        }
        return false;
    }

    public void restoreHierarchyState(Bundle bundle) {
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(VIEWS_TAG);
        if (sparseParcelableArray != null) {
            this.f624d.restoreHierarchyState(sparseParcelableArray);
        }
    }

    public void saveHierarchyState(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        ExpandedMenuView expandedMenuView = this.f624d;
        if (expandedMenuView != null) {
            expandedMenuView.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray(VIEWS_TAG, sparseArray);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void setCallback(MenuPresenter.Callback callback) {
        this.f628h = callback;
    }

    public void setId(int i2) {
        this.f630j = i2;
    }

    public void setItemIndexOffset(int i2) {
        this.f625e = i2;
        if (this.f624d != null) {
            updateMenuView(false);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void updateMenuView(boolean z3) {
        MenuAdapter menuAdapter = this.f629i;
        if (menuAdapter != null) {
            menuAdapter.notifyDataSetChanged();
        }
    }

    public ListMenuPresenter(int i2, int i4) {
        this.f627g = i2;
        this.f626f = i4;
    }
}
