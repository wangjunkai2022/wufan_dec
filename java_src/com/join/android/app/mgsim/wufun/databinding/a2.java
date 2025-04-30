package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ScrollTextViewLayout;
/* compiled from: ActivitySimulatorFastEntryBinding.java */
/* loaded from: classes3.dex */
public final class a2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f17955a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f17956b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final FrameLayout f17957c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f17958d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f17959e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RecyclerView f17960f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ScrollTextViewLayout f17961g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f17962h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f17963i;

    private a2(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout, @NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView2, @NonNull RecyclerView recyclerView, @NonNull ScrollTextViewLayout scrollTextViewLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f17955a = constraintLayout;
        this.f17956b = imageView;
        this.f17957c = frameLayout;
        this.f17958d = relativeLayout;
        this.f17959e = imageView2;
        this.f17960f = recyclerView;
        this.f17961g = scrollTextViewLayout;
        this.f17962h = textView;
        this.f17963i = textView2;
    }

    @NonNull
    public static a2 a(@NonNull View view) {
        int i2 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back_image);
        if (imageView != null) {
            i2 = R.id.flSearch;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.flSearch);
            if (frameLayout != null) {
                i2 = R.id.headview;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.headview);
                if (relativeLayout != null) {
                    i2 = R.id.ivSearchIcon;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.ivSearchIcon);
                    if (imageView2 != null) {
                        i2 = R.id.recyclerview;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recyclerview);
                        if (recyclerView != null) {
                            i2 = R.id.scroll_text_layout;
                            ScrollTextViewLayout scrollTextViewLayout = (ScrollTextViewLayout) ViewBindings.findChildViewById(view, R.id.scroll_text_layout);
                            if (scrollTextViewLayout != null) {
                                i2 = R.id.title_textview;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.title_textview);
                                if (textView != null) {
                                    i2 = R.id.tvSearch;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvSearch);
                                    if (textView2 != null) {
                                        return new a2((ConstraintLayout) view, imageView, frameLayout, relativeLayout, imageView2, recyclerView, scrollTextViewLayout, textView, textView2);
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
    public static a2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static a2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_simulator_fast_entry, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f17955a;
    }
}
