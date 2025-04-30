package androidx.appcompat.widget;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.annotation.AttrRes;
import androidx.annotation.MenuRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.R;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.appcompat.view.menu.ShowableListMenu;
/* loaded from: classes.dex */
public class PopupMenu {

    /* renamed from: a  reason: collision with root package name */
    private final Context f1264a;

    /* renamed from: b  reason: collision with root package name */
    private final MenuBuilder f1265b;

    /* renamed from: c  reason: collision with root package name */
    private final View f1266c;

    /* renamed from: d  reason: collision with root package name */
    final MenuPopupHelper f1267d;

    /* renamed from: e  reason: collision with root package name */
    OnMenuItemClickListener f1268e;

    /* renamed from: f  reason: collision with root package name */
    OnDismissListener f1269f;

    /* renamed from: g  reason: collision with root package name */
    private View.OnTouchListener f1270g;

    /* loaded from: classes.dex */
    public interface OnDismissListener {
        void onDismiss(PopupMenu popupMenu);
    }

    /* loaded from: classes.dex */
    public interface OnMenuItemClickListener {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public PopupMenu(@NonNull Context context, @NonNull View view) {
        this(context, view, 0);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    ListView a() {
        if (this.f1267d.isShowing()) {
            return this.f1267d.getListView();
        }
        return null;
    }

    public void dismiss() {
        this.f1267d.dismiss();
    }

    @NonNull
    public View.OnTouchListener getDragToOpenListener() {
        if (this.f1270g == null) {
            this.f1270g = new ForwardingListener(this.f1266c) { // from class: androidx.appcompat.widget.PopupMenu.3
                @Override // androidx.appcompat.widget.ForwardingListener
                public ShowableListMenu getPopup() {
                    return PopupMenu.this.f1267d.getPopup();
                }

                @Override // androidx.appcompat.widget.ForwardingListener
                protected boolean onForwardingStarted() {
                    PopupMenu.this.show();
                    return true;
                }

                @Override // androidx.appcompat.widget.ForwardingListener
                protected boolean onForwardingStopped() {
                    PopupMenu.this.dismiss();
                    return true;
                }
            };
        }
        return this.f1270g;
    }

    public int getGravity() {
        return this.f1267d.getGravity();
    }

    @NonNull
    public Menu getMenu() {
        return this.f1265b;
    }

    @NonNull
    public MenuInflater getMenuInflater() {
        return new SupportMenuInflater(this.f1264a);
    }

    public void inflate(@MenuRes int i2) {
        getMenuInflater().inflate(i2, this.f1265b);
    }

    public void setForceShowIcon(boolean z3) {
        this.f1267d.setForceShowIcon(z3);
    }

    public void setGravity(int i2) {
        this.f1267d.setGravity(i2);
    }

    public void setOnDismissListener(@Nullable OnDismissListener onDismissListener) {
        this.f1269f = onDismissListener;
    }

    public void setOnMenuItemClickListener(@Nullable OnMenuItemClickListener onMenuItemClickListener) {
        this.f1268e = onMenuItemClickListener;
    }

    public void show() {
        this.f1267d.show();
    }

    public PopupMenu(@NonNull Context context, @NonNull View view, int i2) {
        this(context, view, i2, R.attr.popupMenuStyle, 0);
    }

    public PopupMenu(@NonNull Context context, @NonNull View view, int i2, @AttrRes int i4, @StyleRes int i5) {
        this.f1264a = context;
        this.f1266c = view;
        MenuBuilder menuBuilder = new MenuBuilder(context);
        this.f1265b = menuBuilder;
        menuBuilder.setCallback(new MenuBuilder.Callback() { // from class: androidx.appcompat.widget.PopupMenu.1
            @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
            public boolean onMenuItemSelected(@NonNull MenuBuilder menuBuilder2, @NonNull MenuItem menuItem) {
                OnMenuItemClickListener onMenuItemClickListener = PopupMenu.this.f1268e;
                if (onMenuItemClickListener != null) {
                    return onMenuItemClickListener.onMenuItemClick(menuItem);
                }
                return false;
            }

            @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
            public void onMenuModeChange(@NonNull MenuBuilder menuBuilder2) {
            }
        });
        MenuPopupHelper menuPopupHelper = new MenuPopupHelper(context, menuBuilder, view, false, i4, i5);
        this.f1267d = menuPopupHelper;
        menuPopupHelper.setGravity(i2);
        menuPopupHelper.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: androidx.appcompat.widget.PopupMenu.2
            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                PopupMenu popupMenu = PopupMenu.this;
                OnDismissListener onDismissListener = popupMenu.f1269f;
                if (onDismissListener != null) {
                    onDismissListener.onDismiss(popupMenu);
                }
            }
        });
    }
}
