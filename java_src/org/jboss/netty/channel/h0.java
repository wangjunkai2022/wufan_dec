package org.jboss.netty.channel;
/* compiled from: LifeCycleAwareChannelHandler.java */
/* loaded from: classes5.dex */
public interface h0 extends ChannelHandler {
    void afterAdd(m mVar) throws Exception;

    void afterRemove(m mVar) throws Exception;

    void beforeAdd(m mVar) throws Exception;

    void beforeRemove(m mVar) throws Exception;
}
