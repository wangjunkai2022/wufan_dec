package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: VipCenterIcongameLayoutBinding.java */
/* loaded from: classes3.dex */
public final class be0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18514a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f18515b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f18516c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f18517d;

    private be0(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull LinearLayout linearLayout2) {
        this.f18514a = linearLayout;
        this.f18515b = simpleDraweeView;
        this.f18516c = textView;
        this.f18517d = linearLayout2;
    }

    @NonNull
    public static be0 a(@NonNull View view) {
        int i2 = R.id.cardImage;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.cardImage);
        if (simpleDraweeView != null) {
            i2 = R.id.gameName;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.gameName);
            if (textView != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                return new be0(linearLayout, simpleDraweeView, textView, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static be0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static be0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.vip_center_icongame_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18514a;
    }
}
