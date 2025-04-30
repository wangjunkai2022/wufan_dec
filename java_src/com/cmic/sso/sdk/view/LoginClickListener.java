package com.cmic.sso.sdk.view;

import android.content.Context;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public interface LoginClickListener {
    void onLoginClickComplete(Context context, JSONObject jSONObject);

    void onLoginClickStart(Context context, JSONObject jSONObject);
}
