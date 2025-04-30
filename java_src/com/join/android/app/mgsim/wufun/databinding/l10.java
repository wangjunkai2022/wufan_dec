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
/* compiled from: MgGamedetailGiftsTopBinding.java */
/* loaded from: classes3.dex */
public final class l10 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21993a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f21994b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f21995c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f21996d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f21997e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f21998f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f21999g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f22000h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f22001i;

    private l10(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull View view, @NonNull View view2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f21993a = linearLayout;
        this.f21994b = linearLayout2;
        this.f21995c = imageView;
        this.f21996d = view;
        this.f21997e = view2;
        this.f21998f = linearLayout3;
        this.f21999g = textView;
        this.f22000h = textView2;
        this.f22001i = textView3;
    }

    @NonNull
    public static l10 a(@NonNull View view) {
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
                            i2 = R.id.moreText;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.moreText);
                            if (textView != null) {
                                i2 = R.id.textView9;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView9);
                                if (textView2 != null) {
                                    i2 = R.id.titleText;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.titleText);
                                    if (textView3 != null) {
                                        return new l10((LinearLayout) view, linearLayout, imageView, findChildViewById, findChildViewById2, linearLayout2, textView, textView2, textView3);
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
    public static l10 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static l10 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_gamedetail_gifts_top, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21993a;
    }
}
