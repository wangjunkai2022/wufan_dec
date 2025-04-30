package com.papa91.arc.widget.htmltext;

import android.text.style.ClickableSpan;
/* loaded from: classes4.dex */
public abstract class ClickableTableSpan extends ClickableSpan {
    protected String tableHtml;

    public String getTableHtml() {
        return this.tableHtml;
    }

    public abstract ClickableTableSpan newInstance();

    public void setTableHtml(String str) {
        this.tableHtml = str;
    }
}
