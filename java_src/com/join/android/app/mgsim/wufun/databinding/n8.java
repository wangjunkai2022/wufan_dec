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
/* compiled from: CommunityPraiseBinding.java */
/* loaded from: classes3.dex */
public final class n8 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22785a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f22786b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f22787c;

    private n8(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2) {
        this.f22785a = linearLayout;
        this.f22786b = textView;
        this.f22787c = linearLayout2;
    }

    @NonNull
    public static n8 a(@NonNull View view) {
        int i2 = R.id.redTips;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.redTips);
        if (textView != null) {
            i2 = R.id.thumbslayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.thumbslayout);
            if (linearLayout != null) {
                return new n8((LinearLayout) view, textView, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static n8 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static n8 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.community_praise, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22785a;
    }
}
