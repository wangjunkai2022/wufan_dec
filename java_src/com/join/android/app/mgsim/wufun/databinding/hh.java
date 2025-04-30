package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: FragmentMyGameItemGameBinding.java */
/* loaded from: classes3.dex */
public final class hh implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f20783a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f20784b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20785c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f20786d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f20787e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final SimpleDraweeView f20788f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f20789g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f20790h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final View f20791i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final View f20792j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f20793k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ImageView f20794l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ProgressBar f20795m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f20796n;

    private hh(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull View view, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView, @NonNull TextView textView4, @NonNull View view2, @NonNull View view3, @NonNull TextView textView5, @NonNull ImageView imageView2, @NonNull ProgressBar progressBar, @NonNull TextView textView6) {
        this.f20783a = constraintLayout;
        this.f20784b = textView;
        this.f20785c = textView2;
        this.f20786d = textView3;
        this.f20787e = view;
        this.f20788f = simpleDraweeView;
        this.f20789g = imageView;
        this.f20790h = textView4;
        this.f20791i = view2;
        this.f20792j = view3;
        this.f20793k = textView5;
        this.f20794l = imageView2;
        this.f20795m = progressBar;
        this.f20796n = textView6;
    }

    @NonNull
    public static hh a(@NonNull View view) {
        int i2 = R.id.addShortcut;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.addShortcut);
        if (textView != null) {
            i2 = R.id.count;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.count);
            if (textView2 != null) {
                i2 = R.id.desc;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.desc);
                if (textView3 != null) {
                    i2 = R.id.focus;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.focus);
                    if (findChildViewById != null) {
                        i2 = R.id.icon;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon);
                        if (simpleDraweeView != null) {
                            i2 = R.id.imageView61;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView61);
                            if (imageView != null) {
                                i2 = R.id.install;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.install);
                                if (textView4 != null) {
                                    i2 = R.id.line;
                                    View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.line);
                                    if (findChildViewById2 != null) {
                                        i2 = R.id.more;
                                        View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.more);
                                        if (findChildViewById3 != null) {
                                            i2 = R.id.name;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                                            if (textView5 != null) {
                                                i2 = R.id.notOpen;
                                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.notOpen);
                                                if (imageView2 != null) {
                                                    i2 = R.id.progressBar;
                                                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar);
                                                    if (progressBar != null) {
                                                        i2 = R.id.speedUp;
                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.speedUp);
                                                        if (textView6 != null) {
                                                            return new hh((ConstraintLayout) view, textView, textView2, textView3, findChildViewById, simpleDraweeView, imageView, textView4, findChildViewById2, findChildViewById3, textView5, imageView2, progressBar, textView6);
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
    public static hh c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static hh d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_my_game_item_game, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f20783a;
    }
}
