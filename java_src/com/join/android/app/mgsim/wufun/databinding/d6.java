package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.SquareLayout;
/* compiled from: ChooseGridItemBinding.java */
/* loaded from: classes3.dex */
public final class d6 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final SquareLayout f19227a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f19228b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f19229c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SquareLayout f19230d;

    private d6(@NonNull SquareLayout squareLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView, @NonNull SquareLayout squareLayout2) {
        this.f19227a = squareLayout;
        this.f19228b = simpleDraweeView;
        this.f19229c = imageView;
        this.f19230d = squareLayout2;
    }

    @NonNull
    public static d6 a(@NonNull View view) {
        int i2 = R.id.itemImage;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.itemImage);
        if (simpleDraweeView != null) {
            i2 = R.id.itemImageChoice;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.itemImageChoice);
            if (imageView != null) {
                SquareLayout squareLayout = (SquareLayout) view;
                return new d6(squareLayout, simpleDraweeView, imageView, squareLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static d6 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static d6 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.choose_grid_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public SquareLayout getRoot() {
        return this.f19227a;
    }
}
