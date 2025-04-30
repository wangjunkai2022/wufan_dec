package org.apache.http.client.utils;

import com.join.mgps.Util.g0;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Stack;
import net.lingala.zip4j.util.e;
import org.apache.http.HttpHost;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.Args;
import org.apache.http.util.TextUtils;
@Immutable
/* loaded from: classes5.dex */
public class URIUtilsHC4 {
    private URIUtilsHC4() {
    }

    @Deprecated
    public static URI createURI(String str, String str2, int i2, String str3, String str4, String str5) throws URISyntaxException {
        StringBuilder sb = new StringBuilder();
        if (str2 != null) {
            if (str != null) {
                sb.append(str);
                sb.append("://");
            }
            sb.append(str2);
            if (i2 > 0) {
                sb.append(':');
                sb.append(i2);
            }
        }
        if (str3 == null || !str3.startsWith(e.F0)) {
            sb.append('/');
        }
        if (str3 != null) {
            sb.append(str3);
        }
        if (str4 != null) {
            sb.append('?');
            sb.append(str4);
        }
        if (str5 != null) {
            sb.append('#');
            sb.append(str5);
        }
        return new URI(sb.toString());
    }

    public static HttpHost extractHost(URI uri) {
        int indexOf;
        if (uri != null && uri.isAbsolute()) {
            int port = uri.getPort();
            String host = uri.getHost();
            if (host == null && (host = uri.getAuthority()) != null) {
                int indexOf2 = host.indexOf(64);
                if (indexOf2 >= 0) {
                    int i2 = indexOf2 + 1;
                    host = host.length() > i2 ? host.substring(i2) : null;
                }
                if (host != null && (indexOf = host.indexOf(58)) >= 0) {
                    int i4 = indexOf + 1;
                    int i5 = 0;
                    for (int i6 = i4; i6 < host.length() && Character.isDigit(host.charAt(i6)); i6++) {
                        i5++;
                    }
                    if (i5 > 0) {
                        try {
                            port = Integer.parseInt(host.substring(i4, i5 + i4));
                        } catch (NumberFormatException unused) {
                        }
                    }
                    host = host.substring(0, indexOf);
                }
            }
            String scheme = uri.getScheme();
            if (TextUtils.isBlank(host)) {
                return null;
            }
            return new HttpHost(host, port, scheme);
        }
        return null;
    }

    private static URI normalizeSyntax(URI uri) {
        if (uri.isOpaque() || uri.getAuthority() == null) {
            return uri;
        }
        Args.check(uri.isAbsolute(), "Base URI must be absolute");
        String path = uri.getPath() == null ? "" : uri.getPath();
        String[] split = path.split(e.F0);
        Stack stack = new Stack();
        for (String str : split) {
            if (str.length() != 0 && !g0.f27568a.equals(str)) {
                if ("..".equals(str)) {
                    if (!stack.isEmpty()) {
                        stack.pop();
                    }
                } else {
                    stack.push(str);
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        Iterator it2 = stack.iterator();
        while (it2.hasNext()) {
            sb.append('/');
            sb.append((String) it2.next());
        }
        if (path.lastIndexOf(47) == path.length() - 1) {
            sb.append('/');
        }
        try {
            String scheme = uri.getScheme();
            Locale locale = Locale.ENGLISH;
            URI uri2 = new URI(scheme.toLowerCase(locale), uri.getAuthority().toLowerCase(locale), sb.toString(), null, null);
            if (uri.getQuery() == null && uri.getFragment() == null) {
                return uri2;
            }
            StringBuilder sb2 = new StringBuilder(uri2.toASCIIString());
            if (uri.getQuery() != null) {
                sb2.append('?');
                sb2.append(uri.getRawQuery());
            }
            if (uri.getFragment() != null) {
                sb2.append('#');
                sb2.append(uri.getRawFragment());
            }
            return URI.create(sb2.toString());
        } catch (URISyntaxException e4) {
            throw new IllegalArgumentException(e4);
        }
    }

    public static URI resolve(URI uri, String str) {
        return resolve(uri, URI.create(str));
    }

    private static URI resolveReferenceStartingWithQueryString(URI uri, URI uri2) {
        String uri3 = uri.toString();
        if (uri3.indexOf(63) > -1) {
            uri3 = uri3.substring(0, uri3.indexOf(63));
        }
        return URI.create(uri3 + uri2.toString());
    }

    public static URI rewriteURI(URI uri, HttpHost httpHost, boolean z3) throws URISyntaxException {
        Args.notNull(uri, "URI");
        if (uri.isOpaque()) {
            return uri;
        }
        URIBuilder uRIBuilder = new URIBuilder(uri);
        if (httpHost != null) {
            uRIBuilder.setScheme(httpHost.getSchemeName());
            uRIBuilder.setHost(httpHost.getHostName());
            uRIBuilder.setPort(httpHost.getPort());
        } else {
            uRIBuilder.setScheme(null);
            uRIBuilder.setHost(null);
            uRIBuilder.setPort(-1);
        }
        if (z3) {
            uRIBuilder.setFragment(null);
        }
        if (TextUtils.isEmpty(uRIBuilder.getPath())) {
            uRIBuilder.setPath(e.F0);
        }
        return uRIBuilder.build();
    }

    public static URI resolve(URI uri, URI uri2) {
        Args.notNull(uri, "Base URI");
        Args.notNull(uri2, "Reference URI");
        String uri3 = uri2.toString();
        if (uri3.startsWith("?")) {
            return resolveReferenceStartingWithQueryString(uri, uri2);
        }
        boolean z3 = uri3.length() == 0;
        if (z3) {
            uri2 = URI.create("#");
        }
        URI resolve = uri.resolve(uri2);
        if (z3) {
            String uri4 = resolve.toString();
            resolve = URI.create(uri4.substring(0, uri4.indexOf(35)));
        }
        return normalizeSyntax(resolve);
    }

    public static URI resolve(URI uri, HttpHost httpHost, List<URI> list) throws URISyntaxException {
        URIBuilder uRIBuilder;
        Args.notNull(uri, "Request URI");
        if (list != null && !list.isEmpty()) {
            uRIBuilder = new URIBuilder(list.get(list.size() - 1));
            String fragment = uRIBuilder.getFragment();
            for (int size = list.size() - 1; fragment == null && size >= 0; size--) {
                fragment = list.get(size).getFragment();
            }
            uRIBuilder.setFragment(fragment);
        } else {
            uRIBuilder = new URIBuilder(uri);
        }
        if (uRIBuilder.getFragment() == null) {
            uRIBuilder.setFragment(uri.getFragment());
        }
        if (httpHost != null && !uRIBuilder.isAbsolute()) {
            uRIBuilder.setScheme(httpHost.getSchemeName());
            uRIBuilder.setHost(httpHost.getHostName());
            uRIBuilder.setPort(httpHost.getPort());
        }
        return uRIBuilder.build();
    }

    public static URI rewriteURI(URI uri, HttpHost httpHost) throws URISyntaxException {
        return rewriteURI(uri, httpHost, false);
    }

    public static URI rewriteURI(URI uri) throws URISyntaxException {
        Args.notNull(uri, "URI");
        if (uri.isOpaque()) {
            return uri;
        }
        URIBuilder uRIBuilder = new URIBuilder(uri);
        if (uRIBuilder.getUserInfo() != null) {
            uRIBuilder.setUserInfo(null);
        }
        if (TextUtils.isEmpty(uRIBuilder.getPath())) {
            uRIBuilder.setPath(e.F0);
        }
        if (uRIBuilder.getHost() != null) {
            uRIBuilder.setHost(uRIBuilder.getHost().toLowerCase(Locale.ENGLISH));
        }
        uRIBuilder.setFragment(null);
        return uRIBuilder.build();
    }
}
