package io.netty.handler.ipfilter;

import io.netty.channel.ChannelHandler;
import io.netty.channel.ChannelHandlerContext;
import io.netty.util.internal.ObjectUtil;
import java.net.InetSocketAddress;
@ChannelHandler.Sharable
/* loaded from: classes5.dex */
public class RuleBasedIpFilter extends AbstractRemoteAddressFilter<InetSocketAddress> {
    private final IpFilterRule[] rules;

    public RuleBasedIpFilter(IpFilterRule... ipFilterRuleArr) {
        this.rules = (IpFilterRule[]) ObjectUtil.checkNotNull(ipFilterRuleArr, "rules");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.ipfilter.AbstractRemoteAddressFilter
    public boolean accept(ChannelHandlerContext channelHandlerContext, InetSocketAddress inetSocketAddress) throws Exception {
        IpFilterRule ipFilterRule;
        IpFilterRule[] ipFilterRuleArr = this.rules;
        int length = ipFilterRuleArr.length;
        for (int i2 = 0; i2 < length && (ipFilterRule = ipFilterRuleArr[i2]) != null; i2++) {
            if (ipFilterRule.matches(inetSocketAddress)) {
                return ipFilterRule.ruleType() == IpFilterRuleType.ACCEPT;
            }
        }
        return true;
    }
}
