package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import java.util.Objects;
/* compiled from: ChioceItemRecommand2CoverBinding.java */
/* loaded from: classes3.dex */
public final class o5 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final SimpleDraweeView f23127a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f23128b;

    private o5(@NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2) {
        this.f23127a = simpleDraweeView;
        this.f23128b = simpleDraweeView2;
    }

    @NonNull
    public static o5 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) view;
        return new o5(simpleDraweeView, simpleDraweeView);
    }

    @NonNull
    public static o5 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static o5 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.chioce_item_recommand_2_cover, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public SimpleDraweeView getRoot() {
        return this.f23127a;
    }
}
