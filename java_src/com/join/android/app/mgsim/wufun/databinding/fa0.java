package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ScreenshortImgsListItemlayoutBinding.java */
/* loaded from: classes3.dex */
public final class fa0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20075a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f20076b;

    private fa0(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView) {
        this.f20075a = linearLayout;
        this.f20076b = simpleDraweeView;
    }

    @NonNull
    public static fa0 a(@NonNull View view) {
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.image);
        if (simpleDraweeView != null) {
            return new fa0((LinearLayout) view, simpleDraweeView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.image)));
    }

    @NonNull
    public static fa0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static fa0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.screenshort_imgs_list_itemlayout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20075a;
    }
}
