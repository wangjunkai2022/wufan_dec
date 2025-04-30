package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.view.ViewCompat;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements MenuView.ItemView, AbsListView.SelectionBoundsAdjuster {

    /* renamed from: r  reason: collision with root package name */
    private static final String f602r = "ListMenuItemView";

    /* renamed from: a  reason: collision with root package name */
    private MenuItemImpl f603a;

    /* renamed from: b  reason: collision with root package name */
    private ImageView f604b;

    /* renamed from: c  reason: collision with root package name */
    private RadioButton f605c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f606d;

    /* renamed from: e  reason: collision with root package name */
    private CheckBox f607e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f608f;

    /* renamed from: g  reason: collision with root package name */
    private ImageView f609g;

    /* renamed from: h  reason: collision with root package name */
    private ImageView f610h;

    /* renamed from: i  reason: collision with root package name */
    private LinearLayout f611i;

    /* renamed from: j  reason: collision with root package name */
    private Drawable f612j;

    /* renamed from: k  reason: collision with root package name */
    private int f613k;

    /* renamed from: l  reason: collision with root package name */
    private Context f614l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f615m;

    /* renamed from: n  reason: collision with root package name */
    private Drawable f616n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f617o;

    /* renamed from: p  reason: collision with root package name */
    private LayoutInflater f618p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f619q;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listMenuViewStyle);
    }

    private void a(View view) {
        b(view, -1);
    }

    private void b(View view, int i2) {
        LinearLayout linearLayout = this.f611i;
        if (linearLayout != null) {
            linearLayout.addView(view, i2);
        } else {
            addView(view, i2);
        }
    }

    private void c() {
        CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
        this.f607e = checkBox;
        a(checkBox);
    }

    private void d() {
        ImageView imageView = (ImageView) getInflater().inflate(R.layout.abc_list_menu_item_icon, (ViewGroup) this, false);
        this.f604b = imageView;
        b(imageView, 0);
    }

    private void e() {
        RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
        this.f605c = radioButton;
        a(radioButton);
    }

    private LayoutInflater getInflater() {
        if (this.f618p == null) {
            this.f618p = LayoutInflater.from(getContext());
        }
        return this.f618p;
    }

    private void setSubMenuArrowVisible(boolean z3) {
        ImageView imageView = this.f609g;
        if (imageView != null) {
            imageView.setVisibility(z3 ? 0 : 8);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f610h;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f610h.getLayoutParams();
        rect.top += this.f610h.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public MenuItemImpl getItemData() {
        return this.f603a;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void initialize(MenuItemImpl menuItemImpl, int i2) {
        this.f603a = menuItemImpl;
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
        setTitle(menuItemImpl.f(this));
        setCheckable(menuItemImpl.isCheckable());
        setShortcut(menuItemImpl.j(), menuItemImpl.d());
        setIcon(menuItemImpl.getIcon());
        setEnabled(menuItemImpl.isEnabled());
        setSubMenuArrowVisible(menuItemImpl.hasSubMenu());
        setContentDescription(menuItemImpl.getContentDescription());
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        ViewCompat.setBackground(this, this.f612j);
        TextView textView = (TextView) findViewById(R.id.title);
        this.f606d = textView;
        int i2 = this.f613k;
        if (i2 != -1) {
            textView.setTextAppearance(this.f614l, i2);
        }
        this.f608f = (TextView) findViewById(R.id.shortcut);
        ImageView imageView = (ImageView) findViewById(R.id.submenuarrow);
        this.f609g = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.f616n);
        }
        this.f610h = (ImageView) findViewById(R.id.group_divider);
        this.f611i = (LinearLayout) findViewById(R.id.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i2, int i4) {
        if (this.f604b != null && this.f615m) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f604b.getLayoutParams();
            int i5 = layoutParams.height;
            if (i5 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i5;
            }
        }
        super.onMeasure(i2, i4);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean prefersCondensedTitle() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setCheckable(boolean z3) {
        CompoundButton compoundButton;
        CompoundButton compoundButton2;
        if (!z3 && this.f605c == null && this.f607e == null) {
            return;
        }
        if (this.f603a.isExclusiveCheckable()) {
            if (this.f605c == null) {
                e();
            }
            compoundButton = this.f605c;
            compoundButton2 = this.f607e;
        } else {
            if (this.f607e == null) {
                c();
            }
            compoundButton = this.f607e;
            compoundButton2 = this.f605c;
        }
        if (z3) {
            compoundButton.setChecked(this.f603a.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (compoundButton2 == null || compoundButton2.getVisibility() == 8) {
                return;
            }
            compoundButton2.setVisibility(8);
            return;
        }
        CheckBox checkBox = this.f607e;
        if (checkBox != null) {
            checkBox.setVisibility(8);
        }
        RadioButton radioButton = this.f605c;
        if (radioButton != null) {
            radioButton.setVisibility(8);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setChecked(boolean z3) {
        CompoundButton compoundButton;
        if (this.f603a.isExclusiveCheckable()) {
            if (this.f605c == null) {
                e();
            }
            compoundButton = this.f605c;
        } else {
            if (this.f607e == null) {
                c();
            }
            compoundButton = this.f607e;
        }
        compoundButton.setChecked(z3);
    }

    public void setForceShowIcon(boolean z3) {
        this.f619q = z3;
        this.f615m = z3;
    }

    public void setGroupDividerEnabled(boolean z3) {
        ImageView imageView = this.f610h;
        if (imageView != null) {
            imageView.setVisibility((this.f617o || !z3) ? 8 : 0);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setIcon(Drawable drawable) {
        boolean z3 = this.f603a.shouldShowIcon() || this.f619q;
        if (z3 || this.f615m) {
            ImageView imageView = this.f604b;
            if (imageView == null && drawable == null && !this.f615m) {
                return;
            }
            if (imageView == null) {
                d();
            }
            if (drawable == null && !this.f615m) {
                this.f604b.setVisibility(8);
                return;
            }
            ImageView imageView2 = this.f604b;
            if (!z3) {
                drawable = null;
            }
            imageView2.setImageDrawable(drawable);
            if (this.f604b.getVisibility() != 0) {
                this.f604b.setVisibility(0);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setShortcut(boolean z3, char c4) {
        int i2 = (z3 && this.f603a.j()) ? 0 : 8;
        if (i2 == 0) {
            this.f608f.setText(this.f603a.e());
        }
        if (this.f608f.getVisibility() != i2) {
            this.f608f.setVisibility(i2);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setTitle(CharSequence charSequence) {
        if (charSequence != null) {
            this.f606d.setText(charSequence);
            if (this.f606d.getVisibility() != 0) {
                this.f606d.setVisibility(0);
            }
        } else if (this.f606d.getVisibility() != 8) {
            this.f606d.setVisibility(8);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean showsIcon() {
        return this.f619q;
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet);
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(getContext(), attributeSet, R.styleable.MenuView, i2, 0);
        this.f612j = obtainStyledAttributes.getDrawable(R.styleable.MenuView_android_itemBackground);
        this.f613k = obtainStyledAttributes.getResourceId(R.styleable.MenuView_android_itemTextAppearance, -1);
        this.f615m = obtainStyledAttributes.getBoolean(R.styleable.MenuView_preserveIconSpacing, false);
        this.f614l = context;
        this.f616n = obtainStyledAttributes.getDrawable(R.styleable.MenuView_subMenuArrow);
        TypedArray obtainStyledAttributes2 = context.getTheme().obtainStyledAttributes(null, new int[]{16843049}, R.attr.dropDownListViewStyle, 0);
        this.f617o = obtainStyledAttributes2.hasValue(0);
        obtainStyledAttributes.recycle();
        obtainStyledAttributes2.recycle();
    }
}
