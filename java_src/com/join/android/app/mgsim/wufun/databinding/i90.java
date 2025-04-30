package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import java.util.Objects;
/* compiled from: PullToRefreshHeaderVerticalBinding.java */
/* loaded from: classes3.dex */
public final class i90 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final View f21099a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f21100b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f21101c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ProgressBar f21102d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f21103e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f21104f;

    private i90(@NonNull View view, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ProgressBar progressBar, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f21099a = view;
        this.f21100b = frameLayout;
        this.f21101c = imageView;
        this.f21102d = progressBar;
        this.f21103e = textView;
        this.f21104f = textView2;
    }

    @NonNull
    public static i90 a(@NonNull View view) {
        int i2 = R.id.fl_inner;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_inner);
        if (frameLayout != null) {
            i2 = R.id.pull_to_refresh_image;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.pull_to_refresh_image);
            if (imageView != null) {
                i2 = R.id.pull_to_refresh_progress;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.pull_to_refresh_progress);
                if (progressBar != null) {
                    i2 = R.id.pull_to_refresh_sub_text;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.pull_to_refresh_sub_text);
                    if (textView != null) {
                        i2 = R.id.pull_to_refresh_text;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.pull_to_refresh_text);
                        if (textView2 != null) {
                            return new i90(view, frameLayout, imageView, progressBar, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static i90 b(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.pull_to_refresh_header_vertical, viewGroup);
        return a(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f21099a;
    }
}
