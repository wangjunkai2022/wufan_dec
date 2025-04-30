package com.xinzhu.overmind.client.stub.record;

import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.IBinder;
import com.xinzhu.overmind.utils.helpers.b;
/* loaded from: classes.dex */
public class StubActivityRecord {
    public ActivityInfo mActivityInfo;
    public IBinder mActivityRecord;
    public Intent mTarget;
    public int mUserId;

    public StubActivityRecord(int userId, ActivityInfo activityInfo, Intent target, IBinder activityRecord) {
        this.mUserId = userId;
        this.mActivityInfo = activityInfo;
        this.mTarget = target;
        this.mActivityRecord = activityRecord;
    }

    public static StubActivityRecord create(Intent intent) {
        return new StubActivityRecord(intent.getIntExtra("_VM_|_user_id_", -1), (ActivityInfo) intent.getParcelableExtra("_VM_|_activity_info_"), (Intent) intent.getParcelableExtra("_VM_|_target_"), b.a(intent, "_VM_|_activity_record_v_"));
    }

    public static void saveStub(Intent shadow, Intent target, ActivityInfo activityInfo, IBinder activityRecord, int userId) {
        shadow.putExtra("_VM_|_user_id_", userId);
        shadow.putExtra("_VM_|_activity_info_", activityInfo);
        shadow.putExtra("_VM_|_target_", target);
        b.c(shadow, "_VM_|_activity_record_v_", activityRecord);
    }
}
