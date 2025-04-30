package com.ss.android.downloadlib.addownload.a;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.ss.android.downloadlib.addownload.j;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;
/* compiled from: AdDownloadDialogSpHelper.java */
/* loaded from: classes4.dex */
class b {
    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public CopyOnWriteArrayList<com.ss.android.downloadlib.addownload.b.a> a(String str, String str2) {
        CopyOnWriteArrayList<com.ss.android.downloadlib.addownload.b.a> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        try {
            String string = j.getContext().getSharedPreferences(str, 0).getString(str2, "");
            if (!TextUtils.isEmpty(string)) {
                JSONObject jSONObject = new JSONObject(string);
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    com.ss.android.downloadlib.addownload.b.a a4 = com.ss.android.downloadlib.addownload.b.a.a(jSONObject.optJSONObject(keys.next()));
                    if (a4 != null) {
                        copyOnWriteArrayList.add(a4);
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return copyOnWriteArrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        j.getContext().getSharedPreferences(str, 0).edit().putString(str2, "").apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, String str2, CopyOnWriteArrayList<com.ss.android.downloadlib.addownload.b.a> copyOnWriteArrayList) {
        if (copyOnWriteArrayList == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            Iterator<com.ss.android.downloadlib.addownload.b.a> it2 = copyOnWriteArrayList.iterator();
            while (it2.hasNext()) {
                com.ss.android.downloadlib.addownload.b.a next = it2.next();
                if (next != null) {
                    jSONObject.put(String.valueOf(next.f57105b), next.a());
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        j.getContext().getSharedPreferences(str, 0).edit().putString(str2, jSONObject.toString()).apply();
    }
}
