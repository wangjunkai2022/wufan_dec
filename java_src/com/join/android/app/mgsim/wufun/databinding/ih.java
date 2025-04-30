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
/* compiled from: FragmentMyGameItemGuessLikeBinding.java */
/* loaded from: classes3.dex */
public final class ih implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f21163a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f21164b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f21165c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f21166d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f21167e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f21168f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final View f21169g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f21170h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f21171i;

    private ih(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull SimpleDraweeView simpleDraweeView3, @NonNull ImageView imageView, @NonNull View view, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f21163a = constraintLayout;
        this.f21164b = textView;
        this.f21165c = simpleDraweeView;
        this.f21166d = simpleDraweeView2;
        this.f21167e = simpleDraweeView3;
        this.f21168f = imageView;
        this.f21169g = view;
        this.f21170h = textView2;
        this.f21171i = textView3;
    }

    @NonNull
    public static ih a(@NonNull View view) {
        int i2 = R.id.count;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.count);
        if (textView != null) {
            i2 = R.id.icon1;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon1);
            if (simpleDraweeView != null) {
                i2 = R.id.icon2;
                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon2);
                if (simpleDraweeView2 != null) {
                    i2 = R.id.icon3;
                    SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon3);
                    if (simpleDraweeView3 != null) {
                        i2 = R.id.imageView60;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView60);
                        if (imageView != null) {
                            i2 = R.id.line;
                            View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
                            if (findChildViewById != null) {
                                i2 = R.id.textView87;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView87);
                                if (textView2 != null) {
                                    i2 = R.id.textView88;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView88);
                                    if (textView3 != null) {
                                        return new ih((ConstraintLayout) view, textView, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, imageView, findChildViewById, textView2, textView3);
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
    public static ih c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ih d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_my_game_item_guess_like, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f21163a;
    }
}
