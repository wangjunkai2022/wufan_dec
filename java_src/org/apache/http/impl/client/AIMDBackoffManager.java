package org.apache.http.impl.client;

import java.util.HashMap;
import java.util.Map;
import org.apache.http.client.BackoffManager;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.pool.ConnPoolControl;
import org.apache.http.util.Args;
/* loaded from: classes5.dex */
public class AIMDBackoffManager implements BackoffManager {
    private double backoffFactor;
    private int cap;
    private final Clock clock;
    private final ConnPoolControl<HttpRoute> connPerRoute;
    private long coolDown;
    private final Map<HttpRoute, Long> lastRouteBackoffs;
    private final Map<HttpRoute, Long> lastRouteProbes;

    public AIMDBackoffManager(ConnPoolControl<HttpRoute> connPoolControl) {
        this(connPoolControl, new SystemClock());
    }

    private int getBackedOffPoolSize(int i2) {
        if (i2 <= 1) {
            return 1;
        }
        double d4 = this.backoffFactor;
        double d5 = i2;
        Double.isNaN(d5);
        return (int) Math.floor(d4 * d5);
    }

    private Long getLastUpdate(Map<HttpRoute, Long> map, HttpRoute httpRoute) {
        Long l4 = map.get(httpRoute);
        if (l4 == null) {
            return 0L;
        }
        return l4;
    }

    @Override // org.apache.http.client.BackoffManager
    public void backOff(HttpRoute httpRoute) {
        synchronized (this.connPerRoute) {
            int maxPerRoute = this.connPerRoute.getMaxPerRoute(httpRoute);
            Long lastUpdate = getLastUpdate(this.lastRouteBackoffs, httpRoute);
            long currentTime = this.clock.getCurrentTime();
            if (currentTime - lastUpdate.longValue() < this.coolDown) {
                return;
            }
            this.connPerRoute.setMaxPerRoute(httpRoute, getBackedOffPoolSize(maxPerRoute));
            this.lastRouteBackoffs.put(httpRoute, Long.valueOf(currentTime));
        }
    }

    @Override // org.apache.http.client.BackoffManager
    public void probe(HttpRoute httpRoute) {
        synchronized (this.connPerRoute) {
            int maxPerRoute = this.connPerRoute.getMaxPerRoute(httpRoute);
            int i2 = this.cap;
            if (maxPerRoute < i2) {
                i2 = maxPerRoute + 1;
            }
            Long lastUpdate = getLastUpdate(this.lastRouteProbes, httpRoute);
            Long lastUpdate2 = getLastUpdate(this.lastRouteBackoffs, httpRoute);
            long currentTime = this.clock.getCurrentTime();
            if (currentTime - lastUpdate.longValue() >= this.coolDown && currentTime - lastUpdate2.longValue() >= this.coolDown) {
                this.connPerRoute.setMaxPerRoute(httpRoute, i2);
                this.lastRouteProbes.put(httpRoute, Long.valueOf(currentTime));
            }
        }
    }

    public void setBackoffFactor(double d4) {
        Args.check(d4 > 0.0d && d4 < 1.0d, "Backoff factor must be 0.0 < f < 1.0");
        this.backoffFactor = d4;
    }

    public void setCooldownMillis(long j4) {
        Args.positive(this.coolDown, "Cool down");
        this.coolDown = j4;
    }

    public void setPerHostConnectionCap(int i2) {
        Args.positive(i2, "Per host connection cap");
        this.cap = i2;
    }

    AIMDBackoffManager(ConnPoolControl<HttpRoute> connPoolControl, Clock clock) {
        this.coolDown = 5000L;
        this.backoffFactor = 0.5d;
        this.cap = 2;
        this.clock = clock;
        this.connPerRoute = connPoolControl;
        this.lastRouteProbes = new HashMap();
        this.lastRouteBackoffs = new HashMap();
    }
}
