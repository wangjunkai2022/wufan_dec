package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R;
import androidx.appcompat.view.ActionBarPolicy;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.BaseMenuPresenter;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.ShowableListMenu;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ActionProvider;
import androidx.core.view.GravityCompat;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ActionMenuPresenter extends BaseMenuPresenter implements ActionProvider.SubUiVisibilityListener {
    private static final String E = "ActionMenuPresenter";
    OpenOverflowRunnable A;
    private ActionMenuPopupCallback B;
    final PopupPresenterCallback C;
    int D;

    /* renamed from: k  reason: collision with root package name */
    OverflowMenuButton f815k;

    /* renamed from: l  reason: collision with root package name */
    private Drawable f816l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f817m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f818n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f819o;

    /* renamed from: p  reason: collision with root package name */
    private int f820p;

    /* renamed from: q  reason: collision with root package name */
    private int f821q;

    /* renamed from: r  reason: collision with root package name */
    private int f822r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f823s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f824t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f825u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f826v;

    /* renamed from: w  reason: collision with root package name */
    private int f827w;

    /* renamed from: x  reason: collision with root package name */
    private final SparseBooleanArray f828x;

    /* renamed from: y  reason: collision with root package name */
    OverflowPopup f829y;

    /* renamed from: z  reason: collision with root package name */
    ActionButtonSubmenu f830z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ActionButtonSubmenu extends MenuPopupHelper {
        public ActionButtonSubmenu(Context context, SubMenuBuilder subMenuBuilder, View view) {
            super(context, subMenuBuilder, view, false, R.attr.actionOverflowMenuStyle);
            if (!((MenuItemImpl) subMenuBuilder.getItem()).isActionButton()) {
                View view2 = ActionMenuPresenter.this.f815k;
                setAnchorView(view2 == null ? (View) ((BaseMenuPresenter) ActionMenuPresenter.this).f562i : view2);
            }
            setPresenterCallback(ActionMenuPresenter.this.C);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.appcompat.view.menu.MenuPopupHelper
        public void b() {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            actionMenuPresenter.f830z = null;
            actionMenuPresenter.D = 0;
            super.b();
        }
    }

    /* loaded from: classes.dex */
    private class ActionMenuPopupCallback extends ActionMenuItemView.PopupCallback {
        ActionMenuPopupCallback() {
        }

        @Override // androidx.appcompat.view.menu.ActionMenuItemView.PopupCallback
        public ShowableListMenu getPopup() {
            ActionButtonSubmenu actionButtonSubmenu = ActionMenuPresenter.this.f830z;
            if (actionButtonSubmenu != null) {
                return actionButtonSubmenu.getPopup();
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class OpenOverflowRunnable implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private OverflowPopup f833a;

        public OpenOverflowRunnable(OverflowPopup overflowPopup) {
            this.f833a = overflowPopup;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (((BaseMenuPresenter) ActionMenuPresenter.this).f556c != null) {
                ((BaseMenuPresenter) ActionMenuPresenter.this).f556c.changeMenuMode();
            }
            View view = (View) ((BaseMenuPresenter) ActionMenuPresenter.this).f562i;
            if (view != null && view.getWindowToken() != null && this.f833a.tryShow()) {
                ActionMenuPresenter.this.f829y = this.f833a;
            }
            ActionMenuPresenter.this.A = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class OverflowMenuButton extends AppCompatImageView implements ActionMenuView.ActionMenuChildView {
        public OverflowMenuButton(Context context) {
            super(context, null, R.attr.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            TooltipCompat.setTooltipText(this, getContentDescription());
            setOnTouchListener(new ForwardingListener(this) { // from class: androidx.appcompat.widget.ActionMenuPresenter.OverflowMenuButton.1
                @Override // androidx.appcompat.widget.ForwardingListener
                public ShowableListMenu getPopup() {
                    OverflowPopup overflowPopup = ActionMenuPresenter.this.f829y;
                    if (overflowPopup == null) {
                        return null;
                    }
                    return overflowPopup.getPopup();
                }

                @Override // androidx.appcompat.widget.ForwardingListener
                public boolean onForwardingStarted() {
                    ActionMenuPresenter.this.showOverflowMenu();
                    return true;
                }

                @Override // androidx.appcompat.widget.ForwardingListener
                public boolean onForwardingStopped() {
                    ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
                    if (actionMenuPresenter.A != null) {
                        return false;
                    }
                    actionMenuPresenter.hideOverflowMenu();
                    return true;
                }
            });
        }

        @Override // androidx.appcompat.widget.ActionMenuView.ActionMenuChildView
        public boolean needsDividerAfter() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.ActionMenuChildView
        public boolean needsDividerBefore() {
            return false;
        }

        @Override // android.view.View
        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            ActionMenuPresenter.this.showOverflowMenu();
            return true;
        }

        @Override // android.widget.ImageView
        protected boolean setFrame(int i2, int i4, int i5, int i6) {
            boolean frame = super.setFrame(i2, i4, i5, i6);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int max = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                DrawableCompat.setHotspotBounds(background, paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
            }
            return frame;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class OverflowPopup extends MenuPopupHelper {
        public OverflowPopup(Context context, MenuBuilder menuBuilder, View view, boolean z3) {
            super(context, menuBuilder, view, z3, R.attr.actionOverflowMenuStyle);
            setGravity(GravityCompat.END);
            setPresenterCallback(ActionMenuPresenter.this.C);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.appcompat.view.menu.MenuPopupHelper
        public void b() {
            if (((BaseMenuPresenter) ActionMenuPresenter.this).f556c != null) {
                ((BaseMenuPresenter) ActionMenuPresenter.this).f556c.close();
            }
            ActionMenuPresenter.this.f829y = null;
            super.b();
        }
    }

    /* loaded from: classes.dex */
    private class PopupPresenterCallback implements MenuPresenter.Callback {
        PopupPresenterCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public void onCloseMenu(@NonNull MenuBuilder menuBuilder, boolean z3) {
            if (menuBuilder instanceof SubMenuBuilder) {
                menuBuilder.getRootMenu().close(false);
            }
            MenuPresenter.Callback callback = ActionMenuPresenter.this.getCallback();
            if (callback != null) {
                callback.onCloseMenu(menuBuilder, z3);
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(@NonNull MenuBuilder menuBuilder) {
            if (menuBuilder == ((BaseMenuPresenter) ActionMenuPresenter.this).f556c) {
                return false;
            }
            ActionMenuPresenter.this.D = ((SubMenuBuilder) menuBuilder).getItem().getItemId();
            MenuPresenter.Callback callback = ActionMenuPresenter.this.getCallback();
            if (callback != null) {
                return callback.onOpenSubMenu(menuBuilder);
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes.dex */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.appcompat.widget.ActionMenuPresenter.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        };
        public int openSubMenuId;

        SavedState() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.openSubMenuId);
        }

        SavedState(Parcel parcel) {
            this.openSubMenuId = parcel.readInt();
        }
    }

    public ActionMenuPresenter(Context context) {
        super(context, R.layout.abc_action_menu_layout, R.layout.abc_action_menu_item_layout);
        this.f828x = new SparseBooleanArray();
        this.C = new PopupPresenterCallback();
    }

    private View i(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup) this.f562i;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if ((childAt instanceof MenuView.ItemView) && ((MenuView.ItemView) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public void bindItemView(MenuItemImpl menuItemImpl, MenuView.ItemView itemView) {
        itemView.initialize(menuItemImpl, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) itemView;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.f562i);
        if (this.B == null) {
            this.B = new ActionMenuPopupCallback();
        }
        actionMenuItemView.setPopupCallback(this.B);
    }

    public boolean dismissPopupMenus() {
        return hideOverflowMenu() | hideSubMenus();
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public boolean filterLeftoverView(ViewGroup viewGroup, int i2) {
        if (viewGroup.getChildAt(i2) == this.f815k) {
            return false;
        }
        return super.filterLeftoverView(viewGroup, i2);
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public boolean flagActionItems() {
        ArrayList<MenuItemImpl> arrayList;
        int i2;
        int i4;
        int i5;
        int i6;
        ActionMenuPresenter actionMenuPresenter = this;
        MenuBuilder menuBuilder = actionMenuPresenter.f556c;
        View view = null;
        int i7 = 0;
        if (menuBuilder != null) {
            arrayList = menuBuilder.getVisibleItems();
            i2 = arrayList.size();
        } else {
            arrayList = null;
            i2 = 0;
        }
        int i8 = actionMenuPresenter.f822r;
        int i9 = actionMenuPresenter.f821q;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) actionMenuPresenter.f562i;
        boolean z3 = false;
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < i2; i12++) {
            MenuItemImpl menuItemImpl = arrayList.get(i12);
            if (menuItemImpl.requiresActionButton()) {
                i10++;
            } else if (menuItemImpl.requestsActionButton()) {
                i11++;
            } else {
                z3 = true;
            }
            if (actionMenuPresenter.f826v && menuItemImpl.isActionViewExpanded()) {
                i8 = 0;
            }
        }
        if (actionMenuPresenter.f818n && (z3 || i11 + i10 > i8)) {
            i8--;
        }
        int i13 = i8 - i10;
        SparseBooleanArray sparseBooleanArray = actionMenuPresenter.f828x;
        sparseBooleanArray.clear();
        if (actionMenuPresenter.f824t) {
            int i14 = actionMenuPresenter.f827w;
            i5 = i9 / i14;
            i4 = i14 + ((i9 % i14) / i5);
        } else {
            i4 = 0;
            i5 = 0;
        }
        int i15 = 0;
        int i16 = 0;
        while (i15 < i2) {
            MenuItemImpl menuItemImpl2 = arrayList.get(i15);
            if (menuItemImpl2.requiresActionButton()) {
                View itemView = actionMenuPresenter.getItemView(menuItemImpl2, view, viewGroup);
                if (actionMenuPresenter.f824t) {
                    i5 -= ActionMenuView.x(itemView, i4, i5, makeMeasureSpec, i7);
                } else {
                    itemView.measure(makeMeasureSpec, makeMeasureSpec);
                }
                int measuredWidth = itemView.getMeasuredWidth();
                i9 -= measuredWidth;
                if (i16 == 0) {
                    i16 = measuredWidth;
                }
                int groupId = menuItemImpl2.getGroupId();
                if (groupId != 0) {
                    sparseBooleanArray.put(groupId, true);
                }
                menuItemImpl2.setIsActionButton(true);
                i6 = i2;
            } else if (menuItemImpl2.requestsActionButton()) {
                int groupId2 = menuItemImpl2.getGroupId();
                boolean z4 = sparseBooleanArray.get(groupId2);
                boolean z5 = (i13 > 0 || z4) && i9 > 0 && (!actionMenuPresenter.f824t || i5 > 0);
                boolean z6 = z5;
                i6 = i2;
                if (z5) {
                    View itemView2 = actionMenuPresenter.getItemView(menuItemImpl2, null, viewGroup);
                    if (actionMenuPresenter.f824t) {
                        int x3 = ActionMenuView.x(itemView2, i4, i5, makeMeasureSpec, 0);
                        i5 -= x3;
                        if (x3 == 0) {
                            z6 = false;
                        }
                    } else {
                        itemView2.measure(makeMeasureSpec, makeMeasureSpec);
                    }
                    boolean z7 = z6;
                    int measuredWidth2 = itemView2.getMeasuredWidth();
                    i9 -= measuredWidth2;
                    if (i16 == 0) {
                        i16 = measuredWidth2;
                    }
                    z5 = z7 & (!actionMenuPresenter.f824t ? i9 + i16 <= 0 : i9 < 0);
                }
                if (z5 && groupId2 != 0) {
                    sparseBooleanArray.put(groupId2, true);
                } else if (z4) {
                    sparseBooleanArray.put(groupId2, false);
                    for (int i17 = 0; i17 < i15; i17++) {
                        MenuItemImpl menuItemImpl3 = arrayList.get(i17);
                        if (menuItemImpl3.getGroupId() == groupId2) {
                            if (menuItemImpl3.isActionButton()) {
                                i13++;
                            }
                            menuItemImpl3.setIsActionButton(false);
                        }
                    }
                }
                if (z5) {
                    i13--;
                }
                menuItemImpl2.setIsActionButton(z5);
            } else {
                i6 = i2;
                menuItemImpl2.setIsActionButton(false);
                i15++;
                view = null;
                actionMenuPresenter = this;
                i2 = i6;
                i7 = 0;
            }
            i15++;
            view = null;
            actionMenuPresenter = this;
            i2 = i6;
            i7 = 0;
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public View getItemView(MenuItemImpl menuItemImpl, View view, ViewGroup viewGroup) {
        View actionView = menuItemImpl.getActionView();
        if (actionView == null || menuItemImpl.hasCollapsibleActionView()) {
            actionView = super.getItemView(menuItemImpl, view, viewGroup);
        }
        actionView.setVisibility(menuItemImpl.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.h(layoutParams));
        }
        return actionView;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public MenuView getMenuView(ViewGroup viewGroup) {
        MenuView menuView = this.f562i;
        MenuView menuView2 = super.getMenuView(viewGroup);
        if (menuView != menuView2) {
            ((ActionMenuView) menuView2).setPresenter(this);
        }
        return menuView2;
    }

    public Drawable getOverflowIcon() {
        OverflowMenuButton overflowMenuButton = this.f815k;
        if (overflowMenuButton != null) {
            return overflowMenuButton.getDrawable();
        }
        if (this.f817m) {
            return this.f816l;
        }
        return null;
    }

    public boolean hideOverflowMenu() {
        MenuView menuView;
        OpenOverflowRunnable openOverflowRunnable = this.A;
        if (openOverflowRunnable != null && (menuView = this.f562i) != null) {
            ((View) menuView).removeCallbacks(openOverflowRunnable);
            this.A = null;
            return true;
        }
        OverflowPopup overflowPopup = this.f829y;
        if (overflowPopup != null) {
            overflowPopup.dismiss();
            return true;
        }
        return false;
    }

    public boolean hideSubMenus() {
        ActionButtonSubmenu actionButtonSubmenu = this.f830z;
        if (actionButtonSubmenu != null) {
            actionButtonSubmenu.dismiss();
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public void initForMenu(@NonNull Context context, @Nullable MenuBuilder menuBuilder) {
        super.initForMenu(context, menuBuilder);
        Resources resources = context.getResources();
        ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(context);
        if (!this.f819o) {
            this.f818n = actionBarPolicy.showsOverflowMenuButton();
        }
        if (!this.f825u) {
            this.f820p = actionBarPolicy.getEmbeddedMenuWidthLimit();
        }
        if (!this.f823s) {
            this.f822r = actionBarPolicy.getMaxActionButtons();
        }
        int i2 = this.f820p;
        if (this.f818n) {
            if (this.f815k == null) {
                OverflowMenuButton overflowMenuButton = new OverflowMenuButton(this.f554a);
                this.f815k = overflowMenuButton;
                if (this.f817m) {
                    overflowMenuButton.setImageDrawable(this.f816l);
                    this.f816l = null;
                    this.f817m = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f815k.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i2 -= this.f815k.getMeasuredWidth();
        } else {
            this.f815k = null;
        }
        this.f821q = i2;
        this.f827w = (int) (resources.getDisplayMetrics().density * 56.0f);
    }

    public boolean isOverflowMenuShowPending() {
        return this.A != null || isOverflowMenuShowing();
    }

    public boolean isOverflowMenuShowing() {
        OverflowPopup overflowPopup = this.f829y;
        return overflowPopup != null && overflowPopup.isShowing();
    }

    public boolean isOverflowReserved() {
        return this.f818n;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z3) {
        dismissPopupMenus();
        super.onCloseMenu(menuBuilder, z3);
    }

    public void onConfigurationChanged(Configuration configuration) {
        if (!this.f823s) {
            this.f822r = ActionBarPolicy.get(this.f555b).getMaxActionButtons();
        }
        MenuBuilder menuBuilder = this.f556c;
        if (menuBuilder != null) {
            menuBuilder.onItemsChanged(true);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onRestoreInstanceState(Parcelable parcelable) {
        int i2;
        MenuItem findItem;
        if ((parcelable instanceof SavedState) && (i2 = ((SavedState) parcelable).openSubMenuId) > 0 && (findItem = this.f556c.findItem(i2)) != null) {
            onSubMenuSelected((SubMenuBuilder) findItem.getSubMenu());
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState();
        savedState.openSubMenuId = this.D;
        return savedState;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        boolean z3 = false;
        if (subMenuBuilder.hasVisibleItems()) {
            SubMenuBuilder subMenuBuilder2 = subMenuBuilder;
            while (subMenuBuilder2.getParentMenu() != this.f556c) {
                subMenuBuilder2 = (SubMenuBuilder) subMenuBuilder2.getParentMenu();
            }
            View i2 = i(subMenuBuilder2.getItem());
            if (i2 == null) {
                return false;
            }
            this.D = subMenuBuilder.getItem().getItemId();
            int size = subMenuBuilder.size();
            int i4 = 0;
            while (true) {
                if (i4 >= size) {
                    break;
                }
                MenuItem item = subMenuBuilder.getItem(i4);
                if (item.isVisible() && item.getIcon() != null) {
                    z3 = true;
                    break;
                }
                i4++;
            }
            ActionButtonSubmenu actionButtonSubmenu = new ActionButtonSubmenu(this.f555b, subMenuBuilder, i2);
            this.f830z = actionButtonSubmenu;
            actionButtonSubmenu.setForceShowIcon(z3);
            this.f830z.show();
            super.onSubMenuSelected(subMenuBuilder);
            return true;
        }
        return false;
    }

    @Override // androidx.core.view.ActionProvider.SubUiVisibilityListener
    public void onSubUiVisibilityChanged(boolean z3) {
        if (z3) {
            super.onSubMenuSelected(null);
            return;
        }
        MenuBuilder menuBuilder = this.f556c;
        if (menuBuilder != null) {
            menuBuilder.close(false);
        }
    }

    public void setExpandedActionViewsExclusive(boolean z3) {
        this.f826v = z3;
    }

    public void setItemLimit(int i2) {
        this.f822r = i2;
        this.f823s = true;
    }

    public void setMenuView(ActionMenuView actionMenuView) {
        this.f562i = actionMenuView;
        actionMenuView.initialize(this.f556c);
    }

    public void setOverflowIcon(Drawable drawable) {
        OverflowMenuButton overflowMenuButton = this.f815k;
        if (overflowMenuButton != null) {
            overflowMenuButton.setImageDrawable(drawable);
            return;
        }
        this.f817m = true;
        this.f816l = drawable;
    }

    public void setReserveOverflow(boolean z3) {
        this.f818n = z3;
        this.f819o = true;
    }

    public void setWidthLimit(int i2, boolean z3) {
        this.f820p = i2;
        this.f824t = z3;
        this.f825u = true;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public boolean shouldIncludeItem(int i2, MenuItemImpl menuItemImpl) {
        return menuItemImpl.isActionButton();
    }

    public boolean showOverflowMenu() {
        MenuBuilder menuBuilder;
        if (!this.f818n || isOverflowMenuShowing() || (menuBuilder = this.f556c) == null || this.f562i == null || this.A != null || menuBuilder.getNonActionItems().isEmpty()) {
            return false;
        }
        OpenOverflowRunnable openOverflowRunnable = new OpenOverflowRunnable(new OverflowPopup(this.f555b, this.f556c, this.f815k, true));
        this.A = openOverflowRunnable;
        ((View) this.f562i).post(openOverflowRunnable);
        return true;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public void updateMenuView(boolean z3) {
        super.updateMenuView(z3);
        ((View) this.f562i).requestLayout();
        MenuBuilder menuBuilder = this.f556c;
        boolean z4 = false;
        if (menuBuilder != null) {
            ArrayList<MenuItemImpl> actionItems = menuBuilder.getActionItems();
            int size = actionItems.size();
            for (int i2 = 0; i2 < size; i2++) {
                ActionProvider supportActionProvider = actionItems.get(i2).getSupportActionProvider();
                if (supportActionProvider != null) {
                    supportActionProvider.setSubUiVisibilityListener(this);
                }
            }
        }
        MenuBuilder menuBuilder2 = this.f556c;
        ArrayList<MenuItemImpl> nonActionItems = menuBuilder2 != null ? menuBuilder2.getNonActionItems() : null;
        if (this.f818n && nonActionItems != null) {
            int size2 = nonActionItems.size();
            if (size2 == 1) {
                z4 = !nonActionItems.get(0).isActionViewExpanded();
            } else if (size2 > 0) {
                z4 = true;
            }
        }
        if (z4) {
            if (this.f815k == null) {
                this.f815k = new OverflowMenuButton(this.f554a);
            }
            ViewGroup viewGroup = (ViewGroup) this.f815k.getParent();
            if (viewGroup != this.f562i) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.f815k);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f562i;
                actionMenuView.addView(this.f815k, actionMenuView.generateOverflowButtonLayoutParams());
            }
        } else {
            OverflowMenuButton overflowMenuButton = this.f815k;
            if (overflowMenuButton != null) {
                ViewParent parent = overflowMenuButton.getParent();
                MenuView menuView = this.f562i;
                if (parent == menuView) {
                    ((ViewGroup) menuView).removeView(this.f815k);
                }
            }
        }
        ((ActionMenuView) this.f562i).setOverflowReserved(this.f818n);
    }
}
