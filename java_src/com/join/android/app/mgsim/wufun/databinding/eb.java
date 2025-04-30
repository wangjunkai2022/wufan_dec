package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogDownloadMethodPromptBinding.java */
/* loaded from: classes3.dex */
public final class eb implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f19655a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f19656b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ConstraintLayout f19657c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ConstraintLayout f19658d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f19659e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f19660f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f19661g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f19662h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f19663i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final Group f19664j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final ImageView f19665k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final View f19666l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ConstraintLayout f19667m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f19668n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final ImageView f19669o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final View f19670p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final ConstraintLayout f19671q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final TextView f19672r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f19673s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final TextView f19674t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final TextView f19675u;

    private eb(@NonNull ConstraintLayout constraintLayout, @NonNull View view, @NonNull ConstraintLayout constraintLayout2, @NonNull ConstraintLayout constraintLayout3, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull Group group, @NonNull ImageView imageView3, @NonNull View view2, @NonNull ConstraintLayout constraintLayout4, @NonNull TextView textView4, @NonNull ImageView imageView4, @NonNull View view3, @NonNull ConstraintLayout constraintLayout5, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8) {
        this.f19655a = constraintLayout;
        this.f19656b = view;
        this.f19657c = constraintLayout2;
        this.f19658d = constraintLayout3;
        this.f19659e = textView;
        this.f19660f = imageView;
        this.f19661g = imageView2;
        this.f19662h = textView2;
        this.f19663i = textView3;
        this.f19664j = group;
        this.f19665k = imageView3;
        this.f19666l = view2;
        this.f19667m = constraintLayout4;
        this.f19668n = textView4;
        this.f19669o = imageView4;
        this.f19670p = view3;
        this.f19671q = constraintLayout5;
        this.f19672r = textView5;
        this.f19673s = textView6;
        this.f19674t = textView7;
        this.f19675u = textView8;
    }

    @NonNull
    public static eb a(@NonNull View view) {
        int i2 = R.id.close;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.close);
        if (findChildViewById != null) {
            i2 = R.id.constraintLayout;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.constraintLayout);
            if (constraintLayout != null) {
                ConstraintLayout constraintLayout2 = (ConstraintLayout) view;
                i2 = R.id.download;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.download);
                if (textView != null) {
                    i2 = R.id.imageView51;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView51);
                    if (imageView != null) {
                        i2 = R.id.imageView55;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView55);
                        if (imageView2 != null) {
                            i2 = R.id.link;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.link);
                            if (textView2 != null) {
                                i2 = R.id.name;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                                if (textView3 != null) {
                                    i2 = R.id.noPrompt;
                                    Group group = (Group) ViewBindings.findChildViewById(view, R.id.noPrompt);
                                    if (group != null) {
                                        i2 = R.id.noPromptCheck;
                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.noPromptCheck);
                                        if (imageView3 != null) {
                                            i2 = R.id.noPromptCheckPlaceholder;
                                            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.noPromptCheckPlaceholder);
                                            if (findChildViewById2 != null) {
                                                i2 = R.id.outside;
                                                ConstraintLayout constraintLayout3 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.outside);
                                                if (constraintLayout3 != null) {
                                                    i2 = R.id.protocol;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.protocol);
                                                    if (textView4 != null) {
                                                        i2 = R.id.protocolCheck;
                                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.protocolCheck);
                                                        if (imageView4 != null) {
                                                            i2 = R.id.protocolCheckPlaceholder;
                                                            View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.protocolCheckPlaceholder);
                                                            if (findChildViewById3 != null) {
                                                                i2 = R.id.res;
                                                                ConstraintLayout constraintLayout4 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.res);
                                                                if (constraintLayout4 != null) {
                                                                    i2 = R.id.subTitle;
                                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.subTitle);
                                                                    if (textView5 != null) {
                                                                        i2 = R.id.textView77;
                                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.textView77);
                                                                        if (textView6 != null) {
                                                                            i2 = R.id.title;
                                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                                                                            if (textView7 != null) {
                                                                                i2 = R.id.userProtocolTxt;
                                                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.userProtocolTxt);
                                                                                if (textView8 != null) {
                                                                                    return new eb(constraintLayout2, findChildViewById, constraintLayout, constraintLayout2, textView, imageView, imageView2, textView2, textView3, group, imageView3, findChildViewById2, constraintLayout3, textView4, imageView4, findChildViewById3, constraintLayout4, textView5, textView6, textView7, textView8);
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
    public static eb c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static eb d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_download_method_prompt, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f19655a;
    }
}
