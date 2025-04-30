package io.netty.handler.codec.redis;

import io.netty.util.AbstractReferenceCounted;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.StringUtil;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
public class ArrayRedisMessage extends AbstractReferenceCounted implements a {
    private final List<a> children;
    public static final ArrayRedisMessage NULL_INSTANCE = new ArrayRedisMessage() { // from class: io.netty.handler.codec.redis.ArrayRedisMessage.1
        @Override // io.netty.handler.codec.redis.ArrayRedisMessage
        public boolean isNull() {
            return true;
        }

        @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
        public boolean release() {
            return false;
        }

        @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
        public boolean release(int i2) {
            return false;
        }

        @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
        public ArrayRedisMessage retain() {
            return this;
        }

        @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
        public ArrayRedisMessage retain(int i2) {
            return this;
        }

        @Override // io.netty.handler.codec.redis.ArrayRedisMessage
        public String toString() {
            return "NullArrayRedisMessage";
        }

        @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
        public ArrayRedisMessage touch() {
            return this;
        }

        @Override // io.netty.handler.codec.redis.ArrayRedisMessage, io.netty.util.ReferenceCounted
        public ArrayRedisMessage touch(Object obj) {
            return this;
        }
    };
    public static final ArrayRedisMessage EMPTY_INSTANCE = new ArrayRedisMessage() { // from class: io.netty.handler.codec.redis.ArrayRedisMessage.2
        @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
        public boolean release() {
            return false;
        }

        @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
        public boolean release(int i2) {
            return false;
        }

        @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
        public ArrayRedisMessage retain() {
            return this;
        }

        @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
        public ArrayRedisMessage retain(int i2) {
            return this;
        }

        @Override // io.netty.handler.codec.redis.ArrayRedisMessage
        public String toString() {
            return "EmptyArrayRedisMessage";
        }

        @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
        public ArrayRedisMessage touch() {
            return this;
        }

        @Override // io.netty.handler.codec.redis.ArrayRedisMessage, io.netty.util.ReferenceCounted
        public ArrayRedisMessage touch(Object obj) {
            return this;
        }
    };

    public final List<a> children() {
        return this.children;
    }

    @Override // io.netty.util.AbstractReferenceCounted
    protected void deallocate() {
        for (a aVar : this.children) {
            ReferenceCountUtil.release(aVar);
        }
    }

    public boolean isNull() {
        return false;
    }

    public String toString() {
        return StringUtil.simpleClassName(this) + "[children=" + this.children.size() + ']';
    }

    private ArrayRedisMessage() {
        this.children = Collections.emptyList();
    }

    @Override // io.netty.util.ReferenceCounted
    public ArrayRedisMessage touch(Object obj) {
        for (a aVar : this.children) {
            ReferenceCountUtil.touch(aVar);
        }
        return this;
    }

    public ArrayRedisMessage(List<a> list) {
        this.children = (List) ObjectUtil.checkNotNull(list, "children");
    }
}
