package org.apache.http.client.methods;

import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.client.utils.CloneUtilsHC4;
@NotThreadSafe
/* loaded from: classes5.dex */
public abstract class HttpEntityEnclosingRequestBaseHC4 extends HttpRequestBaseHC4 implements HttpEntityEnclosingRequest {
    private HttpEntity entity;

    @Override // org.apache.http.client.methods.AbstractExecutionAwareRequest
    public Object clone() throws CloneNotSupportedException {
        HttpEntityEnclosingRequestBaseHC4 httpEntityEnclosingRequestBaseHC4 = (HttpEntityEnclosingRequestBaseHC4) super.clone();
        HttpEntity httpEntity = this.entity;
        if (httpEntity != null) {
            httpEntityEnclosingRequestBaseHC4.entity = (HttpEntity) CloneUtilsHC4.cloneObject(httpEntity);
        }
        return httpEntityEnclosingRequestBaseHC4;
    }

    public boolean expectContinue() {
        Header firstHeader = getFirstHeader("Expect");
        return firstHeader != null && "100-continue".equalsIgnoreCase(firstHeader.getValue());
    }

    public HttpEntity getEntity() {
        return this.entity;
    }

    public void setEntity(HttpEntity httpEntity) {
        this.entity = httpEntity;
    }
}
