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
/* compiled from: DialogCopyViewBinding.java */
/* loaded from: classes3.dex */
public final class ya implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26864a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26865b;

    private ya(@NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.f26864a = linearLayout;
        this.f26865b = textView;
    }

    @NonNull
    public static ya a(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.copyTv);
        if (textView != null) {
            return new ya((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.copyTv)));
    }

    @NonNull
    public static ya c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ya d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_copy_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26864a;
    }
}
