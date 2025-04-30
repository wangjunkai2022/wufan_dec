package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: PaiweiRuleDialogBinding.java */
/* loaded from: classes3.dex */
public final class r60 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24251a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f24252b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f24253c;

    private r60(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f24251a = linearLayout;
        this.f24252b = imageView;
        this.f24253c = textView;
    }

    @NonNull
    public static r60 a(@NonNull View view) {
        int i2 = R.id.paiwei_cancel_iv;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.paiwei_cancel_iv);
        if (imageView != null) {
            i2 = R.id.paiwei_rule_tv;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.paiwei_rule_tv);
            if (textView != null) {
                return new r60((LinearLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static r60 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static r60 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.paiwei_rule_dialog, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24251a;
    }
}
