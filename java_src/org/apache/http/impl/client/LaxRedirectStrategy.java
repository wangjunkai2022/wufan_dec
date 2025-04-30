package org.apache.http.impl.client;

import org.apache.http.annotation.Immutable;
import org.apache.http.client.methods.HttpHeadHC4;
@Immutable
/* loaded from: classes5.dex */
public class LaxRedirectStrategy extends DefaultRedirectStrategy {
    private static final String[] REDIRECT_METHODS = {"GET", "POST", HttpHeadHC4.METHOD_NAME};

    @Override // org.apache.http.impl.client.DefaultRedirectStrategy
    protected boolean isRedirectable(String str) {
        for (String str2 : REDIRECT_METHODS) {
            if (str2.equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }
}
