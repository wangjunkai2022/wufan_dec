package m.framework.network;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes5.dex */
public class MultiPart extends HTTPPart {
    private ArrayList<HTTPPart> parts = new ArrayList<>();

    public MultiPart append(HTTPPart hTTPPart) throws Throwable {
        this.parts.add(hTTPPart);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // m.framework.network.HTTPPart
    public InputStream getInputStream() throws Throwable {
        MultiPartInputStream multiPartInputStream = new MultiPartInputStream();
        Iterator<HTTPPart> it2 = this.parts.iterator();
        while (it2.hasNext()) {
            multiPartInputStream.addInputStream(it2.next().getInputStream());
        }
        return multiPartInputStream;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // m.framework.network.HTTPPart
    public long length() throws Throwable {
        Iterator<HTTPPart> it2 = this.parts.iterator();
        long j4 = 0;
        while (it2.hasNext()) {
            j4 += it2.next().length();
        }
        return j4;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        Iterator<HTTPPart> it2 = this.parts.iterator();
        while (it2.hasNext()) {
            sb.append(it2.next().toString());
        }
        return sb.toString();
    }
}
