package org.jboss.netty.channel;

import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import java.util.Objects;
/* compiled from: DownstreamChannelStateEvent.java */
/* loaded from: classes5.dex */
public class c0 implements q {

    /* renamed from: a  reason: collision with root package name */
    private final e f73435a;

    /* renamed from: b  reason: collision with root package name */
    private final j f73436b;

    /* renamed from: c  reason: collision with root package name */
    private final ChannelState f73437c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f73438d;

    /* compiled from: DownstreamChannelStateEvent.java */
    /* loaded from: classes5.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f73439a;

        static {
            int[] iArr = new int[ChannelState.values().length];
            f73439a = iArr;
            try {
                iArr[ChannelState.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f73439a[ChannelState.BOUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f73439a[ChannelState.CONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f73439a[ChannelState.INTEREST_OPS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public c0(e eVar, j jVar, ChannelState channelState, Object obj) {
        Objects.requireNonNull(eVar, "channel");
        Objects.requireNonNull(jVar, "future");
        Objects.requireNonNull(channelState, NoticeTopAnimActivityDialog_.f34402n);
        this.f73435a = eVar;
        this.f73436b = jVar;
        this.f73437c = channelState;
        this.f73438d = obj;
    }

    @Override // org.jboss.netty.channel.h
    public j d() {
        return this.f73436b;
    }

    @Override // org.jboss.netty.channel.h
    public e getChannel() {
        return this.f73435a;
    }

    @Override // org.jboss.netty.channel.q
    public ChannelState getState() {
        return this.f73437c;
    }

    @Override // org.jboss.netty.channel.q
    public Object getValue() {
        return this.f73438d;
    }

    public String toString() {
        String obj = getChannel().toString();
        StringBuilder sb = new StringBuilder(obj.length() + 64);
        sb.append(obj);
        int i2 = a.f73439a[getState().ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        sb.append(' ');
                        sb.append(getState().name());
                        sb.append(": ");
                        sb.append(getValue());
                    } else {
                        sb.append(" CHANGE_INTEREST: ");
                        sb.append(getValue());
                    }
                } else if (getValue() != null) {
                    sb.append(" CONNECT: ");
                    sb.append(getValue());
                } else {
                    sb.append(" DISCONNECT");
                }
            } else if (getValue() != null) {
                sb.append(" BIND: ");
                sb.append(getValue());
            } else {
                sb.append(" UNBIND");
            }
        } else if (Boolean.TRUE.equals(getValue())) {
            sb.append(" OPEN");
        } else {
            sb.append(" CLOSE");
        }
        return sb.toString();
    }
}
