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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GameDetailFootBinding.java */
/* loaded from: classes3.dex */
public final class mi implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22539a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f22540b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f22541c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f22542d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f22543e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f22544f;

    private mi(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f22539a = linearLayout;
        this.f22540b = textView;
        this.f22541c = linearLayout2;
        this.f22542d = simpleDraweeView;
        this.f22543e = textView2;
        this.f22544f = textView3;
    }

    @NonNull
    public static mi a(@NonNull View view) {
        int i2 = R.id.bottom;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.bottom);
        if (textView != null) {
            i2 = R.id.ll_sub;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_sub);
            if (linearLayout != null) {
                i2 = R.id.smv_sub;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.smv_sub);
                if (simpleDraweeView != null) {
                    i2 = R.id.tv_sub_sub;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_sub_sub);
                    if (textView2 != null) {
                        i2 = R.id.tv_sub_title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_sub_title);
                        if (textView3 != null) {
                            return new mi((LinearLayout) view, textView, linearLayout, simpleDraweeView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static mi c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static mi d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.game_detail_foot, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22539a;
    }
}
