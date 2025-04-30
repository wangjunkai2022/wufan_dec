package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
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
/* compiled from: MgForumPostActivityItemPostHeader1Binding.java */
/* loaded from: classes3.dex */
public final class wy implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26276a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26277b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f26278c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f26279d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26280e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final SimpleDraweeView f26281f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final View f26282g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final Button f26283h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f26284i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f26285j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f26286k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f26287l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final LinearLayout f26288m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final LinearLayout f26289n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final ImageView f26290o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f26291p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f26292q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final ImageView f26293r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final ImageView f26294s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final ImageView f26295t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final TextView f26296u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final VipView f26297v;

    private wy(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull View view, @NonNull Button button, @NonNull ImageView imageView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull ImageView imageView3, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull ImageView imageView6, @NonNull TextView textView8, @NonNull VipView vipView) {
        this.f26276a = linearLayout;
        this.f26277b = textView;
        this.f26278c = imageView;
        this.f26279d = relativeLayout;
        this.f26280e = textView2;
        this.f26281f = simpleDraweeView;
        this.f26282g = view;
        this.f26283h = button;
        this.f26284i = imageView2;
        this.f26285j = textView3;
        this.f26286k = textView4;
        this.f26287l = textView5;
        this.f26288m = linearLayout2;
        this.f26289n = linearLayout3;
        this.f26290o = imageView3;
        this.f26291p = textView6;
        this.f26292q = textView7;
        this.f26293r = imageView4;
        this.f26294s = imageView5;
        this.f26295t = imageView6;
        this.f26296u = textView8;
        this.f26297v = vipView;
    }

    @NonNull
    public static wy a(@NonNull View view) {
        int i2 = R.id.copperTitleTv;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.copperTitleTv);
        if (textView != null) {
            i2 = R.id.flagBestAnswer;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.flagBestAnswer);
            if (imageView != null) {
                i2 = R.id.forumExtFunc;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.forumExtFunc);
                if (relativeLayout != null) {
                    i2 = R.id.forum_post_add_time;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.forum_post_add_time);
                    if (textView2 != null) {
                        i2 = R.id.forum_post_avatar_src;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.forum_post_avatar_src);
                        if (simpleDraweeView != null) {
                            i2 = R.id.forum_post_divider;
                            View findChildViewById = ViewBindings.findChildViewById(view, R.id.forum_post_divider);
                            if (findChildViewById != null) {
                                i2 = R.id.forum_post_host;
                                Button button = (Button) ViewBindings.findChildViewById(view, R.id.forum_post_host);
                                if (button != null) {
                                    i2 = R.id.forum_post_moderator;
                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.forum_post_moderator);
                                    if (imageView2 != null) {
                                        i2 = R.id.forum_post_nickname;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.forum_post_nickname);
                                        if (textView3 != null) {
                                            i2 = R.id.forum_post_stickie;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.forum_post_stickie);
                                            if (textView4 != null) {
                                                i2 = R.id.groupName;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.groupName);
                                                if (textView5 != null) {
                                                    i2 = R.id.groupParent;
                                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.groupParent);
                                                    if (linearLayout != null) {
                                                        i2 = R.id.layout_posts_top;
                                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_posts_top);
                                                        if (linearLayout2 != null) {
                                                            i2 = R.id.locIcon;
                                                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.locIcon);
                                                            if (imageView3 != null) {
                                                                i2 = R.id.member_honor;
                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.member_honor);
                                                                if (textView6 != null) {
                                                                    i2 = R.id.moderator;
                                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.moderator);
                                                                    if (textView7 != null) {
                                                                        i2 = R.id.moreFunc;
                                                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.moreFunc);
                                                                        if (imageView4 != null) {
                                                                            i2 = R.id.officialIcon;
                                                                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.officialIcon);
                                                                            if (imageView5 != null) {
                                                                                i2 = R.id.replyFunc;
                                                                                ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.replyFunc);
                                                                                if (imageView6 != null) {
                                                                                    i2 = R.id.topMoneyTx;
                                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.topMoneyTx);
                                                                                    if (textView8 != null) {
                                                                                        i2 = R.id.vipFlag;
                                                                                        VipView vipView = (VipView) ViewBindings.findChildViewById(view, R.id.vipFlag);
                                                                                        if (vipView != null) {
                                                                                            return new wy((LinearLayout) view, textView, imageView, relativeLayout, textView2, simpleDraweeView, findChildViewById, button, imageView2, textView3, textView4, textView5, linearLayout, linearLayout2, imageView3, textView6, textView7, imageView4, imageView5, imageView6, textView8, vipView);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static wy c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static wy d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_post_activity_item_post_header1, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26276a;
    }
}
