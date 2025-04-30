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
/* compiled from: UpdateRecordLayoutBinding.java */
/* loaded from: classes3.dex */
public final class cd0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18870a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f18871b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f18872c;

    private cd0(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView) {
        this.f18870a = linearLayout;
        this.f18871b = linearLayout2;
        this.f18872c = textView;
    }

    @NonNull
    public static cd0 a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.webView);
        if (textView != null) {
            return new cd0(linearLayout, linearLayout, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.webView)));
    }

    @NonNull
    public static cd0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static cd0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.update_record_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18870a;
    }
}
