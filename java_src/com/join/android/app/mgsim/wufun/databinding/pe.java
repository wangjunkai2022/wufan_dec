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
/* compiled from: FaceTransferHomepageActivityBinding.java */
/* loaded from: classes3.dex */
public final class pe implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23613a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f23614b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f23615c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f23616d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final pc0 f23617e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f23618f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f23619g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f23620h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f23621i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final RelativeLayout f23622j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final RelativeLayout f23623k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ImageView f23624l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f23625m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f23626n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f23627o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f23628p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f23629q;

    private pe(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull pc0 pc0Var, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull RelativeLayout relativeLayout3, @NonNull RelativeLayout relativeLayout4, @NonNull ImageView imageView5, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7) {
        this.f23613a = relativeLayout;
        this.f23614b = relativeLayout2;
        this.f23615c = textView;
        this.f23616d = textView2;
        this.f23617e = pc0Var;
        this.f23618f = imageView;
        this.f23619g = imageView2;
        this.f23620h = imageView3;
        this.f23621i = imageView4;
        this.f23622j = relativeLayout3;
        this.f23623k = relativeLayout4;
        this.f23624l = imageView5;
        this.f23625m = textView3;
        this.f23626n = textView4;
        this.f23627o = textView5;
        this.f23628p = textView6;
        this.f23629q = textView7;
    }

    @NonNull
    public static pe a(@NonNull View view) {
        int i2 = R.id.face_transfer_declare_rlayout;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.face_transfer_declare_rlayout);
        if (relativeLayout != null) {
            i2 = R.id.face_transfer_declare_txt;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.face_transfer_declare_txt);
            if (textView != null) {
                i2 = R.id.face_transfer_declare_txt_bottom;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.face_transfer_declare_txt_bottom);
                if (textView2 != null) {
                    i2 = R.id.face_transfer_homepage_title;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.face_transfer_homepage_title);
                    if (findChildViewById != null) {
                        pc0 a4 = pc0.a(findChildViewById);
                        i2 = R.id.face_transfer_img_create_hotspot;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.face_transfer_img_create_hotspot);
                        if (imageView != null) {
                            i2 = R.id.face_transfer_img_join_hotspot;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.face_transfer_img_join_hotspot);
                            if (imageView2 != null) {
                                i2 = R.id.face_transfer_left_img;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.face_transfer_left_img);
                                if (imageView3 != null) {
                                    i2 = R.id.face_transfer_mid_img;
                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.face_transfer_mid_img);
                                    if (imageView4 != null) {
                                        i2 = R.id.face_transfer_rel_create_hotspot;
                                        RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.face_transfer_rel_create_hotspot);
                                        if (relativeLayout2 != null) {
                                            i2 = R.id.face_transfer_rel_join_hotspot;
                                            RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.face_transfer_rel_join_hotspot);
                                            if (relativeLayout3 != null) {
                                                i2 = R.id.face_transfer_right_img;
                                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.face_transfer_right_img);
                                                if (imageView5 != null) {
                                                    i2 = R.id.face_transfer_text_create_hotspot;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.face_transfer_text_create_hotspot);
                                                    if (textView3 != null) {
                                                        i2 = R.id.face_transfer_text_join_hotspot;
                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.face_transfer_text_join_hotspot);
                                                        if (textView4 != null) {
                                                            i2 = R.id.face_transfer_text_phone1;
                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.face_transfer_text_phone1);
                                                            if (textView5 != null) {
                                                                i2 = R.id.face_transfer_text_phone2;
                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.face_transfer_text_phone2);
                                                                if (textView6 != null) {
                                                                    i2 = R.id.nopapaTip;
                                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.nopapaTip);
                                                                    if (textView7 != null) {
                                                                        return new pe((RelativeLayout) view, relativeLayout, textView, textView2, a4, imageView, imageView2, imageView3, imageView4, relativeLayout2, relativeLayout3, imageView5, textView3, textView4, textView5, textView6, textView7);
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
    public static pe c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static pe d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.face_transfer_homepage_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23613a;
    }
}
