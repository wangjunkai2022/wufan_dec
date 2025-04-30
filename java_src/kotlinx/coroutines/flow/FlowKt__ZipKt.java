package kotlinx.coroutines.flow;

import com.umeng.analytics.pro.ai;
import java.util.List;
import java.util.Objects;
import kotlin.BuilderInference;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.functions.Function7;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.internal.CombineKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Zip.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000l\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001c\n\u0002\b\u0006\u001a\u008a\u0001\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00000\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u00032F\u0010\f\u001aB\b\u0001\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\t\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0005H\u0007ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000e\u001a\u008c\u0001\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00010\u00032F\u0010\f\u001aB\b\u0001\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\t\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0005ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u000e\u001a\u009d\u0001\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00000\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u00032Y\b\u0001\u0010\f\u001aS\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\u0012\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0011¢\u0006\u0002\b\u0014H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016\u001a\u009f\u0001\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00010\u00032Y\b\u0001\u0010\f\u001aS\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\u0012\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0011¢\u0006\u0002\b\u0014ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0016\u001a\u008a\u0001\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00030\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0018\"\u0004\b\u0003\u0010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00010\u00032\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00020\u000320\b\u0001\u0010\f\u001a*\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00030\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0011ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u001b\u001a\u009b\u0001\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00030\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0018\"\u0004\b\u0003\u0010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00010\u00032\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00020\u00032A\b\u0001\u0010\f\u001a;\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00030\u0012\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u001c¢\u0006\u0002\b\u0014ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001e\u001a¢\u0001\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00040\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0018\"\u0004\b\u0003\u0010\u001f\"\u0004\b\u0004\u0010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00010\u00032\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00020\u00032\f\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00030\u000324\u0010\f\u001a0\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00040\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u001cø\u0001\u0000¢\u0006\u0004\b!\u0010\"\u001aµ\u0001\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00040\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0018\"\u0004\b\u0003\u0010\u001f\"\u0004\b\u0004\u0010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00010\u00032\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00020\u00032\f\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00030\u00032G\b\u0001\u0010\f\u001aA\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00040\u0012\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0#¢\u0006\u0002\b\u0014ø\u0001\u0000¢\u0006\u0004\b$\u0010%\u001a¼\u0001\u0010(\u001a\b\u0012\u0004\u0012\u00028\u00050\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0018\"\u0004\b\u0003\u0010\u001f\"\u0004\b\u0004\u0010&\"\u0004\b\u0005\u0010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00010\u00032\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00020\u00032\f\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00030\u00032\f\u0010'\u001a\b\u0012\u0004\u0012\u00028\u00040\u00032:\u0010\f\u001a6\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00050\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0#ø\u0001\u0000¢\u0006\u0004\b(\u0010)\u001aÏ\u0001\u0010+\u001a\b\u0012\u0004\u0012\u00028\u00050\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0018\"\u0004\b\u0003\u0010\u001f\"\u0004\b\u0004\u0010&\"\u0004\b\u0005\u0010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00010\u00032\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00020\u00032\f\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00030\u00032\f\u0010'\u001a\b\u0012\u0004\u0012\u00028\u00040\u00032M\b\u0001\u0010\f\u001aG\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00050\u0012\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0*¢\u0006\u0002\b\u0014ø\u0001\u0000¢\u0006\u0004\b+\u0010,\u001as\u00101\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003\"\u0006\b\u0000\u0010-\u0018\u0001\"\u0004\b\u0001\u0010\u00022\u001e\u0010/\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030.\"\b\u0012\u0004\u0012\u00028\u00000\u00032*\b\u0004\u0010\f\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000.\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b00H\u0086\bø\u0001\u0000¢\u0006\u0004\b1\u00102\u001a\u0084\u0001\u00103\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003\"\u0006\b\u0000\u0010-\u0018\u0001\"\u0004\b\u0001\u0010\u00022\u001e\u0010/\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030.\"\b\u0012\u0004\u0012\u00028\u00000\u00032;\b\u0005\u0010\f\u001a5\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000.\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0005¢\u0006\u0002\b\u0014H\u0086\bø\u0001\u0000¢\u0006\u0004\b3\u00104\u001as\u00105\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003\"\u0006\b\u0000\u0010-\u0018\u0001\"\u0004\b\u0001\u0010\u00022\u001e\u0010/\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030.\"\b\u0012\u0004\u0012\u00028\u00000\u00032*\b\u0004\u0010\f\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000.\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b00H\u0082\bø\u0001\u0000¢\u0006\u0004\b5\u00102\u001a\u0084\u0001\u00106\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003\"\u0006\b\u0000\u0010-\u0018\u0001\"\u0004\b\u0001\u0010\u00022\u001e\u0010/\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030.\"\b\u0012\u0004\u0012\u00028\u00000\u00032;\b\u0005\u0010\f\u001a5\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000.\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0005¢\u0006\u0002\b\u0014H\u0082\bø\u0001\u0000¢\u0006\u0004\b6\u00104\u001a#\u00108\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010.07\"\u0004\b\u0000\u0010-H\u0002¢\u0006\u0004\b8\u00109\u001ag\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003\"\u0006\b\u0000\u0010-\u0018\u0001\"\u0004\b\u0001\u0010\u00022\u0012\u0010/\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030:2*\b\u0004\u0010\f\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000.\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b00H\u0086\bø\u0001\u0000¢\u0006\u0004\b\t\u0010;\u001ax\u0010<\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003\"\u0006\b\u0000\u0010-\u0018\u0001\"\u0004\b\u0001\u0010\u00022\u0012\u0010/\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030:2;\b\u0005\u0010\f\u001a5\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000.\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0005¢\u0006\u0002\b\u0014H\u0086\bø\u0001\u0000¢\u0006\u0004\b<\u0010=\u001aj\u0010?\u001a\b\u0012\u0004\u0012\u00028\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00000\u00032\f\u0010>\u001a\b\u0012\u0004\u0012\u00028\u00010\u00032(\u0010\f\u001a$\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0005ø\u0001\u0000¢\u0006\u0004\b?\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006@"}, d2 = {"T1", "T2", "R", "Lkotlinx/coroutines/flow/f;", "flow", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "a", "b", "Lkotlin/coroutines/Continuation;", "", "transform", ai.av, "(Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/f;", "flow2", ai.aD, "Lkotlin/Function4;", "Lkotlinx/coroutines/flow/g;", "", "Lkotlin/ExtensionFunctionType;", "q", "(Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/f;", ai.aA, "T3", "flow3", com.xinzhu.overmind.utils.helpers.d.f64708a, "(Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/f;", "Lkotlin/Function5;", "j", "(Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/f;", "T4", "flow4", "e", "(Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/f;", "Lkotlin/Function6;", "k", "(Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function6;)Lkotlinx/coroutines/flow/f;", "T5", "flow5", "f", "(Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function6;)Lkotlinx/coroutines/flow/f;", "Lkotlin/Function7;", "l", "(Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function7;)Lkotlinx/coroutines/flow/f;", "T", "", "flows", "Lkotlin/Function2;", com.sdk.a.g.f56552a, "([Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/f;", "m", "([Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/f;", "o", "n", "Lkotlin/Function0;", net.lingala.zip4j.util.e.f73017f0, "()Lkotlin/jvm/functions/Function0;", "", "(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/f;", "h", "(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/f;", "other", ai.az, "kotlinx-coroutines-core"}, k = 5, mv = {1, 5, 1}, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes5.dex */
public final /* synthetic */ class FlowKt__ZipKt {

    /* compiled from: SafeCollector.common.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\b"}, d2 = {"kotlinx/coroutines/flow/FlowKt__ZipKt$a", "Lkotlinx/coroutines/flow/f;", "Lkotlinx/coroutines/flow/g;", "collector", "", "e", "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a<R> implements f<R> {

        /* renamed from: a */
        final /* synthetic */ f f71830a;

        /* renamed from: b */
        final /* synthetic */ f f71831b;

        /* renamed from: c */
        final /* synthetic */ Function3 f71832c;

        public a(f fVar, f fVar2, Function3 function3) {
            this.f71830a = fVar;
            this.f71831b = fVar2;
            this.f71832c = function3;
        }

        @Override // kotlinx.coroutines.flow.f
        @Nullable
        public Object e(@NotNull g<? super R> gVar, @NotNull Continuation<? super Unit> continuation) {
            Object coroutine_suspended;
            Object a4 = CombineKt.a(gVar, new f[]{this.f71830a, this.f71831b}, FlowKt__ZipKt.a(), new FlowKt__ZipKt$combine$1$1(this.f71832c, null), continuation);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return a4 == coroutine_suspended ? a4 : Unit.INSTANCE;
        }
    }

    public static final /* synthetic */ Function0 a() {
        return r();
    }

    public static final /* synthetic */ <T, R> f<R> b(Iterable<? extends f<? extends T>> iterable, Function2<? super T[], ? super Continuation<? super R>, ? extends Object> function2) {
        List list;
        list = CollectionsKt___CollectionsKt.toList(iterable);
        Object[] array = list.toArray(new f[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        Intrinsics.needClassReification();
        return new FlowKt__ZipKt$combine$$inlined$unsafeFlow$3((f[]) array, function2);
    }

    @NotNull
    public static final <T1, T2, R> f<R> c(@NotNull f<? extends T1> fVar, @NotNull f<? extends T2> fVar2, @NotNull Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3) {
        return h.L0(fVar, fVar2, function3);
    }

    @NotNull
    public static final <T1, T2, T3, R> f<R> d(@NotNull f<? extends T1> fVar, @NotNull f<? extends T2> fVar2, @NotNull f<? extends T3> fVar3, @BuilderInference @NotNull final Function4<? super T1, ? super T2, ? super T3, ? super Continuation<? super R>, ? extends Object> function4) {
        final f[] fVarArr = {fVar, fVar2, fVar3};
        return new f<R>() { // from class: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1

            /* compiled from: Zip.kt */
            @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0007\u001a\u00020\u0005\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u008a@¨\u0006\u0006"}, d2 = {"T", "R", "Lkotlinx/coroutines/flow/g;", "", "it", "", "kotlinx/coroutines/flow/FlowKt__ZipKt$combineUnsafe$1$1", "<anonymous>"}, k = 3, mv = {1, 5, 1})
            @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1$2", f = "Zip.kt", i = {}, l = {cn.aigestudio.downloader.bizs.d.f8368g, cn.aigestudio.downloader.bizs.d.f8368g}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1$2  reason: invalid class name */
            /* loaded from: classes5.dex */
            public static final class AnonymousClass2 extends SuspendLambda implements Function3<g<? super R>, Object[], Continuation<? super Unit>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f71759a;

                /* renamed from: b  reason: collision with root package name */
                private /* synthetic */ Object f71760b;

                /* renamed from: c  reason: collision with root package name */
                /* synthetic */ Object f71761c;

                /* renamed from: d  reason: collision with root package name */
                final /* synthetic */ Function4 f71762d;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass2(Continuation continuation, Function4 function4) {
                    super(3, continuation);
                    this.f71762d = function4;
                }

                @Override // kotlin.jvm.functions.Function3
                @Nullable
                /* renamed from: e */
                public final Object invoke(@NotNull g<? super R> gVar, @NotNull Object[] objArr, @Nullable Continuation<? super Unit> continuation) {
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation, this.f71762d);
                    anonymousClass2.f71760b = gVar;
                    anonymousClass2.f71761c = objArr;
                    return anonymousClass2.invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    Object coroutine_suspended;
                    g gVar;
                    coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i2 = this.f71759a;
                    if (i2 == 0) {
                        ResultKt.throwOnFailure(obj);
                        gVar = (g) this.f71760b;
                        Object[] objArr = (Object[]) this.f71761c;
                        Function4 function4 = this.f71762d;
                        Object obj2 = objArr[0];
                        Object obj3 = objArr[1];
                        Object obj4 = objArr[2];
                        this.f71760b = gVar;
                        this.f71759a = 1;
                        InlineMarker.mark(6);
                        obj = function4.invoke(obj2, obj3, obj4, this);
                        InlineMarker.mark(7);
                        if (obj == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else if (i2 != 1) {
                        if (i2 == 2) {
                            ResultKt.throwOnFailure(obj);
                            return Unit.INSTANCE;
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    } else {
                        gVar = (g) this.f71760b;
                        ResultKt.throwOnFailure(obj);
                    }
                    this.f71760b = null;
                    this.f71759a = 2;
                    if (gVar.emit(obj, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }
            }

            @Override // kotlinx.coroutines.flow.f
            @Nullable
            public Object e(@NotNull g gVar, @NotNull Continuation continuation) {
                Object coroutine_suspended;
                Object a4 = CombineKt.a(gVar, fVarArr, FlowKt__ZipKt.a(), new AnonymousClass2(null, function4), continuation);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return a4 == coroutine_suspended ? a4 : Unit.INSTANCE;
            }
        };
    }

    @NotNull
    public static final <T1, T2, T3, T4, R> f<R> e(@NotNull f<? extends T1> fVar, @NotNull f<? extends T2> fVar2, @NotNull f<? extends T3> fVar3, @NotNull f<? extends T4> fVar4, @NotNull final Function5<? super T1, ? super T2, ? super T3, ? super T4, ? super Continuation<? super R>, ? extends Object> function5) {
        final f[] fVarArr = {fVar, fVar2, fVar3, fVar4};
        return new f<R>() { // from class: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2

            /* compiled from: Zip.kt */
            @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0007\u001a\u00020\u0005\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u008a@¨\u0006\u0006"}, d2 = {"T", "R", "Lkotlinx/coroutines/flow/g;", "", "it", "", "kotlinx/coroutines/flow/FlowKt__ZipKt$combineUnsafe$1$1", "<anonymous>"}, k = 3, mv = {1, 5, 1})
            @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2$2", f = "Zip.kt", i = {}, l = {cn.aigestudio.downloader.bizs.d.f8368g, cn.aigestudio.downloader.bizs.d.f8368g}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2$2  reason: invalid class name */
            /* loaded from: classes5.dex */
            public static final class AnonymousClass2 extends SuspendLambda implements Function3<g<? super R>, Object[], Continuation<? super Unit>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f71765a;

                /* renamed from: b  reason: collision with root package name */
                private /* synthetic */ Object f71766b;

                /* renamed from: c  reason: collision with root package name */
                /* synthetic */ Object f71767c;

                /* renamed from: d  reason: collision with root package name */
                final /* synthetic */ Function5 f71768d;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass2(Continuation continuation, Function5 function5) {
                    super(3, continuation);
                    this.f71768d = function5;
                }

                @Override // kotlin.jvm.functions.Function3
                @Nullable
                /* renamed from: e */
                public final Object invoke(@NotNull g<? super R> gVar, @NotNull Object[] objArr, @Nullable Continuation<? super Unit> continuation) {
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation, this.f71768d);
                    anonymousClass2.f71766b = gVar;
                    anonymousClass2.f71767c = objArr;
                    return anonymousClass2.invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    Object coroutine_suspended;
                    g gVar;
                    coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i2 = this.f71765a;
                    if (i2 == 0) {
                        ResultKt.throwOnFailure(obj);
                        gVar = (g) this.f71766b;
                        Object[] objArr = (Object[]) this.f71767c;
                        Function5 function5 = this.f71768d;
                        Object obj2 = objArr[0];
                        Object obj3 = objArr[1];
                        Object obj4 = objArr[2];
                        Object obj5 = objArr[3];
                        this.f71766b = gVar;
                        this.f71765a = 1;
                        InlineMarker.mark(6);
                        obj = function5.invoke(obj2, obj3, obj4, obj5, this);
                        InlineMarker.mark(7);
                        if (obj == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else if (i2 != 1) {
                        if (i2 == 2) {
                            ResultKt.throwOnFailure(obj);
                            return Unit.INSTANCE;
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    } else {
                        gVar = (g) this.f71766b;
                        ResultKt.throwOnFailure(obj);
                    }
                    this.f71766b = null;
                    this.f71765a = 2;
                    if (gVar.emit(obj, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }
            }

            @Override // kotlinx.coroutines.flow.f
            @Nullable
            public Object e(@NotNull g gVar, @NotNull Continuation continuation) {
                Object coroutine_suspended;
                Object a4 = CombineKt.a(gVar, fVarArr, FlowKt__ZipKt.a(), new AnonymousClass2(null, function5), continuation);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return a4 == coroutine_suspended ? a4 : Unit.INSTANCE;
            }
        };
    }

    @NotNull
    public static final <T1, T2, T3, T4, T5, R> f<R> f(@NotNull f<? extends T1> fVar, @NotNull f<? extends T2> fVar2, @NotNull f<? extends T3> fVar3, @NotNull f<? extends T4> fVar4, @NotNull f<? extends T5> fVar5, @NotNull final Function6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super Continuation<? super R>, ? extends Object> function6) {
        final f[] fVarArr = {fVar, fVar2, fVar3, fVar4, fVar5};
        return new f<R>() { // from class: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3

            /* compiled from: Zip.kt */
            @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0007\u001a\u00020\u0005\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u008a@¨\u0006\u0006"}, d2 = {"T", "R", "Lkotlinx/coroutines/flow/g;", "", "it", "", "kotlinx/coroutines/flow/FlowKt__ZipKt$combineUnsafe$1$1", "<anonymous>"}, k = 3, mv = {1, 5, 1})
            @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3$2", f = "Zip.kt", i = {}, l = {cn.aigestudio.downloader.bizs.d.f8368g, cn.aigestudio.downloader.bizs.d.f8368g}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3$2  reason: invalid class name */
            /* loaded from: classes5.dex */
            public static final class AnonymousClass2 extends SuspendLambda implements Function3<g<? super R>, Object[], Continuation<? super Unit>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f71771a;

                /* renamed from: b  reason: collision with root package name */
                private /* synthetic */ Object f71772b;

                /* renamed from: c  reason: collision with root package name */
                /* synthetic */ Object f71773c;

                /* renamed from: d  reason: collision with root package name */
                final /* synthetic */ Function6 f71774d;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass2(Continuation continuation, Function6 function6) {
                    super(3, continuation);
                    this.f71774d = function6;
                }

                @Override // kotlin.jvm.functions.Function3
                @Nullable
                /* renamed from: e */
                public final Object invoke(@NotNull g<? super R> gVar, @NotNull Object[] objArr, @Nullable Continuation<? super Unit> continuation) {
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation, this.f71774d);
                    anonymousClass2.f71772b = gVar;
                    anonymousClass2.f71773c = objArr;
                    return anonymousClass2.invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    Object coroutine_suspended;
                    g gVar;
                    coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i2 = this.f71771a;
                    if (i2 == 0) {
                        ResultKt.throwOnFailure(obj);
                        gVar = (g) this.f71772b;
                        Object[] objArr = (Object[]) this.f71773c;
                        Function6 function6 = this.f71774d;
                        Object obj2 = objArr[0];
                        Object obj3 = objArr[1];
                        Object obj4 = objArr[2];
                        Object obj5 = objArr[3];
                        Object obj6 = objArr[4];
                        this.f71772b = gVar;
                        this.f71771a = 1;
                        InlineMarker.mark(6);
                        obj = function6.invoke(obj2, obj3, obj4, obj5, obj6, this);
                        InlineMarker.mark(7);
                        if (obj == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else if (i2 != 1) {
                        if (i2 == 2) {
                            ResultKt.throwOnFailure(obj);
                            return Unit.INSTANCE;
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    } else {
                        gVar = (g) this.f71772b;
                        ResultKt.throwOnFailure(obj);
                    }
                    this.f71772b = null;
                    this.f71771a = 2;
                    if (gVar.emit(obj, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }
            }

            @Override // kotlinx.coroutines.flow.f
            @Nullable
            public Object e(@NotNull g gVar, @NotNull Continuation continuation) {
                Object coroutine_suspended;
                Object a4 = CombineKt.a(gVar, fVarArr, FlowKt__ZipKt.a(), new AnonymousClass2(null, function6), continuation);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return a4 == coroutine_suspended ? a4 : Unit.INSTANCE;
            }
        };
    }

    /*  JADX ERROR: IndexOutOfBoundsException in pass: MarkMethodsForInline
        java.lang.IndexOutOfBoundsException: Index: 0
        	at java.base/java.util.Collections$EmptyList.get(Collections.java:4483)
        	at jadx.core.dex.nodes.InsnNode.getArg(InsnNode.java:104)
        	at jadx.core.dex.visitors.MarkMethodsForInline.isSyntheticAccessPattern(MarkMethodsForInline.java:117)
        	at jadx.core.dex.visitors.MarkMethodsForInline.inlineMth(MarkMethodsForInline.java:86)
        	at jadx.core.dex.visitors.MarkMethodsForInline.process(MarkMethodsForInline.java:53)
        	at jadx.core.dex.visitors.MarkMethodsForInline.visit(MarkMethodsForInline.java:37)
        */
    public static final /* synthetic */ <T, R> kotlinx.coroutines.flow.f<R> g(kotlinx.coroutines.flow.f<? extends T>[] r1, kotlin.jvm.functions.Function2<? super T[], ? super kotlin.coroutines.Continuation<? super R>, ? extends java.lang.Object> r2) {
        /*
            kotlin.jvm.internal.Intrinsics.needClassReification()
            kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$2 r0 = new kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$2
            r0.<init>(r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ZipKt.g(kotlinx.coroutines.flow.f[], kotlin.jvm.functions.Function2):kotlinx.coroutines.flow.f");
    }

    public static final /* synthetic */ <T, R> f<R> h(Iterable<? extends f<? extends T>> iterable, @BuilderInference Function3<? super g<? super R>, ? super T[], ? super Continuation<? super Unit>, ? extends Object> function3) {
        List list;
        list = CollectionsKt___CollectionsKt.toList(iterable);
        Object[] array = list.toArray(new f[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        Intrinsics.needClassReification();
        return h.K0(new FlowKt__ZipKt$combineTransform$7((f[]) array, function3, null));
    }

    @NotNull
    public static final <T1, T2, R> f<R> i(@NotNull f<? extends T1> fVar, @NotNull f<? extends T2> fVar2, @BuilderInference @NotNull Function4<? super g<? super R>, ? super T1, ? super T2, ? super Continuation<? super Unit>, ? extends Object> function4) {
        return h.K0(new FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$2(new f[]{fVar, fVar2}, null, function4));
    }

    @NotNull
    public static final <T1, T2, T3, R> f<R> j(@NotNull f<? extends T1> fVar, @NotNull f<? extends T2> fVar2, @NotNull f<? extends T3> fVar3, @BuilderInference @NotNull Function5<? super g<? super R>, ? super T1, ? super T2, ? super T3, ? super Continuation<? super Unit>, ? extends Object> function5) {
        return h.K0(new FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$3(new f[]{fVar, fVar2, fVar3}, null, function5));
    }

    @NotNull
    public static final <T1, T2, T3, T4, R> f<R> k(@NotNull f<? extends T1> fVar, @NotNull f<? extends T2> fVar2, @NotNull f<? extends T3> fVar3, @NotNull f<? extends T4> fVar4, @BuilderInference @NotNull Function6<? super g<? super R>, ? super T1, ? super T2, ? super T3, ? super T4, ? super Continuation<? super Unit>, ? extends Object> function6) {
        return h.K0(new FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$4(new f[]{fVar, fVar2, fVar3, fVar4}, null, function6));
    }

    @NotNull
    public static final <T1, T2, T3, T4, T5, R> f<R> l(@NotNull f<? extends T1> fVar, @NotNull f<? extends T2> fVar2, @NotNull f<? extends T3> fVar3, @NotNull f<? extends T4> fVar4, @NotNull f<? extends T5> fVar5, @BuilderInference @NotNull Function7<? super g<? super R>, ? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super Continuation<? super Unit>, ? extends Object> function7) {
        return h.K0(new FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$5(new f[]{fVar, fVar2, fVar3, fVar4, fVar5}, null, function7));
    }

    /*  JADX ERROR: IndexOutOfBoundsException in pass: MarkMethodsForInline
        java.lang.IndexOutOfBoundsException: Index: 0
        	at java.base/java.util.Collections$EmptyList.get(Collections.java:4483)
        	at jadx.core.dex.nodes.InsnNode.getArg(InsnNode.java:104)
        	at jadx.core.dex.visitors.MarkMethodsForInline.isSyntheticAccessPattern(MarkMethodsForInline.java:117)
        	at jadx.core.dex.visitors.MarkMethodsForInline.inlineMth(MarkMethodsForInline.java:86)
        	at jadx.core.dex.visitors.MarkMethodsForInline.process(MarkMethodsForInline.java:53)
        	at jadx.core.dex.visitors.MarkMethodsForInline.visit(MarkMethodsForInline.java:37)
        */
    public static final /* synthetic */ <T, R> kotlinx.coroutines.flow.f<R> m(kotlinx.coroutines.flow.f<? extends T>[] r2, @kotlin.BuilderInference kotlin.jvm.functions.Function3<? super kotlinx.coroutines.flow.g<? super R>, ? super T[], ? super kotlin.coroutines.Continuation<? super kotlin.Unit>, ? extends java.lang.Object> r3) {
        /*
            kotlin.jvm.internal.Intrinsics.needClassReification()
            kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$6 r0 = new kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$6
            r1 = 0
            r0.<init>(r2, r3, r1)
            kotlinx.coroutines.flow.f r2 = kotlinx.coroutines.flow.h.K0(r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ZipKt.m(kotlinx.coroutines.flow.f[], kotlin.jvm.functions.Function3):kotlinx.coroutines.flow.f");
    }

    /*  JADX ERROR: IndexOutOfBoundsException in pass: MarkMethodsForInline
        java.lang.IndexOutOfBoundsException: Index: 0
        	at java.base/java.util.Collections$EmptyList.get(Collections.java:4483)
        	at jadx.core.dex.nodes.InsnNode.getArg(InsnNode.java:104)
        	at jadx.core.dex.visitors.MarkMethodsForInline.isSyntheticAccessPattern(MarkMethodsForInline.java:117)
        	at jadx.core.dex.visitors.MarkMethodsForInline.inlineMth(MarkMethodsForInline.java:86)
        	at jadx.core.dex.visitors.MarkMethodsForInline.process(MarkMethodsForInline.java:53)
        	at jadx.core.dex.visitors.MarkMethodsForInline.visit(MarkMethodsForInline.java:37)
        */
    private static final /* synthetic */ <T, R> kotlinx.coroutines.flow.f<R> n(kotlinx.coroutines.flow.f<? extends T>[] r2, @kotlin.BuilderInference kotlin.jvm.functions.Function3<? super kotlinx.coroutines.flow.g<? super R>, ? super T[], ? super kotlin.coroutines.Continuation<? super kotlin.Unit>, ? extends java.lang.Object> r3) {
        /*
            kotlin.jvm.internal.Intrinsics.needClassReification()
            kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransformUnsafe$1 r0 = new kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransformUnsafe$1
            r1 = 0
            r0.<init>(r2, r3, r1)
            kotlinx.coroutines.flow.f r2 = kotlinx.coroutines.flow.h.K0(r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ZipKt.n(kotlinx.coroutines.flow.f[], kotlin.jvm.functions.Function3):kotlinx.coroutines.flow.f");
    }

    /*  JADX ERROR: IndexOutOfBoundsException in pass: MarkMethodsForInline
        java.lang.IndexOutOfBoundsException: Index: 0
        	at java.base/java.util.Collections$EmptyList.get(Collections.java:4483)
        	at jadx.core.dex.nodes.InsnNode.getArg(InsnNode.java:104)
        	at jadx.core.dex.visitors.MarkMethodsForInline.isSyntheticAccessPattern(MarkMethodsForInline.java:117)
        	at jadx.core.dex.visitors.MarkMethodsForInline.inlineMth(MarkMethodsForInline.java:86)
        	at jadx.core.dex.visitors.MarkMethodsForInline.process(MarkMethodsForInline.java:53)
        	at jadx.core.dex.visitors.MarkMethodsForInline.visit(MarkMethodsForInline.java:37)
        */
    private static final /* synthetic */ <T, R> kotlinx.coroutines.flow.f<R> o(kotlinx.coroutines.flow.f<? extends T>[] r1, kotlin.jvm.functions.Function2<? super T[], ? super kotlin.coroutines.Continuation<? super R>, ? extends java.lang.Object> r2) {
        /*
            kotlin.jvm.internal.Intrinsics.needClassReification()
            kotlinx.coroutines.flow.FlowKt__ZipKt$combineUnsafe$$inlined$unsafeFlow$1 r0 = new kotlinx.coroutines.flow.FlowKt__ZipKt$combineUnsafe$$inlined$unsafeFlow$1
            r0.<init>(r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ZipKt.o(kotlinx.coroutines.flow.f[], kotlin.jvm.functions.Function2):kotlinx.coroutines.flow.f");
    }

    @JvmName(name = "flowCombine")
    @NotNull
    public static final <T1, T2, R> f<R> p(@NotNull f<? extends T1> fVar, @NotNull f<? extends T2> fVar2, @NotNull Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3) {
        return new a(fVar, fVar2, function3);
    }

    @JvmName(name = "flowCombineTransform")
    @NotNull
    public static final <T1, T2, R> f<R> q(@NotNull f<? extends T1> fVar, @NotNull f<? extends T2> fVar2, @BuilderInference @NotNull Function4<? super g<? super R>, ? super T1, ? super T2, ? super Continuation<? super Unit>, ? extends Object> function4) {
        return h.K0(new FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$1(new f[]{fVar, fVar2}, null, function4));
    }

    private static final <T> Function0<T[]> r() {
        return new Function0() { // from class: kotlinx.coroutines.flow.FlowKt__ZipKt$nullArrayFactory$1
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            /* renamed from: a */
            public final Void invoke() {
                return null;
            }
        };
    }

    @NotNull
    public static final <T1, T2, R> f<R> s(@NotNull f<? extends T1> fVar, @NotNull f<? extends T2> fVar2, @NotNull Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3) {
        return CombineKt.b(fVar, fVar2, function3);
    }
}
