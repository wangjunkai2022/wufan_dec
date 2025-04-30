package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: UploadLayoutBinding.java */
/* loaded from: classes3.dex */
public final class ed0 implements ViewBinding {
    @NonNull
    public final RelativeLayout A;
    @NonNull
    public final Button B;
    @NonNull
    public final Button C;
    @NonNull
    public final TextView D;
    @NonNull
    public final Button E;
    @NonNull
    public final Button F;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19721a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f19722b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f19723c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f19724d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f19725e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f19726f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final FrameLayout f19727g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f19728h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final EditText f19729i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f19730j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final FrameLayout f19731k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f19732l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final EditText f19733m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f19734n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final FrameLayout f19735o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final SimpleDraweeView f19736p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final SimpleDraweeView f19737q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final SimpleDraweeView f19738r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final FrameLayout f19739s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final ScrollView f19740t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final LinearLayout f19741u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final LinearLayout f19742v;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    public final LinearLayout f19743w;
    @NonNull

    /* renamed from: x  reason: collision with root package name */
    public final TextView f19744x;
    @NonNull

    /* renamed from: y  reason: collision with root package name */
    public final FrameLayout f19745y;
    @NonNull

    /* renamed from: z  reason: collision with root package name */
    public final Button f19746z;

    private ed0(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull Button button, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull FrameLayout frameLayout, @NonNull TextView textView4, @NonNull EditText editText, @NonNull TextView textView5, @NonNull FrameLayout frameLayout2, @NonNull TextView textView6, @NonNull EditText editText2, @NonNull TextView textView7, @NonNull FrameLayout frameLayout3, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull SimpleDraweeView simpleDraweeView3, @NonNull FrameLayout frameLayout4, @NonNull ScrollView scrollView, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull TextView textView8, @NonNull FrameLayout frameLayout5, @NonNull Button button2, @NonNull RelativeLayout relativeLayout, @NonNull Button button3, @NonNull Button button4, @NonNull TextView textView9, @NonNull Button button5, @NonNull Button button6) {
        this.f19721a = linearLayout;
        this.f19722b = imageView;
        this.f19723c = button;
        this.f19724d = textView;
        this.f19725e = textView2;
        this.f19726f = textView3;
        this.f19727g = frameLayout;
        this.f19728h = textView4;
        this.f19729i = editText;
        this.f19730j = textView5;
        this.f19731k = frameLayout2;
        this.f19732l = textView6;
        this.f19733m = editText2;
        this.f19734n = textView7;
        this.f19735o = frameLayout3;
        this.f19736p = simpleDraweeView;
        this.f19737q = simpleDraweeView2;
        this.f19738r = simpleDraweeView3;
        this.f19739s = frameLayout4;
        this.f19740t = scrollView;
        this.f19741u = linearLayout2;
        this.f19742v = linearLayout3;
        this.f19743w = linearLayout4;
        this.f19744x = textView8;
        this.f19745y = frameLayout5;
        this.f19746z = button2;
        this.A = relativeLayout;
        this.B = button3;
        this.C = button4;
        this.D = textView9;
        this.E = button5;
        this.F = button6;
    }

    @NonNull
    public static ed0 a(@NonNull View view) {
        int i2 = R.id.backImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.backImage);
        if (imageView != null) {
            i2 = R.id.continue_upload;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.continue_upload);
            if (button != null) {
                i2 = R.id.dscFaildTxt;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.dscFaildTxt);
                if (textView != null) {
                    i2 = R.id.dscIngTxt;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.dscIngTxt);
                    if (textView2 != null) {
                        i2 = R.id.dscSuccessTxt;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.dscSuccessTxt);
                        if (textView3 != null) {
                            i2 = R.id.file_lay;
                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.file_lay);
                            if (frameLayout != null) {
                                i2 = R.id.fileName;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.fileName);
                                if (textView4 != null) {
                                    i2 = R.id.gameDsc;
                                    EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.gameDsc);
                                    if (editText != null) {
                                        i2 = R.id.gameIcon;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.gameIcon);
                                        if (textView5 != null) {
                                            i2 = R.id.gameIcon_lay;
                                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.gameIcon_lay);
                                            if (frameLayout2 != null) {
                                                i2 = R.id.gameImage;
                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.gameImage);
                                                if (textView6 != null) {
                                                    i2 = R.id.gameName;
                                                    EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.gameName);
                                                    if (editText2 != null) {
                                                        i2 = R.id.gameType;
                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.gameType);
                                                        if (textView7 != null) {
                                                            i2 = R.id.gameType_lay;
                                                            FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.gameType_lay);
                                                            if (frameLayout3 != null) {
                                                                i2 = R.id.img_1;
                                                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.img_1);
                                                                if (simpleDraweeView != null) {
                                                                    i2 = R.id.img_2;
                                                                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.img_2);
                                                                    if (simpleDraweeView2 != null) {
                                                                        i2 = R.id.img_3;
                                                                        SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.img_3);
                                                                        if (simpleDraweeView3 != null) {
                                                                            i2 = R.id.img_lay;
                                                                            FrameLayout frameLayout4 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.img_lay);
                                                                            if (frameLayout4 != null) {
                                                                                i2 = R.id.lay_1;
                                                                                ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(view, R.id.lay_1);
                                                                                if (scrollView != null) {
                                                                                    i2 = R.id.lay_2;
                                                                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.lay_2);
                                                                                    if (linearLayout != null) {
                                                                                        i2 = R.id.lay_3;
                                                                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.lay_3);
                                                                                        if (linearLayout2 != null) {
                                                                                            i2 = R.id.lay_4;
                                                                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.lay_4);
                                                                                            if (linearLayout3 != null) {
                                                                                                i2 = R.id.platformType;
                                                                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.platformType);
                                                                                                if (textView8 != null) {
                                                                                                    i2 = R.id.platformType_lay;
                                                                                                    FrameLayout frameLayout5 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.platformType_lay);
                                                                                                    if (frameLayout5 != null) {
                                                                                                        i2 = R.id.re_continue_upload;
                                                                                                        Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.re_continue_upload);
                                                                                                        if (button2 != null) {
                                                                                                            i2 = R.id.relativeLayout;
                                                                                                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.relativeLayout);
                                                                                                            if (relativeLayout != null) {
                                                                                                                i2 = R.id.reupload;
                                                                                                                Button button3 = (Button) ViewBindings.findChildViewById(view, R.id.reupload);
                                                                                                                if (button3 != null) {
                                                                                                                    i2 = R.id.stopupload;
                                                                                                                    Button button4 = (Button) ViewBindings.findChildViewById(view, R.id.stopupload);
                                                                                                                    if (button4 != null) {
                                                                                                                        i2 = R.id.titleText;
                                                                                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.titleText);
                                                                                                                        if (textView9 != null) {
                                                                                                                            i2 = R.id.uploadBtn;
                                                                                                                            Button button5 = (Button) ViewBindings.findChildViewById(view, R.id.uploadBtn);
                                                                                                                            if (button5 != null) {
                                                                                                                                i2 = R.id.uploadDsc;
                                                                                                                                Button button6 = (Button) ViewBindings.findChildViewById(view, R.id.uploadDsc);
                                                                                                                                if (button6 != null) {
                                                                                                                                    return new ed0((LinearLayout) view, imageView, button, textView, textView2, textView3, frameLayout, textView4, editText, textView5, frameLayout2, textView6, editText2, textView7, frameLayout3, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, frameLayout4, scrollView, linearLayout, linearLayout2, linearLayout3, textView8, frameLayout5, button2, relativeLayout, button3, button4, textView9, button5, button6);
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
    public static ed0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ed0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.upload_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19721a;
    }
}
