package org.jboss.netty.channel;

import java.util.List;
import java.util.Map;
/* compiled from: ChannelPipeline.java */
/* loaded from: classes5.dex */
public interface n {
    void a(h hVar);

    ChannelHandler b(String str, String str2, ChannelHandler channelHandler);

    void c(h hVar);

    void d(ChannelHandler channelHandler);

    boolean e();

    j execute(Runnable runnable);

    void f(String str, String str2, ChannelHandler channelHandler);

    void g(String str, ChannelHandler channelHandler);

    <T extends ChannelHandler> T get(Class<T> cls);

    ChannelHandler get(String str);

    e getChannel();

    m getContext(Class<? extends ChannelHandler> cls);

    m getContext(String str);

    m getContext(ChannelHandler channelHandler);

    ChannelHandler getFirst();

    ChannelHandler getLast();

    List<String> getNames();

    void h(String str, String str2, ChannelHandler channelHandler);

    void i(e eVar, p pVar);

    void j(String str, ChannelHandler channelHandler);

    <T extends ChannelHandler> T k(Class<T> cls, String str, ChannelHandler channelHandler);

    void l(ChannelHandler channelHandler, String str, ChannelHandler channelHandler2);

    p m();

    <T extends ChannelHandler> T remove(Class<T> cls);

    ChannelHandler remove(String str);

    ChannelHandler removeFirst();

    ChannelHandler removeLast();

    Map<String, ChannelHandler> toMap();
}
