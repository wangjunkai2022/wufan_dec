package app.mgsim.arena;
/* loaded from: classes2.dex */
public class SocketError {
    public static final int ERROR_TYPE_ACCOUNT_CHANGED = 5;
    public static final int ERROR_TYPE_BAD_NETWORK = 1;
    public static final int ERROR_TYPE_LOGIN_FAILURE = 6;
    public static final int ERROR_TYPE_LOGIN_INVALID = 3;
    public static final int ERROR_TYPE_LOGIN_KICKED = 2;
    public static final int ERROR_TYPE_NEED_LOGIN = 4;
    public String errorInfo;
    public int errorType;

    public SocketError() {
        this.errorType = -1;
    }

    public SocketError(int i2, String str) {
        this.errorType = -1;
        this.errorType = i2;
        this.errorInfo = str;
    }
}
