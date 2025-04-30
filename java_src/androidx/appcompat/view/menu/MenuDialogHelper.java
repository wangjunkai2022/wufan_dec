package androidx.appcompat.view.menu;

import android.content.DialogInterface;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.appcompat.R;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.view.menu.MenuPresenter;
/* loaded from: classes.dex */
class MenuDialogHelper implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, MenuPresenter.Callback {

    /* renamed from: a  reason: collision with root package name */
    private MenuBuilder f665a;

    /* renamed from: b  reason: collision with root package name */
    private AlertDialog f666b;

    /* renamed from: c  reason: collision with root package name */
    ListMenuPresenter f667c;

    /* renamed from: d  reason: collision with root package name */
    private MenuPresenter.Callback f668d;

    public MenuDialogHelper(MenuBuilder menuBuilder) {
        this.f665a = menuBuilder;
    }

    public void dismiss() {
        AlertDialog alertDialog = this.f666b;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i2) {
        this.f665a.performItemAction((MenuItemImpl) this.f667c.getAdapter().getItem(i2), 0);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
    public void onCloseMenu(@NonNull MenuBuilder menuBuilder, boolean z3) {
        if (z3 || menuBuilder == this.f665a) {
            dismiss();
        }
        MenuPresenter.Callback callback = this.f668d;
        if (callback != null) {
            callback.onCloseMenu(menuBuilder, z3);
        }
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f667c.onCloseMenu(this.f665a, true);
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        if (i2 == 82 || i2 == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.f666b.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f666b.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.f665a.close(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.f665a.performShortcut(i2, keyEvent, 0);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
    public boolean onOpenSubMenu(@NonNull MenuBuilder menuBuilder) {
        MenuPresenter.Callback callback = this.f668d;
        if (callback != null) {
            return callback.onOpenSubMenu(menuBuilder);
        }
        return false;
    }

    public void setPresenterCallback(MenuPresenter.Callback callback) {
        this.f668d = callback;
    }

    public void show(IBinder iBinder) {
        MenuBuilder menuBuilder = this.f665a;
        AlertDialog.Builder builder = new AlertDialog.Builder(menuBuilder.getContext());
        ListMenuPresenter listMenuPresenter = new ListMenuPresenter(builder.getContext(), R.layout.abc_list_menu_item_layout);
        this.f667c = listMenuPresenter;
        listMenuPresenter.setCallback(this);
        this.f665a.addMenuPresenter(this.f667c);
        builder.setAdapter(this.f667c.getAdapter(), this);
        View headerView = menuBuilder.getHeaderView();
        if (headerView != null) {
            builder.setCustomTitle(headerView);
        } else {
            builder.setIcon(menuBuilder.getHeaderIcon()).setTitle(menuBuilder.getHeaderTitle());
        }
        builder.setOnKeyListener(this);
        AlertDialog create = builder.create();
        this.f666b = create;
        create.setOnDismissListener(this);
        WindowManager.LayoutParams attributes = this.f666b.getWindow().getAttributes();
        attributes.type = 1003;
        if (iBinder != null) {
            attributes.token = iBinder;
        }
        attributes.flags |= 131072;
        this.f666b.show();
    }
}
