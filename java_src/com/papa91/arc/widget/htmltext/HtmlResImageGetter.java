package com.papa91.arc.widget.htmltext;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Html;
import androidx.annotation.NonNull;
import q.a;
/* loaded from: classes4.dex */
public class HtmlResImageGetter implements Html.ImageGetter {
    private Context context;

    public HtmlResImageGetter(@NonNull Context context) {
        this.context = context;
    }

    @Override // android.text.Html.ImageGetter
    public Drawable getDrawable(String str) {
        int identifier = this.context.getResources().getIdentifier(str, "drawable", this.context.getPackageName());
        if (identifier == 0) {
            identifier = this.context.getResources().getIdentifier(str, "drawable", a.f73954a);
        }
        if (identifier == 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("source could not be found: ");
            sb.append(str);
            return null;
        }
        Drawable drawable = this.context.getResources().getDrawable(identifier);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        return drawable;
    }
}
