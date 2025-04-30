package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: SearchFailedHeader1Binding.java */
/* loaded from: classes3.dex */
public final class ma0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f22440a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f22441b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f22442c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f22443d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f22444e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f22445f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f22446g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f22447h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f22448i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f22449j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f22450k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f22451l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f22452m;

    private ma0(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout3, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8) {
        this.f22440a = relativeLayout;
        this.f22441b = linearLayout;
        this.f22442c = textView;
        this.f22443d = linearLayout2;
        this.f22444e = imageView;
        this.f22445f = linearLayout3;
        this.f22446g = textView2;
        this.f22447h = textView3;
        this.f22448i = textView4;
        this.f22449j = textView5;
        this.f22450k = textView6;
        this.f22451l = textView7;
        this.f22452m = textView8;
    }

    @NonNull
    public static ma0 a(@NonNull View view) {
        int i2 = R.id.failMsg;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.failMsg);
        if (linearLayout != null) {
            i2 = R.id.messageHeader;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.messageHeader);
            if (textView != null) {
                i2 = R.id.messageLayout;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.messageLayout);
                if (linearLayout2 != null) {
                    i2 = R.id.reloadingHeader;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.reloadingHeader);
                    if (imageView != null) {
                        i2 = R.id.searchHeaderLayout;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.searchHeaderLayout);
                        if (linearLayout3 != null) {
                            i2 = R.id.textView;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView);
                            if (textView2 != null) {
                                i2 = R.id.textView2;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView2);
                                if (textView3 != null) {
                                    i2 = R.id.tv1;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv1);
                                    if (textView4 != null) {
                                        i2 = R.id.tv2;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv2);
                                        if (textView5 != null) {
                                            i2 = R.id.tv3;
                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv3);
                                            if (textView6 != null) {
                                                i2 = R.id.tv4;
                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv4);
                                                if (textView7 != null) {
                                                    i2 = R.id.tvMore;
                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tvMore);
                                                    if (textView8 != null) {
                                                        return new ma0((RelativeLayout) view, linearLayout, textView, linearLayout2, imageView, linearLayout3, textView2, textView3, textView4, textView5, textView6, textView7, textView8);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ma0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ma0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.search_failed_header1, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f22440a;
    }
}
