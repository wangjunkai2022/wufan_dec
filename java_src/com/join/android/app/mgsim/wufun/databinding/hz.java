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
import com.join.android.app.common.view.RoundImageView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.VipView;
/* compiled from: MgForumPostCommentItemBinding.java */
/* loaded from: classes3.dex */
public final class hz implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f20927a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f20928b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RoundImageView f20929c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f20930d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f20931e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f20932f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f20933g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f20934h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f20935i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ImageView f20936j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final ImageView f20937k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ImageView f20938l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ImageView f20939m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f20940n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f20941o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final ImageView f20942p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final LinearLayout f20943q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final View f20944r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final LinearLayout f20945s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final ImageView f20946t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final VipView f20947u;

    private hz(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull RoundImageView roundImageView, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull ImageView imageView6, @NonNull ImageView imageView7, @NonNull ImageView imageView8, @NonNull ImageView imageView9, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull ImageView imageView10, @NonNull LinearLayout linearLayout2, @NonNull View view, @NonNull LinearLayout linearLayout3, @NonNull ImageView imageView11, @NonNull VipView vipView) {
        this.f20927a = relativeLayout;
        this.f20928b = textView;
        this.f20929c = roundImageView;
        this.f20930d = linearLayout;
        this.f20931e = imageView;
        this.f20932f = imageView2;
        this.f20933g = imageView3;
        this.f20934h = imageView4;
        this.f20935i = imageView5;
        this.f20936j = imageView6;
        this.f20937k = imageView7;
        this.f20938l = imageView8;
        this.f20939m = imageView9;
        this.f20940n = textView2;
        this.f20941o = textView3;
        this.f20942p = imageView10;
        this.f20943q = linearLayout2;
        this.f20944r = view;
        this.f20945s = linearLayout3;
        this.f20946t = imageView11;
        this.f20947u = vipView;
    }

    @NonNull
    public static hz a(@NonNull View view) {
        int i2 = R.id.comment_add_time;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.comment_add_time);
        if (textView != null) {
            i2 = R.id.comment_avatar_src;
            RoundImageView roundImageView = (RoundImageView) ViewBindings.findChildViewById(view, R.id.comment_avatar_src);
            if (roundImageView != null) {
                i2 = R.id.comment_images;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.comment_images);
                if (linearLayout != null) {
                    i2 = R.id.comment_img_1;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.comment_img_1);
                    if (imageView != null) {
                        i2 = R.id.comment_img_2;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.comment_img_2);
                        if (imageView2 != null) {
                            i2 = R.id.comment_img_3;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.comment_img_3);
                            if (imageView3 != null) {
                                i2 = R.id.comment_img_4;
                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.comment_img_4);
                                if (imageView4 != null) {
                                    i2 = R.id.comment_img_5;
                                    ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.comment_img_5);
                                    if (imageView5 != null) {
                                        i2 = R.id.comment_img_6;
                                        ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.comment_img_6);
                                        if (imageView6 != null) {
                                            i2 = R.id.comment_img_7;
                                            ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(view, R.id.comment_img_7);
                                            if (imageView7 != null) {
                                                i2 = R.id.comment_img_8;
                                                ImageView imageView8 = (ImageView) ViewBindings.findChildViewById(view, R.id.comment_img_8);
                                                if (imageView8 != null) {
                                                    i2 = R.id.comment_img_9;
                                                    ImageView imageView9 = (ImageView) ViewBindings.findChildViewById(view, R.id.comment_img_9);
                                                    if (imageView9 != null) {
                                                        i2 = R.id.comment_message;
                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.comment_message);
                                                        if (textView2 != null) {
                                                            i2 = R.id.comment_nickname;
                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.comment_nickname);
                                                            if (textView3 != null) {
                                                                i2 = R.id.comment_reply;
                                                                ImageView imageView10 = (ImageView) ViewBindings.findChildViewById(view, R.id.comment_reply);
                                                                if (imageView10 != null) {
                                                                    i2 = R.id.comment_reply_container;
                                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.comment_reply_container);
                                                                    if (linearLayout2 != null) {
                                                                        i2 = R.id.comment_reply_divider;
                                                                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.comment_reply_divider);
                                                                        if (findChildViewById != null) {
                                                                            i2 = R.id.linearLayout9;
                                                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout9);
                                                                            if (linearLayout3 != null) {
                                                                                i2 = R.id.officialIcon;
                                                                                ImageView imageView11 = (ImageView) ViewBindings.findChildViewById(view, R.id.officialIcon);
                                                                                if (imageView11 != null) {
                                                                                    i2 = R.id.vipFlag;
                                                                                    VipView vipView = (VipView) ViewBindings.findChildViewById(view, R.id.vipFlag);
                                                                                    if (vipView != null) {
                                                                                        return new hz((RelativeLayout) view, textView, roundImageView, linearLayout, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, imageView7, imageView8, imageView9, textView2, textView3, imageView10, linearLayout2, findChildViewById, linearLayout3, imageView11, vipView);
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
    public static hz c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static hz d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_post_comment_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f20927a;
    }
}
