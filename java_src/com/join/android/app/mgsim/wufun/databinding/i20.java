package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MyFlowLayout;
import com.join.mgps.customview.ViewPagerWithADs;
import com.join.mgps.customview.WrapContentListView;
import java.util.Objects;
/* compiled from: MgViewForumIndexHeaderBinding.java */
/* loaded from: classes3.dex */
public final class i20 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final View f21008a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ViewPagerWithADs f21009b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final MyFlowLayout f21010c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f21011d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f21012e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f21013f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f21014g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f21015h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f21016i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final LinearLayout f21017j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f21018k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final LinearLayout f21019l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ImageView f21020m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f21021n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final RelativeLayout f21022o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final LinearLayout f21023p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final LinearLayout f21024q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final RelativeLayout f21025r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final RelativeLayout f21026s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final TextView f21027t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final TextView f21028u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final TextView f21029v;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    public final TextView f21030w;
    @NonNull

    /* renamed from: x  reason: collision with root package name */
    public final TextView f21031x;
    @NonNull

    /* renamed from: y  reason: collision with root package name */
    public final TextView f21032y;
    @NonNull

    /* renamed from: z  reason: collision with root package name */
    public final WrapContentListView f21033z;

    private i20(@NonNull View view, @NonNull ViewPagerWithADs viewPagerWithADs, @NonNull MyFlowLayout myFlowLayout, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull ImageView imageView3, @NonNull TextView textView3, @NonNull RelativeLayout relativeLayout2, @NonNull LinearLayout linearLayout5, @NonNull LinearLayout linearLayout6, @NonNull RelativeLayout relativeLayout3, @NonNull RelativeLayout relativeLayout4, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9, @NonNull WrapContentListView wrapContentListView) {
        this.f21008a = view;
        this.f21009b = viewPagerWithADs;
        this.f21010c = myFlowLayout;
        this.f21011d = relativeLayout;
        this.f21012e = textView;
        this.f21013f = textView2;
        this.f21014g = imageView;
        this.f21015h = imageView2;
        this.f21016i = linearLayout;
        this.f21017j = linearLayout2;
        this.f21018k = linearLayout3;
        this.f21019l = linearLayout4;
        this.f21020m = imageView3;
        this.f21021n = textView3;
        this.f21022o = relativeLayout2;
        this.f21023p = linearLayout5;
        this.f21024q = linearLayout6;
        this.f21025r = relativeLayout3;
        this.f21026s = relativeLayout4;
        this.f21027t = textView4;
        this.f21028u = textView5;
        this.f21029v = textView6;
        this.f21030w = textView7;
        this.f21031x = textView8;
        this.f21032y = textView9;
        this.f21033z = wrapContentListView;
    }

    @NonNull
    public static i20 a(@NonNull View view) {
        int i2 = R.id.ad_viewpager;
        ViewPagerWithADs viewPagerWithADs = (ViewPagerWithADs) ViewBindings.findChildViewById(view, R.id.ad_viewpager);
        if (viewPagerWithADs != null) {
            i2 = R.id.flowLayout;
            MyFlowLayout myFlowLayout = (MyFlowLayout) ViewBindings.findChildViewById(view, R.id.flowLayout);
            if (myFlowLayout != null) {
                i2 = R.id.forumExtFunc;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.forumExtFunc);
                if (relativeLayout != null) {
                    i2 = R.id.forum_more;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.forum_more);
                    if (textView != null) {
                        i2 = R.id.forumRecomm;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.forumRecomm);
                        if (textView2 != null) {
                            i2 = R.id.imageView5;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView5);
                            if (imageView != null) {
                                i2 = R.id.ivRefresh;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.ivRefresh);
                                if (imageView2 != null) {
                                    i2 = R.id.llForumMore;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llForumMore);
                                    if (linearLayout != null) {
                                        i2 = R.id.llGroupAll;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llGroupAll);
                                        if (linearLayout2 != null) {
                                            i2 = R.id.llMyForum;
                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llMyForum);
                                            if (linearLayout3 != null) {
                                                i2 = R.id.more;
                                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.more);
                                                if (linearLayout4 != null) {
                                                    i2 = R.id.moreFunc;
                                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.moreFunc);
                                                    if (imageView3 != null) {
                                                        i2 = R.id.moreTv;
                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.moreTv);
                                                        if (textView3 != null) {
                                                            i2 = R.id.refreshTag;
                                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.refreshTag);
                                                            if (relativeLayout2 != null) {
                                                                i2 = R.id.rlTagFollow;
                                                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.rlTagFollow);
                                                                if (linearLayout5 != null) {
                                                                    i2 = R.id.rlTagFollowB;
                                                                    LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.rlTagFollowB);
                                                                    if (linearLayout6 != null) {
                                                                        i2 = R.id.rlTagTip;
                                                                        RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rlTagTip);
                                                                        if (relativeLayout3 != null) {
                                                                            i2 = R.id.section_follow;
                                                                            RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.section_follow);
                                                                            if (relativeLayout4 != null) {
                                                                                i2 = R.id.textView;
                                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.textView);
                                                                                if (textView4 != null) {
                                                                                    i2 = R.id.textView64;
                                                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.textView64);
                                                                                    if (textView5 != null) {
                                                                                        i2 = R.id.textView66;
                                                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.textView66);
                                                                                        if (textView6 != null) {
                                                                                            i2 = R.id.textView67;
                                                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.textView67);
                                                                                            if (textView7 != null) {
                                                                                                i2 = R.id.textView68;
                                                                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.textView68);
                                                                                                if (textView8 != null) {
                                                                                                    i2 = R.id.title;
                                                                                                    TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                                                                                                    if (textView9 != null) {
                                                                                                        i2 = R.id.wrapListView;
                                                                                                        WrapContentListView wrapContentListView = (WrapContentListView) ViewBindings.findChildViewById(view, R.id.wrapListView);
                                                                                                        if (wrapContentListView != null) {
                                                                                                            return new i20(view, viewPagerWithADs, myFlowLayout, relativeLayout, textView, textView2, imageView, imageView2, linearLayout, linearLayout2, linearLayout3, linearLayout4, imageView3, textView3, relativeLayout2, linearLayout5, linearLayout6, relativeLayout3, relativeLayout4, textView4, textView5, textView6, textView7, textView8, textView9, wrapContentListView);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static i20 b(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.mg_view_forum_index_header, viewGroup);
        return a(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f21008a;
    }
}
