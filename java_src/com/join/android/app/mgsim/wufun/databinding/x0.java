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
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MainLabelHeaderView;
import com.join.mgps.customview.SlidingTabLayout4;
import ru.noties.scrollable.ScrollableLayout;
/* compiled from: ActivityMainLabelBinding.java */
/* loaded from: classes3.dex */
public final class x0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f26324a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f26325b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f26326c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f26327d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f26328e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f26329f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final MainLabelHeaderView f26330g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final RelativeLayout f26331h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final RelativeLayout f26332i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final RelativeLayout f26333j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final ScrollableLayout f26334k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final SlidingTabLayout4 f26335l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f26336m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ViewPager f26337n;

    private x0(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull Button button, @NonNull Button button2, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull MainLabelHeaderView mainLabelHeaderView, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull RelativeLayout relativeLayout4, @NonNull ScrollableLayout scrollableLayout, @NonNull SlidingTabLayout4 slidingTabLayout4, @NonNull TextView textView, @NonNull ViewPager viewPager) {
        this.f26324a = relativeLayout;
        this.f26325b = imageView;
        this.f26326c = button;
        this.f26327d = button2;
        this.f26328e = view;
        this.f26329f = linearLayout;
        this.f26330g = mainLabelHeaderView;
        this.f26331h = relativeLayout2;
        this.f26332i = relativeLayout3;
        this.f26333j = relativeLayout4;
        this.f26334k = scrollableLayout;
        this.f26335l = slidingTabLayout4;
        this.f26336m = textView;
        this.f26337n = viewPager;
    }

    @NonNull
    public static x0 a(@NonNull View view) {
        int i2 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back_image);
        if (imageView != null) {
            i2 = R.id.btnFocus;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.btnFocus);
            if (button != null) {
                i2 = R.id.btnSendPosts;
                Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.btnSendPosts);
                if (button2 != null) {
                    i2 = R.id.line;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
                    if (findChildViewById != null) {
                        i2 = R.id.ll_multi_type_posts;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_multi_type_posts);
                        if (linearLayout != null) {
                            i2 = R.id.mScrollableHeader;
                            MainLabelHeaderView mainLabelHeaderView = (MainLabelHeaderView) ViewBindings.findChildViewById(view, R.id.mScrollableHeader);
                            if (mainLabelHeaderView != null) {
                                i2 = R.id.rl_main;
                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_main);
                                if (relativeLayout != null) {
                                    i2 = R.id.rlOrderBy;
                                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rlOrderBy);
                                    if (relativeLayout2 != null) {
                                        i2 = R.id.rl_title;
                                        RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_title);
                                        if (relativeLayout3 != null) {
                                            i2 = R.id.scrollableLayout;
                                            ScrollableLayout scrollableLayout = (ScrollableLayout) ViewBindings.findChildViewById(view, R.id.scrollableLayout);
                                            if (scrollableLayout != null) {
                                                i2 = R.id.tabsLayout;
                                                SlidingTabLayout4 slidingTabLayout4 = (SlidingTabLayout4) ViewBindings.findChildViewById(view, R.id.tabsLayout);
                                                if (slidingTabLayout4 != null) {
                                                    i2 = R.id.tv_alreadyJoin;
                                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_alreadyJoin);
                                                    if (textView != null) {
                                                        i2 = R.id.viewPager;
                                                        ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.viewPager);
                                                        if (viewPager != null) {
                                                            return new x0((RelativeLayout) view, imageView, button, button2, findChildViewById, linearLayout, mainLabelHeaderView, relativeLayout, relativeLayout2, relativeLayout3, scrollableLayout, slidingTabLayout4, textView, viewPager);
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
    public static x0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static x0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_main_label, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f26324a;
    }
}
