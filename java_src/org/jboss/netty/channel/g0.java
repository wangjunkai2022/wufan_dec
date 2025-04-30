package org.jboss.netty.channel;

import java.io.IOException;
import java.nio.channels.WritableByteChannel;
/* compiled from: FileRegion.java */
/* loaded from: classes5.dex */
public interface g0 extends org.jboss.netty.util.b {
    long getCount();

    long getPosition();

    long transferTo(WritableByteChannel writableByteChannel, long j4) throws IOException;
}
