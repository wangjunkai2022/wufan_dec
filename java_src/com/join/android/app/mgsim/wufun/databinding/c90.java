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
/* compiled from: PopuwinLocalarchive2Binding.java */
/* loaded from: classes3.dex */
public final class c90 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18818a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f18819b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f18820c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f18821d;

    private c90(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f18818a = linearLayout;
        this.f18819b = textView;
        this.f18820c = textView2;
        this.f18821d = textView3;
    }

    @NonNull
    public static c90 a(@NonNull View view) {
        int i2 = R.id.good;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.good);
        if (textView != null) {
            i2 = R.id.introduce;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.introduce);
            if (textView2 != null) {
                i2 = R.id.plagiarize;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.plagiarize);
                if (textView3 != null) {
                    return new c90((LinearLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static c90 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static c90 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.popuwin_localarchive2, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18818a;
    }
}
