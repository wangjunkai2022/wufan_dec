package com.xinzhu.overmind.client.stub;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.stub.record.StubBroadcastRecord;
/* loaded from: classes.dex */
public class StubBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public static final String f64255a = "StubBroadcastReceiver";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        StubBroadcastRecord create = StubBroadcastRecord.create(intent);
        StringBuilder sb = new StringBuilder();
        sb.append("onReceive: ");
        sb.append(intent);
        Overmind.getContext().sendBroadcast(create.mIntent);
    }
}
