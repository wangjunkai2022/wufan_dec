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
import com.join.mgps.customview.MyGridView;
/* compiled from: MgGamedetailRecommendBinding.java */
/* loaded from: classes3.dex */
public final class p10 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23417a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f23418b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f23419c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f23420d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final MyGridView f23421e;

    private p10(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull View view, @NonNull MyGridView myGridView) {
        this.f23417a = linearLayout;
        this.f23418b = textView;
        this.f23419c = linearLayout2;
        this.f23420d = view;
        this.f23421e = myGridView;
    }

    @NonNull
    public static p10 a(@NonNull View view) {
        int i2 = R.id.giftsTitle;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.giftsTitle);
        if (textView != null) {
            i2 = R.id.layoutContent;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layoutContent);
            if (linearLayout != null) {
                i2 = R.id.line_h;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.line_h);
                if (findChildViewById != null) {
                    i2 = R.id.recomListView;
                    MyGridView myGridView = (MyGridView) ViewBindings.findChildViewById(view, R.id.recomListView);
                    if (myGridView != null) {
                        return new p10((LinearLayout) view, textView, linearLayout, findChildViewById, myGridView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static p10 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static p10 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_gamedetail_recommend, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23417a;
    }
}
