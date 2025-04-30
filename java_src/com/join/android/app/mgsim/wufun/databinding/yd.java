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
import com.join.mgps.customview.ScrollTextViewLayout;
/* compiled from: DownloadDetialLayoutBinding.java */
/* loaded from: classes3.dex */
public final class yd implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f26887a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26888b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f26889c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f26890d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f26891e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f26892f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f26893g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f26894h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ScrollTextViewLayout f26895i;

    private yd(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull TextView textView2, @NonNull ScrollTextViewLayout scrollTextViewLayout) {
        this.f26887a = relativeLayout;
        this.f26888b = textView;
        this.f26889c = imageView;
        this.f26890d = linearLayout;
        this.f26891e = imageView2;
        this.f26892f = imageView3;
        this.f26893g = imageView4;
        this.f26894h = textView2;
        this.f26895i = scrollTextViewLayout;
    }

    @NonNull
    public static yd a(@NonNull View view) {
        int i2 = R.id.biground;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.biground);
        if (textView != null) {
            i2 = R.id.download_bg;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.download_bg);
            if (imageView != null) {
                i2 = R.id.downloadLayout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.downloadLayout);
                if (linearLayout != null) {
                    i2 = R.id.downloadLine;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.downloadLine);
                    if (imageView2 != null) {
                        i2 = R.id.hasNewFinishedGameImage;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.hasNewFinishedGameImage);
                        if (imageView3 != null) {
                            i2 = R.id.imageLoading;
                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageLoading);
                            if (imageView4 != null) {
                                i2 = R.id.scroll_text;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.scroll_text);
                                if (textView2 != null) {
                                    i2 = R.id.scroll_text_layout;
                                    ScrollTextViewLayout scrollTextViewLayout = (ScrollTextViewLayout) ViewBindings.findChildViewById(view, R.id.scroll_text_layout);
                                    if (scrollTextViewLayout != null) {
                                        return new yd((RelativeLayout) view, textView, imageView, linearLayout, imageView2, imageView3, imageView4, textView2, scrollTextViewLayout);
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
    public static yd c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static yd d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.download_detial_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f26887a;
    }
}
