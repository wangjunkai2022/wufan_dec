package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ModTabLayoutBinding.java */
/* loaded from: classes3.dex */
public final class m30 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f22326a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f22327b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f22328c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f22329d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f22330e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f22331f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f22332g;

    private m30(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f22326a = relativeLayout;
        this.f22327b = imageView;
        this.f22328c = simpleDraweeView;
        this.f22329d = linearLayout;
        this.f22330e = relativeLayout2;
        this.f22331f = textView;
        this.f22332g = textView2;
    }

    @NonNull
    public static m30 a(@NonNull View view) {
        int i2 = R.id.icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon);
        if (imageView != null) {
            i2 = R.id.icon_gif;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon_gif);
            if (simpleDraweeView != null) {
                i2 = R.id.llMain;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llMain);
                if (linearLayout != null) {
                    RelativeLayout relativeLayout = (RelativeLayout) view;
                    i2 = R.id.name;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                    if (textView != null) {
                        i2 = R.id.tvRedPoint;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvRedPoint);
                        if (textView2 != null) {
                            return new m30(relativeLayout, imageView, simpleDraweeView, linearLayout, relativeLayout, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static m30 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static m30 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mod_tab_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f22326a;
    }
}
