package com.mob.commons.cc;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Build;
/* loaded from: classes4.dex */
public class d implements t<Context> {
    @Override // com.mob.commons.cc.t
    public boolean a(Context context, Class<Context> cls, String str, Object[] objArr, boolean[] zArr, Object[] objArr2, Throwable[] thArr) {
        if (com.mob.commons.o.a("016]ff4idGehdifgRdil?eh-i$dh9jIdedgBi").equals(str) && objArr.length == 1 && (objArr[0] instanceof String)) {
            try {
                objArr2[0] = context.getSystemService((String) objArr[0]);
            } catch (Throwable th) {
                objArr2[0] = null;
                thArr[0] = th;
            }
            return true;
        } else if ("getApplicationInfo".equals(str) && objArr.length == 0) {
            objArr2[0] = context.getApplicationInfo();
            return true;
        } else if (com.mob.commons.o.a("018'ffBid4ggecdk9di^dkTdZgeYiIfgeced1ji9dh").equals(str) && objArr.length == 0) {
            objArr2[0] = context.getContentResolver();
            return true;
        } else if (com.mob.commons.o.a("014'ff=idAghdfdgdjdfffWiPefdf3li").equals(str) && objArr.length == 0) {
            objArr2[0] = context.getPackageName();
            return true;
        } else if (com.mob.commons.o.a("017Dff'id;ghdfdgdjdfff_iDgidfdkdfff@iOdh").equals(str) && objArr.length == 0) {
            objArr2[0] = context.getPackageManager();
            return true;
        } else if ("startActivity".equals(str) && objArr.length == 1 && (objArr[0] instanceof Intent)) {
            context.startActivity((Intent) objArr[0]);
            return true;
        } else if (com.mob.commons.o.a("011YffXid$fkdeedYiFfgfidedh").equals(str)) {
            objArr2[0] = context.getFilesDir();
            return true;
        } else if (com.mob.commons.o.a("009[ff_idCejfgfgCidRfg").equals(str)) {
            objArr2[0] = context.getAssets();
            return true;
        } else {
            if (com.mob.commons.o.a("016'dhMiGffdefg diTdhge!iIdg3iIdeMji5dh").equals(str)) {
                if (Build.VERSION.SDK_INT >= 26 && objArr.length == 3 && (objArr[0] instanceof BroadcastReceiver) && (objArr[1] instanceof IntentFilter) && (objArr[2] instanceof Integer)) {
                    objArr2[0] = context.registerReceiver((BroadcastReceiver) objArr[0], (IntentFilter) objArr[1], ((Integer) objArr[2]).intValue());
                    return true;
                } else if (objArr.length == 2 && (objArr[0] instanceof BroadcastReceiver) && (objArr[1] instanceof IntentFilter)) {
                    objArr2[0] = context.registerReceiver((BroadcastReceiver) objArr[0], (IntentFilter) objArr[1]);
                    return true;
                }
            } else if (com.mob.commons.o.a("0186dcdkdh9i(ffdefgGdi'dhge$i]dgFiXdeUji.dh").equals(str)) {
                context.unregisterReceiver((BroadcastReceiver) objArr[0]);
                return true;
            } else if (com.mob.commons.o.a("019:dg[ciQdgdjehUi8edfhghUiOdhQl?defgfgdeecdk").equals(str) && objArr.length == 1 && (objArr[0] instanceof String)) {
                if (Build.VERSION.SDK_INT >= 23) {
                    objArr2[0] = Integer.valueOf(context.checkSelfPermission((String) objArr[0]));
                } else {
                    objArr2[0] = Integer.valueOf(context.getPackageManager().checkPermission((String) objArr[0], context.getPackageName()));
                }
                return true;
            } else if ("bindService".equals(str) && objArr.length == 3) {
                objArr2[0] = Boolean.valueOf(context.bindService((Intent) objArr[0], (ServiceConnection) objArr[1], ((Integer) objArr[2]).intValue()));
                return true;
            } else if ("unbindService".equals(str) && objArr.length == 1 && (objArr[0] instanceof ServiceConnection)) {
                context.unbindService((ServiceConnection) objArr[0]);
                return true;
            }
            return false;
        }
    }
}
