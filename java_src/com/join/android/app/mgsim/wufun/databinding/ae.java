package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DownloadPathSetDialogLayoutBinding.java */
/* loaded from: classes3.dex */
public final class ae implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18129a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f18130b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final CheckBox f18131c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final CheckBox f18132d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f18133e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f18134f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final RelativeLayout f18135g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f18136h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f18137i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final LinearLayout f18138j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final RelativeLayout f18139k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f18140l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f18141m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f18142n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final View f18143o;

    private ae(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull CheckBox checkBox, @NonNull CheckBox checkBox2, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout3, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull View view) {
        this.f18129a = linearLayout;
        this.f18130b = textView;
        this.f18131c = checkBox;
        this.f18132d = checkBox2;
        this.f18133e = imageView;
        this.f18134f = linearLayout2;
        this.f18135g = relativeLayout;
        this.f18136h = textView2;
        this.f18137i = textView3;
        this.f18138j = linearLayout3;
        this.f18139k = relativeLayout2;
        this.f18140l = textView4;
        this.f18141m = textView5;
        this.f18142n = textView6;
        this.f18143o = view;
    }

    @NonNull
    public static ae a(@NonNull View view) {
        int i2 = R.id.changeSdkard;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.changeSdkard);
        if (textView != null) {
            i2 = R.id.checkBoxSd;
            CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.checkBoxSd);
            if (checkBox != null) {
                i2 = R.id.checkBoxlocal;
                CheckBox checkBox2 = (CheckBox) ViewBindings.findChildViewById(view, R.id.checkBoxlocal);
                if (checkBox2 != null) {
                    i2 = R.id.imageView;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView);
                    if (imageView != null) {
                        i2 = R.id.linearLayout;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout);
                        if (linearLayout != null) {
                            i2 = R.id.localPathLayout;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.localPathLayout);
                            if (relativeLayout != null) {
                                i2 = R.id.localpath;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.localpath);
                                if (textView2 != null) {
                                    i2 = R.id.localsize;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.localsize);
                                    if (textView3 != null) {
                                        i2 = R.id.noticelayout;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.noticelayout);
                                        if (linearLayout2 != null) {
                                            i2 = R.id.sdPathLayout;
                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.sdPathLayout);
                                            if (relativeLayout2 != null) {
                                                i2 = R.id.sdSize;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.sdSize);
                                                if (textView4 != null) {
                                                    i2 = R.id.sdpath;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.sdpath);
                                                    if (textView5 != null) {
                                                        i2 = R.id.textView;
                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.textView);
                                                        if (textView6 != null) {
                                                            i2 = R.id.textView2;
                                                            View findChildViewById = ViewBindings.findChildViewById(view, R.id.textView2);
                                                            if (findChildViewById != null) {
                                                                return new ae((LinearLayout) view, textView, checkBox, checkBox2, imageView, linearLayout, relativeLayout, textView2, textView3, linearLayout2, relativeLayout2, textView4, textView5, textView6, findChildViewById);
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
    public static ae c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ae d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.download_path_set_dialog_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18129a;
    }
}
