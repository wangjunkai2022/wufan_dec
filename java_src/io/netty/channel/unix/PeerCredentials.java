package io.netty.channel.unix;

import io.netty.util.internal.EmptyArrays;
/* loaded from: classes5.dex */
public final class PeerCredentials {
    private final int[] gids;
    private final int pid;
    private final int uid;

    PeerCredentials(int i2, int i4, int... iArr) {
        this.pid = i2;
        this.uid = i4;
        this.gids = iArr == null ? EmptyArrays.EMPTY_INTS : iArr;
    }

    public int[] gids() {
        return (int[]) this.gids.clone();
    }

    public int pid() {
        return this.pid;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("UserCredentials[pid=");
        sb.append(this.pid);
        sb.append("; uid=");
        sb.append(this.uid);
        sb.append("; gids=[");
        int[] iArr = this.gids;
        if (iArr.length > 0) {
            sb.append(iArr[0]);
            for (int i2 = 1; i2 < this.gids.length; i2++) {
                sb.append(", ");
                sb.append(this.gids[i2]);
            }
        }
        sb.append(']');
        return sb.toString();
    }

    public int uid() {
        return this.uid;
    }
}
