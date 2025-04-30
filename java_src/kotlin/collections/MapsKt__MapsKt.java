package kotlin.collections;

import com.tencent.cos.common.COSHttpResponseKey;
import io.netty.handler.codec.rtsp.RtspHeaders;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.BuilderInference;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Maps.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0088\u0001\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010&\n\u0002\b\t\n\u0002\u0010(\n\u0000\n\u0002\u0010)\n\u0002\u0010'\n\u0002\b\t\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\b\u001d\u001a\u001e\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\u001aQ\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012*\u0010\u0006\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050\u0004\"\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b\u001a!\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001H\u0087\b\u001a!\u0010\n\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\t\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001H\u0087\b\u001aQ\u0010\n\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\t\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012*\u0010\u0006\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050\u0004\"\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0004\b\n\u0010\b\u001a1\u0010\r\u001a\u001e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000bj\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001`\f\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001H\u0087\b\u001aa\u0010\r\u001a\u001e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000bj\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001`\f\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012*\u0010\u0006\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050\u0004\"\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0004\b\r\u0010\u000e\u001a1\u0010\u0011\u001a\u001e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000fj\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001`\u0010\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001H\u0087\b\u001aa\u0010\u0011\u001a\u001e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000fj\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001`\u0010\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012*\u0010\u0006\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050\u0004\"\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0004\b\u0011\u0010\u0012\u001aX\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012%\b\u0001\u0010\u0016\u001a\u001f\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\t\u0012\u0004\u0012\u00020\u00140\u0013¢\u0006\u0002\b\u0015H\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001\u001a`\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012\u0006\u0010\u0019\u001a\u00020\u00182%\b\u0001\u0010\u0016\u001a\u001f\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\t\u0012\u0004\u0012\u00020\u00140\u0013¢\u0006\u0002\b\u0015H\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001\u001a'\u0010\u001b\u001a\u00020\u001a\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002H\u0087\b\u001a:\u0010\u001c\u001a\u00020\u001a\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0012\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0002H\u0087\b\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010\u0000\u001a3\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0002H\u0087\b\u001aA\u0010\"\u001a\u00028\u0001\"\u0014\b\u0000\u0010\u001e*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0002*\u00028\u0001\"\u0004\b\u0001\u0010\u001f*\u00028\u00002\f\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00010 H\u0087\bø\u0001\u0000¢\u0006\u0004\b\"\u0010#\u001a;\u0010&\u001a\u00020\u001a\"\t\b\u0000\u0010\u0000¢\u0006\u0002\b$\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010%\u001a\u00028\u0000H\u0087\n¢\u0006\u0004\b&\u0010'\u001a=\u0010(\u001a\u0004\u0018\u00018\u0001\"\t\b\u0000\u0010\u0000¢\u0006\u0002\b$\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010%\u001a\u00028\u0000H\u0087\n¢\u0006\u0004\b(\u0010)\u001a<\u0010+\u001a\u00020\u0014\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\t2\u0006\u0010%\u001a\u00028\u00002\u0006\u0010*\u001a\u00028\u0001H\u0087\n¢\u0006\u0004\b+\u0010,\u001a3\u0010-\u001a\u00020\u001a\"\t\b\u0000\u0010\u0000¢\u0006\u0002\b$*\u000e\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0002\b\u00030\u00022\u0006\u0010%\u001a\u00028\u0000H\u0087\b¢\u0006\u0004\b-\u0010'\u001a9\u0010.\u001a\u00020\u001a\"\u0004\b\u0000\u0010\u0000\"\t\b\u0001\u0010\u0001¢\u0006\u0002\b$*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010*\u001a\u00028\u0001H\u0087\b¢\u0006\u0004\b.\u0010'\u001a=\u0010/\u001a\u0004\u0018\u00018\u0001\"\t\b\u0000\u0010\u0000¢\u0006\u0002\b$\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\t2\u0006\u0010%\u001a\u00028\u0000H\u0087\b¢\u0006\u0004\b/\u0010)\u001a,\u00101\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000100H\u0087\n¢\u0006\u0004\b1\u00102\u001a,\u00103\u001a\u00028\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000100H\u0087\n¢\u0006\u0004\b3\u00102\u001a1\u00104\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000100H\u0087\b\u001aE\u00105\u001a\u00028\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010%\u001a\u00028\u00002\f\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00010 H\u0087\bø\u0001\u0000¢\u0006\u0004\b5\u00106\u001aE\u00107\u001a\u00028\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010%\u001a\u00028\u00002\f\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00010 H\u0080\bø\u0001\u0000¢\u0006\u0004\b7\u00106\u001a3\u00108\u001a\u00028\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010%\u001a\u00028\u0000H\u0007¢\u0006\u0004\b8\u0010)\u001aE\u00109\u001a\u00028\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\t2\u0006\u0010%\u001a\u00028\u00002\f\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00010 H\u0086\bø\u0001\u0000¢\u0006\u0004\b9\u00106\u001a9\u0010;\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001000:\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002H\u0087\n\u001a>\u0010;\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010=0<\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\tH\u0087\n¢\u0006\u0004\b>\u0010?\u001ay\u0010B\u001a\u00028\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u001f\"\u0018\b\u0003\u0010\u001e*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0000\u0012\u0006\b\u0000\u0012\u00028\u00020\t*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010@\u001a\u00028\u00032\u001e\u0010A\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000100\u0012\u0004\u0012\u00028\u00020\u0013H\u0086\bø\u0001\u0000¢\u0006\u0004\bB\u0010C\u001ay\u0010D\u001a\u00028\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u001f\"\u0018\b\u0003\u0010\u001e*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0002\u0012\u0006\b\u0000\u0012\u00028\u00010\t*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010@\u001a\u00028\u00032\u001e\u0010A\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000100\u0012\u0004\u0012\u00028\u00020\u0013H\u0086\bø\u0001\u0000¢\u0006\u0004\bD\u0010C\u001aI\u0010E\u001a\u00020\u0014\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0000\u0012\u0006\b\u0000\u0012\u00028\u00010\t2\u001a\u0010\u0006\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050\u0004¢\u0006\u0004\bE\u0010F\u001a@\u0010E\u001a\u00020\u0014\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0000\u0012\u0006\b\u0000\u0012\u00028\u00010\t2\u0018\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050G\u001a@\u0010E\u001a\u00020\u0014\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0000\u0012\u0006\b\u0000\u0012\u00028\u00010\t2\u0018\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050H\u001a\\\u0010I\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00020\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u001f*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u001e\u0010A\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000100\u0012\u0004\u0012\u00028\u00020\u0013H\u0086\bø\u0001\u0000\u001a\\\u0010J\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u001f*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u001e\u0010A\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000100\u0012\u0004\u0012\u00028\u00020\u0013H\u0086\bø\u0001\u0000\u001aJ\u0010L\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0012\u0010K\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001a0\u0013H\u0086\bø\u0001\u0000\u001aJ\u0010M\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0012\u0010K\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u001a0\u0013H\u0086\bø\u0001\u0000\u001as\u0010N\u001a\u00028\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0018\b\u0002\u0010\u001e*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0000\u0012\u0006\b\u0000\u0012\u00028\u00010\t*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010@\u001a\u00028\u00022\u001e\u0010K\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000100\u0012\u0004\u0012\u00020\u001a0\u0013H\u0086\bø\u0001\u0000¢\u0006\u0004\bN\u0010C\u001aV\u0010O\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u001e\u0010K\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000100\u0012\u0004\u0012\u00020\u001a0\u0013H\u0086\bø\u0001\u0000\u001as\u0010P\u001a\u00028\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0018\b\u0002\u0010\u001e*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0000\u0012\u0006\b\u0000\u0012\u00028\u00010\t*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010@\u001a\u00028\u00022\u001e\u0010K\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000100\u0012\u0004\u0012\u00020\u001a0\u0013H\u0086\bø\u0001\u0000¢\u0006\u0004\bP\u0010C\u001aV\u0010Q\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u001e\u0010K\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000100\u0012\u0004\u0012\u00020\u001a0\u0013H\u0086\bø\u0001\u0000\u001a4\u0010R\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050G\u001aQ\u0010R\u001a\u00028\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0018\b\u0002\u0010\u001e*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0000\u0012\u0006\b\u0000\u0012\u00028\u00010\t*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050G2\u0006\u0010@\u001a\u00028\u0002¢\u0006\u0004\bR\u0010S\u001a=\u0010R\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050\u0004¢\u0006\u0004\bR\u0010\b\u001aS\u0010R\u001a\u00028\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0018\b\u0002\u0010\u001e*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0000\u0012\u0006\b\u0000\u0012\u00028\u00010\t*\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050\u00042\u0006\u0010@\u001a\u00028\u0002¢\u0006\u0004\bR\u0010T\u001a4\u0010R\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050H\u001aQ\u0010R\u001a\u00028\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0018\b\u0002\u0010\u001e*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0000\u0012\u0006\b\u0000\u0012\u00028\u00010\t*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050H2\u0006\u0010@\u001a\u00028\u0002¢\u0006\u0004\bR\u0010U\u001a2\u0010R\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002H\u0007\u001a2\u0010V\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\t\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002H\u0007\u001aO\u0010R\u001a\u00028\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0018\b\u0002\u0010\u001e*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0000\u0012\u0006\b\u0000\u0012\u00028\u00010\t*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010@\u001a\u00028\u0002H\u0007¢\u0006\u0004\bR\u0010W\u001aG\u0010Y\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0012\u0010X\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005H\u0086\u0002\u001aM\u0010Y\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0018\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050GH\u0086\u0002\u001aV\u0010Y\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u001a\u0010\u0006\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050\u0004H\u0086\u0002¢\u0006\u0004\bY\u0010Z\u001aM\u0010Y\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0018\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050HH\u0086\u0002\u001aI\u0010Y\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0014\u0010[\u001a\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002H\u0086\u0002\u001a=\u0010\\\u001a\u00020\u0014\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0000\u0012\u0006\b\u0000\u0012\u00028\u00010\t2\u0012\u0010X\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005H\u0087\n\u001aC\u0010\\\u001a\u00020\u0014\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0000\u0012\u0006\b\u0000\u0012\u00028\u00010\t2\u0018\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050GH\u0087\n\u001aL\u0010\\\u001a\u00020\u0014\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0000\u0012\u0006\b\u0000\u0012\u00028\u00010\t2\u001a\u0010\u0006\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050\u0004H\u0087\n¢\u0006\u0004\b\\\u0010F\u001aC\u0010\\\u001a\u00020\u0014\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0000\u0012\u0006\b\u0000\u0012\u00028\u00010\t2\u0018\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050HH\u0087\n\u001a=\u0010\\\u001a\u00020\u0014\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0000\u0012\u0006\b\u0000\u0012\u00028\u00010\t2\u0012\u0010[\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002H\u0087\n\u001aB\u0010]\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010%\u001a\u00028\u0000H\u0087\u0002¢\u0006\u0004\b]\u0010^\u001aA\u0010]\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\f\u0010_\u001a\b\u0012\u0004\u0012\u00028\u00000GH\u0087\u0002\u001aJ\u0010]\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u000e\u0010_\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0004H\u0087\u0002¢\u0006\u0004\b]\u0010`\u001aA\u0010]\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\f\u0010_\u001a\b\u0012\u0004\u0012\u00028\u00000HH\u0087\u0002\u001a4\u0010a\u001a\u00020\u0014\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\t2\u0006\u0010%\u001a\u00028\u0000H\u0087\n¢\u0006\u0004\ba\u0010b\u001a3\u0010a\u001a\u00020\u0014\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\t2\f\u0010_\u001a\b\u0012\u0004\u0012\u00028\u00000GH\u0087\n\u001a<\u0010a\u001a\u00020\u0014\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\t2\u000e\u0010_\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0004H\u0087\n¢\u0006\u0004\ba\u0010c\u001a3\u0010a\u001a\u00020\u0014\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\t2\f\u0010_\u001a\b\u0012\u0004\u0012\u00028\u00000HH\u0087\n\u001a0\u0010d\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002H\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006e"}, d2 = {"K", "V", "", "emptyMap", "", "Lkotlin/Pair;", "pairs", "mapOf", "([Lkotlin/Pair;)Ljava/util/Map;", "", "mutableMapOf", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "hashMapOf", "([Lkotlin/Pair;)Ljava/util/HashMap;", "Ljava/util/LinkedHashMap;", "Lkotlin/collections/LinkedHashMap;", "linkedMapOf", "([Lkotlin/Pair;)Ljava/util/LinkedHashMap;", "Lkotlin/Function1;", "", "Lkotlin/ExtensionFunctionType;", "builderAction", "buildMap", "", "capacity", "", "isNotEmpty", "isNullOrEmpty", "orEmpty", "M", "R", "Lkotlin/Function0;", "defaultValue", "ifEmpty", "(Ljava/util/Map;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "Lkotlin/internal/OnlyInputTypes;", "key", "contains", "(Ljava/util/Map;Ljava/lang/Object;)Z", "get", "(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;", "value", "set", "(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V", "containsKey", "containsValue", "remove", "", "component1", "(Ljava/util/Map$Entry;)Ljava/lang/Object;", "component2", "toPair", "getOrElse", "(Ljava/util/Map;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "getOrElseNullable", "getValue", "getOrPut", "", "iterator", "", "", "mutableIterator", "(Ljava/util/Map;)Ljava/util/Iterator;", RtspHeaders.Values.DESTINATION, "transform", "mapValuesTo", "(Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;", "mapKeysTo", "putAll", "(Ljava/util/Map;[Lkotlin/Pair;)V", "", "Lkotlin/sequences/Sequence;", "mapValues", "mapKeys", "predicate", "filterKeys", "filterValues", "filterTo", "filter", "filterNotTo", "filterNot", "toMap", "(Ljava/lang/Iterable;Ljava/util/Map;)Ljava/util/Map;", "([Lkotlin/Pair;Ljava/util/Map;)Ljava/util/Map;", "(Lkotlin/sequences/Sequence;Ljava/util/Map;)Ljava/util/Map;", "toMutableMap", "(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;", "pair", "plus", "(Ljava/util/Map;[Lkotlin/Pair;)Ljava/util/Map;", "map", "plusAssign", "minus", "(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;", COSHttpResponseKey.Data.KEYS, "(Ljava/util/Map;[Ljava/lang/Object;)Ljava/util/Map;", "minusAssign", "(Ljava/util/Map;Ljava/lang/Object;)V", "(Ljava/util/Map;[Ljava/lang/Object;)V", "optimizeReadOnlyMap", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/collections/MapsKt")
/* loaded from: classes.dex */
public class MapsKt__MapsKt extends MapsKt__MapsJVMKt {
    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    @InlineOnly
    private static final <K, V> Map<K, V> buildMap(@BuilderInference Function1<? super Map<K, V>, Unit> function1) {
        Map createMapBuilder = MapsKt__MapsJVMKt.createMapBuilder();
        function1.invoke(createMapBuilder);
        return MapsKt__MapsJVMKt.build(createMapBuilder);
    }

    @InlineOnly
    private static final <K, V> K component1(Map.Entry<? extends K, ? extends V> component1) {
        Intrinsics.checkNotNullParameter(component1, "$this$component1");
        return component1.getKey();
    }

    @InlineOnly
    private static final <K, V> V component2(Map.Entry<? extends K, ? extends V> component2) {
        Intrinsics.checkNotNullParameter(component2, "$this$component2");
        return component2.getValue();
    }

    @InlineOnly
    private static final <K, V> boolean contains(Map<? extends K, ? extends V> contains, K k4) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.containsKey(k4);
    }

    @InlineOnly
    private static final <K> boolean containsKey(Map<? extends K, ?> map, K k4) {
        Objects.requireNonNull(map, "null cannot be cast to non-null type kotlin.collections.Map<K, *>");
        return map.containsKey(k4);
    }

    @InlineOnly
    private static final <K, V> boolean containsValue(Map<K, ? extends V> map, V v3) {
        return map.containsValue(v3);
    }

    @NotNull
    public static <K, V> Map<K, V> emptyMap() {
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        Objects.requireNonNull(emptyMap, "null cannot be cast to non-null type kotlin.collections.Map<K, V>");
        return emptyMap;
    }

    @NotNull
    public static final <K, V> Map<K, V> filter(@NotNull Map<? extends K, ? extends V> filter, @NotNull Function1<? super Map.Entry<? extends K, ? extends V>, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(filter, "$this$filter");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<? extends K, ? extends V> entry : filter.entrySet()) {
            if (predicate.invoke(entry).booleanValue()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    @NotNull
    public static final <K, V> Map<K, V> filterKeys(@NotNull Map<? extends K, ? extends V> filterKeys, @NotNull Function1<? super K, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(filterKeys, "$this$filterKeys");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<? extends K, ? extends V> entry : filterKeys.entrySet()) {
            if (predicate.invoke((K) entry.getKey()).booleanValue()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    @NotNull
    public static final <K, V> Map<K, V> filterNot(@NotNull Map<? extends K, ? extends V> filterNot, @NotNull Function1<? super Map.Entry<? extends K, ? extends V>, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(filterNot, "$this$filterNot");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<? extends K, ? extends V> entry : filterNot.entrySet()) {
            if (!predicate.invoke(entry).booleanValue()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M filterNotTo(@NotNull Map<? extends K, ? extends V> filterNotTo, @NotNull M destination, @NotNull Function1<? super Map.Entry<? extends K, ? extends V>, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(filterNotTo, "$this$filterNotTo");
        Intrinsics.checkNotNullParameter(destination, "destination");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        for (Map.Entry<? extends K, ? extends V> entry : filterNotTo.entrySet()) {
            if (!predicate.invoke(entry).booleanValue()) {
                destination.put(entry.getKey(), entry.getValue());
            }
        }
        return destination;
    }

    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M filterTo(@NotNull Map<? extends K, ? extends V> filterTo, @NotNull M destination, @NotNull Function1<? super Map.Entry<? extends K, ? extends V>, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(filterTo, "$this$filterTo");
        Intrinsics.checkNotNullParameter(destination, "destination");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        for (Map.Entry<? extends K, ? extends V> entry : filterTo.entrySet()) {
            if (predicate.invoke(entry).booleanValue()) {
                destination.put(entry.getKey(), entry.getValue());
            }
        }
        return destination;
    }

    @NotNull
    public static final <K, V> Map<K, V> filterValues(@NotNull Map<? extends K, ? extends V> filterValues, @NotNull Function1<? super V, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(filterValues, "$this$filterValues");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<? extends K, ? extends V> entry : filterValues.entrySet()) {
            if (predicate.invoke((V) entry.getValue()).booleanValue()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    @InlineOnly
    private static final <K, V> V get(Map<? extends K, ? extends V> get, K k4) {
        Intrinsics.checkNotNullParameter(get, "$this$get");
        return get.get(k4);
    }

    @InlineOnly
    private static final <K, V> V getOrElse(Map<K, ? extends V> map, K k4, Function0<? extends V> function0) {
        V v3 = map.get(k4);
        return v3 != null ? v3 : function0.invoke();
    }

    public static final <K, V> V getOrElseNullable(@NotNull Map<K, ? extends V> getOrElseNullable, K k4, @NotNull Function0<? extends V> defaultValue) {
        Intrinsics.checkNotNullParameter(getOrElseNullable, "$this$getOrElseNullable");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        V v3 = getOrElseNullable.get(k4);
        return (v3 != null || getOrElseNullable.containsKey(k4)) ? v3 : defaultValue.invoke();
    }

    public static final <K, V> V getOrPut(@NotNull Map<K, V> getOrPut, K k4, @NotNull Function0<? extends V> defaultValue) {
        Intrinsics.checkNotNullParameter(getOrPut, "$this$getOrPut");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        V v3 = getOrPut.get(k4);
        if (v3 == null) {
            V invoke = defaultValue.invoke();
            getOrPut.put(k4, invoke);
            return invoke;
        }
        return v3;
    }

    @SinceKotlin(version = "1.1")
    public static final <K, V> V getValue(@NotNull Map<K, ? extends V> getValue, K k4) {
        Intrinsics.checkNotNullParameter(getValue, "$this$getValue");
        return (V) MapsKt__MapWithDefaultKt.getOrImplicitDefaultNullable(getValue, k4);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final <K, V> HashMap<K, V> hashMapOf() {
        return new HashMap<>();
    }

    /* JADX WARN: Incorrect types in method signature: <M::Ljava/util/Map<**>;:TR;R:Ljava/lang/Object;>(TM;Lkotlin/jvm/functions/Function0<+TR;>;)TR; */
    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final Object ifEmpty(Map map, Function0 function0) {
        return map.isEmpty() ? function0.invoke() : map;
    }

    @InlineOnly
    private static final <K, V> boolean isNotEmpty(Map<? extends K, ? extends V> map) {
        return !map.isEmpty();
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <K, V> boolean isNullOrEmpty(Map<? extends K, ? extends V> map) {
        return map == null || map.isEmpty();
    }

    @InlineOnly
    private static final <K, V> Iterator<Map.Entry<K, V>> iterator(Map<? extends K, ? extends V> iterator) {
        Intrinsics.checkNotNullParameter(iterator, "$this$iterator");
        return (Iterator<Map.Entry<? extends K, ? extends V>>) iterator.entrySet().iterator();
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final <K, V> LinkedHashMap<K, V> linkedMapOf() {
        return new LinkedHashMap<>();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <K, V, R> Map<R, V> mapKeys(@NotNull Map<? extends K, ? extends V> mapKeys, @NotNull Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> transform) {
        Intrinsics.checkNotNullParameter(mapKeys, "$this$mapKeys");
        Intrinsics.checkNotNullParameter(transform, "transform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(mapKeys.size()));
        for (Object obj : mapKeys.entrySet()) {
            linkedHashMap.put(transform.invoke(obj), ((Map.Entry) obj).getValue());
        }
        return linkedHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <K, V, R, M extends Map<? super R, ? super V>> M mapKeysTo(@NotNull Map<? extends K, ? extends V> mapKeysTo, @NotNull M destination, @NotNull Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> transform) {
        Intrinsics.checkNotNullParameter(mapKeysTo, "$this$mapKeysTo");
        Intrinsics.checkNotNullParameter(destination, "destination");
        Intrinsics.checkNotNullParameter(transform, "transform");
        for (Object obj : mapKeysTo.entrySet()) {
            destination.put(transform.invoke(obj), ((Map.Entry) obj).getValue());
        }
        return destination;
    }

    @NotNull
    public static final <K, V> Map<K, V> mapOf(@NotNull Pair<? extends K, ? extends V>... pairs) {
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        return pairs.length > 0 ? toMap(pairs, new LinkedHashMap(MapsKt.mapCapacity(pairs.length))) : MapsKt.emptyMap();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <K, V, R> Map<K, R> mapValues(@NotNull Map<? extends K, ? extends V> mapValues, @NotNull Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> transform) {
        Intrinsics.checkNotNullParameter(mapValues, "$this$mapValues");
        Intrinsics.checkNotNullParameter(transform, "transform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(mapValues.size()));
        for (Object obj : mapValues.entrySet()) {
            linkedHashMap.put(((Map.Entry) obj).getKey(), transform.invoke(obj));
        }
        return linkedHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <K, V, R, M extends Map<? super K, ? super R>> M mapValuesTo(@NotNull Map<? extends K, ? extends V> mapValuesTo, @NotNull M destination, @NotNull Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> transform) {
        Intrinsics.checkNotNullParameter(mapValuesTo, "$this$mapValuesTo");
        Intrinsics.checkNotNullParameter(destination, "destination");
        Intrinsics.checkNotNullParameter(transform, "transform");
        for (Object obj : mapValuesTo.entrySet()) {
            destination.put(((Map.Entry) obj).getKey(), transform.invoke(obj));
        }
        return destination;
    }

    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <K, V> Map<K, V> minus(@NotNull Map<? extends K, ? extends V> minus, K k4) {
        Intrinsics.checkNotNullParameter(minus, "$this$minus");
        Map mutableMap = MapsKt.toMutableMap(minus);
        mutableMap.remove(k4);
        return optimizeReadOnlyMap(mutableMap);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final <K, V> void minusAssign(Map<K, V> minusAssign, K k4) {
        Intrinsics.checkNotNullParameter(minusAssign, "$this$minusAssign");
        minusAssign.remove(k4);
    }

    @InlineOnly
    @JvmName(name = "mutableIterator")
    private static final <K, V> Iterator<Map.Entry<K, V>> mutableIterator(Map<K, V> iterator) {
        Intrinsics.checkNotNullParameter(iterator, "$this$iterator");
        return iterator.entrySet().iterator();
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final <K, V> Map<K, V> mutableMapOf() {
        return new LinkedHashMap();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <K, V> Map<K, V> optimizeReadOnlyMap(@NotNull Map<K, ? extends V> optimizeReadOnlyMap) {
        Intrinsics.checkNotNullParameter(optimizeReadOnlyMap, "$this$optimizeReadOnlyMap");
        int size = optimizeReadOnlyMap.size();
        if (size != 0) {
            return size != 1 ? optimizeReadOnlyMap : MapsKt__MapsJVMKt.toSingletonMap(optimizeReadOnlyMap);
        }
        return MapsKt.emptyMap();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InlineOnly
    private static final <K, V> Map<K, V> orEmpty(Map<K, ? extends V> map) {
        return map != 0 ? map : MapsKt.emptyMap();
    }

    @NotNull
    public static final <K, V> Map<K, V> plus(@NotNull Map<? extends K, ? extends V> plus, @NotNull Pair<? extends K, ? extends V> pair) {
        Intrinsics.checkNotNullParameter(plus, "$this$plus");
        Intrinsics.checkNotNullParameter(pair, "pair");
        if (plus.isEmpty()) {
            return MapsKt.mapOf(pair);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(plus);
        linkedHashMap.put(pair.getFirst(), pair.getSecond());
        return linkedHashMap;
    }

    @InlineOnly
    private static final <K, V> void plusAssign(Map<? super K, ? super V> plusAssign, Pair<? extends K, ? extends V> pair) {
        Intrinsics.checkNotNullParameter(plusAssign, "$this$plusAssign");
        plusAssign.put((K) pair.getFirst(), (V) pair.getSecond());
    }

    public static final <K, V> void putAll(@NotNull Map<? super K, ? super V> putAll, @NotNull Pair<? extends K, ? extends V>[] pairs) {
        Intrinsics.checkNotNullParameter(putAll, "$this$putAll");
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        for (Pair<? extends K, ? extends V> pair : pairs) {
            putAll.put((K) pair.component1(), (V) pair.component2());
        }
    }

    @InlineOnly
    private static final <K, V> V remove(Map<? extends K, V> map, K k4) {
        Objects.requireNonNull(map, "null cannot be cast to non-null type kotlin.collections.MutableMap<K, V>");
        return (V) TypeIntrinsics.asMutableMap(map).remove(k4);
    }

    @InlineOnly
    private static final <K, V> void set(Map<K, V> set, K k4, V v3) {
        Intrinsics.checkNotNullParameter(set, "$this$set");
        set.put(k4, v3);
    }

    @NotNull
    public static <K, V> Map<K, V> toMap(@NotNull Iterable<? extends Pair<? extends K, ? extends V>> toMap) {
        Intrinsics.checkNotNullParameter(toMap, "$this$toMap");
        if (toMap instanceof Collection) {
            Collection collection = (Collection) toMap;
            int size = collection.size();
            if (size != 0) {
                if (size != 1) {
                    return toMap(toMap, new LinkedHashMap(MapsKt.mapCapacity(collection.size())));
                }
                return MapsKt.mapOf(toMap instanceof List ? (Pair<? extends K, ? extends V>) ((List) toMap).get(0) : toMap.iterator().next());
            }
            return MapsKt.emptyMap();
        }
        return optimizeReadOnlyMap(toMap(toMap, new LinkedHashMap()));
    }

    @SinceKotlin(version = "1.1")
    @NotNull
    public static <K, V> Map<K, V> toMutableMap(@NotNull Map<? extends K, ? extends V> toMutableMap) {
        Intrinsics.checkNotNullParameter(toMutableMap, "$this$toMutableMap");
        return new LinkedHashMap(toMutableMap);
    }

    @InlineOnly
    private static final <K, V> Pair<K, V> toPair(Map.Entry<? extends K, ? extends V> entry) {
        return new Pair<>(entry.getKey(), entry.getValue());
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    @InlineOnly
    private static final <K, V> Map<K, V> buildMap(int i2, @BuilderInference Function1<? super Map<K, V>, Unit> function1) {
        Map createMapBuilder = MapsKt__MapsJVMKt.createMapBuilder(i2);
        function1.invoke(createMapBuilder);
        return MapsKt__MapsJVMKt.build(createMapBuilder);
    }

    @NotNull
    public static final <K, V> HashMap<K, V> hashMapOf(@NotNull Pair<? extends K, ? extends V>... pairs) {
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        HashMap<K, V> hashMap = new HashMap<>(MapsKt.mapCapacity(pairs.length));
        putAll(hashMap, pairs);
        return hashMap;
    }

    @NotNull
    public static final <K, V> LinkedHashMap<K, V> linkedMapOf(@NotNull Pair<? extends K, ? extends V>... pairs) {
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        return (LinkedHashMap) toMap(pairs, new LinkedHashMap(MapsKt.mapCapacity(pairs.length)));
    }

    @InlineOnly
    private static final <K, V> Map<K, V> mapOf() {
        return MapsKt.emptyMap();
    }

    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <K, V> Map<K, V> minus(@NotNull Map<? extends K, ? extends V> minus, @NotNull Iterable<? extends K> keys) {
        Intrinsics.checkNotNullParameter(minus, "$this$minus");
        Intrinsics.checkNotNullParameter(keys, "keys");
        Map mutableMap = MapsKt.toMutableMap(minus);
        CollectionsKt__MutableCollectionsKt.removeAll(mutableMap.keySet(), keys);
        return optimizeReadOnlyMap(mutableMap);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final <K, V> void minusAssign(Map<K, V> minusAssign, Iterable<? extends K> iterable) {
        Intrinsics.checkNotNullParameter(minusAssign, "$this$minusAssign");
        CollectionsKt__MutableCollectionsKt.removeAll(minusAssign.keySet(), iterable);
    }

    @NotNull
    public static final <K, V> Map<K, V> mutableMapOf(@NotNull Pair<? extends K, ? extends V>... pairs) {
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(pairs.length));
        putAll(linkedHashMap, pairs);
        return linkedHashMap;
    }

    @NotNull
    public static final <K, V> Map<K, V> plus(@NotNull Map<? extends K, ? extends V> plus, @NotNull Iterable<? extends Pair<? extends K, ? extends V>> pairs) {
        Intrinsics.checkNotNullParameter(plus, "$this$plus");
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        if (plus.isEmpty()) {
            return MapsKt.toMap(pairs);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(plus);
        putAll(linkedHashMap, pairs);
        return linkedHashMap;
    }

    @InlineOnly
    private static final <K, V> void plusAssign(Map<? super K, ? super V> plusAssign, Iterable<? extends Pair<? extends K, ? extends V>> iterable) {
        Intrinsics.checkNotNullParameter(plusAssign, "$this$plusAssign");
        putAll(plusAssign, iterable);
    }

    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <K, V> Map<K, V> minus(@NotNull Map<? extends K, ? extends V> minus, @NotNull K[] keys) {
        Intrinsics.checkNotNullParameter(minus, "$this$minus");
        Intrinsics.checkNotNullParameter(keys, "keys");
        Map mutableMap = MapsKt.toMutableMap(minus);
        CollectionsKt__MutableCollectionsKt.removeAll(mutableMap.keySet(), keys);
        return optimizeReadOnlyMap(mutableMap);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final <K, V> void minusAssign(Map<K, V> minusAssign, K[] kArr) {
        Intrinsics.checkNotNullParameter(minusAssign, "$this$minusAssign");
        CollectionsKt__MutableCollectionsKt.removeAll(minusAssign.keySet(), kArr);
    }

    @NotNull
    public static final <K, V> Map<K, V> plus(@NotNull Map<? extends K, ? extends V> plus, @NotNull Pair<? extends K, ? extends V>[] pairs) {
        Intrinsics.checkNotNullParameter(plus, "$this$plus");
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        if (plus.isEmpty()) {
            return toMap(pairs);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(plus);
        putAll(linkedHashMap, pairs);
        return linkedHashMap;
    }

    @InlineOnly
    private static final <K, V> void plusAssign(Map<? super K, ? super V> plusAssign, Pair<? extends K, ? extends V>[] pairArr) {
        Intrinsics.checkNotNullParameter(plusAssign, "$this$plusAssign");
        putAll(plusAssign, pairArr);
    }

    public static final <K, V> void putAll(@NotNull Map<? super K, ? super V> putAll, @NotNull Iterable<? extends Pair<? extends K, ? extends V>> pairs) {
        Intrinsics.checkNotNullParameter(putAll, "$this$putAll");
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        for (Pair<? extends K, ? extends V> pair : pairs) {
            putAll.put((K) pair.component1(), (V) pair.component2());
        }
    }

    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <K, V> Map<K, V> minus(@NotNull Map<? extends K, ? extends V> minus, @NotNull Sequence<? extends K> keys) {
        Intrinsics.checkNotNullParameter(minus, "$this$minus");
        Intrinsics.checkNotNullParameter(keys, "keys");
        Map mutableMap = MapsKt.toMutableMap(minus);
        CollectionsKt__MutableCollectionsKt.removeAll(mutableMap.keySet(), keys);
        return optimizeReadOnlyMap(mutableMap);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final <K, V> void minusAssign(Map<K, V> minusAssign, Sequence<? extends K> sequence) {
        Intrinsics.checkNotNullParameter(minusAssign, "$this$minusAssign");
        CollectionsKt__MutableCollectionsKt.removeAll(minusAssign.keySet(), sequence);
    }

    @NotNull
    public static final <K, V> Map<K, V> plus(@NotNull Map<? extends K, ? extends V> plus, @NotNull Sequence<? extends Pair<? extends K, ? extends V>> pairs) {
        Intrinsics.checkNotNullParameter(plus, "$this$plus");
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        LinkedHashMap linkedHashMap = new LinkedHashMap(plus);
        putAll(linkedHashMap, pairs);
        return optimizeReadOnlyMap(linkedHashMap);
    }

    @InlineOnly
    private static final <K, V> void plusAssign(Map<? super K, ? super V> plusAssign, Sequence<? extends Pair<? extends K, ? extends V>> sequence) {
        Intrinsics.checkNotNullParameter(plusAssign, "$this$plusAssign");
        putAll(plusAssign, sequence);
    }

    @NotNull
    public static final <K, V> Map<K, V> plus(@NotNull Map<? extends K, ? extends V> plus, @NotNull Map<? extends K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(plus, "$this$plus");
        Intrinsics.checkNotNullParameter(map, "map");
        LinkedHashMap linkedHashMap = new LinkedHashMap(plus);
        linkedHashMap.putAll(map);
        return linkedHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InlineOnly
    private static final <K, V> void plusAssign(Map<? super K, ? super V> plusAssign, Map<K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(plusAssign, "$this$plusAssign");
        plusAssign.putAll(map);
    }

    public static final <K, V> void putAll(@NotNull Map<? super K, ? super V> putAll, @NotNull Sequence<? extends Pair<? extends K, ? extends V>> pairs) {
        Intrinsics.checkNotNullParameter(putAll, "$this$putAll");
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        for (Pair<? extends K, ? extends V> pair : pairs) {
            putAll.put((K) pair.component1(), (V) pair.component2());
        }
    }

    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M toMap(@NotNull Iterable<? extends Pair<? extends K, ? extends V>> toMap, @NotNull M destination) {
        Intrinsics.checkNotNullParameter(toMap, "$this$toMap");
        Intrinsics.checkNotNullParameter(destination, "destination");
        putAll(destination, toMap);
        return destination;
    }

    @NotNull
    public static final <K, V> Map<K, V> toMap(@NotNull Pair<? extends K, ? extends V>[] toMap) {
        Intrinsics.checkNotNullParameter(toMap, "$this$toMap");
        int length = toMap.length;
        if (length != 0) {
            if (length != 1) {
                return toMap(toMap, new LinkedHashMap(MapsKt.mapCapacity(toMap.length)));
            }
            return MapsKt.mapOf(toMap[0]);
        }
        return MapsKt.emptyMap();
    }

    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M toMap(@NotNull Pair<? extends K, ? extends V>[] toMap, @NotNull M destination) {
        Intrinsics.checkNotNullParameter(toMap, "$this$toMap");
        Intrinsics.checkNotNullParameter(destination, "destination");
        putAll(destination, toMap);
        return destination;
    }

    @NotNull
    public static final <K, V> Map<K, V> toMap(@NotNull Sequence<? extends Pair<? extends K, ? extends V>> toMap) {
        Intrinsics.checkNotNullParameter(toMap, "$this$toMap");
        return optimizeReadOnlyMap(toMap(toMap, new LinkedHashMap()));
    }

    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M toMap(@NotNull Sequence<? extends Pair<? extends K, ? extends V>> toMap, @NotNull M destination) {
        Intrinsics.checkNotNullParameter(toMap, "$this$toMap");
        Intrinsics.checkNotNullParameter(destination, "destination");
        putAll(destination, toMap);
        return destination;
    }

    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <K, V> Map<K, V> toMap(@NotNull Map<? extends K, ? extends V> toMap) {
        Intrinsics.checkNotNullParameter(toMap, "$this$toMap");
        int size = toMap.size();
        if (size != 0) {
            if (size != 1) {
                return MapsKt.toMutableMap(toMap);
            }
            return MapsKt__MapsJVMKt.toSingletonMap(toMap);
        }
        return MapsKt.emptyMap();
    }

    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M toMap(@NotNull Map<? extends K, ? extends V> toMap, @NotNull M destination) {
        Intrinsics.checkNotNullParameter(toMap, "$this$toMap");
        Intrinsics.checkNotNullParameter(destination, "destination");
        destination.putAll(toMap);
        return destination;
    }
}
