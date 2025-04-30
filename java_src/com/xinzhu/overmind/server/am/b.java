package com.xinzhu.overmind.server.am;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.Binder;
import android.os.IBinder;
import com.xinzhu.overmind.server.ProcessRecord;
/* compiled from: ActivityRecord.java */
/* loaded from: classes3.dex */
public class b extends Binder {
    public ComponentName component;
    public boolean finished;
    public ActivityInfo info;
    public Intent intent;
    public String launchedFromPackage;
    public int launchedFromUid;
    public ProcessRecord processRecord;
    public IBinder resultTo;
    public h task;
    public IBinder token;
    public int userId;

    public static b create(Intent intent, ActivityInfo info, IBinder resultTo, int userId, String launchedFromPackage, int launchedFromUid) {
        b bVar = new b();
        bVar.intent = intent;
        bVar.info = info;
        bVar.component = new ComponentName(info.packageName, info.name);
        bVar.resultTo = resultTo;
        bVar.userId = userId;
        bVar.launchedFromPackage = launchedFromPackage;
        bVar.launchedFromUid = launchedFromUid;
        return bVar;
    }
}
