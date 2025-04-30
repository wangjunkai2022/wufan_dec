package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemModIntroductionItemBinding.java */
/* loaded from: classes3.dex */
public final class er implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final CardView f19887a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f19888b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f19889c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f19890d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f19891e;

    private er(@NonNull CardView cardView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f19887a = cardView;
        this.f19888b = simpleDraweeView;
        this.f19889c = textView;
        this.f19890d = textView2;
        this.f19891e = textView3;
    }

    @NonNull
    public static er a(@NonNull View view) {
        int i2 = R.id.sdv_image;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.sdv_image);
        if (simpleDraweeView != null) {
            i2 = R.id.tv_pic_num;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_pic_num);
            if (textView != null) {
                i2 = R.id.tv_time;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_time);
                if (textView2 != null) {
                    i2 = R.id.tv_title;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                    if (textView3 != null) {
                        return new er((CardView) view, simpleDraweeView, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static er c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static er d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_mod_introduction_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public CardView getRoot() {
        return this.f19887a;
    }
}
