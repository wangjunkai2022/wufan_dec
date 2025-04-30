package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: LayoutSimulatorChangeGameItemBinding.java */
/* loaded from: classes3.dex */
public final class ku implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f21898a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f21899b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f21900c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21901d;

    private ku(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView) {
        this.f21898a = constraintLayout;
        this.f21899b = constraintLayout2;
        this.f21900c = simpleDraweeView;
        this.f21901d = textView;
    }

    @NonNull
    public static ku a(@NonNull View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i2 = R.id.ivGamePic;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.ivGamePic);
        if (simpleDraweeView != null) {
            i2 = R.id.tvGameName;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvGameName);
            if (textView != null) {
                return new ku(constraintLayout, constraintLayout, simpleDraweeView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ku c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ku d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_simulator_change_game_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f21898a;
    }
}
