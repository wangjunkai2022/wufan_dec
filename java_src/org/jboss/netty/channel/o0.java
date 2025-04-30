package org.jboss.netty.channel;

import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import java.util.Objects;
/* compiled from: UpstreamChannelStateEvent.java */
/* loaded from: classes5.dex */
public class o0 implements q {

    /* renamed from: a  reason: collision with root package name */
    private final e f73456a;

    /* renamed from: b  reason: collision with root package name */
    private final ChannelState f73457b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f73458c;

    /* compiled from: UpstreamChannelStateEvent.java */
    /* loaded from: classes5.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f73459a;

        static {
            int[] iArr = new int[ChannelState.values().length];
            f73459a = iArr;
            try {
                iArr[ChannelState.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f73459a[ChannelState.BOUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f73459a[ChannelState.CONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f73459a[ChannelState.INTEREST_OPS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public o0(e eVar, ChannelState channelState, Object obj) {
        Objects.requireNonNull(eVar, "channel");
        Objects.requireNonNull(channelState, NoticeTopAnimActivityDialog_.f34402n);
        this.f73456a = eVar;
        this.f73457b = channelState;
        this.f73458c = obj;
    }

    @Override // org.jboss.netty.channel.h
    public j d() {
        return s.W(getChannel());
    }

    @Override // org.jboss.netty.channel.h
    public e getChannel() {
        return this.f73456a;
    }

    @Override // org.jboss.netty.channel.q
    public ChannelState getState() {
        return this.f73457b;
    }

    @Override // org.jboss.netty.channel.q
    public Object getValue() {
        return this.f73458c;
    }

    public String toString() {
        String obj = getChannel().toString();
        StringBuilder sb = new StringBuilder(obj.length() + 64);
        sb.append(obj);
        int i2 = a.f73459a[getState().ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        sb.append(getState().name());
                        sb.append(": ");
                        sb.append(getValue());
                    } else {
                        sb.append(" INTEREST_CHANGED");
                    }
                } else if (getValue() != null) {
                    sb.append(" CONNECTED: ");
                    sb.append(getValue());
                } else {
                    sb.append(" DISCONNECTED");
                }
            } else if (getValue() != null) {
                sb.append(" BOUND: ");
                sb.append(getValue());
            } else {
                sb.append(" UNBOUND");
            }
        } else if (Boolean.TRUE.equals(getValue())) {
            sb.append(" OPEN");
        } else {
            sb.append(" CLOSED");
        }
        return sb.toString();
    }
}
