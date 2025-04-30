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
/* compiled from: MgForumPostActivityItemCommentHeaderBinding.java */
/* loaded from: classes3.dex */
public final class ny implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23012a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f23013b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f23014c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f23015d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f23016e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f23017f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final View f23018g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f23019h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final Button f23020i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ImageView f23021j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final ImageView f23022k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final LinearLayout f23023l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f23024m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f23025n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final VipView f23026o;

    private ny(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull ImageView imageView, @NonNull View view, @NonNull ImageView imageView2, @NonNull Button button, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull LinearLayout linearLayout, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull VipView vipView) {
        this.f23012a = relativeLayout;
        this.f23013b = textView;
        this.f23014c = simpleDraweeView;
        this.f23015d = textView2;
        this.f23016e = textView3;
        this.f23017f = imageView;
        this.f23018g = view;
        this.f23019h = imageView2;
        this.f23020i = button;
        this.f23021j = imageView3;
        this.f23022k = imageView4;
        this.f23023l = linearLayout;
        this.f23024m = textView4;
        this.f23025n = textView5;
        this.f23026o = vipView;
    }

    @NonNull
    public static ny a(@NonNull View view) {
        int i2 = R.id.comment_add_time;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.comment_add_time);
        if (textView != null) {
            i2 = R.id.comment_avatar_src;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.comment_avatar_src);
            if (simpleDraweeView != null) {
                i2 = R.id.comment_floor;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.comment_floor);
                if (textView2 != null) {
                    i2 = R.id.comment_nickname;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.comment_nickname);
                    if (textView3 != null) {
                        i2 = R.id.comment_reply;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.comment_reply);
                        if (imageView != null) {
                            i2 = R.id.divider;
                            View findChildViewById = ViewBindings.findChildViewById(view, R.id.divider);
                            if (findChildViewById != null) {
                                i2 = R.id.flagBestAnswer;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.flagBestAnswer);
                                if (imageView2 != null) {
                                    i2 = R.id.forum_post_host;
                                    Button button = (Button) ViewBindings.findChildViewById(view, R.id.forum_post_host);
                                    if (button != null) {
                                        i2 = R.id.forum_post_moderator;
                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.forum_post_moderator);
                                        if (imageView3 != null) {
                                            i2 = R.id.isOfficial;
                                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.isOfficial);
                                            if (imageView4 != null) {
                                                i2 = R.id.ll_main;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_main);
                                                if (linearLayout != null) {
                                                    i2 = R.id.member_honor;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.member_honor);
                                                    if (textView4 != null) {
                                                        i2 = R.id.moderator;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.moderator);
                                                        if (textView5 != null) {
                                                            i2 = R.id.vipFlag;
                                                            VipView vipView = (VipView) ViewBindings.findChildViewById(view, R.id.vipFlag);
                                                            if (vipView != null) {
                                                                return new ny((RelativeLayout) view, textView, simpleDraweeView, textView2, textView3, imageView, findChildViewById, imageView2, button, imageView3, imageView4, linearLayout, textView4, textView5, vipView);
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
    public static ny c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ny d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_post_activity_item_comment_header, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23012a;
    }
}
