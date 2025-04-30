package com.efs.sdk.base.core.f;

import com.efs.sdk.base.core.controller.ControllerCenter;
import com.efs.sdk.base.protocol.record.AbsRecordLog;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes2.dex */
public final class b extends AbsRecordLog {

    /* renamed from: a  reason: collision with root package name */
    private String f11364a;

    /* renamed from: b  reason: collision with root package name */
    private String f11365b;

    /* renamed from: c  reason: collision with root package name */
    private String f11366c;

    /* renamed from: d  reason: collision with root package name */
    private String f11367d;

    public b(String str, String str2, String str3) {
        super("wa");
        this.f11364a = str;
        this.f11365b = str2;
        this.f11367d = str3;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:SS", Locale.CHINA);
        com.efs.sdk.base.core.a.a.a();
        this.f11366c = simpleDateFormat.format(new Date(com.efs.sdk.base.core.a.a.b()));
    }

    @Override // com.efs.sdk.base.protocol.ILogProtocol
    public final byte[] generate() {
        String generateString = generateString();
        if (ControllerCenter.getGlobalEnvStruct().isPrintLogDetail()) {
            com.efs.sdk.base.core.util.d.a("efs.base", generateString);
        }
        return generateString.getBytes();
    }

    @Override // com.efs.sdk.base.protocol.ILogProtocol
    public final String generateString() {
        StringBuilder sb = new StringBuilder();
        sb.append("lt=event`");
        sb.append("ev_ct=");
        sb.append(this.f11364a);
        sb.append("`");
        sb.append("ev_ac=");
        sb.append(this.f11365b);
        sb.append("`");
        sb.append("tm=");
        sb.append(this.f11366c);
        sb.append("`");
        sb.append("dn=");
        sb.append(this.f11367d);
        sb.append("`");
        for (Map.Entry<String, Object> entry : this.dataMap.entrySet()) {
            sb.append(entry.getKey());
            sb.append(SimpleComparison.EQUAL_TO_OPERATION);
            sb.append(entry.getValue());
            sb.append("`");
        }
        return sb.subSequence(0, sb.length() - 1).toString();
    }

    @Override // com.efs.sdk.base.protocol.ILogProtocol
    public final String getLinkId() {
        return "";
    }

    @Override // com.efs.sdk.base.protocol.ILogProtocol
    public final String getLinkKey() {
        return "";
    }

    @Override // com.efs.sdk.base.protocol.ILogProtocol
    public final void insertGlobal(com.efs.sdk.base.core.config.a aVar) {
        this.dataMap.putAll(aVar.a());
        this.dataMap.putAll(ControllerCenter.getGlobalEnvStruct().getPublicParamMap());
    }
}
