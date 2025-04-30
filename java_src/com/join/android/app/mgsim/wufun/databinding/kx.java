package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumForumASendPostPopwindowBinding.java */
/* loaded from: classes3.dex */
public final class kx implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21913a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f21914b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f21915c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f21916d;

    private kx(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4) {
        this.f21913a = linearLayout;
        this.f21914b = linearLayout2;
        this.f21915c = linearLayout3;
        this.f21916d = linearLayout4;
    }

    @NonNull
    public static kx a(@NonNull View view) {
        int i2 = R.id.cancel;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.cancel);
        if (linearLayout != null) {
            i2 = R.id.goSendHelp;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.goSendHelp);
            if (linearLayout2 != null) {
                i2 = R.id.goSendPost;
                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.goSendPost);
                if (linearLayout3 != null) {
                    return new kx((LinearLayout) view, linearLayout, linearLayout2, linearLayout3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static kx c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static kx d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_forum_a_send_post_popwindow, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21913a;
    }
}
