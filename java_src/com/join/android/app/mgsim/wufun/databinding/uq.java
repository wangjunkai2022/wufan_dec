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
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.textview.MovementTextView;
/* compiled from: ItemIntroductionCommontDetailBinding.java */
/* loaded from: classes3.dex */
public final class uq implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25567a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f25568b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final MovementTextView f25569c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f25570d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f25571e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f25572f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SimpleDraweeView f25573g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f25574h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f25575i;

    private uq(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull MovementTextView movementTextView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull View view, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f25567a = relativeLayout;
        this.f25568b = relativeLayout2;
        this.f25569c = movementTextView;
        this.f25570d = imageView;
        this.f25571e = imageView2;
        this.f25572f = view;
        this.f25573g = simpleDraweeView;
        this.f25574h = textView;
        this.f25575i = textView2;
    }

    @NonNull
    public static uq a(@NonNull View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view;
        int i2 = R.id.content;
        MovementTextView movementTextView = (MovementTextView) ViewBindings.findChildViewById(view, R.id.content);
        if (movementTextView != null) {
            i2 = R.id.iv_more;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_more);
            if (imageView != null) {
                i2 = R.id.iv_praise;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_praise);
                if (imageView2 != null) {
                    i2 = R.id.layoutTop;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.layoutTop);
                    if (findChildViewById != null) {
                        i2 = R.id.siv_head;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.siv_head);
                        if (simpleDraweeView != null) {
                            i2 = R.id.tv_star_num;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_star_num);
                            if (textView != null) {
                                i2 = R.id.userName;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.userName);
                                if (textView2 != null) {
                                    return new uq(relativeLayout, relativeLayout, movementTextView, imageView, imageView2, findChildViewById, simpleDraweeView, textView, textView2);
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
    public static uq c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static uq d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_introduction_commont_detail, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25567a;
    }
}
