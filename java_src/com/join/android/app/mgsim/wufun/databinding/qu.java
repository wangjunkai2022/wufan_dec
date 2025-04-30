package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: LayoutSimulatorTagGameItemBinding.java */
/* loaded from: classes3.dex */
public final class qu implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24072a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f24073b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f24074c;

    private qu(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView) {
        this.f24072a = linearLayout;
        this.f24073b = simpleDraweeView;
        this.f24074c = textView;
    }

    @NonNull
    public static qu a(@NonNull View view) {
        int i2 = R.id.ivGameIcon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.ivGameIcon);
        if (simpleDraweeView != null) {
            i2 = R.id.tvGameName;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvGameName);
            if (textView != null) {
                return new qu((LinearLayout) view, simpleDraweeView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static qu c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static qu d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_simulator_tag_game_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24072a;
    }
}
