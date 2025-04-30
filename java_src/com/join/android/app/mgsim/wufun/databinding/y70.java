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
/* compiled from: PapayHistoryItemLayoutBinding.java */
/* loaded from: classes3.dex */
public final class y70 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26846a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26847b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f26848c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26849d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26850e;

    private y70(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f26846a = linearLayout;
        this.f26847b = textView;
        this.f26848c = textView2;
        this.f26849d = textView3;
        this.f26850e = textView4;
    }

    @NonNull
    public static y70 a(@NonNull View view) {
        int i2 = R.id.payNumber;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.payNumber);
        if (textView != null) {
            i2 = R.id.paySuccess;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.paySuccess);
            if (textView2 != null) {
                i2 = R.id.payTime;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.payTime);
                if (textView3 != null) {
                    i2 = R.id.payType;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.payType);
                    if (textView4 != null) {
                        return new y70((LinearLayout) view, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static y70 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static y70 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.papay_history_item_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26846a;
    }
}
