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
/* compiled from: ChioceItemGameClassifyTypeBinding.java */
/* loaded from: classes3.dex */
public final class k5 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21686a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f21687b;

    private k5(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2) {
        this.f21686a = linearLayout;
        this.f21687b = linearLayout2;
    }

    @NonNull
    public static k5 a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.classifies);
        if (linearLayout != null) {
            return new k5((LinearLayout) view, linearLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.classifies)));
    }

    @NonNull
    public static k5 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static k5 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.chioce_item_game_classify_type, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21686a;
    }
}
