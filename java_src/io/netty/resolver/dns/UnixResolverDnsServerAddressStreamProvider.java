package io.netty.resolver.dns;

import io.netty.util.NetUtil;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.SocketUtils;
import io.netty.util.internal.StringUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
/* loaded from: classes5.dex */
public final class UnixResolverDnsServerAddressStreamProvider implements DnsServerAddressStreamProvider {
    static final int DEFAULT_NDOTS = 1;
    private static final String DOMAIN_ROW_LABEL = "domain";
    private static final String ETC_RESOLVER_DIR = "/etc/resolver";
    private static final String ETC_RESOLV_CONF_FILE = "/etc/resolv.conf";
    private static final String NAMESERVER_ROW_LABEL = "nameserver";
    private static final String NDOTS_LABEL = "ndots:";
    private static final String OPTIONS_ROW_LABEL = "options";
    private static final String PORT_ROW_LABEL = "port";
    private static final String SEARCH_ROW_LABEL = "search";
    private static final String SORTLIST_ROW_LABEL = "sortlist";
    private final DnsServerAddresses defaultNameServerAddresses;
    private final Map<String, DnsServerAddresses> domainToNameServerStreamMap;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(UnixResolverDnsServerAddressStreamProvider.class);
    private static final Pattern SEARCH_DOMAIN_PATTERN = Pattern.compile("\\s+");

    public UnixResolverDnsServerAddressStreamProvider(File file, File... fileArr) throws IOException {
        boolean z3 = true;
        Map<String, DnsServerAddresses> parse = parse((File) ObjectUtil.checkNotNull(file, "etcResolvConf"));
        z3 = (fileArr == null || fileArr.length == 0) ? false : false;
        Map<String, DnsServerAddresses> parse2 = z3 ? parse(fileArr) : parse;
        this.domainToNameServerStreamMap = parse2;
        DnsServerAddresses dnsServerAddresses = parse.get(file.getName());
        if (dnsServerAddresses == null) {
            Collection<DnsServerAddresses> values = parse.values();
            if (!values.isEmpty()) {
                this.defaultNameServerAddresses = values.iterator().next();
            } else {
                throw new IllegalArgumentException(file + " didn't provide any name servers");
            }
        } else {
            this.defaultNameServerAddresses = dnsServerAddresses;
        }
        if (z3) {
            parse2.putAll(parse);
        }
    }

    private boolean mayOverrideNameServers() {
        return (this.domainToNameServerStreamMap.isEmpty() && this.defaultNameServerAddresses.stream().next() == null) ? false : true;
    }

    private static Map<String, DnsServerAddresses> parse(File... fileArr) throws IOException {
        int i2;
        String trim;
        int i4;
        char charAt;
        String substring;
        File[] fileArr2 = fileArr;
        HashMap hashMap = new HashMap(fileArr2.length << 1);
        int length = fileArr2.length;
        int i5 = 0;
        int i6 = 0;
        loop0: while (i6 < length) {
            File file = fileArr2[i6];
            if (file.isFile()) {
                FileReader fileReader = new FileReader(file);
                BufferedReader bufferedReader = null;
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(fileReader);
                    try {
                        ArrayList arrayList = new ArrayList(2);
                        String name = file.getName();
                        int i7 = 53;
                        ArrayList arrayList2 = arrayList;
                        while (true) {
                            String readLine = bufferedReader2.readLine();
                            if (readLine != null) {
                                trim = readLine.trim();
                                try {
                                } catch (IllegalArgumentException e4) {
                                    e = e4;
                                    i4 = length;
                                }
                                if (!trim.isEmpty() && (charAt = trim.charAt(i5)) != '#' && charAt != ';') {
                                    if (trim.startsWith(NAMESERVER_ROW_LABEL)) {
                                        int indexOfNonWhiteSpace = StringUtil.indexOfNonWhiteSpace(trim, 10);
                                        if (indexOfNonWhiteSpace >= 0) {
                                            int indexOfWhiteSpace = StringUtil.indexOfWhiteSpace(trim, indexOfNonWhiteSpace);
                                            if (indexOfWhiteSpace == -1) {
                                                substring = trim.substring(indexOfNonWhiteSpace);
                                                i4 = length;
                                            } else {
                                                i4 = length;
                                                int indexOfNonWhiteSpace2 = StringUtil.indexOfNonWhiteSpace(trim, indexOfWhiteSpace);
                                                if (indexOfNonWhiteSpace2 == -1 || trim.charAt(indexOfNonWhiteSpace2) != '#') {
                                                    break loop0;
                                                }
                                                substring = trim.substring(indexOfNonWhiteSpace, indexOfWhiteSpace);
                                            }
                                            if (!NetUtil.isValidIpV4Address(substring)) {
                                                try {
                                                } catch (IllegalArgumentException e5) {
                                                    e = e5;
                                                    logger.warn("Could not parse entry. Ignoring line: {}", trim, e);
                                                    length = i4;
                                                    i5 = 0;
                                                }
                                                if (!NetUtil.isValidIpV6Address(substring)) {
                                                    int lastIndexOf = substring.lastIndexOf(46);
                                                    int i8 = lastIndexOf + 1;
                                                    if (i8 < substring.length()) {
                                                        i7 = Integer.parseInt(substring.substring(i8));
                                                        try {
                                                            substring = substring.substring(0, lastIndexOf);
                                                            arrayList2.add(SocketUtils.socketAddress(substring, i7));
                                                        } catch (IllegalArgumentException e6) {
                                                            e = e6;
                                                        }
                                                        length = i4;
                                                        i5 = 0;
                                                    } else {
                                                        throw new IllegalArgumentException("error parsing label nameserver in file " + file + ". invalid IP value: " + trim);
                                                    }
                                                }
                                            }
                                            arrayList2.add(SocketUtils.socketAddress(substring, i7));
                                            length = i4;
                                            i5 = 0;
                                        } else {
                                            throw new IllegalArgumentException("error parsing label nameserver in file " + file + ". value: " + trim);
                                        }
                                    } else {
                                        i4 = length;
                                        if (trim.startsWith(DOMAIN_ROW_LABEL)) {
                                            int indexOfNonWhiteSpace3 = StringUtil.indexOfNonWhiteSpace(trim, 6);
                                            if (indexOfNonWhiteSpace3 >= 0) {
                                                String substring2 = trim.substring(indexOfNonWhiteSpace3);
                                                try {
                                                    if (!arrayList2.isEmpty()) {
                                                        try {
                                                            putIfAbsent(hashMap, substring2, arrayList2);
                                                        } catch (IllegalArgumentException e7) {
                                                            e = e7;
                                                            name = substring2;
                                                        }
                                                    }
                                                    try {
                                                        arrayList2 = new ArrayList(2);
                                                        name = substring2;
                                                    } catch (IllegalArgumentException e8) {
                                                        e = e8;
                                                        name = substring2;
                                                        logger.warn("Could not parse entry. Ignoring line: {}", trim, e);
                                                        length = i4;
                                                        i5 = 0;
                                                    }
                                                } catch (IllegalArgumentException e9) {
                                                    e = e9;
                                                }
                                            } else {
                                                throw new IllegalArgumentException("error parsing label domain in file " + file + " value: " + trim);
                                            }
                                        } else {
                                            try {
                                                if (trim.startsWith("port")) {
                                                    int indexOfNonWhiteSpace4 = StringUtil.indexOfNonWhiteSpace(trim, 4);
                                                    if (indexOfNonWhiteSpace4 >= 0) {
                                                        i7 = Integer.parseInt(trim.substring(indexOfNonWhiteSpace4));
                                                    } else {
                                                        throw new IllegalArgumentException("error parsing label port in file " + file + " value: " + trim);
                                                    }
                                                } else if (trim.startsWith(SORTLIST_ROW_LABEL)) {
                                                    logger.info("row type {} not supported. Ignoring line: {}", SORTLIST_ROW_LABEL, trim);
                                                }
                                            } catch (IllegalArgumentException e10) {
                                                e = e10;
                                            }
                                        }
                                        length = i4;
                                        i5 = 0;
                                    }
                                    logger.warn("Could not parse entry. Ignoring line: {}", trim, e);
                                    length = i4;
                                    i5 = 0;
                                }
                                i4 = length;
                                length = i4;
                                i5 = 0;
                            } else {
                                i2 = length;
                                if (!arrayList2.isEmpty()) {
                                    putIfAbsent(hashMap, name, arrayList2);
                                }
                                bufferedReader2.close();
                            }
                        }
                        throw new IllegalArgumentException("error parsing label nameserver in file " + file + ". value: " + trim);
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader == null) {
                            fileReader.close();
                        } else {
                            bufferedReader.close();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } else {
                i2 = length;
            }
            i6++;
            fileArr2 = fileArr;
            length = i2;
            i5 = 0;
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int parseEtcResolverFirstNdots() throws IOException {
        return parseEtcResolverFirstNdots(new File(ETC_RESOLV_CONF_FILE));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<String> parseEtcResolverSearchDomains() throws IOException {
        return parseEtcResolverSearchDomains(new File(ETC_RESOLV_CONF_FILE));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DnsServerAddressStreamProvider parseSilently() {
        try {
            UnixResolverDnsServerAddressStreamProvider unixResolverDnsServerAddressStreamProvider = new UnixResolverDnsServerAddressStreamProvider(ETC_RESOLV_CONF_FILE, ETC_RESOLVER_DIR);
            return unixResolverDnsServerAddressStreamProvider.mayOverrideNameServers() ? unixResolverDnsServerAddressStreamProvider : DefaultDnsServerAddressStreamProvider.INSTANCE;
        } catch (Exception e4) {
            logger.debug("failed to parse {} and/or {}", ETC_RESOLV_CONF_FILE, ETC_RESOLVER_DIR, e4);
            return DefaultDnsServerAddressStreamProvider.INSTANCE;
        }
    }

    private static void putIfAbsent(Map<String, DnsServerAddresses> map, String str, List<InetSocketAddress> list) {
        putIfAbsent(map, str, DnsServerAddresses.sequential(list));
    }

    @Override // io.netty.resolver.dns.DnsServerAddressStreamProvider
    public DnsServerAddressStream nameServerAddressStream(String str) {
        while (true) {
            int indexOf = str.indexOf(46, 1);
            if (indexOf < 0 || indexOf == str.length() - 1) {
                break;
            }
            DnsServerAddresses dnsServerAddresses = this.domainToNameServerStreamMap.get(str);
            if (dnsServerAddresses != null) {
                return dnsServerAddresses.stream();
            }
            str = str.substring(indexOf + 1);
        }
        return this.defaultNameServerAddresses.stream();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0021, code lost:
        r2 = r2 + 6;
        r3 = r5.indexOf(32, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0029, code lost:
        if (r3 >= 0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x002b, code lost:
        r3 = r5.length();
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002f, code lost:
        r5 = java.lang.Integer.parseInt(r5.substring(r2, r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0037, code lost:
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003a, code lost:
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0019, code lost:
        r2 = r5.indexOf(io.netty.resolver.dns.UnixResolverDnsServerAddressStreamProvider.NDOTS_LABEL);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001f, code lost:
        if (r2 < 0) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static int parseEtcResolverFirstNdots(java.io.File r5) throws java.io.IOException {
        /*
            java.io.FileReader r0 = new java.io.FileReader
            r0.<init>(r5)
            r5 = 0
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L42
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L42
        Lb:
            java.lang.String r5 = r1.readLine()     // Catch: java.lang.Throwable -> L40
            if (r5 == 0) goto L3b
            java.lang.String r2 = "options"
            boolean r2 = r5.startsWith(r2)     // Catch: java.lang.Throwable -> L40
            if (r2 == 0) goto Lb
            java.lang.String r2 = "ndots:"
            int r2 = r5.indexOf(r2)     // Catch: java.lang.Throwable -> L40
            if (r2 < 0) goto L3b
            int r2 = r2 + 6
            r3 = 32
            int r3 = r5.indexOf(r3, r2)     // Catch: java.lang.Throwable -> L40
            if (r3 >= 0) goto L2f
            int r3 = r5.length()     // Catch: java.lang.Throwable -> L40
        L2f:
            java.lang.String r5 = r5.substring(r2, r3)     // Catch: java.lang.Throwable -> L40
            int r5 = java.lang.Integer.parseInt(r5)     // Catch: java.lang.Throwable -> L40
            r1.close()
            return r5
        L3b:
            r1.close()
            r5 = 1
            return r5
        L40:
            r5 = move-exception
            goto L46
        L42:
            r1 = move-exception
            r4 = r1
            r1 = r5
            r5 = r4
        L46:
            if (r1 != 0) goto L4c
            r0.close()
            goto L4f
        L4c:
            r1.close()
        L4f:
            goto L51
        L50:
            throw r5
        L51:
            goto L50
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.resolver.dns.UnixResolverDnsServerAddressStreamProvider.parseEtcResolverFirstNdots(java.io.File):int");
    }

    static List<String> parseEtcResolverSearchDomains(File file) throws IOException {
        BufferedReader bufferedReader;
        Throwable th;
        int indexOfNonWhiteSpace;
        ArrayList arrayList = new ArrayList();
        FileReader fileReader = new FileReader(file);
        String str = null;
        try {
            bufferedReader = new BufferedReader(fileReader);
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    } else if (str == null && readLine.startsWith(DOMAIN_ROW_LABEL)) {
                        int indexOfNonWhiteSpace2 = StringUtil.indexOfNonWhiteSpace(readLine, 6);
                        if (indexOfNonWhiteSpace2 >= 0) {
                            str = readLine.substring(indexOfNonWhiteSpace2);
                        }
                    } else if (readLine.startsWith(SEARCH_ROW_LABEL) && (indexOfNonWhiteSpace = StringUtil.indexOfNonWhiteSpace(readLine, 6)) >= 0) {
                        Collections.addAll(arrayList, SEARCH_DOMAIN_PATTERN.split(readLine.substring(indexOfNonWhiteSpace)));
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (bufferedReader == null) {
                        fileReader.close();
                    } else {
                        bufferedReader.close();
                    }
                    throw th;
                }
            }
            bufferedReader.close();
            return (str == null || !arrayList.isEmpty()) ? arrayList : Collections.singletonList(str);
        } catch (Throwable th3) {
            bufferedReader = null;
            th = th3;
        }
    }

    private static void putIfAbsent(Map<String, DnsServerAddresses> map, String str, DnsServerAddresses dnsServerAddresses) {
        DnsServerAddresses put = map.put(str, dnsServerAddresses);
        if (put != null) {
            map.put(str, put);
            logger.debug("Domain name {} already maps to addresses {} so new addresses {} will be discarded", str, put, dnsServerAddresses);
        }
    }

    public UnixResolverDnsServerAddressStreamProvider(String str, String str2) throws IOException {
        this(str == null ? null : new File(str), str2 != null ? new File(str2).listFiles() : null);
    }
}
