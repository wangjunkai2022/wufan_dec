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
/* compiled from: NowWufunTopicBinding.java */
/* loaded from: classes3.dex */
public final class p60 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23483a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f23484b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f23485c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f23486d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f23487e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f23488f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f23489g;

    private p60(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f23483a = linearLayout;
        this.f23484b = textView;
        this.f23485c = textView2;
        this.f23486d = simpleDraweeView;
        this.f23487e = linearLayout2;
        this.f23488f = textView3;
        this.f23489g = textView4;
    }

    @NonNull
    public static p60 a(@NonNull View view) {
        int i2 = R.id.appDescribe;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appDescribe);
        if (textView != null) {
            i2 = R.id.appName;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.appName);
            if (textView2 != null) {
                i2 = R.id.image;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.image);
                if (simpleDraweeView != null) {
                    i2 = R.id.main;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.main);
                    if (linearLayout != null) {
                        i2 = R.id.tip;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tip);
                        if (textView3 != null) {
                            i2 = R.id.titleText;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.titleText);
                            if (textView4 != null) {
                                return new p60((LinearLayout) view, textView, textView2, simpleDraweeView, linearLayout, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static p60 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static p60 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.now_wufun_topic, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23483a;
    }
}
