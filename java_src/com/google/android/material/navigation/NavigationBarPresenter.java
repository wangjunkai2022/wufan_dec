package com.google.android.material.navigation;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.SubMenuBuilder;
import com.google.android.material.internal.ParcelableSparseArray;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class NavigationBarPresenter implements MenuPresenter {

    /* renamed from: a  reason: collision with root package name */
    private MenuBuilder f15294a;

    /* renamed from: b  reason: collision with root package name */
    private NavigationBarMenuView f15295b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f15296c = false;

    /* renamed from: d  reason: collision with root package name */
    private int f15297d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        int f15298a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        ParcelableSparseArray f15299b;

        /* loaded from: classes2.dex */
        class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* renamed from: a */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* renamed from: b */
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        }

        SavedState() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i2) {
            parcel.writeInt(this.f15298a);
            parcel.writeParcelable(this.f15299b, 0);
        }

        SavedState(@NonNull Parcel parcel) {
            this.f15298a = parcel.readInt();
            this.f15299b = (ParcelableSparseArray) parcel.readParcelable(getClass().getClassLoader());
        }
    }

    public void a(int i2) {
        this.f15297d = i2;
    }

    public void b(@NonNull NavigationBarMenuView navigationBarMenuView) {
        this.f15295b = navigationBarMenuView;
    }

    public void c(boolean z3) {
        this.f15296c = z3;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean collapseItemActionView(@Nullable MenuBuilder menuBuilder, @Nullable MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean expandItemActionView(@Nullable MenuBuilder menuBuilder, @Nullable MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean flagActionItems() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public int getId() {
        return this.f15297d;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    @Nullable
    public MenuView getMenuView(@Nullable ViewGroup viewGroup) {
        return this.f15295b;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void initForMenu(@NonNull Context context, @NonNull MenuBuilder menuBuilder) {
        this.f15294a = menuBuilder;
        this.f15295b.initialize(menuBuilder);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onCloseMenu(@Nullable MenuBuilder menuBuilder, boolean z3) {
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onRestoreInstanceState(@NonNull Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.f15295b.p(savedState.f15298a);
            this.f15295b.o(com.google.android.material.badge.a.g(this.f15295b.getContext(), savedState.f15299b));
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    @NonNull
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState();
        savedState.f15298a = this.f15295b.getSelectedItemId();
        savedState.f15299b = com.google.android.material.badge.a.h(this.f15295b.getBadgeDrawables());
        return savedState;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean onSubMenuSelected(@Nullable SubMenuBuilder subMenuBuilder) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void setCallback(@Nullable MenuPresenter.Callback callback) {
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void updateMenuView(boolean z3) {
        if (this.f15296c) {
            return;
        }
        if (z3) {
            this.f15295b.c();
        } else {
            this.f15295b.q();
        }
    }
}
