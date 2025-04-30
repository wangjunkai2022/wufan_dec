package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: BannerHandshankTopBinding.java */
/* loaded from: classes3.dex */
public final class s3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f24688a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f24689b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f24690c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final au f24691d;

    private s3(@NonNull FrameLayout frameLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull LinearLayout linearLayout, @NonNull au auVar) {
        this.f24688a = frameLayout;
        this.f24689b = simpleDraweeView;
        this.f24690c = linearLayout;
        this.f24691d = auVar;
    }

    @NonNull
    public static s3 a(@NonNull View view) {
        int i2 = R.id.iv_banner;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.iv_banner);
        if (simpleDraweeView != null) {
            i2 = R.id.ll_fast_entrance;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_fast_entrance);
            if (linearLayout != null) {
                i2 = R.id.loadingLayout;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.loadingLayout);
                if (findChildViewById != null) {
                    return new s3((FrameLayout) view, simpleDraweeView, linearLayout, au.a(findChildViewById));
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static s3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static s3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.banner_handshank_top, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f24688a;
    }
}
