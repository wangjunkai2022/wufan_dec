package com.join.mgps.customview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Html;
import android.util.AttributeSet;
import android.widget.TextView;
/* loaded from: classes3.dex */
public class EmojiTextView extends TextView {

    /* renamed from: a  reason: collision with root package name */
    private Context f45403a;

    /* renamed from: b  reason: collision with root package name */
    private Html.ImageGetter f45404b;

    /* loaded from: classes3.dex */
    class a implements Html.ImageGetter {
        a() {
        }

        @Override // android.text.Html.ImageGetter
        public Drawable getDrawable(String str) {
            Drawable drawable = EmojiTextView.this.getResources().getDrawable(EmojiTextView.this.getResources().getIdentifier(str, "drawable", EmojiTextView.this.f45403a.getPackageName()));
            double intrinsicWidth = drawable.getIntrinsicWidth();
            Double.isNaN(intrinsicWidth);
            double intrinsicHeight = drawable.getIntrinsicHeight();
            Double.isNaN(intrinsicHeight);
            drawable.setBounds(0, 0, (int) (intrinsicWidth * 1.25d), (int) (intrinsicHeight * 1.25d));
            return drawable;
        }
    }

    public EmojiTextView(Context context) {
        super(context);
        this.f45404b = new a();
        this.f45403a = context;
    }

    public String b(String str) {
        return str.replaceAll(c(128073), "<img src=\"emoji_01\"/>").replaceAll(c(128072), "<img src=\"emoji_02\"/>").replaceAll(c(9786), "<img src=\"emoji_03\"/>").replaceAll(c(128273), "<img src=\"emoji_04\"/>");
    }

    public String c(int i2) {
        return String.valueOf(Character.toChars(i2));
    }

    public void setEmojiText(String str) {
        setText(Html.fromHtml(b(str), this.f45404b, null));
    }

    public EmojiTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45404b = new a();
        this.f45403a = context;
    }

    public EmojiTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45404b = new a();
        this.f45403a = context;
    }
}
