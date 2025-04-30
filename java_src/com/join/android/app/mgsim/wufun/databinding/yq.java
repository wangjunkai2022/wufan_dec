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
/* compiled from: ItemIntroductionProgressBinding.java */
/* loaded from: classes3.dex */
public final class yq implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f27012a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f27013b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f27014c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f27015d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f27016e;

    private yq(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f27012a = linearLayout;
        this.f27013b = linearLayout2;
        this.f27014c = textView;
        this.f27015d = textView2;
        this.f27016e = textView3;
    }

    @NonNull
    public static yq a(@NonNull View view) {
        int i2 = R.id.ll_root;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_root);
        if (linearLayout != null) {
            i2 = R.id.tv_time;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_time);
            if (textView != null) {
                i2 = R.id.tv_title;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                if (textView2 != null) {
                    i2 = R.id.tv_type;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_type);
                    if (textView3 != null) {
                        return new yq((LinearLayout) view, linearLayout, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static yq c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static yq d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_introduction_progress, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f27012a;
    }
}
