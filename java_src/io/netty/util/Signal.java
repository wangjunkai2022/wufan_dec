package io.netty.util;
/* loaded from: classes5.dex */
public final class Signal extends Error implements Constant<Signal> {
    private static final ConstantPool<Signal> pool = new ConstantPool<Signal>() { // from class: io.netty.util.Signal.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.netty.util.ConstantPool
        public Signal newConstant(int i2, String str) {
            return new Signal(i2, str);
        }
    };
    private static final long serialVersionUID = -221145131122459977L;
    private final SignalConstant constant;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class SignalConstant extends AbstractConstant<SignalConstant> {
        SignalConstant(int i2, String str) {
            super(i2, str);
        }
    }

    public static Signal valueOf(String str) {
        return pool.valueOf(str);
    }

    public boolean equals(Object obj) {
        return this == obj;
    }

    public void expect(Signal signal) {
        if (this == signal) {
            return;
        }
        throw new IllegalStateException("unexpected signal: " + signal);
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        return this;
    }

    public int hashCode() {
        return System.identityHashCode(this);
    }

    @Override // io.netty.util.Constant
    public int id() {
        return this.constant.id();
    }

    @Override // java.lang.Throwable
    public Throwable initCause(Throwable th) {
        return this;
    }

    @Override // io.netty.util.Constant
    public String name() {
        return this.constant.name();
    }

    @Override // java.lang.Throwable
    public String toString() {
        return name();
    }

    private Signal(int i2, String str) {
        this.constant = new SignalConstant(i2, str);
    }

    public static Signal valueOf(Class<?> cls, String str) {
        return pool.valueOf(cls, str);
    }

    @Override // java.lang.Comparable
    public int compareTo(Signal signal) {
        if (this == signal) {
            return 0;
        }
        return this.constant.compareTo(signal.constant);
    }
}
