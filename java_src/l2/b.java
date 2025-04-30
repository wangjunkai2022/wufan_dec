package l2;
/* compiled from: ChannelInfo.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private int f72563a;

    /* renamed from: b  reason: collision with root package name */
    private String f72564b;

    public String a() {
        return this.f72564b;
    }

    public void b(String str) {
        this.f72564b = str;
    }

    public void c(int i2) {
        this.f72563a = i2;
    }

    public String d() {
        return "{\n    \"type\":" + this.f72563a + ",    \"appId\":\"" + this.f72564b + "\"}";
    }

    public int getType() {
        return this.f72563a;
    }

    public String toString() {
        return "ChannelInfo{type=" + this.f72563a + ", appId='" + this.f72564b + "'}";
    }
}
