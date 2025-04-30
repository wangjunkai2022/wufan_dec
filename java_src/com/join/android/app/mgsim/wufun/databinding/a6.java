package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ChoiceTagLayoutBinding.java */
/* loaded from: classes3.dex */
public final class a6 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final HorizontalScrollView f18024a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f18025b;

    private a6(@NonNull HorizontalScrollView horizontalScrollView, @NonNull LinearLayout linearLayout) {
        this.f18024a = horizontalScrollView;
        this.f18025b = linearLayout;
    }

    @NonNull
    public static a6 a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tagLayout);
        if (linearLayout != null) {
            return new a6((HorizontalScrollView) view, linearLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.tagLayout)));
    }

    @NonNull
    public static a6 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static a6 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.choice_tag_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public HorizontalScrollView getRoot() {
        return this.f18024a;
    }
}
