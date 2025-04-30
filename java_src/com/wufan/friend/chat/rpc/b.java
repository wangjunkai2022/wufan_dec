package com.wufan.friend.chat.rpc;

import android.text.TextUtils;
import com.join.mgps.event.m;
import com.wufan.friend.chat.protocol.ChatRoomArgs;
import com.wufan.friend.chat.protocol.HeartArgs;
import com.wufan.friend.chat.protocol.OnlineState;
import com.wufan.friend.chat.protocol.PlayGameArgs;
import com.wufan.friend.chat.protocol.PlayType;
import com.wufan.friend.chat.protocol.RecommendPlayerArgs;
import com.wufan.friend.chat.protocol.ServiceName;
import com.wufan.friend.chat.protocol.ServicePath;
import com.wufan.friend.chat.protocol.a1;
import com.wufan.friend.chat.protocol.e0;
import com.wufan.friend.chat.protocol.i;
import com.wufan.friend.chat.protocol.i0;
import com.wufan.friend.chat.protocol.s1;
import com.wufan.friend.chat.protocol.t0;
import com.wufan.friend.chat.protocol.t1;
import io.netty.bootstrap.Bootstrap;
import io.netty.channel.Channel;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelOption;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.nio.NioSocketChannel;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.GenericFutureListener;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* compiled from: FriendClient.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: b  reason: collision with root package name */
    Bootstrap f62025b;

    /* renamed from: c  reason: collision with root package name */
    private String f62026c;

    /* renamed from: d  reason: collision with root package name */
    private int f62027d;

    /* renamed from: e  reason: collision with root package name */
    private Channel f62028e;

    /* renamed from: a  reason: collision with root package name */
    EventLoopGroup f62024a = new NioEventLoopGroup();

    /* renamed from: f  reason: collision with root package name */
    boolean f62029f = false;

    /* renamed from: g  reason: collision with root package name */
    long f62030g = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FriendClient.java */
    /* loaded from: classes2.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.d();
        }
    }

    public b(String str, int i2) {
        this.f62026c = str;
        this.f62027d = i2;
        Bootstrap bootstrap = new Bootstrap();
        this.f62025b = bootstrap;
        bootstrap.group(this.f62024a).channel(NioSocketChannel.class).handler(new d());
        this.f62025b.option(ChannelOption.SO_KEEPALIVE, Boolean.TRUE);
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p(ChannelFuture channelFuture) throws Exception {
        this.f62029f = false;
        if (channelFuture.isSuccess()) {
            this.f62028e = channelFuture.channel();
            org.greenrobot.eventbus.c.f().o(new m(1));
            return;
        }
        channelFuture.channel().eventLoop().schedule((Runnable) new a(), 5L, TimeUnit.SECONDS);
    }

    private void r(s1 s1Var) {
        try {
            Channel channel = this.f62028e;
            if (channel != null && channel.isActive()) {
                this.f62028e.writeAndFlush(s1Var);
                return;
            }
            d();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void b(ChatRoomArgs.State state, long j4, int i2) {
        r(s1.t3().j3(ServiceName.BATTLE).e3(ServicePath.BAT_CHAT_ROOM).l3(System.currentTimeMillis()).d3(t1.c4().r3(ChatRoomArgs.d3().X2(state).W2(j4).V2(i2).build()).build()).build());
    }

    public void c(String str) {
        r(s1.t3().j3(ServiceName.BATTLE).e3(ServicePath.BAT_CHAT_SEND).l3(System.currentTimeMillis()).d3(t1.c4().p3(i.X2().T2(str).build()).build()).build());
    }

    public void d() {
        try {
            Channel channel = this.f62028e;
            if ((channel == null || !channel.isActive()) && !this.f62029f && System.currentTimeMillis() - this.f62030g >= 2000) {
                this.f62029f = true;
                this.f62030g = System.currentTimeMillis();
                this.f62025b.connect(this.f62026c, this.f62027d).addListener((GenericFutureListener<? extends Future<? super Void>>) new ChannelFutureListener() { // from class: com.wufan.friend.chat.rpc.a
                    @Override // io.netty.util.concurrent.GenericFutureListener
                    public final void operationComplete(ChannelFuture channelFuture) {
                        b.this.p(channelFuture);
                    }
                });
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void e() {
        try {
            Channel channel = this.f62028e;
            if (channel == null || !channel.isActive()) {
                return;
            }
            this.f62028e.close();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void f(int i2, int i4, String str, boolean z3, long j4, boolean z4) {
        r(s1.t3().j3(ServiceName.BATTLE).e3(ServicePath.BTL_GAME_INVITE).l3(System.currentTimeMillis()).d3(t1.c4().t3(e0.m3().a3(j4).b3(i4).Z2(i2).c3(str).Y2(z3).e3(z4).build()).build()).build());
    }

    public void g(PlayGameArgs.State state, PlayType playType, long j4, int i2, int i4, boolean z3) {
        r(s1.t3().j3(ServiceName.BATTLE).e3(ServicePath.BTL_GAME_PLAY).l3(System.currentTimeMillis()).d3(t1.c4().B3(PlayGameArgs.t3().f3(state).h3(playType).c3(j4).d3(i2).b3(i4).j3(z3).build()).build()).build());
    }

    public void h(PlayGameArgs.State state, PlayType playType, long j4, int i2, int i4, boolean z3, List<Long> list) {
        r(s1.t3().j3(ServiceName.BATTLE).e3(ServicePath.BTL_GAME_PLAY).l3(System.currentTimeMillis()).d3(t1.c4().B3(PlayGameArgs.t3().f3(state).h3(playType).c3(j4).d3(i2).b3(i4).j3(z3).S2(list).build()).build()).build());
    }

    public void i() {
        r(s1.t3().j3(ServiceName.FRIEND).e3(ServicePath.FRD_GET_ALL_FRIENDS).l3(System.currentTimeMillis()).build());
    }

    public void j(int i2, long j4) {
        r(s1.t3().j3(ServiceName.RECOMMEND).e3(ServicePath.RCM_GET_LOCAL_BATTLE_GAME).l3(System.currentTimeMillis()).d3(t1.c4().x3(i0.Z2().V2(j4).U2(i2).build()).build()).build());
    }

    public void k(long j4, String str, List<Long> list, int i2) {
        RecommendPlayerArgs.b m32 = RecommendPlayerArgs.m3();
        if (list != null && list.size() > 0) {
            m32.S2(list);
        }
        r(s1.t3().j3(ServiceName.RECOMMEND).e3(ServicePath.RCM_GET_PLAYER).d3(t1.c4().D3(m32.Y2(j4).Z2(str).d3(i2).build()).build()).l3(System.currentTimeMillis()).build());
    }

    public void l(long j4, String str, List<Long> list, int i2) {
        RecommendPlayerArgs.b m32 = RecommendPlayerArgs.m3();
        if (list != null && list.size() > 0) {
            m32.S2(list);
        }
        r(s1.t3().j3(ServiceName.RECOMMEND).e3(ServicePath.RCM_GET_PLAYER_V2).d3(t1.c4().D3(m32.Y2(j4).Z2(str).d3(i2).build()).build()).l3(System.currentTimeMillis()).build());
    }

    public void m() {
        r(s1.t3().j3(ServiceName.SYSTEM).e3(ServicePath.SYS_HEART).d3(t1.c4().v3(HeartArgs.X2().T2(HeartArgs.State.APP).build()).build()).i3(System.currentTimeMillis()).l3(System.currentTimeMillis()).build());
    }

    public boolean n() {
        Channel channel = this.f62028e;
        return channel != null && channel.isActive();
    }

    public boolean o(String str, int i2) {
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        return (this.f62027d == i2 && !TextUtils.isEmpty(this.f62026c) && this.f62026c.equals(str)) ? false : true;
    }

    public void q(String str, String str2) {
        r(s1.t3().j3(ServiceName.SYSTEM).e3(ServicePath.SYS_LOGIN).l3(System.currentTimeMillis()).i3(System.currentTimeMillis()).d3(t1.c4().z3(t0.d3().V2(Integer.parseInt(str)).Y2(str2).build()).build()).build());
    }

    public void s(OnlineState onlineState) {
        r(s1.t3().j3(ServiceName.SYSTEM).e3(ServicePath.SYS_ONLINE_STATE).l3(System.currentTimeMillis()).d3(t1.c4().F3(a1.X2().U2(onlineState.getNumber()).build()).build()).build());
    }
}
