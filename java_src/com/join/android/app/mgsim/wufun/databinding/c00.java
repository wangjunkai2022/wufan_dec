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
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumSearchItemPostFooterBinding.java */
/* loaded from: classes3.dex */
public final class c00 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18682a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f18683b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f18684c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f18685d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f18686e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f18687f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f18688g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f18689h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f18690i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final View f18691j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f18692k;

    private c00(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout3, @NonNull TextView textView3, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull View view, @NonNull LinearLayout linearLayout4) {
        this.f18682a = linearLayout;
        this.f18683b = linearLayout2;
        this.f18684c = textView;
        this.f18685d = textView2;
        this.f18686e = imageView;
        this.f18687f = linearLayout3;
        this.f18688g = textView3;
        this.f18689h = imageView2;
        this.f18690i = imageView3;
        this.f18691j = view;
        this.f18692k = linearLayout4;
    }

    @NonNull
    public static c00 a(@NonNull View view) {
        int i2 = R.id.commentParent;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.commentParent);
        if (linearLayout != null) {
            i2 = R.id.forum_post_commit;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.forum_post_commit);
            if (textView != null) {
                i2 = R.id.forum_post_praise;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.forum_post_praise);
                if (textView2 != null) {
                    i2 = R.id.forum_post_praise_icon;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.forum_post_praise_icon);
                    if (imageView != null) {
                        i2 = R.id.forum_post_praise_parent;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.forum_post_praise_parent);
                        if (linearLayout2 != null) {
                            i2 = R.id.forum_post_view;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.forum_post_view);
                            if (textView3 != null) {
                                i2 = R.id.imageView10;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView10);
                                if (imageView2 != null) {
                                    i2 = R.id.imageView9;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView9);
                                    if (imageView3 != null) {
                                        i2 = R.id.post_footer_divider;
                                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.post_footer_divider);
                                        if (findChildViewById != null) {
                                            i2 = R.id.viewParent;
                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.viewParent);
                                            if (linearLayout3 != null) {
                                                return new c00((LinearLayout) view, linearLayout, textView, textView2, imageView, linearLayout2, textView3, imageView2, imageView3, findChildViewById, linearLayout3);
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
    public static c00 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static c00 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_search_item_post_footer, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18682a;
    }
}
