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
/* compiled from: GamedetailItemGamerecommendlistBinding.java */
/* loaded from: classes3.dex */
public final class ck implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18948a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f18949b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f18950c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f18951d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final MyGridView f18952e;

    private ck(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull View view, @NonNull MyGridView myGridView) {
        this.f18948a = linearLayout;
        this.f18949b = textView;
        this.f18950c = linearLayout2;
        this.f18951d = view;
        this.f18952e = myGridView;
    }

    @NonNull
    public static ck a(@NonNull View view) {
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
                        return new ck((LinearLayout) view, textView, linearLayout, findChildViewById, myGridView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ck c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ck d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetail_item_gamerecommendlist, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18948a;
    }
}
