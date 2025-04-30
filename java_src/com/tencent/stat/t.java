package com.tencent.stat;

import android.database.Cursor;
import com.tencent.stat.common.StatLogger;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class t implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ n f60136a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(n nVar) {
        this.f60136a = nVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        StatLogger statLogger;
        w wVar;
        Cursor cursor = null;
        try {
            wVar = this.f60136a.f60123d;
            cursor = wVar.getReadableDatabase().query("config", null, null, null, null, null, null);
            while (cursor.moveToNext()) {
                int i2 = cursor.getInt(0);
                String string = cursor.getString(1);
                String string2 = cursor.getString(2);
                int i4 = cursor.getInt(3);
                b bVar = new b(i2);
                bVar.f60034a = i2;
                bVar.f60035b = new JSONObject(string);
                bVar.f60036c = string2;
                bVar.f60037d = i4;
                StatConfig.a(bVar);
            }
        } catch (Throwable th) {
            try {
                statLogger = n.f60118e;
                statLogger.e(th);
            } finally {
                if (cursor != null) {
                    cursor.close();
                }
            }
        }
    }
}
