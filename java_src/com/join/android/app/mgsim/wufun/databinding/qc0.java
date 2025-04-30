package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
/* compiled from: TopbarLeftTitleLayoutBinding.java */
/* loaded from: classes3.dex */
public final class qc0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23943a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f23944b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f23945c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f23946d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f23947e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f23948f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final RelativeLayout f23949g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final CustomerDownloadView f23950h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f23951i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f23952j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final View f23953k;

    private qc0(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView, @NonNull ImageView imageView3, @NonNull RelativeLayout relativeLayout3, @NonNull CustomerDownloadView customerDownloadView, @NonNull ImageView imageView4, @NonNull TextView textView2, @NonNull View view) {
        this.f23943a = relativeLayout;
        this.f23944b = imageView;
        this.f23945c = imageView2;
        this.f23946d = relativeLayout2;
        this.f23947e = textView;
        this.f23948f = imageView3;
        this.f23949g = relativeLayout3;
        this.f23950h = customerDownloadView;
        this.f23951i = imageView4;
        this.f23952j = textView2;
        this.f23953k = view;
    }

    @NonNull
    public static qc0 a(@NonNull View view) {
        int i2 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back_image);
        if (imageView != null) {
            i2 = R.id.comment;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.comment);
            if (imageView2 != null) {
                i2 = R.id.commentParent;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.commentParent);
                if (relativeLayout != null) {
                    i2 = R.id.roundMessage;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.roundMessage);
                    if (textView != null) {
                        i2 = R.id.share;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.share);
                        if (imageView3 != null) {
                            RelativeLayout relativeLayout2 = (RelativeLayout) view;
                            i2 = R.id.title_normal_download_cdv;
                            CustomerDownloadView customerDownloadView = (CustomerDownloadView) ViewBindings.findChildViewById(view, R.id.title_normal_download_cdv);
                            if (customerDownloadView != null) {
                                i2 = R.id.title_normal_search_img;
                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.title_normal_search_img);
                                if (imageView4 != null) {
                                    i2 = R.id.title_textview;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title_textview);
                                    if (textView2 != null) {
                                        i2 = R.id.topBarline;
                                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.topBarline);
                                        if (findChildViewById != null) {
                                            return new qc0(relativeLayout2, imageView, imageView2, relativeLayout, textView, imageView3, relativeLayout2, customerDownloadView, imageView4, textView2, findChildViewById);
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
    public static qc0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static qc0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.topbar_left_title_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23943a;
    }
}
