package com.heepay.plugin.d;
/* loaded from: classes2.dex */
public class a {
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0050, code lost:
        if (r0 == 1) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0052, code lost:
        if (r0 == 2) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0054, code lost:
        ((com.heepay.plugin.activity.HyNotityActivity) r6.getContext()).f16747k = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005d, code lost:
        ((com.heepay.plugin.activity.HyNotityActivity) r6.getContext()).f16747k = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0066, code lost:
        if (r6 == null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x006c, code lost:
        if (r6.canGoBack() == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006e, code lost:
        r6.goBack();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0072, code lost:
        r6 = (com.heepay.plugin.activity.HyNotityActivity) r6.getContext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:?, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void CallAPP(android.webkit.WebView r6, java.lang.String r7) {
        /*
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: org.json.JSONException -> L91
            r0.<init>(r7)     // Catch: org.json.JSONException -> L91
            java.lang.String r7 = "cmd"
            java.lang.String r7 = com.heepay.plugin.c.g.a(r0, r7)     // Catch: org.json.JSONException -> L91
            java.lang.String r1 = "---->object1"
            java.lang.String r0 = r0.toString()     // Catch: org.json.JSONException -> L91
            com.heepay.plugin.c.c.c(r1, r0)     // Catch: org.json.JSONException -> L91
            java.lang.String r0 = "---->method1"
            com.heepay.plugin.c.c.c(r0, r7)     // Catch: org.json.JSONException -> L91
            r0 = -1
            int r1 = r7.hashCode()     // Catch: org.json.JSONException -> L91
            r2 = -1858369644(0xffffffff913b8794, float:-1.4793477E-28)
            r3 = 0
            r4 = 2
            r5 = 1
            if (r1 == r2) goto L45
            r2 = 2580550(0x276046, float:3.616121E-39)
            if (r1 == r2) goto L3b
            r2 = 360228041(0x1578a4c9, float:5.0213194E-26)
            if (r1 == r2) goto L31
            goto L4e
        L31:
            java.lang.String r1 = "can_close"
            boolean r7 = r7.equals(r1)     // Catch: org.json.JSONException -> L91
            if (r7 == 0) goto L4e
            r0 = 2
            goto L4e
        L3b:
            java.lang.String r1 = "TODO"
            boolean r7 = r7.equals(r1)     // Catch: org.json.JSONException -> L91
            if (r7 == 0) goto L4e
            r0 = 1
            goto L4e
        L45:
            java.lang.String r1 = "pay_result"
            boolean r7 = r7.equals(r1)     // Catch: org.json.JSONException -> L91
            if (r7 == 0) goto L4e
            r0 = 0
        L4e:
            if (r0 == 0) goto L7c
            if (r0 == r5) goto L66
            if (r0 == r4) goto L5d
            android.content.Context r6 = r6.getContext()     // Catch: org.json.JSONException -> L91
            com.heepay.plugin.activity.HyNotityActivity r6 = (com.heepay.plugin.activity.HyNotityActivity) r6     // Catch: org.json.JSONException -> L91
            r6.f16747k = r3     // Catch: org.json.JSONException -> L91
            goto L95
        L5d:
            android.content.Context r6 = r6.getContext()     // Catch: org.json.JSONException -> L91
            com.heepay.plugin.activity.HyNotityActivity r6 = (com.heepay.plugin.activity.HyNotityActivity) r6     // Catch: org.json.JSONException -> L91
            r6.f16747k = r5     // Catch: org.json.JSONException -> L91
            goto L95
        L66:
            if (r6 == 0) goto L72
            boolean r7 = r6.canGoBack()     // Catch: org.json.JSONException -> L91
            if (r7 == 0) goto L72
            r6.goBack()     // Catch: org.json.JSONException -> L91
            goto L95
        L72:
            android.content.Context r6 = r6.getContext()     // Catch: org.json.JSONException -> L91
            com.heepay.plugin.activity.HyNotityActivity r6 = (com.heepay.plugin.activity.HyNotityActivity) r6     // Catch: org.json.JSONException -> L91
        L78:
            r6.finish()     // Catch: org.json.JSONException -> L91
            goto L95
        L7c:
            com.heepay.plugin.c.i r7 = com.heepay.plugin.c.i.a()     // Catch: org.json.JSONException -> L91
            android.content.Context r0 = r6.getContext()     // Catch: org.json.JSONException -> L91
            java.lang.String r1 = "支付完成"
            r7.a(r0, r1)     // Catch: org.json.JSONException -> L91
            android.content.Context r6 = r6.getContext()     // Catch: org.json.JSONException -> L91
            com.heepay.plugin.activity.HyNotityActivity r6 = (com.heepay.plugin.activity.HyNotityActivity) r6     // Catch: org.json.JSONException -> L91
            goto L78
        L91:
            r6 = move-exception
            r6.printStackTrace()
        L95:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.heepay.plugin.d.a.CallAPP(android.webkit.WebView, java.lang.String):void");
    }
}
