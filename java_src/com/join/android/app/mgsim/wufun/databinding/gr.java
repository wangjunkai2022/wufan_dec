package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
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
/* compiled from: ItemPaiweiViewBinding.java */
/* loaded from: classes3.dex */
public final class gr implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20564a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f20565b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f20566c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f20567d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f20568e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f20569f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final RelativeLayout f20570g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f20571h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f20572i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ImageButton f20573j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final RelativeLayout f20574k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f20575l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f20576m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f20577n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final RelativeLayout f20578o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final RelativeLayout f20579p;

    private gr(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull ImageView imageView2, @NonNull TextView textView2, @NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView3, @NonNull TextView textView3, @NonNull ImageButton imageButton, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull RelativeLayout relativeLayout3, @NonNull RelativeLayout relativeLayout4) {
        this.f20564a = linearLayout;
        this.f20565b = imageView;
        this.f20566c = simpleDraweeView;
        this.f20567d = textView;
        this.f20568e = imageView2;
        this.f20569f = textView2;
        this.f20570g = relativeLayout;
        this.f20571h = imageView3;
        this.f20572i = textView3;
        this.f20573j = imageButton;
        this.f20574k = relativeLayout2;
        this.f20575l = textView4;
        this.f20576m = textView5;
        this.f20577n = textView6;
        this.f20578o = relativeLayout3;
        this.f20579p = relativeLayout4;
    }

    @NonNull
    public static gr a(@NonNull View view) {
        int i2 = R.id.item_hander_bg_iv;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.item_hander_bg_iv);
        if (imageView != null) {
            i2 = R.id.item_hander_iv;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.item_hander_iv);
            if (simpleDraweeView != null) {
                i2 = R.id.item_rank_bf_tv;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.item_rank_bf_tv);
                if (textView != null) {
                    i2 = R.id.item_rank_bg_iv;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.item_rank_bg_iv);
                    if (imageView2 != null) {
                        i2 = R.id.item_rank_cion_tv;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.item_rank_cion_tv);
                        if (textView2 != null) {
                            i2 = R.id.item_rank_header_rl;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.item_rank_header_rl);
                            if (relativeLayout != null) {
                                i2 = R.id.item_rank_iv;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.item_rank_iv);
                                if (imageView3 != null) {
                                    i2 = R.id.item_rank_name_tv;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.item_rank_name_tv);
                                    if (textView3 != null) {
                                        i2 = R.id.item_rank_play_ib;
                                        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.item_rank_play_ib);
                                        if (imageButton != null) {
                                            i2 = R.id.item_rank_rl;
                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.item_rank_rl);
                                            if (relativeLayout2 != null) {
                                                i2 = R.id.item_rank_role_tv;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.item_rank_role_tv);
                                                if (textView4 != null) {
                                                    i2 = R.id.item_rank_time_tv;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.item_rank_time_tv);
                                                    if (textView5 != null) {
                                                        i2 = R.id.item_rank_tv;
                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.item_rank_tv);
                                                        if (textView6 != null) {
                                                            i2 = R.id.item_root_rl;
                                                            RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.item_root_rl);
                                                            if (relativeLayout3 != null) {
                                                                i2 = R.id.relativeLayout2;
                                                                RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.relativeLayout2);
                                                                if (relativeLayout4 != null) {
                                                                    return new gr((LinearLayout) view, imageView, simpleDraweeView, textView, imageView2, textView2, relativeLayout, imageView3, textView3, imageButton, relativeLayout2, textView4, textView5, textView6, relativeLayout3, relativeLayout4);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static gr c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static gr d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_paiwei_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20564a;
    }
}
