package com.cmic.sso.sdk.view;

import android.app.Activity;
import android.content.Context;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.cmic.sso.sdk.auth.AuthnHelper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
/* compiled from: UmcActivityUtil.java */
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static ArrayList<WeakReference<Activity>> f11055a;

    public static SpannableString a(final Context context, String str, String str2, final c cVar, final ArrayList<c> arrayList, ArrayList<String> arrayList2) {
        int i2;
        SpannableString spannableString = new SpannableString(str);
        try {
            ClickableSpan clickableSpan = new ClickableSpan() { // from class: com.cmic.sso.sdk.view.d.1
                @Override // android.text.style.ClickableSpan
                public void onClick(View view) {
                    c cVar2 = cVar;
                    if (cVar2 == null || cVar2.isShowing()) {
                        return;
                    }
                    cVar.show();
                }

                @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                public void updateDrawState(TextPaint textPaint) {
                    super.updateDrawState(textPaint);
                    textPaint.setUnderlineText(false);
                    try {
                        textPaint.setColor(AuthnHelper.getInstance(context).getAuthThemeConfig().getClauseColor());
                    } catch (Exception unused) {
                        textPaint.setColor(-16007674);
                    }
                }
            };
            ClickableSpan clickableSpan2 = arrayList.size() >= 1 ? new ClickableSpan() { // from class: com.cmic.sso.sdk.view.d.2
                @Override // android.text.style.ClickableSpan
                public void onClick(View view) {
                    if (arrayList.get(0) == null || ((c) arrayList.get(0)).isShowing()) {
                        return;
                    }
                    ((c) arrayList.get(0)).show();
                }

                @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                public void updateDrawState(TextPaint textPaint) {
                    super.updateDrawState(textPaint);
                    textPaint.setUnderlineText(false);
                    try {
                        textPaint.setColor(AuthnHelper.getInstance(context).getAuthThemeConfig().getClauseColor());
                    } catch (Exception unused) {
                        textPaint.setColor(-16007674);
                    }
                }
            } : null;
            ClickableSpan clickableSpan3 = arrayList.size() >= 2 ? new ClickableSpan() { // from class: com.cmic.sso.sdk.view.d.3
                @Override // android.text.style.ClickableSpan
                public void onClick(View view) {
                    if (arrayList.get(1) == null || ((c) arrayList.get(1)).isShowing()) {
                        return;
                    }
                    ((c) arrayList.get(1)).show();
                }

                @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                public void updateDrawState(TextPaint textPaint) {
                    super.updateDrawState(textPaint);
                    textPaint.setUnderlineText(false);
                    try {
                        textPaint.setColor(AuthnHelper.getInstance(context).getAuthThemeConfig().getClauseColor());
                    } catch (Exception unused) {
                        textPaint.setColor(-16007674);
                    }
                }
            } : null;
            ClickableSpan clickableSpan4 = arrayList.size() >= 3 ? new ClickableSpan() { // from class: com.cmic.sso.sdk.view.d.4
                @Override // android.text.style.ClickableSpan
                public void onClick(View view) {
                    if (arrayList.get(2) == null || ((c) arrayList.get(2)).isShowing()) {
                        return;
                    }
                    ((c) arrayList.get(2)).show();
                }

                @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                public void updateDrawState(TextPaint textPaint) {
                    super.updateDrawState(textPaint);
                    textPaint.setUnderlineText(false);
                    try {
                        textPaint.setColor(AuthnHelper.getInstance(context).getAuthThemeConfig().getClauseColor());
                    } catch (Exception unused) {
                        textPaint.setColor(-16007674);
                    }
                }
            } : null;
            ClickableSpan clickableSpan5 = arrayList.size() == 4 ? new ClickableSpan() { // from class: com.cmic.sso.sdk.view.d.5
                @Override // android.text.style.ClickableSpan
                public void onClick(View view) {
                    if (arrayList.get(3) == null || ((c) arrayList.get(3)).isShowing()) {
                        return;
                    }
                    ((c) arrayList.get(3)).show();
                }

                @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                public void updateDrawState(TextPaint textPaint) {
                    super.updateDrawState(textPaint);
                    textPaint.setUnderlineText(false);
                    try {
                        textPaint.setColor(AuthnHelper.getInstance(context).getAuthThemeConfig().getClauseColor());
                    } catch (Exception unused) {
                        textPaint.setColor(-16007674);
                    }
                }
            } : null;
            AuthnHelper.getInstance(context).getAuthThemeConfig();
            int indexOf = str.indexOf(str2);
            spannableString.setSpan(clickableSpan, indexOf, str2.length() + indexOf, 34);
            if (arrayList.size() >= 1) {
                String str3 = arrayList2.get(0);
                i2 = str.indexOf(str3);
                spannableString.setSpan(clickableSpan2, i2, str3.length() + i2, 34);
            } else {
                i2 = 0;
            }
            if (arrayList.size() >= 2) {
                int length = i2 + arrayList2.get(0).length();
                String str4 = arrayList2.get(1);
                i2 = str.indexOf(str4, length);
                spannableString.setSpan(clickableSpan3, i2, str4.length() + i2, 34);
            }
            if (arrayList.size() >= 3) {
                String str5 = arrayList2.get(2);
                int indexOf2 = str.indexOf(str5, arrayList2.get(1).length() + i2);
                spannableString.setSpan(clickableSpan4, indexOf2, str5.length() + indexOf2, 34);
            }
            if (arrayList.size() == 4) {
                int length2 = i2 + arrayList2.get(2).length();
                String str6 = arrayList2.get(3);
                int indexOf3 = str.indexOf(str6, length2);
                spannableString.setSpan(clickableSpan5, indexOf3, str6.length() + indexOf3, 34);
            }
            return spannableString;
        } catch (Exception e4) {
            e4.printStackTrace();
            return spannableString;
        }
    }

    public static int b(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (windowManager != null) {
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        }
        return displayMetrics.heightPixels;
    }

    public static RelativeLayout a(Context context, View view, int i2, int i4, String str, View.OnClickListener onClickListener) {
        AuthThemeConfig authThemeConfig = AuthnHelper.getInstance(context).getAuthThemeConfig();
        RelativeLayout relativeLayout = new RelativeLayout(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, view != null ? -2 : a(context, 49.0f));
        layoutParams.addRule(10, -1);
        relativeLayout.setLayoutParams(layoutParams);
        relativeLayout.setId(i2);
        TextView textView = new TextView(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13, -1);
        textView.setLayoutParams(layoutParams2);
        textView.setTextColor(authThemeConfig.getNavTextColor());
        textView.setTextSize(2, authThemeConfig.getNavTextSize());
        textView.setText(str);
        if (view != null) {
            relativeLayout.addView(view);
            relativeLayout.addView(textView);
            return relativeLayout;
        }
        relativeLayout.addView(textView);
        ImageButton imageButton = new ImageButton(context);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(a(context, authThemeConfig.getNavReturnImgWidth()), a(context, authThemeConfig.getNavReturnImgHeight()));
        layoutParams3.addRule(9, -1);
        layoutParams3.addRule(15, -1);
        layoutParams3.setMargins(a(context, 12.0f), 0, 0, 0);
        imageButton.setLayoutParams(layoutParams3);
        imageButton.setId(i4);
        imageButton.setOnClickListener(onClickListener);
        imageButton.setBackgroundColor(0);
        relativeLayout.addView(imageButton);
        try {
            relativeLayout.setBackgroundColor(AuthnHelper.getInstance(context).getAuthThemeConfig().getNavColor());
        } catch (Exception unused) {
            relativeLayout.setBackgroundColor(-16742704);
        }
        imageButton.setImageResource(b.b(context, "umcsdk_return_bg"));
        return relativeLayout;
    }

    public static int a(Context context, float f4) {
        if (f4 < 0.0f) {
            return (int) f4;
        }
        try {
            return (int) ((f4 * context.getResources().getDisplayMetrics().density) + 0.5f);
        } catch (Exception unused) {
            return (int) f4;
        }
    }

    public static int a(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (windowManager != null) {
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        }
        return displayMetrics.widthPixels;
    }
}
