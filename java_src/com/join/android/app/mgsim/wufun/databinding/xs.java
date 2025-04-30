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
/* compiled from: ItemUsercenterBinding.java */
/* loaded from: classes3.dex */
public final class xs implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26666a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f26667b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f26668c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f26669d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26670e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f26671f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f26672g;

    private xs(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull SimpleDraweeView simpleDraweeView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f26666a = linearLayout;
        this.f26667b = view;
        this.f26668c = simpleDraweeView;
        this.f26669d = linearLayout2;
        this.f26670e = textView;
        this.f26671f = textView2;
        this.f26672g = textView3;
    }

    @NonNull
    public static xs a(@NonNull View view) {
        int i2 = R.id.emptyDivider;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.emptyDivider);
        if (findChildViewById != null) {
            i2 = R.id.iv_module_icon;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.iv_module_icon);
            if (simpleDraweeView != null) {
                i2 = R.id.ll_content;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_content);
                if (linearLayout != null) {
                    i2 = R.id.messageBadge;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.messageBadge);
                    if (textView != null) {
                        i2 = R.id.tv_module_doings;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_module_doings);
                        if (textView2 != null) {
                            i2 = R.id.tv_module_name;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_module_name);
                            if (textView3 != null) {
                                return new xs((LinearLayout) view, findChildViewById, simpleDraweeView, linearLayout, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static xs c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static xs d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_usercenter, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26666a;
    }
}
