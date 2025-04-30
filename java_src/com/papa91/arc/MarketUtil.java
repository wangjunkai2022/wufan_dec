package com.papa91.arc;

import android.content.Context;
import android.content.Intent;
import org.json.JSONException;
/* loaded from: classes4.dex */
public class MarketUtil {
    private static final String TAG = "MarketUtil";
    public static String actionEmuintent = "com.papa.intent.activity.view.action.emuintent";

    public static void intent(Context context, String str, String str2, String str3, String str4, String str5) {
        if (context == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("intent : ");
        sb.append(str);
        sb.append(", ");
        sb.append(str2);
        sb.append(", ");
        sb.append(str3);
        sb.append(", ");
        sb.append(str4);
        sb.append(", ");
        sb.append(str5);
        Intent intent = new Intent();
        intent.setFlags(268435456);
        intent.setAction(actionEmuintent);
        intent.addCategory("android.intent.category.DEFAULT");
        MyJson myJson = new MyJson();
        try {
            myJson.put("link_type", str);
            myJson.put("jump_type", str2);
            myJson.put("link_type_val", str3);
            myJson.put("crc_link_type_val", str4);
            myJson.put("tpl_type", str5);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        intent.putExtra("intentDataJson", myJson.toString());
        try {
            intent.setAction("com.wufun.intent.activity.view.action.emuintent");
            context.startActivity(intent);
        } catch (Exception unused) {
            intent.setAction("com.papa.intent.activity.view.action.emuintent");
            context.startActivity(intent);
        }
    }
}
