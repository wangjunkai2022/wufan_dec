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
/* compiled from: InstallButtonNormalLayoutBinding.java */
/* loaded from: classes3.dex */
public final class yo implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f27003a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f27004b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f27005c;

    private yo(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f27003a = linearLayout;
        this.f27004b = textView;
        this.f27005c = textView2;
    }

    @NonNull
    public static yo a(@NonNull View view) {
        int i2 = R.id.instalButtomButn;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.instalButtomButn);
        if (textView != null) {
            i2 = R.id.moneyText;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.moneyText);
            if (textView2 != null) {
                return new yo((LinearLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static yo c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static yo d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.install_button_normal_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f27003a;
    }
}
