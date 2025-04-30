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
/* compiled from: ViewCustomerDownloadBinding.java */
/* loaded from: classes3.dex */
public final class td0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25189a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f25190b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f25191c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f25192d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f25193e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f25194f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f25195g;

    private td0(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView4) {
        this.f25189a = relativeLayout;
        this.f25190b = imageView;
        this.f25191c = imageView2;
        this.f25192d = imageView3;
        this.f25193e = textView;
        this.f25194f = textView2;
        this.f25195g = imageView4;
    }

    @NonNull
    public static td0 a(@NonNull View view) {
        int i2 = R.id.download_icon_img;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.download_icon_img);
        if (imageView != null) {
            i2 = R.id.download_line_point_view;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.download_line_point_view);
            if (imageView2 != null) {
                i2 = R.id.download_line_view;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.download_line_view);
                if (imageView3 != null) {
                    i2 = R.id.download_num_anim_txt;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.download_num_anim_txt);
                    if (textView != null) {
                        i2 = R.id.download_num_hint_txt;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.download_num_hint_txt);
                        if (textView2 != null) {
                            i2 = R.id.download_red_point;
                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.download_red_point);
                            if (imageView4 != null) {
                                return new td0((RelativeLayout) view, imageView, imageView2, imageView3, textView, textView2, imageView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static td0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static td0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.view_customer_download, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25189a;
    }
}
