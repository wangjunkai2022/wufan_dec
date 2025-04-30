package com.xinzhu.overmind.client.stub;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.b;
import com.xinzhu.overmind.client.hook.env.a;
import com.xinzhu.overmind.client.stub.record.StubTrampolineRecord;
/* loaded from: classes.dex */
public class StubTrampolineReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public static final String f64266a = StubTrampolineReceiver.class.getSimpleName();

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        b.c(f64266a, "StubTrampolineReceiver onReceive");
        try {
            StubTrampolineRecord create = StubTrampolineRecord.create(intent);
            if (create.sanityCheck()) {
                Intent k4 = a.k(create.mTarget);
                Overmind.getMindActivityManager().w(k4, k4.getType(), create.mUserId);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
