package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
/* compiled from: ActivityCommentSelfListBinding.java */
/* loaded from: classes3.dex */
public final class n implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f22651a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f22652b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f22653c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f22654d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final XListView2 f22655e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ForumLoadingView f22656f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final RelativeLayout f22657g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f22658h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f22659i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final RelativeLayout f22660j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final View f22661k;

    private n(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull XListView2 xListView2, @NonNull ForumLoadingView forumLoadingView, @NonNull RelativeLayout relativeLayout3, @NonNull TextView textView, @NonNull TextView textView2, @NonNull RelativeLayout relativeLayout4, @NonNull View view) {
        this.f22651a = relativeLayout;
        this.f22652b = relativeLayout2;
        this.f22653c = imageView;
        this.f22654d = imageView2;
        this.f22655e = xListView2;
        this.f22656f = forumLoadingView;
        this.f22657g = relativeLayout3;
        this.f22658h = textView;
        this.f22659i = textView2;
        this.f22660j = relativeLayout4;
        this.f22661k = view;
    }

    @NonNull
    public static n a(@NonNull View view) {
        int i2 = R.id.actionbarLayout;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.actionbarLayout);
        if (relativeLayout != null) {
            i2 = R.id.back;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back);
            if (imageView != null) {
                i2 = R.id.back_image;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.back_image);
                if (imageView2 != null) {
                    i2 = R.id.listview;
                    XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.listview);
                    if (xListView2 != null) {
                        i2 = R.id.loadingView;
                        ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(view, R.id.loadingView);
                        if (forumLoadingView != null) {
                            i2 = R.id.newTitle;
                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.newTitle);
                            if (relativeLayout2 != null) {
                                i2 = R.id.setting2;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.setting2);
                                if (textView != null) {
                                    i2 = R.id.setting3;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.setting3);
                                    if (textView2 != null) {
                                        i2 = R.id.f17873t;
                                        RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.f17873t);
                                        if (relativeLayout3 != null) {
                                            i2 = R.id.titleStatubar;
                                            View findChildViewById = ViewBindings.findChildViewById(view, R.id.titleStatubar);
                                            if (findChildViewById != null) {
                                                return new n((RelativeLayout) view, relativeLayout, imageView, imageView2, xListView2, forumLoadingView, relativeLayout2, textView, textView2, relativeLayout3, findChildViewById);
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
    public static n c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static n d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_comment_self_list, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f22651a;
    }
}
