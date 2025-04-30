package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ViewActivityTabViewTwoBinding.java */
/* loaded from: classes3.dex */
public final class sd0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24817a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f24818b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f24819c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f24820d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f24821e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f24822f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f24823g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f24824h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f24825i;

    private sd0(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f24817a = linearLayout;
        this.f24818b = imageView;
        this.f24819c = imageView2;
        this.f24820d = linearLayout2;
        this.f24821e = linearLayout3;
        this.f24822f = textView;
        this.f24823g = textView2;
        this.f24824h = textView3;
        this.f24825i = textView4;
    }

    @NonNull
    public static sd0 a(@NonNull View view) {
        int i2 = R.id.iv_icon_2;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_icon_2);
        if (imageView != null) {
            i2 = R.id.iv_icon_3;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_icon_3);
            if (imageView2 != null) {
                i2 = R.id.ll_tab_2;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_tab_2);
                if (linearLayout != null) {
                    i2 = R.id.ll_tab_3;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_tab_3);
                    if (linearLayout2 != null) {
                        i2 = R.id.tv_desc_2;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_desc_2);
                        if (textView != null) {
                            i2 = R.id.tv_desc_3;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_desc_3);
                            if (textView2 != null) {
                                i2 = R.id.tv_title_2;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title_2);
                                if (textView3 != null) {
                                    i2 = R.id.tv_title_3;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title_3);
                                    if (textView4 != null) {
                                        return new sd0((LinearLayout) view, imageView, imageView2, linearLayout, linearLayout2, textView, textView2, textView3, textView4);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static sd0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static sd0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.view_activity_tab_view_two, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24817a;
    }
}
