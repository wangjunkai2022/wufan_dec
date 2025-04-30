package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgFItemPostImgsBinding.java */
/* loaded from: classes3.dex */
public final class yw implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f27060a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f27061b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f27062c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f27063d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f27064e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f27065f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final RelativeLayout f27066g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final View f27067h;

    private yw(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull SimpleDraweeView simpleDraweeView3, @NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout2, @NonNull View view) {
        this.f27060a = relativeLayout;
        this.f27061b = textView;
        this.f27062c = simpleDraweeView;
        this.f27063d = simpleDraweeView2;
        this.f27064e = simpleDraweeView3;
        this.f27065f = linearLayout;
        this.f27066g = relativeLayout2;
        this.f27067h = view;
    }

    @NonNull
    public static yw a(@NonNull View view) {
        int i2 = R.id.images_count;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.images_count);
        if (textView != null) {
            i2 = R.id.img_m_1;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.img_m_1);
            if (simpleDraweeView != null) {
                i2 = R.id.img_m_2;
                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.img_m_2);
                if (simpleDraweeView2 != null) {
                    i2 = R.id.img_m_3;
                    SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.img_m_3);
                    if (simpleDraweeView3 != null) {
                        i2 = R.id.imgsMain;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.imgsMain);
                        if (linearLayout != null) {
                            RelativeLayout relativeLayout = (RelativeLayout) view;
                            i2 = R.id.spaceT;
                            View findChildViewById = ViewBindings.findChildViewById(view, R.id.spaceT);
                            if (findChildViewById != null) {
                                return new yw(relativeLayout, textView, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, linearLayout, relativeLayout, findChildViewById);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static yw c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static yw d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_f_item_post_imgs, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f27060a;
    }
}
