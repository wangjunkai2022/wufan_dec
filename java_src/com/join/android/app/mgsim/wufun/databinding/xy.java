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
/* compiled from: MgForumPostActivityItemPostHeaderBinding.java */
/* loaded from: classes3.dex */
public final class xy implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26695a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26696b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f26697c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f26698d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26699e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final SimpleDraweeView f26700f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final View f26701g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final Button f26702h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f26703i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f26704j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f26705k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final LinearLayout f26706l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ImageView f26707m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ImageView f26708n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final ImageView f26709o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final VipView f26710p;

    private xy(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull View view, @NonNull Button button, @NonNull ImageView imageView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull VipView vipView) {
        this.f26695a = linearLayout;
        this.f26696b = textView;
        this.f26697c = imageView;
        this.f26698d = relativeLayout;
        this.f26699e = textView2;
        this.f26700f = simpleDraweeView;
        this.f26701g = view;
        this.f26702h = button;
        this.f26703i = imageView2;
        this.f26704j = textView3;
        this.f26705k = textView4;
        this.f26706l = linearLayout2;
        this.f26707m = imageView3;
        this.f26708n = imageView4;
        this.f26709o = imageView5;
        this.f26710p = vipView;
    }

    @NonNull
    public static xy a(@NonNull View view) {
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
                                                i2 = R.id.layout_posts_top;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_posts_top);
                                                if (linearLayout != null) {
                                                    i2 = R.id.moreFunc;
                                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.moreFunc);
                                                    if (imageView3 != null) {
                                                        i2 = R.id.officialIcon;
                                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.officialIcon);
                                                        if (imageView4 != null) {
                                                            i2 = R.id.replyFunc;
                                                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.replyFunc);
                                                            if (imageView5 != null) {
                                                                i2 = R.id.vipFlag;
                                                                VipView vipView = (VipView) ViewBindings.findChildViewById(view, R.id.vipFlag);
                                                                if (vipView != null) {
                                                                    return new xy((LinearLayout) view, textView, imageView, relativeLayout, textView2, simpleDraweeView, findChildViewById, button, imageView2, textView3, textView4, linearLayout, imageView3, imageView4, imageView5, vipView);
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
    public static xy c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static xy d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_post_activity_item_post_header, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26695a;
    }
}
