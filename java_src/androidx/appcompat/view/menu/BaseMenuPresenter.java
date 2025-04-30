package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import java.util.ArrayList;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public abstract class BaseMenuPresenter implements MenuPresenter {

    /* renamed from: a  reason: collision with root package name */
    protected Context f554a;

    /* renamed from: b  reason: collision with root package name */
    protected Context f555b;

    /* renamed from: c  reason: collision with root package name */
    protected MenuBuilder f556c;

    /* renamed from: d  reason: collision with root package name */
    protected LayoutInflater f557d;

    /* renamed from: e  reason: collision with root package name */
    protected LayoutInflater f558e;

    /* renamed from: f  reason: collision with root package name */
    private MenuPresenter.Callback f559f;

    /* renamed from: g  reason: collision with root package name */
    private int f560g;

    /* renamed from: h  reason: collision with root package name */
    private int f561h;

    /* renamed from: i  reason: collision with root package name */
    protected MenuView f562i;

    /* renamed from: j  reason: collision with root package name */
    private int f563j;

    public BaseMenuPresenter(Context context, int i2, int i4) {
        this.f554a = context;
        this.f557d = LayoutInflater.from(context);
        this.f560g = i2;
        this.f561h = i4;
    }

    protected void a(View view, int i2) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        ((ViewGroup) this.f562i).addView(view, i2);
    }

    public abstract void bindItemView(MenuItemImpl menuItemImpl, MenuView.ItemView itemView);

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    public MenuView.ItemView createItemView(ViewGroup viewGroup) {
        return (MenuView.ItemView) this.f557d.inflate(this.f561h, viewGroup, false);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean filterLeftoverView(ViewGroup viewGroup, int i2) {
        viewGroup.removeViewAt(i2);
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean flagActionItems() {
        return false;
    }

    public MenuPresenter.Callback getCallback() {
        return this.f559f;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public int getId() {
        return this.f563j;
    }

    public View getItemView(MenuItemImpl menuItemImpl, View view, ViewGroup viewGroup) {
        MenuView.ItemView createItemView;
        if (view instanceof MenuView.ItemView) {
            createItemView = (MenuView.ItemView) view;
        } else {
            createItemView = createItemView(viewGroup);
        }
        bindItemView(menuItemImpl, createItemView);
        return (View) createItemView;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public MenuView getMenuView(ViewGroup viewGroup) {
        if (this.f562i == null) {
            MenuView menuView = (MenuView) this.f557d.inflate(this.f560g, viewGroup, false);
            this.f562i = menuView;
            menuView.initialize(this.f556c);
            updateMenuView(true);
        }
        return this.f562i;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void initForMenu(Context context, MenuBuilder menuBuilder) {
        this.f555b = context;
        this.f558e = LayoutInflater.from(context);
        this.f556c = menuBuilder;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z3) {
        MenuPresenter.Callback callback = this.f559f;
        if (callback != null) {
            callback.onCloseMenu(menuBuilder, z3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v4, types: [androidx.appcompat.view.menu.MenuBuilder] */
    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        MenuPresenter.Callback callback = this.f559f;
        SubMenuBuilder subMenuBuilder2 = subMenuBuilder;
        if (callback != null) {
            if (subMenuBuilder == null) {
                subMenuBuilder2 = this.f556c;
            }
            return callback.onOpenSubMenu(subMenuBuilder2);
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void setCallback(MenuPresenter.Callback callback) {
        this.f559f = callback;
    }

    public void setId(int i2) {
        this.f563j = i2;
    }

    public boolean shouldIncludeItem(int i2, MenuItemImpl menuItemImpl) {
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void updateMenuView(boolean z3) {
        ViewGroup viewGroup = (ViewGroup) this.f562i;
        if (viewGroup == null) {
            return;
        }
        MenuBuilder menuBuilder = this.f556c;
        int i2 = 0;
        if (menuBuilder != null) {
            menuBuilder.flagActionItems();
            ArrayList<MenuItemImpl> visibleItems = this.f556c.getVisibleItems();
            int size = visibleItems.size();
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                MenuItemImpl menuItemImpl = visibleItems.get(i5);
                if (shouldIncludeItem(i4, menuItemImpl)) {
                    View childAt = viewGroup.getChildAt(i4);
                    MenuItemImpl itemData = childAt instanceof MenuView.ItemView ? ((MenuView.ItemView) childAt).getItemData() : null;
                    View itemView = getItemView(menuItemImpl, childAt, viewGroup);
                    if (menuItemImpl != itemData) {
                        itemView.setPressed(false);
                        itemView.jumpDrawablesToCurrentState();
                    }
                    if (itemView != childAt) {
                        a(itemView, i4);
                    }
                    i4++;
                }
            }
            i2 = i4;
        }
        while (i2 < viewGroup.getChildCount()) {
            if (!filterLeftoverView(viewGroup, i2)) {
                i2++;
            }
        }
    }
}
