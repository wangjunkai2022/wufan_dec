package kotlin.ranges;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import external.org.apache.commons.lang3.d;
import java.util.NoSuchElementException;
import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.random.RandomKt;
import kotlin.ranges.CharProgression;
import kotlin.ranges.IntProgression;
import kotlin.ranges.LongProgression;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: _Ranges.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0005\n\u0002\b\u0004\n\u0002\u0010\n\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u000f\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\r\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\u0002\u001a\u00020\u0004*\u00020\u0003H\u0087\b\u001a\r\u0010\u0002\u001a\u00020\u0006*\u00020\u0005H\u0087\b\u001a\u0014\u0010\u0002\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0007H\u0007\u001a\u0014\u0010\u0002\u001a\u00020\u0004*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0007H\u0007\u001a\u0014\u0010\u0002\u001a\u00020\u0006*\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0007H\u0007\u001a\u0016\u0010\b\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u0087\b¢\u0006\u0004\b\b\u0010\t\u001a\u0016\u0010\b\u001a\u0004\u0018\u00010\u0004*\u00020\u0003H\u0087\b¢\u0006\u0004\b\b\u0010\n\u001a\u0016\u0010\b\u001a\u0004\u0018\u00010\u0006*\u00020\u0005H\u0087\b¢\u0006\u0004\b\b\u0010\u000b\u001a\u001d\u0010\b\u001a\u0004\u0018\u00010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\b\u0010\f\u001a\u001d\u0010\b\u001a\u0004\u0018\u00010\u0004*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\b\u0010\r\u001a\u001d\u0010\b\u001a\u0004\u0018\u00010\u0006*\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\b\u0010\u000e\u001a\u001e\u0010\u0011\u001a\u00020\u0010*\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u0087\n¢\u0006\u0004\b\u0011\u0010\u0012\u001a\u001e\u0010\u0011\u001a\u00020\u0010*\u00020\u00032\b\u0010\u000f\u001a\u0004\u0018\u00010\u0004H\u0087\n¢\u0006\u0004\b\u0011\u0010\u0013\u001a\u001e\u0010\u0011\u001a\u00020\u0010*\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0006H\u0087\n¢\u0006\u0004\b\u0011\u0010\u0014\u001a\"\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u00010\u00152\u0006\u0010\u0017\u001a\u00020\u0016H\u0087\u0002¢\u0006\u0004\b\u0018\u0010\u0019\u001a\"\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u00040\u00152\u0006\u0010\u0017\u001a\u00020\u0016H\u0087\u0002¢\u0006\u0004\b\u001a\u0010\u0019\u001a\"\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u001b0\u00152\u0006\u0010\u0017\u001a\u00020\u0016H\u0087\u0002¢\u0006\u0004\b\u001c\u0010\u0019\u001a\"\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u001d0\u00152\u0006\u0010\u0017\u001a\u00020\u0016H\u0087\u0002¢\u0006\u0004\b\u001e\u0010\u0019\u001a\"\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u001f0\u00152\u0006\u0010\u0017\u001a\u00020\u0016H\u0087\u0002¢\u0006\u0004\b \u0010\u0019\u001a\"\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u00010\u00152\u0006\u0010\u0017\u001a\u00020\u001dH\u0087\u0002¢\u0006\u0004\b\u0018\u0010!\u001a\"\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u00040\u00152\u0006\u0010\u0017\u001a\u00020\u001dH\u0087\u0002¢\u0006\u0004\b\u001a\u0010!\u001a\"\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u00160\u00152\u0006\u0010\u0017\u001a\u00020\u001dH\u0087\u0002¢\u0006\u0004\b\"\u0010!\u001a\"\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u001b0\u00152\u0006\u0010\u0017\u001a\u00020\u001dH\u0087\u0002¢\u0006\u0004\b\u001c\u0010!\u001a\"\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u001f0\u00152\u0006\u0010\u0017\u001a\u00020\u001dH\u0087\u0002¢\u0006\u0004\b \u0010!\u001a\"\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u00010\u00152\u0006\u0010\u0017\u001a\u00020\u001fH\u0087\u0002¢\u0006\u0004\b\u0018\u0010#\u001a\"\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u00040\u00152\u0006\u0010\u0017\u001a\u00020\u001fH\u0087\u0002¢\u0006\u0004\b\u001a\u0010#\u001a\"\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u00160\u00152\u0006\u0010\u0017\u001a\u00020\u001fH\u0087\u0002¢\u0006\u0004\b\"\u0010#\u001a\"\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u001b0\u00152\u0006\u0010\u0017\u001a\u00020\u001fH\u0087\u0002¢\u0006\u0004\b\u001c\u0010#\u001a\"\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u001d0\u00152\u0006\u0010\u0017\u001a\u00020\u001fH\u0087\u0002¢\u0006\u0004\b\u001e\u0010#\u001a\"\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u00040\u00152\u0006\u0010\u0017\u001a\u00020\u0001H\u0087\u0002¢\u0006\u0004\b\u001a\u0010$\u001a\"\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u00160\u00152\u0006\u0010\u0017\u001a\u00020\u0001H\u0087\u0002¢\u0006\u0004\b\"\u0010$\u001a\"\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u001b0\u00152\u0006\u0010\u0017\u001a\u00020\u0001H\u0087\u0002¢\u0006\u0004\b\u001c\u0010$\u001a\"\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u001d0\u00152\u0006\u0010\u0017\u001a\u00020\u0001H\u0087\u0002¢\u0006\u0004\b\u001e\u0010$\u001a\"\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u001f0\u00152\u0006\u0010\u0017\u001a\u00020\u0001H\u0087\u0002¢\u0006\u0004\b \u0010$\u001a\"\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u00010\u00152\u0006\u0010\u0017\u001a\u00020\u0004H\u0087\u0002¢\u0006\u0004\b\u0018\u0010%\u001a\"\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u00160\u00152\u0006\u0010\u0017\u001a\u00020\u0004H\u0087\u0002¢\u0006\u0004\b\"\u0010%\u001a\"\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u001b0\u00152\u0006\u0010\u0017\u001a\u00020\u0004H\u0087\u0002¢\u0006\u0004\b\u001c\u0010%\u001a\"\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u001d0\u00152\u0006\u0010\u0017\u001a\u00020\u0004H\u0087\u0002¢\u0006\u0004\b\u001e\u0010%\u001a\"\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u001f0\u00152\u0006\u0010\u0017\u001a\u00020\u0004H\u0087\u0002¢\u0006\u0004\b \u0010%\u001a\"\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u00010\u00152\u0006\u0010\u0017\u001a\u00020\u001bH\u0087\u0002¢\u0006\u0004\b\u0018\u0010&\u001a\"\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u00040\u00152\u0006\u0010\u0017\u001a\u00020\u001bH\u0087\u0002¢\u0006\u0004\b\u001a\u0010&\u001a\"\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u00160\u00152\u0006\u0010\u0017\u001a\u00020\u001bH\u0087\u0002¢\u0006\u0004\b\"\u0010&\u001a\"\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u001d0\u00152\u0006\u0010\u0017\u001a\u00020\u001bH\u0087\u0002¢\u0006\u0004\b\u001e\u0010&\u001a\"\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u001f0\u00152\u0006\u0010\u0017\u001a\u00020\u001bH\u0087\u0002¢\u0006\u0004\b \u0010&\u001a\u0015\u0010)\u001a\u00020(*\u00020\u00012\u0006\u0010'\u001a\u00020\u0016H\u0086\u0004\u001a\u0015\u0010)\u001a\u00020**\u00020\u00042\u0006\u0010'\u001a\u00020\u0016H\u0086\u0004\u001a\u0015\u0010)\u001a\u00020(*\u00020\u00162\u0006\u0010'\u001a\u00020\u0016H\u0086\u0004\u001a\u0015\u0010)\u001a\u00020(*\u00020\u001b2\u0006\u0010'\u001a\u00020\u0016H\u0086\u0004\u001a\u0015\u0010)\u001a\u00020+*\u00020\u00062\u0006\u0010'\u001a\u00020\u0006H\u0086\u0004\u001a\u0015\u0010)\u001a\u00020(*\u00020\u00012\u0006\u0010'\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010)\u001a\u00020**\u00020\u00042\u0006\u0010'\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010)\u001a\u00020(*\u00020\u00162\u0006\u0010'\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010)\u001a\u00020(*\u00020\u001b2\u0006\u0010'\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010)\u001a\u00020**\u00020\u00012\u0006\u0010'\u001a\u00020\u0004H\u0086\u0004\u001a\u0015\u0010)\u001a\u00020**\u00020\u00042\u0006\u0010'\u001a\u00020\u0004H\u0086\u0004\u001a\u0015\u0010)\u001a\u00020**\u00020\u00162\u0006\u0010'\u001a\u00020\u0004H\u0086\u0004\u001a\u0015\u0010)\u001a\u00020**\u00020\u001b2\u0006\u0010'\u001a\u00020\u0004H\u0086\u0004\u001a\u0015\u0010)\u001a\u00020(*\u00020\u00012\u0006\u0010'\u001a\u00020\u001bH\u0086\u0004\u001a\u0015\u0010)\u001a\u00020**\u00020\u00042\u0006\u0010'\u001a\u00020\u001bH\u0086\u0004\u001a\u0015\u0010)\u001a\u00020(*\u00020\u00162\u0006\u0010'\u001a\u00020\u001bH\u0086\u0004\u001a\u0015\u0010)\u001a\u00020(*\u00020\u001b2\u0006\u0010'\u001a\u00020\u001bH\u0086\u0004\u001a\n\u0010,\u001a\u00020(*\u00020(\u001a\n\u0010,\u001a\u00020**\u00020*\u001a\n\u0010,\u001a\u00020+*\u00020+\u001a\u0015\u0010-\u001a\u00020(*\u00020(2\u0006\u0010-\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010-\u001a\u00020**\u00020*2\u0006\u0010-\u001a\u00020\u0004H\u0086\u0004\u001a\u0015\u0010-\u001a\u00020+*\u00020+2\u0006\u0010-\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010.\u001a\u0004\u0018\u00010\u0016*\u00020\u0001H\u0000¢\u0006\u0004\b.\u0010/\u001a\u0015\u0010.\u001a\u0004\u0018\u00010\u0016*\u00020\u0004H\u0000¢\u0006\u0004\b.\u00100\u001a\u0015\u0010.\u001a\u0004\u0018\u00010\u0016*\u00020\u001bH\u0000¢\u0006\u0004\b.\u00101\u001a\u0015\u0010.\u001a\u0004\u0018\u00010\u0016*\u00020\u001dH\u0000¢\u0006\u0004\b.\u00102\u001a\u0015\u0010.\u001a\u0004\u0018\u00010\u0016*\u00020\u001fH\u0000¢\u0006\u0004\b.\u00103\u001a\u0015\u00104\u001a\u0004\u0018\u00010\u0001*\u00020\u0004H\u0000¢\u0006\u0004\b4\u00105\u001a\u0015\u00104\u001a\u0004\u0018\u00010\u0001*\u00020\u001dH\u0000¢\u0006\u0004\b4\u00106\u001a\u0015\u00104\u001a\u0004\u0018\u00010\u0001*\u00020\u001fH\u0000¢\u0006\u0004\b4\u00107\u001a\u0015\u00108\u001a\u0004\u0018\u00010\u0004*\u00020\u001dH\u0000¢\u0006\u0004\b8\u00109\u001a\u0015\u00108\u001a\u0004\u0018\u00010\u0004*\u00020\u001fH\u0000¢\u0006\u0004\b8\u0010:\u001a\u0015\u0010;\u001a\u0004\u0018\u00010\u001b*\u00020\u0001H\u0000¢\u0006\u0004\b;\u0010<\u001a\u0015\u0010;\u001a\u0004\u0018\u00010\u001b*\u00020\u0004H\u0000¢\u0006\u0004\b;\u0010=\u001a\u0015\u0010;\u001a\u0004\u0018\u00010\u001b*\u00020\u001dH\u0000¢\u0006\u0004\b;\u0010>\u001a\u0015\u0010;\u001a\u0004\u0018\u00010\u001b*\u00020\u001fH\u0000¢\u0006\u0004\b;\u0010?\u001a\u0015\u0010@\u001a\u00020\u0000*\u00020\u00012\u0006\u0010'\u001a\u00020\u0016H\u0086\u0004\u001a\u0015\u0010@\u001a\u00020\u0003*\u00020\u00042\u0006\u0010'\u001a\u00020\u0016H\u0086\u0004\u001a\u0015\u0010@\u001a\u00020\u0000*\u00020\u00162\u0006\u0010'\u001a\u00020\u0016H\u0086\u0004\u001a\u0015\u0010@\u001a\u00020\u0000*\u00020\u001b2\u0006\u0010'\u001a\u00020\u0016H\u0086\u0004\u001a\u0015\u0010@\u001a\u00020\u0005*\u00020\u00062\u0006\u0010'\u001a\u00020\u0006H\u0086\u0004\u001a\u0015\u0010@\u001a\u00020\u0000*\u00020\u00012\u0006\u0010'\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010@\u001a\u00020\u0003*\u00020\u00042\u0006\u0010'\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010@\u001a\u00020\u0000*\u00020\u00162\u0006\u0010'\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010@\u001a\u00020\u0000*\u00020\u001b2\u0006\u0010'\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010@\u001a\u00020\u0003*\u00020\u00012\u0006\u0010'\u001a\u00020\u0004H\u0086\u0004\u001a\u0015\u0010@\u001a\u00020\u0003*\u00020\u00042\u0006\u0010'\u001a\u00020\u0004H\u0086\u0004\u001a\u0015\u0010@\u001a\u00020\u0003*\u00020\u00162\u0006\u0010'\u001a\u00020\u0004H\u0086\u0004\u001a\u0015\u0010@\u001a\u00020\u0003*\u00020\u001b2\u0006\u0010'\u001a\u00020\u0004H\u0086\u0004\u001a\u0015\u0010@\u001a\u00020\u0000*\u00020\u00012\u0006\u0010'\u001a\u00020\u001bH\u0086\u0004\u001a\u0015\u0010@\u001a\u00020\u0003*\u00020\u00042\u0006\u0010'\u001a\u00020\u001bH\u0086\u0004\u001a\u0015\u0010@\u001a\u00020\u0000*\u00020\u00162\u0006\u0010'\u001a\u00020\u001bH\u0086\u0004\u001a\u0015\u0010@\u001a\u00020\u0000*\u00020\u001b2\u0006\u0010'\u001a\u00020\u001bH\u0086\u0004\u001a)\u0010D\u001a\u00028\u0000\"\u000e\b\u0000\u0010B*\b\u0012\u0004\u0012\u00028\u00000A*\u00028\u00002\u0006\u0010C\u001a\u00028\u0000¢\u0006\u0004\bD\u0010E\u001a\u0012\u0010D\u001a\u00020\u0016*\u00020\u00162\u0006\u0010C\u001a\u00020\u0016\u001a\u0012\u0010D\u001a\u00020\u001b*\u00020\u001b2\u0006\u0010C\u001a\u00020\u001b\u001a\u0012\u0010D\u001a\u00020\u0001*\u00020\u00012\u0006\u0010C\u001a\u00020\u0001\u001a\u0012\u0010D\u001a\u00020\u0004*\u00020\u00042\u0006\u0010C\u001a\u00020\u0004\u001a\u0012\u0010D\u001a\u00020\u001f*\u00020\u001f2\u0006\u0010C\u001a\u00020\u001f\u001a\u0012\u0010D\u001a\u00020\u001d*\u00020\u001d2\u0006\u0010C\u001a\u00020\u001d\u001a)\u0010G\u001a\u00028\u0000\"\u000e\b\u0000\u0010B*\b\u0012\u0004\u0012\u00028\u00000A*\u00028\u00002\u0006\u0010F\u001a\u00028\u0000¢\u0006\u0004\bG\u0010E\u001a\u0012\u0010G\u001a\u00020\u0016*\u00020\u00162\u0006\u0010F\u001a\u00020\u0016\u001a\u0012\u0010G\u001a\u00020\u001b*\u00020\u001b2\u0006\u0010F\u001a\u00020\u001b\u001a\u0012\u0010G\u001a\u00020\u0001*\u00020\u00012\u0006\u0010F\u001a\u00020\u0001\u001a\u0012\u0010G\u001a\u00020\u0004*\u00020\u00042\u0006\u0010F\u001a\u00020\u0004\u001a\u0012\u0010G\u001a\u00020\u001f*\u00020\u001f2\u0006\u0010F\u001a\u00020\u001f\u001a\u0012\u0010G\u001a\u00020\u001d*\u00020\u001d2\u0006\u0010F\u001a\u00020\u001d\u001a5\u0010H\u001a\u00028\u0000\"\u000e\b\u0000\u0010B*\b\u0012\u0004\u0012\u00028\u00000A*\u00028\u00002\b\u0010C\u001a\u0004\u0018\u00018\u00002\b\u0010F\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\bH\u0010I\u001a\u001a\u0010H\u001a\u00020\u0016*\u00020\u00162\u0006\u0010C\u001a\u00020\u00162\u0006\u0010F\u001a\u00020\u0016\u001a\u001a\u0010H\u001a\u00020\u001b*\u00020\u001b2\u0006\u0010C\u001a\u00020\u001b2\u0006\u0010F\u001a\u00020\u001b\u001a\u001a\u0010H\u001a\u00020\u0001*\u00020\u00012\u0006\u0010C\u001a\u00020\u00012\u0006\u0010F\u001a\u00020\u0001\u001a\u001a\u0010H\u001a\u00020\u0004*\u00020\u00042\u0006\u0010C\u001a\u00020\u00042\u0006\u0010F\u001a\u00020\u0004\u001a\u001a\u0010H\u001a\u00020\u001f*\u00020\u001f2\u0006\u0010C\u001a\u00020\u001f2\u0006\u0010F\u001a\u00020\u001f\u001a\u001a\u0010H\u001a\u00020\u001d*\u00020\u001d2\u0006\u0010C\u001a\u00020\u001d2\u0006\u0010F\u001a\u00020\u001d\u001a1\u0010H\u001a\u00028\u0000\"\u000e\b\u0000\u0010B*\b\u0012\u0004\u0012\u00028\u00000A*\u00028\u00002\f\u0010K\u001a\b\u0012\u0004\u0012\u00028\u00000JH\u0007¢\u0006\u0004\bH\u0010L\u001a/\u0010H\u001a\u00028\u0000\"\u000e\b\u0000\u0010B*\b\u0012\u0004\u0012\u00028\u00000A*\u00028\u00002\f\u0010K\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015¢\u0006\u0004\bH\u0010M\u001a\u0018\u0010H\u001a\u00020\u0001*\u00020\u00012\f\u0010K\u001a\b\u0012\u0004\u0012\u00020\u00010\u0015\u001a\u0018\u0010H\u001a\u00020\u0004*\u00020\u00042\f\u0010K\u001a\b\u0012\u0004\u0012\u00020\u00040\u0015¨\u0006N"}, d2 = {"Lkotlin/ranges/IntRange;", "", "random", "Lkotlin/ranges/LongRange;", "", "Lkotlin/ranges/CharRange;", "", "Lkotlin/random/Random;", "randomOrNull", "(Lkotlin/ranges/IntRange;)Ljava/lang/Integer;", "(Lkotlin/ranges/LongRange;)Ljava/lang/Long;", "(Lkotlin/ranges/CharRange;)Ljava/lang/Character;", "(Lkotlin/ranges/IntRange;Lkotlin/random/Random;)Ljava/lang/Integer;", "(Lkotlin/ranges/LongRange;Lkotlin/random/Random;)Ljava/lang/Long;", "(Lkotlin/ranges/CharRange;Lkotlin/random/Random;)Ljava/lang/Character;", "element", "", "contains", "(Lkotlin/ranges/IntRange;Ljava/lang/Integer;)Z", "(Lkotlin/ranges/LongRange;Ljava/lang/Long;)Z", "(Lkotlin/ranges/CharRange;Ljava/lang/Character;)Z", "Lkotlin/ranges/ClosedRange;", "", "value", "intRangeContains", "(Lkotlin/ranges/ClosedRange;B)Z", "longRangeContains", "", "shortRangeContains", "", "doubleRangeContains", "", "floatRangeContains", "(Lkotlin/ranges/ClosedRange;D)Z", "byteRangeContains", "(Lkotlin/ranges/ClosedRange;F)Z", "(Lkotlin/ranges/ClosedRange;I)Z", "(Lkotlin/ranges/ClosedRange;J)Z", "(Lkotlin/ranges/ClosedRange;S)Z", TypedValues.TransitionType.S_TO, "Lkotlin/ranges/IntProgression;", "downTo", "Lkotlin/ranges/LongProgression;", "Lkotlin/ranges/CharProgression;", "reversed", "step", "toByteExactOrNull", "(I)Ljava/lang/Byte;", "(J)Ljava/lang/Byte;", "(S)Ljava/lang/Byte;", "(D)Ljava/lang/Byte;", "(F)Ljava/lang/Byte;", "toIntExactOrNull", "(J)Ljava/lang/Integer;", "(D)Ljava/lang/Integer;", "(F)Ljava/lang/Integer;", "toLongExactOrNull", "(D)Ljava/lang/Long;", "(F)Ljava/lang/Long;", "toShortExactOrNull", "(I)Ljava/lang/Short;", "(J)Ljava/lang/Short;", "(D)Ljava/lang/Short;", "(F)Ljava/lang/Short;", "until", "", "T", "minimumValue", "coerceAtLeast", "(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;", "maximumValue", "coerceAtMost", "coerceIn", "(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;", "Lkotlin/ranges/ClosedFloatingPointRange;", "range", "(Ljava/lang/Comparable;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;", "(Ljava/lang/Comparable;Lkotlin/ranges/ClosedRange;)Ljava/lang/Comparable;", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/ranges/RangesKt")
/* loaded from: classes.dex */
public class RangesKt___RangesKt extends RangesKt__RangesKt {
    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "byteRangeContains")
    public static final /* synthetic */ boolean byteRangeContains(ClosedRange<Byte> contains, double d4) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        Byte byteExactOrNull = toByteExactOrNull(d4);
        if (byteExactOrNull != null) {
            return contains.contains(byteExactOrNull);
        }
        return false;
    }

    public static final byte coerceAtLeast(byte b4, byte b5) {
        return b4 < b5 ? b5 : b4;
    }

    public static final double coerceAtLeast(double d4, double d5) {
        return d4 < d5 ? d5 : d4;
    }

    public static final float coerceAtLeast(float f4, float f5) {
        return f4 < f5 ? f5 : f4;
    }

    public static int coerceAtLeast(int i2, int i4) {
        return i2 < i4 ? i4 : i2;
    }

    public static long coerceAtLeast(long j4, long j5) {
        return j4 < j5 ? j5 : j4;
    }

    @NotNull
    public static final <T extends Comparable<? super T>> T coerceAtLeast(@NotNull T coerceAtLeast, @NotNull T minimumValue) {
        Intrinsics.checkNotNullParameter(coerceAtLeast, "$this$coerceAtLeast");
        Intrinsics.checkNotNullParameter(minimumValue, "minimumValue");
        return coerceAtLeast.compareTo(minimumValue) < 0 ? minimumValue : coerceAtLeast;
    }

    public static final short coerceAtLeast(short s3, short s4) {
        return s3 < s4 ? s4 : s3;
    }

    public static final byte coerceAtMost(byte b4, byte b5) {
        return b4 > b5 ? b5 : b4;
    }

    public static final double coerceAtMost(double d4, double d5) {
        return d4 > d5 ? d5 : d4;
    }

    public static final float coerceAtMost(float f4, float f5) {
        return f4 > f5 ? f5 : f4;
    }

    public static int coerceAtMost(int i2, int i4) {
        return i2 > i4 ? i4 : i2;
    }

    public static long coerceAtMost(long j4, long j5) {
        return j4 > j5 ? j5 : j4;
    }

    @NotNull
    public static final <T extends Comparable<? super T>> T coerceAtMost(@NotNull T coerceAtMost, @NotNull T maximumValue) {
        Intrinsics.checkNotNullParameter(coerceAtMost, "$this$coerceAtMost");
        Intrinsics.checkNotNullParameter(maximumValue, "maximumValue");
        return coerceAtMost.compareTo(maximumValue) > 0 ? maximumValue : coerceAtMost;
    }

    public static final short coerceAtMost(short s3, short s4) {
        return s3 > s4 ? s4 : s3;
    }

    @NotNull
    public static final <T extends Comparable<? super T>> T coerceIn(@NotNull T coerceIn, @Nullable T t3, @Nullable T t4) {
        Intrinsics.checkNotNullParameter(coerceIn, "$this$coerceIn");
        if (t3 != null && t4 != null) {
            if (t3.compareTo(t4) <= 0) {
                if (coerceIn.compareTo(t3) < 0) {
                    return t3;
                }
                if (coerceIn.compareTo(t4) > 0) {
                    return t4;
                }
            } else {
                throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + t4 + " is less than minimum " + t3 + d.f65364a);
            }
        } else if (t3 != null && coerceIn.compareTo(t3) < 0) {
            return t3;
        } else {
            if (t4 != null && coerceIn.compareTo(t4) > 0) {
                return t4;
            }
        }
        return coerceIn;
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final boolean contains(IntRange contains, Integer num) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return num != null && contains.contains(num.intValue());
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "doubleRangeContains")
    public static final /* synthetic */ boolean doubleRangeContains(ClosedRange<Double> contains, byte b4) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Double.valueOf(b4));
    }

    @NotNull
    public static final IntProgression downTo(int i2, byte b4) {
        return IntProgression.Companion.fromClosedRange(i2, b4, -1);
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "floatRangeContains")
    public static final /* synthetic */ boolean floatRangeContains(ClosedRange<Float> contains, byte b4) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Float.valueOf(b4));
    }

    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(@NotNull ClosedRange<Integer> contains, byte b4) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Integer.valueOf(b4));
    }

    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(@NotNull ClosedRange<Long> contains, byte b4) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Long.valueOf(b4));
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final int random(IntRange intRange) {
        int random;
        random = random(intRange, Random.Default);
        return random;
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final Integer randomOrNull(IntRange intRange) {
        return randomOrNull(intRange, Random.Default);
    }

    @NotNull
    public static final IntProgression reversed(@NotNull IntProgression reversed) {
        Intrinsics.checkNotNullParameter(reversed, "$this$reversed");
        return IntProgression.Companion.fromClosedRange(reversed.getLast(), reversed.getFirst(), -reversed.getStep());
    }

    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(@NotNull ClosedRange<Short> contains, byte b4) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Short.valueOf(b4));
    }

    @NotNull
    public static IntProgression step(@NotNull IntProgression step, int i2) {
        Intrinsics.checkNotNullParameter(step, "$this$step");
        RangesKt__RangesKt.checkStepIsPositive(i2 > 0, Integer.valueOf(i2));
        IntProgression.Companion companion = IntProgression.Companion;
        int first = step.getFirst();
        int last = step.getLast();
        if (step.getStep() <= 0) {
            i2 = -i2;
        }
        return companion.fromClosedRange(first, last, i2);
    }

    @Nullable
    public static final Byte toByteExactOrNull(int i2) {
        if (-128 <= i2 && 127 >= i2) {
            return Byte.valueOf((byte) i2);
        }
        return null;
    }

    @Nullable
    public static final Integer toIntExactOrNull(long j4) {
        long j5 = Integer.MAX_VALUE;
        if (Integer.MIN_VALUE <= j4 && j5 >= j4) {
            return Integer.valueOf((int) j4);
        }
        return null;
    }

    @Nullable
    public static final Long toLongExactOrNull(double d4) {
        double d5 = Long.MAX_VALUE;
        if (d4 < Long.MIN_VALUE || d4 > d5) {
            return null;
        }
        return Long.valueOf((long) d4);
    }

    @Nullable
    public static final Short toShortExactOrNull(int i2) {
        if (-32768 <= i2 && 32767 >= i2) {
            return Short.valueOf((short) i2);
        }
        return null;
    }

    @NotNull
    public static final IntRange until(int i2, byte b4) {
        return new IntRange(i2, b4 - 1);
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "byteRangeContains")
    public static final /* synthetic */ boolean byteRangeContains(ClosedRange<Byte> contains, float f4) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        Byte byteExactOrNull = toByteExactOrNull(f4);
        if (byteExactOrNull != null) {
            return contains.contains(byteExactOrNull);
        }
        return false;
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final boolean contains(LongRange contains, Long l4) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return l4 != null && contains.contains(l4.longValue());
    }

    @JvmName(name = "doubleRangeContains")
    public static final boolean doubleRangeContains(@NotNull ClosedRange<Double> contains, float f4) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Double.valueOf(f4));
    }

    @NotNull
    public static final LongProgression downTo(long j4, byte b4) {
        return LongProgression.Companion.fromClosedRange(j4, b4, -1L);
    }

    @JvmName(name = "floatRangeContains")
    public static final boolean floatRangeContains(@NotNull ClosedRange<Float> contains, double d4) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Float.valueOf((float) d4));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "intRangeContains")
    public static final /* synthetic */ boolean intRangeContains(ClosedRange<Integer> contains, double d4) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        Integer intExactOrNull = toIntExactOrNull(d4);
        if (intExactOrNull != null) {
            return contains.contains(intExactOrNull);
        }
        return false;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "longRangeContains")
    public static final /* synthetic */ boolean longRangeContains(ClosedRange<Long> contains, double d4) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        Long longExactOrNull = toLongExactOrNull(d4);
        if (longExactOrNull != null) {
            return contains.contains(longExactOrNull);
        }
        return false;
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final long random(LongRange longRange) {
        return random(longRange, Random.Default);
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final Long randomOrNull(LongRange longRange) {
        return randomOrNull(longRange, Random.Default);
    }

    @NotNull
    public static final LongProgression reversed(@NotNull LongProgression reversed) {
        Intrinsics.checkNotNullParameter(reversed, "$this$reversed");
        return LongProgression.Companion.fromClosedRange(reversed.getLast(), reversed.getFirst(), -reversed.getStep());
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "shortRangeContains")
    public static final /* synthetic */ boolean shortRangeContains(ClosedRange<Short> contains, double d4) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        Short shortExactOrNull = toShortExactOrNull(d4);
        if (shortExactOrNull != null) {
            return contains.contains(shortExactOrNull);
        }
        return false;
    }

    @Nullable
    public static final Byte toByteExactOrNull(long j4) {
        long j5 = 127;
        if (-128 <= j4 && j5 >= j4) {
            return Byte.valueOf((byte) j4);
        }
        return null;
    }

    @Nullable
    public static final Integer toIntExactOrNull(double d4) {
        double d5 = Integer.MAX_VALUE;
        if (d4 < Integer.MIN_VALUE || d4 > d5) {
            return null;
        }
        return Integer.valueOf((int) d4);
    }

    @Nullable
    public static final Long toLongExactOrNull(float f4) {
        float f5 = (float) Long.MAX_VALUE;
        if (f4 < ((float) Long.MIN_VALUE) || f4 > f5) {
            return null;
        }
        return Long.valueOf(f4);
    }

    @Nullable
    public static final Short toShortExactOrNull(long j4) {
        long j5 = 32767;
        if (-32768 <= j4 && j5 >= j4) {
            return Short.valueOf((short) j4);
        }
        return null;
    }

    @NotNull
    public static final LongRange until(long j4, byte b4) {
        return new LongRange(j4, b4 - 1);
    }

    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(@NotNull ClosedRange<Byte> contains, int i2) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        Byte byteExactOrNull = toByteExactOrNull(i2);
        if (byteExactOrNull != null) {
            return contains.contains(byteExactOrNull);
        }
        return false;
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final boolean contains(CharRange contains, Character ch) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return ch != null && contains.contains(ch.charValue());
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "doubleRangeContains")
    public static final /* synthetic */ boolean doubleRangeContains(ClosedRange<Double> contains, int i2) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Double.valueOf(i2));
    }

    @NotNull
    public static final IntProgression downTo(byte b4, byte b5) {
        return IntProgression.Companion.fromClosedRange(b4, b5, -1);
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "floatRangeContains")
    public static final /* synthetic */ boolean floatRangeContains(ClosedRange<Float> contains, int i2) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Float.valueOf(i2));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "intRangeContains")
    public static final /* synthetic */ boolean intRangeContains(ClosedRange<Integer> contains, float f4) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        Integer intExactOrNull = toIntExactOrNull(f4);
        if (intExactOrNull != null) {
            return contains.contains(intExactOrNull);
        }
        return false;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "longRangeContains")
    public static final /* synthetic */ boolean longRangeContains(ClosedRange<Long> contains, float f4) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        Long longExactOrNull = toLongExactOrNull(f4);
        if (longExactOrNull != null) {
            return contains.contains(longExactOrNull);
        }
        return false;
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final char random(CharRange charRange) {
        return random(charRange, Random.Default);
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final Character randomOrNull(CharRange charRange) {
        return randomOrNull(charRange, Random.Default);
    }

    @NotNull
    public static final CharProgression reversed(@NotNull CharProgression reversed) {
        Intrinsics.checkNotNullParameter(reversed, "$this$reversed");
        return CharProgression.Companion.fromClosedRange(reversed.getLast(), reversed.getFirst(), -reversed.getStep());
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "shortRangeContains")
    public static final /* synthetic */ boolean shortRangeContains(ClosedRange<Short> contains, float f4) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        Short shortExactOrNull = toShortExactOrNull(f4);
        if (shortExactOrNull != null) {
            return contains.contains(shortExactOrNull);
        }
        return false;
    }

    @NotNull
    public static final LongProgression step(@NotNull LongProgression step, long j4) {
        Intrinsics.checkNotNullParameter(step, "$this$step");
        RangesKt__RangesKt.checkStepIsPositive(j4 > 0, Long.valueOf(j4));
        LongProgression.Companion companion = LongProgression.Companion;
        long first = step.getFirst();
        long last = step.getLast();
        if (step.getStep() <= 0) {
            j4 = -j4;
        }
        return companion.fromClosedRange(first, last, j4);
    }

    @Nullable
    public static final Byte toByteExactOrNull(short s3) {
        short s4 = (short) 127;
        if (((short) (-128)) <= s3 && s4 >= s3) {
            return Byte.valueOf((byte) s3);
        }
        return null;
    }

    @Nullable
    public static final Integer toIntExactOrNull(float f4) {
        float f5 = Integer.MAX_VALUE;
        if (f4 < Integer.MIN_VALUE || f4 > f5) {
            return null;
        }
        return Integer.valueOf((int) f4);
    }

    @Nullable
    public static final Short toShortExactOrNull(double d4) {
        double d5 = 32767;
        if (d4 < -32768 || d4 > d5) {
            return null;
        }
        return Short.valueOf((short) d4);
    }

    @NotNull
    public static final IntRange until(byte b4, byte b5) {
        return new IntRange(b4, b5 - 1);
    }

    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(@NotNull ClosedRange<Byte> contains, long j4) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        Byte byteExactOrNull = toByteExactOrNull(j4);
        if (byteExactOrNull != null) {
            return contains.contains(byteExactOrNull);
        }
        return false;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "doubleRangeContains")
    public static final /* synthetic */ boolean doubleRangeContains(ClosedRange<Double> contains, long j4) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Double.valueOf(j4));
    }

    @NotNull
    public static final IntProgression downTo(short s3, byte b4) {
        return IntProgression.Companion.fromClosedRange(s3, b4, -1);
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "floatRangeContains")
    public static final /* synthetic */ boolean floatRangeContains(ClosedRange<Float> contains, long j4) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Float.valueOf((float) j4));
    }

    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(@NotNull ClosedRange<Integer> contains, long j4) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        Integer intExactOrNull = toIntExactOrNull(j4);
        if (intExactOrNull != null) {
            return contains.contains(intExactOrNull);
        }
        return false;
    }

    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(@NotNull ClosedRange<Long> contains, int i2) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Long.valueOf(i2));
    }

    @SinceKotlin(version = "1.3")
    public static int random(@NotNull IntRange random, @NotNull Random random2) {
        Intrinsics.checkNotNullParameter(random, "$this$random");
        Intrinsics.checkNotNullParameter(random2, "random");
        try {
            return RandomKt.nextInt(random2, random);
        } catch (IllegalArgumentException e4) {
            throw new NoSuchElementException(e4.getMessage());
        }
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @Nullable
    public static final Integer randomOrNull(@NotNull IntRange randomOrNull, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(randomOrNull, "$this$randomOrNull");
        Intrinsics.checkNotNullParameter(random, "random");
        if (randomOrNull.isEmpty()) {
            return null;
        }
        return Integer.valueOf(RandomKt.nextInt(random, randomOrNull));
    }

    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(@NotNull ClosedRange<Short> contains, int i2) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        Short shortExactOrNull = toShortExactOrNull(i2);
        if (shortExactOrNull != null) {
            return contains.contains(shortExactOrNull);
        }
        return false;
    }

    @Nullable
    public static final Byte toByteExactOrNull(double d4) {
        double d5 = 127;
        if (d4 < -128 || d4 > d5) {
            return null;
        }
        return Byte.valueOf((byte) d4);
    }

    @Nullable
    public static final Short toShortExactOrNull(float f4) {
        float f5 = 32767;
        if (f4 < -32768 || f4 > f5) {
            return null;
        }
        return Short.valueOf((short) f4);
    }

    @NotNull
    public static final IntRange until(short s3, byte b4) {
        return new IntRange(s3, b4 - 1);
    }

    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(@NotNull ClosedRange<Byte> contains, short s3) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        Byte byteExactOrNull = toByteExactOrNull(s3);
        if (byteExactOrNull != null) {
            return contains.contains(byteExactOrNull);
        }
        return false;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "doubleRangeContains")
    public static final /* synthetic */ boolean doubleRangeContains(ClosedRange<Double> contains, short s3) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Double.valueOf(s3));
    }

    @NotNull
    public static final CharProgression downTo(char c4, char c5) {
        return CharProgression.Companion.fromClosedRange(c4, c5, -1);
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "floatRangeContains")
    public static final /* synthetic */ boolean floatRangeContains(ClosedRange<Float> contains, short s3) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Float.valueOf(s3));
    }

    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(@NotNull ClosedRange<Integer> contains, short s3) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Integer.valueOf(s3));
    }

    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(@NotNull ClosedRange<Long> contains, short s3) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.contains(Long.valueOf(s3));
    }

    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(@NotNull ClosedRange<Short> contains, long j4) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        Short shortExactOrNull = toShortExactOrNull(j4);
        if (shortExactOrNull != null) {
            return contains.contains(shortExactOrNull);
        }
        return false;
    }

    @NotNull
    public static final CharProgression step(@NotNull CharProgression step, int i2) {
        Intrinsics.checkNotNullParameter(step, "$this$step");
        RangesKt__RangesKt.checkStepIsPositive(i2 > 0, Integer.valueOf(i2));
        CharProgression.Companion companion = CharProgression.Companion;
        char first = step.getFirst();
        char last = step.getLast();
        if (step.getStep() <= 0) {
            i2 = -i2;
        }
        return companion.fromClosedRange(first, last, i2);
    }

    @Nullable
    public static final Byte toByteExactOrNull(float f4) {
        float f5 = 127;
        if (f4 < -128 || f4 > f5) {
            return null;
        }
        return Byte.valueOf((byte) f4);
    }

    @NotNull
    public static final CharRange until(char c4, char c5) {
        return Intrinsics.compare((int) c5, 0) <= 0 ? CharRange.Companion.getEMPTY() : new CharRange(c4, (char) (c5 - 1));
    }

    @NotNull
    public static IntProgression downTo(int i2, int i4) {
        return IntProgression.Companion.fromClosedRange(i2, i4, -1);
    }

    @SinceKotlin(version = "1.3")
    public static final long random(@NotNull LongRange random, @NotNull Random random2) {
        Intrinsics.checkNotNullParameter(random, "$this$random");
        Intrinsics.checkNotNullParameter(random2, "random");
        try {
            return RandomKt.nextLong(random2, random);
        } catch (IllegalArgumentException e4) {
            throw new NoSuchElementException(e4.getMessage());
        }
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @Nullable
    public static final Long randomOrNull(@NotNull LongRange randomOrNull, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(randomOrNull, "$this$randomOrNull");
        Intrinsics.checkNotNullParameter(random, "random");
        if (randomOrNull.isEmpty()) {
            return null;
        }
        return Long.valueOf(RandomKt.nextLong(random, randomOrNull));
    }

    public static final byte coerceIn(byte b4, byte b5, byte b6) {
        if (b5 <= b6) {
            return b4 < b5 ? b5 : b4 > b6 ? b6 : b4;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((int) b6) + " is less than minimum " + ((int) b5) + d.f65364a);
    }

    @NotNull
    public static final LongProgression downTo(long j4, int i2) {
        return LongProgression.Companion.fromClosedRange(j4, i2, -1L);
    }

    @NotNull
    public static IntRange until(int i2, int i4) {
        if (i4 <= Integer.MIN_VALUE) {
            return IntRange.Companion.getEMPTY();
        }
        return new IntRange(i2, i4 - 1);
    }

    public static final short coerceIn(short s3, short s4, short s5) {
        if (s4 <= s5) {
            return s3 < s4 ? s4 : s3 > s5 ? s5 : s3;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((int) s5) + " is less than minimum " + ((int) s4) + d.f65364a);
    }

    @NotNull
    public static final IntProgression downTo(byte b4, int i2) {
        return IntProgression.Companion.fromClosedRange(b4, i2, -1);
    }

    @SinceKotlin(version = "1.3")
    public static final char random(@NotNull CharRange random, @NotNull Random random2) {
        Intrinsics.checkNotNullParameter(random, "$this$random");
        Intrinsics.checkNotNullParameter(random2, "random");
        try {
            return (char) random2.nextInt(random.getFirst(), random.getLast() + 1);
        } catch (IllegalArgumentException e4) {
            throw new NoSuchElementException(e4.getMessage());
        }
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @Nullable
    public static final Character randomOrNull(@NotNull CharRange randomOrNull, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(randomOrNull, "$this$randomOrNull");
        Intrinsics.checkNotNullParameter(random, "random");
        if (randomOrNull.isEmpty()) {
            return null;
        }
        return Character.valueOf((char) random.nextInt(randomOrNull.getFirst(), randomOrNull.getLast() + 1));
    }

    public static int coerceIn(int i2, int i4, int i5) {
        if (i4 <= i5) {
            return i2 < i4 ? i4 : i2 > i5 ? i5 : i2;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i5 + " is less than minimum " + i4 + d.f65364a);
    }

    @NotNull
    public static final IntProgression downTo(short s3, int i2) {
        return IntProgression.Companion.fromClosedRange(s3, i2, -1);
    }

    @NotNull
    public static final LongRange until(long j4, int i2) {
        return new LongRange(j4, i2 - 1);
    }

    public static long coerceIn(long j4, long j5, long j6) {
        if (j5 <= j6) {
            return j4 < j5 ? j5 : j4 > j6 ? j6 : j4;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + j6 + " is less than minimum " + j5 + d.f65364a);
    }

    @NotNull
    public static final LongProgression downTo(int i2, long j4) {
        return LongProgression.Companion.fromClosedRange(i2, j4, -1L);
    }

    @NotNull
    public static final IntRange until(byte b4, int i2) {
        if (i2 <= Integer.MIN_VALUE) {
            return IntRange.Companion.getEMPTY();
        }
        return new IntRange(b4, i2 - 1);
    }

    public static final float coerceIn(float f4, float f5, float f6) {
        if (f5 <= f6) {
            return f4 < f5 ? f5 : f4 > f6 ? f6 : f4;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + f6 + " is less than minimum " + f5 + d.f65364a);
    }

    @NotNull
    public static final LongProgression downTo(long j4, long j5) {
        return LongProgression.Companion.fromClosedRange(j4, j5, -1L);
    }

    public static final double coerceIn(double d4, double d5, double d6) {
        if (d5 <= d6) {
            return d4 < d5 ? d5 : d4 > d6 ? d6 : d4;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + d6 + " is less than minimum " + d5 + d.f65364a);
    }

    @NotNull
    public static final LongProgression downTo(byte b4, long j4) {
        return LongProgression.Companion.fromClosedRange(b4, j4, -1L);
    }

    @NotNull
    public static final IntRange until(short s3, int i2) {
        if (i2 <= Integer.MIN_VALUE) {
            return IntRange.Companion.getEMPTY();
        }
        return new IntRange(s3, i2 - 1);
    }

    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <T extends Comparable<? super T>> T coerceIn(@NotNull T coerceIn, @NotNull ClosedFloatingPointRange<T> range) {
        Intrinsics.checkNotNullParameter(coerceIn, "$this$coerceIn");
        Intrinsics.checkNotNullParameter(range, "range");
        if (!range.isEmpty()) {
            return (!range.lessThanOrEquals(coerceIn, range.getStart()) || range.lessThanOrEquals(range.getStart(), coerceIn)) ? (!range.lessThanOrEquals(range.getEndInclusive(), coerceIn) || range.lessThanOrEquals(coerceIn, range.getEndInclusive())) ? coerceIn : range.getEndInclusive() : range.getStart();
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + d.f65364a);
    }

    @NotNull
    public static final LongProgression downTo(short s3, long j4) {
        return LongProgression.Companion.fromClosedRange(s3, j4, -1L);
    }

    @NotNull
    public static final IntProgression downTo(int i2, short s3) {
        return IntProgression.Companion.fromClosedRange(i2, s3, -1);
    }

    @NotNull
    public static final LongRange until(int i2, long j4) {
        if (j4 <= Long.MIN_VALUE) {
            return LongRange.Companion.getEMPTY();
        }
        return new LongRange(i2, j4 - 1);
    }

    @NotNull
    public static final LongProgression downTo(long j4, short s3) {
        return LongProgression.Companion.fromClosedRange(j4, s3, -1L);
    }

    @NotNull
    public static final IntProgression downTo(byte b4, short s3) {
        return IntProgression.Companion.fromClosedRange(b4, s3, -1);
    }

    @NotNull
    public static final LongRange until(long j4, long j5) {
        if (j5 <= Long.MIN_VALUE) {
            return LongRange.Companion.getEMPTY();
        }
        return new LongRange(j4, j5 - 1);
    }

    @NotNull
    public static final <T extends Comparable<? super T>> T coerceIn(@NotNull T coerceIn, @NotNull ClosedRange<T> range) {
        Intrinsics.checkNotNullParameter(coerceIn, "$this$coerceIn");
        Intrinsics.checkNotNullParameter(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return (T) coerceIn((Comparable) coerceIn, (ClosedFloatingPointRange) range);
        }
        if (!range.isEmpty()) {
            return coerceIn.compareTo(range.getStart()) < 0 ? range.getStart() : coerceIn.compareTo(range.getEndInclusive()) > 0 ? range.getEndInclusive() : coerceIn;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + d.f65364a);
    }

    @NotNull
    public static final IntProgression downTo(short s3, short s4) {
        return IntProgression.Companion.fromClosedRange(s3, s4, -1);
    }

    @NotNull
    public static final LongRange until(byte b4, long j4) {
        if (j4 <= Long.MIN_VALUE) {
            return LongRange.Companion.getEMPTY();
        }
        return new LongRange(b4, j4 - 1);
    }

    @NotNull
    public static final LongRange until(short s3, long j4) {
        if (j4 <= Long.MIN_VALUE) {
            return LongRange.Companion.getEMPTY();
        }
        return new LongRange(s3, j4 - 1);
    }

    @NotNull
    public static final IntRange until(int i2, short s3) {
        return new IntRange(i2, s3 - 1);
    }

    public static final int coerceIn(int i2, @NotNull ClosedRange<Integer> range) {
        Intrinsics.checkNotNullParameter(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return ((Number) coerceIn(Integer.valueOf(i2), (ClosedFloatingPointRange<Integer>) range)).intValue();
        }
        if (!range.isEmpty()) {
            return i2 < range.getStart().intValue() ? range.getStart().intValue() : i2 > range.getEndInclusive().intValue() ? range.getEndInclusive().intValue() : i2;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + d.f65364a);
    }

    @NotNull
    public static final LongRange until(long j4, short s3) {
        return new LongRange(j4, s3 - 1);
    }

    @NotNull
    public static final IntRange until(byte b4, short s3) {
        return new IntRange(b4, s3 - 1);
    }

    @NotNull
    public static final IntRange until(short s3, short s4) {
        return new IntRange(s3, s4 - 1);
    }

    public static long coerceIn(long j4, @NotNull ClosedRange<Long> range) {
        Intrinsics.checkNotNullParameter(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return ((Number) coerceIn(Long.valueOf(j4), (ClosedFloatingPointRange<Long>) range)).longValue();
        }
        if (!range.isEmpty()) {
            return j4 < range.getStart().longValue() ? range.getStart().longValue() : j4 > range.getEndInclusive().longValue() ? range.getEndInclusive().longValue() : j4;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + d.f65364a);
    }
}
