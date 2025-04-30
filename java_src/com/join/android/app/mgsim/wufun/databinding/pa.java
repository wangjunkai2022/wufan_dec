package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogArenaDownloadGamePluginBinding.java */
/* loaded from: classes3.dex */
public final class pa implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23540a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f23541b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f23542c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ProgressBar f23543d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f23544e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final SimpleDraweeView f23545f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SimpleDraweeView f23546g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f23547h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f23548i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final LinearLayout f23549j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f23550k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ImageView f23551l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final LinearLayout f23552m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f23553n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final ProgressBar f23554o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final ImageView f23555p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final Button f23556q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final TextView f23557r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f23558s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final TextView f23559t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final TextView f23560u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final TextView f23561v;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    public final TextView f23562w;

    private pa(@NonNull RelativeLayout relativeLayout, @NonNull Button button, @NonNull TextView textView, @NonNull ProgressBar progressBar, @NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout6, @NonNull TextView textView2, @NonNull ProgressBar progressBar2, @NonNull ImageView imageView2, @NonNull Button button2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8) {
        this.f23540a = relativeLayout;
        this.f23541b = button;
        this.f23542c = textView;
        this.f23543d = progressBar;
        this.f23544e = linearLayout;
        this.f23545f = simpleDraweeView;
        this.f23546g = simpleDraweeView2;
        this.f23547h = linearLayout2;
        this.f23548i = linearLayout3;
        this.f23549j = linearLayout4;
        this.f23550k = linearLayout5;
        this.f23551l = imageView;
        this.f23552m = linearLayout6;
        this.f23553n = textView2;
        this.f23554o = progressBar2;
        this.f23555p = imageView2;
        this.f23556q = button2;
        this.f23557r = textView3;
        this.f23558s = textView4;
        this.f23559t = textView5;
        this.f23560u = textView6;
        this.f23561v = textView7;
        this.f23562w = textView8;
    }

    @NonNull
    public static pa a(@NonNull View view) {
        int i2 = R.id.btnGoGame;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btnGoGame);
        if (button != null) {
            i2 = R.id.failedMessage;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.failedMessage);
            if (textView != null) {
                i2 = R.id.gameProgressBar;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.gameProgressBar);
                if (progressBar != null) {
                    i2 = R.id.iv_close;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.iv_close);
                    if (linearLayout != null) {
                        i2 = R.id.iv_game_icon;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.iv_game_icon);
                        if (simpleDraweeView != null) {
                            i2 = R.id.iv_plugin_icon;
                            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.iv_plugin_icon);
                            if (simpleDraweeView2 != null) {
                                i2 = R.id.ll_content;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_content);
                                if (linearLayout2 != null) {
                                    i2 = R.id.ll_game;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_game);
                                    if (linearLayout3 != null) {
                                        i2 = R.id.ll_plugin;
                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_plugin);
                                        if (linearLayout4 != null) {
                                            i2 = R.id.loading_lay;
                                            LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.loading_lay);
                                            if (linearLayout5 != null) {
                                                i2 = R.id.lodingBackImage;
                                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.lodingBackImage);
                                                if (imageView != null) {
                                                    i2 = R.id.loding_faile;
                                                    LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.loding_faile);
                                                    if (linearLayout6 != null) {
                                                        i2 = R.id.moneyText;
                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.moneyText);
                                                        if (textView2 != null) {
                                                            i2 = R.id.plugProgressBar;
                                                            ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(view, R.id.plugProgressBar);
                                                            if (progressBar2 != null) {
                                                                i2 = R.id.relodingimag;
                                                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.relodingimag);
                                                                if (imageView2 != null) {
                                                                    i2 = R.id.setNetwork;
                                                                    Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.setNetwork);
                                                                    if (button2 != null) {
                                                                        i2 = R.id.tv_game_name;
                                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_game_name);
                                                                        if (textView3 != null) {
                                                                            i2 = R.id.tv_game_size;
                                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_game_size);
                                                                            if (textView4 != null) {
                                                                                i2 = R.id.tv_info;
                                                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_info);
                                                                                if (textView5 != null) {
                                                                                    i2 = R.id.tv_plugin_name;
                                                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_plugin_name);
                                                                                    if (textView6 != null) {
                                                                                        i2 = R.id.tv_plugin_size;
                                                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_plugin_size);
                                                                                        if (textView7 != null) {
                                                                                            i2 = R.id.tv_title;
                                                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                                                                            if (textView8 != null) {
                                                                                                return new pa((RelativeLayout) view, button, textView, progressBar, linearLayout, simpleDraweeView, simpleDraweeView2, linearLayout2, linearLayout3, linearLayout4, linearLayout5, imageView, linearLayout6, textView2, progressBar2, imageView2, button2, textView3, textView4, textView5, textView6, textView7, textView8);
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
    public static pa c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static pa d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_arena_download_game_plugin, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23540a;
    }
}
