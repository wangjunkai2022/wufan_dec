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
/* compiled from: ChioceItemRecommandTitleBinding.java */
/* loaded from: classes3.dex */
public final class q5 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23834a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final h5 f23835b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f23836c;

    private q5(@NonNull LinearLayout linearLayout, @NonNull h5 h5Var, @NonNull TextView textView) {
        this.f23834a = linearLayout;
        this.f23835b = h5Var;
        this.f23836c = textView;
    }

    @NonNull
    public static q5 a(@NonNull View view) {
        int i2 = R.id.divider;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.divider);
        if (findChildViewById != null) {
            h5 a4 = h5.a(findChildViewById);
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.title);
            if (textView != null) {
                return new q5((LinearLayout) view, a4, textView);
            }
            i2 = R.id.title;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static q5 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static q5 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.chioce_item_recommand_title, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23834a;
    }
}
