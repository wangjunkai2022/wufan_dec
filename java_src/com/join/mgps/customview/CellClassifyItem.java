package com.join.mgps.customview;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class CellClassifyItem extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private int f44999a;

    /* renamed from: b  reason: collision with root package name */
    private int f45000b;

    /* renamed from: c  reason: collision with root package name */
    private String f45001c;

    /* renamed from: d  reason: collision with root package name */
    private String f45002d;

    /* renamed from: e  reason: collision with root package name */
    private String f45003e;

    /* renamed from: f  reason: collision with root package name */
    private int f45004f;

    /* renamed from: g  reason: collision with root package name */
    private SimpleDraweeView f45005g;

    /* renamed from: h  reason: collision with root package name */
    private TextView f45006h;

    /* renamed from: i  reason: collision with root package name */
    private TextView f45007i;

    /* renamed from: j  reason: collision with root package name */
    private TextView f45008j;

    /* renamed from: k  reason: collision with root package name */
    private TextView f45009k;

    /* renamed from: l  reason: collision with root package name */
    private LinearLayout f45010l;

    public CellClassifyItem(Context context) {
        super(context);
        this.f45000b = R.drawable.main_normal_icon;
        a();
    }

    private void a() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_classify_item, (ViewGroup) null);
        this.f45005g = (SimpleDraweeView) inflate.findViewById(R.id.onlin_icon);
        this.f45006h = (TextView) inflate.findViewById(R.id.name);
        this.f45010l = (LinearLayout) inflate.findViewById(R.id.nameParent);
        this.f45007i = (TextView) inflate.findViewById(R.id.desc);
        this.f45008j = (TextView) inflate.findViewById(R.id.onlin_number_tip);
        this.f45009k = (TextView) inflate.findViewById(R.id.onlin_number);
        addView(inflate, -1, -1);
        setmIconRes(this.f45000b);
        setmName(this.f45002d);
        setmDesc(this.f45003e);
        setCountTip(this.f45004f);
    }

    public int getmCount() {
        return this.f45004f;
    }

    public String getmDesc() {
        return this.f45003e;
    }

    public int getmIconRes() {
        return this.f45000b;
    }

    public String getmIconSrc() {
        return this.f45001c;
    }

    public int getmId() {
        return this.f44999a;
    }

    public String getmName() {
        return this.f45002d;
    }

    public void setCountFlag(int i2) {
        setmCount(i2);
        TextView textView = this.f45009k;
        textView.setText(i2 + "");
    }

    public void setCountTip(int i2) {
        setmCount(i2);
        try {
            Resources resources = getContext().getResources();
            String string = resources.getString(R.string.game_count_tip, i2 + "");
            int indexOf = string.indexOf(i2 + "");
            int length = (i2 + "").length() + indexOf;
            SpannableString spannableString = new SpannableString(string);
            if (length <= string.length()) {
                spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#FC9234")), indexOf, length, 33);
            }
            TextView textView = this.f45008j;
            if (textView != null) {
                textView.setText(spannableString);
            }
        } catch (Resources.NotFoundException e4) {
            e4.printStackTrace();
        }
    }

    public void setDescVisibility(int i2) {
        TextView textView = this.f45007i;
        if (textView != null) {
            textView.setVisibility(i2);
            if (i2 != 8 && i2 != 4) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f45010l.getLayoutParams();
                layoutParams.addRule(6, R.id.onlin_icon);
                layoutParams.addRule(15, 0);
                this.f45010l.setLayoutParams(layoutParams);
                return;
            }
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f45010l.getLayoutParams();
            layoutParams2.addRule(6, 0);
            layoutParams2.addRule(15, -1);
            this.f45010l.setLayoutParams(layoutParams2);
        }
    }

    public void setmCount(int i2) {
        this.f45004f = i2;
    }

    public void setmDesc(String str) {
        this.f45003e = str;
        TextView textView = this.f45007i;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void setmIconRes(int i2) {
        this.f45000b = i2;
        MyImageLoader.d(this.f45005g, i2, MyImageLoader.E(getContext(), i2).toString());
    }

    public void setmIconSrc(String str) {
        this.f45001c = str;
        MyImageLoader.d(this.f45005g, this.f45000b, str);
    }

    public void setmId(int i2) {
        this.f44999a = i2;
    }

    public void setmName(String str) {
        this.f45002d = str;
        TextView textView = this.f45006h;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public CellClassifyItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45000b = R.drawable.main_normal_icon;
        a();
    }

    public CellClassifyItem(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45000b = R.drawable.main_normal_icon;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CellClassifyItem, i2, 0);
        this.f45000b = obtainStyledAttributes.getInt(0, R.drawable.main_normal_icon);
        this.f45002d = obtainStyledAttributes.getString(3);
        this.f45003e = obtainStyledAttributes.getString(2);
        this.f45004f = obtainStyledAttributes.getInt(1, 0);
        obtainStyledAttributes.recycle();
        a();
    }
}
