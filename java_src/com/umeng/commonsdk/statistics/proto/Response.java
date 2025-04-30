package com.umeng.commonsdk.statistics.proto;

import com.umeng.analytics.pro.ai;
import com.umeng.analytics.pro.ao;
import com.umeng.analytics.pro.ar;
import com.umeng.analytics.pro.ax;
import com.umeng.analytics.pro.ay;
import com.umeng.analytics.pro.bd;
import com.umeng.analytics.pro.be;
import com.umeng.analytics.pro.bi;
import com.umeng.analytics.pro.bk;
import com.umeng.analytics.pro.bl;
import com.umeng.analytics.pro.bq;
import com.umeng.analytics.pro.br;
import com.umeng.analytics.pro.bt;
import com.umeng.analytics.pro.bv;
import com.umeng.analytics.pro.bw;
import com.umeng.analytics.pro.by;
import com.umeng.analytics.pro.bz;
import com.umeng.analytics.pro.ca;
import com.umeng.analytics.pro.cb;
import com.umeng.analytics.pro.cc;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes4.dex */
public class Response implements ar<Response, e>, Serializable, Cloneable {
    private static final int __RESP_CODE_ISSET_ID = 0;
    public static final Map<e, bd> metaDataMap;
    private static final Map<Class<? extends by>, bz> schemes;
    private static final long serialVersionUID = -4549277923241195391L;
    private byte __isset_bitfield;
    public com.umeng.commonsdk.statistics.proto.d imprint;
    public String msg;
    private e[] optionals;
    public int resp_code;
    private static final bv STRUCT_DESC = new bv("Response");
    private static final bl RESP_CODE_FIELD_DESC = new bl("resp_code", (byte) 8, 1);
    private static final bl MSG_FIELD_DESC = new bl("msg", (byte) 11, 2);
    private static final bl IMPRINT_FIELD_DESC = new bl(ai.X, (byte) 12, 3);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class a extends ca<Response> {
        private a() {
        }

        @Override // com.umeng.analytics.pro.by
        /* renamed from: a */
        public void b(bq bqVar, Response response) throws ax {
            bqVar.j();
            while (true) {
                bl l4 = bqVar.l();
                byte b4 = l4.f60583b;
                if (b4 == 0) {
                    break;
                }
                short s3 = l4.f60584c;
                if (s3 != 1) {
                    if (s3 != 2) {
                        if (s3 != 3) {
                            bt.a(bqVar, b4);
                        } else if (b4 == 12) {
                            com.umeng.commonsdk.statistics.proto.d dVar = new com.umeng.commonsdk.statistics.proto.d();
                            response.imprint = dVar;
                            dVar.read(bqVar);
                            response.setImprintIsSet(true);
                        } else {
                            bt.a(bqVar, b4);
                        }
                    } else if (b4 == 11) {
                        response.msg = bqVar.z();
                        response.setMsgIsSet(true);
                    } else {
                        bt.a(bqVar, b4);
                    }
                } else if (b4 == 8) {
                    response.resp_code = bqVar.w();
                    response.setResp_codeIsSet(true);
                } else {
                    bt.a(bqVar, b4);
                }
                bqVar.m();
            }
            bqVar.k();
            if (response.isSetResp_code()) {
                response.validate();
                return;
            }
            throw new br("Required field 'resp_code' was not found in serialized data! Struct: " + toString());
        }

        @Override // com.umeng.analytics.pro.by
        /* renamed from: b */
        public void a(bq bqVar, Response response) throws ax {
            response.validate();
            bqVar.a(Response.STRUCT_DESC);
            bqVar.a(Response.RESP_CODE_FIELD_DESC);
            bqVar.a(response.resp_code);
            bqVar.c();
            if (response.msg != null && response.isSetMsg()) {
                bqVar.a(Response.MSG_FIELD_DESC);
                bqVar.a(response.msg);
                bqVar.c();
            }
            if (response.imprint != null && response.isSetImprint()) {
                bqVar.a(Response.IMPRINT_FIELD_DESC);
                response.imprint.write(bqVar);
                bqVar.c();
            }
            bqVar.d();
            bqVar.b();
        }
    }

    /* loaded from: classes4.dex */
    private static class b implements bz {
        private b() {
        }

        @Override // com.umeng.analytics.pro.bz
        /* renamed from: a */
        public a b() {
            return new a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class c extends cb<Response> {
        private c() {
        }

        @Override // com.umeng.analytics.pro.by
        public void a(bq bqVar, Response response) throws ax {
            bw bwVar = (bw) bqVar;
            bwVar.a(response.resp_code);
            BitSet bitSet = new BitSet();
            if (response.isSetMsg()) {
                bitSet.set(0);
            }
            if (response.isSetImprint()) {
                bitSet.set(1);
            }
            bwVar.a(bitSet, 2);
            if (response.isSetMsg()) {
                bwVar.a(response.msg);
            }
            if (response.isSetImprint()) {
                response.imprint.write(bwVar);
            }
        }

        @Override // com.umeng.analytics.pro.by
        public void b(bq bqVar, Response response) throws ax {
            bw bwVar = (bw) bqVar;
            response.resp_code = bwVar.w();
            response.setResp_codeIsSet(true);
            BitSet b4 = bwVar.b(2);
            if (b4.get(0)) {
                response.msg = bwVar.z();
                response.setMsgIsSet(true);
            }
            if (b4.get(1)) {
                com.umeng.commonsdk.statistics.proto.d dVar = new com.umeng.commonsdk.statistics.proto.d();
                response.imprint = dVar;
                dVar.read(bwVar);
                response.setImprintIsSet(true);
            }
        }
    }

    /* loaded from: classes4.dex */
    private static class d implements bz {
        private d() {
        }

        @Override // com.umeng.analytics.pro.bz
        /* renamed from: a */
        public c b() {
            return new c();
        }
    }

    static {
        HashMap hashMap = new HashMap();
        schemes = hashMap;
        hashMap.put(ca.class, new b());
        hashMap.put(cb.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.RESP_CODE, (e) new bd("resp_code", (byte) 1, new be((byte) 8)));
        enumMap.put((EnumMap) e.MSG, (e) new bd("msg", (byte) 2, new be((byte) 11)));
        enumMap.put((EnumMap) e.IMPRINT, (e) new bd(ai.X, (byte) 2, new bi((byte) 12, com.umeng.commonsdk.statistics.proto.d.class)));
        Map<e, bd> unmodifiableMap = Collections.unmodifiableMap(enumMap);
        metaDataMap = unmodifiableMap;
        bd.a(Response.class, unmodifiableMap);
    }

    public Response() {
        this.__isset_bitfield = (byte) 0;
        this.optionals = new e[]{e.MSG, e.IMPRINT};
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.__isset_bitfield = (byte) 0;
            read(new bk(new cc(objectInputStream)));
        } catch (ax e4) {
            throw new IOException(e4.getMessage());
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new bk(new cc(objectOutputStream)));
        } catch (ax e4) {
            throw new IOException(e4.getMessage());
        }
    }

    @Override // com.umeng.analytics.pro.ar
    public void clear() {
        setResp_codeIsSet(false);
        this.resp_code = 0;
        this.msg = null;
        this.imprint = null;
    }

    public com.umeng.commonsdk.statistics.proto.d getImprint() {
        return this.imprint;
    }

    public String getMsg() {
        return this.msg;
    }

    public int getResp_code() {
        return this.resp_code;
    }

    public boolean isSetImprint() {
        return this.imprint != null;
    }

    public boolean isSetMsg() {
        return this.msg != null;
    }

    public boolean isSetResp_code() {
        return ao.a(this.__isset_bitfield, 0);
    }

    @Override // com.umeng.analytics.pro.ar
    public void read(bq bqVar) throws ax {
        schemes.get(bqVar.D()).b().b(bqVar, this);
    }

    public Response setImprint(com.umeng.commonsdk.statistics.proto.d dVar) {
        this.imprint = dVar;
        return this;
    }

    public void setImprintIsSet(boolean z3) {
        if (z3) {
            return;
        }
        this.imprint = null;
    }

    public Response setMsg(String str) {
        this.msg = str;
        return this;
    }

    public void setMsgIsSet(boolean z3) {
        if (z3) {
            return;
        }
        this.msg = null;
    }

    public Response setResp_code(int i2) {
        this.resp_code = i2;
        setResp_codeIsSet(true);
        return this;
    }

    public void setResp_codeIsSet(boolean z3) {
        this.__isset_bitfield = ao.a(this.__isset_bitfield, 0, z3);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Response(");
        sb.append("resp_code:");
        sb.append(this.resp_code);
        if (isSetMsg()) {
            sb.append(", ");
            sb.append("msg:");
            String str = this.msg;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
        }
        if (isSetImprint()) {
            sb.append(", ");
            sb.append("imprint:");
            com.umeng.commonsdk.statistics.proto.d dVar = this.imprint;
            if (dVar == null) {
                sb.append("null");
            } else {
                sb.append(dVar);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public void unsetImprint() {
        this.imprint = null;
    }

    public void unsetMsg() {
        this.msg = null;
    }

    public void unsetResp_code() {
        this.__isset_bitfield = ao.b(this.__isset_bitfield, 0);
    }

    public void validate() throws ax {
        com.umeng.commonsdk.statistics.proto.d dVar = this.imprint;
        if (dVar != null) {
            dVar.l();
        }
    }

    @Override // com.umeng.analytics.pro.ar
    public void write(bq bqVar) throws ax {
        schemes.get(bqVar.D()).b().a(bqVar, this);
    }

    /* loaded from: classes4.dex */
    public enum e implements ay {
        RESP_CODE(1, "resp_code"),
        MSG(2, "msg"),
        IMPRINT(3, ai.X);
        

        /* renamed from: d  reason: collision with root package name */
        private static final Map<String, e> f61401d = new HashMap();

        /* renamed from: e  reason: collision with root package name */
        private final short f61403e;

        /* renamed from: f  reason: collision with root package name */
        private final String f61404f;

        static {
            Iterator it2 = EnumSet.allOf(e.class).iterator();
            while (it2.hasNext()) {
                e eVar = (e) it2.next();
                f61401d.put(eVar.b(), eVar);
            }
        }

        e(short s3, String str) {
            this.f61403e = s3;
            this.f61404f = str;
        }

        public static e a(int i2) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        return null;
                    }
                    return IMPRINT;
                }
                return MSG;
            }
            return RESP_CODE;
        }

        public static e b(int i2) {
            e a4 = a(i2);
            if (a4 != null) {
                return a4;
            }
            throw new IllegalArgumentException("Field " + i2 + " doesn't exist!");
        }

        @Override // com.umeng.analytics.pro.ay
        public String b() {
            return this.f61404f;
        }

        public static e a(String str) {
            return f61401d.get(str);
        }

        @Override // com.umeng.analytics.pro.ay
        public short a() {
            return this.f61403e;
        }
    }

    @Override // com.umeng.analytics.pro.ar
    public ar<Response, e> deepCopy() {
        return new Response(this);
    }

    @Override // com.umeng.analytics.pro.ar
    public e fieldForId(int i2) {
        return e.a(i2);
    }

    public Response(int i2) {
        this();
        this.resp_code = i2;
        setResp_codeIsSet(true);
    }

    public Response(Response response) {
        this.__isset_bitfield = (byte) 0;
        this.optionals = new e[]{e.MSG, e.IMPRINT};
        this.__isset_bitfield = response.__isset_bitfield;
        this.resp_code = response.resp_code;
        if (response.isSetMsg()) {
            this.msg = response.msg;
        }
        if (response.isSetImprint()) {
            this.imprint = new com.umeng.commonsdk.statistics.proto.d(response.imprint);
        }
    }
}
