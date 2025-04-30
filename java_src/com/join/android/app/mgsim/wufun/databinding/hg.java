package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.control.RhythmLayout;
import com.join.mgps.pulltorefresh.extras.viewpager.PullToRefreshViewPager;
/* compiled from: FragmentDiscoverappBinding.java */
/* loaded from: classes3.dex */
public final class hg implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f20776a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RhythmLayout f20777b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageButton f20778c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f20779d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final PullToRefreshViewPager f20780e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f20781f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f20782g;

    private hg(@NonNull RelativeLayout relativeLayout, @NonNull RhythmLayout rhythmLayout, @NonNull ImageButton imageButton, @NonNull RelativeLayout relativeLayout2, @NonNull PullToRefreshViewPager pullToRefreshViewPager, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f20776a = relativeLayout;
        this.f20777b = rhythmLayout;
        this.f20778c = imageButton;
        this.f20779d = relativeLayout2;
        this.f20780e = pullToRefreshViewPager;
        this.f20781f = textView;
        this.f20782g = textView2;
    }

    @NonNull
    public static hg a(@NonNull View view) {
        int i2 = R.id.box_rhythm;
        RhythmLayout rhythmLayout = (RhythmLayout) ViewBindings.findChildViewById(view, R.id.box_rhythm);
        if (rhythmLayout != null) {
            i2 = R.id.btn_rocket_to_head;
            ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.btn_rocket_to_head);
            if (imageButton != null) {
                RelativeLayout relativeLayout = (RelativeLayout) view;
                i2 = R.id.pager;
                PullToRefreshViewPager pullToRefreshViewPager = (PullToRefreshViewPager) ViewBindings.findChildViewById(view, R.id.pager);
                if (pullToRefreshViewPager != null) {
                    i2 = R.id.text_time_first;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.text_time_first);
                    if (textView != null) {
                        i2 = R.id.text_time_second;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.text_time_second);
                        if (textView2 != null) {
                            return new hg(relativeLayout, rhythmLayout, imageButton, relativeLayout, pullToRefreshViewPager, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static hg c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static hg d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_discoverapp, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f20776a;
    }
}
