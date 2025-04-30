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
import com.join.mgps.customview.CountDownerTextView;
/* compiled from: ItemRoomListBinding.java */
/* loaded from: classes3.dex */
public final class sr implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f24935a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f24936b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f24937c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f24938d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f24939e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f24940f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f24941g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f24942h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final RelativeLayout f24943i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final LinearLayout f24944j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f24945k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final RelativeLayout f24946l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f24947m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f24948n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f24949o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f24950p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f24951q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final CountDownerTextView f24952r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f24953s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final TextView f24954t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final TextView f24955u;

    private sr(@NonNull RelativeLayout relativeLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull RelativeLayout relativeLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull RelativeLayout relativeLayout3, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull CountDownerTextView countDownerTextView, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8) {
        this.f24935a = relativeLayout;
        this.f24936b = simpleDraweeView;
        this.f24937c = imageView;
        this.f24938d = imageView2;
        this.f24939e = imageView3;
        this.f24940f = view;
        this.f24941g = linearLayout;
        this.f24942h = linearLayout2;
        this.f24943i = relativeLayout2;
        this.f24944j = linearLayout3;
        this.f24945k = linearLayout4;
        this.f24946l = relativeLayout3;
        this.f24947m = textView;
        this.f24948n = textView2;
        this.f24949o = textView3;
        this.f24950p = textView4;
        this.f24951q = textView5;
        this.f24952r = countDownerTextView;
        this.f24953s = textView6;
        this.f24954t = textView7;
        this.f24955u = textView8;
    }

    @NonNull
    public static sr a(@NonNull View view) {
        int i2 = R.id.avatar;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.avatar);
        if (simpleDraweeView != null) {
            i2 = R.id.iv_lock;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_lock);
            if (imageView != null) {
                i2 = R.id.iv_time;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_time);
                if (imageView2 != null) {
                    i2 = R.id.iv_vip;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_vip);
                    if (imageView3 != null) {
                        i2 = R.id.line_1;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.line_1);
                        if (findChildViewById != null) {
                            i2 = R.id.ll_challenge_gold;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_challenge_gold);
                            if (linearLayout != null) {
                                i2 = R.id.ll_id;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_id);
                                if (linearLayout2 != null) {
                                    i2 = R.id.ll_room;
                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.ll_room);
                                    if (relativeLayout != null) {
                                        i2 = R.id.ll_time;
                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_time);
                                        if (linearLayout3 != null) {
                                            i2 = R.id.ll_view;
                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_view);
                                            if (linearLayout4 != null) {
                                                RelativeLayout relativeLayout2 = (RelativeLayout) view;
                                                i2 = R.id.tv_challenge;
                                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_challenge);
                                                if (textView != null) {
                                                    i2 = R.id.tv_chenghao;
                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_chenghao);
                                                    if (textView2 != null) {
                                                        i2 = R.id.tv_forbidden;
                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_forbidden);
                                                        if (textView3 != null) {
                                                            i2 = R.id.tv_game_count;
                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_game_count);
                                                            if (textView4 != null) {
                                                                i2 = R.id.tv_gameName;
                                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_gameName);
                                                                if (textView5 != null) {
                                                                    i2 = R.id.tv_game_state;
                                                                    CountDownerTextView countDownerTextView = (CountDownerTextView) ViewBindings.findChildViewById(view, R.id.tv_game_state);
                                                                    if (countDownerTextView != null) {
                                                                        i2 = R.id.tv_id;
                                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_id);
                                                                        if (textView6 != null) {
                                                                            i2 = R.id.tv_name;
                                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
                                                                            if (textView7 != null) {
                                                                                i2 = R.id.tv_view;
                                                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_view);
                                                                                if (textView8 != null) {
                                                                                    return new sr(relativeLayout2, simpleDraweeView, imageView, imageView2, imageView3, findChildViewById, linearLayout, linearLayout2, relativeLayout, linearLayout3, linearLayout4, relativeLayout2, textView, textView2, textView3, textView4, textView5, countDownerTextView, textView6, textView7, textView8);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static sr c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static sr d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_room_list, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f24935a;
    }
}
