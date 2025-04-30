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
import com.join.mgps.customview.ExpandLayout;
/* compiled from: GamedetailItemEditRecommendBinding.java */
/* loaded from: classes3.dex */
public final class yj implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26945a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f26946b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ExpandLayout f26947c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f26948d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f26949e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f26950f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f26951g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f26952h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f26953i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f26954j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f26955k;

    private yj(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ExpandLayout expandLayout, @NonNull ImageView imageView, @NonNull View view, @NonNull View view2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f26945a = linearLayout;
        this.f26946b = linearLayout2;
        this.f26947c = expandLayout;
        this.f26948d = imageView;
        this.f26949e = view;
        this.f26950f = view2;
        this.f26951g = linearLayout3;
        this.f26952h = linearLayout4;
        this.f26953i = textView;
        this.f26954j = textView2;
        this.f26955k = textView3;
    }

    @NonNull
    public static yj a(@NonNull View view) {
        int i2 = R.id.backLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.backLayout);
        if (linearLayout != null) {
            i2 = R.id.el_view;
            ExpandLayout expandLayout = (ExpandLayout) ViewBindings.findChildViewById(view, R.id.el_view);
            if (expandLayout != null) {
                i2 = R.id.imageView5;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView5);
                if (imageView != null) {
                    i2 = R.id.layoutTop;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.layoutTop);
                    if (findChildViewById != null) {
                        i2 = R.id.line_h;
                        View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.line_h);
                        if (findChildViewById2 != null) {
                            i2 = R.id.ll_container;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_container);
                            if (linearLayout2 != null) {
                                i2 = R.id.look_other;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.look_other);
                                if (linearLayout3 != null) {
                                    i2 = R.id.moreText;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.moreText);
                                    if (textView != null) {
                                        i2 = R.id.titleText;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.titleText);
                                        if (textView2 != null) {
                                            i2 = R.id.tv_view;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_view);
                                            if (textView3 != null) {
                                                return new yj((LinearLayout) view, linearLayout, expandLayout, imageView, findChildViewById, findChildViewById2, linearLayout2, linearLayout3, textView, textView2, textView3);
                                            }
                                        }
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
    public static yj c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static yj d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetail_item_edit_recommend, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26945a;
    }
}
