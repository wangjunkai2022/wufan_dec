package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemFriendItemBinding.java */
/* loaded from: classes3.dex */
public final class vp implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f25895a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f25896b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25897c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f25898d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f25899e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f25900f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f25901g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f25902h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f25903i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f25904j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final ImageView f25905k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f25906l;

    private vp(@NonNull ConstraintLayout constraintLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull ImageView imageView5, @NonNull TextView textView5) {
        this.f25895a = constraintLayout;
        this.f25896b = simpleDraweeView;
        this.f25897c = textView;
        this.f25898d = imageView;
        this.f25899e = imageView2;
        this.f25900f = imageView3;
        this.f25901g = imageView4;
        this.f25902h = textView2;
        this.f25903i = textView3;
        this.f25904j = textView4;
        this.f25905k = imageView5;
        this.f25906l = textView5;
    }

    @NonNull
    public static vp a(@NonNull View view) {
        int i2 = R.id.avatar;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.avatar);
        if (simpleDraweeView != null) {
            i2 = R.id.button;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.button);
            if (textView != null) {
                i2 = R.id.icLevel;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icLevel);
                if (imageView != null) {
                    i2 = R.id.icLevel1;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.icLevel1);
                    if (imageView2 != null) {
                        i2 = R.id.icLevel1Bg;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.icLevel1Bg);
                        if (imageView3 != null) {
                            i2 = R.id.icLoc;
                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.icLoc);
                            if (imageView4 != null) {
                                i2 = R.id.levelTxt;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.levelTxt);
                                if (textView2 != null) {
                                    i2 = R.id.locTxt;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.locTxt);
                                    if (textView3 != null) {
                                        i2 = R.id.name;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                                        if (textView4 != null) {
                                            i2 = R.id.offlineOver;
                                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.offlineOver);
                                            if (imageView5 != null) {
                                                i2 = R.id.recommend;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.recommend);
                                                if (textView5 != null) {
                                                    return new vp((ConstraintLayout) view, simpleDraweeView, textView, imageView, imageView2, imageView3, imageView4, textView2, textView3, textView4, imageView5, textView5);
                                                }
                                            }
                                        }
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
    public static vp c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static vp d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_friend_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f25895a;
    }
}
