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
/* compiled from: ItemStandaloneTitleViewBinding.java */
/* loaded from: classes3.dex */
public final class rs implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24511a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f24512b;

    private rs(@NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.f24511a = linearLayout;
        this.f24512b = textView;
    }

    @NonNull
    public static rs a(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.titleTx);
        if (textView != null) {
            return new rs((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.titleTx)));
    }

    @NonNull
    public static rs c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static rs d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_standalone_title_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24511a;
    }
}
