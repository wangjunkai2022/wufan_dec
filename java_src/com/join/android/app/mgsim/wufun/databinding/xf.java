package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.HtmlTextView;
/* compiled from: FragmentCardBinding.java */
/* loaded from: classes3.dex */
public final class xf implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f26566a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f26567b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f26568c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ProgressBar f26569d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f26570e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f26571f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f26572g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f26573h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final SimpleDraweeView f26574i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ImageView f26575j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final Button f26576k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f26577l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f26578m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final LinearLayout f26579n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final RelativeLayout f26580o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final HtmlTextView f26581p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f26582q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final TextView f26583r;

    private xf(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull LinearLayout linearLayout, @NonNull ProgressBar progressBar, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView3, @NonNull Button button, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout3, @NonNull RelativeLayout relativeLayout3, @NonNull HtmlTextView htmlTextView, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f26566a = relativeLayout;
        this.f26567b = relativeLayout2;
        this.f26568c = linearLayout;
        this.f26569d = progressBar;
        this.f26570e = imageView;
        this.f26571f = textView;
        this.f26572g = linearLayout2;
        this.f26573h = imageView2;
        this.f26574i = simpleDraweeView;
        this.f26575j = imageView3;
        this.f26576k = button;
        this.f26577l = textView2;
        this.f26578m = textView3;
        this.f26579n = linearLayout3;
        this.f26580o = relativeLayout3;
        this.f26581p = htmlTextView;
        this.f26582q = textView4;
        this.f26583r = textView5;
    }

    @NonNull
    public static xf a(@NonNull View view) {
        int i2 = R.id.box_card;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.box_card);
        if (relativeLayout != null) {
            i2 = R.id.box_title;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.box_title);
            if (linearLayout != null) {
                i2 = R.id.butnProgressBar;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.butnProgressBar);
                if (progressBar != null) {
                    i2 = R.id.butn_showdownload;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.butn_showdownload);
                    if (imageView != null) {
                        i2 = R.id.date_tag;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.date_tag);
                        if (textView != null) {
                            i2 = R.id.detialDownBottom;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.detialDownBottom);
                            if (linearLayout2 != null) {
                                i2 = R.id.image_bottom_edge;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.image_bottom_edge);
                                if (imageView2 != null) {
                                    i2 = R.id.image_cover;
                                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.image_cover);
                                    if (simpleDraweeView != null) {
                                        i2 = R.id.image_tag;
                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.image_tag);
                                        if (imageView3 != null) {
                                            i2 = R.id.instalButtomButn;
                                            Button button = (Button) ViewBindings.findChildViewById(view, R.id.instalButtomButn);
                                            if (button != null) {
                                                i2 = R.id.moneyText;
                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.moneyText);
                                                if (textView2 != null) {
                                                    i2 = R.id.percent;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.percent);
                                                    if (textView3 != null) {
                                                        i2 = R.id.progress_layout;
                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.progress_layout);
                                                        if (linearLayout3 != null) {
                                                            i2 = R.id.progressbarLayout;
                                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.progressbarLayout);
                                                            if (relativeLayout2 != null) {
                                                                i2 = R.id.text_digest;
                                                                HtmlTextView htmlTextView = (HtmlTextView) ViewBindings.findChildViewById(view, R.id.text_digest);
                                                                if (htmlTextView != null) {
                                                                    i2 = R.id.text_subtitle;
                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.text_subtitle);
                                                                    if (textView4 != null) {
                                                                        i2 = R.id.text_title;
                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.text_title);
                                                                        if (textView5 != null) {
                                                                            return new xf((RelativeLayout) view, relativeLayout, linearLayout, progressBar, imageView, textView, linearLayout2, imageView2, simpleDraweeView, imageView3, button, textView2, textView3, linearLayout3, relativeLayout2, htmlTextView, textView4, textView5);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static xf c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static xf d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_card, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f26566a;
    }
}
