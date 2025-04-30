package kotlinx.coroutines;

import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.umeng.analytics.pro.ai;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequenceBuilderKt;
import kotlinx.coroutines.c2;
import kotlinx.coroutines.internal.s;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: JobSupport.kt */
@Deprecated(level = DeprecationLevel.ERROR, message = "This is internal API and may be removed in the future releases")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000Ü\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0010\u0003\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u001e\b\u0017\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0004~zÍ\u0001B\u0012\u0012\u0007\u0010Ê\u0001\u001a\u00020\u001b¢\u0006\u0006\bË\u0001\u0010Ì\u0001J&\u0010\n\u001a\u00020\t2\u0014\u0010\b\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0005H\u0082\b¢\u0006\u0004\b\n\u0010\u000bJ#\u0010\u000f\u001a\u0004\u0018\u00010\u00062\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J'\u0010\u0014\u001a\u0004\u0018\u00010\u00122\u0006\u0010\r\u001a\u00020\f2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J%\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J!\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\r\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ!\u0010\u001e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u001f\u0010#\u001a\u00020\u00072\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u0012H\u0002¢\u0006\u0004\b#\u0010$J\u0017\u0010%\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\u0012H\u0002¢\u0006\u0004\b%\u0010&J\u001d\u0010'\u001a\u00020\u0007*\u00020 2\b\u0010\"\u001a\u0004\u0018\u00010\u0012H\u0002¢\u0006\u0004\b'\u0010$J.\u0010*\u001a\u00020\u0007\"\n\b\u0000\u0010)\u0018\u0001*\u00020(2\u0006\u0010!\u001a\u00020 2\b\u0010\"\u001a\u0004\u0018\u00010\u0012H\u0082\b¢\u0006\u0004\b*\u0010$J\u0019\u0010,\u001a\u00020+2\b\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b,\u0010-J@\u00103\u001a\u00020(2'\u00101\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0012¢\u0006\f\b.\u0012\b\b/\u0012\u0004\b\b(\"\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`02\u0006\u00102\u001a\u00020\u001bH\u0002¢\u0006\u0004\b3\u00104J'\u00107\u001a\u00020\u001b2\u0006\u00105\u001a\u00020\u00062\u0006\u0010!\u001a\u00020 2\u0006\u00106\u001a\u00020(H\u0002¢\u0006\u0004\b7\u00108J\u0017\u0010:\u001a\u00020\u00072\u0006\u0010\r\u001a\u000209H\u0002¢\u0006\u0004\b:\u0010;J\u0017\u0010<\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020(H\u0002¢\u0006\u0004\b<\u0010=J\u000f\u0010>\u001a\u00020\u001bH\u0002¢\u0006\u0004\b>\u0010?J\u0013\u0010@\u001a\u00020\u0007H\u0082@ø\u0001\u0000¢\u0006\u0004\b@\u0010AJ\u001b\u0010B\u001a\u0004\u0018\u00010\u00062\b\u0010\"\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\bB\u0010CJ\u0019\u0010D\u001a\u00020\u00122\b\u0010\"\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\bD\u0010EJ\u001b\u0010F\u001a\u0004\u0018\u00010\u00062\b\u0010\"\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\bF\u0010CJ\u0019\u0010G\u001a\u0004\u0018\u00010 2\u0006\u0010\r\u001a\u00020\u0019H\u0002¢\u0006\u0004\bG\u0010HJ\u001f\u0010I\u001a\u00020\u001b2\u0006\u0010\r\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u0012H\u0002¢\u0006\u0004\bI\u0010JJ%\u0010K\u001a\u0004\u0018\u00010\u00062\b\u0010\r\u001a\u0004\u0018\u00010\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\bK\u0010LJ#\u0010M\u001a\u0004\u0018\u00010\u00062\u0006\u0010\r\u001a\u00020\u00192\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\bM\u0010NJ\u0019\u0010P\u001a\u0004\u0018\u00010O2\u0006\u0010\r\u001a\u00020\u0019H\u0002¢\u0006\u0004\bP\u0010QJ*\u0010S\u001a\u00020\u001b2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010R\u001a\u00020O2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0082\u0010¢\u0006\u0004\bS\u0010TJ)\u0010V\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\f2\u0006\u0010U\u001a\u00020O2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\bV\u0010WJ\u0015\u0010Y\u001a\u0004\u0018\u00010O*\u00020XH\u0002¢\u0006\u0004\bY\u0010ZJ\u0019\u0010\\\u001a\u00020[2\b\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\\\u0010]J\u0015\u0010^\u001a\u0004\u0018\u00010\u0006H\u0082@ø\u0001\u0000¢\u0006\u0004\b^\u0010AJ\u0019\u0010`\u001a\u00020\u00072\b\u0010_\u001a\u0004\u0018\u00010\u0001H\u0004¢\u0006\u0004\b`\u0010aJ\r\u0010b\u001a\u00020\u001b¢\u0006\u0004\bb\u0010?J\u000f\u0010c\u001a\u00020\u0007H\u0014¢\u0006\u0004\bc\u0010dJ\u0011\u0010g\u001a\u00060ej\u0002`f¢\u0006\u0004\bg\u0010hJ#\u0010j\u001a\u00060ej\u0002`f*\u00020\u00122\n\b\u0002\u0010i\u001a\u0004\u0018\u00010[H\u0004¢\u0006\u0004\bj\u0010kJ6\u0010m\u001a\u00020l2'\u00101\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0012¢\u0006\f\b.\u0012\b\b/\u0012\u0004\b\b(\"\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`0¢\u0006\u0004\bm\u0010nJF\u0010p\u001a\u00020l2\u0006\u00102\u001a\u00020\u001b2\u0006\u0010o\u001a\u00020\u001b2'\u00101\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0012¢\u0006\f\b.\u0012\b\b/\u0012\u0004\b\b(\"\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`0¢\u0006\u0004\bp\u0010qJ\u0013\u0010r\u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0004\br\u0010AJB\u0010w\u001a\u00020\u0007\"\u0004\b\u0000\u0010s2\f\u0010u\u001a\b\u0012\u0004\u0012\u00028\u00000t2\u001c\u0010\b\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000v\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005ø\u0001\u0000¢\u0006\u0004\bw\u0010xJ\u0017\u0010y\u001a\u00020\u00072\u0006\u00106\u001a\u00020(H\u0000¢\u0006\u0004\by\u0010=J\u001f\u0010z\u001a\u00020\u00072\u000e\u0010\"\u001a\n\u0018\u00010ej\u0004\u0018\u0001`fH\u0016¢\u0006\u0004\bz\u0010{J\u000f\u0010|\u001a\u00020[H\u0014¢\u0006\u0004\b|\u0010}J\u0019\u0010~\u001a\u00020\u001b2\b\u0010\"\u001a\u0004\u0018\u00010\u0012H\u0017¢\u0006\u0004\b~\u0010&J\u0018\u0010\u007f\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u0012H\u0016¢\u0006\u0005\b\u007f\u0010\u0080\u0001J\u0019\u0010\u0082\u0001\u001a\u00020\u00072\u0007\u0010\u0081\u0001\u001a\u00020\u0003¢\u0006\u0006\b\u0082\u0001\u0010\u0083\u0001J\u0019\u0010\u0084\u0001\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\u0012H\u0016¢\u0006\u0005\b\u0084\u0001\u0010&J\u0019\u0010\u0085\u0001\u001a\u00020\u001b2\b\u0010\"\u001a\u0004\u0018\u00010\u0012¢\u0006\u0005\b\u0085\u0001\u0010&J\u001c\u0010\u0086\u0001\u001a\u00020\u001b2\b\u0010\"\u001a\u0004\u0018\u00010\u0006H\u0000¢\u0006\u0006\b\u0086\u0001\u0010\u0087\u0001J,\u0010\u0089\u0001\u001a\u00030\u0088\u00012\n\b\u0002\u0010i\u001a\u0004\u0018\u00010[2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0012H\u0080\b¢\u0006\u0006\b\u0089\u0001\u0010\u008a\u0001J\u0015\u0010\u008b\u0001\u001a\u00060ej\u0002`fH\u0016¢\u0006\u0005\b\u008b\u0001\u0010hJ\u001c\u0010\u008c\u0001\u001a\u00020\u001b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0000¢\u0006\u0006\b\u008c\u0001\u0010\u0087\u0001J\u001d\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0000¢\u0006\u0005\b\u008d\u0001\u0010CJ\u0019\u0010\u008f\u0001\u001a\u00030\u008e\u00012\u0006\u0010R\u001a\u00020\u0002¢\u0006\u0006\b\u008f\u0001\u0010\u0090\u0001J\u001b\u0010\u0092\u0001\u001a\u00020\u00072\u0007\u0010\u0091\u0001\u001a\u00020\u0012H\u0010¢\u0006\u0006\b\u0092\u0001\u0010\u0080\u0001J\u001c\u0010\u0093\u0001\u001a\u00020\u00072\b\u0010\"\u001a\u0004\u0018\u00010\u0012H\u0014¢\u0006\u0006\b\u0093\u0001\u0010\u0080\u0001J\u001a\u0010\u0094\u0001\u001a\u00020\u001b2\u0007\u0010\u0091\u0001\u001a\u00020\u0012H\u0014¢\u0006\u0005\b\u0094\u0001\u0010&J\u001c\u0010\u0095\u0001\u001a\u00020\u00072\b\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0014¢\u0006\u0006\b\u0095\u0001\u0010\u0096\u0001J\u001c\u0010\u0097\u0001\u001a\u00020\u00072\b\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0014¢\u0006\u0006\b\u0097\u0001\u0010\u0096\u0001J\u0011\u0010\u0098\u0001\u001a\u00020[H\u0016¢\u0006\u0005\b\u0098\u0001\u0010}J\u0011\u0010\u0099\u0001\u001a\u00020[H\u0007¢\u0006\u0005\b\u0099\u0001\u0010}J\u0011\u0010\u009a\u0001\u001a\u00020[H\u0010¢\u0006\u0005\b\u009a\u0001\u0010}J\u0012\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u0012¢\u0006\u0006\b\u009b\u0001\u0010\u009c\u0001J\u0014\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u0006H\u0000¢\u0006\u0006\b\u009d\u0001\u0010\u009e\u0001J\u0017\u0010\u009f\u0001\u001a\u0004\u0018\u00010\u0006H\u0080@ø\u0001\u0000¢\u0006\u0005\b\u009f\u0001\u0010AJT\u0010¡\u0001\u001a\u00020\u0007\"\u0004\b\u0000\u0010)\"\u0004\b\u0001\u0010s2\f\u0010u\u001a\b\u0012\u0004\u0012\u00028\u00010t2#\u0010\b\u001a\u001f\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010v\u0012\u0006\u0012\u0004\u0018\u00010\u00060 \u0001H\u0000ø\u0001\u0000¢\u0006\u0006\b¡\u0001\u0010¢\u0001JT\u0010£\u0001\u001a\u00020\u0007\"\u0004\b\u0000\u0010)\"\u0004\b\u0001\u0010s2\f\u0010u\u001a\b\u0012\u0004\u0012\u00028\u00010t2#\u0010\b\u001a\u001f\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010v\u0012\u0006\u0012\u0004\u0018\u00010\u00060 \u0001H\u0000ø\u0001\u0000¢\u0006\u0006\b£\u0001\u0010¢\u0001R\u001b\u0010§\u0001\u001a\u0007\u0012\u0002\b\u00030¤\u00018F@\u0006¢\u0006\b\u001a\u0006\b¥\u0001\u0010¦\u0001R\u0015\u0010¨\u0001\u001a\u00020\u001b8F@\u0006¢\u0006\u0007\u001a\u0005\b¨\u0001\u0010?R\u0018\u0010ª\u0001\u001a\u00020\u001b8D@\u0004X\u0084\u0004¢\u0006\u0007\u001a\u0005\b©\u0001\u0010?R\u0018\u0010¬\u0001\u001a\u00020\u001b8P@\u0010X\u0090\u0004¢\u0006\u0007\u001a\u0005\b«\u0001\u0010?R\u001d\u0010¯\u0001\u001a\u00020\u001b*\u00020\u00198B@\u0002X\u0082\u0004¢\u0006\b\u001a\u0006\b\u00ad\u0001\u0010®\u0001R\u001d\u0010³\u0001\u001a\t\u0012\u0004\u0012\u00020\u00010°\u00018F@\u0006¢\u0006\b\u001a\u0006\b±\u0001\u0010²\u0001R\u0018\u0010µ\u0001\u001a\u00020\u001b8P@\u0010X\u0090\u0004¢\u0006\u0007\u001a\u0005\b´\u0001\u0010?R\u0016\u0010¸\u0001\u001a\u00020\u00048F@\u0006¢\u0006\b\u001a\u0006\b¶\u0001\u0010·\u0001R\u001a\u0010\r\u001a\u0004\u0018\u00010\u00068@@\u0000X\u0080\u0004¢\u0006\b\u001a\u0006\b¹\u0001\u0010\u009e\u0001R\u001b\u0010»\u0001\u001a\u0004\u0018\u00010\u00128D@\u0004X\u0084\u0004¢\u0006\b\u001a\u0006\bº\u0001\u0010\u009c\u0001R\u0015\u0010¼\u0001\u001a\u00020\u001b8F@\u0006¢\u0006\u0007\u001a\u0005\b¼\u0001\u0010?R \u0010¾\u0001\u001a\u0004\u0018\u00010\u0012*\u0004\u0018\u00010\u00068B@\u0002X\u0082\u0004¢\u0006\u0007\u001a\u0005\b½\u0001\u0010ER0\u0010Ä\u0001\u001a\u0005\u0018\u00010\u008e\u00012\n\u0010¿\u0001\u001a\u0005\u0018\u00010\u008e\u00018@@@X\u0080\u000e¢\u0006\u0010\u001a\u0006\bÀ\u0001\u0010Á\u0001\"\u0006\bÂ\u0001\u0010Ã\u0001R\u0018\u0010Å\u0001\u001a\u00020\u001b8V@\u0016X\u0096\u0004¢\u0006\u0007\u001a\u0005\bÅ\u0001\u0010?R\u0018\u0010Ç\u0001\u001a\u00020\u001b8T@\u0014X\u0094\u0004¢\u0006\u0007\u001a\u0005\bÆ\u0001\u0010?R\u0015\u0010É\u0001\u001a\u00020\u001b8F@\u0006¢\u0006\u0007\u001a\u0005\bÈ\u0001\u0010?\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006Î\u0001"}, d2 = {"Lkotlinx/coroutines/JobSupport;", "Lkotlinx/coroutines/c2;", "Lkotlinx/coroutines/x;", "Lkotlinx/coroutines/r2;", "Lkotlinx/coroutines/selects/c;", "Lkotlin/Function1;", "", "", "block", "", "M0", "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Void;", "Lkotlinx/coroutines/JobSupport$c;", NoticeTopAnimActivityDialog_.f34402n, "proposedUpdate", "s0", "(Lkotlinx/coroutines/JobSupport$c;Ljava/lang/Object;)Ljava/lang/Object;", "", "", "exceptions", "y0", "(Lkotlinx/coroutines/JobSupport$c;Ljava/util/List;)Ljava/lang/Throwable;", "rootCause", "b0", "(Ljava/lang/Throwable;Ljava/util/List;)V", "Lkotlinx/coroutines/x1;", "update", "", "k1", "(Lkotlinx/coroutines/x1;Ljava/lang/Object;)Z", "n0", "(Lkotlinx/coroutines/x1;Ljava/lang/Object;)V", "Lkotlinx/coroutines/n2;", "list", "cause", "T0", "(Lkotlinx/coroutines/n2;Ljava/lang/Throwable;)V", "k0", "(Ljava/lang/Throwable;)Z", "U0", "Lkotlinx/coroutines/i2;", "T", "V0", "", "f1", "(Ljava/lang/Object;)I", "Lkotlin/ParameterName;", "name", "Lkotlinx/coroutines/CompletionHandler;", "handler", "onCancelling", "Q0", "(Lkotlin/jvm/functions/Function1;Z)Lkotlinx/coroutines/i2;", "expect", "node", "a0", "(Ljava/lang/Object;Lkotlinx/coroutines/n2;Lkotlinx/coroutines/i2;)Z", "Lkotlinx/coroutines/m1;", "Z0", "(Lkotlinx/coroutines/m1;)V", "a1", "(Lkotlinx/coroutines/i2;)V", "K0", "()Z", "L0", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "j0", "(Ljava/lang/Object;)Ljava/lang/Object;", "p0", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "N0", "B0", "(Lkotlinx/coroutines/x1;)Lkotlinx/coroutines/n2;", "l1", "(Lkotlinx/coroutines/x1;Ljava/lang/Throwable;)Z", "m1", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "n1", "(Lkotlinx/coroutines/x1;Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/w;", "t0", "(Lkotlinx/coroutines/x1;)Lkotlinx/coroutines/w;", "child", "o1", "(Lkotlinx/coroutines/JobSupport$c;Lkotlinx/coroutines/w;Ljava/lang/Object;)Z", "lastChild", "o0", "(Lkotlinx/coroutines/JobSupport$c;Lkotlinx/coroutines/w;Ljava/lang/Object;)V", "Lkotlinx/coroutines/internal/s;", "S0", "(Lkotlinx/coroutines/internal/s;)Lkotlinx/coroutines/w;", "", "g1", "(Ljava/lang/Object;)Ljava/lang/String;", "f0", "parent", "G0", "(Lkotlinx/coroutines/c2;)V", "start", "Y0", "()V", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "m", "()Ljava/util/concurrent/CancellationException;", "message", "h1", "(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/j1;", ai.aE, "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/j1;", "invokeImmediately", "k", "(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/j1;", "E", "R", "Lkotlinx/coroutines/selects/f;", "select", "Lkotlin/coroutines/Continuation;", "j", "(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function1;)V", "c1", "b", "(Ljava/util/concurrent/CancellationException;)V", "l0", "()Ljava/lang/String;", "a", "i0", "(Ljava/lang/Throwable;)V", "parentJob", "o", "(Lkotlinx/coroutines/r2;)V", "m0", "g0", "h0", "(Ljava/lang/Object;)Z", "Lkotlinx/coroutines/JobCancellationException;", "q0", "(Ljava/lang/String;Ljava/lang/Throwable;)Lkotlinx/coroutines/JobCancellationException;", "A", "O0", "P0", "Lkotlinx/coroutines/v;", "U", "(Lkotlinx/coroutines/x;)Lkotlinx/coroutines/v;", "exception", "F0", "W0", "E0", "X0", "(Ljava/lang/Object;)V", "c0", "toString", "j1", "R0", ai.aA, "()Ljava/lang/Throwable;", "u0", "()Ljava/lang/Object;", "d0", "Lkotlin/Function2;", "b1", "(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function2;)V", "d1", "Lkotlin/coroutines/CoroutineContext$Key;", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "key", "isCompleted", "w0", "completionCauseHandled", "z0", "handlesException", "H0", "(Lkotlinx/coroutines/x1;)Z", "isCancelling", "Lkotlin/sequences/Sequence;", "h", "()Lkotlin/sequences/Sequence;", "children", "A0", "onCancelComplete", "Q", "()Lkotlinx/coroutines/selects/c;", "onJoin", "D0", "v0", "completionCause", "isCancelled", "x0", "exceptionOrNull", "value", "C0", "()Lkotlinx/coroutines/v;", "e1", "(Lkotlinx/coroutines/v;)V", "parentHandle", "isActive", "J0", "isScopedCoroutine", "I0", "isCompletedExceptionally", "active", "<init>", "(Z)V", ai.aD, "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public class JobSupport implements c2, x, r2, kotlinx.coroutines.selects.c {

    /* renamed from: a  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f70722a = AtomicReferenceFieldUpdater.newUpdater(JobSupport.class, Object.class, "_state");
    @NotNull
    private volatile /* synthetic */ Object _parentHandle;
    @NotNull
    private volatile /* synthetic */ Object _state;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JobSupport.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001d\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\r\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0014R\u0016\u0010\f\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u0011"}, d2 = {"kotlinx/coroutines/JobSupport$a", "T", "Lkotlinx/coroutines/q;", "Lkotlinx/coroutines/c2;", "parent", "", "w", "", "F", "Lkotlinx/coroutines/JobSupport;", ai.aA, "Lkotlinx/coroutines/JobSupport;", "job", "Lkotlin/coroutines/Continuation;", "delegate", "<init>", "(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/JobSupport;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a<T> extends q<T> {
        @NotNull

        /* renamed from: i  reason: collision with root package name */
        private final JobSupport f70723i;

        public a(@NotNull Continuation<? super T> continuation, @NotNull JobSupport jobSupport) {
            super(continuation, 1);
            this.f70723i = jobSupport;
        }

        @Override // kotlinx.coroutines.q
        @NotNull
        protected String F() {
            return "AwaitContinuation";
        }

        @Override // kotlinx.coroutines.q
        @NotNull
        public Throwable w(@NotNull c2 c2Var) {
            Throwable d4;
            Object D0 = this.f70723i.D0();
            return (!(D0 instanceof c) || (d4 = ((c) D0).d()) == null) ? D0 instanceof h0 ? ((h0) D0).f72127a : c2Var.m() : d4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JobSupport.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0016\u0010\u0017J\u0013\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0018\u0010\r\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0016\u0010\u0011\u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, d2 = {"kotlinx/coroutines/JobSupport$b", "Lkotlinx/coroutines/i2;", "", "cause", "", "e0", "Lkotlinx/coroutines/w;", com.sdk.a.g.f56552a, "Lkotlinx/coroutines/w;", "child", "", "h", "Ljava/lang/Object;", "proposedUpdate", "Lkotlinx/coroutines/JobSupport;", "e", "Lkotlinx/coroutines/JobSupport;", "parent", "Lkotlinx/coroutines/JobSupport$c;", "f", "Lkotlinx/coroutines/JobSupport$c;", NoticeTopAnimActivityDialog_.f34402n, "<init>", "(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/JobSupport$c;Lkotlinx/coroutines/w;Ljava/lang/Object;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class b extends i2 {
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private final JobSupport f70724e;
        @NotNull

        /* renamed from: f  reason: collision with root package name */
        private final c f70725f;
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final w f70726g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private final Object f70727h;

        public b(@NotNull JobSupport jobSupport, @NotNull c cVar, @NotNull w wVar, @Nullable Object obj) {
            this.f70724e = jobSupport;
            this.f70725f = cVar;
            this.f70726g = wVar;
            this.f70727h = obj;
        }

        @Override // kotlinx.coroutines.j0
        public void e0(@Nullable Throwable th) {
            this.f70724e.o0(this.f70725f, this.f70726g, this.f70727h);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            e0(th);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JobSupport.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000F\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0012\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u00022\u00020\u0003B!\u0012\u0006\u0010\"\u001a\u00020\u001e\u0012\u0006\u0010-\u001a\u00020\u0014\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b.\u0010/J\u001f\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u001d\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\n2\b\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0005¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0015\u001a\u00020\u00148V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R(\u0010\u001b\u001a\u0004\u0018\u00010\u00052\b\u0010\u0017\u001a\u0004\u0018\u00010\u00058F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u0010R\u0013\u0010\u001d\u001a\u00020\u00148F@\u0006¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u0016R\u001c\u0010\"\u001a\u00020\u001e8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u001f\u001a\u0004\b \u0010!R(\u0010'\u001a\u0004\u0018\u00010\u00012\b\u0010\u0017\u001a\u0004\u0018\u00010\u00018B@BX\u0082\u000e¢\u0006\f\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u0013\u0010)\u001a\u00020\u00148F@\u0006¢\u0006\u0006\u001a\u0004\b(\u0010\u0016R$\u0010-\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00148F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b*\u0010\u0016\"\u0004\b+\u0010,¨\u00060"}, d2 = {"kotlinx/coroutines/JobSupport$c", "", "Lkotlinx/coroutines/internal/SynchronizedObject;", "Lkotlinx/coroutines/x1;", "Ljava/util/ArrayList;", "", "Lkotlin/collections/ArrayList;", "b", "()Ljava/util/ArrayList;", "proposedException", "", ai.aA, "(Ljava/lang/Throwable;)Ljava/util/List;", "exception", "", "a", "(Ljava/lang/Throwable;)V", "", "toString", "()Ljava/lang/String;", "", "isActive", "()Z", "value", com.xinzhu.overmind.utils.helpers.d.f64708a, "()Ljava/lang/Throwable;", "l", "rootCause", "h", "isSealed", "Lkotlinx/coroutines/n2;", "Lkotlinx/coroutines/n2;", "e", "()Lkotlinx/coroutines/n2;", "list", ai.aD, "()Ljava/lang/Object;", "k", "(Ljava/lang/Object;)V", "exceptionsHolder", "f", "isCancelling", com.sdk.a.g.f56552a, "j", "(Z)V", "isCompleting", "<init>", "(Lkotlinx/coroutines/n2;ZLjava/lang/Throwable;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class c implements x1 {
        @NotNull
        private volatile /* synthetic */ Object _exceptionsHolder = null;
        @NotNull
        private volatile /* synthetic */ int _isCompleting;
        @NotNull
        private volatile /* synthetic */ Object _rootCause;
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final n2 f70728a;

        public c(@NotNull n2 n2Var, boolean z3, @Nullable Throwable th) {
            this.f70728a = n2Var;
            this._isCompleting = z3 ? 1 : 0;
            this._rootCause = th;
        }

        private final ArrayList<Throwable> b() {
            return new ArrayList<>(4);
        }

        private final Object c() {
            return this._exceptionsHolder;
        }

        private final void k(Object obj) {
            this._exceptionsHolder = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void a(@NotNull Throwable th) {
            Throwable d4 = d();
            if (d4 == null) {
                l(th);
            } else if (th == d4) {
            } else {
                Object c4 = c();
                if (c4 == null) {
                    k(th);
                } else if (!(c4 instanceof Throwable)) {
                    if (!(c4 instanceof ArrayList)) {
                        throw new IllegalStateException(Intrinsics.stringPlus("State is ", c4).toString());
                    }
                    ((ArrayList) c4).add(th);
                } else if (th == c4) {
                } else {
                    ArrayList<Throwable> b4 = b();
                    b4.add(c4);
                    b4.add(th);
                    Unit unit = Unit.INSTANCE;
                    k(b4);
                }
            }
        }

        @Nullable
        public final Throwable d() {
            return (Throwable) this._rootCause;
        }

        @Override // kotlinx.coroutines.x1
        @NotNull
        public n2 e() {
            return this.f70728a;
        }

        public final boolean f() {
            return d() != null;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [int, boolean] */
        public final boolean g() {
            return this._isCompleting;
        }

        public final boolean h() {
            kotlinx.coroutines.internal.i0 i0Var;
            Object c4 = c();
            i0Var = j2.f72263h;
            return c4 == i0Var;
        }

        @NotNull
        public final List<Throwable> i(@Nullable Throwable th) {
            ArrayList<Throwable> arrayList;
            kotlinx.coroutines.internal.i0 i0Var;
            Object c4 = c();
            if (c4 == null) {
                arrayList = b();
            } else if (c4 instanceof Throwable) {
                ArrayList<Throwable> b4 = b();
                b4.add(c4);
                arrayList = b4;
            } else if (!(c4 instanceof ArrayList)) {
                throw new IllegalStateException(Intrinsics.stringPlus("State is ", c4).toString());
            } else {
                arrayList = (ArrayList) c4;
            }
            Throwable d4 = d();
            if (d4 != null) {
                arrayList.add(0, d4);
            }
            if (th != null && !Intrinsics.areEqual(th, d4)) {
                arrayList.add(th);
            }
            i0Var = j2.f72263h;
            k(i0Var);
            return arrayList;
        }

        @Override // kotlinx.coroutines.x1
        public boolean isActive() {
            return d() == null;
        }

        public final void j(boolean z3) {
            this._isCompleting = z3 ? 1 : 0;
        }

        public final void l(@Nullable Throwable th) {
            this._rootCause = th;
        }

        @NotNull
        public String toString() {
            return "Finishing[cancelling=" + f() + ", completing=" + g() + ", rootCause=" + d() + ", exceptions=" + c() + ", list=" + e() + ']';
        }
    }

    /* compiled from: LockFreeLinkedList.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0016¨\u0006\u0007¸\u0006\b"}, d2 = {"kotlinx/coroutines/JobSupport$d", "Lkotlinx/coroutines/internal/s$c;", "Lkotlinx/coroutines/internal/s;", "Lkotlinx/coroutines/internal/Node;", "affected", "", "k", "kotlinx-coroutines-core", "kotlinx/coroutines/internal/s$f"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class d extends s.c {

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.internal.s f70734d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ JobSupport f70735e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Object f70736f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(kotlinx.coroutines.internal.s sVar, JobSupport jobSupport, Object obj) {
            super(sVar);
            this.f70734d = sVar;
            this.f70735e = jobSupport;
            this.f70736f = obj;
        }

        @Override // kotlinx.coroutines.internal.d
        @Nullable
        /* renamed from: k */
        public Object i(@NotNull kotlinx.coroutines.internal.s sVar) {
            if (this.f70735e.D0() == this.f70736f) {
                return null;
            }
            return kotlinx.coroutines.internal.r.a();
        }
    }

    public JobSupport(boolean z3) {
        this._state = z3 ? j2.f72265j : j2.f72264i;
        this._parentHandle = null;
    }

    private final n2 B0(x1 x1Var) {
        n2 e4 = x1Var.e();
        if (e4 == null) {
            if (x1Var instanceof m1) {
                return new n2();
            }
            if (x1Var instanceof i2) {
                a1((i2) x1Var);
                return null;
            }
            throw new IllegalStateException(Intrinsics.stringPlus("State should have list: ", x1Var).toString());
        }
        return e4;
    }

    private final boolean H0(x1 x1Var) {
        return (x1Var instanceof c) && ((c) x1Var).f();
    }

    private final boolean K0() {
        Object D0;
        do {
            D0 = D0();
            if (!(D0 instanceof x1)) {
                return false;
            }
        } while (f1(D0) < 0);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object L0(Continuation<? super Unit> continuation) {
        q qVar = new q(IntrinsicsKt.intercepted(continuation), 1);
        qVar.N();
        s.a(qVar, u(new u2(qVar)));
        Object x3 = qVar.x();
        if (x3 == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return x3 == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? x3 : Unit.INSTANCE;
    }

    private final Void M0(Function1<Object, Unit> function1) {
        while (true) {
            function1.invoke(D0());
        }
    }

    private final Object N0(Object obj) {
        kotlinx.coroutines.internal.i0 i0Var;
        kotlinx.coroutines.internal.i0 i0Var2;
        kotlinx.coroutines.internal.i0 i0Var3;
        kotlinx.coroutines.internal.i0 i0Var4;
        kotlinx.coroutines.internal.i0 i0Var5;
        kotlinx.coroutines.internal.i0 i0Var6;
        Throwable th = null;
        while (true) {
            Object D0 = D0();
            if (D0 instanceof c) {
                synchronized (D0) {
                    if (((c) D0).h()) {
                        i0Var2 = j2.f72259d;
                        return i0Var2;
                    }
                    boolean f4 = ((c) D0).f();
                    if (obj != null || !f4) {
                        if (th == null) {
                            th = p0(obj);
                        }
                        ((c) D0).a(th);
                    }
                    Throwable d4 = f4 ^ true ? ((c) D0).d() : null;
                    if (d4 != null) {
                        T0(((c) D0).e(), d4);
                    }
                    i0Var = j2.f72256a;
                    return i0Var;
                }
            } else if (!(D0 instanceof x1)) {
                i0Var3 = j2.f72259d;
                return i0Var3;
            } else {
                if (th == null) {
                    th = p0(obj);
                }
                x1 x1Var = (x1) D0;
                if (x1Var.isActive()) {
                    if (l1(x1Var, th)) {
                        i0Var4 = j2.f72256a;
                        return i0Var4;
                    }
                } else {
                    Object m12 = m1(D0, new h0(th, false, 2, null));
                    i0Var5 = j2.f72256a;
                    if (m12 != i0Var5) {
                        i0Var6 = j2.f72258c;
                        if (m12 != i0Var6) {
                            return m12;
                        }
                    } else {
                        throw new IllegalStateException(Intrinsics.stringPlus("Cannot happen in ", D0).toString());
                    }
                }
            }
        }
    }

    private final i2 Q0(Function1<? super Throwable, Unit> function1, boolean z3) {
        if (z3) {
            r0 = function1 instanceof d2 ? (d2) function1 : null;
            if (r0 == null) {
                r0 = new a2(function1);
            }
        } else {
            i2 i2Var = function1 instanceof i2 ? (i2) function1 : null;
            if (i2Var != null) {
                if (v0.b() && !(!(i2Var instanceof d2))) {
                    throw new AssertionError();
                }
                r0 = i2Var;
            }
            if (r0 == null) {
                r0 = new b2(function1);
            }
        }
        r0.g0(this);
        return r0;
    }

    private final w S0(kotlinx.coroutines.internal.s sVar) {
        while (sVar.T()) {
            sVar = sVar.Q();
        }
        while (true) {
            sVar = sVar.P();
            if (!sVar.T()) {
                if (sVar instanceof w) {
                    return (w) sVar;
                }
                if (sVar instanceof n2) {
                    return null;
                }
            }
        }
    }

    private final void T0(n2 n2Var, Throwable th) {
        CompletionHandlerException completionHandlerException;
        W0(th);
        CompletionHandlerException completionHandlerException2 = null;
        for (kotlinx.coroutines.internal.s sVar = (kotlinx.coroutines.internal.s) n2Var.O(); !Intrinsics.areEqual(sVar, n2Var); sVar = sVar.P()) {
            if (sVar instanceof d2) {
                i2 i2Var = (i2) sVar;
                try {
                    i2Var.e0(th);
                } catch (Throwable th2) {
                    if (completionHandlerException2 == null) {
                        completionHandlerException = null;
                    } else {
                        ExceptionsKt__ExceptionsKt.addSuppressed(completionHandlerException2, th2);
                        completionHandlerException = completionHandlerException2;
                    }
                    if (completionHandlerException == null) {
                        completionHandlerException2 = new CompletionHandlerException("Exception in completion handler " + i2Var + " for " + this, th2);
                    }
                }
            }
        }
        if (completionHandlerException2 != null) {
            F0(completionHandlerException2);
        }
        k0(th);
    }

    private final void U0(n2 n2Var, Throwable th) {
        CompletionHandlerException completionHandlerException;
        CompletionHandlerException completionHandlerException2 = null;
        for (kotlinx.coroutines.internal.s sVar = (kotlinx.coroutines.internal.s) n2Var.O(); !Intrinsics.areEqual(sVar, n2Var); sVar = sVar.P()) {
            if (sVar instanceof i2) {
                i2 i2Var = (i2) sVar;
                try {
                    i2Var.e0(th);
                } catch (Throwable th2) {
                    if (completionHandlerException2 == null) {
                        completionHandlerException = null;
                    } else {
                        ExceptionsKt__ExceptionsKt.addSuppressed(completionHandlerException2, th2);
                        completionHandlerException = completionHandlerException2;
                    }
                    if (completionHandlerException == null) {
                        completionHandlerException2 = new CompletionHandlerException("Exception in completion handler " + i2Var + " for " + this, th2);
                    }
                }
            }
        }
        if (completionHandlerException2 == null) {
            return;
        }
        F0(completionHandlerException2);
    }

    private final /* synthetic */ <T extends i2> void V0(n2 n2Var, Throwable th) {
        CompletionHandlerException completionHandlerException;
        CompletionHandlerException completionHandlerException2 = null;
        for (kotlinx.coroutines.internal.s sVar = (kotlinx.coroutines.internal.s) n2Var.O(); !Intrinsics.areEqual(sVar, n2Var); sVar = sVar.P()) {
            Intrinsics.reifiedOperationMarker(3, "T");
            if (sVar instanceof kotlinx.coroutines.internal.s) {
                i2 i2Var = (i2) sVar;
                try {
                    i2Var.e0(th);
                } catch (Throwable th2) {
                    if (completionHandlerException2 == null) {
                        completionHandlerException = null;
                    } else {
                        ExceptionsKt__ExceptionsKt.addSuppressed(completionHandlerException2, th2);
                        completionHandlerException = completionHandlerException2;
                    }
                    if (completionHandlerException == null) {
                        completionHandlerException2 = new CompletionHandlerException("Exception in completion handler " + i2Var + " for " + this, th2);
                    }
                }
            }
        }
        if (completionHandlerException2 == null) {
            return;
        }
        F0(completionHandlerException2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [kotlinx.coroutines.w1] */
    private final void Z0(m1 m1Var) {
        n2 n2Var = new n2();
        if (!m1Var.isActive()) {
            n2Var = new w1(n2Var);
        }
        f70722a.compareAndSet(this, m1Var, n2Var);
    }

    private final boolean a0(Object obj, n2 n2Var, i2 i2Var) {
        int c02;
        d dVar = new d(i2Var, this, obj);
        do {
            c02 = n2Var.Q().c0(i2Var, n2Var, dVar);
            if (c02 == 1) {
                return true;
            }
        } while (c02 != 2);
        return false;
    }

    private final void a1(i2 i2Var) {
        i2Var.F(new n2());
        f70722a.compareAndSet(this, i2Var, i2Var.P());
    }

    private final void b0(Throwable th, List<? extends Throwable> list) {
        if (list.size() <= 1) {
            return;
        }
        Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap(list.size()));
        Throwable u3 = !v0.e() ? th : kotlinx.coroutines.internal.h0.u(th);
        for (Throwable th2 : list) {
            if (v0.e()) {
                th2 = kotlinx.coroutines.internal.h0.u(th2);
            }
            if (th2 != th && th2 != u3 && !(th2 instanceof CancellationException) && newSetFromMap.add(th2)) {
                ExceptionsKt__ExceptionsKt.addSuppressed(th, th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object f0(Continuation<Object> continuation) {
        a aVar = new a(IntrinsicsKt.intercepted(continuation), this);
        aVar.N();
        s.a(aVar, u(new t2(aVar)));
        Object x3 = aVar.x();
        if (x3 == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return x3;
    }

    private final int f1(Object obj) {
        m1 m1Var;
        if (obj instanceof m1) {
            if (((m1) obj).isActive()) {
                return 0;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f70722a;
            m1Var = j2.f72265j;
            if (atomicReferenceFieldUpdater.compareAndSet(this, obj, m1Var)) {
                Y0();
                return 1;
            }
            return -1;
        } else if (obj instanceof w1) {
            if (f70722a.compareAndSet(this, obj, ((w1) obj).e())) {
                Y0();
                return 1;
            }
            return -1;
        } else {
            return 0;
        }
    }

    private final String g1(Object obj) {
        if (!(obj instanceof c)) {
            return obj instanceof x1 ? ((x1) obj).isActive() ? "Active" : "New" : obj instanceof h0 ? "Cancelled" : "Completed";
        }
        c cVar = (c) obj;
        return cVar.f() ? "Cancelling" : cVar.g() ? "Completing" : "Active";
    }

    public static /* synthetic */ CancellationException i1(JobSupport jobSupport, Throwable th, String str, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 1) != 0) {
                str = null;
            }
            return jobSupport.h1(th, str);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toCancellationException");
    }

    private final Object j0(Object obj) {
        kotlinx.coroutines.internal.i0 i0Var;
        Object m12;
        kotlinx.coroutines.internal.i0 i0Var2;
        do {
            Object D0 = D0();
            if (!(D0 instanceof x1) || ((D0 instanceof c) && ((c) D0).g())) {
                i0Var = j2.f72256a;
                return i0Var;
            }
            m12 = m1(D0, new h0(p0(obj), false, 2, null));
            i0Var2 = j2.f72258c;
        } while (m12 == i0Var2);
        return m12;
    }

    private final boolean k0(Throwable th) {
        if (J0()) {
            return true;
        }
        boolean z3 = th instanceof CancellationException;
        v C0 = C0();
        return (C0 == null || C0 == p2.f72305a) ? z3 : C0.x(th) || z3;
    }

    private final boolean k1(x1 x1Var, Object obj) {
        if (v0.b()) {
            if (!((x1Var instanceof m1) || (x1Var instanceof i2))) {
                throw new AssertionError();
            }
        }
        if (!v0.b() || (!(obj instanceof h0))) {
            if (f70722a.compareAndSet(this, x1Var, j2.g(obj))) {
                W0(null);
                X0(obj);
                n0(x1Var, obj);
                return true;
            }
            return false;
        }
        throw new AssertionError();
    }

    private final boolean l1(x1 x1Var, Throwable th) {
        if (!v0.b() || (!(x1Var instanceof c))) {
            if (!v0.b() || x1Var.isActive()) {
                n2 B0 = B0(x1Var);
                if (B0 == null) {
                    return false;
                }
                if (f70722a.compareAndSet(this, x1Var, new c(B0, false, th))) {
                    T0(B0, th);
                    return true;
                }
                return false;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    private final Object m1(Object obj, Object obj2) {
        kotlinx.coroutines.internal.i0 i0Var;
        kotlinx.coroutines.internal.i0 i0Var2;
        if (!(obj instanceof x1)) {
            i0Var2 = j2.f72256a;
            return i0Var2;
        } else if (((obj instanceof m1) || (obj instanceof i2)) && !(obj instanceof w) && !(obj2 instanceof h0)) {
            if (k1((x1) obj, obj2)) {
                return obj2;
            }
            i0Var = j2.f72258c;
            return i0Var;
        } else {
            return n1((x1) obj, obj2);
        }
    }

    private final void n0(x1 x1Var, Object obj) {
        v C0 = C0();
        if (C0 != null) {
            C0.dispose();
            e1(p2.f72305a);
        }
        h0 h0Var = obj instanceof h0 ? (h0) obj : null;
        Throwable th = h0Var != null ? h0Var.f72127a : null;
        if (x1Var instanceof i2) {
            try {
                ((i2) x1Var).e0(th);
                return;
            } catch (Throwable th2) {
                F0(new CompletionHandlerException("Exception in completion handler " + x1Var + " for " + this, th2));
                return;
            }
        }
        n2 e4 = x1Var.e();
        if (e4 == null) {
            return;
        }
        U0(e4, th);
    }

    private final Object n1(x1 x1Var, Object obj) {
        kotlinx.coroutines.internal.i0 i0Var;
        kotlinx.coroutines.internal.i0 i0Var2;
        kotlinx.coroutines.internal.i0 i0Var3;
        n2 B0 = B0(x1Var);
        if (B0 == null) {
            i0Var3 = j2.f72258c;
            return i0Var3;
        }
        c cVar = x1Var instanceof c ? (c) x1Var : null;
        if (cVar == null) {
            cVar = new c(B0, false, null);
        }
        synchronized (cVar) {
            if (cVar.g()) {
                i0Var2 = j2.f72256a;
                return i0Var2;
            }
            cVar.j(true);
            if (cVar != x1Var && !f70722a.compareAndSet(this, x1Var, cVar)) {
                i0Var = j2.f72258c;
                return i0Var;
            }
            if (v0.b() && !(!cVar.h())) {
                throw new AssertionError();
            }
            boolean f4 = cVar.f();
            h0 h0Var = obj instanceof h0 ? (h0) obj : null;
            if (h0Var != null) {
                cVar.a(h0Var.f72127a);
            }
            Throwable d4 = true ^ f4 ? cVar.d() : null;
            Unit unit = Unit.INSTANCE;
            if (d4 != null) {
                T0(B0, d4);
            }
            w t02 = t0(x1Var);
            if (t02 != null && o1(cVar, t02, obj)) {
                return j2.f72257b;
            }
            return s0(cVar, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o0(c cVar, w wVar, Object obj) {
        if (v0.b()) {
            if (!(D0() == cVar)) {
                throw new AssertionError();
            }
        }
        w S0 = S0(wVar);
        if (S0 == null || !o1(cVar, S0, obj)) {
            c0(s0(cVar, obj));
        }
    }

    private final boolean o1(c cVar, w wVar, Object obj) {
        while (c2.a.f(wVar.f72531e, false, false, new b(this, cVar, wVar, obj), 1, null) == p2.f72305a) {
            wVar = S0(wVar);
            if (wVar == null) {
                return false;
            }
        }
        return true;
    }

    private final Throwable p0(Object obj) {
        if (obj == null ? true : obj instanceof Throwable) {
            Throwable th = (Throwable) obj;
            return th == null ? new JobCancellationException(l0(), null, this) : th;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
        return ((r2) obj).A();
    }

    public static /* synthetic */ JobCancellationException r0(JobSupport jobSupport, String str, Throwable th, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 1) != 0) {
                str = null;
            }
            if ((i2 & 2) != 0) {
                th = null;
            }
            if (str == null) {
                str = jobSupport.l0();
            }
            return new JobCancellationException(str, th, jobSupport);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: defaultCancellationException");
    }

    private final Object s0(c cVar, Object obj) {
        boolean f4;
        Throwable y02;
        boolean z3 = true;
        if (v0.b()) {
            if (!(D0() == cVar)) {
                throw new AssertionError();
            }
        }
        if (!v0.b() || (!cVar.h())) {
            if (!v0.b() || cVar.g()) {
                h0 h0Var = obj instanceof h0 ? (h0) obj : null;
                Throwable th = h0Var == null ? null : h0Var.f72127a;
                synchronized (cVar) {
                    f4 = cVar.f();
                    List<Throwable> i2 = cVar.i(th);
                    y02 = y0(cVar, i2);
                    if (y02 != null) {
                        b0(y02, i2);
                    }
                }
                if (y02 != null && y02 != th) {
                    obj = new h0(y02, false, 2, null);
                }
                if (y02 != null) {
                    if (!k0(y02) && !E0(y02)) {
                        z3 = false;
                    }
                    if (z3) {
                        Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
                        ((h0) obj).b();
                    }
                }
                if (!f4) {
                    W0(y02);
                }
                X0(obj);
                boolean compareAndSet = f70722a.compareAndSet(this, cVar, j2.g(obj));
                if (!v0.b() || compareAndSet) {
                    n0(cVar, obj);
                    return obj;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    private final w t0(x1 x1Var) {
        w wVar = x1Var instanceof w ? (w) x1Var : null;
        if (wVar == null) {
            n2 e4 = x1Var.e();
            if (e4 == null) {
                return null;
            }
            return S0(e4);
        }
        return wVar;
    }

    private final Throwable x0(Object obj) {
        h0 h0Var = obj instanceof h0 ? (h0) obj : null;
        if (h0Var == null) {
            return null;
        }
        return h0Var.f72127a;
    }

    private final Throwable y0(c cVar, List<? extends Throwable> list) {
        Object obj;
        boolean z3;
        Object obj2 = null;
        if (list.isEmpty()) {
            if (cVar.f()) {
                return new JobCancellationException(l0(), null, this);
            }
            return null;
        }
        Iterator<T> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (!(((Throwable) obj) instanceof CancellationException)) {
                break;
            }
        }
        Throwable th = (Throwable) obj;
        if (th != null) {
            return th;
        }
        Throwable th2 = list.get(0);
        if (th2 instanceof TimeoutCancellationException) {
            Iterator<T> it3 = list.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                Object next = it3.next();
                Throwable th3 = (Throwable) next;
                if (th3 == th2 || !(th3 instanceof TimeoutCancellationException)) {
                    z3 = false;
                    continue;
                } else {
                    z3 = true;
                    continue;
                }
                if (z3) {
                    obj2 = next;
                    break;
                }
            }
            Throwable th4 = (Throwable) obj2;
            if (th4 != null) {
                return th4;
            }
        }
        return th2;
    }

    @Override // kotlinx.coroutines.r2
    @NotNull
    public CancellationException A() {
        Throwable th;
        Object D0 = D0();
        if (D0 instanceof c) {
            th = ((c) D0).d();
        } else if (D0 instanceof h0) {
            th = ((h0) D0).f72127a;
        } else if (D0 instanceof x1) {
            throw new IllegalStateException(Intrinsics.stringPlus("Cannot be cancelling child in this state: ", D0).toString());
        } else {
            th = null;
        }
        CancellationException cancellationException = th instanceof CancellationException ? th : null;
        return cancellationException == null ? new JobCancellationException(Intrinsics.stringPlus("Parent job is ", g1(D0)), th, this) : cancellationException;
    }

    public boolean A0() {
        return false;
    }

    @Nullable
    public final v C0() {
        return (v) this._parentHandle;
    }

    @Nullable
    public final Object D0() {
        while (true) {
            Object obj = this._state;
            if (!(obj instanceof kotlinx.coroutines.internal.b0)) {
                return obj;
            }
            ((kotlinx.coroutines.internal.b0) obj).c(this);
        }
    }

    @Override // kotlinx.coroutines.c2
    @Nullable
    public final Object E(@NotNull Continuation<? super Unit> continuation) {
        if (!K0()) {
            f2.A(continuation.getContext());
            return Unit.INSTANCE;
        }
        Object L0 = L0(continuation);
        return L0 == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? L0 : Unit.INSTANCE;
    }

    protected boolean E0(@NotNull Throwable th) {
        return false;
    }

    public void F0(@NotNull Throwable th) {
        throw th;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void G0(@Nullable c2 c2Var) {
        if (v0.b()) {
            if (!(C0() == null)) {
                throw new AssertionError();
            }
        }
        if (c2Var == null) {
            e1(p2.f72305a);
            return;
        }
        c2Var.start();
        v U = c2Var.U(this);
        e1(U);
        if (isCompleted()) {
            U.dispose();
            e1(p2.f72305a);
        }
    }

    public final boolean I0() {
        return D0() instanceof h0;
    }

    protected boolean J0() {
        return false;
    }

    public final boolean O0(@Nullable Object obj) {
        Object m12;
        kotlinx.coroutines.internal.i0 i0Var;
        kotlinx.coroutines.internal.i0 i0Var2;
        do {
            m12 = m1(D0(), obj);
            i0Var = j2.f72256a;
            if (m12 == i0Var) {
                return false;
            }
            if (m12 == j2.f72257b) {
                return true;
            }
            i0Var2 = j2.f72258c;
        } while (m12 == i0Var2);
        c0(m12);
        return true;
    }

    @Nullable
    public final Object P0(@Nullable Object obj) {
        Object m12;
        kotlinx.coroutines.internal.i0 i0Var;
        kotlinx.coroutines.internal.i0 i0Var2;
        do {
            m12 = m1(D0(), obj);
            i0Var = j2.f72256a;
            if (m12 != i0Var) {
                i0Var2 = j2.f72258c;
            } else {
                throw new IllegalStateException("Job " + this + " is already complete or completing, but is being completed with " + obj, x0(obj));
            }
        } while (m12 == i0Var2);
        return m12;
    }

    @Override // kotlinx.coroutines.c2
    @NotNull
    public final kotlinx.coroutines.selects.c Q() {
        return this;
    }

    @NotNull
    public String R0() {
        return w0.a(this);
    }

    @Override // kotlinx.coroutines.c2
    @NotNull
    public final v U(@NotNull x xVar) {
        return (v) c2.a.f(this, true, false, new w(xVar), 2, null);
    }

    protected void W0(@Nullable Throwable th) {
    }

    protected void X0(@Nullable Object obj) {
    }

    protected void Y0() {
    }

    @Override // kotlinx.coroutines.c2
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Added since 1.2.0 for binary compatibility with versions <= 1.1.x")
    public /* synthetic */ boolean a(Throwable th) {
        Throwable i12;
        if (th == null) {
            i12 = new JobCancellationException(l0(), null, this);
        } else {
            i12 = i1(this, th, null, 1, null);
        }
        i0(i12);
        return true;
    }

    @Override // kotlinx.coroutines.c2
    public void b(@Nullable CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(l0(), null, this);
        }
        i0(cancellationException);
    }

    public final <T, R> void b1(@NotNull kotlinx.coroutines.selects.f<? super R> fVar, @NotNull Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        Object D0;
        do {
            D0 = D0();
            if (fVar.g()) {
                return;
            }
            if (!(D0 instanceof x1)) {
                if (fVar.n()) {
                    if (D0 instanceof h0) {
                        fVar.r(((h0) D0).f72127a);
                        return;
                    } else {
                        b3.b.d(function2, j2.o(D0), fVar.o());
                        return;
                    }
                }
                return;
            }
        } while (f1(D0) != 0);
        fVar.j(u(new y2(fVar, function2)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c0(@Nullable Object obj) {
    }

    public final void c1(@NotNull i2 i2Var) {
        Object D0;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        m1 m1Var;
        do {
            D0 = D0();
            if (!(D0 instanceof i2)) {
                if (!(D0 instanceof x1) || ((x1) D0).e() == null) {
                    return;
                }
                i2Var.X();
                return;
            } else if (D0 != i2Var) {
                return;
            } else {
                atomicReferenceFieldUpdater = f70722a;
                m1Var = j2.f72265j;
            }
        } while (!atomicReferenceFieldUpdater.compareAndSet(this, D0, m1Var));
    }

    @Override // kotlinx.coroutines.c2
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public /* synthetic */ void cancel() {
        c2.a.a(this);
    }

    @Nullable
    public final Object d0(@NotNull Continuation<Object> continuation) {
        Object D0;
        do {
            D0 = D0();
            if (!(D0 instanceof x1)) {
                if (D0 instanceof h0) {
                    Throwable th = ((h0) D0).f72127a;
                    if (v0.e()) {
                        if (continuation instanceof CoroutineStackFrame) {
                            throw kotlinx.coroutines.internal.h0.o(th, (CoroutineStackFrame) continuation);
                        }
                        throw th;
                    }
                    throw th;
                }
                return j2.o(D0);
            }
        } while (f1(D0) < 0);
        return f0(continuation);
    }

    public final <T, R> void d1(@NotNull kotlinx.coroutines.selects.f<? super R> fVar, @NotNull Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        Object D0 = D0();
        if (D0 instanceof h0) {
            fVar.r(((h0) D0).f72127a);
        } else {
            b3.a.g(function2, j2.o(D0), fVar.o(), null, 4, null);
        }
    }

    public final void e1(@Nullable v vVar) {
        this._parentHandle = vVar;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <R> R fold(R r3, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) c2.a.d(this, r3, function2);
    }

    public final boolean g0(@Nullable Throwable th) {
        return h0(th);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.Key<E> key) {
        return (E) c2.a.e(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    @NotNull
    public final CoroutineContext.Key<?> getKey() {
        return c2.Q;
    }

    @Override // kotlinx.coroutines.c2
    @NotNull
    public final Sequence<c2> h() {
        Sequence<c2> sequence;
        sequence = SequencesKt__SequenceBuilderKt.sequence(new JobSupport$children$1(this, null));
        return sequence;
    }

    public final boolean h0(@Nullable Object obj) {
        Object obj2;
        kotlinx.coroutines.internal.i0 i0Var;
        kotlinx.coroutines.internal.i0 i0Var2;
        kotlinx.coroutines.internal.i0 i0Var3;
        obj2 = j2.f72256a;
        if (A0() && (obj2 = j0(obj)) == j2.f72257b) {
            return true;
        }
        i0Var = j2.f72256a;
        if (obj2 == i0Var) {
            obj2 = N0(obj);
        }
        i0Var2 = j2.f72256a;
        if (obj2 == i0Var2 || obj2 == j2.f72257b) {
            return true;
        }
        i0Var3 = j2.f72259d;
        if (obj2 == i0Var3) {
            return false;
        }
        c0(obj2);
        return true;
    }

    @NotNull
    protected final CancellationException h1(@NotNull Throwable th, @Nullable String str) {
        CancellationException cancellationException = th instanceof CancellationException ? (CancellationException) th : null;
        if (cancellationException == null) {
            if (str == null) {
                str = l0();
            }
            cancellationException = new JobCancellationException(str, th, this);
        }
        return cancellationException;
    }

    @Nullable
    public final Throwable i() {
        Object D0 = D0();
        if (!(D0 instanceof x1)) {
            return x0(D0);
        }
        throw new IllegalStateException("This job has not completed yet".toString());
    }

    public void i0(@NotNull Throwable th) {
        h0(th);
    }

    @Override // kotlinx.coroutines.c2
    public boolean isActive() {
        Object D0 = D0();
        return (D0 instanceof x1) && ((x1) D0).isActive();
    }

    @Override // kotlinx.coroutines.c2
    public final boolean isCancelled() {
        Object D0 = D0();
        return (D0 instanceof h0) || ((D0 instanceof c) && ((c) D0).f());
    }

    @Override // kotlinx.coroutines.c2
    public final boolean isCompleted() {
        return !(D0() instanceof x1);
    }

    @Override // kotlinx.coroutines.selects.c
    public final <R> void j(@NotNull kotlinx.coroutines.selects.f<? super R> fVar, @NotNull Function1<? super Continuation<? super R>, ? extends Object> function1) {
        Object D0;
        do {
            D0 = D0();
            if (fVar.g()) {
                return;
            }
            if (!(D0 instanceof x1)) {
                if (fVar.n()) {
                    b3.b.c(function1, fVar.o());
                    return;
                }
                return;
            }
        } while (f1(D0) != 0);
        fVar.j(u(new z2(fVar, function1)));
    }

    @InternalCoroutinesApi
    @NotNull
    public final String j1() {
        return R0() + '{' + g1(D0()) + '}';
    }

    @Override // kotlinx.coroutines.c2
    @NotNull
    public final j1 k(boolean z3, boolean z4, @NotNull Function1<? super Throwable, Unit> function1) {
        i2 Q0 = Q0(function1, z3);
        while (true) {
            Object D0 = D0();
            if (D0 instanceof m1) {
                m1 m1Var = (m1) D0;
                if (m1Var.isActive()) {
                    if (f70722a.compareAndSet(this, D0, Q0)) {
                        return Q0;
                    }
                } else {
                    Z0(m1Var);
                }
            } else {
                if (D0 instanceof x1) {
                    n2 e4 = ((x1) D0).e();
                    if (e4 == null) {
                        Objects.requireNonNull(D0, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                        a1((i2) D0);
                    } else {
                        j1 j1Var = p2.f72305a;
                        if (z3 && (D0 instanceof c)) {
                            synchronized (D0) {
                                r3 = ((c) D0).d();
                                if (r3 == null || ((function1 instanceof w) && !((c) D0).g())) {
                                    if (a0(D0, e4, Q0)) {
                                        if (r3 == null) {
                                            return Q0;
                                        }
                                        j1Var = Q0;
                                    }
                                }
                                Unit unit = Unit.INSTANCE;
                            }
                        }
                        if (r3 != null) {
                            if (z4) {
                                function1.invoke(r3);
                            }
                            return j1Var;
                        } else if (a0(D0, e4, Q0)) {
                            return Q0;
                        }
                    }
                } else {
                    if (z4) {
                        h0 h0Var = D0 instanceof h0 ? (h0) D0 : null;
                        function1.invoke(h0Var != null ? h0Var.f72127a : null);
                    }
                    return p2.f72305a;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public String l0() {
        return "Job was cancelled";
    }

    @Override // kotlinx.coroutines.c2
    @NotNull
    public final CancellationException m() {
        Object D0 = D0();
        if (!(D0 instanceof c)) {
            if (D0 instanceof x1) {
                throw new IllegalStateException(Intrinsics.stringPlus("Job is still new or active: ", this).toString());
            }
            return D0 instanceof h0 ? i1(this, ((h0) D0).f72127a, null, 1, null) : new JobCancellationException(Intrinsics.stringPlus(w0.a(this), " has completed normally"), null, this);
        }
        Throwable d4 = ((c) D0).d();
        if (d4 != null) {
            return h1(d4, Intrinsics.stringPlus(w0.a(this), " is cancelling"));
        }
        throw new IllegalStateException(Intrinsics.stringPlus("Job is still new or active: ", this).toString());
    }

    public boolean m0(@NotNull Throwable th) {
        if (th instanceof CancellationException) {
            return true;
        }
        return h0(th) && z0();
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.Key<?> key) {
        return c2.a.g(this, key);
    }

    @Override // kotlinx.coroutines.x
    public final void o(@NotNull r2 r2Var) {
        h0(r2Var);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
        return c2.a.h(this, coroutineContext);
    }

    @NotNull
    public final JobCancellationException q0(@Nullable String str, @Nullable Throwable th) {
        if (str == null) {
            str = l0();
        }
        return new JobCancellationException(str, th, this);
    }

    @Override // kotlinx.coroutines.c2
    public final boolean start() {
        int f12;
        do {
            f12 = f1(D0());
            if (f12 == 0) {
                return false;
            }
        } while (f12 != 1);
        return true;
    }

    @Override // kotlinx.coroutines.c2
    @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
    @NotNull
    public c2 t(@NotNull c2 c2Var) {
        return c2.a.i(this, c2Var);
    }

    @NotNull
    public String toString() {
        return j1() + '@' + w0.b(this);
    }

    @Override // kotlinx.coroutines.c2
    @NotNull
    public final j1 u(@NotNull Function1<? super Throwable, Unit> function1) {
        return k(false, true, function1);
    }

    @Nullable
    public final Object u0() {
        Object D0 = D0();
        if (!(D0 instanceof x1)) {
            if (!(D0 instanceof h0)) {
                return j2.o(D0);
            }
            throw ((h0) D0).f72127a;
        }
        throw new IllegalStateException("This job has not completed yet".toString());
    }

    @Nullable
    protected final Throwable v0() {
        Object D0 = D0();
        if (D0 instanceof c) {
            Throwable d4 = ((c) D0).d();
            if (d4 != null) {
                return d4;
            }
            throw new IllegalStateException(Intrinsics.stringPlus("Job is still new or active: ", this).toString());
        } else if (!(D0 instanceof x1)) {
            if (D0 instanceof h0) {
                return ((h0) D0).f72127a;
            }
            return null;
        } else {
            throw new IllegalStateException(Intrinsics.stringPlus("Job is still new or active: ", this).toString());
        }
    }

    protected final boolean w0() {
        Object D0 = D0();
        return (D0 instanceof h0) && ((h0) D0).a();
    }

    public boolean z0() {
        return true;
    }
}
