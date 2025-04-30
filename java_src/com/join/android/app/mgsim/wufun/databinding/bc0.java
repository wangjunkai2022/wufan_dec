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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.component.video.EmptyControlVideoView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: SplashActivityLayoutBinding.java */
/* loaded from: classes3.dex */
public final class bc0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f18483a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f18484b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f18485c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f18486d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f18487e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f18488f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f18489g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final EmptyControlVideoView f18490h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final SimpleDraweeView f18491i;

    private bc0(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView, @NonNull RelativeLayout relativeLayout3, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull TextView textView3, @NonNull EmptyControlVideoView emptyControlVideoView, @NonNull SimpleDraweeView simpleDraweeView) {
        this.f18483a = relativeLayout;
        this.f18484b = relativeLayout2;
        this.f18485c = textView;
        this.f18486d = relativeLayout3;
        this.f18487e = textView2;
        this.f18488f = imageView;
        this.f18489g = textView3;
        this.f18490h = emptyControlVideoView;
        this.f18491i = simpleDraweeView;
    }

    @NonNull
    public static bc0 a(@NonNull View view) {
        int i2 = R.id.bottomImag;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.bottomImag);
        if (relativeLayout != null) {
            i2 = R.id.countdown;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.countdown);
            if (textView != null) {
                i2 = R.id.countdownLayout;
                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.countdownLayout);
                if (relativeLayout2 != null) {
                    i2 = R.id.countdownVideo;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.countdownVideo);
                    if (textView2 != null) {
                        i2 = R.id.imageView24;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView24);
                        if (imageView != null) {
                            i2 = R.id.textViewVersion;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textViewVersion);
                            if (textView3 != null) {
                                i2 = R.id.video_player;
                                EmptyControlVideoView emptyControlVideoView = (EmptyControlVideoView) ViewBindings.findChildViewById(view, R.id.video_player);
                                if (emptyControlVideoView != null) {
                                    i2 = R.id.viewImage;
                                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.viewImage);
                                    if (simpleDraweeView != null) {
                                        return new bc0((RelativeLayout) view, relativeLayout, textView, relativeLayout2, textView2, imageView, textView3, emptyControlVideoView, simpleDraweeView);
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
    public static bc0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static bc0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.splash_activity_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f18483a;
    }
}
