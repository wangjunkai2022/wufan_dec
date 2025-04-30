package io.netty.handler.codec.haproxy;

import external.org.apache.commons.lang3.d;
import io.netty.buffer.ByteBuf;
import io.netty.handler.codec.haproxy.HAProxyProxiedProtocol;
import io.netty.handler.codec.haproxy.HAProxyTLV;
import io.netty.util.AbstractReferenceCounted;
import io.netty.util.ByteProcessor;
import io.netty.util.CharsetUtil;
import io.netty.util.NetUtil;
import io.netty.util.ResourceLeakDetector;
import io.netty.util.ResourceLeakDetectorFactory;
import io.netty.util.ResourceLeakTracker;
import io.netty.util.internal.ObjectUtil;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
public final class HAProxyMessage extends AbstractReferenceCounted {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final ResourceLeakDetector<HAProxyMessage> leakDetector = ResourceLeakDetectorFactory.instance().newResourceLeakDetector(HAProxyMessage.class);
    private final HAProxyCommand command;
    private final String destinationAddress;
    private final int destinationPort;
    private final ResourceLeakTracker<HAProxyMessage> leak;
    private final HAProxyProtocolVersion protocolVersion;
    private final HAProxyProxiedProtocol proxiedProtocol;
    private final String sourceAddress;
    private final int sourcePort;
    private final List<HAProxyTLV> tlvs;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.netty.handler.codec.haproxy.HAProxyMessage$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$haproxy$HAProxyProxiedProtocol$AddressFamily;
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$haproxy$HAProxyTLV$Type;

        static {
            int[] iArr = new int[HAProxyProxiedProtocol.AddressFamily.values().length];
            $SwitchMap$io$netty$handler$codec$haproxy$HAProxyProxiedProtocol$AddressFamily = iArr;
            try {
                iArr[HAProxyProxiedProtocol.AddressFamily.AF_UNSPEC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$haproxy$HAProxyProxiedProtocol$AddressFamily[HAProxyProxiedProtocol.AddressFamily.AF_UNIX.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$haproxy$HAProxyProxiedProtocol$AddressFamily[HAProxyProxiedProtocol.AddressFamily.AF_IPv4.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$haproxy$HAProxyProxiedProtocol$AddressFamily[HAProxyProxiedProtocol.AddressFamily.AF_IPv6.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[HAProxyTLV.Type.values().length];
            $SwitchMap$io$netty$handler$codec$haproxy$HAProxyTLV$Type = iArr2;
            try {
                iArr2[HAProxyTLV.Type.PP2_TYPE_SSL.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$haproxy$HAProxyTLV$Type[HAProxyTLV.Type.PP2_TYPE_ALPN.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$haproxy$HAProxyTLV$Type[HAProxyTLV.Type.PP2_TYPE_AUTHORITY.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$haproxy$HAProxyTLV$Type[HAProxyTLV.Type.PP2_TYPE_SSL_VERSION.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$haproxy$HAProxyTLV$Type[HAProxyTLV.Type.PP2_TYPE_SSL_CN.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$haproxy$HAProxyTLV$Type[HAProxyTLV.Type.PP2_TYPE_NETNS.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$haproxy$HAProxyTLV$Type[HAProxyTLV.Type.OTHER.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    private HAProxyMessage(HAProxyProtocolVersion hAProxyProtocolVersion, HAProxyCommand hAProxyCommand, HAProxyProxiedProtocol hAProxyProxiedProtocol, String str, String str2, String str3, String str4) {
        this(hAProxyProtocolVersion, hAProxyCommand, hAProxyProxiedProtocol, str, str2, portStringToInt(str3), portStringToInt(str4));
    }

    private static void checkAddress(String str, HAProxyProxiedProtocol.AddressFamily addressFamily) {
        ObjectUtil.checkNotNull(addressFamily, "addrFamily");
        int[] iArr = AnonymousClass1.$SwitchMap$io$netty$handler$codec$haproxy$HAProxyProxiedProtocol$AddressFamily;
        int i2 = iArr[addressFamily.ordinal()];
        if (i2 == 1) {
            if (str == null) {
                return;
            }
            throw new HAProxyProtocolException("unable to validate an AF_UNSPEC address: " + str);
        } else if (i2 != 2) {
            ObjectUtil.checkNotNull(str, "address");
            int i4 = iArr[addressFamily.ordinal()];
            if (i4 == 3) {
                if (NetUtil.isValidIpV4Address(str)) {
                    return;
                }
                throw new HAProxyProtocolException("invalid IPv4 address: " + str);
            } else if (i4 == 4) {
                if (NetUtil.isValidIpV6Address(str)) {
                    return;
                }
                throw new HAProxyProtocolException("invalid IPv6 address: " + str);
            } else {
                throw new Error();
            }
        }
    }

    private static void checkPort(int i2) {
        if (i2 < 0 || i2 > 65535) {
            throw new HAProxyProtocolException("invalid port: " + i2 + " (expected: 1 ~ 65535)");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static HAProxyMessage decodeHeader(ByteBuf byteBuf) {
        String str;
        String ipBytesToString;
        int readUnsignedShort;
        int readUnsignedShort2;
        ObjectUtil.checkNotNull(byteBuf, "header");
        int i2 = 16;
        if (byteBuf.readableBytes() >= 16) {
            byteBuf.skipBytes(12);
            byte readByte = byteBuf.readByte();
            try {
                HAProxyProtocolVersion valueOf = HAProxyProtocolVersion.valueOf(readByte);
                HAProxyProtocolVersion hAProxyProtocolVersion = HAProxyProtocolVersion.V2;
                if (valueOf == hAProxyProtocolVersion) {
                    try {
                        HAProxyCommand valueOf2 = HAProxyCommand.valueOf(readByte);
                        HAProxyCommand hAProxyCommand = HAProxyCommand.LOCAL;
                        if (valueOf2 == hAProxyCommand) {
                            return unknownMsg(hAProxyProtocolVersion, hAProxyCommand);
                        }
                        try {
                            HAProxyProxiedProtocol valueOf3 = HAProxyProxiedProtocol.valueOf(byteBuf.readByte());
                            if (valueOf3 == HAProxyProxiedProtocol.UNKNOWN) {
                                return unknownMsg(hAProxyProtocolVersion, HAProxyCommand.PROXY);
                            }
                            int readUnsignedShort3 = byteBuf.readUnsignedShort();
                            HAProxyProxiedProtocol.AddressFamily addressFamily = valueOf3.addressFamily();
                            if (addressFamily == HAProxyProxiedProtocol.AddressFamily.AF_UNIX) {
                                if (readUnsignedShort3 >= 216 && byteBuf.readableBytes() >= 216) {
                                    int readerIndex = byteBuf.readerIndex();
                                    ByteProcessor byteProcessor = ByteProcessor.FIND_NUL;
                                    int forEachByte = byteBuf.forEachByte(readerIndex, 108, byteProcessor);
                                    int i4 = forEachByte == -1 ? 108 : forEachByte - readerIndex;
                                    Charset charset = CharsetUtil.US_ASCII;
                                    String byteBuf2 = byteBuf.toString(readerIndex, i4, charset);
                                    int i5 = readerIndex + 108;
                                    int forEachByte2 = byteBuf.forEachByte(i5, 108, byteProcessor);
                                    String byteBuf3 = byteBuf.toString(i5, forEachByte2 == -1 ? 108 : forEachByte2 - i5, charset);
                                    byteBuf.readerIndex(i5 + 108);
                                    ipBytesToString = byteBuf3;
                                    str = byteBuf2;
                                    readUnsignedShort = 0;
                                    readUnsignedShort2 = 0;
                                } else {
                                    throw new HAProxyProtocolException("incomplete UNIX socket address information: " + Math.min(readUnsignedShort3, byteBuf.readableBytes()) + " bytes (expected: 216+ bytes)");
                                }
                            } else {
                                if (addressFamily == HAProxyProxiedProtocol.AddressFamily.AF_IPv4) {
                                    if (readUnsignedShort3 < 12 || byteBuf.readableBytes() < 12) {
                                        throw new HAProxyProtocolException("incomplete IPv4 address information: " + Math.min(readUnsignedShort3, byteBuf.readableBytes()) + " bytes (expected: 12+ bytes)");
                                    }
                                    i2 = 4;
                                } else if (addressFamily == HAProxyProxiedProtocol.AddressFamily.AF_IPv6) {
                                    if (readUnsignedShort3 < 36 || byteBuf.readableBytes() < 36) {
                                        throw new HAProxyProtocolException("incomplete IPv6 address information: " + Math.min(readUnsignedShort3, byteBuf.readableBytes()) + " bytes (expected: 36+ bytes)");
                                    }
                                } else {
                                    throw new HAProxyProtocolException("unable to parse address information (unknown address family: " + addressFamily + ')');
                                }
                                String ipBytesToString2 = ipBytesToString(byteBuf, i2);
                                str = ipBytesToString2;
                                ipBytesToString = ipBytesToString(byteBuf, i2);
                                readUnsignedShort = byteBuf.readUnsignedShort();
                                readUnsignedShort2 = byteBuf.readUnsignedShort();
                            }
                            return new HAProxyMessage(valueOf, valueOf2, valueOf3, str, ipBytesToString, readUnsignedShort, readUnsignedShort2, readTlvs(byteBuf));
                        } catch (IllegalArgumentException e4) {
                            throw new HAProxyProtocolException(e4);
                        }
                    } catch (IllegalArgumentException e5) {
                        throw new HAProxyProtocolException(e5);
                    }
                }
                throw new HAProxyProtocolException("version 1 unsupported: 0x" + Integer.toHexString(readByte));
            } catch (IllegalArgumentException e6) {
                throw new HAProxyProtocolException(e6);
            }
        }
        throw new HAProxyProtocolException("incomplete header: " + byteBuf.readableBytes() + " bytes (expected: 16+ bytes)");
    }

    private static String ipBytesToString(ByteBuf byteBuf, int i2) {
        StringBuilder sb = new StringBuilder();
        int i4 = 0;
        if (i2 == 4) {
            while (i4 < 4) {
                sb.append(byteBuf.readByte() & 255);
                sb.append(d.f65364a);
                i4++;
            }
        } else {
            while (i4 < 8) {
                sb.append(Integer.toHexString(byteBuf.readUnsignedShort()));
                sb.append(':');
                i4++;
            }
        }
        sb.setLength(sb.length() - 1);
        return sb.toString();
    }

    private static int portStringToInt(String str) {
        try {
            int parseInt = Integer.parseInt(str);
            if (parseInt <= 0 || parseInt > 65535) {
                throw new HAProxyProtocolException("invalid port: " + str + " (expected: 1 ~ 65535)");
            }
            return parseInt;
        } catch (NumberFormatException e4) {
            throw new HAProxyProtocolException("invalid port: " + str, e4);
        }
    }

    private static HAProxyTLV readNextTLV(ByteBuf byteBuf) {
        if (byteBuf.readableBytes() < 4) {
            return null;
        }
        byte readByte = byteBuf.readByte();
        HAProxyTLV.Type typeForByteValue = HAProxyTLV.Type.typeForByteValue(readByte);
        int readUnsignedShort = byteBuf.readUnsignedShort();
        switch (AnonymousClass1.$SwitchMap$io$netty$handler$codec$haproxy$HAProxyTLV$Type[typeForByteValue.ordinal()]) {
            case 1:
                ByteBuf retainedSlice = byteBuf.retainedSlice(byteBuf.readerIndex(), readUnsignedShort);
                ByteBuf readSlice = byteBuf.readSlice(readUnsignedShort);
                byte readByte2 = readSlice.readByte();
                int readInt = readSlice.readInt();
                if (readSlice.readableBytes() >= 4) {
                    ArrayList arrayList = new ArrayList(4);
                    do {
                        HAProxyTLV readNextTLV = readNextTLV(readSlice);
                        if (readNextTLV != null) {
                            arrayList.add(readNextTLV);
                        }
                        return new HAProxySSLTLV(readInt, readByte2, arrayList, retainedSlice);
                    } while (readSlice.readableBytes() >= 4);
                    return new HAProxySSLTLV(readInt, readByte2, arrayList, retainedSlice);
                }
                return new HAProxySSLTLV(readInt, readByte2, Collections.emptyList(), retainedSlice);
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                return new HAProxyTLV(typeForByteValue, readByte, byteBuf.readRetainedSlice(readUnsignedShort));
            default:
                return null;
        }
    }

    private static List<HAProxyTLV> readTlvs(ByteBuf byteBuf) {
        HAProxyTLV readNextTLV = readNextTLV(byteBuf);
        if (readNextTLV == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(4);
        do {
            arrayList.add(readNextTLV);
            if (readNextTLV instanceof HAProxySSLTLV) {
                arrayList.addAll(((HAProxySSLTLV) readNextTLV).encapsulatedTLVs());
            }
            readNextTLV = readNextTLV(byteBuf);
        } while (readNextTLV != null);
        return arrayList;
    }

    private void tryRecord() {
        ResourceLeakTracker<HAProxyMessage> resourceLeakTracker = this.leak;
        if (resourceLeakTracker != null) {
            resourceLeakTracker.record();
        }
    }

    private static HAProxyMessage unknownMsg(HAProxyProtocolVersion hAProxyProtocolVersion, HAProxyCommand hAProxyCommand) {
        return new HAProxyMessage(hAProxyProtocolVersion, hAProxyCommand, HAProxyProxiedProtocol.UNKNOWN, (String) null, (String) null, 0, 0);
    }

    public HAProxyCommand command() {
        return this.command;
    }

    @Override // io.netty.util.AbstractReferenceCounted
    protected void deallocate() {
        try {
            for (HAProxyTLV hAProxyTLV : this.tlvs) {
                hAProxyTLV.release();
            }
        } finally {
            ResourceLeakTracker<HAProxyMessage> resourceLeakTracker = this.leak;
            if (resourceLeakTracker != null) {
                resourceLeakTracker.close(this);
            }
        }
    }

    public String destinationAddress() {
        return this.destinationAddress;
    }

    public int destinationPort() {
        return this.destinationPort;
    }

    public HAProxyProtocolVersion protocolVersion() {
        return this.protocolVersion;
    }

    public HAProxyProxiedProtocol proxiedProtocol() {
        return this.proxiedProtocol;
    }

    @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public boolean release() {
        tryRecord();
        return super.release();
    }

    public String sourceAddress() {
        return this.sourceAddress;
    }

    public int sourcePort() {
        return this.sourcePort;
    }

    public List<HAProxyTLV> tlvs() {
        return this.tlvs;
    }

    private HAProxyMessage(HAProxyProtocolVersion hAProxyProtocolVersion, HAProxyCommand hAProxyCommand, HAProxyProxiedProtocol hAProxyProxiedProtocol, String str, String str2, int i2, int i4) {
        this(hAProxyProtocolVersion, hAProxyCommand, hAProxyProxiedProtocol, str, str2, i2, i4, Collections.emptyList());
    }

    @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public boolean release(int i2) {
        tryRecord();
        return super.release(i2);
    }

    @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public HAProxyMessage retain() {
        tryRecord();
        return (HAProxyMessage) super.retain();
    }

    @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public HAProxyMessage touch() {
        tryRecord();
        return (HAProxyMessage) super.touch();
    }

    private HAProxyMessage(HAProxyProtocolVersion hAProxyProtocolVersion, HAProxyCommand hAProxyCommand, HAProxyProxiedProtocol hAProxyProxiedProtocol, String str, String str2, int i2, int i4, List<HAProxyTLV> list) {
        ObjectUtil.checkNotNull(hAProxyProxiedProtocol, "proxiedProtocol");
        HAProxyProxiedProtocol.AddressFamily addressFamily = hAProxyProxiedProtocol.addressFamily();
        checkAddress(str, addressFamily);
        checkAddress(str2, addressFamily);
        checkPort(i2);
        checkPort(i4);
        this.protocolVersion = hAProxyProtocolVersion;
        this.command = hAProxyCommand;
        this.proxiedProtocol = hAProxyProxiedProtocol;
        this.sourceAddress = str;
        this.destinationAddress = str2;
        this.sourcePort = i2;
        this.destinationPort = i4;
        this.tlvs = Collections.unmodifiableList(list);
        this.leak = leakDetector.track(this);
    }

    @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public HAProxyMessage retain(int i2) {
        tryRecord();
        return (HAProxyMessage) super.retain(i2);
    }

    @Override // io.netty.util.ReferenceCounted
    public HAProxyMessage touch(Object obj) {
        ResourceLeakTracker<HAProxyMessage> resourceLeakTracker = this.leak;
        if (resourceLeakTracker != null) {
            resourceLeakTracker.record(obj);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static HAProxyMessage decodeHeader(String str) {
        if (str != null) {
            String[] split = str.split(" ");
            int length = split.length;
            if (length >= 2) {
                if ("PROXY".equals(split[0])) {
                    try {
                        HAProxyProxiedProtocol valueOf = HAProxyProxiedProtocol.valueOf(split[1]);
                        if (valueOf != HAProxyProxiedProtocol.TCP4 && valueOf != HAProxyProxiedProtocol.TCP6 && valueOf != HAProxyProxiedProtocol.UNKNOWN) {
                            throw new HAProxyProtocolException("unsupported v1 proxied protocol: " + split[1]);
                        } else if (valueOf == HAProxyProxiedProtocol.UNKNOWN) {
                            return unknownMsg(HAProxyProtocolVersion.V1, HAProxyCommand.PROXY);
                        } else {
                            if (length == 6) {
                                return new HAProxyMessage(HAProxyProtocolVersion.V1, HAProxyCommand.PROXY, valueOf, split[2], split[3], split[4], split[5]);
                            }
                            throw new HAProxyProtocolException("invalid TCP4/6 header: " + str + " (expected: 6 parts)");
                        }
                    } catch (IllegalArgumentException e4) {
                        throw new HAProxyProtocolException(e4);
                    }
                }
                throw new HAProxyProtocolException("unknown identifier: " + split[0]);
            }
            throw new HAProxyProtocolException("invalid header: " + str + " (expected: 'PROXY' and proxied protocol values)");
        }
        throw new HAProxyProtocolException("header");
    }
}
