package com.xinzhu.overmind.client.stub.record;

import android.content.Intent;
import android.content.pm.ActivityInfo;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class StubBroadcastRecord {
    public ArrayList<ActivityInfo> mActivityInfo;
    public Intent mIntent;
    public int mUserId;

    public StubBroadcastRecord(Intent intent, ArrayList<ActivityInfo> activityInfo, int userId) {
        this.mIntent = intent;
        this.mActivityInfo = activityInfo;
        this.mUserId = userId;
    }

    public static StubBroadcastRecord create(Intent intent) {
        return new StubBroadcastRecord((Intent) intent.getParcelableExtra("_VM_|_target_"), intent.getParcelableArrayListExtra("_VM_|_activity_info_"), intent.getIntExtra("_VM_|_user_id_", 0));
    }

    public static void saveStub(Intent shadow, Intent target, ArrayList<ActivityInfo> activityInfo, int userId) {
        shadow.putExtra("_VM_|_target_", target);
        shadow.putParcelableArrayListExtra("_VM_|_activity_info_", activityInfo);
        shadow.putExtra("_VM_|_user_id_", userId);
    }
}
