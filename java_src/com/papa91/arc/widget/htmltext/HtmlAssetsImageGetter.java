package com.papa91.arc.widget.htmltext;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Html;
import android.widget.TextView;
import java.io.IOException;
/* loaded from: classes4.dex */
public class HtmlAssetsImageGetter implements Html.ImageGetter {
    private final Context context;

    public HtmlAssetsImageGetter(Context context) {
        this.context = context;
    }

    @Override // android.text.Html.ImageGetter
    public Drawable getDrawable(String str) {
        try {
            Drawable createFromStream = Drawable.createFromStream(this.context.getAssets().open(str), null);
            createFromStream.setBounds(0, 0, createFromStream.getIntrinsicWidth(), createFromStream.getIntrinsicHeight());
            return createFromStream;
        } catch (IOException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("source could not be found: ");
            sb.append(str);
            return null;
        }
    }

    public HtmlAssetsImageGetter(TextView textView) {
        this.context = textView.getContext();
    }
}
