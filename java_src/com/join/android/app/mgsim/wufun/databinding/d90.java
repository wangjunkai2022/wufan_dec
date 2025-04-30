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
/* compiled from: PopuwinLocalarchive3Binding.java */
/* loaded from: classes3.dex */
public final class d90 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19266a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f19267b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f19268c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f19269d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f19270e;

    private d90(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f19266a = linearLayout;
        this.f19267b = textView;
        this.f19268c = textView2;
        this.f19269d = textView3;
        this.f19270e = textView4;
    }

    @NonNull
    public static d90 a(@NonNull View view) {
        int i2 = R.id.delectarchive;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.delectarchive);
        if (textView != null) {
            i2 = R.id.good;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.good);
            if (textView2 != null) {
                i2 = R.id.introduce;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.introduce);
                if (textView3 != null) {
                    i2 = R.id.plagiarize;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.plagiarize);
                    if (textView4 != null) {
                        return new d90((LinearLayout) view, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static d90 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static d90 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.popuwin_localarchive3, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19266a;
    }
}
