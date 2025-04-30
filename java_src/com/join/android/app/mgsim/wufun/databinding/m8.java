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
import com.join.android.app.mgsim.wufun.R;
/* compiled from: CommunityPostitemBinding.java */
/* loaded from: classes3.dex */
public final class m8 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22389a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f22390b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f22391c;

    private m8(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView) {
        this.f22389a = linearLayout;
        this.f22390b = linearLayout2;
        this.f22391c = textView;
    }

    @NonNull
    public static m8 a(@NonNull View view) {
        int i2 = R.id.ll_post;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_post);
        if (linearLayout != null) {
            i2 = R.id.tv_post;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_post);
            if (textView != null) {
                return new m8((LinearLayout) view, linearLayout, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static m8 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static m8 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.community_postitem, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22389a;
    }
}
