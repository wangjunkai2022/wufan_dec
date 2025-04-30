package app.mgsim.arena;
/* loaded from: classes2.dex */
public abstract class SocketThread implements Runnable {
    private String getTag() {
        return getClass().getSimpleName();
    }

    protected abstract void execute();

    protected void printMessgae(String str) {
        getTag();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void printMessgae(String str, String str2) {
    }

    @Override // java.lang.Runnable
    public void run() {
        printMessgae("Thread name ->  " + getTag() + "  is Running----");
        execute();
    }
}
