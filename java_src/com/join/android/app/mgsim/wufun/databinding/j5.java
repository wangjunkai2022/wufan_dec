package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.WrapContentGridView;
import java.util.Objects;
/* compiled from: ChioceItemGameClassifyContentBinding.java */
/* loaded from: classes3.dex */
public final class j5 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final WrapContentGridView f21380a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final WrapContentGridView f21381b;

    private j5(@NonNull WrapContentGridView wrapContentGridView, @NonNull WrapContentGridView wrapContentGridView2) {
        this.f21380a = wrapContentGridView;
        this.f21381b = wrapContentGridView2;
    }

    @NonNull
    public static j5 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        WrapContentGridView wrapContentGridView = (WrapContentGridView) view;
        return new j5(wrapContentGridView, wrapContentGridView);
    }

    @NonNull
    public static j5 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static j5 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.chioce_item_game_classify_content, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public WrapContentGridView getRoot() {
        return this.f21380a;
    }
}
