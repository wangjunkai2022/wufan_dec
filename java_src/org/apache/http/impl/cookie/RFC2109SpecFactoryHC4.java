package org.apache.http.impl.cookie;

import java.util.Collection;
import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.CookieSpecFactory;
import org.apache.http.cookie.CookieSpecProvider;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;
@Immutable
/* loaded from: classes5.dex */
public class RFC2109SpecFactoryHC4 implements CookieSpecFactory, CookieSpecProvider {
    private final String[] datepatterns;
    private final boolean oneHeader;

    public RFC2109SpecFactoryHC4(String[] strArr, boolean z3) {
        this.datepatterns = strArr;
        this.oneHeader = z3;
    }

    @Override // org.apache.http.cookie.CookieSpecProvider
    public CookieSpec create(HttpContext httpContext) {
        return new RFC2109SpecHC4(this.datepatterns, this.oneHeader);
    }

    public CookieSpec newInstance(HttpParams httpParams) {
        if (httpParams != null) {
            Collection collection = (Collection) httpParams.getParameter("http.protocol.cookie-datepatterns");
            return new RFC2109SpecHC4(collection != null ? (String[]) collection.toArray(new String[collection.size()]) : null, httpParams.getBooleanParameter("http.protocol.single-cookie-header", false));
        }
        return new RFC2109SpecHC4();
    }

    public RFC2109SpecFactoryHC4() {
        this(null, false);
    }
}
