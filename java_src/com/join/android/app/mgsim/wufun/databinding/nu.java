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
/* compiled from: LayoutSimulatorGridGameBinding.java */
/* loaded from: classes3.dex */
public final class nu implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22990a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f22991b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f22992c;

    private nu(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView) {
        this.f22990a = linearLayout;
        this.f22991b = simpleDraweeView;
        this.f22992c = textView;
    }

    @NonNull
    public static nu a(@NonNull View view) {
        int i2 = R.id.gameIcon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.gameIcon);
        if (simpleDraweeView != null) {
            i2 = R.id.gameName;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.gameName);
            if (textView != null) {
                return new nu((LinearLayout) view, simpleDraweeView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static nu c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static nu d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_simulator_grid_game, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22990a;
    }
}
