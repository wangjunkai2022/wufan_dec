package io.netty.handler.codec.dns;
/* loaded from: classes5.dex */
public interface DnsOptEcsRecord extends DnsOptPseudoRecord {
    byte[] address();

    int scopePrefixLength();

    int sourcePrefixLength();
}
