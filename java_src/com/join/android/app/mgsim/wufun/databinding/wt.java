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
/* compiled from: LayoutMainLabelHeaderBinding.java */
/* loaded from: classes3.dex */
public final class wt implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26250a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f26251b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f26252c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f26253d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f26254e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f26255f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f26256g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final View f26257h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final View f26258i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final RelativeLayout f26259j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final RelativeLayout f26260k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f26261l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f26262m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f26263n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f26264o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f26265p;

    private wt(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull ImageView imageView2, @NonNull View view, @NonNull LinearLayout linearLayout2, @NonNull View view2, @NonNull View view3, @NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f26250a = linearLayout;
        this.f26251b = imageView;
        this.f26252c = simpleDraweeView;
        this.f26253d = simpleDraweeView2;
        this.f26254e = imageView2;
        this.f26255f = view;
        this.f26256g = linearLayout2;
        this.f26257h = view2;
        this.f26258i = view3;
        this.f26259j = relativeLayout;
        this.f26260k = relativeLayout2;
        this.f26261l = textView;
        this.f26262m = textView2;
        this.f26263n = textView3;
        this.f26264o = textView4;
        this.f26265p = textView5;
    }

    @NonNull
    public static wt a(@NonNull View view) {
        int i2 = R.id.iv_close_send_posting;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_close_send_posting);
        if (imageView != null) {
            i2 = R.id.iv_label_administrator_avatar;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.iv_label_administrator_avatar);
            if (simpleDraweeView != null) {
                i2 = R.id.iv_label_icon;
                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.iv_label_icon);
                if (simpleDraweeView2 != null) {
                    i2 = R.id.iv_posts_filter_switch;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_posts_filter_switch);
                    if (imageView2 != null) {
                        i2 = R.id.line;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
                        if (findChildViewById != null) {
                            i2 = R.id.ll_label_property;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_label_property);
                            if (linearLayout != null) {
                                i2 = R.id.rl_last;
                                View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.rl_last);
                                if (findChildViewById2 != null) {
                                    i2 = R.id.rl_mid;
                                    View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.rl_mid);
                                    if (findChildViewById3 != null) {
                                        i2 = R.id.rl_posts_filter;
                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_posts_filter);
                                        if (relativeLayout != null) {
                                            i2 = R.id.rl_sort;
                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_sort);
                                            if (relativeLayout2 != null) {
                                                i2 = R.id.tv_label_administrator_nickname;
                                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_label_administrator_nickname);
                                                if (textView != null) {
                                                    i2 = R.id.tv_label_introduction;
                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_label_introduction);
                                                    if (textView2 != null) {
                                                        i2 = R.id.tv_label_name;
                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_label_name);
                                                        if (textView3 != null) {
                                                            i2 = R.id.tv_posts_counts;
                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_posts_counts);
                                                            if (textView4 != null) {
                                                                i2 = R.id.tv_posts_filter_name;
                                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_posts_filter_name);
                                                                if (textView5 != null) {
                                                                    return new wt((LinearLayout) view, imageView, simpleDraweeView, simpleDraweeView2, imageView2, findChildViewById, linearLayout, findChildViewById2, findChildViewById3, relativeLayout, relativeLayout2, textView, textView2, textView3, textView4, textView5);
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
    public static wt c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static wt d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_main_label_header, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26250a;
    }
}
