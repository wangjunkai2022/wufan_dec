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
/* compiled from: GameDetialItemStrategyItemimage3Binding.java */
/* loaded from: classes3.dex */
public final class xi implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26590a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f26591b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f26592c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f26593d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f26594e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f26595f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SimpleDraweeView f26596g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final SimpleDraweeView f26597h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final SimpleDraweeView f26598i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final View f26599j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f26600k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f26601l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f26602m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final LinearLayout f26603n;

    private xi(@NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull SimpleDraweeView simpleDraweeView3, @NonNull View view, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull LinearLayout linearLayout3) {
        this.f26590a = linearLayout;
        this.f26591b = relativeLayout;
        this.f26592c = linearLayout2;
        this.f26593d = imageView;
        this.f26594e = imageView2;
        this.f26595f = textView;
        this.f26596g = simpleDraweeView;
        this.f26597h = simpleDraweeView2;
        this.f26598i = simpleDraweeView3;
        this.f26599j = view;
        this.f26600k = textView2;
        this.f26601l = textView3;
        this.f26602m = textView4;
        this.f26603n = linearLayout3;
    }

    @NonNull
    public static xi a(@NonNull View view) {
        int i2 = R.id.forum_post_media_container;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.forum_post_media_container);
        if (relativeLayout != null) {
            i2 = R.id.forum_post_media_pic_main;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.forum_post_media_pic_main);
            if (linearLayout != null) {
                i2 = R.id.imageView16;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView16);
                if (imageView != null) {
                    i2 = R.id.imageView17;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView17);
                    if (imageView2 != null) {
                        i2 = R.id.images_count;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.images_count);
                        if (textView != null) {
                            i2 = R.id.img_m_1;
                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.img_m_1);
                            if (simpleDraweeView != null) {
                                i2 = R.id.img_m_2;
                                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.img_m_2);
                                if (simpleDraweeView2 != null) {
                                    i2 = R.id.img_m_3;
                                    SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.img_m_3);
                                    if (simpleDraweeView3 != null) {
                                        i2 = R.id.line;
                                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
                                        if (findChildViewById != null) {
                                            i2 = R.id.pubtime;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.pubtime);
                                            if (textView2 != null) {
                                                i2 = R.id.pv;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.pv);
                                                if (textView3 != null) {
                                                    i2 = R.id.uv;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.uv);
                                                    if (textView4 != null) {
                                                        i2 = R.id.viewBottom;
                                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.viewBottom);
                                                        if (linearLayout2 != null) {
                                                            return new xi((LinearLayout) view, relativeLayout, linearLayout, imageView, imageView2, textView, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, findChildViewById, textView2, textView3, textView4, linearLayout2);
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
    public static xi c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static xi d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.game_detial_item_strategy_itemimage3, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26590a;
    }
}
