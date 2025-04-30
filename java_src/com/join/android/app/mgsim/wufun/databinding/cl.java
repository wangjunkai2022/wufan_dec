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
/* compiled from: GamedetailItemTitleBinding.java */
/* loaded from: classes3.dex */
public final class cl implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18953a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f18954b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f18955c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f18956d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f18957e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f18958f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f18959g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f18960h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f18961i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f18962j;

    private cl(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull View view, @NonNull View view2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f18953a = linearLayout;
        this.f18954b = linearLayout2;
        this.f18955c = imageView;
        this.f18956d = imageView2;
        this.f18957e = view;
        this.f18958f = view2;
        this.f18959g = linearLayout3;
        this.f18960h = textView;
        this.f18961i = textView2;
        this.f18962j = textView3;
    }

    @NonNull
    public static cl a(@NonNull View view) {
        int i2 = R.id.backLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.backLayout);
        if (linearLayout != null) {
            i2 = R.id.icon;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon);
            if (imageView != null) {
                i2 = R.id.imageView5;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView5);
                if (imageView2 != null) {
                    i2 = R.id.layoutTop;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.layoutTop);
                    if (findChildViewById != null) {
                        i2 = R.id.line_h;
                        View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.line_h);
                        if (findChildViewById2 != null) {
                            i2 = R.id.look_other;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.look_other);
                            if (linearLayout2 != null) {
                                i2 = R.id.moreText;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.moreText);
                                if (textView != null) {
                                    i2 = R.id.textView9;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView9);
                                    if (textView2 != null) {
                                        i2 = R.id.titleText;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.titleText);
                                        if (textView3 != null) {
                                            return new cl((LinearLayout) view, linearLayout, imageView, imageView2, findChildViewById, findChildViewById2, linearLayout2, textView, textView2, textView3);
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
    public static cl c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static cl d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetail_item_title, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18953a;
    }
}
