package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.MenuItemHoverListener;
import androidx.appcompat.widget.MenuPopupWindow;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
final class CascadingMenuPopup extends MenuPopup implements MenuPresenter, View.OnKeyListener, PopupWindow.OnDismissListener {
    private static final int B = R.layout.abc_cascading_menu_item_layout;
    static final int C = 0;
    static final int D = 1;
    static final int E = 200;
    boolean A;

    /* renamed from: b  reason: collision with root package name */
    private final Context f567b;

    /* renamed from: c  reason: collision with root package name */
    private final int f568c;

    /* renamed from: d  reason: collision with root package name */
    private final int f569d;

    /* renamed from: e  reason: collision with root package name */
    private final int f570e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f571f;

    /* renamed from: g  reason: collision with root package name */
    final Handler f572g;

    /* renamed from: o  reason: collision with root package name */
    private View f580o;

    /* renamed from: p  reason: collision with root package name */
    View f581p;

    /* renamed from: r  reason: collision with root package name */
    private boolean f583r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f584s;

    /* renamed from: t  reason: collision with root package name */
    private int f585t;

    /* renamed from: u  reason: collision with root package name */
    private int f586u;

    /* renamed from: w  reason: collision with root package name */
    private boolean f588w;

    /* renamed from: x  reason: collision with root package name */
    private MenuPresenter.Callback f589x;

    /* renamed from: y  reason: collision with root package name */
    ViewTreeObserver f590y;

    /* renamed from: z  reason: collision with root package name */
    private PopupWindow.OnDismissListener f591z;

    /* renamed from: h  reason: collision with root package name */
    private final List<MenuBuilder> f573h = new ArrayList();

    /* renamed from: i  reason: collision with root package name */
    final List<CascadingMenuInfo> f574i = new ArrayList();

    /* renamed from: j  reason: collision with root package name */
    final ViewTreeObserver.OnGlobalLayoutListener f575j = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.view.menu.CascadingMenuPopup.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!CascadingMenuPopup.this.isShowing() || CascadingMenuPopup.this.f574i.size() <= 0 || CascadingMenuPopup.this.f574i.get(0).window.isModal()) {
                return;
            }
            View view = CascadingMenuPopup.this.f581p;
            if (view != null && view.isShown()) {
                for (CascadingMenuInfo cascadingMenuInfo : CascadingMenuPopup.this.f574i) {
                    cascadingMenuInfo.window.show();
                }
                return;
            }
            CascadingMenuPopup.this.dismiss();
        }
    };

    /* renamed from: k  reason: collision with root package name */
    private final View.OnAttachStateChangeListener f576k = new View.OnAttachStateChangeListener() { // from class: androidx.appcompat.view.menu.CascadingMenuPopup.2
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = CascadingMenuPopup.this.f590y;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    CascadingMenuPopup.this.f590y = view.getViewTreeObserver();
                }
                CascadingMenuPopup cascadingMenuPopup = CascadingMenuPopup.this;
                cascadingMenuPopup.f590y.removeGlobalOnLayoutListener(cascadingMenuPopup.f575j);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    };

    /* renamed from: l  reason: collision with root package name */
    private final MenuItemHoverListener f577l = new MenuItemHoverListener() { // from class: androidx.appcompat.view.menu.CascadingMenuPopup.3
        @Override // androidx.appcompat.widget.MenuItemHoverListener
        public void onItemHoverEnter(@NonNull final MenuBuilder menuBuilder, @NonNull final MenuItem menuItem) {
            CascadingMenuPopup.this.f572g.removeCallbacksAndMessages(null);
            int size = CascadingMenuPopup.this.f574i.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    i2 = -1;
                    break;
                } else if (menuBuilder == CascadingMenuPopup.this.f574i.get(i2).menu) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 == -1) {
                return;
            }
            int i4 = i2 + 1;
            final CascadingMenuInfo cascadingMenuInfo = i4 < CascadingMenuPopup.this.f574i.size() ? CascadingMenuPopup.this.f574i.get(i4) : null;
            CascadingMenuPopup.this.f572g.postAtTime(new Runnable() { // from class: androidx.appcompat.view.menu.CascadingMenuPopup.3.1
                @Override // java.lang.Runnable
                public void run() {
                    CascadingMenuInfo cascadingMenuInfo2 = cascadingMenuInfo;
                    if (cascadingMenuInfo2 != null) {
                        CascadingMenuPopup.this.A = true;
                        cascadingMenuInfo2.menu.close(false);
                        CascadingMenuPopup.this.A = false;
                    }
                    if (menuItem.isEnabled() && menuItem.hasSubMenu()) {
                        menuBuilder.performItemAction(menuItem, 4);
                    }
                }
            }, menuBuilder, SystemClock.uptimeMillis() + 200);
        }

        @Override // androidx.appcompat.widget.MenuItemHoverListener
        public void onItemHoverExit(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
            CascadingMenuPopup.this.f572g.removeCallbacksAndMessages(menuBuilder);
        }
    };

    /* renamed from: m  reason: collision with root package name */
    private int f578m = 0;

    /* renamed from: n  reason: collision with root package name */
    private int f579n = 0;

    /* renamed from: v  reason: collision with root package name */
    private boolean f587v = false;

    /* renamed from: q  reason: collision with root package name */
    private int f582q = i();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class CascadingMenuInfo {
        public final MenuBuilder menu;
        public final int position;
        public final MenuPopupWindow window;

        public CascadingMenuInfo(@NonNull MenuPopupWindow menuPopupWindow, @NonNull MenuBuilder menuBuilder, int i2) {
            this.window = menuPopupWindow;
            this.menu = menuBuilder;
            this.position = i2;
        }

        public ListView getListView() {
            return this.window.getListView();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface HorizPosition {
    }

    public CascadingMenuPopup(@NonNull Context context, @NonNull View view, @AttrRes int i2, @StyleRes int i4, boolean z3) {
        this.f567b = context;
        this.f580o = view;
        this.f569d = i2;
        this.f570e = i4;
        this.f571f = z3;
        Resources resources = context.getResources();
        this.f568c = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f572g = new Handler();
    }

    private MenuPopupWindow e() {
        MenuPopupWindow menuPopupWindow = new MenuPopupWindow(this.f567b, null, this.f569d, this.f570e);
        menuPopupWindow.setHoverListener(this.f577l);
        menuPopupWindow.setOnItemClickListener(this);
        menuPopupWindow.setOnDismissListener(this);
        menuPopupWindow.setAnchorView(this.f580o);
        menuPopupWindow.setDropDownGravity(this.f579n);
        menuPopupWindow.setModal(true);
        menuPopupWindow.setInputMethodMode(2);
        return menuPopupWindow;
    }

    private int f(@NonNull MenuBuilder menuBuilder) {
        int size = this.f574i.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (menuBuilder == this.f574i.get(i2).menu) {
                return i2;
            }
        }
        return -1;
    }

    private MenuItem g(@NonNull MenuBuilder menuBuilder, @NonNull MenuBuilder menuBuilder2) {
        int size = menuBuilder.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = menuBuilder.getItem(i2);
            if (item.hasSubMenu() && menuBuilder2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    @Nullable
    private View h(@NonNull CascadingMenuInfo cascadingMenuInfo, @NonNull MenuBuilder menuBuilder) {
        MenuAdapter menuAdapter;
        int i2;
        int firstVisiblePosition;
        MenuItem g4 = g(cascadingMenuInfo.menu, menuBuilder);
        if (g4 == null) {
            return null;
        }
        ListView listView = cascadingMenuInfo.getListView();
        ListAdapter adapter = listView.getAdapter();
        int i4 = 0;
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            i2 = headerViewListAdapter.getHeadersCount();
            menuAdapter = (MenuAdapter) headerViewListAdapter.getWrappedAdapter();
        } else {
            menuAdapter = (MenuAdapter) adapter;
            i2 = 0;
        }
        int count = menuAdapter.getCount();
        while (true) {
            if (i4 >= count) {
                i4 = -1;
                break;
            } else if (g4 == menuAdapter.getItem(i4)) {
                break;
            } else {
                i4++;
            }
        }
        if (i4 != -1 && (firstVisiblePosition = (i4 + i2) - listView.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < listView.getChildCount()) {
            return listView.getChildAt(firstVisiblePosition);
        }
        return null;
    }

    private int i() {
        return ViewCompat.getLayoutDirection(this.f580o) == 1 ? 0 : 1;
    }

    private int j(int i2) {
        List<CascadingMenuInfo> list = this.f574i;
        ListView listView = list.get(list.size() - 1).getListView();
        int[] iArr = new int[2];
        listView.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.f581p.getWindowVisibleDisplayFrame(rect);
        return this.f582q == 1 ? (iArr[0] + listView.getWidth()) + i2 > rect.right ? 0 : 1 : iArr[0] - i2 < 0 ? 1 : 0;
    }

    private void k(@NonNull MenuBuilder menuBuilder) {
        CascadingMenuInfo cascadingMenuInfo;
        View view;
        int i2;
        int i4;
        int i5;
        LayoutInflater from = LayoutInflater.from(this.f567b);
        MenuAdapter menuAdapter = new MenuAdapter(menuBuilder, from, this.f571f, B);
        if (!isShowing() && this.f587v) {
            menuAdapter.setForceShowIcon(true);
        } else if (isShowing()) {
            menuAdapter.setForceShowIcon(MenuPopup.c(menuBuilder));
        }
        int b4 = MenuPopup.b(menuAdapter, null, this.f567b, this.f568c);
        MenuPopupWindow e4 = e();
        e4.setAdapter(menuAdapter);
        e4.setContentWidth(b4);
        e4.setDropDownGravity(this.f579n);
        if (this.f574i.size() > 0) {
            List<CascadingMenuInfo> list = this.f574i;
            cascadingMenuInfo = list.get(list.size() - 1);
            view = h(cascadingMenuInfo, menuBuilder);
        } else {
            cascadingMenuInfo = null;
            view = null;
        }
        if (view != null) {
            e4.setTouchModal(false);
            e4.setEnterTransition(null);
            int j4 = j(b4);
            boolean z3 = j4 == 1;
            this.f582q = j4;
            if (Build.VERSION.SDK_INT >= 26) {
                e4.setAnchorView(view);
                i4 = 0;
                i2 = 0;
            } else {
                int[] iArr = new int[2];
                this.f580o.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                view.getLocationOnScreen(iArr2);
                if ((this.f579n & 7) == 5) {
                    iArr[0] = iArr[0] + this.f580o.getWidth();
                    iArr2[0] = iArr2[0] + view.getWidth();
                }
                i2 = iArr2[0] - iArr[0];
                i4 = iArr2[1] - iArr[1];
            }
            if ((this.f579n & 5) == 5) {
                if (!z3) {
                    b4 = view.getWidth();
                    i5 = i2 - b4;
                }
                i5 = i2 + b4;
            } else {
                if (z3) {
                    b4 = view.getWidth();
                    i5 = i2 + b4;
                }
                i5 = i2 - b4;
            }
            e4.setHorizontalOffset(i5);
            e4.setOverlapAnchor(true);
            e4.setVerticalOffset(i4);
        } else {
            if (this.f583r) {
                e4.setHorizontalOffset(this.f585t);
            }
            if (this.f584s) {
                e4.setVerticalOffset(this.f586u);
            }
            e4.setEpicenterBounds(getEpicenterBounds());
        }
        this.f574i.add(new CascadingMenuInfo(e4, menuBuilder, this.f582q));
        e4.show();
        ListView listView = e4.getListView();
        listView.setOnKeyListener(this);
        if (cascadingMenuInfo == null && this.f588w && menuBuilder.getHeaderTitle() != null) {
            FrameLayout frameLayout = (FrameLayout) from.inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) listView, false);
            frameLayout.setEnabled(false);
            ((TextView) frameLayout.findViewById(16908310)).setText(menuBuilder.getHeaderTitle());
            listView.addHeaderView(frameLayout, null, false);
            e4.show();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    protected boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void addMenu(MenuBuilder menuBuilder) {
        menuBuilder.addMenuPresenter(this, this.f567b);
        if (isShowing()) {
            k(menuBuilder);
        } else {
            this.f573h.add(menuBuilder);
        }
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public void dismiss() {
        int size = this.f574i.size();
        if (size > 0) {
            CascadingMenuInfo[] cascadingMenuInfoArr = (CascadingMenuInfo[]) this.f574i.toArray(new CascadingMenuInfo[size]);
            for (int i2 = size - 1; i2 >= 0; i2--) {
                CascadingMenuInfo cascadingMenuInfo = cascadingMenuInfoArr[i2];
                if (cascadingMenuInfo.window.isShowing()) {
                    cascadingMenuInfo.window.dismiss();
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean flagActionItems() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public ListView getListView() {
        if (this.f574i.isEmpty()) {
            return null;
        }
        List<CascadingMenuInfo> list = this.f574i;
        return list.get(list.size() - 1).getListView();
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public boolean isShowing() {
        return this.f574i.size() > 0 && this.f574i.get(0).window.isShowing();
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z3) {
        int f4 = f(menuBuilder);
        if (f4 < 0) {
            return;
        }
        int i2 = f4 + 1;
        if (i2 < this.f574i.size()) {
            this.f574i.get(i2).menu.close(false);
        }
        CascadingMenuInfo remove = this.f574i.remove(f4);
        remove.menu.removeMenuPresenter(this);
        if (this.A) {
            remove.window.setExitTransition(null);
            remove.window.setAnimationStyle(0);
        }
        remove.window.dismiss();
        int size = this.f574i.size();
        if (size > 0) {
            this.f582q = this.f574i.get(size - 1).position;
        } else {
            this.f582q = i();
        }
        if (size != 0) {
            if (z3) {
                this.f574i.get(0).menu.close(false);
                return;
            }
            return;
        }
        dismiss();
        MenuPresenter.Callback callback = this.f589x;
        if (callback != null) {
            callback.onCloseMenu(menuBuilder, true);
        }
        ViewTreeObserver viewTreeObserver = this.f590y;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.f590y.removeGlobalOnLayoutListener(this.f575j);
            }
            this.f590y = null;
        }
        this.f581p.removeOnAttachStateChangeListener(this.f576k);
        this.f591z.onDismiss();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        CascadingMenuInfo cascadingMenuInfo;
        int size = this.f574i.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                cascadingMenuInfo = null;
                break;
            }
            cascadingMenuInfo = this.f574i.get(i2);
            if (!cascadingMenuInfo.window.isShowing()) {
                break;
            }
            i2++;
        }
        if (cascadingMenuInfo != null) {
            cascadingMenuInfo.menu.close(false);
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i2, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1 && i2 == 82) {
            dismiss();
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onRestoreInstanceState(Parcelable parcelable) {
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public Parcelable onSaveInstanceState() {
        return null;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        for (CascadingMenuInfo cascadingMenuInfo : this.f574i) {
            if (subMenuBuilder == cascadingMenuInfo.menu) {
                cascadingMenuInfo.getListView().requestFocus();
                return true;
            }
        }
        if (subMenuBuilder.hasVisibleItems()) {
            addMenu(subMenuBuilder);
            MenuPresenter.Callback callback = this.f589x;
            if (callback != null) {
                callback.onOpenSubMenu(subMenuBuilder);
            }
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void setAnchorView(@NonNull View view) {
        if (this.f580o != view) {
            this.f580o = view;
            this.f579n = GravityCompat.getAbsoluteGravity(this.f578m, ViewCompat.getLayoutDirection(view));
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void setCallback(MenuPresenter.Callback callback) {
        this.f589x = callback;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void setForceShowIcon(boolean z3) {
        this.f587v = z3;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void setGravity(int i2) {
        if (this.f578m != i2) {
            this.f578m = i2;
            this.f579n = GravityCompat.getAbsoluteGravity(i2, ViewCompat.getLayoutDirection(this.f580o));
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void setHorizontalOffset(int i2) {
        this.f583r = true;
        this.f585t = i2;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.f591z = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void setShowTitle(boolean z3) {
        this.f588w = z3;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void setVerticalOffset(int i2) {
        this.f584s = true;
        this.f586u = i2;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public void show() {
        if (isShowing()) {
            return;
        }
        for (MenuBuilder menuBuilder : this.f573h) {
            k(menuBuilder);
        }
        this.f573h.clear();
        View view = this.f580o;
        this.f581p = view;
        if (view != null) {
            boolean z3 = this.f590y == null;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.f590y = viewTreeObserver;
            if (z3) {
                viewTreeObserver.addOnGlobalLayoutListener(this.f575j);
            }
            this.f581p.addOnAttachStateChangeListener(this.f576k);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void updateMenuView(boolean z3) {
        for (CascadingMenuInfo cascadingMenuInfo : this.f574i) {
            MenuPopup.d(cascadingMenuInfo.getListView().getAdapter()).notifyDataSetChanged();
        }
    }
}
