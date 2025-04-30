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
/* compiled from: MgpapaFootLayoutBinding.java */
/* loaded from: classes3.dex */
public final class m20 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22320a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f22321b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f22322c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f22323d;

    private m20(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f22320a = linearLayout;
        this.f22321b = textView;
        this.f22322c = textView2;
        this.f22323d = textView3;
    }

    @NonNull
    public static m20 a(@NonNull View view) {
        int i2 = R.id.textView;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textView);
        if (textView != null) {
            i2 = R.id.textView2;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView2);
            if (textView2 != null) {
                i2 = R.id.textView3;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView3);
                if (textView3 != null) {
                    return new m20((LinearLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static m20 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static m20 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mgpapa_foot_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22320a;
    }
}
