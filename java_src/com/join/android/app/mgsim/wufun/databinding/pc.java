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
/* compiled from: DialogModQuestionnaireBinding.java */
/* loaded from: classes3.dex */
public final class pc implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f23573a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f23574b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ConstraintLayout f23575c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ConstraintLayout f23576d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f23577e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f23578f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f23579g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f23580h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f23581i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public final TextView f23582j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public final TextView f23583k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public final SimpleDraweeView f23584l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ConstraintLayout f23585m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f23586n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f23587o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    public final TextView f23588p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    public final TextView f23589q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    public final TextView f23590r;

    private pc(@NonNull ConstraintLayout constraintLayout, @Nullable ConstraintLayout constraintLayout2, @NonNull ConstraintLayout constraintLayout3, @NonNull ConstraintLayout constraintLayout4, @Nullable ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @Nullable ImageView imageView4, @Nullable ImageView imageView5, @Nullable TextView textView, @Nullable TextView textView2, @Nullable SimpleDraweeView simpleDraweeView, @NonNull ConstraintLayout constraintLayout5, @NonNull TextView textView3, @NonNull TextView textView4, @Nullable TextView textView5, @Nullable TextView textView6, @Nullable TextView textView7) {
        this.f23573a = constraintLayout;
        this.f23574b = constraintLayout2;
        this.f23575c = constraintLayout3;
        this.f23576d = constraintLayout4;
        this.f23577e = imageView;
        this.f23578f = imageView2;
        this.f23579g = imageView3;
        this.f23580h = imageView4;
        this.f23581i = imageView5;
        this.f23582j = textView;
        this.f23583k = textView2;
        this.f23584l = simpleDraweeView;
        this.f23585m = constraintLayout5;
        this.f23586n = textView3;
        this.f23587o = textView4;
        this.f23588p = textView5;
        this.f23589q = textView6;
        this.f23590r = textView7;
    }

    @NonNull
    public static pc a(@NonNull View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.cl_game_info);
        int i2 = R.id.error;
        ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.error);
        if (constraintLayout2 != null) {
            i2 = R.id.error1;
            ConstraintLayout constraintLayout3 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.error1);
            if (constraintLayout3 != null) {
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView63);
                i2 = R.id.imageView631;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView631);
                if (imageView2 != null) {
                    i2 = R.id.imageView632;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView632);
                    if (imageView3 != null) {
                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView633);
                        ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_close);
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.sdv_image);
                        i2 = R.id.success;
                        ConstraintLayout constraintLayout4 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.success);
                        if (constraintLayout4 != null) {
                            i2 = R.id.textView103;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView103);
                            if (textView3 != null) {
                                i2 = R.id.textView109;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.textView109);
                                if (textView4 != null) {
                                    return new pc((ConstraintLayout) view, constraintLayout, constraintLayout2, constraintLayout3, imageView, imageView2, imageView3, imageView4, imageView5, textView, textView2, simpleDraweeView, constraintLayout4, textView3, textView4, (TextView) ViewBindings.findChildViewById(view, R.id.textView1091), (TextView) ViewBindings.findChildViewById(view, R.id.textView1092), (TextView) ViewBindings.findChildViewById(view, R.id.tv_desc));
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
    public static pc c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static pc d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_mod_questionnaire, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f23573a;
    }
}
