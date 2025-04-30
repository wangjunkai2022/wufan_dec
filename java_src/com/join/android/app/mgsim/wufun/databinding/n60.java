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
/* compiled from: NowWufunTodaynewTitleBinding.java */
/* loaded from: classes3.dex */
public final class n60 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22777a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f22778b;

    private n60(@NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.f22777a = linearLayout;
        this.f22778b = textView;
    }

    @NonNull
    public static n60 a(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.titleText);
        if (textView != null) {
            return new n60((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.titleText)));
    }

    @NonNull
    public static n60 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static n60 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.now_wufun_todaynew_title, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22777a;
    }
}
