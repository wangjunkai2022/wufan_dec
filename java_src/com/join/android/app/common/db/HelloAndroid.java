package com.join.android.app.common.db;

import android.os.Bundle;
import android.widget.TextView;
import com.j256.ormlite.android.apptools.OrmLiteBaseActivity;
/* loaded from: classes.dex */
public class HelloAndroid extends OrmLiteBaseActivity<DatabaseHelper> {

    /* renamed from: a  reason: collision with root package name */
    private final String f16900a = getClass().getSimpleName();

    private void a(String str, TextView textView) {
    }

    @Override // com.j256.ormlite.android.apptools.OrmLiteBaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        StringBuilder sb = new StringBuilder();
        sb.append("creating ");
        sb.append(getClass());
        sb.append(" at ");
        sb.append(System.currentTimeMillis());
        TextView textView = new TextView(this);
        a("onCreate", textView);
        setContentView(textView);
    }
}
