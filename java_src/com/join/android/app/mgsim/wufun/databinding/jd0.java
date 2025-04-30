package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.component.video.MyVideoView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: VideoLayoutBinding.java */
/* loaded from: classes3.dex */
public final class jd0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21451a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f21452b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f21453c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final od0 f21454d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f21455e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final MyVideoView f21456f;

    private jd0(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull od0 od0Var, @NonNull ImageView imageView2, @NonNull MyVideoView myVideoView) {
        this.f21451a = relativeLayout;
        this.f21452b = imageView;
        this.f21453c = simpleDraweeView;
        this.f21454d = od0Var;
        this.f21455e = imageView2;
        this.f21456f = myVideoView;
    }

    @NonNull
    public static jd0 a(@NonNull View view) {
        int i2 = R.id.back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back);
        if (imageView != null) {
            i2 = R.id.cover;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.cover);
            if (simpleDraweeView != null) {
                i2 = R.id.loadingLayout;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.loadingLayout);
                if (findChildViewById != null) {
                    od0 a4 = od0.a(findChildViewById);
                    i2 = R.id.play;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.play);
                    if (imageView2 != null) {
                        i2 = R.id.video;
                        MyVideoView myVideoView = (MyVideoView) ViewBindings.findChildViewById(view, R.id.video);
                        if (myVideoView != null) {
                            return new jd0((RelativeLayout) view, imageView, simpleDraweeView, a4, imageView2, myVideoView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static jd0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static jd0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.video_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21451a;
    }
}
