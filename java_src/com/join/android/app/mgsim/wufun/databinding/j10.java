package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgGamedetailGiftsBottomBinding.java */
/* loaded from: classes3.dex */
public final class j10 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21349a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f21350b;

    private j10(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout) {
        this.f21349a = relativeLayout;
        this.f21350b = linearLayout;
    }

    @NonNull
    public static j10 a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layoutBottom);
        if (linearLayout != null) {
            return new j10((RelativeLayout) view, linearLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.layoutBottom)));
    }

    @NonNull
    public static j10 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static j10 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_gamedetail_gifts_bottom, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21349a;
    }
}
