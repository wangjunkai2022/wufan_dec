package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class MenuPopupHelper implements MenuHelper {

    /* renamed from: m  reason: collision with root package name */
    private static final int f709m = 48;

    /* renamed from: a  reason: collision with root package name */
    private final Context f710a;

    /* renamed from: b  reason: collision with root package name */
    private final MenuBuilder f711b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f712c;

    /* renamed from: d  reason: collision with root package name */
    private final int f713d;

    /* renamed from: e  reason: collision with root package name */
    private final int f714e;

    /* renamed from: f  reason: collision with root package name */
    private View f715f;

    /* renamed from: g  reason: collision with root package name */
    private int f716g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f717h;

    /* renamed from: i  reason: collision with root package name */
    private MenuPresenter.Callback f718i;

    /* renamed from: j  reason: collision with root package name */
    private MenuPopup f719j;

    /* renamed from: k  reason: collision with root package name */
    private PopupWindow.OnDismissListener f720k;

    /* renamed from: l  reason: collision with root package name */
    private final PopupWindow.OnDismissListener f721l;

    public MenuPopupHelper(@NonNull Context context, @NonNull MenuBuilder menuBuilder) {
        this(context, menuBuilder, null, false, R.attr.popupMenuStyle, 0);
    }

    @NonNull
    private MenuPopup a() {
        MenuPopup standardMenuPopup;
        Display defaultDisplay = ((WindowManager) this.f710a.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealSize(point);
        } else {
            defaultDisplay.getSize(point);
        }
        if (Math.min(point.x, point.y) >= this.f710a.getResources().getDimensionPixelSize(R.dimen.abc_cascading_menus_min_smallest_width)) {
            standardMenuPopup = new CascadingMenuPopup(this.f710a, this.f715f, this.f713d, this.f714e, this.f712c);
        } else {
            standardMenuPopup = new StandardMenuPopup(this.f710a, this.f711b, this.f715f, this.f713d, this.f714e, this.f712c);
        }
        standardMenuPopup.addMenu(this.f711b);
        standardMenuPopup.setOnDismissListener(this.f721l);
        standardMenuPopup.setAnchorView(this.f715f);
        standardMenuPopup.setCallback(this.f718i);
        standardMenuPopup.setForceShowIcon(this.f717h);
        standardMenuPopup.setGravity(this.f716g);
        return standardMenuPopup;
    }

    private void c(int i2, int i4, boolean z3, boolean z4) {
        MenuPopup popup = getPopup();
        popup.setShowTitle(z4);
        if (z3) {
            if ((GravityCompat.getAbsoluteGravity(this.f716g, ViewCompat.getLayoutDirection(this.f715f)) & 7) == 5) {
                i2 -= this.f715f.getWidth();
            }
            popup.setHorizontalOffset(i2);
            popup.setVerticalOffset(i4);
            int i5 = (int) ((this.f710a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            popup.setEpicenterBounds(new Rect(i2 - i5, i4 - i5, i2 + i5, i4 + i5));
        }
        popup.show();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b() {
        this.f719j = null;
        PopupWindow.OnDismissListener onDismissListener = this.f720k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuHelper
    public void dismiss() {
        if (isShowing()) {
            this.f719j.dismiss();
        }
    }

    public int getGravity() {
        return this.f716g;
    }

    public ListView getListView() {
        return getPopup().getListView();
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public MenuPopup getPopup() {
        if (this.f719j == null) {
            this.f719j = a();
        }
        return this.f719j;
    }

    public boolean isShowing() {
        MenuPopup menuPopup = this.f719j;
        return menuPopup != null && menuPopup.isShowing();
    }

    public void setAnchorView(@NonNull View view) {
        this.f715f = view;
    }

    public void setForceShowIcon(boolean z3) {
        this.f717h = z3;
        MenuPopup menuPopup = this.f719j;
        if (menuPopup != null) {
            menuPopup.setForceShowIcon(z3);
        }
    }

    public void setGravity(int i2) {
        this.f716g = i2;
    }

    public void setOnDismissListener(@Nullable PopupWindow.OnDismissListener onDismissListener) {
        this.f720k = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.MenuHelper
    public void setPresenterCallback(@Nullable MenuPresenter.Callback callback) {
        this.f718i = callback;
        MenuPopup menuPopup = this.f719j;
        if (menuPopup != null) {
            menuPopup.setCallback(callback);
        }
    }

    public void show() {
        if (!tryShow()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    public boolean tryShow() {
        if (isShowing()) {
            return true;
        }
        if (this.f715f == null) {
            return false;
        }
        c(0, 0, false, false);
        return true;
    }

    public MenuPopupHelper(@NonNull Context context, @NonNull MenuBuilder menuBuilder, @NonNull View view) {
        this(context, menuBuilder, view, false, R.attr.popupMenuStyle, 0);
    }

    public MenuPopupHelper(@NonNull Context context, @NonNull MenuBuilder menuBuilder, @NonNull View view, boolean z3, @AttrRes int i2) {
        this(context, menuBuilder, view, z3, i2, 0);
    }

    public void show(int i2, int i4) {
        if (!tryShow(i2, i4)) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    public MenuPopupHelper(@NonNull Context context, @NonNull MenuBuilder menuBuilder, @NonNull View view, boolean z3, @AttrRes int i2, @StyleRes int i4) {
        this.f716g = GravityCompat.START;
        this.f721l = new PopupWindow.OnDismissListener() { // from class: androidx.appcompat.view.menu.MenuPopupHelper.1
            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                MenuPopupHelper.this.b();
            }
        };
        this.f710a = context;
        this.f711b = menuBuilder;
        this.f715f = view;
        this.f712c = z3;
        this.f713d = i2;
        this.f714e = i4;
    }

    public boolean tryShow(int i2, int i4) {
        if (isShowing()) {
            return true;
        }
        if (this.f715f == null) {
            return false;
        }
        c(i2, i4, true, true);
        return true;
    }
}
