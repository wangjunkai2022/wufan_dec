package io.netty.handler.ipfilter;

import java.net.InetSocketAddress;
/* loaded from: classes5.dex */
public interface IpFilterRule {
    boolean matches(InetSocketAddress inetSocketAddress);

    IpFilterRuleType ruleType();
}
