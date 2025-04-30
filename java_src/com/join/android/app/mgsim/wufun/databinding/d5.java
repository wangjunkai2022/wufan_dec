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
/* compiled from: ChioceItemDayGameCover2Binding.java */
/* loaded from: classes3.dex */
public final class d5 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final SimpleDraweeView f19216a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f19217b;

    private d5(@NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2) {
        this.f19216a = simpleDraweeView;
        this.f19217b = simpleDraweeView2;
    }

    @NonNull
    public static d5 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) view;
        return new d5(simpleDraweeView, simpleDraweeView);
    }

    @NonNull
    public static d5 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static d5 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.chioce_item_day_game_cover2, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public SimpleDraweeView getRoot() {
        return this.f19216a;
    }
}
