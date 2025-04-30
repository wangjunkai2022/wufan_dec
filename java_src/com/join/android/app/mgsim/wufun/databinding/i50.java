package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: NetWholeInviteDialogBinding.java */
/* loaded from: classes3.dex */
public final class i50 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21048a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f21049b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f21050c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21051d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f21052e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f21053f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f21054g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f21055h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f21056i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final LinearLayout f21057j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final SimpleDraweeView f21058k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final LinearLayout f21059l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f21060m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f21061n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final ImageView f21062o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final SimpleDraweeView f21063p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final LinearLayout f21064q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final TextView f21065r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f21066s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final Button f21067t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final TextView f21068u;

    private i50(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull Button button2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout4, @NonNull SimpleDraweeView simpleDraweeView, @NonNull LinearLayout linearLayout5, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull ImageView imageView2, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull LinearLayout linearLayout6, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull Button button3, @NonNull TextView textView8) {
        this.f21048a = linearLayout;
        this.f21049b = button;
        this.f21050c = button2;
        this.f21051d = textView;
        this.f21052e = textView2;
        this.f21053f = textView3;
        this.f21054g = linearLayout2;
        this.f21055h = linearLayout3;
        this.f21056i = imageView;
        this.f21057j = linearLayout4;
        this.f21058k = simpleDraweeView;
        this.f21059l = linearLayout5;
        this.f21060m = textView4;
        this.f21061n = textView5;
        this.f21062o = imageView2;
        this.f21063p = simpleDraweeView2;
        this.f21064q = linearLayout6;
        this.f21065r = textView6;
        this.f21066s = textView7;
        this.f21067t = button3;
        this.f21068u = textView8;
    }

    @NonNull
    public static i50 a(@NonNull View view) {
        int i2 = R.id.dialog_button_cancle;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_cancle);
        if (button != null) {
            i2 = R.id.dialog_button_ok;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_ok);
            if (button2 != null) {
                i2 = R.id.dialog_content;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_content);
                if (textView != null) {
                    i2 = R.id.dialog_content_2;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_content_2);
                    if (textView2 != null) {
                        i2 = R.id.failedMessage;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.failedMessage);
                        if (textView3 != null) {
                            i2 = R.id.game_lay;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.game_lay);
                            if (linearLayout != null) {
                                i2 = R.id.loading_lay;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.loading_lay);
                                if (linearLayout2 != null) {
                                    i2 = R.id.lodingBackImage;
                                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.lodingBackImage);
                                    if (imageView != null) {
                                        i2 = R.id.loding_faile;
                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.loding_faile);
                                        if (linearLayout3 != null) {
                                            i2 = R.id.plugImgIv;
                                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.plugImgIv);
                                            if (simpleDraweeView != null) {
                                                i2 = R.id.plug_lay;
                                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.plug_lay);
                                                if (linearLayout4 != null) {
                                                    i2 = R.id.plugNameTv;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.plugNameTv);
                                                    if (textView4 != null) {
                                                        i2 = R.id.plugSizeTv;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.plugSizeTv);
                                                        if (textView5 != null) {
                                                            i2 = R.id.relodingimag;
                                                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.relodingimag);
                                                            if (imageView2 != null) {
                                                                i2 = R.id.romImgIv;
                                                                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.romImgIv);
                                                                if (simpleDraweeView2 != null) {
                                                                    i2 = R.id.rom_lay;
                                                                    LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.rom_lay);
                                                                    if (linearLayout5 != null) {
                                                                        i2 = R.id.romNameTv;
                                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.romNameTv);
                                                                        if (textView6 != null) {
                                                                            i2 = R.id.romSizeTv;
                                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.romSizeTv);
                                                                            if (textView7 != null) {
                                                                                i2 = R.id.setNetwork;
                                                                                Button button3 = (Button) ViewBindings.findChildViewById(view, R.id.setNetwork);
                                                                                if (button3 != null) {
                                                                                    i2 = R.id.tip_title;
                                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tip_title);
                                                                                    if (textView8 != null) {
                                                                                        return new i50((LinearLayout) view, button, button2, textView, textView2, textView3, linearLayout, linearLayout2, imageView, linearLayout3, simpleDraweeView, linearLayout4, textView4, textView5, imageView2, simpleDraweeView2, linearLayout5, textView6, textView7, button3, textView8);
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
    public static i50 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static i50 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.net_whole_invite_dialog, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21048a;
    }
}
