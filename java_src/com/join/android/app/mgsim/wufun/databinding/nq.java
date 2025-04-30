package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemGamefactoryListTitleBinding.java */
/* loaded from: classes3.dex */
public final class nq implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f22956a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f22957b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f22958c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f22959d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f22960e;

    private nq(@NonNull FrameLayout frameLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f22956a = frameLayout;
        this.f22957b = simpleDraweeView;
        this.f22958c = linearLayout;
        this.f22959d = textView;
        this.f22960e = textView2;
    }

    @NonNull
    public static nq a(@NonNull View view) {
        int i2 = R.id.gameLogo;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.gameLogo);
        if (simpleDraweeView != null) {
            i2 = R.id.ll_content;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_content);
            if (linearLayout != null) {
                i2 = R.id.tv_desc;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_desc);
                if (textView != null) {
                    i2 = R.id.tv_name;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
                    if (textView2 != null) {
                        return new nq((FrameLayout) view, simpleDraweeView, linearLayout, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static nq c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static nq d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_gamefactory_list_title, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f22956a;
    }
}
