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
/* compiled from: LiveIncomListItemBinding.java */
/* loaded from: classes3.dex */
public final class qv implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24075a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f24076b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f24077c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f24078d;

    private qv(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f24075a = linearLayout;
        this.f24076b = textView;
        this.f24077c = textView2;
        this.f24078d = textView3;
    }

    @NonNull
    public static qv a(@NonNull View view) {
        int i2 = R.id.content;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.content);
        if (textView != null) {
            i2 = R.id.result;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.result);
            if (textView2 != null) {
                i2 = R.id.time;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.time);
                if (textView3 != null) {
                    return new qv((LinearLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static qv c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static qv d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.live_incom_list_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24075a;
    }
}
