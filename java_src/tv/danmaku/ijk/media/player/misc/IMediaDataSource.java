package tv.danmaku.ijk.media.player.misc;

import java.io.IOException;
/* loaded from: classes5.dex */
public interface IMediaDataSource {
    void close() throws IOException;

    long getSize() throws IOException;

    int readAt(long j4, byte[] bArr, int i2, int i4) throws IOException;
}
