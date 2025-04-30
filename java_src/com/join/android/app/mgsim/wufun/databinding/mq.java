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
import com.join.mgps.customview.VipView;
/* compiled from: ItemGameRoomPlayerInfoBinding.java */
/* loaded from: classes3.dex */
public final class mq implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22586a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f22587b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f22588c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f22589d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f22590e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f22591f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f22592g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f22593h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f22594i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final LinearLayout f22595j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final View f22596k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final RelativeLayout f22597l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f22598m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f22599n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f22600o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f22601p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f22602q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final VipView f22603r;

    private mq(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull View view2, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull VipView vipView) {
        this.f22586a = linearLayout;
        this.f22587b = view;
        this.f22588c = simpleDraweeView;
        this.f22589d = imageView;
        this.f22590e = textView;
        this.f22591f = textView2;
        this.f22592g = imageView2;
        this.f22593h = imageView3;
        this.f22594i = linearLayout2;
        this.f22595j = linearLayout3;
        this.f22596k = view2;
        this.f22597l = relativeLayout;
        this.f22598m = textView3;
        this.f22599n = textView4;
        this.f22600o = textView5;
        this.f22601p = textView6;
        this.f22602q = textView7;
        this.f22603r = vipView;
    }

    @NonNull
    public static mq a(@NonNull View view) {
        int i2 = R.id.borderView;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.borderView);
        if (findChildViewById != null) {
            i2 = R.id.iv_bg;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.iv_bg);
            if (simpleDraweeView != null) {
                i2 = R.id.iv_haveReady;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_haveReady);
                if (imageView != null) {
                    i2 = R.id.iv_out_device;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.iv_out_device);
                    if (textView != null) {
                        i2 = R.id.iv_pc_device;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.iv_pc_device);
                        if (textView2 != null) {
                            i2 = R.id.ivProficiencyLevel;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.ivProficiencyLevel);
                            if (imageView2 != null) {
                                i2 = R.id.iv_state;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_state);
                                if (imageView3 != null) {
                                    i2 = R.id.ll_out_device;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_out_device);
                                    if (linearLayout != null) {
                                        i2 = R.id.ll_state;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_state);
                                        if (linearLayout2 != null) {
                                            i2 = R.id.mDefaultBg;
                                            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.mDefaultBg);
                                            if (findChildViewById2 != null) {
                                                i2 = R.id.rl_top;
                                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_top);
                                                if (relativeLayout != null) {
                                                    i2 = R.id.tv_delay_time;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_delay_time);
                                                    if (textView3 != null) {
                                                        i2 = R.id.tv_name;
                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
                                                        if (textView4 != null) {
                                                            i2 = R.id.tv_nick_name;
                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_nick_name);
                                                            if (textView5 != null) {
                                                                i2 = R.id.tv_p;
                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_p);
                                                                if (textView6 != null) {
                                                                    i2 = R.id.tv_state;
                                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_state);
                                                                    if (textView7 != null) {
                                                                        i2 = R.id.vipView;
                                                                        VipView vipView = (VipView) ViewBindings.findChildViewById(view, R.id.vipView);
                                                                        if (vipView != null) {
                                                                            return new mq((LinearLayout) view, findChildViewById, simpleDraweeView, imageView, textView, textView2, imageView2, imageView3, linearLayout, linearLayout2, findChildViewById2, relativeLayout, textView3, textView4, textView5, textView6, textView7, vipView);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static mq c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static mq d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_game_room_player_info, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22586a;
    }
}
