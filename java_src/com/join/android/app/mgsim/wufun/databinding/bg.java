package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: FragmentClassifyItemBinding.java */
/* loaded from: classes3.dex */
public final class bg implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f18525a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f18526b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f18527c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f18528d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f18529e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f18530f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f18531g;

    private bg(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f18525a = relativeLayout;
        this.f18526b = textView;
        this.f18527c = textView2;
        this.f18528d = linearLayout;
        this.f18529e = simpleDraweeView;
        this.f18530f = textView3;
        this.f18531g = textView4;
    }

    @NonNull
    public static bg a(@NonNull View view) {
        int i2 = R.id.desc;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.desc);
        if (textView != null) {
            i2 = R.id.name;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
            if (textView2 != null) {
                i2 = R.id.nameParent;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.nameParent);
                if (linearLayout != null) {
                    i2 = R.id.onlin_icon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.onlin_icon);
                    if (simpleDraweeView != null) {
                        i2 = R.id.onlin_number;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.onlin_number);
                        if (textView3 != null) {
                            i2 = R.id.onlin_number_tip;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.onlin_number_tip);
                            if (textView4 != null) {
                                return new bg((RelativeLayout) view, textView, textView2, linearLayout, simpleDraweeView, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static bg c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static bg d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_classify_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f18525a;
    }
}
