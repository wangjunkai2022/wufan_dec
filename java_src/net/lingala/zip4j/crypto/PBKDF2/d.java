package net.lingala.zip4j.crypto.PBKDF2;
/* compiled from: PBKDF2HexFormatter.java */
/* loaded from: classes5.dex */
class d {
    d() {
    }

    public boolean a(e eVar, String str) {
        String[] split;
        if (eVar == null || str == null || (split = str.split(":")) == null || split.length != 3) {
            return true;
        }
        byte[] c4 = a.c(split[0]);
        int parseInt = Integer.parseInt(split[1]);
        byte[] c5 = a.c(split[2]);
        eVar.j(c4);
        eVar.i(parseInt);
        eVar.f(c5);
        return false;
    }

    public String b(e eVar) {
        StringBuffer stringBuffer = new StringBuffer(String.valueOf(a.a(eVar.e())));
        stringBuffer.append(":");
        stringBuffer.append(String.valueOf(eVar.d()));
        stringBuffer.append(":");
        stringBuffer.append(a.a(eVar.a()));
        return stringBuffer.toString();
    }
}
