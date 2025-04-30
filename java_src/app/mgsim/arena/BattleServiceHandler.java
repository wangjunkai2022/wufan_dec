package app.mgsim.arena;

import com.papa91.battle.protocol.Response;
import org.jboss.netty.channel.e0;
import org.jboss.netty.channel.i0;
import org.jboss.netty.channel.l0;
import org.jboss.netty.channel.m;
import org.jboss.netty.channel.q;
/* loaded from: classes2.dex */
public class BattleServiceHandler extends l0 {
    private static final String TAG = "ArenaService";
    private final SocketListener command;

    public BattleServiceHandler(SocketListener socketListener) {
        this.command = socketListener;
    }

    @Override // org.jboss.netty.channel.l0
    public void channelClosed(m mVar, q qVar) throws Exception {
        super.channelClosed(mVar, qVar);
    }

    @Override // org.jboss.netty.channel.l0
    public void channelConnected(m mVar, q qVar) throws Exception {
        this.command.onSocketConnected();
        super.channelConnected(mVar, qVar);
    }

    @Override // org.jboss.netty.channel.l0
    public void channelDisconnected(m mVar, q qVar) throws Exception {
        this.command.onSocketDisconnected();
        super.channelDisconnected(mVar, qVar);
    }

    @Override // org.jboss.netty.channel.l0
    public void exceptionCaught(m mVar, e0 e0Var) throws Exception {
        super.exceptionCaught(mVar, e0Var);
        if (mVar.getChannel() == null || !mVar.getChannel().isOpen()) {
            return;
        }
        mVar.getChannel().close();
    }

    @Override // org.jboss.netty.channel.l0
    public void messageReceived(m mVar, i0 i0Var) throws Exception {
        if (i0Var == null || !(i0Var.getMessage() instanceof Response)) {
            return;
        }
        this.command.onServerResponse(i0Var.getMessage());
    }
}
