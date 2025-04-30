package com.xinzhu.overmind.client.stub.record;

import android.content.Intent;
import com.xinzhu.overmind.b;
/* loaded from: classes.dex */
public class StubTrampolineRecord {
    public static final String TAG = "StubTrampolineRecord";
    public Intent mTarget;
    public int mUserId;

    public StubTrampolineRecord(int userId, Intent target) {
        this.mUserId = userId;
        this.mTarget = target;
    }

    public static StubTrampolineRecord create(Intent intent) {
        Intent selector = intent.getSelector();
        return new StubTrampolineRecord(selector.getIntExtra("_VM_|_sender_user_id_", -1), (Intent) selector.getParcelableExtra("_VM_|_sender_target_"));
    }

    public static void saveStub(Intent shadow, Intent target, int userId) {
        String str = TAG;
        b.c(str, "saveStub check " + userId + " " + target);
        Intent intent = new Intent();
        intent.putExtra("_VM_|_sender_target_", target);
        intent.putExtra("_VM_|_sender_user_id_", userId);
        shadow.setPackage(null);
        shadow.setSelector(intent);
    }

    public boolean sanityCheck() {
        return this.mUserId >= 0 && this.mTarget != null;
    }
}
