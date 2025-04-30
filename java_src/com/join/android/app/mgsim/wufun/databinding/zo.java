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
/* compiled from: InstallButtonStrokeLayoutBinding.java */
/* loaded from: classes3.dex */
public final class zo implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f27303a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f27304b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f27305c;

    private zo(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f27303a = linearLayout;
        this.f27304b = textView;
        this.f27305c = textView2;
    }

    @NonNull
    public static zo a(@NonNull View view) {
        int i2 = R.id.instalButtomButn;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.instalButtomButn);
        if (textView != null) {
            i2 = R.id.moneyText;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.moneyText);
            if (textView2 != null) {
                return new zo((LinearLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static zo c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static zo d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.install_button_stroke_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f27303a;
    }
}
