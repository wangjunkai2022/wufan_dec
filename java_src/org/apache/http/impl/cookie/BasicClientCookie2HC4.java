package org.apache.http.impl.cookie;

import java.util.Date;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.cookie.SetCookie2;
@NotThreadSafe
/* loaded from: classes5.dex */
public class BasicClientCookie2HC4 extends BasicClientCookieHC4 implements SetCookie2 {
    private static final long serialVersionUID = -7744598295706617057L;
    private String commentURL;
    private boolean discard;
    private int[] ports;

    public BasicClientCookie2HC4(String str, String str2) {
        super(str, str2);
    }

    @Override // org.apache.http.impl.cookie.BasicClientCookieHC4
    public Object clone() throws CloneNotSupportedException {
        BasicClientCookie2HC4 basicClientCookie2HC4 = (BasicClientCookie2HC4) super.clone();
        int[] iArr = this.ports;
        if (iArr != null) {
            basicClientCookie2HC4.ports = (int[]) iArr.clone();
        }
        return basicClientCookie2HC4;
    }

    @Override // org.apache.http.impl.cookie.BasicClientCookieHC4
    public String getCommentURL() {
        return this.commentURL;
    }

    @Override // org.apache.http.impl.cookie.BasicClientCookieHC4
    public int[] getPorts() {
        return this.ports;
    }

    @Override // org.apache.http.impl.cookie.BasicClientCookieHC4
    public boolean isExpired(Date date) {
        return this.discard || super.isExpired(date);
    }

    @Override // org.apache.http.impl.cookie.BasicClientCookieHC4
    public boolean isPersistent() {
        return !this.discard && super.isPersistent();
    }

    public void setCommentURL(String str) {
        this.commentURL = str;
    }

    public void setDiscard(boolean z3) {
        this.discard = z3;
    }

    public void setPorts(int[] iArr) {
        this.ports = iArr;
    }
}
