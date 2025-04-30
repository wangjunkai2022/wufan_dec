package io.netty.handler.codec.redis;

import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.StringUtil;
/* loaded from: classes5.dex */
public abstract class AbstractStringRedisMessage implements a {
    private final String content;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractStringRedisMessage(String str) {
        this.content = (String) ObjectUtil.checkNotNull(str, "content");
    }

    public final String content() {
        return this.content;
    }

    public String toString() {
        return StringUtil.simpleClassName(this) + "[content=" + this.content + ']';
    }
}
