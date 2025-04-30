package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: CloudRecodingLayoutBinding.java */
/* loaded from: classes3.dex */
public final class b7 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18396a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f18397b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f18398c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ProgressBar f18399d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f18400e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f18401f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f18402g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f18403h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ProgressBar f18404i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final LinearLayout f18405j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final ImageView f18406k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ProgressBar f18407l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f18408m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ImageView f18409n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f18410o;

    private b7(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull ProgressBar progressBar, @NonNull TextView textView, @NonNull LinearLayout linearLayout3, @NonNull ImageView imageView2, @NonNull TextView textView2, @NonNull ProgressBar progressBar2, @NonNull LinearLayout linearLayout4, @NonNull ImageView imageView3, @NonNull ProgressBar progressBar3, @NonNull TextView textView3, @NonNull ImageView imageView4, @NonNull TextView textView4) {
        this.f18396a = linearLayout;
        this.f18397b = linearLayout2;
        this.f18398c = imageView;
        this.f18399d = progressBar;
        this.f18400e = textView;
        this.f18401f = linearLayout3;
        this.f18402g = imageView2;
        this.f18403h = textView2;
        this.f18404i = progressBar2;
        this.f18405j = linearLayout4;
        this.f18406k = imageView3;
        this.f18407l = progressBar3;
        this.f18408m = textView3;
        this.f18409n = imageView4;
        this.f18410o = textView4;
    }

    @NonNull
    public static b7 a(@NonNull View view) {
        int i2 = R.id.gameHistory;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.gameHistory);
        if (linearLayout != null) {
            i2 = R.id.gameHistoryFinishImage;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.gameHistoryFinishImage);
            if (imageView != null) {
                i2 = R.id.gameHistoryLoding;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.gameHistoryLoding);
                if (progressBar != null) {
                    i2 = R.id.gameHistoryinfo;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.gameHistoryinfo);
                    if (textView != null) {
                        i2 = R.id.gameList;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.gameList);
                        if (linearLayout2 != null) {
                            i2 = R.id.gameListFinish;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.gameListFinish);
                            if (imageView2 != null) {
                                i2 = R.id.gameListInfo;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.gameListInfo);
                                if (textView2 != null) {
                                    i2 = R.id.gameListloding;
                                    ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(view, R.id.gameListloding);
                                    if (progressBar2 != null) {
                                        i2 = R.id.gamekey;
                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.gamekey);
                                        if (linearLayout3 != null) {
                                            i2 = R.id.gamekeyFinish;
                                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.gamekeyFinish);
                                            if (imageView3 != null) {
                                                i2 = R.id.gamekeyLoding;
                                                ProgressBar progressBar3 = (ProgressBar) ViewBindings.findChildViewById(view, R.id.gamekeyLoding);
                                                if (progressBar3 != null) {
                                                    i2 = R.id.gamekeyinfo;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.gamekeyinfo);
                                                    if (textView3 != null) {
                                                        i2 = R.id.imageView;
                                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView);
                                                        if (imageView4 != null) {
                                                            i2 = R.id.recoverinfo;
                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.recoverinfo);
                                                            if (textView4 != null) {
                                                                return new b7((LinearLayout) view, linearLayout, imageView, progressBar, textView, linearLayout2, imageView2, textView2, progressBar2, linearLayout3, imageView3, progressBar3, textView3, imageView4, textView4);
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
    public static b7 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static b7 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.cloud_recoding_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18396a;
    }
}
