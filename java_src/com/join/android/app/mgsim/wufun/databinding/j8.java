package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: CommunityIconitemBinding.java */
/* loaded from: classes3.dex */
public final class j8 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21395a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f21396b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f21397c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21398d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f21399e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f21400f;

    private j8(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f21395a = relativeLayout;
        this.f21396b = relativeLayout2;
        this.f21397c = simpleDraweeView;
        this.f21398d = textView;
        this.f21399e = textView2;
        this.f21400f = textView3;
    }

    @NonNull
    public static j8 a(@NonNull View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view;
        int i2 = R.id.simv;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.simv);
        if (simpleDraweeView != null) {
            i2 = R.id.tv_name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
            if (textView != null) {
                i2 = R.id.tv_reply;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_reply);
                if (textView2 != null) {
                    i2 = R.id.tv_time;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_time);
                    if (textView3 != null) {
                        return new j8(relativeLayout, relativeLayout, simpleDraweeView, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static j8 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static j8 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.community_iconitem, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21395a;
    }
}
