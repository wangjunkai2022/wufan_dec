package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.transition.Transition;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.ListMenuItemView;
import androidx.appcompat.view.menu.MenuAdapter;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import java.lang.reflect.Method;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class MenuPopupWindow extends ListPopupWindow implements MenuItemHoverListener {

    /* renamed from: p0  reason: collision with root package name */
    private static final String f1257p0 = "MenuPopupWindow";

    /* renamed from: q0  reason: collision with root package name */
    private static Method f1258q0;

    /* renamed from: o0  reason: collision with root package name */
    private MenuItemHoverListener f1259o0;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public static class MenuDropDownListView extends DropDownListView {

        /* renamed from: o  reason: collision with root package name */
        final int f1260o;

        /* renamed from: p  reason: collision with root package name */
        final int f1261p;

        /* renamed from: q  reason: collision with root package name */
        private MenuItemHoverListener f1262q;

        /* renamed from: r  reason: collision with root package name */
        private MenuItem f1263r;

        public MenuDropDownListView(Context context, boolean z3) {
            super(context, z3);
            Configuration configuration = context.getResources().getConfiguration();
            if (Build.VERSION.SDK_INT >= 17 && 1 == configuration.getLayoutDirection()) {
                this.f1260o = 21;
                this.f1261p = 22;
                return;
            }
            this.f1260o = 22;
            this.f1261p = 21;
        }

        public void clearSelection() {
            setSelection(-1);
        }

        @Override // androidx.appcompat.widget.DropDownListView, android.view.ViewGroup, android.view.View
        public /* bridge */ /* synthetic */ boolean hasFocus() {
            return super.hasFocus();
        }

        @Override // androidx.appcompat.widget.DropDownListView, android.view.View
        public /* bridge */ /* synthetic */ boolean hasWindowFocus() {
            return super.hasWindowFocus();
        }

        @Override // androidx.appcompat.widget.DropDownListView, android.view.View
        public /* bridge */ /* synthetic */ boolean isFocused() {
            return super.isFocused();
        }

        @Override // androidx.appcompat.widget.DropDownListView, android.view.View
        public /* bridge */ /* synthetic */ boolean isInTouchMode() {
            return super.isInTouchMode();
        }

        @Override // androidx.appcompat.widget.DropDownListView
        public /* bridge */ /* synthetic */ int lookForSelectablePosition(int i2, boolean z3) {
            return super.lookForSelectablePosition(i2, z3);
        }

        @Override // androidx.appcompat.widget.DropDownListView
        public /* bridge */ /* synthetic */ int measureHeightOfChildrenCompat(int i2, int i4, int i5, int i6, int i7) {
            return super.measureHeightOfChildrenCompat(i2, i4, i5, i6, i7);
        }

        @Override // androidx.appcompat.widget.DropDownListView
        public /* bridge */ /* synthetic */ boolean onForwardedEvent(MotionEvent motionEvent, int i2) {
            return super.onForwardedEvent(motionEvent, i2);
        }

        @Override // androidx.appcompat.widget.DropDownListView, android.view.View
        public boolean onHoverEvent(MotionEvent motionEvent) {
            int i2;
            MenuAdapter menuAdapter;
            int pointToPosition;
            int i4;
            if (this.f1262q != null) {
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    i2 = headerViewListAdapter.getHeadersCount();
                    menuAdapter = (MenuAdapter) headerViewListAdapter.getWrappedAdapter();
                } else {
                    i2 = 0;
                    menuAdapter = (MenuAdapter) adapter;
                }
                MenuItemImpl menuItemImpl = null;
                if (motionEvent.getAction() != 10 && (pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) != -1 && (i4 = pointToPosition - i2) >= 0 && i4 < menuAdapter.getCount()) {
                    menuItemImpl = menuAdapter.getItem(i4);
                }
                MenuItem menuItem = this.f1263r;
                if (menuItem != menuItemImpl) {
                    MenuBuilder adapterMenu = menuAdapter.getAdapterMenu();
                    if (menuItem != null) {
                        this.f1262q.onItemHoverExit(adapterMenu, menuItem);
                    }
                    this.f1263r = menuItemImpl;
                    if (menuItemImpl != null) {
                        this.f1262q.onItemHoverEnter(adapterMenu, menuItemImpl);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyDown(int i2, KeyEvent keyEvent) {
            MenuAdapter menuAdapter;
            ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
            if (listMenuItemView != null && i2 == this.f1260o) {
                if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                    performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                }
                return true;
            } else if (listMenuItemView != null && i2 == this.f1261p) {
                setSelection(-1);
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    menuAdapter = (MenuAdapter) ((HeaderViewListAdapter) adapter).getWrappedAdapter();
                } else {
                    menuAdapter = (MenuAdapter) adapter;
                }
                menuAdapter.getAdapterMenu().close(false);
                return true;
            } else {
                return super.onKeyDown(i2, keyEvent);
            }
        }

        @Override // androidx.appcompat.widget.DropDownListView, android.widget.AbsListView, android.view.View
        public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
            return super.onTouchEvent(motionEvent);
        }

        public void setHoverListener(MenuItemHoverListener menuItemHoverListener) {
            this.f1262q = menuItemHoverListener;
        }

        @Override // androidx.appcompat.widget.DropDownListView, android.widget.AbsListView
        public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
            super.setSelector(drawable);
        }
    }

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                f1258q0 = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException unused) {
        }
    }

    public MenuPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2, int i4) {
        super(context, attributeSet, i2, i4);
    }

    @Override // androidx.appcompat.widget.ListPopupWindow
    @NonNull
    DropDownListView b(Context context, boolean z3) {
        MenuDropDownListView menuDropDownListView = new MenuDropDownListView(context, z3);
        menuDropDownListView.setHoverListener(this);
        return menuDropDownListView;
    }

    @Override // androidx.appcompat.widget.MenuItemHoverListener
    public void onItemHoverEnter(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
        MenuItemHoverListener menuItemHoverListener = this.f1259o0;
        if (menuItemHoverListener != null) {
            menuItemHoverListener.onItemHoverEnter(menuBuilder, menuItem);
        }
    }

    @Override // androidx.appcompat.widget.MenuItemHoverListener
    public void onItemHoverExit(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
        MenuItemHoverListener menuItemHoverListener = this.f1259o0;
        if (menuItemHoverListener != null) {
            menuItemHoverListener.onItemHoverExit(menuBuilder, menuItem);
        }
    }

    public void setEnterTransition(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.F.setEnterTransition((Transition) obj);
        }
    }

    public void setExitTransition(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.F.setExitTransition((Transition) obj);
        }
    }

    public void setHoverListener(MenuItemHoverListener menuItemHoverListener) {
        this.f1259o0 = menuItemHoverListener;
    }

    public void setTouchModal(boolean z3) {
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = f1258q0;
            if (method != null) {
                try {
                    method.invoke(this.F, Boolean.valueOf(z3));
                    return;
                } catch (Exception unused) {
                    return;
                }
            }
            return;
        }
        this.F.setTouchModal(z3);
    }
}
