package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.ForwardingListener;
import androidx.appcompat.widget.TooltipCompat;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ActionMenuItemView extends AppCompatTextView implements MenuView.ItemView, View.OnClickListener, ActionMenuView.ActionMenuChildView {

    /* renamed from: l  reason: collision with root package name */
    private static final String f540l = "ActionMenuItemView";

    /* renamed from: m  reason: collision with root package name */
    private static final int f541m = 32;

    /* renamed from: a  reason: collision with root package name */
    MenuItemImpl f542a;

    /* renamed from: b  reason: collision with root package name */
    private CharSequence f543b;

    /* renamed from: c  reason: collision with root package name */
    private Drawable f544c;

    /* renamed from: d  reason: collision with root package name */
    MenuBuilder.ItemInvoker f545d;

    /* renamed from: e  reason: collision with root package name */
    private ForwardingListener f546e;

    /* renamed from: f  reason: collision with root package name */
    PopupCallback f547f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f548g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f549h;

    /* renamed from: i  reason: collision with root package name */
    private int f550i;

    /* renamed from: j  reason: collision with root package name */
    private int f551j;

    /* renamed from: k  reason: collision with root package name */
    private int f552k;

    /* loaded from: classes.dex */
    private class ActionMenuItemForwardingListener extends ForwardingListener {
        public ActionMenuItemForwardingListener() {
            super(ActionMenuItemView.this);
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        public ShowableListMenu getPopup() {
            PopupCallback popupCallback = ActionMenuItemView.this.f547f;
            if (popupCallback != null) {
                return popupCallback.getPopup();
            }
            return null;
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        protected boolean onForwardingStarted() {
            ShowableListMenu popup;
            ActionMenuItemView actionMenuItemView = ActionMenuItemView.this;
            MenuBuilder.ItemInvoker itemInvoker = actionMenuItemView.f545d;
            return itemInvoker != null && itemInvoker.invokeItem(actionMenuItemView.f542a) && (popup = getPopup()) != null && popup.isShowing();
        }
    }

    /* loaded from: classes.dex */
    public static abstract class PopupCallback {
        public abstract ShowableListMenu getPopup();
    }

    public ActionMenuItemView(Context context) {
        this(context, null);
    }

    private boolean a() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i2 = configuration.screenWidthDp;
        return i2 >= 480 || (i2 >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    private void b() {
        boolean z3 = true;
        boolean z4 = !TextUtils.isEmpty(this.f543b);
        if (this.f544c != null && (!this.f542a.showsTextAsAction() || (!this.f548g && !this.f549h))) {
            z3 = false;
        }
        boolean z5 = z4 & z3;
        setText(z5 ? this.f543b : null);
        CharSequence contentDescription = this.f542a.getContentDescription();
        if (TextUtils.isEmpty(contentDescription)) {
            setContentDescription(z5 ? null : this.f542a.getTitle());
        } else {
            setContentDescription(contentDescription);
        }
        CharSequence tooltipText = this.f542a.getTooltipText();
        if (TextUtils.isEmpty(tooltipText)) {
            TooltipCompat.setTooltipText(this, z5 ? null : this.f542a.getTitle());
        } else {
            TooltipCompat.setTooltipText(this, tooltipText);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public MenuItemImpl getItemData() {
        return this.f542a;
    }

    public boolean hasText() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void initialize(MenuItemImpl menuItemImpl, int i2) {
        this.f542a = menuItemImpl;
        setIcon(menuItemImpl.getIcon());
        setTitle(menuItemImpl.f(this));
        setId(menuItemImpl.getItemId());
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
        setEnabled(menuItemImpl.isEnabled());
        if (menuItemImpl.hasSubMenu() && this.f546e == null) {
            this.f546e = new ActionMenuItemForwardingListener();
        }
    }

    @Override // androidx.appcompat.widget.ActionMenuView.ActionMenuChildView
    public boolean needsDividerAfter() {
        return hasText();
    }

    @Override // androidx.appcompat.widget.ActionMenuView.ActionMenuChildView
    public boolean needsDividerBefore() {
        return hasText() && this.f542a.getIcon() == null;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MenuBuilder.ItemInvoker itemInvoker = this.f545d;
        if (itemInvoker != null) {
            itemInvoker.invokeItem(this.f542a);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f548g = a();
        b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i2, int i4) {
        int i5;
        int i6;
        boolean hasText = hasText();
        if (hasText && (i6 = this.f551j) >= 0) {
            super.setPadding(i6, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i2, i4);
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int measuredWidth = getMeasuredWidth();
        if (mode == Integer.MIN_VALUE) {
            i5 = Math.min(size, this.f550i);
        } else {
            i5 = this.f550i;
        }
        if (mode != 1073741824 && this.f550i > 0 && measuredWidth < i5) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(i5, 1073741824), i4);
        }
        if (hasText || this.f544c == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.f544c.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ForwardingListener forwardingListener;
        if (this.f542a.hasSubMenu() && (forwardingListener = this.f546e) != null && forwardingListener.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean prefersCondensedTitle() {
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setCheckable(boolean z3) {
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setChecked(boolean z3) {
    }

    public void setExpandedFormat(boolean z3) {
        if (this.f549h != z3) {
            this.f549h = z3;
            MenuItemImpl menuItemImpl = this.f542a;
            if (menuItemImpl != null) {
                menuItemImpl.actionFormatChanged();
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setIcon(Drawable drawable) {
        this.f544c = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i2 = this.f552k;
            if (intrinsicWidth > i2) {
                intrinsicHeight = (int) (intrinsicHeight * (i2 / intrinsicWidth));
                intrinsicWidth = i2;
            }
            if (intrinsicHeight > i2) {
                intrinsicWidth = (int) (intrinsicWidth * (i2 / intrinsicHeight));
            } else {
                i2 = intrinsicHeight;
            }
            drawable.setBounds(0, 0, intrinsicWidth, i2);
        }
        setCompoundDrawables(drawable, null, null, null);
        b();
    }

    public void setItemInvoker(MenuBuilder.ItemInvoker itemInvoker) {
        this.f545d = itemInvoker;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i2, int i4, int i5, int i6) {
        this.f551j = i2;
        super.setPadding(i2, i4, i5, i6);
    }

    public void setPopupCallback(PopupCallback popupCallback) {
        this.f547f = popupCallback;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setShortcut(boolean z3, char c4) {
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setTitle(CharSequence charSequence) {
        this.f543b = charSequence;
        b();
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean showsIcon() {
        return true;
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        Resources resources = context.getResources();
        this.f548g = a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ActionMenuItemView, i2, 0);
        this.f550i = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ActionMenuItemView_android_minWidth, 0);
        obtainStyledAttributes.recycle();
        this.f552k = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.f551j = -1;
        setSaveEnabled(false);
    }
}
