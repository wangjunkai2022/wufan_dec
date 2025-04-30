package io.netty.util;

import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.SystemPropertyUtil;
import java.util.Locale;
/* loaded from: classes5.dex */
public final class NettyRuntime {
    private static final AvailableProcessorsHolder holder = new AvailableProcessorsHolder();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class AvailableProcessorsHolder {
        private int availableProcessors;

        AvailableProcessorsHolder() {
        }

        @SuppressForbidden(reason = "to obtain default number of available processors")
        synchronized int availableProcessors() {
            if (this.availableProcessors == 0) {
                setAvailableProcessors(SystemPropertyUtil.getInt("io.netty.availableProcessors", Runtime.getRuntime().availableProcessors()));
            }
            return this.availableProcessors;
        }

        synchronized void setAvailableProcessors(int i2) {
            ObjectUtil.checkPositive(i2, "availableProcessors");
            int i4 = this.availableProcessors;
            if (i4 == 0) {
                this.availableProcessors = i2;
            } else {
                throw new IllegalStateException(String.format(Locale.ROOT, "availableProcessors is already set to [%d], rejecting [%d]", Integer.valueOf(i4), Integer.valueOf(i2)));
            }
        }
    }

    private NettyRuntime() {
    }

    public static int availableProcessors() {
        return holder.availableProcessors();
    }

    public static void setAvailableProcessors(int i2) {
        holder.setAvailableProcessors(i2);
    }
}
