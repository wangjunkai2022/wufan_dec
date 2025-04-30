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
/* compiled from: DialogPspItemBinding.java */
/* loaded from: classes3.dex */
public final class zc implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f27201a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f27202b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f27203c;

    private zc(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f27201a = linearLayout;
        this.f27202b = textView;
        this.f27203c = textView2;
    }

    @NonNull
    public static zc a(@NonNull View view) {
        int i2 = R.id.count;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.count);
        if (textView != null) {
            i2 = R.id.name;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
            if (textView2 != null) {
                return new zc((LinearLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static zc c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static zc d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_psp_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f27201a;
    }
}
