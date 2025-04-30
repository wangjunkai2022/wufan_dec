package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.SquareLayout;
/* compiled from: ChooseIconItemBinding.java */
/* loaded from: classes3.dex */
public final class e6 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final SquareLayout f19597a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f19598b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SquareLayout f19599c;

    private e6(@NonNull SquareLayout squareLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SquareLayout squareLayout2) {
        this.f19597a = squareLayout;
        this.f19598b = simpleDraweeView;
        this.f19599c = squareLayout2;
    }

    @NonNull
    public static e6 a(@NonNull View view) {
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.itemImage);
        if (simpleDraweeView != null) {
            SquareLayout squareLayout = (SquareLayout) view;
            return new e6(squareLayout, simpleDraweeView, squareLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.itemImage)));
    }

    @NonNull
    public static e6 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static e6 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.choose_icon_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public SquareLayout getRoot() {
        return this.f19597a;
    }
}
