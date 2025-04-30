package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.MenuPopupWindow;
import androidx.core.view.ViewCompat;
/* loaded from: classes.dex */
final class StandardMenuPopup extends MenuPopup implements PopupWindow.OnDismissListener, AdapterView.OnItemClickListener, MenuPresenter, View.OnKeyListener {

    /* renamed from: v  reason: collision with root package name */
    private static final int f724v = R.layout.abc_popup_menu_item_layout;

    /* renamed from: b  reason: collision with root package name */
    private final Context f725b;

    /* renamed from: c  reason: collision with root package name */
    private final MenuBuilder f726c;

    /* renamed from: d  reason: collision with root package name */
    private final MenuAdapter f727d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f728e;

    /* renamed from: f  reason: collision with root package name */
    private final int f729f;

    /* renamed from: g  reason: collision with root package name */
    private final int f730g;

    /* renamed from: h  reason: collision with root package name */
    private final int f731h;

    /* renamed from: i  reason: collision with root package name */
    final MenuPopupWindow f732i;

    /* renamed from: l  reason: collision with root package name */
    private PopupWindow.OnDismissListener f735l;

    /* renamed from: m  reason: collision with root package name */
    private View f736m;

    /* renamed from: n  reason: collision with root package name */
    View f737n;

    /* renamed from: o  reason: collision with root package name */
    private MenuPresenter.Callback f738o;

    /* renamed from: p  reason: collision with root package name */
    ViewTreeObserver f739p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f740q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f741r;

    /* renamed from: s  reason: collision with root package name */
    private int f742s;

    /* renamed from: u  reason: collision with root package name */
    private boolean f744u;

    /* renamed from: j  reason: collision with root package name */
    final ViewTreeObserver.OnGlobalLayoutListener f733j = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.view.menu.StandardMenuPopup.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!StandardMenuPopup.this.isShowing() || StandardMenuPopup.this.f732i.isModal()) {
                return;
            }
            View view = StandardMenuPopup.this.f737n;
            if (view != null && view.isShown()) {
                StandardMenuPopup.this.f732i.show();
            } else {
                StandardMenuPopup.this.dismiss();
            }
        }
    };

    /* renamed from: k  reason: collision with root package name */
    private final View.OnAttachStateChangeListener f734k = new View.OnAttachStateChangeListener() { // from class: androidx.appcompat.view.menu.StandardMenuPopup.2
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = StandardMenuPopup.this.f739p;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    StandardMenuPopup.this.f739p = view.getViewTreeObserver();
                }
                StandardMenuPopup standardMenuPopup = StandardMenuPopup.this;
                standardMenuPopup.f739p.removeGlobalOnLayoutListener(standardMenuPopup.f733j);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    };

    /* renamed from: t  reason: collision with root package name */
    private int f743t = 0;

    public StandardMenuPopup(Context context, MenuBuilder menuBuilder, View view, int i2, int i4, boolean z3) {
        this.f725b = context;
        this.f726c = menuBuilder;
        this.f728e = z3;
        this.f727d = new MenuAdapter(menuBuilder, LayoutInflater.from(context), z3, f724v);
        this.f730g = i2;
        this.f731h = i4;
        Resources resources = context.getResources();
        this.f729f = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f736m = view;
        this.f732i = new MenuPopupWindow(context, null, i2, i4);
        menuBuilder.addMenuPresenter(this, context);
    }

    private boolean e() {
        View view;
        if (isShowing()) {
            return true;
        }
        if (this.f740q || (view = this.f736m) == null) {
            return false;
        }
        this.f737n = view;
        this.f732i.setOnDismissListener(this);
        this.f732i.setOnItemClickListener(this);
        this.f732i.setModal(true);
        View view2 = this.f737n;
        boolean z3 = this.f739p == null;
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.f739p = viewTreeObserver;
        if (z3) {
            viewTreeObserver.addOnGlobalLayoutListener(this.f733j);
        }
        view2.addOnAttachStateChangeListener(this.f734k);
        this.f732i.setAnchorView(view2);
        this.f732i.setDropDownGravity(this.f743t);
        if (!this.f741r) {
            this.f742s = MenuPopup.b(this.f727d, null, this.f725b, this.f729f);
            this.f741r = true;
        }
        this.f732i.setContentWidth(this.f742s);
        this.f732i.setInputMethodMode(2);
        this.f732i.setEpicenterBounds(getEpicenterBounds());
        this.f732i.show();
        ListView listView = this.f732i.getListView();
        listView.setOnKeyListener(this);
        if (this.f744u && this.f726c.getHeaderTitle() != null) {
            FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f725b).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) listView, false);
            TextView textView = (TextView) frameLayout.findViewById(16908310);
            if (textView != null) {
                textView.setText(this.f726c.getHeaderTitle());
            }
            frameLayout.setEnabled(false);
            listView.addHeaderView(frameLayout, null, false);
        }
        this.f732i.setAdapter(this.f727d);
        this.f732i.show();
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void addMenu(MenuBuilder menuBuilder) {
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public void dismiss() {
        if (isShowing()) {
            this.f732i.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean flagActionItems() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public ListView getListView() {
        return this.f732i.getListView();
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public boolean isShowing() {
        return !this.f740q && this.f732i.isShowing();
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z3) {
        if (menuBuilder != this.f726c) {
            return;
        }
        dismiss();
        MenuPresenter.Callback callback = this.f738o;
        if (callback != null) {
            callback.onCloseMenu(menuBuilder, z3);
        }
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.f740q = true;
        this.f726c.close();
        ViewTreeObserver viewTreeObserver = this.f739p;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f739p = this.f737n.getViewTreeObserver();
            }
            this.f739p.removeGlobalOnLayoutListener(this.f733j);
            this.f739p = null;
        }
        this.f737n.removeOnAttachStateChangeListener(this.f734k);
        PopupWindow.OnDismissListener onDismissListener = this.f735l;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
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
        if (subMenuBuilder.hasVisibleItems()) {
            MenuPopupHelper menuPopupHelper = new MenuPopupHelper(this.f725b, subMenuBuilder, this.f737n, this.f728e, this.f730g, this.f731h);
            menuPopupHelper.setPresenterCallback(this.f738o);
            menuPopupHelper.setForceShowIcon(MenuPopup.c(subMenuBuilder));
            menuPopupHelper.setOnDismissListener(this.f735l);
            this.f735l = null;
            this.f726c.close(false);
            int horizontalOffset = this.f732i.getHorizontalOffset();
            int verticalOffset = this.f732i.getVerticalOffset();
            if ((Gravity.getAbsoluteGravity(this.f743t, ViewCompat.getLayoutDirection(this.f736m)) & 7) == 5) {
                horizontalOffset += this.f736m.getWidth();
            }
            if (menuPopupHelper.tryShow(horizontalOffset, verticalOffset)) {
                MenuPresenter.Callback callback = this.f738o;
                if (callback != null) {
                    callback.onOpenSubMenu(subMenuBuilder);
                    return true;
                }
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void setAnchorView(View view) {
        this.f736m = view;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void setCallback(MenuPresenter.Callback callback) {
        this.f738o = callback;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void setForceShowIcon(boolean z3) {
        this.f727d.setForceShowIcon(z3);
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void setGravity(int i2) {
        this.f743t = i2;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void setHorizontalOffset(int i2) {
        this.f732i.setHorizontalOffset(i2);
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.f735l = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void setShowTitle(boolean z3) {
        this.f744u = z3;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void setVerticalOffset(int i2) {
        this.f732i.setVerticalOffset(i2);
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public void show() {
        if (!e()) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void updateMenuView(boolean z3) {
        this.f741r = false;
        MenuAdapter menuAdapter = this.f727d;
        if (menuAdapter != null) {
            menuAdapter.notifyDataSetChanged();
        }
    }
}
