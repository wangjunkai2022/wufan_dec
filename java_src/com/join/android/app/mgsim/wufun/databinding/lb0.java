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
/* compiled from: SharesdkOnkeyshareTopBinding.java */
/* loaded from: classes3.dex */
public final class lb0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22093a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f22094b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f22095c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f22096d;

    private lb0(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2) {
        this.f22093a = linearLayout;
        this.f22094b = textView;
        this.f22095c = textView2;
        this.f22096d = linearLayout2;
    }

    @NonNull
    public static lb0 a(@NonNull View view) {
        int i2 = R.id.button;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.button);
        if (textView != null) {
            i2 = R.id.message;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.message);
            if (textView2 != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                return new lb0(linearLayout, textView, textView2, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static lb0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static lb0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.sharesdk_onkeyshare_top, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22093a;
    }
}
