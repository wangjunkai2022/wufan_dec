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
/* compiled from: GamedetailItemUpdateinfoBinding.java */
/* loaded from: classes3.dex */
public final class fl implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20180a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f20181b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f20182c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f20183d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f20184e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f20185f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f20186g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f20187h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f20188i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f20189j;

    private fl(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull View view, @NonNull View view2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f20180a = linearLayout;
        this.f20181b = linearLayout2;
        this.f20182c = imageView;
        this.f20183d = view;
        this.f20184e = view2;
        this.f20185f = linearLayout3;
        this.f20186g = textView;
        this.f20187h = textView2;
        this.f20188i = textView3;
        this.f20189j = textView4;
    }

    @NonNull
    public static fl a(@NonNull View view) {
        int i2 = R.id.backLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.backLayout);
        if (linearLayout != null) {
            i2 = R.id.imageView5;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView5);
            if (imageView != null) {
                i2 = R.id.layoutTop;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.layoutTop);
                if (findChildViewById != null) {
                    i2 = R.id.line_h;
                    View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.line_h);
                    if (findChildViewById2 != null) {
                        i2 = R.id.look_other;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.look_other);
                        if (linearLayout2 != null) {
                            i2 = R.id.message;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.message);
                            if (textView != null) {
                                i2 = R.id.moreText;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.moreText);
                                if (textView2 != null) {
                                    i2 = R.id.textView9;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView9);
                                    if (textView3 != null) {
                                        i2 = R.id.titleText;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.titleText);
                                        if (textView4 != null) {
                                            return new fl((LinearLayout) view, linearLayout, imageView, findChildViewById, findChildViewById2, linearLayout2, textView, textView2, textView3, textView4);
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
    public static fl c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static fl d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetail_item_updateinfo, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20180a;
    }
}
