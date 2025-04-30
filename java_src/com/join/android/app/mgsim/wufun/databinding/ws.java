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
/* compiled from: ItemUserTagAutoSearchBinding.java */
/* loaded from: classes3.dex */
public final class ws implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26248a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26249b;

    private ws(@NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.f26248a = linearLayout;
        this.f26249b = textView;
    }

    @NonNull
    public static ws a(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_tag_text);
        if (textView != null) {
            return new ws((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.tv_tag_text)));
    }

    @NonNull
    public static ws c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ws d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_user_tag_auto_search, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26248a;
    }
}
