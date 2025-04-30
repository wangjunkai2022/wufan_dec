package com.mob;

import com.mob.tools.proguard.PublicMemberKeeper;
@Deprecated
/* loaded from: classes4.dex */
public abstract class OperationCallback<T> implements PublicMemberKeeper {
    public abstract void onComplete(T t3);

    public abstract void onFailure(Throwable th);
}
