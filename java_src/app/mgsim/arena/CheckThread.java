package app.mgsim.arena;
/* loaded from: classes2.dex */
public abstract class CheckThread implements Runnable {
    private volatile boolean isContinue = true;

    public abstract boolean check();

    public abstract void handle();

    public boolean isContinue() {
        return this.isContinue;
    }

    public abstract void next();

    @Override // java.lang.Runnable
    public void run() {
        while (this.isContinue) {
            if (!isContinue()) {
                return;
            }
            if (check()) {
                if (!this.isContinue) {
                    return;
                }
                handle();
            }
            next();
        }
    }

    public void setContinue(boolean z3) {
        this.isContinue = z3;
    }

    public void stop() {
        this.isContinue = false;
    }
}
