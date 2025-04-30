package com.android.dex;

import com.android.dex.Dex;
import com.android.dex.util.Unsigned;
/* loaded from: classes2.dex */
public class CallSiteId implements Comparable<CallSiteId> {
    private final Dex dex;
    private final int offset;

    public CallSiteId(Dex dex, int i2) {
        this.dex = dex;
        this.offset = i2;
    }

    public int getCallSiteOffset() {
        return this.offset;
    }

    public String toString() {
        Dex dex = this.dex;
        if (dex == null) {
            return String.valueOf(this.offset);
        }
        return dex.protoIds().get(this.offset).toString();
    }

    public void writeTo(Dex.Section section) {
        section.writeInt(this.offset);
    }

    @Override // java.lang.Comparable
    public int compareTo(CallSiteId callSiteId) {
        return Unsigned.compare(this.offset, callSiteId.offset);
    }
}
