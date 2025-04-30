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
/* compiled from: CodesBoxItemBinding.java */
/* loaded from: classes3.dex */
public final class g7 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20339a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f20340b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20341c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f20342d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f20343e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f20344f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f20345g;

    private g7(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f20339a = linearLayout;
        this.f20340b = simpleDraweeView;
        this.f20341c = textView;
        this.f20342d = textView2;
        this.f20343e = linearLayout2;
        this.f20344f = textView3;
        this.f20345g = textView4;
    }

    @NonNull
    public static g7 a(@NonNull View view) {
        int i2 = R.id.giftIcon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.giftIcon);
        if (simpleDraweeView != null) {
            i2 = R.id.giftNameTime;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.giftNameTime);
            if (textView != null) {
                i2 = R.id.giftNameTv;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.giftNameTv);
                if (textView2 != null) {
                    LinearLayout linearLayout = (LinearLayout) view;
                    i2 = R.id.saveCodeContent;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.saveCodeContent);
                    if (textView3 != null) {
                        i2 = R.id.saveCodeTv;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.saveCodeTv);
                        if (textView4 != null) {
                            return new g7(linearLayout, simpleDraweeView, textView, textView2, linearLayout, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static g7 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static g7 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.codes_box_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20339a;
    }
}
