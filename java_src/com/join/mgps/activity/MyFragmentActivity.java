package com.join.mgps.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.BaseFragmentActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.VersionDto;
import com.papa.sim.statistic.JsonMapper;
/* loaded from: classes3.dex */
public class MyFragmentActivity extends BaseFragmentActivity {

    /* renamed from: a  reason: collision with root package name */
    private BroadcastReceiver f34234a = new a();

    /* loaded from: classes3.dex */
    class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MyFragmentActivity.this.check_version();
        }
    }

    void check_version() {
        SharedPreferences sharedPreferences = getSharedPreferences("VersionXML", 0);
        new VersionDto();
        VersionDto versionDto = (VersionDto) JsonMapper.e().fromJson(sharedPreferences.getString("VersionDto", ""), VersionDto.class);
        boolean z3 = sharedPreferences.getBoolean("Mandatory", false);
        if (versionDto != null) {
            new com.join.mgps.dialog.f(this, R.style.HKDialogLoading, versionDto, z3).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            unregisterReceiver(this.f34234a);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(f1.a.f65486l);
        intentFilter.setPriority(Integer.MAX_VALUE);
        registerReceiver(this.f34234a, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }
}
