package io.netty.bootstrap;

import io.netty.bootstrap.AbstractBootstrap;
import io.netty.channel.Channel;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelHandler;
import io.netty.channel.ChannelOption;
import io.netty.channel.ChannelPromise;
import io.netty.channel.DefaultChannelPromise;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.ReflectiveChannelFactory;
import io.netty.util.AttributeKey;
import io.netty.util.concurrent.EventExecutor;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.GenericFutureListener;
import io.netty.util.concurrent.GlobalEventExecutor;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.SocketUtils;
import io.netty.util.internal.StringUtil;
import io.netty.util.internal.logging.InternalLogger;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3.dex */
public abstract class AbstractBootstrap<B extends AbstractBootstrap<B, C>, C extends Channel> implements Cloneable {
    private final Map<AttributeKey<?>, Object> attrs;
    private volatile ChannelFactory<? extends C> channelFactory;
    volatile EventLoopGroup group;
    private volatile ChannelHandler handler;
    private volatile SocketAddress localAddress;
    private final Map<ChannelOption<?>, Object> options;
    static final Map.Entry<ChannelOption<?>, Object>[] EMPTY_OPTION_ARRAY = new Map.Entry[0];
    static final Map.Entry<AttributeKey<?>, Object>[] EMPTY_ATTRIBUTE_ARRAY = new Map.Entry[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class PendingRegistrationPromise extends DefaultChannelPromise {
        private volatile boolean registered;

        /* JADX INFO: Access modifiers changed from: package-private */
        public PendingRegistrationPromise(Channel channel) {
            super(channel);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.netty.channel.DefaultChannelPromise, io.netty.util.concurrent.DefaultPromise
        public EventExecutor executor() {
            if (this.registered) {
                return super.executor();
            }
            return GlobalEventExecutor.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void registered() {
            this.registered = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractBootstrap() {
        this.options = new LinkedHashMap();
        this.attrs = new ConcurrentHashMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> Map<K, V> copiedMap(Map<K, V> map) {
        if (map.isEmpty()) {
            return Collections.emptyMap();
        }
        return Collections.unmodifiableMap(new HashMap(map));
    }

    private ChannelFuture doBind(final SocketAddress socketAddress) {
        final ChannelFuture initAndRegister = initAndRegister();
        final Channel channel = initAndRegister.channel();
        if (initAndRegister.cause() != null) {
            return initAndRegister;
        }
        if (initAndRegister.isDone()) {
            ChannelPromise newPromise = channel.newPromise();
            doBind0(initAndRegister, channel, socketAddress, newPromise);
            return newPromise;
        }
        final PendingRegistrationPromise pendingRegistrationPromise = new PendingRegistrationPromise(channel);
        initAndRegister.addListener((GenericFutureListener<? extends Future<? super Void>>) new ChannelFutureListener() { // from class: io.netty.bootstrap.AbstractBootstrap.1
            @Override // io.netty.util.concurrent.GenericFutureListener
            public void operationComplete(ChannelFuture channelFuture) throws Exception {
                Throwable cause = channelFuture.cause();
                if (cause != null) {
                    pendingRegistrationPromise.setFailure(cause);
                    return;
                }
                pendingRegistrationPromise.registered();
                AbstractBootstrap.doBind0(initAndRegister, channel, socketAddress, pendingRegistrationPromise);
            }
        });
        return pendingRegistrationPromise;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void doBind0(final ChannelFuture channelFuture, final Channel channel, final SocketAddress socketAddress, final ChannelPromise channelPromise) {
        channel.eventLoop().execute(new Runnable() { // from class: io.netty.bootstrap.AbstractBootstrap.2
            @Override // java.lang.Runnable
            public void run() {
                if (ChannelFuture.this.isSuccess()) {
                    channel.bind(socketAddress, channelPromise).addListener((GenericFutureListener<? extends Future<? super Void>>) ChannelFutureListener.CLOSE_ON_FAILURE);
                } else {
                    channelPromise.setFailure(ChannelFuture.this.cause());
                }
            }
        });
    }

    private B self() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setAttributes(Channel channel, Map.Entry<AttributeKey<?>, Object>[] entryArr) {
        for (Map.Entry<AttributeKey<?>, Object> entry : entryArr) {
            channel.attr(entry.getKey()).set(entry.getValue());
        }
    }

    private static void setChannelOption(Channel channel, ChannelOption<?> channelOption, Object obj, InternalLogger internalLogger) {
        try {
            if (channel.config().setOption(channelOption, obj)) {
                return;
            }
            internalLogger.warn("Unknown channel option '{}' for channel '{}'", channelOption, channel);
        } catch (Throwable th) {
            internalLogger.warn("Failed to set channel option '{}' with value '{}' for channel '{}'", channelOption, obj, channel, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setChannelOptions(Channel channel, Map.Entry<ChannelOption<?>, Object>[] entryArr, InternalLogger internalLogger) {
        for (Map.Entry<ChannelOption<?>, Object> entry : entryArr) {
            setChannelOption(channel, entry.getKey(), entry.getValue(), internalLogger);
        }
    }

    public <T> B attr(AttributeKey<T> attributeKey, T t3) {
        ObjectUtil.checkNotNull(attributeKey, "key");
        if (t3 == null) {
            this.attrs.remove(attributeKey);
        } else {
            this.attrs.put(attributeKey, t3);
        }
        return self();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map<AttributeKey<?>, Object> attrs() {
        return copiedMap(this.attrs);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map<AttributeKey<?>, Object> attrs0() {
        return this.attrs;
    }

    public ChannelFuture bind() {
        validate();
        SocketAddress socketAddress = this.localAddress;
        if (socketAddress != null) {
            return doBind(socketAddress);
        }
        throw new IllegalStateException("localAddress not set");
    }

    public B channel(Class<? extends C> cls) {
        return channelFactory((io.netty.channel.ChannelFactory) new ReflectiveChannelFactory((Class) ObjectUtil.checkNotNull(cls, "channelClass")));
    }

    @Deprecated
    public B channelFactory(ChannelFactory<? extends C> channelFactory) {
        ObjectUtil.checkNotNull(channelFactory, "channelFactory");
        if (this.channelFactory == null) {
            this.channelFactory = channelFactory;
            return self();
        }
        throw new IllegalStateException("channelFactory set already");
    }

    @Override // 
    /* renamed from: clone */
    public abstract B mo17clone();

    public abstract AbstractBootstrapConfig<B, C> config();

    public B group(EventLoopGroup eventLoopGroup) {
        ObjectUtil.checkNotNull(eventLoopGroup, "group");
        if (this.group == null) {
            this.group = eventLoopGroup;
            return self();
        }
        throw new IllegalStateException("group set already");
    }

    public B handler(ChannelHandler channelHandler) {
        this.handler = (ChannelHandler) ObjectUtil.checkNotNull(channelHandler, "handler");
        return self();
    }

    abstract void init(Channel channel) throws Exception;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ChannelFuture initAndRegister() {
        C c4 = null;
        try {
            c4 = this.channelFactory.newChannel();
            init(c4);
            ChannelFuture register = config().group().register(c4);
            if (register.cause() != null) {
                if (c4.isRegistered()) {
                    c4.close();
                } else {
                    c4.unsafe().closeForcibly();
                }
            }
            return register;
        } catch (Throwable th) {
            if (c4 != null) {
                c4.unsafe().closeForcibly();
                return new DefaultChannelPromise(c4, GlobalEventExecutor.INSTANCE).setFailure(th);
            }
            return new DefaultChannelPromise(new FailedChannel(), GlobalEventExecutor.INSTANCE).setFailure(th);
        }
    }

    public B localAddress(SocketAddress socketAddress) {
        this.localAddress = socketAddress;
        return self();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map.Entry<ChannelOption<?>, Object>[] newOptionsArray() {
        Map.Entry<ChannelOption<?>, Object>[] entryArr;
        synchronized (this.options) {
            entryArr = (Map.Entry[]) this.options.entrySet().toArray(EMPTY_OPTION_ARRAY);
        }
        return entryArr;
    }

    public <T> B option(ChannelOption<T> channelOption, T t3) {
        ObjectUtil.checkNotNull(channelOption, "option");
        synchronized (this.options) {
            if (t3 == null) {
                this.options.remove(channelOption);
            } else {
                this.options.put(channelOption, t3);
            }
        }
        return self();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map<ChannelOption<?>, Object> options() {
        Map<ChannelOption<?>, Object> copiedMap;
        synchronized (this.options) {
            copiedMap = copiedMap(this.options);
        }
        return copiedMap;
    }

    final Map<ChannelOption<?>, Object> options0() {
        return this.options;
    }

    public ChannelFuture register() {
        validate();
        return initAndRegister();
    }

    public String toString() {
        return StringUtil.simpleClassName(this) + '(' + config() + ')';
    }

    public B validate() {
        if (this.group != null) {
            if (this.channelFactory != null) {
                return self();
            }
            throw new IllegalStateException("channel or channelFactory not set");
        }
        throw new IllegalStateException("group not set");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ChannelHandler handler() {
        return this.handler;
    }

    public B localAddress(int i2) {
        return localAddress(new InetSocketAddress(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractBootstrap(AbstractBootstrap<B, C> abstractBootstrap) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.options = linkedHashMap;
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.attrs = concurrentHashMap;
        this.group = abstractBootstrap.group;
        this.channelFactory = abstractBootstrap.channelFactory;
        this.handler = abstractBootstrap.handler;
        this.localAddress = abstractBootstrap.localAddress;
        synchronized (abstractBootstrap.options) {
            linkedHashMap.putAll(abstractBootstrap.options);
        }
        concurrentHashMap.putAll(abstractBootstrap.attrs);
    }

    public B localAddress(String str, int i2) {
        return localAddress(SocketUtils.socketAddress(str, i2));
    }

    public ChannelFuture bind(int i2) {
        return bind(new InetSocketAddress(i2));
    }

    public B localAddress(InetAddress inetAddress, int i2) {
        return localAddress(new InetSocketAddress(inetAddress, i2));
    }

    public ChannelFuture bind(String str, int i2) {
        return bind(SocketUtils.socketAddress(str, i2));
    }

    public B channelFactory(io.netty.channel.ChannelFactory<? extends C> channelFactory) {
        return channelFactory((ChannelFactory) channelFactory);
    }

    @Deprecated
    public final EventLoopGroup group() {
        return this.group;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final SocketAddress localAddress() {
        return this.localAddress;
    }

    public ChannelFuture bind(InetAddress inetAddress, int i2) {
        return bind(new InetSocketAddress(inetAddress, i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ChannelFactory<? extends C> channelFactory() {
        return this.channelFactory;
    }

    public ChannelFuture bind(SocketAddress socketAddress) {
        validate();
        return doBind((SocketAddress) ObjectUtil.checkNotNull(socketAddress, "localAddress"));
    }
}
