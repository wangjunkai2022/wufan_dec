package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgFItemPostFooterBinding.java */
/* loaded from: classes3.dex */
public final class xw implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26680a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f26681b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f26682c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f26683d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f26684e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f26685f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f26686g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f26687h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f26688i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f26689j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final ImageView f26690k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ImageView f26691l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ImageView f26692m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f26693n;

    private xw(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull View view, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout3, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull TextView textView5) {
        this.f26680a = linearLayout;
        this.f26681b = simpleDraweeView;
        this.f26682c = textView;
        this.f26683d = view;
        this.f26684e = linearLayout2;
        this.f26685f = imageView;
        this.f26686g = linearLayout3;
        this.f26687h = textView2;
        this.f26688i = textView3;
        this.f26689j = textView4;
        this.f26690k = imageView2;
        this.f26691l = imageView3;
        this.f26692m = imageView4;
        this.f26693n = textView5;
    }

    @NonNull
    public static xw a(@NonNull View view) {
        int i2 = R.id.avatar;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.avatar);
        if (simpleDraweeView != null) {
            i2 = R.id.commentCount;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.commentCount);
            if (textView != null) {
                i2 = R.id.divider;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.divider);
                if (findChildViewById != null) {
                    i2 = R.id.forum_name_parent;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.forum_name_parent);
                    if (linearLayout != null) {
                        i2 = R.id.forum_post_praise_icon;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.forum_post_praise_icon);
                        if (imageView != null) {
                            i2 = R.id.forum_post_praise_parent;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.forum_post_praise_parent);
                            if (linearLayout2 != null) {
                                i2 = R.id.forum_post_view;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.forum_post_view);
                                if (textView2 != null) {
                                    i2 = R.id.groupName;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.groupName);
                                    if (textView3 != null) {
                                        i2 = R.id.hostName;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.hostName);
                                        if (textView4 != null) {
                                            i2 = R.id.imageView10;
                                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView10);
                                            if (imageView2 != null) {
                                                i2 = R.id.imageView9;
                                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView9);
                                                if (imageView3 != null) {
                                                    i2 = R.id.indicator;
                                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.indicator);
                                                    if (imageView4 != null) {
                                                        i2 = R.id.likeCount;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.likeCount);
                                                        if (textView5 != null) {
                                                            return new xw((LinearLayout) view, simpleDraweeView, textView, findChildViewById, linearLayout, imageView, linearLayout2, textView2, textView3, textView4, imageView2, imageView3, imageView4, textView5);
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
    public static xw c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static xw d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_f_item_post_footer, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26680a;
    }
}
