package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MyInnerScrollView;
/* compiled from: MgGameCommunityLayoutBinding.java */
/* loaded from: classes3.dex */
public final class g10 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final MyInnerScrollView f20278a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f20279b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final MyInnerScrollView f20280c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f20281d;

    private g10(@NonNull MyInnerScrollView myInnerScrollView, @NonNull ImageView imageView, @NonNull MyInnerScrollView myInnerScrollView2, @NonNull TextView textView) {
        this.f20278a = myInnerScrollView;
        this.f20279b = imageView;
        this.f20280c = myInnerScrollView2;
        this.f20281d = textView;
    }

    @NonNull
    public static g10 a(@NonNull View view) {
        int i2 = R.id.imageGoto;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageGoto);
        if (imageView != null) {
            MyInnerScrollView myInnerScrollView = (MyInnerScrollView) view;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textGoto);
            if (textView != null) {
                return new g10(myInnerScrollView, imageView, myInnerScrollView, textView);
            }
            i2 = R.id.textGoto;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static g10 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static g10 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_game_community_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public MyInnerScrollView getRoot() {
        return this.f20278a;
    }
}
