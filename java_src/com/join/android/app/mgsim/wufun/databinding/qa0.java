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
/* compiled from: SearchHintHotItemBinding.java */
/* loaded from: classes3.dex */
public final class qa0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23923a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f23924b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f23925c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f23926d;

    private qa0(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f23923a = linearLayout;
        this.f23924b = textView;
        this.f23925c = textView2;
        this.f23926d = textView3;
    }

    @NonNull
    public static qa0 a(@NonNull View view) {
        int i2 = R.id.icon;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.icon);
        if (textView != null) {
            i2 = R.id.name;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
            if (textView2 != null) {
                i2 = R.id.rank;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.rank);
                if (textView3 != null) {
                    return new qa0((LinearLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static qa0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static qa0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.search_hint_hot_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23923a;
    }
}
