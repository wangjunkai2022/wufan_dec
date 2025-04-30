package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumPostActivityItemPostImageThumbnailBinding.java */
/* loaded from: classes3.dex */
public final class zy implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f27347a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f27348b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f27349c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f27350d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f27351e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final SimpleDraweeView f27352f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SimpleDraweeView f27353g;

    private zy(@NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull SimpleDraweeView simpleDraweeView3) {
        this.f27347a = linearLayout;
        this.f27348b = relativeLayout;
        this.f27349c = linearLayout2;
        this.f27350d = textView;
        this.f27351e = simpleDraweeView;
        this.f27352f = simpleDraweeView2;
        this.f27353g = simpleDraweeView3;
    }

    @NonNull
    public static zy a(@NonNull View view) {
        int i2 = R.id.forum_post_media_container;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.forum_post_media_container);
        if (relativeLayout != null) {
            i2 = R.id.forum_post_media_pic_main;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.forum_post_media_pic_main);
            if (linearLayout != null) {
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
                                return new zy((LinearLayout) view, relativeLayout, linearLayout, textView, simpleDraweeView, simpleDraweeView2, simpleDraweeView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static zy c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static zy d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_post_activity_item_post_image_thumbnail, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f27347a;
    }
}
