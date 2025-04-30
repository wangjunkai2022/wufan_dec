package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GamedetailItemSupplyAGapBinding.java */
/* loaded from: classes3.dex */
public final class vk implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25856a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f25857b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f25858c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f25859d;

    private vk(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4) {
        this.f25856a = linearLayout;
        this.f25857b = linearLayout2;
        this.f25858c = linearLayout3;
        this.f25859d = linearLayout4;
    }

    @NonNull
    public static vk a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i2 = R.id.linearLayout_bottom;
        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout_bottom);
        if (linearLayout2 != null) {
            i2 = R.id.linearLayout_top;
            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout_top);
            if (linearLayout3 != null) {
                return new vk(linearLayout, linearLayout, linearLayout2, linearLayout3);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static vk c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static vk d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetail_item_supply_a_gap, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25856a;
    }
}
