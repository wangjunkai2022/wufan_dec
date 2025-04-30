package io.netty.handler.codec.http2;

import io.netty.util.collection.CharObjectHashMap;
import io.netty.util.internal.ObjectUtil;
/* loaded from: classes5.dex */
public final class Http2Settings extends CharObjectHashMap<Long> {
    private static final int DEFAULT_CAPACITY = 13;
    private static final Long FALSE = 0L;
    private static final Long TRUE = 1L;

    public Http2Settings() {
        this(13);
    }

    public static Http2Settings defaultSettings() {
        return new Http2Settings().maxHeaderListSize(8192L);
    }

    private static void verifyStandardSetting(int i2, Long l4) {
        ObjectUtil.checkNotNull(l4, "value");
        switch (i2) {
            case 1:
                if (l4.longValue() < 0 || l4.longValue() > 4294967295L) {
                    throw new IllegalArgumentException("Setting HEADER_TABLE_SIZE is invalid: " + l4);
                }
                return;
            case 2:
                if (l4.longValue() == 0 || l4.longValue() == 1) {
                    return;
                }
                throw new IllegalArgumentException("Setting ENABLE_PUSH is invalid: " + l4);
            case 3:
                if (l4.longValue() < 0 || l4.longValue() > 4294967295L) {
                    throw new IllegalArgumentException("Setting MAX_CONCURRENT_STREAMS is invalid: " + l4);
                }
                return;
            case 4:
                if (l4.longValue() < 0 || l4.longValue() > 2147483647L) {
                    throw new IllegalArgumentException("Setting INITIAL_WINDOW_SIZE is invalid: " + l4);
                }
                return;
            case 5:
                if (Http2CodecUtil.isMaxFrameSizeValid(l4.intValue())) {
                    return;
                }
                throw new IllegalArgumentException("Setting MAX_FRAME_SIZE is invalid: " + l4);
            case 6:
                if (l4.longValue() < 0 || l4.longValue() > 4294967295L) {
                    throw new IllegalArgumentException("Setting MAX_HEADER_LIST_SIZE is invalid: " + l4);
                }
                return;
            default:
                return;
        }
    }

    public Http2Settings copyFrom(Http2Settings http2Settings) {
        clear();
        putAll(http2Settings);
        return this;
    }

    public Integer getIntValue(char c4) {
        Long l4 = get(c4);
        if (l4 == null) {
            return null;
        }
        return Integer.valueOf(l4.intValue());
    }

    public Long headerTableSize() {
        return get((char) 1);
    }

    public Integer initialWindowSize() {
        return getIntValue((char) 4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.util.collection.CharObjectHashMap
    public String keyToString(char c4) {
        switch (c4) {
            case 1:
                return "HEADER_TABLE_SIZE";
            case 2:
                return "ENABLE_PUSH";
            case 3:
                return "MAX_CONCURRENT_STREAMS";
            case 4:
                return "INITIAL_WINDOW_SIZE";
            case 5:
                return "MAX_FRAME_SIZE";
            case 6:
                return "MAX_HEADER_LIST_SIZE";
            default:
                return super.keyToString(c4);
        }
    }

    public Long maxConcurrentStreams() {
        return get((char) 3);
    }

    public Integer maxFrameSize() {
        return getIntValue((char) 5);
    }

    public Long maxHeaderListSize() {
        return get((char) 6);
    }

    public Boolean pushEnabled() {
        Long l4 = get((char) 2);
        if (l4 == null) {
            return null;
        }
        return Boolean.valueOf(TRUE.equals(l4));
    }

    public Http2Settings(int i2, float f4) {
        super(i2, f4);
    }

    public Http2Settings headerTableSize(long j4) {
        put((char) 1, Long.valueOf(j4));
        return this;
    }

    public Http2Settings initialWindowSize(int i2) {
        put((char) 4, Long.valueOf(i2));
        return this;
    }

    public Http2Settings maxConcurrentStreams(long j4) {
        put((char) 3, Long.valueOf(j4));
        return this;
    }

    public Http2Settings maxFrameSize(int i2) {
        put((char) 5, Long.valueOf(i2));
        return this;
    }

    public Http2Settings maxHeaderListSize(long j4) {
        put((char) 6, Long.valueOf(j4));
        return this;
    }

    @Override // io.netty.util.collection.CharObjectHashMap, io.netty.util.collection.CharObjectMap
    public Long put(char c4, Long l4) {
        verifyStandardSetting(c4, l4);
        return (Long) super.put(c4, (char) l4);
    }

    public Http2Settings(int i2) {
        super(i2);
    }

    public Http2Settings pushEnabled(boolean z3) {
        put((char) 2, z3 ? TRUE : FALSE);
        return this;
    }
}
