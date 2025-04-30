package m.framework.network;

import java.io.InputStream;
import org.apache.http.entity.InputStreamEntity;
/* loaded from: classes5.dex */
public abstract class HTTPPart {
    /* JADX INFO: Access modifiers changed from: protected */
    public abstract InputStream getInputStream() throws Throwable;

    public InputStreamEntity getInputStreamEntity() throws Throwable {
        return new InputStreamEntity(getInputStream(), length());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract long length() throws Throwable;
}
