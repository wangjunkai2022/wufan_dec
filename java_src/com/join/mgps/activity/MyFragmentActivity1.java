package com.join.mgps.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.BaseAppCompatActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.VersionDto;
import com.papa.sim.statistic.JsonMapper;
/* loaded from: classes3.dex */
public class MyFragmentActivity1 extends BaseAppCompatActivity {
    private BroadcastReceiver myReceiver = new a();

    /* loaded from: classes3.dex */
    class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MyFragmentActivity1.this.check_version();
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
    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        try {
            if (this.isBackHome) {
                unregisterReceiver(this.myReceiver);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(f1.a.f65486l);
        intentFilter.setPriority(Integer.MAX_VALUE);
        registerReceiver(this.myReceiver, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }
}
