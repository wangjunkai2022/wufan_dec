package com.xinzhu.overmind.client.stub.record;

import android.content.Intent;
import android.content.pm.ServiceInfo;
/* loaded from: classes3.dex */
public class StubServiceRecord {
    public ServiceInfo mServiceInfo;
    public Intent mServiceIntent;
    public int mStartId;
    public int mUserId;

    public StubServiceRecord(Intent serviceIntent, ServiceInfo serviceInfo, int userId, int startId) {
        this.mServiceIntent = serviceIntent;
        this.mServiceInfo = serviceInfo;
        this.mUserId = userId;
        this.mStartId = startId;
    }

    public static StubServiceRecord create(Intent intent) {
        return new StubServiceRecord((Intent) intent.getParcelableExtra("_VM_|_target_"), (ServiceInfo) intent.getParcelableExtra("_VM_|_service_info_"), intent.getIntExtra("_VM_|_user_id_", 0), intent.getIntExtra("_VM_|_start_id_", 0));
    }

    public static void saveStub(Intent shadow, Intent target, ServiceInfo serviceInfo, int userId, int startId) {
        shadow.putExtra("_VM_|_target_", target);
        shadow.putExtra("_VM_|_service_info_", serviceInfo);
        shadow.putExtra("_VM_|_user_id_", userId);
        shadow.putExtra("_VM_|_start_id_", startId);
    }
}
