package external.org.apache.commons.lang3.exception;
/* loaded from: classes3.dex */
public class CloneFailedException extends RuntimeException {
    private static final long serialVersionUID = 20091223;

    public CloneFailedException(final String message) {
        super(message);
    }

    public CloneFailedException(final Throwable cause) {
        super(cause);
    }

    public CloneFailedException(final String message, final Throwable cause) {
        super(message, cause);
    }
}
