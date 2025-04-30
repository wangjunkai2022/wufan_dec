package app.mgsim.arena;

import com.google.protobuf.MessageLite;
import com.papa91.battle.protocol.Response;
import org.jboss.netty.channel.e;
import org.jboss.netty.channel.m;
import org.jboss.netty.handler.codec.frame.a;
/* loaded from: classes2.dex */
public class ProtobufferDecoder extends a {
    private static final boolean HAS_PARSER;
    private static final String TAG = "ArenaService";

    static {
        boolean z3 = false;
        try {
            MessageLite.class.getDeclaredMethod("getParserForType", new Class[0]);
            z3 = true;
        } catch (Throwable unused) {
        }
        HAS_PARSER = z3;
    }

    @Override // org.jboss.netty.handler.codec.frame.a
    protected Object decode(m mVar, e eVar, org.jboss.netty.buffer.e eVar2) throws Exception {
        Response build;
        try {
            if (eVar2.readableBytes() < 4) {
                return null;
            }
            eVar2.g0();
            int readInt = eVar2.readInt();
            if (eVar2.readableBytes() < readInt) {
                eVar2.n0();
                return null;
            }
            org.jboss.netty.buffer.e o3 = eVar2.o(readInt);
            try {
                if (HAS_PARSER) {
                    build = Response.getDefaultInstance().getParserForType().parseFrom(o3.array());
                } else {
                    build = ((Response.Builder) Response.getDefaultInstance().newBuilderForType().mergeFrom(o3.array())).build();
                }
                if (build == null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("ParseResponse failure length:");
                    sb.append(readInt);
                }
                return build;
            } catch (Exception e4) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("ParseResponse failure length:");
                sb2.append(readInt);
                eVar.close();
                throw e4;
            }
        } catch (Exception unused) {
            return null;
        }
    }
}
