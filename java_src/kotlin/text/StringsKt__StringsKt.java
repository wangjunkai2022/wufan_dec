package kotlin.text;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.swift.sandhook.annotation.MethodReflectParams;
import com.tencent.bugly.Bugly;
import external.org.apache.commons.lang3.d;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Deprecated;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.OverloadResolutionByLambdaReturnType;
import kotlin.Pair;
import kotlin.ReplaceWith;
import kotlin.SinceKotlin;
import kotlin.TuplesKt;
import kotlin.WasExperimental;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CharIterator;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Strings.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000x\n\u0002\u0010\r\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0019\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0012\u001a$\u0010\u0005\u001a\u00020\u0000*\u00020\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\u0086\bø\u0001\u0000\u001a$\u0010\u0005\u001a\u00020\u0006*\u00020\u00062\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\u0086\bø\u0001\u0000\u001a$\u0010\u0007\u001a\u00020\u0000*\u00020\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\u0086\bø\u0001\u0000\u001a$\u0010\u0007\u001a\u00020\u0006*\u00020\u00062\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\u0086\bø\u0001\u0000\u001a$\u0010\b\u001a\u00020\u0000*\u00020\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\u0086\bø\u0001\u0000\u001a$\u0010\b\u001a\u00020\u0006*\u00020\u00062\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\u0086\bø\u0001\u0000\u001a\u0016\u0010\u0005\u001a\u00020\u0000*\u00020\u00002\n\u0010\n\u001a\u00020\t\"\u00020\u0002\u001a\u0016\u0010\u0005\u001a\u00020\u0006*\u00020\u00062\n\u0010\n\u001a\u00020\t\"\u00020\u0002\u001a\u0016\u0010\u0007\u001a\u00020\u0000*\u00020\u00002\n\u0010\n\u001a\u00020\t\"\u00020\u0002\u001a\u0016\u0010\u0007\u001a\u00020\u0006*\u00020\u00062\n\u0010\n\u001a\u00020\t\"\u00020\u0002\u001a\u0016\u0010\b\u001a\u00020\u0000*\u00020\u00002\n\u0010\n\u001a\u00020\t\"\u00020\u0002\u001a\u0016\u0010\b\u001a\u00020\u0006*\u00020\u00062\n\u0010\n\u001a\u00020\t\"\u00020\u0002\u001a\n\u0010\u0005\u001a\u00020\u0000*\u00020\u0000\u001a\r\u0010\u0005\u001a\u00020\u0006*\u00020\u0006H\u0087\b\u001a\n\u0010\u0007\u001a\u00020\u0000*\u00020\u0000\u001a\r\u0010\u0007\u001a\u00020\u0006*\u00020\u0006H\u0087\b\u001a\n\u0010\b\u001a\u00020\u0000*\u00020\u0000\u001a\r\u0010\b\u001a\u00020\u0006*\u00020\u0006H\u0087\b\u001a\u001c\u0010\u000e\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\r\u001a\u00020\u0002\u001a\u001c\u0010\u000e\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\r\u001a\u00020\u0002\u001a\u001c\u0010\u000f\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\r\u001a\u00020\u0002\u001a\u001c\u0010\u000f\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\r\u001a\u00020\u0002\u001a \u0010\u0010\u001a\u00020\u0003*\u0004\u0018\u00010\u0000H\u0087\b\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010\u0000\u001a\r\u0010\u0011\u001a\u00020\u0003*\u00020\u0000H\u0087\b\u001a\r\u0010\u0012\u001a\u00020\u0003*\u00020\u0000H\u0087\b\u001a\r\u0010\u0013\u001a\u00020\u0003*\u00020\u0000H\u0087\b\u001a \u0010\u0014\u001a\u00020\u0003*\u0004\u0018\u00010\u0000H\u0087\b\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010\u0000\u001a\r\u0010\u0016\u001a\u00020\u0015*\u00020\u0000H\u0086\u0002\u001a\u000f\u0010\u0017\u001a\u00020\u0006*\u0004\u0018\u00010\u0006H\u0087\b\u001a9\u0010\u001c\u001a\u00028\u0001\"\f\b\u0000\u0010\u0018*\u00020\u0000*\u00028\u0001\"\u0004\b\u0001\u0010\u0019*\u00028\u00002\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00010\u001aH\u0087\bø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001d\u001a9\u0010\u001e\u001a\u00028\u0001\"\f\b\u0000\u0010\u0018*\u00020\u0000*\u00028\u0001\"\u0004\b\u0001\u0010\u0019*\u00028\u00002\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00010\u001aH\u0087\bø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u001d\u001a\u0012\u0010 \u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u000b\u001a\u0012\u0010#\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\"\u001a\u00020!\u001a\u0012\u0010$\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\"\u001a\u00020!\u001a\u001d\u0010$\u001a\u00020\u0000*\u00020\u00062\u0006\u0010%\u001a\u00020\u000b2\u0006\u0010&\u001a\u00020\u000bH\u0087\b\u001a\u001f\u0010#\u001a\u00020\u0006*\u00020\u00002\u0006\u0010'\u001a\u00020\u000b2\b\b\u0002\u0010(\u001a\u00020\u000bH\u0087\b\u001a\u0012\u0010#\u001a\u00020\u0006*\u00020\u00002\u0006\u0010\"\u001a\u00020!\u001a\u001c\u0010+\u001a\u00020\u0006*\u00020\u00062\u0006\u0010)\u001a\u00020\u00022\b\b\u0002\u0010*\u001a\u00020\u0006\u001a\u001c\u0010+\u001a\u00020\u0006*\u00020\u00062\u0006\u0010)\u001a\u00020\u00062\b\b\u0002\u0010*\u001a\u00020\u0006\u001a\u001c\u0010,\u001a\u00020\u0006*\u00020\u00062\u0006\u0010)\u001a\u00020\u00022\b\b\u0002\u0010*\u001a\u00020\u0006\u001a\u001c\u0010,\u001a\u00020\u0006*\u00020\u00062\u0006\u0010)\u001a\u00020\u00062\b\b\u0002\u0010*\u001a\u00020\u0006\u001a\u001c\u0010-\u001a\u00020\u0006*\u00020\u00062\u0006\u0010)\u001a\u00020\u00022\b\b\u0002\u0010*\u001a\u00020\u0006\u001a\u001c\u0010-\u001a\u00020\u0006*\u00020\u00062\u0006\u0010)\u001a\u00020\u00062\b\b\u0002\u0010*\u001a\u00020\u0006\u001a\u001c\u0010.\u001a\u00020\u0006*\u00020\u00062\u0006\u0010)\u001a\u00020\u00022\b\b\u0002\u0010*\u001a\u00020\u0006\u001a\u001c\u0010.\u001a\u00020\u0006*\u00020\u00062\u0006\u0010)\u001a\u00020\u00062\b\b\u0002\u0010*\u001a\u00020\u0006\u001a\"\u00100\u001a\u00020\u0000*\u00020\u00002\u0006\u0010'\u001a\u00020\u000b2\u0006\u0010(\u001a\u00020\u000b2\u0006\u0010/\u001a\u00020\u0000\u001a%\u00100\u001a\u00020\u0006*\u00020\u00062\u0006\u0010'\u001a\u00020\u000b2\u0006\u0010(\u001a\u00020\u000b2\u0006\u0010/\u001a\u00020\u0000H\u0087\b\u001a\u001a\u00100\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\"\u001a\u00020!2\u0006\u0010/\u001a\u00020\u0000\u001a\u001d\u00100\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\"\u001a\u00020!2\u0006\u0010/\u001a\u00020\u0000H\u0087\b\u001a\u001a\u00101\u001a\u00020\u0000*\u00020\u00002\u0006\u0010'\u001a\u00020\u000b2\u0006\u0010(\u001a\u00020\u000b\u001a\u001d\u00101\u001a\u00020\u0006*\u00020\u00062\u0006\u0010'\u001a\u00020\u000b2\u0006\u0010(\u001a\u00020\u000bH\u0087\b\u001a\u0012\u00101\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\"\u001a\u00020!\u001a\u0015\u00101\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\"\u001a\u00020!H\u0087\b\u001a\u0012\u00103\u001a\u00020\u0000*\u00020\u00002\u0006\u00102\u001a\u00020\u0000\u001a\u0012\u00103\u001a\u00020\u0006*\u00020\u00062\u0006\u00102\u001a\u00020\u0000\u001a\u0012\u00105\u001a\u00020\u0000*\u00020\u00002\u0006\u00104\u001a\u00020\u0000\u001a\u0012\u00105\u001a\u00020\u0006*\u00020\u00062\u0006\u00104\u001a\u00020\u0000\u001a\u001a\u00106\u001a\u00020\u0000*\u00020\u00002\u0006\u00102\u001a\u00020\u00002\u0006\u00104\u001a\u00020\u0000\u001a\u001a\u00106\u001a\u00020\u0006*\u00020\u00062\u0006\u00102\u001a\u00020\u00002\u0006\u00104\u001a\u00020\u0000\u001a\u0012\u00106\u001a\u00020\u0000*\u00020\u00002\u0006\u0010)\u001a\u00020\u0000\u001a\u0012\u00106\u001a\u00020\u0006*\u00020\u00062\u0006\u0010)\u001a\u00020\u0000\u001a$\u00107\u001a\u00020\u0006*\u00020\u00062\u0006\u0010)\u001a\u00020\u00022\u0006\u0010/\u001a\u00020\u00062\b\b\u0002\u0010*\u001a\u00020\u0006\u001a$\u00107\u001a\u00020\u0006*\u00020\u00062\u0006\u0010)\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\u00062\b\b\u0002\u0010*\u001a\u00020\u0006\u001a$\u00108\u001a\u00020\u0006*\u00020\u00062\u0006\u0010)\u001a\u00020\u00022\u0006\u0010/\u001a\u00020\u00062\b\b\u0002\u0010*\u001a\u00020\u0006\u001a$\u00108\u001a\u00020\u0006*\u00020\u00062\u0006\u0010)\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\u00062\b\b\u0002\u0010*\u001a\u00020\u0006\u001a$\u00109\u001a\u00020\u0006*\u00020\u00062\u0006\u0010)\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\u00062\b\b\u0002\u0010*\u001a\u00020\u0006\u001a$\u00109\u001a\u00020\u0006*\u00020\u00062\u0006\u0010)\u001a\u00020\u00022\u0006\u0010/\u001a\u00020\u00062\b\b\u0002\u0010*\u001a\u00020\u0006\u001a$\u0010:\u001a\u00020\u0006*\u00020\u00062\u0006\u0010)\u001a\u00020\u00022\u0006\u0010/\u001a\u00020\u00062\b\b\u0002\u0010*\u001a\u00020\u0006\u001a$\u0010:\u001a\u00020\u0006*\u00020\u00062\u0006\u0010)\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\u00062\b\b\u0002\u0010*\u001a\u00020\u0006\u001a\u001d\u0010=\u001a\u00020\u0006*\u00020\u00002\u0006\u0010<\u001a\u00020;2\u0006\u0010/\u001a\u00020\u0006H\u0087\b\u001a.\u0010=\u001a\u00020\u0006*\u00020\u00002\u0006\u0010<\u001a\u00020;2\u0014\b\b\u0010?\u001a\u000e\u0012\u0004\u0012\u00020>\u0012\u0004\u0012\u00020\u00000\u0001H\u0087\bø\u0001\u0000\u001a\u001d\u0010@\u001a\u00020\u0006*\u00020\u00002\u0006\u0010<\u001a\u00020;2\u0006\u0010/\u001a\u00020\u0006H\u0087\b\u001a+\u0010C\u001a\u00020\u0006*\u00020\u00062\u0012\u0010?\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001H\u0087\bø\u0001\u0000¢\u0006\u0004\bA\u0010B\u001a+\u0010C\u001a\u00020\u0006*\u00020\u00062\u0012\u0010?\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001H\u0087\bø\u0001\u0000¢\u0006\u0004\bD\u0010B\u001a\u0015\u0010E\u001a\u00020\u0003*\u00020\u00002\u0006\u0010<\u001a\u00020;H\u0087\f\u001a4\u0010J\u001a\u00020\u0003*\u00020\u00002\u0006\u0010F\u001a\u00020\u000b2\u0006\u0010G\u001a\u00020\u00002\u0006\u0010H\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010I\u001a\u00020\u0003H\u0000\u001a\u001c\u0010L\u001a\u00020\u0003*\u00020\u00002\u0006\u0010K\u001a\u00020\u00022\b\b\u0002\u0010I\u001a\u00020\u0003\u001a\u001c\u0010M\u001a\u00020\u0003*\u00020\u00002\u0006\u0010K\u001a\u00020\u00022\b\b\u0002\u0010I\u001a\u00020\u0003\u001a\u001c\u0010L\u001a\u00020\u0003*\u00020\u00002\u0006\u00102\u001a\u00020\u00002\b\b\u0002\u0010I\u001a\u00020\u0003\u001a$\u0010L\u001a\u00020\u0003*\u00020\u00002\u0006\u00102\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\u000b2\b\b\u0002\u0010I\u001a\u00020\u0003\u001a\u001c\u0010M\u001a\u00020\u0003*\u00020\u00002\u0006\u00104\u001a\u00020\u00002\b\b\u0002\u0010I\u001a\u00020\u0003\u001a\u001c\u0010N\u001a\u00020\u0006*\u00020\u00002\u0006\u0010G\u001a\u00020\u00002\b\b\u0002\u0010I\u001a\u00020\u0003\u001a\u001c\u0010O\u001a\u00020\u0006*\u00020\u00002\u0006\u0010G\u001a\u00020\u00002\b\b\u0002\u0010I\u001a\u00020\u0003\u001a&\u0010P\u001a\u00020\u000b*\u00020\u00002\u0006\u0010\n\u001a\u00020\t2\b\b\u0002\u0010'\u001a\u00020\u000b2\b\b\u0002\u0010I\u001a\u00020\u0003\u001a&\u0010Q\u001a\u00020\u000b*\u00020\u00002\u0006\u0010\n\u001a\u00020\t2\b\b\u0002\u0010'\u001a\u00020\u000b2\b\b\u0002\u0010I\u001a\u00020\u0003\u001a=\u0010U\u001a\u00020\u000b*\u00020\u00002\u0006\u0010G\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\u000b2\u0006\u0010(\u001a\u00020\u000b2\u0006\u0010I\u001a\u00020\u00032\b\b\u0002\u0010R\u001a\u00020\u0003H\u0002¢\u0006\u0004\bS\u0010T\u001aG\u0010[\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0006\u0018\u00010X*\u00020\u00002\f\u0010W\u001a\b\u0012\u0004\u0012\u00020\u00060V2\u0006\u0010'\u001a\u00020\u000b2\u0006\u0010I\u001a\u00020\u00032\u0006\u0010R\u001a\u00020\u0003H\u0002¢\u0006\u0004\bY\u0010Z\u001a:\u0010[\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0006\u0018\u00010X*\u00020\u00002\f\u0010W\u001a\b\u0012\u0004\u0012\u00020\u00060V2\b\b\u0002\u0010'\u001a\u00020\u000b2\b\b\u0002\u0010I\u001a\u00020\u0003\u001a:\u0010\\\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0006\u0018\u00010X*\u00020\u00002\f\u0010W\u001a\b\u0012\u0004\u0012\u00020\u00060V2\b\b\u0002\u0010'\u001a\u00020\u000b2\b\b\u0002\u0010I\u001a\u00020\u0003\u001a,\u0010P\u001a\u00020\u000b*\u00020\u00002\f\u0010W\u001a\b\u0012\u0004\u0012\u00020\u00060V2\b\b\u0002\u0010'\u001a\u00020\u000b2\b\b\u0002\u0010I\u001a\u00020\u0003\u001a,\u0010Q\u001a\u00020\u000b*\u00020\u00002\f\u0010W\u001a\b\u0012\u0004\u0012\u00020\u00060V2\b\b\u0002\u0010'\u001a\u00020\u000b2\b\b\u0002\u0010I\u001a\u00020\u0003\u001a&\u0010U\u001a\u00020\u000b*\u00020\u00002\u0006\u0010K\u001a\u00020\u00022\b\b\u0002\u0010'\u001a\u00020\u000b2\b\b\u0002\u0010I\u001a\u00020\u0003\u001a&\u0010U\u001a\u00020\u000b*\u00020\u00002\u0006\u0010]\u001a\u00020\u00062\b\b\u0002\u0010'\u001a\u00020\u000b2\b\b\u0002\u0010I\u001a\u00020\u0003\u001a&\u0010^\u001a\u00020\u000b*\u00020\u00002\u0006\u0010K\u001a\u00020\u00022\b\b\u0002\u0010'\u001a\u00020\u000b2\b\b\u0002\u0010I\u001a\u00020\u0003\u001a&\u0010^\u001a\u00020\u000b*\u00020\u00002\u0006\u0010]\u001a\u00020\u00062\b\b\u0002\u0010'\u001a\u00020\u000b2\b\b\u0002\u0010I\u001a\u00020\u0003\u001a\u001f\u0010_\u001a\u00020\u0003*\u00020\u00002\u0006\u0010G\u001a\u00020\u00002\b\b\u0002\u0010I\u001a\u00020\u0003H\u0086\u0002\u001a\u001f\u0010_\u001a\u00020\u0003*\u00020\u00002\u0006\u0010K\u001a\u00020\u00022\b\b\u0002\u0010I\u001a\u00020\u0003H\u0086\u0002\u001a\u0015\u0010_\u001a\u00020\u0003*\u00020\u00002\u0006\u0010<\u001a\u00020;H\u0087\n\u001a?\u0010e\u001a\b\u0012\u0004\u0012\u00020!0b*\u00020\u00002\u0006\u0010`\u001a\u00020\t2\b\b\u0002\u0010'\u001a\u00020\u000b2\b\b\u0002\u0010I\u001a\u00020\u00032\b\b\u0002\u0010a\u001a\u00020\u000bH\u0002¢\u0006\u0004\bc\u0010d\u001aG\u0010e\u001a\b\u0012\u0004\u0012\u00020!0b*\u00020\u00002\u000e\u0010`\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060f2\b\b\u0002\u0010'\u001a\u00020\u000b2\b\b\u0002\u0010I\u001a\u00020\u00032\b\b\u0002\u0010a\u001a\u00020\u000bH\u0002¢\u0006\u0004\bc\u0010g\u001a?\u0010h\u001a\b\u0012\u0004\u0012\u00020\u00060b*\u00020\u00002\u0012\u0010`\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060f\"\u00020\u00062\b\b\u0002\u0010I\u001a\u00020\u00032\b\b\u0002\u0010a\u001a\u00020\u000b¢\u0006\u0004\bh\u0010i\u001a?\u0010k\u001a\b\u0012\u0004\u0012\u00020\u00060j*\u00020\u00002\u0012\u0010`\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060f\"\u00020\u00062\b\b\u0002\u0010I\u001a\u00020\u00032\b\b\u0002\u0010a\u001a\u00020\u000b¢\u0006\u0004\bk\u0010l\u001a0\u0010h\u001a\b\u0012\u0004\u0012\u00020\u00060b*\u00020\u00002\n\u0010`\u001a\u00020\t\"\u00020\u00022\b\b\u0002\u0010I\u001a\u00020\u00032\b\b\u0002\u0010a\u001a\u00020\u000b\u001a0\u0010k\u001a\b\u0012\u0004\u0012\u00020\u00060j*\u00020\u00002\n\u0010`\u001a\u00020\t\"\u00020\u00022\b\b\u0002\u0010I\u001a\u00020\u00032\b\b\u0002\u0010a\u001a\u00020\u000b\u001a1\u0010k\u001a\b\u0012\u0004\u0012\u00020\u00060j*\u00020\u00002\u0006\u0010)\u001a\u00020\u00062\u0006\u0010I\u001a\u00020\u00032\u0006\u0010a\u001a\u00020\u000bH\u0002¢\u0006\u0004\bm\u0010n\u001a%\u0010k\u001a\b\u0012\u0004\u0012\u00020\u00060j*\u00020\u00002\u0006\u0010<\u001a\u00020;2\b\b\u0002\u0010a\u001a\u00020\u000bH\u0087\b\u001a\u0010\u0010o\u001a\b\u0012\u0004\u0012\u00020\u00060b*\u00020\u0000\u001a\u0010\u0010p\u001a\b\u0012\u0004\u0012\u00020\u00060j*\u00020\u0000\u001a\u0018\u0010q\u001a\u00020\u0003*\u0004\u0018\u00010\u00002\b\u0010G\u001a\u0004\u0018\u00010\u0000H\u0000\u001a\u0018\u0010r\u001a\u00020\u0003*\u0004\u0018\u00010\u00002\b\u0010G\u001a\u0004\u0018\u00010\u0000H\u0000\u001a\f\u0010s\u001a\u00020\u0003*\u00020\u0006H\u0007\u001a\u0015\u0010t\u001a\u0004\u0018\u00010\u0003*\u00020\u0006H\u0007¢\u0006\u0004\bt\u0010u\"\u0017\u0010x\u001a\u00020\u000b*\u00020\u00008F@\u0006¢\u0006\u0006\u001a\u0004\bv\u0010w\"\u0017\u0010{\u001a\u00020!*\u00020\u00008F@\u0006¢\u0006\u0006\u001a\u0004\by\u0010z\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006|"}, d2 = {"", "Lkotlin/Function1;", "", "", "predicate", "trim", "", "trimStart", "trimEnd", "", "chars", "", "length", "padChar", "padStart", "padEnd", "isNullOrEmpty", "isEmpty", "isNotEmpty", "isNotBlank", "isNullOrBlank", "Lkotlin/collections/CharIterator;", "iterator", "orEmpty", "C", "R", "Lkotlin/Function0;", "defaultValue", "ifEmpty", "(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "ifBlank", "index", "hasSurrogatePairAt", "Lkotlin/ranges/IntRange;", "range", "substring", "subSequence", "start", "end", "startIndex", "endIndex", "delimiter", "missingDelimiterValue", "substringBefore", "substringAfter", "substringBeforeLast", "substringAfterLast", "replacement", "replaceRange", "removeRange", "prefix", "removePrefix", "suffix", "removeSuffix", "removeSurrounding", "replaceBefore", "replaceAfter", "replaceAfterLast", "replaceBeforeLast", "Lkotlin/text/Regex;", "regex", "replace", "Lkotlin/text/MatchResult;", "transform", "replaceFirst", "replaceFirstCharWithChar", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;", "replaceFirstChar", "replaceFirstCharWithCharSequence", "matches", "thisOffset", "other", "otherOffset", "ignoreCase", "regionMatchesImpl", MethodReflectParams.CHAR, "startsWith", "endsWith", "commonPrefixWith", "commonSuffixWith", "indexOfAny", "lastIndexOfAny", "last", "indexOf$StringsKt__StringsKt", "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I", "indexOf", "", "strings", "Lkotlin/Pair;", "findAnyOf$StringsKt__StringsKt", "(Ljava/lang/CharSequence;Ljava/util/Collection;IZZ)Lkotlin/Pair;", "findAnyOf", "findLastAnyOf", TypedValues.Custom.S_STRING, "lastIndexOf", "contains", "delimiters", "limit", "Lkotlin/sequences/Sequence;", "rangesDelimitedBy$StringsKt__StringsKt", "(Ljava/lang/CharSequence;[CIZI)Lkotlin/sequences/Sequence;", "rangesDelimitedBy", "", "(Ljava/lang/CharSequence;[Ljava/lang/String;IZI)Lkotlin/sequences/Sequence;", "splitToSequence", "(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lkotlin/sequences/Sequence;", "", "split", "(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Ljava/util/List;", "split$StringsKt__StringsKt", "(Ljava/lang/CharSequence;Ljava/lang/String;ZI)Ljava/util/List;", "lineSequence", "lines", "contentEqualsIgnoreCaseImpl", "contentEqualsImpl", "toBooleanStrict", "toBooleanStrictOrNull", "(Ljava/lang/String;)Ljava/lang/Boolean;", "getLastIndex", "(Ljava/lang/CharSequence;)I", "lastIndex", "getIndices", "(Ljava/lang/CharSequence;)Lkotlin/ranges/IntRange;", "indices", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/text/StringsKt")
/* loaded from: classes.dex */
public class StringsKt__StringsKt extends StringsKt__StringsJVMKt {
    @NotNull
    public static final String commonPrefixWith(@NotNull CharSequence commonPrefixWith, @NotNull CharSequence other, boolean z3) {
        Intrinsics.checkNotNullParameter(commonPrefixWith, "$this$commonPrefixWith");
        Intrinsics.checkNotNullParameter(other, "other");
        int min = Math.min(commonPrefixWith.length(), other.length());
        int i2 = 0;
        while (i2 < min && CharsKt__CharKt.equals(commonPrefixWith.charAt(i2), other.charAt(i2), z3)) {
            i2++;
        }
        int i4 = i2 - 1;
        if (hasSurrogatePairAt(commonPrefixWith, i4) || hasSurrogatePairAt(other, i4)) {
            i2--;
        }
        return commonPrefixWith.subSequence(0, i2).toString();
    }

    public static /* synthetic */ String commonPrefixWith$default(CharSequence charSequence, CharSequence charSequence2, boolean z3, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z3 = false;
        }
        return commonPrefixWith(charSequence, charSequence2, z3);
    }

    @NotNull
    public static final String commonSuffixWith(@NotNull CharSequence commonSuffixWith, @NotNull CharSequence other, boolean z3) {
        int length;
        Intrinsics.checkNotNullParameter(commonSuffixWith, "$this$commonSuffixWith");
        Intrinsics.checkNotNullParameter(other, "other");
        int length2 = commonSuffixWith.length();
        int min = Math.min(length2, other.length());
        int i2 = 0;
        while (i2 < min && CharsKt__CharKt.equals(commonSuffixWith.charAt((length2 - i2) - 1), other.charAt((length - i2) - 1), z3)) {
            i2++;
        }
        if (hasSurrogatePairAt(commonSuffixWith, (length2 - i2) - 1) || hasSurrogatePairAt(other, (length - i2) - 1)) {
            i2--;
        }
        return commonSuffixWith.subSequence(length2 - i2, length2).toString();
    }

    public static /* synthetic */ String commonSuffixWith$default(CharSequence charSequence, CharSequence charSequence2, boolean z3, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z3 = false;
        }
        return commonSuffixWith(charSequence, charSequence2, z3);
    }

    public static final boolean contains(@NotNull CharSequence contains, @NotNull CharSequence other, boolean z3) {
        int indexOf$default;
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        Intrinsics.checkNotNullParameter(other, "other");
        if (other instanceof String) {
            indexOf$default = indexOf$default(contains, (String) other, 0, z3, 2, (Object) null);
            if (indexOf$default >= 0) {
                return true;
            }
        } else if (indexOf$StringsKt__StringsKt$default(contains, other, 0, contains.length(), z3, false, 16, null) >= 0) {
            return true;
        }
        return false;
    }

    public static /* synthetic */ boolean contains$default(CharSequence charSequence, CharSequence charSequence2, boolean z3, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z3 = false;
        }
        return contains(charSequence, charSequence2, z3);
    }

    public static final boolean contentEqualsIgnoreCaseImpl(@Nullable CharSequence charSequence, @Nullable CharSequence charSequence2) {
        boolean equals;
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            equals = StringsKt__StringsJVMKt.equals((String) charSequence, (String) charSequence2, true);
            return equals;
        } else if (charSequence == charSequence2) {
            return true;
        } else {
            if (charSequence == null || charSequence2 == null || charSequence.length() != charSequence2.length()) {
                return false;
            }
            int length = charSequence.length();
            for (int i2 = 0; i2 < length; i2++) {
                if (!CharsKt__CharKt.equals(charSequence.charAt(i2), charSequence2.charAt(i2), true)) {
                    return false;
                }
            }
            return true;
        }
    }

    public static final boolean contentEqualsImpl(@Nullable CharSequence charSequence, @Nullable CharSequence charSequence2) {
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            return Intrinsics.areEqual(charSequence, charSequence2);
        }
        if (charSequence == charSequence2) {
            return true;
        }
        if (charSequence == null || charSequence2 == null || charSequence.length() != charSequence2.length()) {
            return false;
        }
        int length = charSequence.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (charSequence.charAt(i2) != charSequence2.charAt(i2)) {
                return false;
            }
        }
        return true;
    }

    public static final boolean endsWith(@NotNull CharSequence endsWith, char c4, boolean z3) {
        Intrinsics.checkNotNullParameter(endsWith, "$this$endsWith");
        return endsWith.length() > 0 && CharsKt__CharKt.equals(endsWith.charAt(getLastIndex(endsWith)), c4, z3);
    }

    public static /* synthetic */ boolean endsWith$default(CharSequence charSequence, char c4, boolean z3, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z3 = false;
        }
        return endsWith(charSequence, c4, z3);
    }

    @Nullable
    public static final Pair<Integer, String> findAnyOf(@NotNull CharSequence findAnyOf, @NotNull Collection<String> strings, int i2, boolean z3) {
        Intrinsics.checkNotNullParameter(findAnyOf, "$this$findAnyOf");
        Intrinsics.checkNotNullParameter(strings, "strings");
        return findAnyOf$StringsKt__StringsKt(findAnyOf, strings, i2, z3, false);
    }

    public static final Pair<Integer, String> findAnyOf$StringsKt__StringsKt(CharSequence charSequence, Collection<String> collection, int i2, boolean z3, boolean z4) {
        int coerceAtMost;
        IntProgression downTo;
        Object obj;
        Object obj2;
        int coerceAtLeast;
        if (!z3 && collection.size() == 1) {
            String str = (String) CollectionsKt.single(collection);
            int indexOf$default = !z4 ? indexOf$default(charSequence, str, i2, false, 4, (Object) null) : lastIndexOf$default(charSequence, str, i2, false, 4, (Object) null);
            if (indexOf$default < 0) {
                return null;
            }
            return TuplesKt.to(Integer.valueOf(indexOf$default), str);
        }
        if (z4) {
            coerceAtMost = RangesKt___RangesKt.coerceAtMost(i2, getLastIndex(charSequence));
            downTo = RangesKt___RangesKt.downTo(coerceAtMost, 0);
        } else {
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(i2, 0);
            downTo = new IntRange(coerceAtLeast, charSequence.length());
        }
        if (charSequence instanceof String) {
            int first = downTo.getFirst();
            int last = downTo.getLast();
            int step = downTo.getStep();
            if (step < 0 ? first >= last : first <= last) {
                while (true) {
                    Iterator<T> it2 = collection.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            obj2 = null;
                            break;
                        }
                        obj2 = it2.next();
                        String str2 = (String) obj2;
                        if (StringsKt__StringsJVMKt.regionMatches(str2, 0, (String) charSequence, first, str2.length(), z3)) {
                            break;
                        }
                    }
                    String str3 = (String) obj2;
                    if (str3 == null) {
                        if (first == last) {
                            break;
                        }
                        first += step;
                    } else {
                        return TuplesKt.to(Integer.valueOf(first), str3);
                    }
                }
            }
        } else {
            int first2 = downTo.getFirst();
            int last2 = downTo.getLast();
            int step2 = downTo.getStep();
            if (step2 < 0 ? first2 >= last2 : first2 <= last2) {
                while (true) {
                    Iterator<T> it3 = collection.iterator();
                    while (true) {
                        if (!it3.hasNext()) {
                            obj = null;
                            break;
                        }
                        obj = it3.next();
                        String str4 = (String) obj;
                        if (regionMatchesImpl(str4, 0, charSequence, first2, str4.length(), z3)) {
                            break;
                        }
                    }
                    String str5 = (String) obj;
                    if (str5 == null) {
                        if (first2 == last2) {
                            break;
                        }
                        first2 += step2;
                    } else {
                        return TuplesKt.to(Integer.valueOf(first2), str5);
                    }
                }
            }
        }
        return null;
    }

    public static /* synthetic */ Pair findAnyOf$default(CharSequence charSequence, Collection collection, int i2, boolean z3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        if ((i4 & 4) != 0) {
            z3 = false;
        }
        return findAnyOf(charSequence, collection, i2, z3);
    }

    @Nullable
    public static final Pair<Integer, String> findLastAnyOf(@NotNull CharSequence findLastAnyOf, @NotNull Collection<String> strings, int i2, boolean z3) {
        Intrinsics.checkNotNullParameter(findLastAnyOf, "$this$findLastAnyOf");
        Intrinsics.checkNotNullParameter(strings, "strings");
        return findAnyOf$StringsKt__StringsKt(findLastAnyOf, strings, i2, z3, true);
    }

    public static /* synthetic */ Pair findLastAnyOf$default(CharSequence charSequence, Collection collection, int i2, boolean z3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = getLastIndex(charSequence);
        }
        if ((i4 & 4) != 0) {
            z3 = false;
        }
        return findLastAnyOf(charSequence, collection, i2, z3);
    }

    @NotNull
    public static final IntRange getIndices(@NotNull CharSequence indices) {
        Intrinsics.checkNotNullParameter(indices, "$this$indices");
        return new IntRange(0, indices.length() - 1);
    }

    public static final int getLastIndex(@NotNull CharSequence lastIndex) {
        Intrinsics.checkNotNullParameter(lastIndex, "$this$lastIndex");
        return lastIndex.length() - 1;
    }

    public static final boolean hasSurrogatePairAt(@NotNull CharSequence hasSurrogatePairAt, int i2) {
        Intrinsics.checkNotNullParameter(hasSurrogatePairAt, "$this$hasSurrogatePairAt");
        return i2 >= 0 && hasSurrogatePairAt.length() + (-2) >= i2 && Character.isHighSurrogate(hasSurrogatePairAt.charAt(i2)) && Character.isLowSurrogate(hasSurrogatePairAt.charAt(i2 + 1));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <C extends CharSequence & R, R> R ifBlank(C c4, Function0<? extends R> function0) {
        return StringsKt__StringsJVMKt.isBlank(c4) ? function0.invoke() : c4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <C extends CharSequence & R, R> R ifEmpty(C c4, Function0<? extends R> function0) {
        return c4.length() == 0 ? function0.invoke() : c4;
    }

    public static final int indexOf(@NotNull CharSequence indexOf, char c4, int i2, boolean z3) {
        Intrinsics.checkNotNullParameter(indexOf, "$this$indexOf");
        if (!z3 && (indexOf instanceof String)) {
            return ((String) indexOf).indexOf(c4, i2);
        }
        return indexOfAny(indexOf, new char[]{c4}, i2, z3);
    }

    private static final int indexOf$StringsKt__StringsKt(CharSequence charSequence, CharSequence charSequence2, int i2, int i4, boolean z3, boolean z4) {
        int coerceAtMost;
        int coerceAtLeast;
        IntProgression downTo;
        int coerceAtLeast2;
        int coerceAtMost2;
        if (!z4) {
            coerceAtLeast2 = RangesKt___RangesKt.coerceAtLeast(i2, 0);
            coerceAtMost2 = RangesKt___RangesKt.coerceAtMost(i4, charSequence.length());
            downTo = new IntRange(coerceAtLeast2, coerceAtMost2);
        } else {
            coerceAtMost = RangesKt___RangesKt.coerceAtMost(i2, getLastIndex(charSequence));
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(i4, 0);
            downTo = RangesKt___RangesKt.downTo(coerceAtMost, coerceAtLeast);
        }
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            int first = downTo.getFirst();
            int last = downTo.getLast();
            int step = downTo.getStep();
            if (step >= 0) {
                if (first > last) {
                    return -1;
                }
            } else if (first < last) {
                return -1;
            }
            while (!StringsKt__StringsJVMKt.regionMatches((String) charSequence2, 0, (String) charSequence, first, charSequence2.length(), z3)) {
                if (first == last) {
                    return -1;
                }
                first += step;
            }
            return first;
        }
        int first2 = downTo.getFirst();
        int last2 = downTo.getLast();
        int step2 = downTo.getStep();
        if (step2 >= 0) {
            if (first2 > last2) {
                return -1;
            }
        } else if (first2 < last2) {
            return -1;
        }
        while (!regionMatchesImpl(charSequence2, 0, charSequence, first2, charSequence2.length(), z3)) {
            if (first2 == last2) {
                return -1;
            }
            first2 += step2;
        }
        return first2;
    }

    static /* synthetic */ int indexOf$StringsKt__StringsKt$default(CharSequence charSequence, CharSequence charSequence2, int i2, int i4, boolean z3, boolean z4, int i5, Object obj) {
        return indexOf$StringsKt__StringsKt(charSequence, charSequence2, i2, i4, z3, (i5 & 16) != 0 ? false : z4);
    }

    public static /* synthetic */ int indexOf$default(CharSequence charSequence, char c4, int i2, boolean z3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        if ((i4 & 4) != 0) {
            z3 = false;
        }
        return indexOf(charSequence, c4, i2, z3);
    }

    public static final int indexOfAny(@NotNull CharSequence indexOfAny, @NotNull char[] chars, int i2, boolean z3) {
        int coerceAtLeast;
        boolean z4;
        char single;
        Intrinsics.checkNotNullParameter(indexOfAny, "$this$indexOfAny");
        Intrinsics.checkNotNullParameter(chars, "chars");
        if (!z3 && chars.length == 1 && (indexOfAny instanceof String)) {
            single = ArraysKt___ArraysKt.single(chars);
            return ((String) indexOfAny).indexOf(single, i2);
        }
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(i2, 0);
        int lastIndex = getLastIndex(indexOfAny);
        if (coerceAtLeast > lastIndex) {
            return -1;
        }
        while (true) {
            char charAt = indexOfAny.charAt(coerceAtLeast);
            int length = chars.length;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    z4 = false;
                    break;
                } else if (CharsKt__CharKt.equals(chars[i4], charAt, z3)) {
                    z4 = true;
                    break;
                } else {
                    i4++;
                }
            }
            if (z4) {
                return coerceAtLeast;
            }
            if (coerceAtLeast == lastIndex) {
                return -1;
            }
            coerceAtLeast++;
        }
    }

    public static /* synthetic */ int indexOfAny$default(CharSequence charSequence, char[] cArr, int i2, boolean z3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        if ((i4 & 4) != 0) {
            z3 = false;
        }
        return indexOfAny(charSequence, cArr, i2, z3);
    }

    @InlineOnly
    private static final boolean isEmpty(CharSequence charSequence) {
        return charSequence.length() == 0;
    }

    @InlineOnly
    private static final boolean isNotBlank(CharSequence charSequence) {
        return !StringsKt__StringsJVMKt.isBlank(charSequence);
    }

    @InlineOnly
    private static final boolean isNotEmpty(CharSequence charSequence) {
        return charSequence.length() > 0;
    }

    @InlineOnly
    private static final boolean isNullOrBlank(CharSequence charSequence) {
        return charSequence == null || StringsKt__StringsJVMKt.isBlank(charSequence);
    }

    @InlineOnly
    private static final boolean isNullOrEmpty(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    @NotNull
    public static final CharIterator iterator(@NotNull final CharSequence iterator) {
        Intrinsics.checkNotNullParameter(iterator, "$this$iterator");
        return new CharIterator() { // from class: kotlin.text.StringsKt__StringsKt$iterator$1
            private int index;

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < iterator.length();
            }

            @Override // kotlin.collections.CharIterator
            public char nextChar() {
                CharSequence charSequence = iterator;
                int i2 = this.index;
                this.index = i2 + 1;
                return charSequence.charAt(i2);
            }
        };
    }

    public static final int lastIndexOf(@NotNull CharSequence lastIndexOf, char c4, int i2, boolean z3) {
        Intrinsics.checkNotNullParameter(lastIndexOf, "$this$lastIndexOf");
        if (!z3 && (lastIndexOf instanceof String)) {
            return ((String) lastIndexOf).lastIndexOf(c4, i2);
        }
        return lastIndexOfAny(lastIndexOf, new char[]{c4}, i2, z3);
    }

    public static /* synthetic */ int lastIndexOf$default(CharSequence charSequence, char c4, int i2, boolean z3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = getLastIndex(charSequence);
        }
        if ((i4 & 4) != 0) {
            z3 = false;
        }
        return lastIndexOf(charSequence, c4, i2, z3);
    }

    public static final int lastIndexOfAny(@NotNull CharSequence lastIndexOfAny, @NotNull char[] chars, int i2, boolean z3) {
        int coerceAtMost;
        char single;
        Intrinsics.checkNotNullParameter(lastIndexOfAny, "$this$lastIndexOfAny");
        Intrinsics.checkNotNullParameter(chars, "chars");
        if (!z3 && chars.length == 1 && (lastIndexOfAny instanceof String)) {
            single = ArraysKt___ArraysKt.single(chars);
            return ((String) lastIndexOfAny).lastIndexOf(single, i2);
        }
        for (coerceAtMost = RangesKt___RangesKt.coerceAtMost(i2, getLastIndex(lastIndexOfAny)); coerceAtMost >= 0; coerceAtMost--) {
            char charAt = lastIndexOfAny.charAt(coerceAtMost);
            int length = chars.length;
            boolean z4 = false;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    break;
                } else if (CharsKt__CharKt.equals(chars[i4], charAt, z3)) {
                    z4 = true;
                    break;
                } else {
                    i4++;
                }
            }
            if (z4) {
                return coerceAtMost;
            }
        }
        return -1;
    }

    public static /* synthetic */ int lastIndexOfAny$default(CharSequence charSequence, char[] cArr, int i2, boolean z3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = getLastIndex(charSequence);
        }
        if ((i4 & 4) != 0) {
            z3 = false;
        }
        return lastIndexOfAny(charSequence, cArr, i2, z3);
    }

    @NotNull
    public static final Sequence<String> lineSequence(@NotNull CharSequence lineSequence) {
        Intrinsics.checkNotNullParameter(lineSequence, "$this$lineSequence");
        return splitToSequence$default(lineSequence, new String[]{"\r\n", "\n", "\r"}, false, 0, 6, (Object) null);
    }

    @NotNull
    public static final List<String> lines(@NotNull CharSequence lines) {
        List<String> list;
        Intrinsics.checkNotNullParameter(lines, "$this$lines");
        list = SequencesKt___SequencesKt.toList(lineSequence(lines));
        return list;
    }

    @InlineOnly
    private static final boolean matches(CharSequence charSequence, Regex regex) {
        return regex.matches(charSequence);
    }

    @InlineOnly
    private static final String orEmpty(String str) {
        return str != null ? str : "";
    }

    @NotNull
    public static final CharSequence padEnd(@NotNull CharSequence padEnd, int i2, char c4) {
        Intrinsics.checkNotNullParameter(padEnd, "$this$padEnd");
        if (i2 >= 0) {
            if (i2 <= padEnd.length()) {
                return padEnd.subSequence(0, padEnd.length());
            }
            StringBuilder sb = new StringBuilder(i2);
            sb.append(padEnd);
            int length = i2 - padEnd.length();
            int i4 = 1;
            if (1 <= length) {
                while (true) {
                    sb.append(c4);
                    if (i4 == length) {
                        break;
                    }
                    i4++;
                }
            }
            return sb;
        }
        throw new IllegalArgumentException("Desired length " + i2 + " is less than zero.");
    }

    public static /* synthetic */ CharSequence padEnd$default(CharSequence charSequence, int i2, char c4, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            c4 = ' ';
        }
        return padEnd(charSequence, i2, c4);
    }

    @NotNull
    public static final CharSequence padStart(@NotNull CharSequence padStart, int i2, char c4) {
        Intrinsics.checkNotNullParameter(padStart, "$this$padStart");
        if (i2 >= 0) {
            if (i2 <= padStart.length()) {
                return padStart.subSequence(0, padStart.length());
            }
            StringBuilder sb = new StringBuilder(i2);
            int length = i2 - padStart.length();
            int i4 = 1;
            if (1 <= length) {
                while (true) {
                    sb.append(c4);
                    if (i4 == length) {
                        break;
                    }
                    i4++;
                }
            }
            sb.append(padStart);
            return sb;
        }
        throw new IllegalArgumentException("Desired length " + i2 + " is less than zero.");
    }

    public static /* synthetic */ CharSequence padStart$default(CharSequence charSequence, int i2, char c4, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            c4 = ' ';
        }
        return padStart(charSequence, i2, c4);
    }

    private static final Sequence<IntRange> rangesDelimitedBy$StringsKt__StringsKt(CharSequence charSequence, final char[] cArr, int i2, final boolean z3, int i4) {
        if (i4 >= 0) {
            return new DelimitedRangesSequence(charSequence, i2, i4, new Function2<CharSequence, Integer, Pair<? extends Integer, ? extends Integer>>() { // from class: kotlin.text.StringsKt__StringsKt$rangesDelimitedBy$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Pair<? extends Integer, ? extends Integer> invoke(CharSequence charSequence2, Integer num) {
                    return invoke(charSequence2, num.intValue());
                }

                @Nullable
                public final Pair<Integer, Integer> invoke(@NotNull CharSequence receiver, int i5) {
                    Intrinsics.checkNotNullParameter(receiver, "$receiver");
                    int indexOfAny = StringsKt__StringsKt.indexOfAny(receiver, cArr, i5, z3);
                    if (indexOfAny < 0) {
                        return null;
                    }
                    return TuplesKt.to(Integer.valueOf(indexOfAny), 1);
                }
            });
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i4 + d.f65364a).toString());
    }

    static /* synthetic */ Sequence rangesDelimitedBy$StringsKt__StringsKt$default(CharSequence charSequence, char[] cArr, int i2, boolean z3, int i4, int i5, Object obj) {
        if ((i5 & 2) != 0) {
            i2 = 0;
        }
        if ((i5 & 4) != 0) {
            z3 = false;
        }
        if ((i5 & 8) != 0) {
            i4 = 0;
        }
        return rangesDelimitedBy$StringsKt__StringsKt(charSequence, cArr, i2, z3, i4);
    }

    public static final boolean regionMatchesImpl(@NotNull CharSequence regionMatchesImpl, int i2, @NotNull CharSequence other, int i4, int i5, boolean z3) {
        Intrinsics.checkNotNullParameter(regionMatchesImpl, "$this$regionMatchesImpl");
        Intrinsics.checkNotNullParameter(other, "other");
        if (i4 < 0 || i2 < 0 || i2 > regionMatchesImpl.length() - i5 || i4 > other.length() - i5) {
            return false;
        }
        for (int i6 = 0; i6 < i5; i6++) {
            if (!CharsKt__CharKt.equals(regionMatchesImpl.charAt(i2 + i6), other.charAt(i4 + i6), z3)) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public static final CharSequence removePrefix(@NotNull CharSequence removePrefix, @NotNull CharSequence prefix) {
        Intrinsics.checkNotNullParameter(removePrefix, "$this$removePrefix");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        if (startsWith$default(removePrefix, prefix, false, 2, (Object) null)) {
            return removePrefix.subSequence(prefix.length(), removePrefix.length());
        }
        return removePrefix.subSequence(0, removePrefix.length());
    }

    @NotNull
    public static final CharSequence removeRange(@NotNull CharSequence removeRange, int i2, int i4) {
        Intrinsics.checkNotNullParameter(removeRange, "$this$removeRange");
        if (i4 < i2) {
            throw new IndexOutOfBoundsException("End index (" + i4 + ") is less than start index (" + i2 + ").");
        } else if (i4 == i2) {
            return removeRange.subSequence(0, removeRange.length());
        } else {
            StringBuilder sb = new StringBuilder(removeRange.length() - (i4 - i2));
            sb.append(removeRange, 0, i2);
            Intrinsics.checkNotNullExpressionValue(sb, "this.append(value, startIndex, endIndex)");
            sb.append(removeRange, i4, removeRange.length());
            Intrinsics.checkNotNullExpressionValue(sb, "this.append(value, startIndex, endIndex)");
            return sb;
        }
    }

    @NotNull
    public static final CharSequence removeSuffix(@NotNull CharSequence removeSuffix, @NotNull CharSequence suffix) {
        Intrinsics.checkNotNullParameter(removeSuffix, "$this$removeSuffix");
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        if (endsWith$default(removeSuffix, suffix, false, 2, (Object) null)) {
            return removeSuffix.subSequence(0, removeSuffix.length() - suffix.length());
        }
        return removeSuffix.subSequence(0, removeSuffix.length());
    }

    @NotNull
    public static final CharSequence removeSurrounding(@NotNull CharSequence removeSurrounding, @NotNull CharSequence prefix, @NotNull CharSequence suffix) {
        Intrinsics.checkNotNullParameter(removeSurrounding, "$this$removeSurrounding");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        if (removeSurrounding.length() >= prefix.length() + suffix.length() && startsWith$default(removeSurrounding, prefix, false, 2, (Object) null) && endsWith$default(removeSurrounding, suffix, false, 2, (Object) null)) {
            return removeSurrounding.subSequence(prefix.length(), removeSurrounding.length() - suffix.length());
        }
        return removeSurrounding.subSequence(0, removeSurrounding.length());
    }

    @InlineOnly
    private static final String replace(CharSequence charSequence, Regex regex, String str) {
        return regex.replace(charSequence, str);
    }

    @NotNull
    public static final String replaceAfter(@NotNull String replaceAfter, char c4, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        int indexOf$default;
        Intrinsics.checkNotNullParameter(replaceAfter, "$this$replaceAfter");
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        indexOf$default = indexOf$default((CharSequence) replaceAfter, c4, 0, false, 6, (Object) null);
        return indexOf$default == -1 ? missingDelimiterValue : replaceRange((CharSequence) replaceAfter, indexOf$default + 1, replaceAfter.length(), (CharSequence) replacement).toString();
    }

    public static /* synthetic */ String replaceAfter$default(String str, char c4, String str2, String str3, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            str3 = str;
        }
        return replaceAfter(str, c4, str2, str3);
    }

    @NotNull
    public static final String replaceAfterLast(@NotNull String replaceAfterLast, @NotNull String delimiter, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        int lastIndexOf$default;
        Intrinsics.checkNotNullParameter(replaceAfterLast, "$this$replaceAfterLast");
        Intrinsics.checkNotNullParameter(delimiter, "delimiter");
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        lastIndexOf$default = lastIndexOf$default((CharSequence) replaceAfterLast, delimiter, 0, false, 6, (Object) null);
        return lastIndexOf$default == -1 ? missingDelimiterValue : replaceRange((CharSequence) replaceAfterLast, lastIndexOf$default + delimiter.length(), replaceAfterLast.length(), (CharSequence) replacement).toString();
    }

    public static /* synthetic */ String replaceAfterLast$default(String str, String str2, String str3, String str4, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            str4 = str;
        }
        return replaceAfterLast(str, str2, str3, str4);
    }

    @NotNull
    public static final String replaceBefore(@NotNull String replaceBefore, char c4, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        int indexOf$default;
        Intrinsics.checkNotNullParameter(replaceBefore, "$this$replaceBefore");
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        indexOf$default = indexOf$default((CharSequence) replaceBefore, c4, 0, false, 6, (Object) null);
        return indexOf$default == -1 ? missingDelimiterValue : replaceRange((CharSequence) replaceBefore, 0, indexOf$default, (CharSequence) replacement).toString();
    }

    public static /* synthetic */ String replaceBefore$default(String str, char c4, String str2, String str3, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            str3 = str;
        }
        return replaceBefore(str, c4, str2, str3);
    }

    @NotNull
    public static final String replaceBeforeLast(@NotNull String replaceBeforeLast, char c4, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        Intrinsics.checkNotNullParameter(replaceBeforeLast, "$this$replaceBeforeLast");
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        int lastIndexOf$default = lastIndexOf$default((CharSequence) replaceBeforeLast, c4, 0, false, 6, (Object) null);
        return lastIndexOf$default == -1 ? missingDelimiterValue : replaceRange((CharSequence) replaceBeforeLast, 0, lastIndexOf$default, (CharSequence) replacement).toString();
    }

    public static /* synthetic */ String replaceBeforeLast$default(String str, char c4, String str2, String str3, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            str3 = str;
        }
        return replaceBeforeLast(str, c4, str2, str3);
    }

    @InlineOnly
    private static final String replaceFirst(CharSequence charSequence, Regex regex, String str) {
        return regex.replaceFirst(charSequence, str);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    @JvmName(name = "replaceFirstCharWithChar")
    @OverloadResolutionByLambdaReturnType
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    private static final String replaceFirstCharWithChar(String str, Function1<? super Character, Character> function1) {
        if (str.length() > 0) {
            char charValue = function1.invoke(Character.valueOf(str.charAt(0))).charValue();
            String substring = str.substring(1);
            Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.String).substring(startIndex)");
            return String.valueOf(charValue) + substring;
        }
        return str;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    @JvmName(name = "replaceFirstCharWithCharSequence")
    @OverloadResolutionByLambdaReturnType
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    private static final String replaceFirstCharWithCharSequence(String str, Function1<? super Character, ? extends CharSequence> function1) {
        if (str.length() > 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(function1.invoke(Character.valueOf(str.charAt(0))).toString());
            String substring = str.substring(1);
            Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.String).substring(startIndex)");
            sb.append(substring);
            return sb.toString();
        }
        return str;
    }

    @NotNull
    public static final CharSequence replaceRange(@NotNull CharSequence replaceRange, int i2, int i4, @NotNull CharSequence replacement) {
        Intrinsics.checkNotNullParameter(replaceRange, "$this$replaceRange");
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        if (i4 >= i2) {
            StringBuilder sb = new StringBuilder();
            sb.append(replaceRange, 0, i2);
            Intrinsics.checkNotNullExpressionValue(sb, "this.append(value, startIndex, endIndex)");
            sb.append(replacement);
            sb.append(replaceRange, i4, replaceRange.length());
            Intrinsics.checkNotNullExpressionValue(sb, "this.append(value, startIndex, endIndex)");
            return sb;
        }
        throw new IndexOutOfBoundsException("End index (" + i4 + ") is less than start index (" + i2 + ").");
    }

    @NotNull
    public static final List<String> split(@NotNull CharSequence split, @NotNull String[] delimiters, boolean z3, int i2) {
        Iterable<IntRange> asIterable;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(split, "$this$split");
        Intrinsics.checkNotNullParameter(delimiters, "delimiters");
        if (delimiters.length == 1) {
            String str = delimiters[0];
            if (!(str.length() == 0)) {
                return split$StringsKt__StringsKt(split, str, z3, i2);
            }
        }
        asIterable = SequencesKt___SequencesKt.asIterable(rangesDelimitedBy$StringsKt__StringsKt$default(split, delimiters, 0, z3, i2, 2, (Object) null));
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(asIterable, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (IntRange intRange : asIterable) {
            arrayList.add(substring(split, intRange));
        }
        return arrayList;
    }

    private static final List<String> split$StringsKt__StringsKt(CharSequence charSequence, String str, boolean z3, int i2) {
        List<String> listOf;
        int i4 = 0;
        if (i2 >= 0) {
            int indexOf = indexOf(charSequence, str, 0, z3);
            if (indexOf != -1 && i2 != 1) {
                boolean z4 = i2 > 0;
                ArrayList arrayList = new ArrayList(z4 ? RangesKt___RangesKt.coerceAtMost(i2, 10) : 10);
                do {
                    arrayList.add(charSequence.subSequence(i4, indexOf).toString());
                    i4 = str.length() + indexOf;
                    if (z4 && arrayList.size() == i2 - 1) {
                        break;
                    }
                    indexOf = indexOf(charSequence, str, i4, z3);
                } while (indexOf != -1);
                arrayList.add(charSequence.subSequence(i4, charSequence.length()).toString());
                return arrayList;
            }
            listOf = CollectionsKt__CollectionsJVMKt.listOf(charSequence.toString());
            return listOf;
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i2 + d.f65364a).toString());
    }

    public static /* synthetic */ List split$default(CharSequence charSequence, String[] strArr, boolean z3, int i2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            z3 = false;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        return split(charSequence, strArr, z3, i2);
    }

    @NotNull
    public static final Sequence<String> splitToSequence(@NotNull final CharSequence splitToSequence, @NotNull String[] delimiters, boolean z3, int i2) {
        Sequence<String> map;
        Intrinsics.checkNotNullParameter(splitToSequence, "$this$splitToSequence");
        Intrinsics.checkNotNullParameter(delimiters, "delimiters");
        map = SequencesKt___SequencesKt.map(rangesDelimitedBy$StringsKt__StringsKt$default(splitToSequence, delimiters, 0, z3, i2, 2, (Object) null), new Function1<IntRange, String>() { // from class: kotlin.text.StringsKt__StringsKt$splitToSequence$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull IntRange it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return StringsKt__StringsKt.substring(splitToSequence, it2);
            }
        });
        return map;
    }

    public static /* synthetic */ Sequence splitToSequence$default(CharSequence charSequence, String[] strArr, boolean z3, int i2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            z3 = false;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        return splitToSequence(charSequence, strArr, z3, i2);
    }

    public static final boolean startsWith(@NotNull CharSequence startsWith, char c4, boolean z3) {
        Intrinsics.checkNotNullParameter(startsWith, "$this$startsWith");
        return startsWith.length() > 0 && CharsKt__CharKt.equals(startsWith.charAt(0), c4, z3);
    }

    public static /* synthetic */ boolean startsWith$default(CharSequence charSequence, char c4, boolean z3, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z3 = false;
        }
        return startsWith(charSequence, c4, z3);
    }

    @NotNull
    public static final CharSequence subSequence(@NotNull CharSequence subSequence, @NotNull IntRange range) {
        Intrinsics.checkNotNullParameter(subSequence, "$this$subSequence");
        Intrinsics.checkNotNullParameter(range, "range");
        return subSequence.subSequence(range.getStart().intValue(), range.getEndInclusive().intValue() + 1);
    }

    @NotNull
    public static final String substring(@NotNull String substring, @NotNull IntRange range) {
        Intrinsics.checkNotNullParameter(substring, "$this$substring");
        Intrinsics.checkNotNullParameter(range, "range");
        String substring2 = substring.substring(range.getStart().intValue(), range.getEndInclusive().intValue() + 1);
        Intrinsics.checkNotNullExpressionValue(substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return substring2;
    }

    static /* synthetic */ String substring$default(CharSequence charSequence, int i2, int i4, int i5, Object obj) {
        if ((i5 & 2) != 0) {
            i4 = charSequence.length();
        }
        return charSequence.subSequence(i2, i4).toString();
    }

    @NotNull
    public static final String substringAfter(@NotNull String substringAfter, char c4, @NotNull String missingDelimiterValue) {
        int indexOf$default;
        Intrinsics.checkNotNullParameter(substringAfter, "$this$substringAfter");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        indexOf$default = indexOf$default((CharSequence) substringAfter, c4, 0, false, 6, (Object) null);
        if (indexOf$default == -1) {
            return missingDelimiterValue;
        }
        String substring = substringAfter.substring(indexOf$default + 1, substringAfter.length());
        Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return substring;
    }

    public static /* synthetic */ String substringAfter$default(String str, char c4, String str2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str2 = str;
        }
        return substringAfter(str, c4, str2);
    }

    @NotNull
    public static String substringAfterLast(@NotNull String substringAfterLast, char c4, @NotNull String missingDelimiterValue) {
        Intrinsics.checkNotNullParameter(substringAfterLast, "$this$substringAfterLast");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        int lastIndexOf$default = lastIndexOf$default((CharSequence) substringAfterLast, c4, 0, false, 6, (Object) null);
        if (lastIndexOf$default == -1) {
            return missingDelimiterValue;
        }
        String substring = substringAfterLast.substring(lastIndexOf$default + 1, substringAfterLast.length());
        Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return substring;
    }

    public static /* synthetic */ String substringAfterLast$default(String str, char c4, String str2, int i2, Object obj) {
        String substringAfterLast;
        if ((i2 & 2) != 0) {
            str2 = str;
        }
        substringAfterLast = substringAfterLast(str, c4, str2);
        return substringAfterLast;
    }

    @NotNull
    public static final String substringBefore(@NotNull String substringBefore, char c4, @NotNull String missingDelimiterValue) {
        int indexOf$default;
        Intrinsics.checkNotNullParameter(substringBefore, "$this$substringBefore");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        indexOf$default = indexOf$default((CharSequence) substringBefore, c4, 0, false, 6, (Object) null);
        if (indexOf$default == -1) {
            return missingDelimiterValue;
        }
        String substring = substringBefore.substring(0, indexOf$default);
        Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return substring;
    }

    public static /* synthetic */ String substringBefore$default(String str, char c4, String str2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str2 = str;
        }
        return substringBefore(str, c4, str2);
    }

    @NotNull
    public static final String substringBeforeLast(@NotNull String substringBeforeLast, char c4, @NotNull String missingDelimiterValue) {
        Intrinsics.checkNotNullParameter(substringBeforeLast, "$this$substringBeforeLast");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        int lastIndexOf$default = lastIndexOf$default((CharSequence) substringBeforeLast, c4, 0, false, 6, (Object) null);
        if (lastIndexOf$default == -1) {
            return missingDelimiterValue;
        }
        String substring = substringBeforeLast.substring(0, lastIndexOf$default);
        Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return substring;
    }

    public static /* synthetic */ String substringBeforeLast$default(String str, char c4, String str2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str2 = str;
        }
        return substringBeforeLast(str, c4, str2);
    }

    @SinceKotlin(version = "1.5")
    public static final boolean toBooleanStrict(@NotNull String toBooleanStrict) {
        Intrinsics.checkNotNullParameter(toBooleanStrict, "$this$toBooleanStrict");
        int hashCode = toBooleanStrict.hashCode();
        if (hashCode != 3569038) {
            if (hashCode == 97196323 && toBooleanStrict.equals(Bugly.SDK_IS_DEV)) {
                return false;
            }
        } else if (toBooleanStrict.equals("true")) {
            return true;
        }
        throw new IllegalArgumentException("The string doesn't represent a boolean value: " + toBooleanStrict);
    }

    @SinceKotlin(version = "1.5")
    @Nullable
    public static final Boolean toBooleanStrictOrNull(@NotNull String toBooleanStrictOrNull) {
        Intrinsics.checkNotNullParameter(toBooleanStrictOrNull, "$this$toBooleanStrictOrNull");
        int hashCode = toBooleanStrictOrNull.hashCode();
        if (hashCode != 3569038) {
            if (hashCode == 97196323 && toBooleanStrictOrNull.equals(Bugly.SDK_IS_DEV)) {
                return Boolean.FALSE;
            }
        } else if (toBooleanStrictOrNull.equals("true")) {
            return Boolean.TRUE;
        }
        return null;
    }

    @NotNull
    public static final CharSequence trim(@NotNull CharSequence trim, @NotNull Function1<? super Character, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(trim, "$this$trim");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        int length = trim.length() - 1;
        int i2 = 0;
        boolean z3 = false;
        while (i2 <= length) {
            boolean booleanValue = predicate.invoke(Character.valueOf(trim.charAt(!z3 ? i2 : length))).booleanValue();
            if (z3) {
                if (!booleanValue) {
                    break;
                }
                length--;
            } else if (booleanValue) {
                i2++;
            } else {
                z3 = true;
            }
        }
        return trim.subSequence(i2, length + 1);
    }

    @NotNull
    public static final CharSequence trimEnd(@NotNull CharSequence trimEnd, @NotNull Function1<? super Character, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(trimEnd, "$this$trimEnd");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        int length = trimEnd.length();
        do {
            length--;
            if (length < 0) {
                return "";
            }
        } while (predicate.invoke(Character.valueOf(trimEnd.charAt(length))).booleanValue());
        return trimEnd.subSequence(0, length + 1);
    }

    @NotNull
    public static final CharSequence trimStart(@NotNull CharSequence trimStart, @NotNull Function1<? super Character, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(trimStart, "$this$trimStart");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        int length = trimStart.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!predicate.invoke(Character.valueOf(trimStart.charAt(i2))).booleanValue()) {
                return trimStart.subSequence(i2, trimStart.length());
            }
        }
        return "";
    }

    public static /* synthetic */ boolean contains$default(CharSequence charSequence, char c4, boolean z3, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z3 = false;
        }
        return contains(charSequence, c4, z3);
    }

    public static final boolean endsWith(@NotNull CharSequence endsWith, @NotNull CharSequence suffix, boolean z3) {
        boolean endsWith$default;
        Intrinsics.checkNotNullParameter(endsWith, "$this$endsWith");
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        if (!z3 && (endsWith instanceof String) && (suffix instanceof String)) {
            endsWith$default = StringsKt__StringsJVMKt.endsWith$default((String) endsWith, (String) suffix, false, 2, null);
            return endsWith$default;
        }
        return regionMatchesImpl(endsWith, endsWith.length() - suffix.length(), suffix, 0, suffix.length(), z3);
    }

    public static /* synthetic */ boolean endsWith$default(CharSequence charSequence, CharSequence charSequence2, boolean z3, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z3 = false;
        }
        return endsWith(charSequence, charSequence2, z3);
    }

    public static /* synthetic */ int indexOf$default(CharSequence charSequence, String str, int i2, boolean z3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        if ((i4 & 4) != 0) {
            z3 = false;
        }
        return indexOf(charSequence, str, i2, z3);
    }

    public static /* synthetic */ int indexOfAny$default(CharSequence charSequence, Collection collection, int i2, boolean z3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        if ((i4 & 4) != 0) {
            z3 = false;
        }
        return indexOfAny(charSequence, collection, i2, z3);
    }

    public static /* synthetic */ int lastIndexOf$default(CharSequence charSequence, String str, int i2, boolean z3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = getLastIndex(charSequence);
        }
        if ((i4 & 4) != 0) {
            z3 = false;
        }
        return lastIndexOf(charSequence, str, i2, z3);
    }

    public static /* synthetic */ int lastIndexOfAny$default(CharSequence charSequence, Collection collection, int i2, boolean z3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = getLastIndex(charSequence);
        }
        if ((i4 & 4) != 0) {
            z3 = false;
        }
        return lastIndexOfAny(charSequence, collection, i2, z3);
    }

    public static /* synthetic */ String padEnd$default(String str, int i2, char c4, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            c4 = ' ';
        }
        return padEnd(str, i2, c4);
    }

    public static /* synthetic */ String padStart$default(String str, int i2, char c4, int i4, Object obj) {
        String padStart;
        if ((i4 & 2) != 0) {
            c4 = ' ';
        }
        padStart = padStart(str, i2, c4);
        return padStart;
    }

    static /* synthetic */ Sequence rangesDelimitedBy$StringsKt__StringsKt$default(CharSequence charSequence, String[] strArr, int i2, boolean z3, int i4, int i5, Object obj) {
        if ((i5 & 2) != 0) {
            i2 = 0;
        }
        if ((i5 & 4) != 0) {
            z3 = false;
        }
        if ((i5 & 8) != 0) {
            i4 = 0;
        }
        return rangesDelimitedBy$StringsKt__StringsKt(charSequence, strArr, i2, z3, i4);
    }

    @InlineOnly
    private static final String replace(CharSequence charSequence, Regex regex, Function1<? super MatchResult, ? extends CharSequence> function1) {
        return regex.replace(charSequence, function1);
    }

    public static /* synthetic */ String replaceAfter$default(String str, String str2, String str3, String str4, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            str4 = str;
        }
        return replaceAfter(str, str2, str3, str4);
    }

    public static /* synthetic */ String replaceAfterLast$default(String str, char c4, String str2, String str3, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            str3 = str;
        }
        return replaceAfterLast(str, c4, str2, str3);
    }

    public static /* synthetic */ String replaceBefore$default(String str, String str2, String str3, String str4, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            str4 = str;
        }
        return replaceBefore(str, str2, str3, str4);
    }

    public static /* synthetic */ String replaceBeforeLast$default(String str, String str2, String str3, String str4, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            str4 = str;
        }
        return replaceBeforeLast(str, str2, str3, str4);
    }

    public static /* synthetic */ List split$default(CharSequence charSequence, char[] cArr, boolean z3, int i2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            z3 = false;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        return split(charSequence, cArr, z3, i2);
    }

    @NotNull
    public static final Sequence<String> splitToSequence(@NotNull final CharSequence splitToSequence, @NotNull char[] delimiters, boolean z3, int i2) {
        Sequence<String> map;
        Intrinsics.checkNotNullParameter(splitToSequence, "$this$splitToSequence");
        Intrinsics.checkNotNullParameter(delimiters, "delimiters");
        map = SequencesKt___SequencesKt.map(rangesDelimitedBy$StringsKt__StringsKt$default(splitToSequence, delimiters, 0, z3, i2, 2, (Object) null), new Function1<IntRange, String>() { // from class: kotlin.text.StringsKt__StringsKt$splitToSequence$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull IntRange it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return StringsKt__StringsKt.substring(splitToSequence, it2);
            }
        });
        return map;
    }

    public static /* synthetic */ Sequence splitToSequence$default(CharSequence charSequence, char[] cArr, boolean z3, int i2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            z3 = false;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        return splitToSequence(charSequence, cArr, z3, i2);
    }

    public static final boolean startsWith(@NotNull CharSequence startsWith, @NotNull CharSequence prefix, boolean z3) {
        boolean startsWith$default;
        Intrinsics.checkNotNullParameter(startsWith, "$this$startsWith");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        if (!z3 && (startsWith instanceof String) && (prefix instanceof String)) {
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default((String) startsWith, (String) prefix, false, 2, null);
            return startsWith$default;
        }
        return regionMatchesImpl(startsWith, 0, prefix, 0, prefix.length(), z3);
    }

    public static /* synthetic */ boolean startsWith$default(CharSequence charSequence, CharSequence charSequence2, boolean z3, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z3 = false;
        }
        return startsWith(charSequence, charSequence2, z3);
    }

    @Deprecated(message = "Use parameters named startIndex and endIndex.", replaceWith = @ReplaceWith(expression = "subSequence(startIndex = start, endIndex = end)", imports = {}))
    @InlineOnly
    private static final CharSequence subSequence(String str, int i2, int i4) {
        return str.subSequence(i2, i4);
    }

    @InlineOnly
    private static final String substring(CharSequence charSequence, int i2, int i4) {
        return charSequence.subSequence(i2, i4).toString();
    }

    public static /* synthetic */ String substringAfter$default(String str, String str2, String str3, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str3 = str;
        }
        return substringAfter(str, str2, str3);
    }

    public static /* synthetic */ String substringAfterLast$default(String str, String str2, String str3, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str3 = str;
        }
        return substringAfterLast(str, str2, str3);
    }

    public static /* synthetic */ String substringBefore$default(String str, String str2, String str3, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str3 = str;
        }
        return substringBefore(str, str2, str3);
    }

    public static /* synthetic */ String substringBeforeLast$default(String str, String str2, String str3, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str3 = str;
        }
        return substringBeforeLast(str, str2, str3);
    }

    private static final Sequence<IntRange> rangesDelimitedBy$StringsKt__StringsKt(CharSequence charSequence, String[] strArr, int i2, final boolean z3, int i4) {
        final List asList;
        if (i4 >= 0) {
            asList = ArraysKt___ArraysJvmKt.asList(strArr);
            return new DelimitedRangesSequence(charSequence, i2, i4, new Function2<CharSequence, Integer, Pair<? extends Integer, ? extends Integer>>() { // from class: kotlin.text.StringsKt__StringsKt$rangesDelimitedBy$4
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Pair<? extends Integer, ? extends Integer> invoke(CharSequence charSequence2, Integer num) {
                    return invoke(charSequence2, num.intValue());
                }

                @Nullable
                public final Pair<Integer, Integer> invoke(@NotNull CharSequence receiver, int i5) {
                    Pair findAnyOf$StringsKt__StringsKt;
                    Intrinsics.checkNotNullParameter(receiver, "$receiver");
                    findAnyOf$StringsKt__StringsKt = StringsKt__StringsKt.findAnyOf$StringsKt__StringsKt(receiver, asList, i5, z3, false);
                    if (findAnyOf$StringsKt__StringsKt != null) {
                        return TuplesKt.to(findAnyOf$StringsKt__StringsKt.getFirst(), Integer.valueOf(((String) findAnyOf$StringsKt__StringsKt.getSecond()).length()));
                    }
                    return null;
                }
            });
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i4 + d.f65364a).toString());
    }

    @NotNull
    public static final String replaceAfter(@NotNull String replaceAfter, @NotNull String delimiter, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        int indexOf$default;
        Intrinsics.checkNotNullParameter(replaceAfter, "$this$replaceAfter");
        Intrinsics.checkNotNullParameter(delimiter, "delimiter");
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        indexOf$default = indexOf$default((CharSequence) replaceAfter, delimiter, 0, false, 6, (Object) null);
        return indexOf$default == -1 ? missingDelimiterValue : replaceRange((CharSequence) replaceAfter, indexOf$default + delimiter.length(), replaceAfter.length(), (CharSequence) replacement).toString();
    }

    @NotNull
    public static final String replaceAfterLast(@NotNull String replaceAfterLast, char c4, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        Intrinsics.checkNotNullParameter(replaceAfterLast, "$this$replaceAfterLast");
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        int lastIndexOf$default = lastIndexOf$default((CharSequence) replaceAfterLast, c4, 0, false, 6, (Object) null);
        return lastIndexOf$default == -1 ? missingDelimiterValue : replaceRange((CharSequence) replaceAfterLast, lastIndexOf$default + 1, replaceAfterLast.length(), (CharSequence) replacement).toString();
    }

    @NotNull
    public static final String replaceBefore(@NotNull String replaceBefore, @NotNull String delimiter, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        int indexOf$default;
        Intrinsics.checkNotNullParameter(replaceBefore, "$this$replaceBefore");
        Intrinsics.checkNotNullParameter(delimiter, "delimiter");
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        indexOf$default = indexOf$default((CharSequence) replaceBefore, delimiter, 0, false, 6, (Object) null);
        return indexOf$default == -1 ? missingDelimiterValue : replaceRange((CharSequence) replaceBefore, 0, indexOf$default, (CharSequence) replacement).toString();
    }

    @NotNull
    public static final String replaceBeforeLast(@NotNull String replaceBeforeLast, @NotNull String delimiter, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        int lastIndexOf$default;
        Intrinsics.checkNotNullParameter(replaceBeforeLast, "$this$replaceBeforeLast");
        Intrinsics.checkNotNullParameter(delimiter, "delimiter");
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        lastIndexOf$default = lastIndexOf$default((CharSequence) replaceBeforeLast, delimiter, 0, false, 6, (Object) null);
        return lastIndexOf$default == -1 ? missingDelimiterValue : replaceRange((CharSequence) replaceBeforeLast, 0, lastIndexOf$default, (CharSequence) replacement).toString();
    }

    static /* synthetic */ List split$default(CharSequence charSequence, Regex regex, int i2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        return regex.split(charSequence, i2);
    }

    public static /* synthetic */ boolean startsWith$default(CharSequence charSequence, CharSequence charSequence2, int i2, boolean z3, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            z3 = false;
        }
        return startsWith(charSequence, charSequence2, i2, z3);
    }

    @NotNull
    public static final String substring(@NotNull CharSequence substring, @NotNull IntRange range) {
        Intrinsics.checkNotNullParameter(substring, "$this$substring");
        Intrinsics.checkNotNullParameter(range, "range");
        return substring.subSequence(range.getStart().intValue(), range.getEndInclusive().intValue() + 1).toString();
    }

    @NotNull
    public static final String substringAfter(@NotNull String substringAfter, @NotNull String delimiter, @NotNull String missingDelimiterValue) {
        int indexOf$default;
        Intrinsics.checkNotNullParameter(substringAfter, "$this$substringAfter");
        Intrinsics.checkNotNullParameter(delimiter, "delimiter");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        indexOf$default = indexOf$default((CharSequence) substringAfter, delimiter, 0, false, 6, (Object) null);
        if (indexOf$default == -1) {
            return missingDelimiterValue;
        }
        String substring = substringAfter.substring(indexOf$default + delimiter.length(), substringAfter.length());
        Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return substring;
    }

    @NotNull
    public static final String substringAfterLast(@NotNull String substringAfterLast, @NotNull String delimiter, @NotNull String missingDelimiterValue) {
        int lastIndexOf$default;
        Intrinsics.checkNotNullParameter(substringAfterLast, "$this$substringAfterLast");
        Intrinsics.checkNotNullParameter(delimiter, "delimiter");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        lastIndexOf$default = lastIndexOf$default((CharSequence) substringAfterLast, delimiter, 0, false, 6, (Object) null);
        if (lastIndexOf$default == -1) {
            return missingDelimiterValue;
        }
        String substring = substringAfterLast.substring(lastIndexOf$default + delimiter.length(), substringAfterLast.length());
        Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return substring;
    }

    @NotNull
    public static final String substringBefore(@NotNull String substringBefore, @NotNull String delimiter, @NotNull String missingDelimiterValue) {
        int indexOf$default;
        Intrinsics.checkNotNullParameter(substringBefore, "$this$substringBefore");
        Intrinsics.checkNotNullParameter(delimiter, "delimiter");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        indexOf$default = indexOf$default((CharSequence) substringBefore, delimiter, 0, false, 6, (Object) null);
        if (indexOf$default == -1) {
            return missingDelimiterValue;
        }
        String substring = substringBefore.substring(0, indexOf$default);
        Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return substring;
    }

    @NotNull
    public static final String substringBeforeLast(@NotNull String substringBeforeLast, @NotNull String delimiter, @NotNull String missingDelimiterValue) {
        int lastIndexOf$default;
        Intrinsics.checkNotNullParameter(substringBeforeLast, "$this$substringBeforeLast");
        Intrinsics.checkNotNullParameter(delimiter, "delimiter");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        lastIndexOf$default = lastIndexOf$default((CharSequence) substringBeforeLast, delimiter, 0, false, 6, (Object) null);
        if (lastIndexOf$default == -1) {
            return missingDelimiterValue;
        }
        String substring = substringBeforeLast.substring(0, lastIndexOf$default);
        Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return substring;
    }

    public static final boolean contains(@NotNull CharSequence contains, char c4, boolean z3) {
        int indexOf$default;
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        indexOf$default = indexOf$default(contains, c4, 0, z3, 2, (Object) null);
        return indexOf$default >= 0;
    }

    public static final int indexOf(@NotNull CharSequence indexOf, @NotNull String string, int i2, boolean z3) {
        Intrinsics.checkNotNullParameter(indexOf, "$this$indexOf");
        Intrinsics.checkNotNullParameter(string, "string");
        if (!z3 && (indexOf instanceof String)) {
            return ((String) indexOf).indexOf(string, i2);
        }
        return indexOf$StringsKt__StringsKt$default(indexOf, string, i2, indexOf.length(), z3, false, 16, null);
    }

    public static final int lastIndexOf(@NotNull CharSequence lastIndexOf, @NotNull String string, int i2, boolean z3) {
        Intrinsics.checkNotNullParameter(lastIndexOf, "$this$lastIndexOf");
        Intrinsics.checkNotNullParameter(string, "string");
        if (!z3 && (lastIndexOf instanceof String)) {
            return ((String) lastIndexOf).lastIndexOf(string, i2);
        }
        return indexOf$StringsKt__StringsKt(lastIndexOf, string, i2, 0, z3, true);
    }

    @NotNull
    public static final String removePrefix(@NotNull String removePrefix, @NotNull CharSequence prefix) {
        Intrinsics.checkNotNullParameter(removePrefix, "$this$removePrefix");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        if (startsWith$default((CharSequence) removePrefix, prefix, false, 2, (Object) null)) {
            String substring = removePrefix.substring(prefix.length());
            Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.String).substring(startIndex)");
            return substring;
        }
        return removePrefix;
    }

    @NotNull
    public static final String removeSuffix(@NotNull String removeSuffix, @NotNull CharSequence suffix) {
        Intrinsics.checkNotNullParameter(removeSuffix, "$this$removeSuffix");
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        if (endsWith$default((CharSequence) removeSuffix, suffix, false, 2, (Object) null)) {
            String substring = removeSuffix.substring(0, removeSuffix.length() - suffix.length());
            Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return substring;
        }
        return removeSuffix;
    }

    @NotNull
    public static final String removeSurrounding(@NotNull String removeSurrounding, @NotNull CharSequence prefix, @NotNull CharSequence suffix) {
        Intrinsics.checkNotNullParameter(removeSurrounding, "$this$removeSurrounding");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        if (removeSurrounding.length() >= prefix.length() + suffix.length() && startsWith$default((CharSequence) removeSurrounding, prefix, false, 2, (Object) null) && endsWith$default((CharSequence) removeSurrounding, suffix, false, 2, (Object) null)) {
            String substring = removeSurrounding.substring(prefix.length(), removeSurrounding.length() - suffix.length());
            Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return substring;
        }
        return removeSurrounding;
    }

    @InlineOnly
    private static final String trim(String str) {
        CharSequence trim;
        Objects.requireNonNull(str, "null cannot be cast to non-null type kotlin.CharSequence");
        trim = trim((CharSequence) str);
        return trim.toString();
    }

    @InlineOnly
    private static final String trimEnd(String str) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type kotlin.CharSequence");
        return trimEnd((CharSequence) str).toString();
    }

    @InlineOnly
    private static final String trimStart(String str) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type kotlin.CharSequence");
        return trimStart((CharSequence) str).toString();
    }

    @InlineOnly
    private static final boolean contains(CharSequence contains, Regex regex) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return regex.containsMatchIn(contains);
    }

    public static final boolean startsWith(@NotNull CharSequence startsWith, @NotNull CharSequence prefix, int i2, boolean z3) {
        Intrinsics.checkNotNullParameter(startsWith, "$this$startsWith");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        if (!z3 && (startsWith instanceof String) && (prefix instanceof String)) {
            return StringsKt__StringsJVMKt.startsWith$default((String) startsWith, (String) prefix, i2, false, 4, null);
        }
        return regionMatchesImpl(startsWith, i2, prefix, 0, prefix.length(), z3);
    }

    @NotNull
    public static final String trim(@NotNull String trim, @NotNull Function1<? super Character, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(trim, "$this$trim");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        int length = trim.length() - 1;
        int i2 = 0;
        boolean z3 = false;
        while (i2 <= length) {
            boolean booleanValue = predicate.invoke(Character.valueOf(trim.charAt(!z3 ? i2 : length))).booleanValue();
            if (z3) {
                if (!booleanValue) {
                    break;
                }
                length--;
            } else if (booleanValue) {
                i2++;
            } else {
                z3 = true;
            }
        }
        return trim.subSequence(i2, length + 1).toString();
    }

    @NotNull
    public static final String trimEnd(@NotNull String trimEnd, @NotNull Function1<? super Character, Boolean> predicate) {
        CharSequence charSequence;
        Intrinsics.checkNotNullParameter(trimEnd, "$this$trimEnd");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        int length = trimEnd.length();
        while (true) {
            length--;
            if (length < 0) {
                charSequence = "";
                break;
            } else if (!predicate.invoke(Character.valueOf(trimEnd.charAt(length))).booleanValue()) {
                charSequence = trimEnd.subSequence(0, length + 1);
                break;
            }
        }
        return charSequence.toString();
    }

    @NotNull
    public static final String trimStart(@NotNull String trimStart, @NotNull Function1<? super Character, Boolean> predicate) {
        CharSequence charSequence;
        Intrinsics.checkNotNullParameter(trimStart, "$this$trimStart");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        int length = trimStart.length();
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                charSequence = "";
                break;
            } else if (!predicate.invoke(Character.valueOf(trimStart.charAt(i2))).booleanValue()) {
                charSequence = trimStart.subSequence(i2, trimStart.length());
                break;
            } else {
                i2++;
            }
        }
        return charSequence.toString();
    }

    @InlineOnly
    private static final String removeRange(String str, int i2, int i4) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type kotlin.CharSequence");
        return removeRange((CharSequence) str, i2, i4).toString();
    }

    @NotNull
    public static final CharSequence removeSurrounding(@NotNull CharSequence removeSurrounding, @NotNull CharSequence delimiter) {
        Intrinsics.checkNotNullParameter(removeSurrounding, "$this$removeSurrounding");
        Intrinsics.checkNotNullParameter(delimiter, "delimiter");
        return removeSurrounding(removeSurrounding, delimiter, delimiter);
    }

    @InlineOnly
    private static final String replaceRange(String str, int i2, int i4, CharSequence charSequence) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type kotlin.CharSequence");
        return replaceRange((CharSequence) str, i2, i4, charSequence).toString();
    }

    @NotNull
    public static final CharSequence removeRange(@NotNull CharSequence removeRange, @NotNull IntRange range) {
        Intrinsics.checkNotNullParameter(removeRange, "$this$removeRange");
        Intrinsics.checkNotNullParameter(range, "range");
        return removeRange(removeRange, range.getStart().intValue(), range.getEndInclusive().intValue() + 1);
    }

    @NotNull
    public static final String removeSurrounding(@NotNull String removeSurrounding, @NotNull CharSequence delimiter) {
        Intrinsics.checkNotNullParameter(removeSurrounding, "$this$removeSurrounding");
        Intrinsics.checkNotNullParameter(delimiter, "delimiter");
        return removeSurrounding(removeSurrounding, delimiter, delimiter);
    }

    @NotNull
    public static final CharSequence replaceRange(@NotNull CharSequence replaceRange, @NotNull IntRange range, @NotNull CharSequence replacement) {
        Intrinsics.checkNotNullParameter(replaceRange, "$this$replaceRange");
        Intrinsics.checkNotNullParameter(range, "range");
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        return replaceRange(replaceRange, range.getStart().intValue(), range.getEndInclusive().intValue() + 1, replacement);
    }

    public static final int indexOfAny(@NotNull CharSequence indexOfAny, @NotNull Collection<String> strings, int i2, boolean z3) {
        Integer first;
        Intrinsics.checkNotNullParameter(indexOfAny, "$this$indexOfAny");
        Intrinsics.checkNotNullParameter(strings, "strings");
        Pair<Integer, String> findAnyOf$StringsKt__StringsKt = findAnyOf$StringsKt__StringsKt(indexOfAny, strings, i2, z3, false);
        if (findAnyOf$StringsKt__StringsKt == null || (first = findAnyOf$StringsKt__StringsKt.getFirst()) == null) {
            return -1;
        }
        return first.intValue();
    }

    public static final int lastIndexOfAny(@NotNull CharSequence lastIndexOfAny, @NotNull Collection<String> strings, int i2, boolean z3) {
        Integer first;
        Intrinsics.checkNotNullParameter(lastIndexOfAny, "$this$lastIndexOfAny");
        Intrinsics.checkNotNullParameter(strings, "strings");
        Pair<Integer, String> findAnyOf$StringsKt__StringsKt = findAnyOf$StringsKt__StringsKt(lastIndexOfAny, strings, i2, z3, true);
        if (findAnyOf$StringsKt__StringsKt == null || (first = findAnyOf$StringsKt__StringsKt.getFirst()) == null) {
            return -1;
        }
        return first.intValue();
    }

    @NotNull
    public static final String padEnd(@NotNull String padEnd, int i2, char c4) {
        Intrinsics.checkNotNullParameter(padEnd, "$this$padEnd");
        return padEnd((CharSequence) padEnd, i2, c4).toString();
    }

    @NotNull
    public static String padStart(@NotNull String padStart, int i2, char c4) {
        Intrinsics.checkNotNullParameter(padStart, "$this$padStart");
        return padStart((CharSequence) padStart, i2, c4).toString();
    }

    @InlineOnly
    private static final String removeRange(String str, IntRange intRange) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type kotlin.CharSequence");
        return removeRange((CharSequence) str, intRange).toString();
    }

    @InlineOnly
    private static final String replaceRange(String str, IntRange intRange, CharSequence charSequence) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type kotlin.CharSequence");
        return replaceRange((CharSequence) str, intRange, charSequence).toString();
    }

    @NotNull
    public static final CharSequence trim(@NotNull CharSequence trim, @NotNull char... chars) {
        boolean contains;
        Intrinsics.checkNotNullParameter(trim, "$this$trim");
        Intrinsics.checkNotNullParameter(chars, "chars");
        int length = trim.length() - 1;
        int i2 = 0;
        boolean z3 = false;
        while (i2 <= length) {
            contains = ArraysKt___ArraysKt.contains(chars, trim.charAt(!z3 ? i2 : length));
            if (z3) {
                if (!contains) {
                    break;
                }
                length--;
            } else if (contains) {
                i2++;
            } else {
                z3 = true;
            }
        }
        return trim.subSequence(i2, length + 1);
    }

    @NotNull
    public static final CharSequence trimEnd(@NotNull CharSequence trimEnd, @NotNull char... chars) {
        boolean contains;
        Intrinsics.checkNotNullParameter(trimEnd, "$this$trimEnd");
        Intrinsics.checkNotNullParameter(chars, "chars");
        int length = trimEnd.length();
        do {
            length--;
            if (length < 0) {
                return "";
            }
            contains = ArraysKt___ArraysKt.contains(chars, trimEnd.charAt(length));
        } while (contains);
        return trimEnd.subSequence(0, length + 1);
    }

    @NotNull
    public static final CharSequence trimStart(@NotNull CharSequence trimStart, @NotNull char... chars) {
        boolean contains;
        Intrinsics.checkNotNullParameter(trimStart, "$this$trimStart");
        Intrinsics.checkNotNullParameter(chars, "chars");
        int length = trimStart.length();
        for (int i2 = 0; i2 < length; i2++) {
            contains = ArraysKt___ArraysKt.contains(chars, trimStart.charAt(i2));
            if (!contains) {
                return trimStart.subSequence(i2, trimStart.length());
            }
        }
        return "";
    }

    @NotNull
    public static final List<String> split(@NotNull CharSequence split, @NotNull char[] delimiters, boolean z3, int i2) {
        Iterable<IntRange> asIterable;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(split, "$this$split");
        Intrinsics.checkNotNullParameter(delimiters, "delimiters");
        if (delimiters.length == 1) {
            return split$StringsKt__StringsKt(split, String.valueOf(delimiters[0]), z3, i2);
        }
        asIterable = SequencesKt___SequencesKt.asIterable(rangesDelimitedBy$StringsKt__StringsKt$default(split, delimiters, 0, z3, i2, 2, (Object) null));
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(asIterable, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (IntRange intRange : asIterable) {
            arrayList.add(substring(split, intRange));
        }
        return arrayList;
    }

    @NotNull
    public static final String trim(@NotNull String trim, @NotNull char... chars) {
        boolean contains;
        Intrinsics.checkNotNullParameter(trim, "$this$trim");
        Intrinsics.checkNotNullParameter(chars, "chars");
        int length = trim.length() - 1;
        int i2 = 0;
        boolean z3 = false;
        while (i2 <= length) {
            contains = ArraysKt___ArraysKt.contains(chars, trim.charAt(!z3 ? i2 : length));
            if (z3) {
                if (!contains) {
                    break;
                }
                length--;
            } else if (contains) {
                i2++;
            } else {
                z3 = true;
            }
        }
        return trim.subSequence(i2, length + 1).toString();
    }

    @NotNull
    public static final String trimEnd(@NotNull String trimEnd, @NotNull char... chars) {
        CharSequence charSequence;
        boolean contains;
        Intrinsics.checkNotNullParameter(trimEnd, "$this$trimEnd");
        Intrinsics.checkNotNullParameter(chars, "chars");
        int length = trimEnd.length();
        while (true) {
            length--;
            if (length < 0) {
                charSequence = "";
                break;
            }
            contains = ArraysKt___ArraysKt.contains(chars, trimEnd.charAt(length));
            if (!contains) {
                charSequence = trimEnd.subSequence(0, length + 1);
                break;
            }
        }
        return charSequence.toString();
    }

    @NotNull
    public static final String trimStart(@NotNull String trimStart, @NotNull char... chars) {
        CharSequence charSequence;
        boolean contains;
        Intrinsics.checkNotNullParameter(trimStart, "$this$trimStart");
        Intrinsics.checkNotNullParameter(chars, "chars");
        int length = trimStart.length();
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                charSequence = "";
                break;
            }
            contains = ArraysKt___ArraysKt.contains(chars, trimStart.charAt(i2));
            if (!contains) {
                charSequence = trimStart.subSequence(i2, trimStart.length());
                break;
            }
            i2++;
        }
        return charSequence.toString();
    }

    @InlineOnly
    private static final List<String> split(CharSequence charSequence, Regex regex, int i2) {
        return regex.split(charSequence, i2);
    }

    @NotNull
    public static CharSequence trim(@NotNull CharSequence trim) {
        Intrinsics.checkNotNullParameter(trim, "$this$trim");
        int length = trim.length() - 1;
        int i2 = 0;
        boolean z3 = false;
        while (i2 <= length) {
            boolean isWhitespace = CharsKt__CharJVMKt.isWhitespace(trim.charAt(!z3 ? i2 : length));
            if (z3) {
                if (!isWhitespace) {
                    break;
                }
                length--;
            } else if (isWhitespace) {
                i2++;
            } else {
                z3 = true;
            }
        }
        return trim.subSequence(i2, length + 1);
    }

    @NotNull
    public static final CharSequence trimEnd(@NotNull CharSequence trimEnd) {
        Intrinsics.checkNotNullParameter(trimEnd, "$this$trimEnd");
        int length = trimEnd.length();
        do {
            length--;
            if (length < 0) {
                return "";
            }
        } while (CharsKt__CharJVMKt.isWhitespace(trimEnd.charAt(length)));
        return trimEnd.subSequence(0, length + 1);
    }

    @NotNull
    public static final CharSequence trimStart(@NotNull CharSequence trimStart) {
        Intrinsics.checkNotNullParameter(trimStart, "$this$trimStart");
        int length = trimStart.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!CharsKt__CharJVMKt.isWhitespace(trimStart.charAt(i2))) {
                return trimStart.subSequence(i2, trimStart.length());
            }
        }
        return "";
    }
}
