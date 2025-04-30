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
import com.join.mgps.customview.MStarBar;
/* compiled from: CommentListItemHeaderBinding.java */
/* loaded from: classes3.dex */
public final class b8 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18424a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f18425b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f18426c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final MStarBar f18427d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f18428e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f18429f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f18430g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f18431h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f18432i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f18433j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f18434k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final LinearLayout f18435l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final RelativeLayout f18436m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f18437n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f18438o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final SimpleDraweeView f18439p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f18440q;

    private b8(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull MStarBar mStarBar, @NonNull TextView textView2, @NonNull View view, @NonNull ImageView imageView, @NonNull TextView textView3, @NonNull ImageView imageView2, @NonNull TextView textView4, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView7) {
        this.f18424a = linearLayout;
        this.f18425b = textView;
        this.f18426c = linearLayout2;
        this.f18427d = mStarBar;
        this.f18428e = textView2;
        this.f18429f = view;
        this.f18430g = imageView;
        this.f18431h = textView3;
        this.f18432i = imageView2;
        this.f18433j = textView4;
        this.f18434k = linearLayout3;
        this.f18435l = linearLayout4;
        this.f18436m = relativeLayout;
        this.f18437n = textView5;
        this.f18438o = textView6;
        this.f18439p = simpleDraweeView;
        this.f18440q = textView7;
    }

    @NonNull
    public static b8 a(@NonNull View view) {
        int i2 = R.id.addTime;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.addTime);
        if (textView != null) {
            i2 = R.id.commentAllRootLl;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.commentAllRootLl);
            if (linearLayout != null) {
                i2 = R.id.comment_head_mstarBar;
                MStarBar mStarBar = (MStarBar) ViewBindings.findChildViewById(view, R.id.comment_head_mstarBar);
                if (mStarBar != null) {
                    i2 = R.id.comment_head_num_tx;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.comment_head_num_tx);
                    if (textView2 != null) {
                        i2 = R.id.divider;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.divider);
                        if (findChildViewById != null) {
                            i2 = R.id.isAuth;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.isAuth);
                            if (imageView != null) {
                                i2 = R.id.isConnoisseurs;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.isConnoisseurs);
                                if (textView3 != null) {
                                    i2 = R.id.isGood;
                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.isGood);
                                    if (imageView2 != null) {
                                        i2 = R.id.isMe;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.isMe);
                                        if (textView4 != null) {
                                            i2 = R.id.tbl_1_ll;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tbl_1_ll);
                                            if (linearLayout2 != null) {
                                                i2 = R.id.tbl_2_ll;
                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tbl_2_ll);
                                                if (linearLayout3 != null) {
                                                    i2 = R.id.tbl_3_rl;
                                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.tbl_3_rl);
                                                    if (relativeLayout != null) {
                                                        i2 = R.id.textView73;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.textView73);
                                                        if (textView5 != null) {
                                                            i2 = R.id.time;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.time);
                                                            if (textView6 != null) {
                                                                i2 = R.id.usericon;
                                                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.usericon);
                                                                if (simpleDraweeView != null) {
                                                                    i2 = R.id.username;
                                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.username);
                                                                    if (textView7 != null) {
                                                                        return new b8((LinearLayout) view, textView, linearLayout, mStarBar, textView2, findChildViewById, imageView, textView3, imageView2, textView4, linearLayout2, linearLayout3, relativeLayout, textView5, textView6, simpleDraweeView, textView7);
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
    public static b8 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static b8 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.comment_list_item_header, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18424a;
    }
}
