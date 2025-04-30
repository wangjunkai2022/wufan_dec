package com.mob.tools.network;

import com.mob.tools.proguard.PublicMemberKeeper;
/* loaded from: classes4.dex */
public class KVPair<T> implements PublicMemberKeeper {
    public final String name;
    public final T value;

    public KVPair(String str, T t3) {
        this.name = str;
        this.value = t3;
    }

    public String toString() {
        return this.name + " = " + this.value;
    }
}
