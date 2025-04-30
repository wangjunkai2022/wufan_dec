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
/* compiled from: GamedetailItemDownAndDownBinding.java */
/* loaded from: classes3.dex */
public final class xj implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26604a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26605b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f26606c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f26607d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final MyGridView f26608e;

    private xj(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull View view, @NonNull MyGridView myGridView) {
        this.f26604a = linearLayout;
        this.f26605b = textView;
        this.f26606c = linearLayout2;
        this.f26607d = view;
        this.f26608e = myGridView;
    }

    @NonNull
    public static xj a(@NonNull View view) {
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
                        return new xj((LinearLayout) view, textView, linearLayout, findChildViewById, myGridView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static xj c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static xj d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetail_item_down_and_down, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26604a;
    }
}
