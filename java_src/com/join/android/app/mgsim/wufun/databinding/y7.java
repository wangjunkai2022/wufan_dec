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
import com.join.mgps.customview.HistogramView;
import com.join.mgps.customview.MStarBar;
/* compiled from: CommentListHeadViewBinding.java */
/* loaded from: classes3.dex */
public final class y7 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26829a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final MStarBar f26830b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f26831c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26832d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26833e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f26834f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final HistogramView f26835g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final HistogramView f26836h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f26837i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final View f26838j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final HistogramView f26839k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final LinearLayout f26840l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ImageView f26841m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final LinearLayout f26842n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final LinearLayout f26843o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final HistogramView f26844p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final HistogramView f26845q;

    private y7(@NonNull LinearLayout linearLayout, @NonNull MStarBar mStarBar, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull HistogramView histogramView, @NonNull HistogramView histogramView2, @NonNull LinearLayout linearLayout2, @NonNull View view, @NonNull HistogramView histogramView3, @NonNull LinearLayout linearLayout3, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull HistogramView histogramView4, @NonNull HistogramView histogramView5) {
        this.f26829a = linearLayout;
        this.f26830b = mStarBar;
        this.f26831c = textView;
        this.f26832d = textView2;
        this.f26833e = textView3;
        this.f26834f = textView4;
        this.f26835g = histogramView;
        this.f26836h = histogramView2;
        this.f26837i = linearLayout2;
        this.f26838j = view;
        this.f26839k = histogramView3;
        this.f26840l = linearLayout3;
        this.f26841m = imageView;
        this.f26842n = linearLayout4;
        this.f26843o = linearLayout5;
        this.f26844p = histogramView4;
        this.f26845q = histogramView5;
    }

    @NonNull
    public static y7 a(@NonNull View view) {
        int i2 = R.id.comment_head_mstarBar;
        MStarBar mStarBar = (MStarBar) ViewBindings.findChildViewById(view, R.id.comment_head_mstarBar);
        if (mStarBar != null) {
            i2 = R.id.comment_head_nopoint_tx;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.comment_head_nopoint_tx);
            if (textView != null) {
                i2 = R.id.comment_head_num_tx;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.comment_head_num_tx);
                if (textView2 != null) {
                    i2 = R.id.comment_head_point_tx;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.comment_head_point_tx);
                    if (textView3 != null) {
                        i2 = R.id.editText5;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.editText5);
                        if (textView4 != null) {
                            i2 = R.id.fiveHv;
                            HistogramView histogramView = (HistogramView) ViewBindings.findChildViewById(view, R.id.fiveHv);
                            if (histogramView != null) {
                                i2 = R.id.fourHv;
                                HistogramView histogramView2 = (HistogramView) ViewBindings.findChildViewById(view, R.id.fourHv);
                                if (histogramView2 != null) {
                                    i2 = R.id.goCommit;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.goCommit);
                                    if (linearLayout != null) {
                                        i2 = R.id.line_one;
                                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.line_one);
                                        if (findChildViewById != null) {
                                            i2 = R.id.oneHv;
                                            HistogramView histogramView3 = (HistogramView) ViewBindings.findChildViewById(view, R.id.oneHv);
                                            if (histogramView3 != null) {
                                                i2 = R.id.point_ll;
                                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.point_ll);
                                                if (linearLayout2 != null) {
                                                    i2 = R.id.progressBar2;
                                                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.progressBar2);
                                                    if (imageView != null) {
                                                        i2 = R.id.starlayout;
                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.starlayout);
                                                        if (linearLayout3 != null) {
                                                            i2 = R.id.start_ll;
                                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.start_ll);
                                                            if (linearLayout4 != null) {
                                                                i2 = R.id.threeHv;
                                                                HistogramView histogramView4 = (HistogramView) ViewBindings.findChildViewById(view, R.id.threeHv);
                                                                if (histogramView4 != null) {
                                                                    i2 = R.id.twoHv;
                                                                    HistogramView histogramView5 = (HistogramView) ViewBindings.findChildViewById(view, R.id.twoHv);
                                                                    if (histogramView5 != null) {
                                                                        return new y7((LinearLayout) view, mStarBar, textView, textView2, textView3, textView4, histogramView, histogramView2, linearLayout, findChildViewById, histogramView3, linearLayout2, imageView, linearLayout3, linearLayout4, histogramView4, histogramView5);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static y7 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static y7 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.comment_list_head_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26829a;
    }
}
