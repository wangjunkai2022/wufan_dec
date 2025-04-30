package io.netty.resolver.dns.macos;

import io.netty.resolver.dns.DnsServerAddressStream;
import io.netty.resolver.dns.DnsServerAddressStreamProvider;
import io.netty.resolver.dns.DnsServerAddressStreamProviders;
import io.netty.resolver.dns.DnsServerAddresses;
import io.netty.util.internal.NativeLibraryLoader;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.SystemPropertyUtil;
import io.netty.util.internal.ThrowableUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.net.InetSocketAddress;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes5.dex */
public final class MacOSDnsServerAddressStreamProvider implements DnsServerAddressStreamProvider {
    private static final Throwable UNAVAILABILITY_CAUSE;
    private volatile Map<String, DnsServerAddresses> currentMappings = retrieveCurrentMappings();
    private final AtomicLong lastRefresh = new AtomicLong(System.nanoTime());
    private static final DnsServerAddressStreamProvider DEFAULT_PROVIDER = DnsServerAddressStreamProviders.platformDefault();
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(MacOSDnsServerAddressStreamProvider.class);
    private static final long REFRESH_INTERVAL = TimeUnit.SECONDS.toNanos(10);

    static {
        try {
            loadNativeLibrary();
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        UNAVAILABILITY_CAUSE = th;
    }

    public MacOSDnsServerAddressStreamProvider() {
        ensureAvailability();
    }

    public static void ensureAvailability() {
        Throwable th = UNAVAILABILITY_CAUSE;
        if (th != null) {
            throw ((Error) new UnsatisfiedLinkError("failed to load the required native library").initCause(th));
        }
    }

    public static boolean isAvailable() {
        return UNAVAILABILITY_CAUSE == null;
    }

    private static void loadNativeLibrary() {
        if (SystemPropertyUtil.get("os.name").toLowerCase(Locale.UK).trim().startsWith("mac")) {
            String str = "netty_resolver_dns_native_macos_" + PlatformDependent.normalizedArch();
            ClassLoader classLoader = PlatformDependent.getClassLoader(MacOSDnsServerAddressStreamProvider.class);
            try {
                NativeLibraryLoader.load(str, classLoader);
                return;
            } catch (UnsatisfiedLinkError e4) {
                try {
                    NativeLibraryLoader.load("netty_resolver_dns_native_macos", classLoader);
                    logger.debug("Failed to load {}", str, e4);
                    return;
                } catch (UnsatisfiedLinkError e5) {
                    ThrowableUtil.addSuppressed(e4, e5);
                    throw e4;
                }
            }
        }
        throw new IllegalStateException("Only supported on MacOS");
    }

    private static native DnsResolver[] resolvers();

    private static Map<String, DnsServerAddresses> retrieveCurrentMappings() {
        InetSocketAddress[] nameservers;
        DnsResolver[] resolvers = resolvers();
        if (resolvers != null && resolvers.length != 0) {
            HashMap hashMap = new HashMap(resolvers.length);
            for (DnsResolver dnsResolver : resolvers) {
                if (!"mdns".equalsIgnoreCase(dnsResolver.options()) && (nameservers = dnsResolver.nameservers()) != null && nameservers.length != 0) {
                    String domain = dnsResolver.domain();
                    if (domain == null) {
                        domain = "";
                    }
                    InetSocketAddress[] nameservers2 = dnsResolver.nameservers();
                    for (int i2 = 0; i2 < nameservers2.length; i2++) {
                        InetSocketAddress inetSocketAddress = nameservers2[i2];
                        if (inetSocketAddress.getPort() == 0) {
                            int port = dnsResolver.port();
                            if (port == 0) {
                                port = 53;
                            }
                            nameservers2[i2] = new InetSocketAddress(inetSocketAddress.getAddress(), port);
                        }
                    }
                    hashMap.put(domain, DnsServerAddresses.sequential(nameservers2));
                }
            }
            return hashMap;
        }
        return Collections.emptyMap();
    }

    public static Throwable unavailabilityCause() {
        return UNAVAILABILITY_CAUSE;
    }

    @Override // io.netty.resolver.dns.DnsServerAddressStreamProvider
    public DnsServerAddressStream nameServerAddressStream(String str) {
        long j4 = this.lastRefresh.get();
        Map<String, DnsServerAddresses> map = this.currentMappings;
        if (System.nanoTime() - j4 > REFRESH_INTERVAL && this.lastRefresh.compareAndSet(j4, System.nanoTime())) {
            map = retrieveCurrentMappings();
            this.currentMappings = map;
        }
        String str2 = str;
        while (true) {
            int indexOf = str2.indexOf(46, 1);
            if (indexOf < 0 || indexOf == str2.length() - 1) {
                break;
            }
            DnsServerAddresses dnsServerAddresses = map.get(str2);
            if (dnsServerAddresses != null) {
                return dnsServerAddresses.stream();
            }
            str2 = str2.substring(indexOf + 1);
        }
        DnsServerAddresses dnsServerAddresses2 = map.get("");
        if (dnsServerAddresses2 != null) {
            return dnsServerAddresses2.stream();
        }
        return DEFAULT_PROVIDER.nameServerAddressStream(str);
    }
}
