package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuView;
import java.util.ArrayList;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class MenuAdapter extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    MenuBuilder f633a;

    /* renamed from: b  reason: collision with root package name */
    private int f634b = -1;

    /* renamed from: c  reason: collision with root package name */
    private boolean f635c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f636d;

    /* renamed from: e  reason: collision with root package name */
    private final LayoutInflater f637e;

    /* renamed from: f  reason: collision with root package name */
    private final int f638f;

    public MenuAdapter(MenuBuilder menuBuilder, LayoutInflater layoutInflater, boolean z3, int i2) {
        this.f636d = z3;
        this.f637e = layoutInflater;
        this.f633a = menuBuilder;
        this.f638f = i2;
        a();
    }

    void a() {
        MenuItemImpl expandedItem = this.f633a.getExpandedItem();
        if (expandedItem != null) {
            ArrayList<MenuItemImpl> nonActionItems = this.f633a.getNonActionItems();
            int size = nonActionItems.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (nonActionItems.get(i2) == expandedItem) {
                    this.f634b = i2;
                    return;
                }
            }
        }
        this.f634b = -1;
    }

    public MenuBuilder getAdapterMenu() {
        return this.f633a;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList<MenuItemImpl> nonActionItems = this.f636d ? this.f633a.getNonActionItems() : this.f633a.getVisibleItems();
        if (this.f634b < 0) {
            return nonActionItems.size();
        }
        return nonActionItems.size() - 1;
    }

    public boolean getForceShowIcon() {
        return this.f635c;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f637e.inflate(this.f638f, viewGroup, false);
        }
        int groupId = getItem(i2).getGroupId();
        int i4 = i2 - 1;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        listMenuItemView.setGroupDividerEnabled(this.f633a.isGroupDividerEnabled() && groupId != (i4 >= 0 ? getItem(i4).getGroupId() : groupId));
        MenuView.ItemView itemView = (MenuView.ItemView) view;
        if (this.f635c) {
            listMenuItemView.setForceShowIcon(true);
        }
        itemView.initialize(getItem(i2), 0);
        return view;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }

    public void setForceShowIcon(boolean z3) {
        this.f635c = z3;
    }

    @Override // android.widget.Adapter
    public MenuItemImpl getItem(int i2) {
        ArrayList<MenuItemImpl> nonActionItems = this.f636d ? this.f633a.getNonActionItems() : this.f633a.getVisibleItems();
        int i4 = this.f634b;
        if (i4 >= 0 && i2 >= i4) {
            i2++;
        }
        return nonActionItems.get(i2);
    }
}
