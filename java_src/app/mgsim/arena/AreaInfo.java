package app.mgsim.arena;
/* loaded from: classes2.dex */
public class AreaInfo {
    private int area;
    private String host;
    private int onLinePeopleCounts;
    private long pingTime;
    private int port;

    public int getArea() {
        return this.area;
    }

    public String getHost() {
        return this.host;
    }

    public int getOnLinePeopleCounts() {
        return this.onLinePeopleCounts;
    }

    public long getPingTime() {
        return this.pingTime;
    }

    public int getPort() {
        return this.port;
    }

    public void setArea(int i2) {
        this.area = i2;
    }

    public void setHost(String str) {
        this.host = str;
    }

    public void setOnLinePeopleCounts(int i2) {
        this.onLinePeopleCounts = i2;
    }

    public void setPingTime(long j4) {
        this.pingTime = j4;
    }

    public void setPort(int i2) {
        this.port = i2;
    }

    public String toString() {
        return "AreaInfo{pingTime=" + this.pingTime + ", host='" + this.host + "', port=" + this.port + ", onLinePeopleCounts=" + this.onLinePeopleCounts + ", area=" + this.area + '}';
    }
}
