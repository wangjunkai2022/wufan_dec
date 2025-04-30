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
/* compiled from: MyVoucherGameHeaderBinding.java */
/* loaded from: classes3.dex */
public final class y40 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26788a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26789b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f26790c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f26791d;

    private y40(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2) {
        this.f26788a = linearLayout;
        this.f26789b = textView;
        this.f26790c = textView2;
        this.f26791d = linearLayout2;
    }

    @NonNull
    public static y40 a(@NonNull View view) {
        int i2 = R.id.gameVocherDetail;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.gameVocherDetail);
        if (textView != null) {
            i2 = R.id.gamrVoucherNumber;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.gamrVoucherNumber);
            if (textView2 != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                return new y40(linearLayout, textView, textView2, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static y40 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static y40 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.my_voucher_game_header, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26788a;
    }
}
