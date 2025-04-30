package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ActivityGameMain3Binding.java */
/* loaded from: classes3.dex */
public final class h0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f20619a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f20620b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f20621c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ConstraintLayout f20622d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final FrameLayout f20623e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final SimpleDraweeView f20624f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final GridView f20625g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final RecyclerView f20626h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f20627i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ImageView f20628j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final ConstraintLayout f20629k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final LinearLayout f20630l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f20631m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ImageView f20632n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f20633o;

    private h0(@NonNull ConstraintLayout constraintLayout, @NonNull View view, @NonNull ImageView imageView, @NonNull ConstraintLayout constraintLayout2, @NonNull FrameLayout frameLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull GridView gridView, @NonNull RecyclerView recyclerView, @NonNull TextView textView, @NonNull ImageView imageView2, @NonNull ConstraintLayout constraintLayout3, @NonNull LinearLayout linearLayout, @NonNull TextView textView2, @NonNull ImageView imageView3, @NonNull TextView textView3) {
        this.f20619a = constraintLayout;
        this.f20620b = view;
        this.f20621c = imageView;
        this.f20622d = constraintLayout2;
        this.f20623e = frameLayout;
        this.f20624f = simpleDraweeView;
        this.f20625g = gridView;
        this.f20626h = recyclerView;
        this.f20627i = textView;
        this.f20628j = imageView2;
        this.f20629k = constraintLayout3;
        this.f20630l = linearLayout;
        this.f20631m = textView2;
        this.f20632n = imageView3;
        this.f20633o = textView3;
    }

    @NonNull
    public static h0 a(@NonNull View view) {
        int i2 = R.id.back;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.back);
        if (findChildViewById != null) {
            i2 = R.id.battleHall;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.battleHall);
            if (imageView != null) {
                i2 = R.id.constraintLayout9;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.constraintLayout9);
                if (constraintLayout != null) {
                    i2 = R.id.frameLayout;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.frameLayout);
                    if (frameLayout != null) {
                        i2 = R.id.gameImg;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.gameImg);
                        if (simpleDraweeView != null) {
                            i2 = R.id.gameMainNewLeftGv;
                            GridView gridView = (GridView) ViewBindings.findChildViewById(view, R.id.gameMainNewLeftGv);
                            if (gridView != null) {
                                i2 = R.id.gameMainNewRv;
                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.gameMainNewRv);
                                if (recyclerView != null) {
                                    i2 = R.id.gameName;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.gameName);
                                    if (textView != null) {
                                        i2 = R.id.imageView80;
                                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView80);
                                        if (imageView2 != null) {
                                            i2 = R.id.leftContainer;
                                            ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.leftContainer);
                                            if (constraintLayout2 != null) {
                                                i2 = R.id.ll_loading;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_loading);
                                                if (linearLayout != null) {
                                                    i2 = R.id.roomCount;
                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.roomCount);
                                                    if (textView2 != null) {
                                                        i2 = R.id.startGame;
                                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.startGame);
                                                        if (imageView3 != null) {
                                                            i2 = R.id.tv_loading_info;
                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_loading_info);
                                                            if (textView3 != null) {
                                                                return new h0((ConstraintLayout) view, findChildViewById, imageView, constraintLayout, frameLayout, simpleDraweeView, gridView, recyclerView, textView, imageView2, constraintLayout2, linearLayout, textView2, imageView3, textView3);
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
    public static h0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static h0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_game_main_3, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f20619a;
    }
}
