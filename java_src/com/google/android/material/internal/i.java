package com.google.android.material.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Dimension;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate;
import com.google.android.material.R;
import java.util.ArrayList;
/* compiled from: NavigationMenuPresenter.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class i implements MenuPresenter {
    public static final int D = 0;
    private static final String E = "android:menu:list";
    private static final String F = "android:menu:adapter";
    private static final String G = "android:menu:header";
    int A;

    /* renamed from: a  reason: collision with root package name */
    private NavigationMenuView f15149a;

    /* renamed from: b  reason: collision with root package name */
    LinearLayout f15150b;

    /* renamed from: c  reason: collision with root package name */
    private MenuPresenter.Callback f15151c;

    /* renamed from: d  reason: collision with root package name */
    MenuBuilder f15152d;

    /* renamed from: e  reason: collision with root package name */
    private int f15153e;

    /* renamed from: f  reason: collision with root package name */
    c f15154f;

    /* renamed from: g  reason: collision with root package name */
    LayoutInflater f15155g;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    ColorStateList f15157i;

    /* renamed from: k  reason: collision with root package name */
    ColorStateList f15159k;

    /* renamed from: l  reason: collision with root package name */
    ColorStateList f15160l;

    /* renamed from: m  reason: collision with root package name */
    Drawable f15161m;

    /* renamed from: n  reason: collision with root package name */
    RippleDrawable f15162n;

    /* renamed from: o  reason: collision with root package name */
    int f15163o;
    @Px

    /* renamed from: p  reason: collision with root package name */
    int f15164p;

    /* renamed from: q  reason: collision with root package name */
    int f15165q;

    /* renamed from: r  reason: collision with root package name */
    int f15166r;
    @Px

    /* renamed from: s  reason: collision with root package name */
    int f15167s;
    @Px

    /* renamed from: t  reason: collision with root package name */
    int f15168t;
    @Px

    /* renamed from: u  reason: collision with root package name */
    int f15169u;
    @Px

    /* renamed from: v  reason: collision with root package name */
    int f15170v;

    /* renamed from: w  reason: collision with root package name */
    boolean f15171w;

    /* renamed from: y  reason: collision with root package name */
    private int f15173y;

    /* renamed from: z  reason: collision with root package name */
    private int f15174z;

    /* renamed from: h  reason: collision with root package name */
    int f15156h = 0;

    /* renamed from: j  reason: collision with root package name */
    int f15158j = 0;

    /* renamed from: x  reason: collision with root package name */
    boolean f15172x = true;
    private int B = -1;
    final View.OnClickListener C = new a();

    /* compiled from: NavigationMenuPresenter.java */
    /* loaded from: classes2.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean z3 = true;
            i.this.O(true);
            MenuItemImpl itemData = ((NavigationMenuItemView) view).getItemData();
            i iVar = i.this;
            boolean performItemAction = iVar.f15152d.performItemAction(itemData, iVar, 0);
            if (itemData != null && itemData.isCheckable() && performItemAction) {
                i.this.f15154f.j(itemData);
            } else {
                z3 = false;
            }
            i.this.O(false);
            if (z3) {
                i.this.updateMenuView(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavigationMenuPresenter.java */
    /* loaded from: classes2.dex */
    public static class b extends l {
        public b(View view) {
            super(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavigationMenuPresenter.java */
    /* loaded from: classes2.dex */
    public class c extends RecyclerView.Adapter<l> {

        /* renamed from: e  reason: collision with root package name */
        private static final String f15176e = "android:menu:checked";

        /* renamed from: f  reason: collision with root package name */
        private static final String f15177f = "android:menu:action_views";

        /* renamed from: g  reason: collision with root package name */
        private static final int f15178g = 0;

        /* renamed from: h  reason: collision with root package name */
        private static final int f15179h = 1;

        /* renamed from: i  reason: collision with root package name */
        private static final int f15180i = 2;

        /* renamed from: j  reason: collision with root package name */
        private static final int f15181j = 3;

        /* renamed from: a  reason: collision with root package name */
        private final ArrayList<e> f15182a = new ArrayList<>();

        /* renamed from: b  reason: collision with root package name */
        private MenuItemImpl f15183b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f15184c;

        c() {
            h();
        }

        private void a(int i2, int i4) {
            while (i2 < i4) {
                ((g) this.f15182a.get(i2)).f15189b = true;
                i2++;
            }
        }

        private void h() {
            if (this.f15184c) {
                return;
            }
            this.f15184c = true;
            this.f15182a.clear();
            this.f15182a.add(new d());
            int i2 = -1;
            int size = i.this.f15152d.getVisibleItems().size();
            boolean z3 = false;
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                MenuItemImpl menuItemImpl = i.this.f15152d.getVisibleItems().get(i5);
                if (menuItemImpl.isChecked()) {
                    j(menuItemImpl);
                }
                if (menuItemImpl.isCheckable()) {
                    menuItemImpl.setExclusiveCheckable(false);
                }
                if (menuItemImpl.hasSubMenu()) {
                    SubMenu subMenu = menuItemImpl.getSubMenu();
                    if (subMenu.hasVisibleItems()) {
                        if (i5 != 0) {
                            this.f15182a.add(new f(i.this.A, 0));
                        }
                        this.f15182a.add(new g(menuItemImpl));
                        int size2 = this.f15182a.size();
                        int size3 = subMenu.size();
                        boolean z4 = false;
                        for (int i6 = 0; i6 < size3; i6++) {
                            MenuItemImpl menuItemImpl2 = (MenuItemImpl) subMenu.getItem(i6);
                            if (menuItemImpl2.isVisible()) {
                                if (!z4 && menuItemImpl2.getIcon() != null) {
                                    z4 = true;
                                }
                                if (menuItemImpl2.isCheckable()) {
                                    menuItemImpl2.setExclusiveCheckable(false);
                                }
                                if (menuItemImpl.isChecked()) {
                                    j(menuItemImpl);
                                }
                                this.f15182a.add(new g(menuItemImpl2));
                            }
                        }
                        if (z4) {
                            a(size2, this.f15182a.size());
                        }
                    }
                } else {
                    int groupId = menuItemImpl.getGroupId();
                    if (groupId != i2) {
                        i4 = this.f15182a.size();
                        z3 = menuItemImpl.getIcon() != null;
                        if (i5 != 0) {
                            i4++;
                            ArrayList<e> arrayList = this.f15182a;
                            int i7 = i.this.A;
                            arrayList.add(new f(i7, i7));
                        }
                    } else if (!z3 && menuItemImpl.getIcon() != null) {
                        a(i4, this.f15182a.size());
                        z3 = true;
                    }
                    g gVar = new g(menuItemImpl);
                    gVar.f15189b = z3;
                    this.f15182a.add(gVar);
                    i2 = groupId;
                }
            }
            this.f15184c = false;
        }

        @NonNull
        public Bundle b() {
            Bundle bundle = new Bundle();
            MenuItemImpl menuItemImpl = this.f15183b;
            if (menuItemImpl != null) {
                bundle.putInt(f15176e, menuItemImpl.getItemId());
            }
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            int size = this.f15182a.size();
            for (int i2 = 0; i2 < size; i2++) {
                e eVar = this.f15182a.get(i2);
                if (eVar instanceof g) {
                    MenuItemImpl a4 = ((g) eVar).a();
                    View actionView = a4 != null ? a4.getActionView() : null;
                    if (actionView != null) {
                        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
                        actionView.saveHierarchyState(parcelableSparseArray);
                        sparseArray.put(a4.getItemId(), parcelableSparseArray);
                    }
                }
            }
            bundle.putSparseParcelableArray(f15177f, sparseArray);
            return bundle;
        }

        public MenuItemImpl c() {
            return this.f15183b;
        }

        int d() {
            int i2 = i.this.f15150b.getChildCount() == 0 ? 0 : 1;
            for (int i4 = 0; i4 < i.this.f15154f.getItemCount(); i4++) {
                if (i.this.f15154f.getItemViewType(i4) == 0) {
                    i2++;
                }
            }
            return i2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: e */
        public void onBindViewHolder(@NonNull l lVar, int i2) {
            int itemViewType = getItemViewType(i2);
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    if (itemViewType != 2) {
                        return;
                    }
                    f fVar = (f) this.f15182a.get(i2);
                    lVar.itemView.setPadding(i.this.f15167s, fVar.b(), i.this.f15168t, fVar.a());
                    return;
                }
                TextView textView = (TextView) lVar.itemView;
                textView.setText(((g) this.f15182a.get(i2)).a().getTitle());
                int i4 = i.this.f15156h;
                if (i4 != 0) {
                    TextViewCompat.setTextAppearance(textView, i4);
                }
                textView.setPadding(i.this.f15169u, textView.getPaddingTop(), i.this.f15170v, textView.getPaddingBottom());
                ColorStateList colorStateList = i.this.f15157i;
                if (colorStateList != null) {
                    textView.setTextColor(colorStateList);
                    return;
                }
                return;
            }
            NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) lVar.itemView;
            navigationMenuItemView.setIconTintList(i.this.f15160l);
            int i5 = i.this.f15158j;
            if (i5 != 0) {
                navigationMenuItemView.setTextAppearance(i5);
            }
            ColorStateList colorStateList2 = i.this.f15159k;
            if (colorStateList2 != null) {
                navigationMenuItemView.setTextColor(colorStateList2);
            }
            Drawable drawable = i.this.f15161m;
            ViewCompat.setBackground(navigationMenuItemView, drawable != null ? drawable.getConstantState().newDrawable() : null);
            RippleDrawable rippleDrawable = i.this.f15162n;
            if (rippleDrawable != null) {
                navigationMenuItemView.setForeground(rippleDrawable.getConstantState().newDrawable());
            }
            g gVar = (g) this.f15182a.get(i2);
            navigationMenuItemView.setNeedsEmptyIcon(gVar.f15189b);
            i iVar = i.this;
            int i6 = iVar.f15163o;
            int i7 = iVar.f15164p;
            navigationMenuItemView.setPadding(i6, i7, i6, i7);
            navigationMenuItemView.setIconPadding(i.this.f15165q);
            i iVar2 = i.this;
            if (iVar2.f15171w) {
                navigationMenuItemView.setIconSize(iVar2.f15166r);
            }
            navigationMenuItemView.setMaxLines(i.this.f15173y);
            navigationMenuItemView.initialize(gVar.a(), 0);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @Nullable
        /* renamed from: f */
        public l onCreateViewHolder(ViewGroup viewGroup, int i2) {
            if (i2 == 0) {
                i iVar = i.this;
                return new C0110i(iVar.f15155g, viewGroup, iVar.C);
            } else if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        return null;
                    }
                    return new b(i.this.f15150b);
                }
                return new j(i.this.f15155g, viewGroup);
            } else {
                return new k(i.this.f15155g, viewGroup);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: g */
        public void onViewRecycled(l lVar) {
            if (lVar instanceof C0110i) {
                ((NavigationMenuItemView) lVar.itemView).w();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f15182a.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i2) {
            e eVar = this.f15182a.get(i2);
            if (eVar instanceof f) {
                return 2;
            }
            if (eVar instanceof d) {
                return 3;
            }
            if (eVar instanceof g) {
                return ((g) eVar).a().hasSubMenu() ? 1 : 0;
            }
            throw new RuntimeException("Unknown item type.");
        }

        public void i(@NonNull Bundle bundle) {
            MenuItemImpl a4;
            View actionView;
            ParcelableSparseArray parcelableSparseArray;
            MenuItemImpl a5;
            int i2 = bundle.getInt(f15176e, 0);
            if (i2 != 0) {
                this.f15184c = true;
                int size = this.f15182a.size();
                int i4 = 0;
                while (true) {
                    if (i4 >= size) {
                        break;
                    }
                    e eVar = this.f15182a.get(i4);
                    if ((eVar instanceof g) && (a5 = ((g) eVar).a()) != null && a5.getItemId() == i2) {
                        j(a5);
                        break;
                    }
                    i4++;
                }
                this.f15184c = false;
                h();
            }
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(f15177f);
            if (sparseParcelableArray != null) {
                int size2 = this.f15182a.size();
                for (int i5 = 0; i5 < size2; i5++) {
                    e eVar2 = this.f15182a.get(i5);
                    if ((eVar2 instanceof g) && (a4 = ((g) eVar2).a()) != null && (actionView = a4.getActionView()) != null && (parcelableSparseArray = (ParcelableSparseArray) sparseParcelableArray.get(a4.getItemId())) != null) {
                        actionView.restoreHierarchyState(parcelableSparseArray);
                    }
                }
            }
        }

        public void j(@NonNull MenuItemImpl menuItemImpl) {
            if (this.f15183b == menuItemImpl || !menuItemImpl.isCheckable()) {
                return;
            }
            MenuItemImpl menuItemImpl2 = this.f15183b;
            if (menuItemImpl2 != null) {
                menuItemImpl2.setChecked(false);
            }
            this.f15183b = menuItemImpl;
            menuItemImpl.setChecked(true);
        }

        public void k(boolean z3) {
            this.f15184c = z3;
        }

        public void update() {
            h();
            notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavigationMenuPresenter.java */
    /* loaded from: classes2.dex */
    public static class d implements e {
        d() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavigationMenuPresenter.java */
    /* loaded from: classes2.dex */
    public interface e {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavigationMenuPresenter.java */
    /* loaded from: classes2.dex */
    public static class f implements e {

        /* renamed from: a  reason: collision with root package name */
        private final int f15186a;

        /* renamed from: b  reason: collision with root package name */
        private final int f15187b;

        public f(int i2, int i4) {
            this.f15186a = i2;
            this.f15187b = i4;
        }

        public int a() {
            return this.f15187b;
        }

        public int b() {
            return this.f15186a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavigationMenuPresenter.java */
    /* loaded from: classes2.dex */
    public static class g implements e {

        /* renamed from: a  reason: collision with root package name */
        private final MenuItemImpl f15188a;

        /* renamed from: b  reason: collision with root package name */
        boolean f15189b;

        g(MenuItemImpl menuItemImpl) {
            this.f15188a = menuItemImpl;
        }

        public MenuItemImpl a() {
            return this.f15188a;
        }
    }

    /* compiled from: NavigationMenuPresenter.java */
    /* loaded from: classes2.dex */
    private class h extends RecyclerViewAccessibilityDelegate {
        h(@NonNull RecyclerView recyclerView) {
            super(recyclerView);
        }

        @Override // androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(i.this.f15154f.d(), 0, false));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavigationMenuPresenter.java */
    /* renamed from: com.google.android.material.internal.i$i  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0110i extends l {
        public C0110i(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup, View.OnClickListener onClickListener) {
            super(layoutInflater.inflate(R.layout.design_navigation_item, viewGroup, false));
            this.itemView.setOnClickListener(onClickListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavigationMenuPresenter.java */
    /* loaded from: classes2.dex */
    public static class j extends l {
        public j(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(R.layout.design_navigation_item_separator, viewGroup, false));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavigationMenuPresenter.java */
    /* loaded from: classes2.dex */
    public static class k extends l {
        public k(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(R.layout.design_navigation_item_subheader, viewGroup, false));
        }
    }

    /* compiled from: NavigationMenuPresenter.java */
    /* loaded from: classes2.dex */
    private static abstract class l extends RecyclerView.ViewHolder {
        public l(View view) {
            super(view);
        }
    }

    private void P() {
        int i2 = (this.f15150b.getChildCount() == 0 && this.f15172x) ? this.f15174z : 0;
        NavigationMenuView navigationMenuView = this.f15149a;
        navigationMenuView.setPadding(0, i2, 0, navigationMenuView.getPaddingBottom());
    }

    public void A(@Nullable RippleDrawable rippleDrawable) {
        this.f15162n = rippleDrawable;
        updateMenuView(false);
    }

    public void B(int i2) {
        this.f15163o = i2;
        updateMenuView(false);
    }

    public void C(int i2) {
        this.f15165q = i2;
        updateMenuView(false);
    }

    public void D(@Dimension int i2) {
        if (this.f15166r != i2) {
            this.f15166r = i2;
            this.f15171w = true;
            updateMenuView(false);
        }
    }

    public void E(@Nullable ColorStateList colorStateList) {
        this.f15160l = colorStateList;
        updateMenuView(false);
    }

    public void F(int i2) {
        this.f15173y = i2;
        updateMenuView(false);
    }

    public void G(@StyleRes int i2) {
        this.f15158j = i2;
        updateMenuView(false);
    }

    public void H(@Nullable ColorStateList colorStateList) {
        this.f15159k = colorStateList;
        updateMenuView(false);
    }

    public void I(@Px int i2) {
        this.f15164p = i2;
        updateMenuView(false);
    }

    public void J(int i2) {
        this.B = i2;
        NavigationMenuView navigationMenuView = this.f15149a;
        if (navigationMenuView != null) {
            navigationMenuView.setOverScrollMode(i2);
        }
    }

    public void K(@Nullable ColorStateList colorStateList) {
        this.f15157i = colorStateList;
        updateMenuView(false);
    }

    public void L(@Px int i2) {
        this.f15170v = i2;
        updateMenuView(false);
    }

    public void M(@Px int i2) {
        this.f15169u = i2;
        updateMenuView(false);
    }

    public void N(@StyleRes int i2) {
        this.f15156h = i2;
        updateMenuView(false);
    }

    public void O(boolean z3) {
        c cVar = this.f15154f;
        if (cVar != null) {
            cVar.k(z3);
        }
    }

    public void b(@NonNull View view) {
        this.f15150b.addView(view);
        NavigationMenuView navigationMenuView = this.f15149a;
        navigationMenuView.setPadding(0, 0, 0, navigationMenuView.getPaddingBottom());
    }

    public void c(@NonNull WindowInsetsCompat windowInsetsCompat) {
        int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
        if (this.f15174z != systemWindowInsetTop) {
            this.f15174z = systemWindowInsetTop;
            P();
        }
        NavigationMenuView navigationMenuView = this.f15149a;
        navigationMenuView.setPadding(0, navigationMenuView.getPaddingTop(), 0, windowInsetsCompat.getSystemWindowInsetBottom());
        ViewCompat.dispatchApplyWindowInsets(this.f15150b, windowInsetsCompat);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Nullable
    public MenuItemImpl d() {
        return this.f15154f.c();
    }

    @Px
    public int e() {
        return this.f15168t;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Px
    public int f() {
        return this.f15167s;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean flagActionItems() {
        return false;
    }

    public int g() {
        return this.f15150b.getChildCount();
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public int getId() {
        return this.f15153e;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public MenuView getMenuView(ViewGroup viewGroup) {
        if (this.f15149a == null) {
            NavigationMenuView navigationMenuView = (NavigationMenuView) this.f15155g.inflate(R.layout.design_navigation_menu, viewGroup, false);
            this.f15149a = navigationMenuView;
            navigationMenuView.setAccessibilityDelegateCompat(new h(this.f15149a));
            if (this.f15154f == null) {
                this.f15154f = new c();
            }
            int i2 = this.B;
            if (i2 != -1) {
                this.f15149a.setOverScrollMode(i2);
            }
            this.f15150b = (LinearLayout) this.f15155g.inflate(R.layout.design_navigation_item_header, (ViewGroup) this.f15149a, false);
            this.f15149a.setAdapter(this.f15154f);
        }
        return this.f15149a;
    }

    public View h(int i2) {
        return this.f15150b.getChildAt(i2);
    }

    @Nullable
    public Drawable i() {
        return this.f15161m;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void initForMenu(@NonNull Context context, @NonNull MenuBuilder menuBuilder) {
        this.f15155g = LayoutInflater.from(context);
        this.f15152d = menuBuilder;
        this.A = context.getResources().getDimensionPixelOffset(R.dimen.design_navigation_separator_vertical_padding);
    }

    public int j() {
        return this.f15163o;
    }

    public int k() {
        return this.f15165q;
    }

    public int l() {
        return this.f15173y;
    }

    @Nullable
    public ColorStateList m() {
        return this.f15159k;
    }

    @Nullable
    public ColorStateList n() {
        return this.f15160l;
    }

    @Px
    public int o() {
        return this.f15164p;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z3) {
        MenuPresenter.Callback callback = this.f15151c;
        if (callback != null) {
            callback.onCloseMenu(menuBuilder, z3);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
            if (sparseParcelableArray != null) {
                this.f15149a.restoreHierarchyState(sparseParcelableArray);
            }
            Bundle bundle2 = bundle.getBundle(F);
            if (bundle2 != null) {
                this.f15154f.i(bundle2);
            }
            SparseArray sparseParcelableArray2 = bundle.getSparseParcelableArray(G);
            if (sparseParcelableArray2 != null) {
                this.f15150b.restoreHierarchyState(sparseParcelableArray2);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    @NonNull
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        if (this.f15149a != null) {
            SparseArray<Parcelable> sparseArray = new SparseArray<>();
            this.f15149a.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        }
        c cVar = this.f15154f;
        if (cVar != null) {
            bundle.putBundle(F, cVar.b());
        }
        if (this.f15150b != null) {
            SparseArray<? extends Parcelable> sparseArray2 = new SparseArray<>();
            this.f15150b.saveHierarchyState(sparseArray2);
            bundle.putSparseParcelableArray(G, sparseArray2);
        }
        return bundle;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        return false;
    }

    @Px
    public int p() {
        return this.f15170v;
    }

    @Px
    public int q() {
        return this.f15169u;
    }

    public View r(@LayoutRes int i2) {
        View inflate = this.f15155g.inflate(i2, (ViewGroup) this.f15150b, false);
        b(inflate);
        return inflate;
    }

    public boolean s() {
        return this.f15172x;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void setCallback(MenuPresenter.Callback callback) {
        this.f15151c = callback;
    }

    public void t(@NonNull View view) {
        this.f15150b.removeView(view);
        if (this.f15150b.getChildCount() == 0) {
            NavigationMenuView navigationMenuView = this.f15149a;
            navigationMenuView.setPadding(0, this.f15174z, 0, navigationMenuView.getPaddingBottom());
        }
    }

    public void u(boolean z3) {
        if (this.f15172x != z3) {
            this.f15172x = z3;
            P();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void updateMenuView(boolean z3) {
        c cVar = this.f15154f;
        if (cVar != null) {
            cVar.update();
        }
    }

    public void v(@NonNull MenuItemImpl menuItemImpl) {
        this.f15154f.j(menuItemImpl);
    }

    public void w(@Px int i2) {
        this.f15168t = i2;
        updateMenuView(false);
    }

    public void x(@Px int i2) {
        this.f15167s = i2;
        updateMenuView(false);
    }

    public void y(int i2) {
        this.f15153e = i2;
    }

    public void z(@Nullable Drawable drawable) {
        this.f15161m = drawable;
        updateMenuView(false);
    }
}
