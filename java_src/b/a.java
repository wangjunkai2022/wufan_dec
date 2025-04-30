package b;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public static final ThreadPoolExecutor f8192a = new ThreadPoolExecutor(0, 3, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(2048), new ThreadPoolExecutor.DiscardPolicy());
}
