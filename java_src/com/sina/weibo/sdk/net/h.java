package com.sina.weibo.sdk.net;

import android.text.TextUtils;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
/* loaded from: classes4.dex */
public final class h {

    /* renamed from: q  reason: collision with root package name */
    private HashMap<String, String> f56743q = new HashMap<>();

    public final String g() {
        StringBuilder sb = new StringBuilder();
        boolean z3 = true;
        for (String str : this.f56743q.keySet()) {
            if (z3) {
                z3 = false;
            } else {
                sb.append(m.a.f72566d);
            }
            String str2 = this.f56743q.get(str);
            if (!TextUtils.isEmpty(str2)) {
                try {
                    sb.append(URLEncoder.encode(str, "UTF-8"));
                    sb.append(SimpleComparison.EQUAL_TO_OPERATION);
                    sb.append(URLEncoder.encode(str2, "UTF-8"));
                } catch (UnsupportedEncodingException e4) {
                    e4.printStackTrace();
                }
            }
        }
        return sb.toString();
    }

    public final void put(String str, String str2) {
        this.f56743q.put(str, str2);
    }
}
