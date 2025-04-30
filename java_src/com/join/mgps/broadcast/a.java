package com.join.mgps.broadcast;

import android.content.Context;
import android.content.Intent;
/* compiled from: BroadcastUtile.java */
/* loaded from: classes3.dex */
public class a {
    public static void a(Context context) {
        Intent intent = new Intent();
        intent.setAction(f1.a.A);
        context.sendBroadcast(intent);
    }

    public static void b(Context context) {
        Intent intent = new Intent();
        intent.setAction(f1.a.B);
        context.sendBroadcast(intent);
    }
}
