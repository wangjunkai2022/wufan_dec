package kotlinx.coroutines.debug.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.join.mgps.activity.PapayPayDetialActivity_;
import com.umeng.analytics.pro.ai;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.KotlinVersion;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.concurrent.ThreadsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.c2;
import kotlinx.coroutines.debug.internal.DebugProbesImpl;
import kotlinx.coroutines.f2;
import kotlinx.coroutines.internal.e0;
import kotlinx.coroutines.internal.h0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DebugProbesImpl.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000Ê\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0003\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\"\n\u0002\b\u0006\bÀ\u0002\u0018\u00002\u00020\u0001:\u0002\u0092\u0001B\n\b\u0002¢\u0006\u0005\b\u0091\u0001\u0010\bJ\u001d\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\t\u0010\bJ;\u0010\u0013\u001a\u00020\u0004*\u00020\n2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\f0\u000b2\n\u0010\u0010\u001a\u00060\u000ej\u0002`\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J>\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u001a\"\b\b\u0000\u0010\u0015*\u00020\u00012\u001c\u0010\u0019\u001a\u0018\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0017\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00028\u00000\u0016H\u0082\b¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\u0003*\u0006\u0012\u0002\b\u00030\u0017H\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u001fH\u0002¢\u0006\u0004\b!\u0010\"J%\u0010%\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u001f2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020#0\u001aH\u0002¢\u0006\u0004\b%\u0010&J5\u0010+\u001a\b\u0012\u0004\u0012\u00020#0\u001a2\u0006\u0010'\u001a\u00020\u00112\b\u0010)\u001a\u0004\u0018\u00010(2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020#0\u001aH\u0002¢\u0006\u0004\b+\u0010,J?\u00102\u001a\u000e\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020-012\u0006\u0010.\u001a\u00020-2\f\u00100\u001a\b\u0012\u0004\u0012\u00020#0/2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020#0\u001aH\u0002¢\u0006\u0004\b2\u00103J3\u00105\u001a\u00020-2\u0006\u00104\u001a\u00020-2\f\u00100\u001a\b\u0012\u0004\u0012\u00020#0/2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020#0\u001aH\u0002¢\u0006\u0004\b5\u00106J#\u0010\u0015\u001a\u00020\u00042\n\u00108\u001a\u0006\u0012\u0002\b\u0003072\u0006\u0010'\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0015\u00109J\u001f\u0010;\u001a\u00020\u00042\u0006\u00108\u001a\u00020:2\u0006\u0010'\u001a\u00020\u0011H\u0002¢\u0006\u0004\b;\u0010<J\u0016\u0010=\u001a\u0004\u0018\u00010:*\u00020:H\u0082\u0010¢\u0006\u0004\b=\u0010>J/\u0010@\u001a\u00020\u00042\n\u0010?\u001a\u0006\u0012\u0002\b\u00030\u00172\n\u00108\u001a\u0006\u0012\u0002\b\u0003072\u0006\u0010'\u001a\u00020\u0011H\u0002¢\u0006\u0004\b@\u0010AJ\u001d\u0010B\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0017*\u0006\u0012\u0002\b\u000307H\u0002¢\u0006\u0004\bB\u0010CJ\u001a\u0010D\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0017*\u00020:H\u0082\u0010¢\u0006\u0004\bD\u0010EJ\u001b\u0010G\u001a\u0004\u0018\u00010F*\b\u0012\u0004\u0012\u00020#0\u001aH\u0002¢\u0006\u0004\bG\u0010HJ3\u0010K\u001a\b\u0012\u0004\u0012\u00028\u000007\"\u0004\b\u0000\u0010I2\f\u0010J\u001a\b\u0012\u0004\u0012\u00028\u0000072\b\u00108\u001a\u0004\u0018\u00010FH\u0002¢\u0006\u0004\bK\u0010LJ\u001b\u0010M\u001a\u00020\u00042\n\u0010?\u001a\u0006\u0012\u0002\b\u00030\u0017H\u0002¢\u0006\u0004\bM\u0010NJ'\u0010Q\u001a\b\u0012\u0004\u0012\u00020#0\u001a\"\b\b\u0000\u0010I*\u00020O2\u0006\u0010P\u001a\u00028\u0000H\u0002¢\u0006\u0004\bQ\u0010RJ\r\u0010S\u001a\u00020\u0004¢\u0006\u0004\bS\u0010\bJ\r\u0010T\u001a\u00020\u0004¢\u0006\u0004\bT\u0010\bJ\u0015\u0010V\u001a\u00020\u00112\u0006\u0010U\u001a\u00020\n¢\u0006\u0004\bV\u0010WJ\u0013\u0010Y\u001a\b\u0012\u0004\u0012\u00020X0\u001a¢\u0006\u0004\bY\u0010ZJ\u0013\u0010\\\u001a\b\u0012\u0004\u0012\u00020[0\u001a¢\u0006\u0004\b\\\u0010ZJ\u0015\u0010]\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b]\u0010\"J)\u0010_\u001a\b\u0012\u0004\u0012\u00020#0\u001a2\u0006\u0010^\u001a\u00020X2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020#0\u001a¢\u0006\u0004\b_\u0010`J\u001b\u0010a\u001a\u00020\u00042\n\u00108\u001a\u0006\u0012\u0002\b\u000307H\u0000¢\u0006\u0004\ba\u0010bJ\u001b\u0010c\u001a\u00020\u00042\n\u00108\u001a\u0006\u0012\u0002\b\u000307H\u0000¢\u0006\u0004\bc\u0010bJ)\u0010d\u001a\b\u0012\u0004\u0012\u00028\u000007\"\u0004\b\u0000\u0010I2\f\u0010J\u001a\b\u0012\u0004\u0012\u00028\u000007H\u0000¢\u0006\u0004\bd\u0010eR \u0010i\u001a\u00020\u0011*\u00020\n8B@\u0002X\u0082\u0004¢\u0006\f\u0012\u0004\bg\u0010h\u001a\u0004\bf\u0010WR\u0016\u0010l\u001a\u00020\u00038@@\u0000X\u0080\u0004¢\u0006\u0006\u001a\u0004\bj\u0010kR\u0016\u0010m\u001a\u00020-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010=R&\u0010q\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0017\u0012\u0004\u0012\u00020\u00030n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bo\u0010pR\"\u0010v\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010r\u001a\u0004\bs\u0010k\"\u0004\bt\u0010uR\"\u0010w\u001a\u000e\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020\f0n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\\\u0010pR\u0016\u0010z\u001a\u00020\u00118\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\bx\u0010yR\u0018\u0010}\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b{\u0010|R\u0017\u0010\u0080\u0001\u001a\u00020~8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b]\u0010\u007fR\u001d\u0010\u0083\u0001\u001a\u00020\u0003*\u00020#8B@\u0002X\u0082\u0004¢\u0006\b\u001a\u0006\b\u0081\u0001\u0010\u0082\u0001R&\u0010\u0085\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b!\u0010\u0084\u0001R\u001a\u0010\u0089\u0001\u001a\u00030\u0086\u00018\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u0088\u0001R%\u0010\u008c\u0001\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\bY\u0010r\u001a\u0005\b\u008a\u0001\u0010k\"\u0005\b\u008b\u0001\u0010uR$\u0010\u0090\u0001\u001a\r\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00170\u008d\u00018B@\u0002X\u0082\u0004¢\u0006\b\u001a\u0006\b\u008e\u0001\u0010\u008f\u0001¨\u0006\u0093\u0001"}, d2 = {"Lkotlinx/coroutines/debug/internal/DebugProbesImpl;", "", "Lkotlin/Function1;", "", "", ai.aF, "()Lkotlin/jvm/functions/Function1;", "M", "()V", "N", "Lkotlinx/coroutines/c2;", "", "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;", "map", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "builder", "", "indent", "f", "(Lkotlinx/coroutines/c2;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/lang/String;)V", "R", "Lkotlin/Function2;", "Lkotlinx/coroutines/debug/internal/DebugProbesImpl$a;", "Lkotlin/coroutines/CoroutineContext;", "create", "", "j", "(Lkotlin/jvm/functions/Function2;)Ljava/util/List;", "y", "(Lkotlinx/coroutines/debug/internal/DebugProbesImpl$a;)Z", "Ljava/io/PrintStream;", "out", "k", "(Ljava/io/PrintStream;)V", "Ljava/lang/StackTraceElement;", "frames", "D", "(Ljava/io/PrintStream;Ljava/util/List;)V", NoticeTopAnimActivityDialog_.f34402n, "Ljava/lang/Thread;", "thread", "coroutineTrace", "n", "(Ljava/lang/String;Ljava/lang/Thread;Ljava/util/List;)Ljava/util/List;", "", "indexOfResumeWith", "", "actualTrace", "Lkotlin/Pair;", "o", "(I[Ljava/lang/StackTraceElement;Ljava/util/List;)Lkotlin/Pair;", "frameIndex", ai.av, "(I[Ljava/lang/StackTraceElement;Ljava/util/List;)I", "Lkotlin/coroutines/Continuation;", TypedValues.AttributesType.S_FRAME, "(Lkotlin/coroutines/Continuation;Ljava/lang/String;)V", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Q", "(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;Ljava/lang/String;)V", "I", "(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "owner", "S", "(Lkotlinx/coroutines/debug/internal/DebugProbesImpl$a;Lkotlin/coroutines/Continuation;Ljava/lang/String;)V", "B", "(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/debug/internal/DebugProbesImpl$a;", "C", "(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Lkotlinx/coroutines/debug/internal/DebugProbesImpl$a;", "Lkotlinx/coroutines/debug/internal/h;", "O", "(Ljava/util/List;)Lkotlinx/coroutines/debug/internal/h;", "T", "completion", com.sdk.a.g.f56552a, "(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/debug/internal/h;)Lkotlin/coroutines/Continuation;", "E", "(Lkotlinx/coroutines/debug/internal/DebugProbesImpl$a;)V", "", "throwable", "J", "(Ljava/lang/Throwable;)Ljava/util/List;", "x", "P", "job", "w", "(Lkotlinx/coroutines/c2;)Ljava/lang/String;", "Lkotlinx/coroutines/debug/internal/b;", ai.aA, "()Ljava/util/List;", "Lkotlinx/coroutines/debug/internal/DebuggerInfo;", "l", "h", PapayPayDetialActivity_.f34856k, "m", "(Lkotlinx/coroutines/debug/internal/b;Ljava/util/List;)Ljava/util/List;", "G", "(Lkotlin/coroutines/Continuation;)V", "H", "F", "(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", net.lingala.zip4j.util.e.f73017f0, "getDebugString$annotations", "(Lkotlinx/coroutines/c2;)V", "debugString", ai.aB, "()Z", "isInstalled", "installations", "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;", "e", "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;", "capturedCoroutinesMap", "Z", ai.aE, "K", "(Z)V", "enableCreationStackTraces", "callerInfoCache", "b", "Ljava/lang/String;", "ARTIFICIAL_FRAME_MESSAGE", com.xinzhu.overmind.utils.helpers.d.f64708a, "Ljava/lang/Thread;", "weakRefCleanerThread", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "coroutineStateLock", "A", "(Ljava/lang/StackTraceElement;)Z", "isInternalMethod", "Lkotlin/jvm/functions/Function1;", "dynamicAttach", "Ljava/text/SimpleDateFormat;", ai.aD, "Ljava/text/SimpleDateFormat;", "dateFormat", "v", "L", "sanitizeStackTraces", "", "q", "()Ljava/util/Set;", "capturedCoroutines", "<init>", "a", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class DebugProbesImpl {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final DebugProbesImpl f71146a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final String f71147b = "Coroutine creation stacktrace";
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final SimpleDateFormat f71148c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static Thread f71149d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final ConcurrentWeakMap<a<?>, Boolean> f71150e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ d f71151f;

    /* renamed from: g  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f71152g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private static final ReentrantReadWriteLock f71153h;

    /* renamed from: i  reason: collision with root package name */
    private static boolean f71154i;
    private static volatile int installations;

    /* renamed from: j  reason: collision with root package name */
    private static boolean f71155j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static final Function1<Boolean, Unit> f71156k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private static final ConcurrentWeakMap<CoroutineStackFrame, DebugCoroutineInfoImpl> f71157l;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DebugProbesImpl.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00020\u0003B'\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u001d\u001a\u00020\u001a\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u001e\u0010\u001fJ\n\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J \u0010\t\u001a\u00020\b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0016ø\u0001\u0000¢\u0006\u0004\b\t\u0010\nJ\b\u0010\f\u001a\u00020\u000bH\u0016R\u001c\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u00138\u0016@\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001d\u001a\u00020\u001a8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006 "}, d2 = {"kotlinx/coroutines/debug/internal/DebugProbesImpl$a", "T", "Lkotlin/coroutines/Continuation;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Ljava/lang/StackTraceElement;", "getStackTraceElement", "Lkotlin/Result;", "result", "", "resumeWith", "(Ljava/lang/Object;)V", "", "toString", "a", "Lkotlin/coroutines/Continuation;", "delegate", ai.aD, "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", TypedValues.AttributesType.S_FRAME, "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;", "b", "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;", PapayPayDetialActivity_.f34856k, "<init>", "(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a<T> implements Continuation<T>, CoroutineStackFrame {
        @JvmField
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final Continuation<T> f71158a;
        @JvmField
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public final DebugCoroutineInfoImpl f71159b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final CoroutineStackFrame f71160c;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@NotNull Continuation<? super T> continuation, @NotNull DebugCoroutineInfoImpl debugCoroutineInfoImpl, @Nullable CoroutineStackFrame coroutineStackFrame) {
            this.f71158a = continuation;
            this.f71159b = debugCoroutineInfoImpl;
            this.f71160c = coroutineStackFrame;
        }

        @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
        @Nullable
        public CoroutineStackFrame getCallerFrame() {
            CoroutineStackFrame coroutineStackFrame = this.f71160c;
            if (coroutineStackFrame == null) {
                return null;
            }
            return coroutineStackFrame.getCallerFrame();
        }

        @Override // kotlin.coroutines.Continuation
        @NotNull
        public CoroutineContext getContext() {
            return this.f71158a.getContext();
        }

        @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
        @Nullable
        public StackTraceElement getStackTraceElement() {
            CoroutineStackFrame coroutineStackFrame = this.f71160c;
            if (coroutineStackFrame == null) {
                return null;
            }
            return coroutineStackFrame.getStackTraceElement();
        }

        @Override // kotlin.coroutines.Continuation
        public void resumeWith(@NotNull Object obj) {
            DebugProbesImpl.f71146a.E(this);
            this.f71158a.resumeWith(obj);
        }

        @NotNull
        public String toString() {
            return this.f71158a.toString();
        }
    }

    /* compiled from: Comparisons.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u00002\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00018\u00008\u00002\u000e\u0010\u0003\u001a\n \u0001*\u0004\u0018\u00018\u00008\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"T", "kotlin.jvm.PlatformType", "a", "b", "", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class b<T> implements Comparator<T> {
        @Override // java.util.Comparator
        public final int compare(T t3, T t4) {
            int compareValues;
            compareValues = ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(((a) t3).f71159b.f71131b), Long.valueOf(((a) t4).f71159b.f71131b));
            return compareValues;
        }
    }

    /* compiled from: Comparisons.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u00002\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00018\u00008\u00002\u000e\u0010\u0003\u001a\n \u0001*\u0004\u0018\u00018\u00008\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"T", "kotlin.jvm.PlatformType", "a", "b", "", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class c<T> implements Comparator<T> {
        @Override // java.util.Comparator
        public final int compare(T t3, T t4) {
            int compareValues;
            compareValues = ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(((a) t3).f71159b.f71131b), Long.valueOf(((a) t4).f71159b.f71131b));
            return compareValues;
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [kotlinx.coroutines.debug.internal.d] */
    static {
        DebugProbesImpl debugProbesImpl = new DebugProbesImpl();
        f71146a = debugProbesImpl;
        f71148c = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        f71150e = new ConcurrentWeakMap<>(false, 1, null);
        f71151f = new Object(0L) { // from class: kotlinx.coroutines.debug.internal.d
            volatile long sequenceNumber;

            {
                this.sequenceNumber = r1;
            }
        };
        f71153h = new ReentrantReadWriteLock();
        f71154i = true;
        f71155j = true;
        f71156k = debugProbesImpl.t();
        f71157l = new ConcurrentWeakMap<>(true);
        f71152g = AtomicLongFieldUpdater.newUpdater(d.class, "sequenceNumber");
    }

    private DebugProbesImpl() {
    }

    private final boolean A(StackTraceElement stackTraceElement) {
        boolean startsWith$default;
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(stackTraceElement.getClassName(), "kotlinx.coroutines", false, 2, null);
        return startsWith$default;
    }

    private final a<?> B(Continuation<?> continuation) {
        CoroutineStackFrame coroutineStackFrame = continuation instanceof CoroutineStackFrame ? (CoroutineStackFrame) continuation : null;
        if (coroutineStackFrame == null) {
            return null;
        }
        return C(coroutineStackFrame);
    }

    private final a<?> C(CoroutineStackFrame coroutineStackFrame) {
        while (!(coroutineStackFrame instanceof a)) {
            coroutineStackFrame = coroutineStackFrame.getCallerFrame();
            if (coroutineStackFrame == null) {
                return null;
            }
        }
        return (a) coroutineStackFrame;
    }

    private final void D(PrintStream printStream, List<StackTraceElement> list) {
        for (StackTraceElement stackTraceElement : list) {
            printStream.print(Intrinsics.stringPlus("\n\tat ", stackTraceElement));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E(a<?> aVar) {
        f71150e.remove(aVar);
        CoroutineStackFrame e4 = aVar.f71159b.e();
        CoroutineStackFrame I = e4 == null ? null : I(e4);
        if (I == null) {
            return;
        }
        f71157l.remove(I);
    }

    private final CoroutineStackFrame I(CoroutineStackFrame coroutineStackFrame) {
        do {
            coroutineStackFrame = coroutineStackFrame.getCallerFrame();
            if (coroutineStackFrame == null) {
                return null;
            }
        } while (coroutineStackFrame.getStackTraceElement() == null);
        return coroutineStackFrame;
    }

    private final <T extends Throwable> List<StackTraceElement> J(T t3) {
        StackTraceElement[] stackTrace = t3.getStackTrace();
        int length = stackTrace.length;
        int i2 = -1;
        int length2 = stackTrace.length - 1;
        while (true) {
            if (length2 < 0) {
                break;
            } else if (Intrinsics.areEqual(stackTrace[length2].getClassName(), "kotlin.coroutines.jvm.internal.DebugProbesKt")) {
                i2 = length2;
                break;
            } else {
                length2--;
            }
        }
        if (!f71154i) {
            int i4 = length - i2;
            ArrayList arrayList = new ArrayList(i4);
            int i5 = 0;
            while (i5 < i4) {
                arrayList.add(i5 == 0 ? h0.d(f71147b) : stackTrace[i5 + i2]);
                i5++;
            }
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList((length - i2) + 1);
        arrayList2.add(h0.d(f71147b));
        while (true) {
            i2++;
            while (i2 < length) {
                if (A(stackTrace[i2])) {
                    arrayList2.add(stackTrace[i2]);
                    int i6 = i2 + 1;
                    while (i6 < length && A(stackTrace[i6])) {
                        i6++;
                    }
                    int i7 = i6 - 1;
                    int i8 = i7;
                    while (i8 > i2 && stackTrace[i8].getFileName() == null) {
                        i8--;
                    }
                    if (i8 > i2 && i8 < i7) {
                        arrayList2.add(stackTrace[i8]);
                    }
                    arrayList2.add(stackTrace[i7]);
                    i2 = i6;
                }
            }
            return arrayList2;
            arrayList2.add(stackTrace[i2]);
        }
    }

    private final void M() {
        Thread thread;
        thread = ThreadsKt.thread((r12 & 1) != 0, (r12 & 2) != 0 ? false : true, (r12 & 4) != 0 ? null : null, (r12 & 8) != 0 ? null : "Coroutines Debugger Cleaner", (r12 & 16) != 0 ? -1 : 0, new Function0<Unit>() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$startWeakRefCleanerThread$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                ConcurrentWeakMap concurrentWeakMap;
                concurrentWeakMap = DebugProbesImpl.f71157l;
                concurrentWeakMap.f();
            }
        });
        f71149d = thread;
    }

    private final void N() {
        Thread thread = f71149d;
        if (thread != null) {
            thread.interrupt();
        }
        f71149d = null;
    }

    private final h O(List<StackTraceElement> list) {
        h hVar = null;
        if (!list.isEmpty()) {
            ListIterator<StackTraceElement> listIterator = list.listIterator(list.size());
            while (listIterator.hasPrevious()) {
                hVar = new h(hVar, listIterator.previous());
            }
        }
        return hVar;
    }

    private final void Q(CoroutineStackFrame coroutineStackFrame, String str) {
        ReentrantReadWriteLock.ReadLock readLock = f71153h.readLock();
        readLock.lock();
        try {
            DebugProbesImpl debugProbesImpl = f71146a;
            if (debugProbesImpl.z()) {
                ConcurrentWeakMap<CoroutineStackFrame, DebugCoroutineInfoImpl> concurrentWeakMap = f71157l;
                DebugCoroutineInfoImpl remove = concurrentWeakMap.remove(coroutineStackFrame);
                if (remove == null) {
                    a<?> C = debugProbesImpl.C(coroutineStackFrame);
                    if (C == null) {
                        return;
                    }
                    remove = C.f71159b;
                    CoroutineStackFrame e4 = remove.e();
                    CoroutineStackFrame I = e4 == null ? null : debugProbesImpl.I(e4);
                    if (I != null) {
                        concurrentWeakMap.remove(I);
                    }
                }
                remove.i(str, (Continuation) coroutineStackFrame);
                CoroutineStackFrame I2 = debugProbesImpl.I(coroutineStackFrame);
                if (I2 == null) {
                    return;
                }
                concurrentWeakMap.put(I2, remove);
                Unit unit = Unit.INSTANCE;
            }
        } finally {
            readLock.unlock();
        }
    }

    private final void R(Continuation<?> continuation, String str) {
        if (z()) {
            if (Intrinsics.areEqual(str, kotlinx.coroutines.debug.internal.c.f71185b) && KotlinVersion.CURRENT.isAtLeast(1, 3, 30)) {
                CoroutineStackFrame coroutineStackFrame = continuation instanceof CoroutineStackFrame ? (CoroutineStackFrame) continuation : null;
                if (coroutineStackFrame == null) {
                    return;
                }
                Q(coroutineStackFrame, str);
                return;
            }
            a<?> B = B(continuation);
            if (B == null) {
                return;
            }
            S(B, continuation, str);
        }
    }

    private final void S(a<?> aVar, Continuation<?> continuation, String str) {
        ReentrantReadWriteLock.ReadLock readLock = f71153h.readLock();
        readLock.lock();
        try {
            if (f71146a.z()) {
                aVar.f71159b.i(str, continuation);
                Unit unit = Unit.INSTANCE;
            }
        } finally {
            readLock.unlock();
        }
    }

    private final void f(c2 c2Var, Map<c2, DebugCoroutineInfoImpl> map, StringBuilder sb, String str) {
        DebugCoroutineInfoImpl debugCoroutineInfoImpl = map.get(c2Var);
        if (debugCoroutineInfoImpl == null) {
            if (!(c2Var instanceof e0)) {
                sb.append(str + r(c2Var) + '\n');
                str = Intrinsics.stringPlus(str, "\t");
            }
        } else {
            String f4 = debugCoroutineInfoImpl.f();
            sb.append(str + r(c2Var) + ", continuation is " + f4 + " at line " + ((StackTraceElement) CollectionsKt.firstOrNull((List<? extends Object>) debugCoroutineInfoImpl.g())) + '\n');
            str = Intrinsics.stringPlus(str, "\t");
        }
        for (c2 c2Var2 : c2Var.h()) {
            f(c2Var2, map, sb, str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final <T> Continuation<T> g(Continuation<? super T> continuation, h hVar) {
        if (z()) {
            a<?> aVar = new a<>(continuation, new DebugCoroutineInfoImpl(continuation.getContext(), hVar, f71152g.incrementAndGet(f71151f)), hVar);
            ConcurrentWeakMap<a<?>, Boolean> concurrentWeakMap = f71150e;
            concurrentWeakMap.put(aVar, Boolean.TRUE);
            if (!z()) {
                concurrentWeakMap.clear();
            }
            return aVar;
        }
        return continuation;
    }

    private final <R> List<R> j(Function2<? super a<?>, ? super CoroutineContext, ? extends R> function2) {
        List<a> sortedWith;
        CoroutineContext context;
        ReentrantReadWriteLock reentrantReadWriteLock = f71153h;
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        int i2 = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i4 = 0; i4 < readHoldCount; i4++) {
            readLock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            DebugProbesImpl debugProbesImpl = f71146a;
            if (debugProbesImpl.z()) {
                sortedWith = CollectionsKt___CollectionsKt.sortedWith(debugProbesImpl.q(), new b());
                ArrayList arrayList = new ArrayList();
                for (a aVar : sortedWith) {
                    R r3 = null;
                    if (!f71146a.y(aVar) && (context = aVar.f71159b.getContext()) != null) {
                        r3 = function2.invoke(aVar, context);
                    }
                    if (r3 != null) {
                        arrayList.add(r3);
                    }
                }
                return arrayList;
            }
            throw new IllegalStateException("Debug probes are not installed".toString());
        } finally {
            InlineMarker.finallyStart(1);
            while (i2 < readHoldCount) {
                readLock.lock();
                i2++;
            }
            writeLock.unlock();
            InlineMarker.finallyEnd(1);
        }
    }

    private final void k(PrintStream printStream) {
        Sequence asSequence;
        Sequence filter;
        Sequence<a> sortedWith;
        String f4;
        ReentrantReadWriteLock reentrantReadWriteLock = f71153h;
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        int i2 = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i4 = 0; i4 < readHoldCount; i4++) {
            readLock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            DebugProbesImpl debugProbesImpl = f71146a;
            if (debugProbesImpl.z()) {
                printStream.print(Intrinsics.stringPlus("Coroutines dump ", f71148c.format(Long.valueOf(System.currentTimeMillis()))));
                asSequence = CollectionsKt___CollectionsKt.asSequence(debugProbesImpl.q());
                filter = SequencesKt___SequencesKt.filter(asSequence, new Function1<a<?>, Boolean>() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$dumpCoroutinesSynchronized$1$2
                    public final boolean a(@NotNull DebugProbesImpl.a<?> aVar) {
                        return !DebugProbesImpl.f71146a.y(aVar);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Boolean invoke(DebugProbesImpl.a<?> aVar) {
                        return Boolean.valueOf(a(aVar));
                    }
                });
                sortedWith = SequencesKt___SequencesKt.sortedWith(filter, new c());
                for (a aVar : sortedWith) {
                    DebugCoroutineInfoImpl debugCoroutineInfoImpl = aVar.f71159b;
                    List<StackTraceElement> g4 = debugCoroutineInfoImpl.g();
                    DebugProbesImpl debugProbesImpl2 = f71146a;
                    List<StackTraceElement> n4 = debugProbesImpl2.n(debugCoroutineInfoImpl.f(), debugCoroutineInfoImpl.f71134e, g4);
                    if (Intrinsics.areEqual(debugCoroutineInfoImpl.f(), kotlinx.coroutines.debug.internal.c.f71185b) && n4 == g4) {
                        f4 = Intrinsics.stringPlus(debugCoroutineInfoImpl.f(), " (Last suspension stacktrace, not an actual stacktrace)");
                    } else {
                        f4 = debugCoroutineInfoImpl.f();
                    }
                    printStream.print("\n\nCoroutine " + aVar.f71158a + ", state: " + f4);
                    if (g4.isEmpty()) {
                        printStream.print(Intrinsics.stringPlus("\n\tat ", h0.d(f71147b)));
                        debugProbesImpl2.D(printStream, debugCoroutineInfoImpl.d());
                    } else {
                        debugProbesImpl2.D(printStream, n4);
                    }
                }
                Unit unit = Unit.INSTANCE;
                return;
            }
            throw new IllegalStateException("Debug probes are not installed".toString());
        } finally {
            while (i2 < readHoldCount) {
                readLock.lock();
                i2++;
            }
            writeLock.unlock();
        }
    }

    private final List<StackTraceElement> n(String str, Thread thread, List<StackTraceElement> list) {
        Object m24constructorimpl;
        if (!Intrinsics.areEqual(str, kotlinx.coroutines.debug.internal.c.f71185b) || thread == null) {
            return list;
        }
        try {
            Result.Companion companion = Result.Companion;
            m24constructorimpl = Result.m24constructorimpl(thread.getStackTrace());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m24constructorimpl = Result.m24constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m30isFailureimpl(m24constructorimpl)) {
            m24constructorimpl = null;
        }
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) m24constructorimpl;
        if (stackTraceElementArr == null) {
            return list;
        }
        int length = stackTraceElementArr.length;
        int i2 = 0;
        int i4 = 0;
        while (true) {
            if (i4 >= length) {
                i4 = -1;
                break;
            }
            StackTraceElement stackTraceElement = stackTraceElementArr[i4];
            if (Intrinsics.areEqual(stackTraceElement.getClassName(), "kotlin.coroutines.jvm.internal.BaseContinuationImpl") && Intrinsics.areEqual(stackTraceElement.getMethodName(), "resumeWith") && Intrinsics.areEqual(stackTraceElement.getFileName(), "ContinuationImpl.kt")) {
                break;
            }
            i4++;
        }
        Pair<Integer, Integer> o3 = o(i4, stackTraceElementArr, list);
        int intValue = o3.component1().intValue();
        int intValue2 = o3.component2().intValue();
        if (intValue == -1) {
            return list;
        }
        ArrayList arrayList = new ArrayList((((list.size() + i4) - intValue) - 1) - intValue2);
        int i5 = i4 - intValue2;
        if (i5 > 0) {
            while (true) {
                int i6 = i2 + 1;
                arrayList.add(stackTraceElementArr[i2]);
                if (i6 >= i5) {
                    break;
                }
                i2 = i6;
            }
        }
        int i7 = intValue + 1;
        int size = list.size();
        if (i7 < size) {
            while (true) {
                int i8 = i7 + 1;
                arrayList.add(list.get(i7));
                if (i8 >= size) {
                    break;
                }
                i7 = i8;
            }
        }
        return arrayList;
    }

    private final Pair<Integer, Integer> o(int i2, StackTraceElement[] stackTraceElementArr, List<StackTraceElement> list) {
        for (int i4 = 0; i4 < 3; i4++) {
            int p3 = f71146a.p((i2 - 1) - i4, stackTraceElementArr, list);
            if (p3 != -1) {
                return TuplesKt.to(Integer.valueOf(p3), Integer.valueOf(i4));
            }
        }
        return TuplesKt.to(-1, 0);
    }

    private final int p(int i2, StackTraceElement[] stackTraceElementArr, List<StackTraceElement> list) {
        StackTraceElement stackTraceElement = (StackTraceElement) ArraysKt.getOrNull(stackTraceElementArr, i2);
        if (stackTraceElement == null) {
            return -1;
        }
        int i4 = 0;
        for (StackTraceElement stackTraceElement2 : list) {
            if (Intrinsics.areEqual(stackTraceElement2.getFileName(), stackTraceElement.getFileName()) && Intrinsics.areEqual(stackTraceElement2.getClassName(), stackTraceElement.getClassName()) && Intrinsics.areEqual(stackTraceElement2.getMethodName(), stackTraceElement.getMethodName())) {
                return i4;
            }
            i4++;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Set<a<?>> q() {
        return f71150e.keySet();
    }

    private final String r(c2 c2Var) {
        return c2Var instanceof JobSupport ? ((JobSupport) c2Var).j1() : c2Var.toString();
    }

    private static /* synthetic */ void s(c2 c2Var) {
    }

    private final Function1<Boolean, Unit> t() {
        Object m24constructorimpl;
        Object newInstance;
        try {
            Result.Companion companion = Result.Companion;
            newInstance = Class.forName("kotlinx.coroutines.debug.internal.ByteBuddyDynamicAttach").getConstructors()[0].newInstance(new Object[0]);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m24constructorimpl = Result.m24constructorimpl(ResultKt.createFailure(th));
        }
        if (newInstance != null) {
            m24constructorimpl = Result.m24constructorimpl((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(newInstance, 1));
            if (Result.m30isFailureimpl(m24constructorimpl)) {
                m24constructorimpl = null;
            }
            return (Function1) m24constructorimpl;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Function1<kotlin.Boolean, kotlin.Unit>");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean y(a<?> aVar) {
        CoroutineContext context = aVar.f71159b.getContext();
        c2 c2Var = context == null ? null : (c2) context.get(c2.Q);
        if (c2Var != null && c2Var.isCompleted()) {
            f71150e.remove(aVar);
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final <T> Continuation<T> F(@NotNull Continuation<? super T> continuation) {
        if (z() && B(continuation) == null) {
            return g(continuation, f71155j ? O(J(new Exception())) : null);
        }
        return continuation;
    }

    public final void G(@NotNull Continuation<?> continuation) {
        R(continuation, kotlinx.coroutines.debug.internal.c.f71185b);
    }

    public final void H(@NotNull Continuation<?> continuation) {
        R(continuation, kotlinx.coroutines.debug.internal.c.f71186c);
    }

    public final void K(boolean z3) {
        f71155j = z3;
    }

    public final void L(boolean z3) {
        f71154i = z3;
    }

    public final void P() {
        ReentrantReadWriteLock reentrantReadWriteLock = f71153h;
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        int i2 = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i4 = 0; i4 < readHoldCount; i4++) {
            readLock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            DebugProbesImpl debugProbesImpl = f71146a;
            if (debugProbesImpl.z()) {
                installations--;
                if (installations != 0) {
                    return;
                }
                debugProbesImpl.N();
                f71150e.clear();
                f71157l.clear();
                if (kotlinx.coroutines.debug.b.f71106a.d()) {
                    while (i2 < readHoldCount) {
                        readLock.lock();
                        i2++;
                    }
                    writeLock.unlock();
                    return;
                }
                Function1<Boolean, Unit> function1 = f71156k;
                if (function1 != null) {
                    function1.invoke(Boolean.FALSE);
                }
                Unit unit = Unit.INSTANCE;
                while (i2 < readHoldCount) {
                    readLock.lock();
                    i2++;
                }
                writeLock.unlock();
                return;
            }
            throw new IllegalStateException("Agent was not installed".toString());
        } finally {
            while (i2 < readHoldCount) {
                readLock.lock();
                i2++;
            }
            writeLock.unlock();
        }
    }

    public final void h(@NotNull PrintStream printStream) {
        synchronized (printStream) {
            f71146a.k(printStream);
            Unit unit = Unit.INSTANCE;
        }
    }

    @NotNull
    public final List<kotlinx.coroutines.debug.internal.b> i() {
        List<a> sortedWith;
        CoroutineContext context;
        ReentrantReadWriteLock reentrantReadWriteLock = f71153h;
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        int i2 = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i4 = 0; i4 < readHoldCount; i4++) {
            readLock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            DebugProbesImpl debugProbesImpl = f71146a;
            if (debugProbesImpl.z()) {
                sortedWith = CollectionsKt___CollectionsKt.sortedWith(debugProbesImpl.q(), new b());
                ArrayList arrayList = new ArrayList();
                for (a aVar : sortedWith) {
                    kotlinx.coroutines.debug.internal.b bVar = null;
                    if (!f71146a.y(aVar) && (context = aVar.f71159b.getContext()) != null) {
                        bVar = new kotlinx.coroutines.debug.internal.b(aVar.f71159b, context);
                    }
                    if (bVar != null) {
                        arrayList.add(bVar);
                    }
                }
                return arrayList;
            }
            throw new IllegalStateException("Debug probes are not installed".toString());
        } finally {
            while (i2 < readHoldCount) {
                readLock.lock();
                i2++;
            }
            writeLock.unlock();
        }
    }

    @NotNull
    public final List<DebuggerInfo> l() {
        List<a> sortedWith;
        CoroutineContext context;
        ReentrantReadWriteLock reentrantReadWriteLock = f71153h;
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        int i2 = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i4 = 0; i4 < readHoldCount; i4++) {
            readLock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            DebugProbesImpl debugProbesImpl = f71146a;
            if (debugProbesImpl.z()) {
                sortedWith = CollectionsKt___CollectionsKt.sortedWith(debugProbesImpl.q(), new b());
                ArrayList arrayList = new ArrayList();
                for (a aVar : sortedWith) {
                    DebuggerInfo debuggerInfo = null;
                    if (!f71146a.y(aVar) && (context = aVar.f71159b.getContext()) != null) {
                        debuggerInfo = new DebuggerInfo(aVar.f71159b, context);
                    }
                    if (debuggerInfo != null) {
                        arrayList.add(debuggerInfo);
                    }
                }
                return arrayList;
            }
            throw new IllegalStateException("Debug probes are not installed".toString());
        } finally {
            while (i2 < readHoldCount) {
                readLock.lock();
                i2++;
            }
            writeLock.unlock();
        }
    }

    @NotNull
    public final List<StackTraceElement> m(@NotNull kotlinx.coroutines.debug.internal.b bVar, @NotNull List<StackTraceElement> list) {
        return n(bVar.f(), bVar.d(), list);
    }

    public final boolean u() {
        return f71155j;
    }

    public final boolean v() {
        return f71154i;
    }

    @NotNull
    public final String w(@NotNull c2 c2Var) {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        ReentrantReadWriteLock reentrantReadWriteLock = f71153h;
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        int i2 = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i4 = 0; i4 < readHoldCount; i4++) {
            readLock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            DebugProbesImpl debugProbesImpl = f71146a;
            if (debugProbesImpl.z()) {
                Set<a<?>> q3 = debugProbesImpl.q();
                ArrayList arrayList = new ArrayList();
                for (Object obj : q3) {
                    if (((a) obj).f71158a.getContext().get(c2.Q) != null) {
                        arrayList.add(obj);
                    }
                }
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
                mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
                coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
                LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
                for (Object obj2 : arrayList) {
                    linkedHashMap.put(f2.C(((a) obj2).f71158a.getContext()), ((a) obj2).f71159b);
                }
                StringBuilder sb = new StringBuilder();
                f71146a.f(c2Var, linkedHashMap, sb, "");
                String sb2 = sb.toString();
                Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
                return sb2;
            }
            throw new IllegalStateException("Debug probes are not installed".toString());
        } finally {
            while (i2 < readHoldCount) {
                readLock.lock();
                i2++;
            }
            writeLock.unlock();
        }
    }

    public final void x() {
        ReentrantReadWriteLock reentrantReadWriteLock = f71153h;
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        int i2 = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i4 = 0; i4 < readHoldCount; i4++) {
            readLock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            DebugProbesImpl debugProbesImpl = f71146a;
            installations++;
            if (installations > 1) {
                return;
            }
            debugProbesImpl.M();
            if (kotlinx.coroutines.debug.b.f71106a.d()) {
                while (i2 < readHoldCount) {
                    readLock.lock();
                    i2++;
                }
                writeLock.unlock();
                return;
            }
            Function1<Boolean, Unit> function1 = f71156k;
            if (function1 != null) {
                function1.invoke(Boolean.TRUE);
            }
            Unit unit = Unit.INSTANCE;
            while (i2 < readHoldCount) {
                readLock.lock();
                i2++;
            }
            writeLock.unlock();
        } finally {
            while (i2 < readHoldCount) {
                readLock.lock();
                i2++;
            }
            writeLock.unlock();
        }
    }

    public final boolean z() {
        return installations > 0;
    }
}
