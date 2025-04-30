package com.xinzhu.overmind.client.stub;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import com.xinzhu.haunted.android.content.m;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.frameworks.a;
import com.xinzhu.overmind.client.stub.record.StubTrampolineRecord;
/* loaded from: classes.dex */
public class StubTrampolineActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    public static final String f64265a = "StubTrampolineActivity";

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Intent intent = getIntent();
        try {
            IBinder c4 = new m(intent).c("_VM_|_trampoline_result_to_");
            String stringExtra = intent.getStringExtra("_VM_|_trampoline_result_who_");
            int intExtra = intent.getIntExtra("_VM_|_trampoline_request_code_", 0);
            Bundle bundleExtra = intent.getBundleExtra("_VM_|_trampoline_options_");
            String stringExtra2 = intent.getStringExtra("_VM_|_trampoline_calling_package_");
            int intExtra2 = intent.getIntExtra("_VM_|_trampoline_flagsMask_", 0);
            int intExtra3 = intent.getIntExtra("_VM_|_trampoline_flagsValues_", 0);
            StubTrampolineRecord create = StubTrampolineRecord.create(intent);
            if (create.sanityCheck()) {
                finish();
                if (c4 == null) {
                    create.mTarget.addFlags(268435456);
                    a mindActivityManager = Overmind.getMindActivityManager();
                    int i2 = create.mUserId;
                    Intent intent2 = create.mTarget;
                    mindActivityManager.y(i2, stringExtra2, intent2, intent2.getType(), null, null, -1, 0, bundleExtra);
                } else {
                    int i4 = intExtra2 & (-196);
                    Intent intent3 = create.mTarget;
                    intent3.setFlags(((i4 ^ (-1)) & intent3.getFlags()) | (intExtra3 & i4));
                    a mindActivityManager2 = Overmind.getMindActivityManager();
                    int i5 = create.mUserId;
                    Intent intent4 = create.mTarget;
                    mindActivityManager2.y(i5, stringExtra2, intent4, intent4.getType(), c4, stringExtra, intExtra, 0, bundleExtra);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
