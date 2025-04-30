.class public Lkotlinx/coroutines/JobSupport;
.super Ljava/lang/Object;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/c2;
.implements Lkotlinx/coroutines/x;
.implements Lkotlinx/coroutines/r2;
.implements Lkotlinx/coroutines/selects/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/JobSupport$c;,
        Lkotlinx/coroutines/JobSupport$b;,
        Lkotlinx/coroutines/JobSupport$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 4 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n+ 7 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 8 Exceptions.kt\nkotlinx/coroutines/ExceptionsKt\n+ 9 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n+ 10 CompletionHandler.common.kt\nkotlinx/coroutines/CompletionHandler_commonKt\n+ 11 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 12 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n+ 13 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,1478:1\n702#1,2:1483\n365#1,2:1493\n367#1,4:1498\n371#1,4:1504\n375#1,2:1511\n365#1,2:1513\n367#1,4:1518\n371#1,4:1524\n375#1,2:1531\n176#1,2:1540\n703#1:1542\n176#1,2:1543\n176#1,2:1558\n176#1,2:1572\n176#1,2:1575\n702#1,2:1577\n702#1,2:1579\n176#1,2:1581\n702#1,2:1583\n176#1,2:1585\n176#1,2:1588\n176#1,2:1590\n176#1,2:1600\n1#2:1479\n1#2:1502\n1#2:1522\n155#3,2:1480\n20#4:1482\n20#4:1545\n20#4:1587\n20#4:1592\n286#5,2:1485\n286#5,2:1487\n21#6:1489\n167#7:1490\n167#7:1491\n158#7,4:1595\n75#8:1492\n75#8:1503\n75#8:1523\n75#8:1536\n641#9,3:1495\n644#9,3:1508\n641#9,3:1515\n644#9,3:1528\n641#9,3:1533\n644#9,3:1537\n47#10:1546\n22#11:1547\n22#11:1548\n13#11:1569\n13#11:1574\n13#11:1593\n13#11:1594\n13#11:1599\n13#11:1602\n150#12:1549\n87#12,3:1550\n151#12,5:1553\n310#13,9:1560\n319#13,2:1570\n*S KotlinDebug\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n248#1:1483,2\n330#1:1493,2\n330#1:1498,4\n330#1:1504,4\n330#1:1511,2\n362#1:1513,2\n362#1:1518,4\n362#1:1524,4\n362#1:1531,2\n379#1:1540,2\n424#1:1542\n459#1:1543,2\n551#1:1558,2\n568#1:1572,2\n590#1:1575,2\n617#1:1577,2\n626#1:1579,2\n690#1:1581,2\n719#1:1583,2\n732#1:1585,2\n805#1:1588,2\n827#1:1590,2\n1244#1:1600,2\n330#1:1502\n362#1:1522\n166#1:1480,2\n211#1:1482\n476#1:1545\n735#1:1587\n880#1:1592\n259#1:1485,2\n263#1:1487,2\n271#1:1489\n277#1:1490\n279#1:1491\n1214#1:1595,4\n282#1:1492\n330#1:1503\n362#1:1523\n370#1:1536\n330#1:1495,3\n330#1:1508,3\n362#1:1515,3\n362#1:1528,3\n366#1:1533,3\n366#1:1537,3\n481#1:1546\n493#1:1547\n503#1:1548\n559#1:1569\n579#1:1574\n920#1:1593\n970#1:1594\n1233#1:1599\n1260#1:1602\n524#1:1549\n524#1:1550,3\n524#1:1553,5\n557#1:1560,9\n557#1:1570,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Deprecated;
    level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
    message = "This is internal API and may be removed in the future releases"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00dc\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0010\u0003\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u001e\u0008\u0017\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0004~z\u00cd\u0001B\u0012\u0012\u0007\u0010\u00ca\u0001\u001a\u00020\u001b\u00a2\u0006\u0006\u0008\u00cb\u0001\u0010\u00cc\u0001J&\u0010\n\u001a\u00020\t2\u0014\u0010\u0008\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0005H\u0082\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ#\u0010\u000f\u001a\u0004\u0018\u00010\u00062\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\'\u0010\u0014\u001a\u0004\u0018\u00010\u00122\u0006\u0010\r\u001a\u00020\u000c2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J%\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J!\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\r\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ!\u0010\u001e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u001f\u0010#\u001a\u00020\u00072\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u0017\u0010%\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u001d\u0010\'\u001a\u00020\u0007*\u00020 2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0012H\u0002\u00a2\u0006\u0004\u0008\'\u0010$J.\u0010*\u001a\u00020\u0007\"\n\u0008\u0000\u0010)\u0018\u0001*\u00020(2\u0006\u0010!\u001a\u00020 2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0012H\u0082\u0008\u00a2\u0006\u0004\u0008*\u0010$J\u0019\u0010,\u001a\u00020+2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008,\u0010-J@\u00103\u001a\u00020(2\'\u00101\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0012\u00a2\u0006\u000c\u0008.\u0012\u0008\u0008/\u0012\u0004\u0008\u0008(\"\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`02\u0006\u00102\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u00083\u00104J\'\u00107\u001a\u00020\u001b2\u0006\u00105\u001a\u00020\u00062\u0006\u0010!\u001a\u00020 2\u0006\u00106\u001a\u00020(H\u0002\u00a2\u0006\u0004\u00087\u00108J\u0017\u0010:\u001a\u00020\u00072\u0006\u0010\r\u001a\u000209H\u0002\u00a2\u0006\u0004\u0008:\u0010;J\u0017\u0010<\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020(H\u0002\u00a2\u0006\u0004\u0008<\u0010=J\u000f\u0010>\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008>\u0010?J\u0013\u0010@\u001a\u00020\u0007H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008@\u0010AJ\u001b\u0010B\u001a\u0004\u0018\u00010\u00062\u0008\u0010\"\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008B\u0010CJ\u0019\u0010D\u001a\u00020\u00122\u0008\u0010\"\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008D\u0010EJ\u001b\u0010F\u001a\u0004\u0018\u00010\u00062\u0008\u0010\"\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008F\u0010CJ\u0019\u0010G\u001a\u0004\u0018\u00010 2\u0006\u0010\r\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008G\u0010HJ\u001f\u0010I\u001a\u00020\u001b2\u0006\u0010\r\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008I\u0010JJ%\u0010K\u001a\u0004\u0018\u00010\u00062\u0008\u0010\r\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008K\u0010LJ#\u0010M\u001a\u0004\u0018\u00010\u00062\u0006\u0010\r\u001a\u00020\u00192\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008M\u0010NJ\u0019\u0010P\u001a\u0004\u0018\u00010O2\u0006\u0010\r\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008P\u0010QJ*\u0010S\u001a\u00020\u001b2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010R\u001a\u00020O2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0082\u0010\u00a2\u0006\u0004\u0008S\u0010TJ)\u0010V\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010U\u001a\u00020O2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008V\u0010WJ\u0015\u0010Y\u001a\u0004\u0018\u00010O*\u00020XH\u0002\u00a2\u0006\u0004\u0008Y\u0010ZJ\u0019\u0010\\\u001a\u00020[2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\\\u0010]J\u0015\u0010^\u001a\u0004\u0018\u00010\u0006H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008^\u0010AJ\u0019\u0010`\u001a\u00020\u00072\u0008\u0010_\u001a\u0004\u0018\u00010\u0001H\u0004\u00a2\u0006\u0004\u0008`\u0010aJ\r\u0010b\u001a\u00020\u001b\u00a2\u0006\u0004\u0008b\u0010?J\u000f\u0010c\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008c\u0010dJ\u0011\u0010g\u001a\u00060ej\u0002`f\u00a2\u0006\u0004\u0008g\u0010hJ#\u0010j\u001a\u00060ej\u0002`f*\u00020\u00122\n\u0008\u0002\u0010i\u001a\u0004\u0018\u00010[H\u0004\u00a2\u0006\u0004\u0008j\u0010kJ6\u0010m\u001a\u00020l2\'\u00101\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0012\u00a2\u0006\u000c\u0008.\u0012\u0008\u0008/\u0012\u0004\u0008\u0008(\"\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`0\u00a2\u0006\u0004\u0008m\u0010nJF\u0010p\u001a\u00020l2\u0006\u00102\u001a\u00020\u001b2\u0006\u0010o\u001a\u00020\u001b2\'\u00101\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0012\u00a2\u0006\u000c\u0008.\u0012\u0008\u0008/\u0012\u0004\u0008\u0008(\"\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`0\u00a2\u0006\u0004\u0008p\u0010qJ\u0013\u0010r\u001a\u00020\u0007H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008r\u0010AJB\u0010w\u001a\u00020\u0007\"\u0004\u0008\u0000\u0010s2\u000c\u0010u\u001a\u0008\u0012\u0004\u0012\u00028\u00000t2\u001c\u0010\u0008\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000v\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008w\u0010xJ\u0017\u0010y\u001a\u00020\u00072\u0006\u00106\u001a\u00020(H\u0000\u00a2\u0006\u0004\u0008y\u0010=J\u001f\u0010z\u001a\u00020\u00072\u000e\u0010\"\u001a\n\u0018\u00010ej\u0004\u0018\u0001`fH\u0016\u00a2\u0006\u0004\u0008z\u0010{J\u000f\u0010|\u001a\u00020[H\u0014\u00a2\u0006\u0004\u0008|\u0010}J\u0019\u0010~\u001a\u00020\u001b2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0012H\u0017\u00a2\u0006\u0004\u0008~\u0010&J\u0018\u0010\u007f\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u0012H\u0016\u00a2\u0006\u0005\u0008\u007f\u0010\u0080\u0001J\u0019\u0010\u0082\u0001\u001a\u00020\u00072\u0007\u0010\u0081\u0001\u001a\u00020\u0003\u00a2\u0006\u0006\u0008\u0082\u0001\u0010\u0083\u0001J\u0019\u0010\u0084\u0001\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\u0012H\u0016\u00a2\u0006\u0005\u0008\u0084\u0001\u0010&J\u0019\u0010\u0085\u0001\u001a\u00020\u001b2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0005\u0008\u0085\u0001\u0010&J\u001c\u0010\u0086\u0001\u001a\u00020\u001b2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0006H\u0000\u00a2\u0006\u0006\u0008\u0086\u0001\u0010\u0087\u0001J,\u0010\u0089\u0001\u001a\u00030\u0088\u00012\n\u0008\u0002\u0010i\u001a\u0004\u0018\u00010[2\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u0012H\u0080\u0008\u00a2\u0006\u0006\u0008\u0089\u0001\u0010\u008a\u0001J\u0015\u0010\u008b\u0001\u001a\u00060ej\u0002`fH\u0016\u00a2\u0006\u0005\u0008\u008b\u0001\u0010hJ\u001c\u0010\u008c\u0001\u001a\u00020\u001b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0000\u00a2\u0006\u0006\u0008\u008c\u0001\u0010\u0087\u0001J\u001d\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0000\u00a2\u0006\u0005\u0008\u008d\u0001\u0010CJ\u0019\u0010\u008f\u0001\u001a\u00030\u008e\u00012\u0006\u0010R\u001a\u00020\u0002\u00a2\u0006\u0006\u0008\u008f\u0001\u0010\u0090\u0001J\u001b\u0010\u0092\u0001\u001a\u00020\u00072\u0007\u0010\u0091\u0001\u001a\u00020\u0012H\u0010\u00a2\u0006\u0006\u0008\u0092\u0001\u0010\u0080\u0001J\u001c\u0010\u0093\u0001\u001a\u00020\u00072\u0008\u0010\"\u001a\u0004\u0018\u00010\u0012H\u0014\u00a2\u0006\u0006\u0008\u0093\u0001\u0010\u0080\u0001J\u001a\u0010\u0094\u0001\u001a\u00020\u001b2\u0007\u0010\u0091\u0001\u001a\u00020\u0012H\u0014\u00a2\u0006\u0005\u0008\u0094\u0001\u0010&J\u001c\u0010\u0095\u0001\u001a\u00020\u00072\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0014\u00a2\u0006\u0006\u0008\u0095\u0001\u0010\u0096\u0001J\u001c\u0010\u0097\u0001\u001a\u00020\u00072\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0014\u00a2\u0006\u0006\u0008\u0097\u0001\u0010\u0096\u0001J\u0011\u0010\u0098\u0001\u001a\u00020[H\u0016\u00a2\u0006\u0005\u0008\u0098\u0001\u0010}J\u0011\u0010\u0099\u0001\u001a\u00020[H\u0007\u00a2\u0006\u0005\u0008\u0099\u0001\u0010}J\u0011\u0010\u009a\u0001\u001a\u00020[H\u0010\u00a2\u0006\u0005\u0008\u009a\u0001\u0010}J\u0012\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0006\u0008\u009b\u0001\u0010\u009c\u0001J\u0014\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u0006H\u0000\u00a2\u0006\u0006\u0008\u009d\u0001\u0010\u009e\u0001J\u0017\u0010\u009f\u0001\u001a\u0004\u0018\u00010\u0006H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0005\u0008\u009f\u0001\u0010AJT\u0010\u00a1\u0001\u001a\u00020\u0007\"\u0004\u0008\u0000\u0010)\"\u0004\u0008\u0001\u0010s2\u000c\u0010u\u001a\u0008\u0012\u0004\u0012\u00028\u00010t2#\u0010\u0008\u001a\u001f\u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010v\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00a0\u0001H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00a1\u0001\u0010\u00a2\u0001JT\u0010\u00a3\u0001\u001a\u00020\u0007\"\u0004\u0008\u0000\u0010)\"\u0004\u0008\u0001\u0010s2\u000c\u0010u\u001a\u0008\u0012\u0004\u0012\u00028\u00010t2#\u0010\u0008\u001a\u001f\u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010v\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00a0\u0001H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00a3\u0001\u0010\u00a2\u0001R\u001b\u0010\u00a7\u0001\u001a\u0007\u0012\u0002\u0008\u00030\u00a4\u00018F@\u0006\u00a2\u0006\u0008\u001a\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001R\u0015\u0010\u00a8\u0001\u001a\u00020\u001b8F@\u0006\u00a2\u0006\u0007\u001a\u0005\u0008\u00a8\u0001\u0010?R\u0018\u0010\u00aa\u0001\u001a\u00020\u001b8D@\u0004X\u0084\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00a9\u0001\u0010?R\u0018\u0010\u00ac\u0001\u001a\u00020\u001b8P@\u0010X\u0090\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00ab\u0001\u0010?R\u001d\u0010\u00af\u0001\u001a\u00020\u001b*\u00020\u00198B@\u0002X\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00ad\u0001\u0010\u00ae\u0001R\u001d\u0010\u00b3\u0001\u001a\t\u0012\u0004\u0012\u00020\u00010\u00b0\u00018F@\u0006\u00a2\u0006\u0008\u001a\u0006\u0008\u00b1\u0001\u0010\u00b2\u0001R\u0018\u0010\u00b5\u0001\u001a\u00020\u001b8P@\u0010X\u0090\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00b4\u0001\u0010?R\u0016\u0010\u00b8\u0001\u001a\u00020\u00048F@\u0006\u00a2\u0006\u0008\u001a\u0006\u0008\u00b6\u0001\u0010\u00b7\u0001R\u001a\u0010\r\u001a\u0004\u0018\u00010\u00068@@\u0000X\u0080\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00b9\u0001\u0010\u009e\u0001R\u001b\u0010\u00bb\u0001\u001a\u0004\u0018\u00010\u00128D@\u0004X\u0084\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00ba\u0001\u0010\u009c\u0001R\u0015\u0010\u00bc\u0001\u001a\u00020\u001b8F@\u0006\u00a2\u0006\u0007\u001a\u0005\u0008\u00bc\u0001\u0010?R \u0010\u00be\u0001\u001a\u0004\u0018\u00010\u0012*\u0004\u0018\u00010\u00068B@\u0002X\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00bd\u0001\u0010ER0\u0010\u00c4\u0001\u001a\u0005\u0018\u00010\u008e\u00012\n\u0010\u00bf\u0001\u001a\u0005\u0018\u00010\u008e\u00018@@@X\u0080\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u00c0\u0001\u0010\u00c1\u0001\"\u0006\u0008\u00c2\u0001\u0010\u00c3\u0001R\u0018\u0010\u00c5\u0001\u001a\u00020\u001b8V@\u0016X\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00c5\u0001\u0010?R\u0018\u0010\u00c7\u0001\u001a\u00020\u001b8T@\u0014X\u0094\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00c6\u0001\u0010?R\u0015\u0010\u00c9\u0001\u001a\u00020\u001b8F@\u0006\u00a2\u0006\u0007\u001a\u0005\u0008\u00c8\u0001\u0010?\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u00ce\u0001"
    }
    d2 = {
        "Lkotlinx/coroutines/JobSupport;",
        "Lkotlinx/coroutines/c2;",
        "Lkotlinx/coroutines/x;",
        "Lkotlinx/coroutines/r2;",
        "Lkotlinx/coroutines/selects/c;",
        "Lkotlin/Function1;",
        "",
        "",
        "block",
        "",
        "M0",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Void;",
        "Lkotlinx/coroutines/JobSupport$c;",
        "state",
        "proposedUpdate",
        "s0",
        "(Lkotlinx/coroutines/JobSupport$c;Ljava/lang/Object;)Ljava/lang/Object;",
        "",
        "",
        "exceptions",
        "y0",
        "(Lkotlinx/coroutines/JobSupport$c;Ljava/util/List;)Ljava/lang/Throwable;",
        "rootCause",
        "b0",
        "(Ljava/lang/Throwable;Ljava/util/List;)V",
        "Lkotlinx/coroutines/x1;",
        "update",
        "",
        "k1",
        "(Lkotlinx/coroutines/x1;Ljava/lang/Object;)Z",
        "n0",
        "(Lkotlinx/coroutines/x1;Ljava/lang/Object;)V",
        "Lkotlinx/coroutines/n2;",
        "list",
        "cause",
        "T0",
        "(Lkotlinx/coroutines/n2;Ljava/lang/Throwable;)V",
        "k0",
        "(Ljava/lang/Throwable;)Z",
        "U0",
        "Lkotlinx/coroutines/i2;",
        "T",
        "V0",
        "",
        "f1",
        "(Ljava/lang/Object;)I",
        "Lkotlin/ParameterName;",
        "name",
        "Lkotlinx/coroutines/CompletionHandler;",
        "handler",
        "onCancelling",
        "Q0",
        "(Lkotlin/jvm/functions/Function1;Z)Lkotlinx/coroutines/i2;",
        "expect",
        "node",
        "a0",
        "(Ljava/lang/Object;Lkotlinx/coroutines/n2;Lkotlinx/coroutines/i2;)Z",
        "Lkotlinx/coroutines/m1;",
        "Z0",
        "(Lkotlinx/coroutines/m1;)V",
        "a1",
        "(Lkotlinx/coroutines/i2;)V",
        "K0",
        "()Z",
        "L0",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "j0",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "p0",
        "(Ljava/lang/Object;)Ljava/lang/Throwable;",
        "N0",
        "B0",
        "(Lkotlinx/coroutines/x1;)Lkotlinx/coroutines/n2;",
        "l1",
        "(Lkotlinx/coroutines/x1;Ljava/lang/Throwable;)Z",
        "m1",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "n1",
        "(Lkotlinx/coroutines/x1;Ljava/lang/Object;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/w;",
        "t0",
        "(Lkotlinx/coroutines/x1;)Lkotlinx/coroutines/w;",
        "child",
        "o1",
        "(Lkotlinx/coroutines/JobSupport$c;Lkotlinx/coroutines/w;Ljava/lang/Object;)Z",
        "lastChild",
        "o0",
        "(Lkotlinx/coroutines/JobSupport$c;Lkotlinx/coroutines/w;Ljava/lang/Object;)V",
        "Lkotlinx/coroutines/internal/s;",
        "S0",
        "(Lkotlinx/coroutines/internal/s;)Lkotlinx/coroutines/w;",
        "",
        "g1",
        "(Ljava/lang/Object;)Ljava/lang/String;",
        "f0",
        "parent",
        "G0",
        "(Lkotlinx/coroutines/c2;)V",
        "start",
        "Y0",
        "()V",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CancellationException;",
        "m",
        "()Ljava/util/concurrent/CancellationException;",
        "message",
        "h1",
        "(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/j1;",
        "u",
        "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/j1;",
        "invokeImmediately",
        "k",
        "(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/j1;",
        "E",
        "R",
        "Lkotlinx/coroutines/selects/f;",
        "select",
        "Lkotlin/coroutines/Continuation;",
        "j",
        "(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function1;)V",
        "c1",
        "b",
        "(Ljava/util/concurrent/CancellationException;)V",
        "l0",
        "()Ljava/lang/String;",
        "a",
        "i0",
        "(Ljava/lang/Throwable;)V",
        "parentJob",
        "o",
        "(Lkotlinx/coroutines/r2;)V",
        "m0",
        "g0",
        "h0",
        "(Ljava/lang/Object;)Z",
        "Lkotlinx/coroutines/JobCancellationException;",
        "q0",
        "(Ljava/lang/String;Ljava/lang/Throwable;)Lkotlinx/coroutines/JobCancellationException;",
        "A",
        "O0",
        "P0",
        "Lkotlinx/coroutines/v;",
        "U",
        "(Lkotlinx/coroutines/x;)Lkotlinx/coroutines/v;",
        "exception",
        "F0",
        "W0",
        "E0",
        "X0",
        "(Ljava/lang/Object;)V",
        "c0",
        "toString",
        "j1",
        "R0",
        "i",
        "()Ljava/lang/Throwable;",
        "u0",
        "()Ljava/lang/Object;",
        "d0",
        "Lkotlin/Function2;",
        "b1",
        "(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function2;)V",
        "d1",
        "Lkotlin/coroutines/CoroutineContext$Key;",
        "getKey",
        "()Lkotlin/coroutines/CoroutineContext$Key;",
        "key",
        "isCompleted",
        "w0",
        "completionCauseHandled",
        "z0",
        "handlesException",
        "H0",
        "(Lkotlinx/coroutines/x1;)Z",
        "isCancelling",
        "Lkotlin/sequences/Sequence;",
        "h",
        "()Lkotlin/sequences/Sequence;",
        "children",
        "A0",
        "onCancelComplete",
        "Q",
        "()Lkotlinx/coroutines/selects/c;",
        "onJoin",
        "D0",
        "v0",
        "completionCause",
        "isCancelled",
        "x0",
        "exceptionOrNull",
        "value",
        "C0",
        "()Lkotlinx/coroutines/v;",
        "e1",
        "(Lkotlinx/coroutines/v;)V",
        "parentHandle",
        "isActive",
        "J0",
        "isScopedCoroutine",
        "I0",
        "isCompletedExceptionally",
        "active",
        "<init>",
        "(Z)V",
        "c",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _parentHandle:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic _state:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/JobSupport;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/JobSupport;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lkotlinx/coroutines/j2;->c()Lkotlinx/coroutines/m1;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/j2;->d()Lkotlinx/coroutines/m1;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lkotlinx/coroutines/JobSupport;->_state:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lkotlinx/coroutines/JobSupport;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method private final B0(Lkotlinx/coroutines/x1;)Lkotlinx/coroutines/n2;
    .locals 1

    .line 1
    invoke-interface {p1}, Lkotlinx/coroutines/x1;->e()Lkotlinx/coroutines/n2;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2
    instance-of v0, p1, Lkotlinx/coroutines/m1;

    if-eqz v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/n2;

    invoke-direct {v0}, Lkotlinx/coroutines/n2;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/i2;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lkotlinx/coroutines/i2;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->a1(Lkotlinx/coroutines/i2;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "State should have list: "

    .line 5
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private final H0(Lkotlinx/coroutines/x1;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/JobSupport$c;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/JobSupport$c;

    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport$c;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final K0()Z
    .locals 2

    .line 1
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->D0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/x1;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_1
    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->f1(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method private final L0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/q;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/q;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 2
    invoke-virtual {v0}, Lkotlinx/coroutines/q;->N()V

    .line 3
    new-instance v1, Lkotlinx/coroutines/u2;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/u2;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/JobSupport;->u(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/j1;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlinx/coroutines/s;->a(Lkotlinx/coroutines/p;Lkotlinx/coroutines/j1;)V

    .line 4
    invoke-virtual {v0}, Lkotlinx/coroutines/q;->x()Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 6
    :cond_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_1

    return-object v0

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final M0(Lkotlin/jvm/functions/Function1;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->D0()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private final N0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    move-object v1, v0

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->D0()Ljava/lang/Object;

    move-result-object v2

    .line 2
    instance-of v3, v2, Lkotlinx/coroutines/JobSupport$c;

    if-eqz v3, :cond_7

    .line 3
    monitor-enter v2

    .line 4
    :try_start_0
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/JobSupport$c;

    invoke-virtual {v3}, Lkotlinx/coroutines/JobSupport$c;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lkotlinx/coroutines/j2;->f()Lkotlinx/coroutines/internal/i0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object p1

    .line 5
    :cond_1
    :try_start_1
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/JobSupport$c;

    invoke-virtual {v3}, Lkotlinx/coroutines/JobSupport$c;->f()Z

    move-result v3

    if-nez p1, :cond_2

    if-nez v3, :cond_4

    :cond_2
    if-nez v1, :cond_3

    .line 6
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->p0(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 7
    :cond_3
    move-object p1, v2

    check-cast p1, Lkotlinx/coroutines/JobSupport$c;

    invoke-virtual {p1, v1}, Lkotlinx/coroutines/JobSupport$c;->a(Ljava/lang/Throwable;)V

    .line 8
    :cond_4
    move-object p1, v2

    check-cast p1, Lkotlinx/coroutines/JobSupport$c;

    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport$c;->d()Ljava/lang/Throwable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_5

    move-object v0, p1

    :cond_5
    monitor-exit v2

    if-nez v0, :cond_6

    goto :goto_1

    .line 9
    :cond_6
    check-cast v2, Lkotlinx/coroutines/JobSupport$c;

    invoke-virtual {v2}, Lkotlinx/coroutines/JobSupport$c;->e()Lkotlinx/coroutines/n2;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/JobSupport;->T0(Lkotlinx/coroutines/n2;Ljava/lang/Throwable;)V

    .line 10
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/j2;->a()Lkotlinx/coroutines/internal/i0;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v2

    throw p1

    .line 12
    :cond_7
    instance-of v3, v2, Lkotlinx/coroutines/x1;

    if-eqz v3, :cond_c

    if-nez v1, :cond_8

    .line 13
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->p0(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 14
    :cond_8
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/x1;

    invoke-interface {v3}, Lkotlinx/coroutines/x1;->isActive()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 15
    invoke-direct {p0, v3, v1}, Lkotlinx/coroutines/JobSupport;->l1(Lkotlinx/coroutines/x1;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lkotlinx/coroutines/j2;->a()Lkotlinx/coroutines/internal/i0;

    move-result-object p1

    return-object p1

    .line 16
    :cond_9
    new-instance v3, Lkotlinx/coroutines/h0;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v3, v1, v4, v5, v0}, Lkotlinx/coroutines/h0;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v2, v3}, Lkotlinx/coroutines/JobSupport;->m1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 17
    invoke-static {}, Lkotlinx/coroutines/j2;->a()Lkotlinx/coroutines/internal/i0;

    move-result-object v4

    if-eq v3, v4, :cond_b

    .line 18
    invoke-static {}, Lkotlinx/coroutines/j2;->b()Lkotlinx/coroutines/internal/i0;

    move-result-object v2

    if-ne v3, v2, :cond_a

    goto/16 :goto_0

    :cond_a
    return-object v3

    :cond_b
    const-string p1, "Cannot happen in "

    .line 19
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_c
    invoke-static {}, Lkotlinx/coroutines/j2;->f()Lkotlinx/coroutines/internal/i0;

    move-result-object p1

    return-object p1
.end method

.method private final Q0(Lkotlin/jvm/functions/Function1;Z)Lkotlinx/coroutines/i2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;Z)",
            "Lkotlinx/coroutines/i2;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1
    instance-of p2, p1, Lkotlinx/coroutines/d2;

    if-eqz p2, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/d2;

    :cond_0
    if-nez v0, :cond_6

    .line 2
    new-instance v0, Lkotlinx/coroutines/a2;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/a2;-><init>(Lkotlin/jvm/functions/Function1;)V

    goto :goto_3

    .line 3
    :cond_1
    instance-of p2, p1, Lkotlinx/coroutines/i2;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Lkotlinx/coroutines/i2;

    goto :goto_0

    :cond_2
    move-object p2, v0

    :goto_0
    if-nez p2, :cond_3

    goto :goto_2

    .line 4
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p2, Lkotlinx/coroutines/d2;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_1
    move-object v0, p2

    :goto_2
    if-nez v0, :cond_6

    .line 5
    new-instance v0, Lkotlinx/coroutines/b2;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/b2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 6
    :cond_6
    :goto_3
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/i2;->g0(Lkotlinx/coroutines/JobSupport;)V

    return-object v0
.end method

.method private final S0(Lkotlinx/coroutines/internal/s;)Lkotlinx/coroutines/w;
    .locals 1

    .line 1
    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/s;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/s;->Q()Lkotlinx/coroutines/internal/s;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/s;->P()Lkotlinx/coroutines/internal/s;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/s;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/w;

    if-eqz v0, :cond_2

    check-cast p1, Lkotlinx/coroutines/w;

    return-object p1

    .line 5
    :cond_2
    instance-of v0, p1, Lkotlinx/coroutines/n2;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1
.end method

.method private final T0(Lkotlinx/coroutines/n2;Ljava/lang/Throwable;)V
    .locals 7

    .line 1
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/JobSupport;->W0(Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/s;->O()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/s;

    const/4 v1, 0x0

    move-object v2, v1

    .line 3
    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4
    instance-of v3, v0, Lkotlinx/coroutines/d2;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/i2;

    .line 5
    :try_start_0
    invoke-virtual {v3, p2}, Lkotlinx/coroutines/j0;->e0(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    if-nez v2, :cond_0

    move-object v5, v1

    goto :goto_1

    .line 6
    :cond_0
    invoke-static {v2, v4}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    move-object v5, v2

    :goto_1
    if-nez v5, :cond_1

    .line 7
    new-instance v2, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in completion handler "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :cond_1
    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/s;->P()Lkotlinx/coroutines/internal/s;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    goto :goto_3

    .line 9
    :cond_3
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/JobSupport;->F0(Ljava/lang/Throwable;)V

    .line 10
    :goto_3
    invoke-direct {p0, p2}, Lkotlinx/coroutines/JobSupport;->k0(Ljava/lang/Throwable;)Z

    return-void
.end method

.method private final U0(Lkotlinx/coroutines/n2;Ljava/lang/Throwable;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/s;->O()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/s;

    const/4 v1, 0x0

    move-object v2, v1

    .line 2
    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3
    instance-of v3, v0, Lkotlinx/coroutines/i2;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/i2;

    .line 4
    :try_start_0
    invoke-virtual {v3, p2}, Lkotlinx/coroutines/j0;->e0(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    if-nez v2, :cond_0

    move-object v5, v1

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {v2, v4}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    move-object v5, v2

    :goto_1
    if-nez v5, :cond_1

    .line 6
    new-instance v2, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in completion handler "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :cond_1
    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/s;->P()Lkotlinx/coroutines/internal/s;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    goto :goto_3

    .line 8
    :cond_3
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/JobSupport;->F0(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private final synthetic V0(Lkotlinx/coroutines/n2;Ljava/lang/Throwable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lkotlinx/coroutines/i2;",
            ">(",
            "Lkotlinx/coroutines/n2;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/s;->O()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/s;

    const/4 v1, 0x0

    move-object v2, v1

    .line 2
    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x3

    const-string v4, "T"

    .line 3
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v3, v0, Lkotlinx/coroutines/internal/s;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/i2;

    .line 4
    :try_start_0
    invoke-virtual {v3, p2}, Lkotlinx/coroutines/j0;->e0(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    if-nez v2, :cond_0

    move-object v5, v1

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {v2, v4}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    move-object v5, v2

    :goto_1
    if-nez v5, :cond_1

    .line 6
    new-instance v2, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in completion handler "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :cond_1
    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/s;->P()Lkotlinx/coroutines/internal/s;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    goto :goto_3

    .line 8
    :cond_3
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/JobSupport;->F0(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public static final synthetic W(Lkotlinx/coroutines/JobSupport;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->f0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic X(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->l0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic Y(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/JobSupport$c;Lkotlinx/coroutines/w;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/JobSupport;->o0(Lkotlinx/coroutines/JobSupport$c;Lkotlinx/coroutines/w;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic Z(Lkotlinx/coroutines/JobSupport;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->L0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final Z0(Lkotlinx/coroutines/m1;)V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/n2;

    invoke-direct {v0}, Lkotlinx/coroutines/n2;-><init>()V

    .line 2
    invoke-virtual {p1}, Lkotlinx/coroutines/m1;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/w1;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/w1;-><init>(Lkotlinx/coroutines/n2;)V

    move-object v0, v1

    .line 3
    :goto_0
    sget-object v1, Lkotlinx/coroutines/JobSupport;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private final a0(Ljava/lang/Object;Lkotlinx/coroutines/n2;Lkotlinx/coroutines/i2;)Z
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/JobSupport$d;

    invoke-direct {v0, p3, p0, p1}, Lkotlinx/coroutines/JobSupport$d;-><init>(Lkotlinx/coroutines/internal/s;Lkotlinx/coroutines/JobSupport;Ljava/lang/Object;)V

    .line 2
    :goto_0
    invoke-virtual {p2}, Lkotlinx/coroutines/internal/s;->Q()Lkotlinx/coroutines/internal/s;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p3, p2, v0}, Lkotlinx/coroutines/internal/s;->c0(Lkotlinx/coroutines/internal/s;Lkotlinx/coroutines/internal/s;Lkotlinx/coroutines/internal/s$c;)I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method private final a1(Lkotlinx/coroutines/i2;)V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/n2;

    invoke-direct {v0}, Lkotlinx/coroutines/n2;-><init>()V

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/internal/s;->F(Lkotlinx/coroutines/internal/s;)Z

    .line 2
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/s;->P()Lkotlinx/coroutines/internal/s;

    move-result-object v0

    .line 3
    sget-object v1, Lkotlinx/coroutines/JobSupport;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private final b0(Ljava/lang/Throwable;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 3
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 4
    invoke-static {}, Lkotlinx/coroutines/v0;->e()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lkotlinx/coroutines/internal/h0;->u(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 6
    invoke-static {}, Lkotlinx/coroutines/v0;->e()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v2}, Lkotlinx/coroutines/internal/h0;->u(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    :goto_2
    if-eq v2, p1, :cond_2

    if-eq v2, v1, :cond_2

    .line 7
    instance-of v3, v2, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private final f0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/JobSupport$a;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lkotlinx/coroutines/JobSupport$a;-><init>(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/JobSupport;)V

    .line 2
    invoke-virtual {v0}, Lkotlinx/coroutines/q;->N()V

    .line 3
    new-instance v1, Lkotlinx/coroutines/t2;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/t2;-><init>(Lkotlinx/coroutines/q;)V

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/JobSupport;->u(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/j1;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlinx/coroutines/s;->a(Lkotlinx/coroutines/p;Lkotlinx/coroutines/j1;)V

    .line 4
    invoke-virtual {v0}, Lkotlinx/coroutines/q;->x()Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object v0
.end method

.method private final f1(Ljava/lang/Object;)I
    .locals 4

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/m1;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 2
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/m1;

    invoke-virtual {v0}, Lkotlinx/coroutines/m1;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    .line 3
    :cond_0
    sget-object v0, Lkotlinx/coroutines/JobSupport;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/j2;->c()Lkotlinx/coroutines/m1;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->Y0()V

    return v2

    .line 5
    :cond_2
    instance-of v0, p1, Lkotlinx/coroutines/w1;

    if-eqz v0, :cond_4

    .line 6
    sget-object v0, Lkotlinx/coroutines/JobSupport;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v3, p1

    check-cast v3, Lkotlinx/coroutines/w1;

    invoke-virtual {v3}, Lkotlinx/coroutines/w1;->e()Lkotlinx/coroutines/n2;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 7
    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->Y0()V

    return v2

    :cond_4
    return v3
.end method

.method private final g1(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/JobSupport$c;

    const-string v1, "Active"

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lkotlinx/coroutines/JobSupport$c;

    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport$c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Cancelling"

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport$c;->g()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string v1, "Completing"

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/x1;

    if-eqz v0, :cond_3

    check-cast p1, Lkotlinx/coroutines/x1;

    invoke-interface {p1}, Lkotlinx/coroutines/x1;->isActive()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "New"

    goto :goto_0

    .line 5
    :cond_3
    instance-of p1, p1, Lkotlinx/coroutines/h0;

    if-eqz p1, :cond_4

    const-string v1, "Cancelled"

    goto :goto_0

    :cond_4
    const-string v1, "Completed"

    :cond_5
    :goto_0
    return-object v1
.end method

.method public static synthetic i1(Lkotlinx/coroutines/JobSupport;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/JobSupport;->h1(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: toCancellationException"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final j0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->D0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/x1;

    if-eqz v1, :cond_2

    instance-of v1, v0, Lkotlinx/coroutines/JobSupport$c;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/JobSupport$c;

    invoke-virtual {v1}, Lkotlinx/coroutines/JobSupport$c;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v1, Lkotlinx/coroutines/h0;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->p0(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlinx/coroutines/h0;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/JobSupport;->m1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {}, Lkotlinx/coroutines/j2;->b()Lkotlinx/coroutines/internal/i0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-object v0

    .line 6
    :cond_2
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/j2;->a()Lkotlinx/coroutines/internal/i0;

    move-result-object p1

    return-object p1
.end method

.method private final k0(Ljava/lang/Throwable;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->J0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->C0()Lkotlinx/coroutines/v;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 4
    sget-object v3, Lkotlinx/coroutines/p2;->a:Lkotlinx/coroutines/p2;

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {v2, p1}, Lkotlinx/coroutines/v;->x(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method private final k1(Lkotlinx/coroutines/x1;Ljava/lang/Object;)Z
    .locals 4

    .line 1
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    instance-of v0, p1, Lkotlinx/coroutines/m1;

    if-nez v0, :cond_1

    instance-of v0, p1, Lkotlinx/coroutines/i2;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_3
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p2, Lkotlinx/coroutines/h0;

    xor-int/2addr v0, v2

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_5
    :goto_3
    sget-object v0, Lkotlinx/coroutines/JobSupport;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p2}, Lkotlinx/coroutines/j2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->W0(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/JobSupport;->X0(Ljava/lang/Object;)V

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/JobSupport;->n0(Lkotlinx/coroutines/x1;Ljava/lang/Object;)V

    return v2
.end method

.method private final l1(Lkotlinx/coroutines/x1;Ljava/lang/Throwable;)Z
    .locals 5

    .line 1
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    instance-of v0, p1, Lkotlinx/coroutines/JobSupport$c;

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lkotlinx/coroutines/x1;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->B0(Lkotlinx/coroutines/x1;)Lkotlinx/coroutines/n2;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    return v2

    .line 4
    :cond_4
    new-instance v3, Lkotlinx/coroutines/JobSupport$c;

    invoke-direct {v3, v0, v2, p2}, Lkotlinx/coroutines/JobSupport$c;-><init>(Lkotlinx/coroutines/n2;ZLjava/lang/Throwable;)V

    .line 5
    sget-object v4, Lkotlinx/coroutines/JobSupport;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    .line 6
    :cond_5
    invoke-direct {p0, v0, p2}, Lkotlinx/coroutines/JobSupport;->T0(Lkotlinx/coroutines/n2;Ljava/lang/Throwable;)V

    return v1
.end method

.method private final m1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/x1;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lkotlinx/coroutines/j2;->a()Lkotlinx/coroutines/internal/i0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/m1;

    if-nez v0, :cond_1

    instance-of v0, p1, Lkotlinx/coroutines/i2;

    if-eqz v0, :cond_3

    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/w;

    if-nez v0, :cond_3

    instance-of v0, p2, Lkotlinx/coroutines/h0;

    if-nez v0, :cond_3

    .line 4
    check-cast p1, Lkotlinx/coroutines/x1;

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/JobSupport;->k1(Lkotlinx/coroutines/x1;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p2

    .line 5
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/j2;->b()Lkotlinx/coroutines/internal/i0;

    move-result-object p1

    return-object p1

    .line 6
    :cond_3
    check-cast p1, Lkotlinx/coroutines/x1;

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/JobSupport;->n1(Lkotlinx/coroutines/x1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final n0(Lkotlinx/coroutines/x1;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->C0()Lkotlinx/coroutines/v;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/j1;->dispose()V

    .line 3
    sget-object v0, Lkotlinx/coroutines/p2;->a:Lkotlinx/coroutines/p2;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->e1(Lkotlinx/coroutines/v;)V

    .line 4
    :goto_0
    instance-of v0, p2, Lkotlinx/coroutines/h0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lkotlinx/coroutines/h0;

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p2, Lkotlinx/coroutines/h0;->a:Ljava/lang/Throwable;

    .line 5
    :goto_2
    instance-of p2, p1, Lkotlinx/coroutines/i2;

    if-eqz p2, :cond_3

    .line 6
    :try_start_0
    move-object p2, p1

    check-cast p2, Lkotlinx/coroutines/i2;

    invoke-virtual {p2, v1}, Lkotlinx/coroutines/j0;->e0(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p2

    .line 7
    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in completion handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->F0(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 8
    :cond_3
    invoke-interface {p1}, Lkotlinx/coroutines/x1;->e()Lkotlinx/coroutines/n2;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-direct {p0, p1, v1}, Lkotlinx/coroutines/JobSupport;->U0(Lkotlinx/coroutines/n2;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private final n1(Lkotlinx/coroutines/x1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->B0(Lkotlinx/coroutines/x1;)Lkotlinx/coroutines/n2;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlinx/coroutines/j2;->b()Lkotlinx/coroutines/internal/i0;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    instance-of v1, p1, Lkotlinx/coroutines/JobSupport$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/JobSupport$c;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_2

    new-instance v1, Lkotlinx/coroutines/JobSupport$c;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lkotlinx/coroutines/JobSupport$c;-><init>(Lkotlinx/coroutines/n2;ZLjava/lang/Throwable;)V

    .line 3
    :cond_2
    monitor-enter v1

    .line 4
    :try_start_0
    invoke-virtual {v1}, Lkotlinx/coroutines/JobSupport$c;->g()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lkotlinx/coroutines/j2;->a()Lkotlinx/coroutines/internal/i0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p1

    :cond_3
    const/4 v3, 0x1

    .line 5
    :try_start_1
    invoke-virtual {v1, v3}, Lkotlinx/coroutines/JobSupport$c;->j(Z)V

    if-eq v1, p1, :cond_4

    .line 6
    sget-object v4, Lkotlinx/coroutines/JobSupport;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lkotlinx/coroutines/j2;->b()Lkotlinx/coroutines/internal/i0;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object p1

    .line 7
    :cond_4
    :try_start_2
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Lkotlinx/coroutines/JobSupport$c;->h()Z

    move-result v4

    xor-int/2addr v4, v3

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_6
    :goto_1
    invoke-virtual {v1}, Lkotlinx/coroutines/JobSupport$c;->f()Z

    move-result v4

    .line 9
    instance-of v5, p2, Lkotlinx/coroutines/h0;

    if-eqz v5, :cond_7

    move-object v5, p2

    check-cast v5, Lkotlinx/coroutines/h0;

    goto :goto_2

    :cond_7
    move-object v5, v2

    :goto_2
    if-nez v5, :cond_8

    goto :goto_3

    :cond_8
    iget-object v5, v5, Lkotlinx/coroutines/h0;->a:Ljava/lang/Throwable;

    invoke-virtual {v1, v5}, Lkotlinx/coroutines/JobSupport$c;->a(Ljava/lang/Throwable;)V

    .line 10
    :goto_3
    invoke-virtual {v1}, Lkotlinx/coroutines/JobSupport$c;->d()Ljava/lang/Throwable;

    move-result-object v5

    xor-int/2addr v3, v4

    if-eqz v3, :cond_9

    move-object v2, v5

    .line 11
    :cond_9
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    if-nez v2, :cond_a

    goto :goto_4

    .line 12
    :cond_a
    invoke-direct {p0, v0, v2}, Lkotlinx/coroutines/JobSupport;->T0(Lkotlinx/coroutines/n2;Ljava/lang/Throwable;)V

    .line 13
    :goto_4
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->t0(Lkotlinx/coroutines/x1;)Lkotlinx/coroutines/w;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 14
    invoke-direct {p0, v1, p1, p2}, Lkotlinx/coroutines/JobSupport;->o1(Lkotlinx/coroutines/JobSupport$c;Lkotlinx/coroutines/w;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 15
    sget-object p1, Lkotlinx/coroutines/j2;->b:Lkotlinx/coroutines/internal/i0;

    return-object p1

    .line 16
    :cond_b
    invoke-direct {p0, v1, p2}, Lkotlinx/coroutines/JobSupport;->s0(Lkotlinx/coroutines/JobSupport$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v1

    throw p1
.end method

.method private final o0(Lkotlinx/coroutines/JobSupport$c;Lkotlinx/coroutines/w;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->D0()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_2
    :goto_1
    invoke-direct {p0, p2}, Lkotlinx/coroutines/JobSupport;->S0(Lkotlinx/coroutines/internal/s;)Lkotlinx/coroutines/w;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/JobSupport;->o1(Lkotlinx/coroutines/JobSupport$c;Lkotlinx/coroutines/w;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    .line 4
    :cond_3
    invoke-direct {p0, p1, p3}, Lkotlinx/coroutines/JobSupport;->s0(Lkotlinx/coroutines/JobSupport$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->c0(Ljava/lang/Object;)V

    return-void
.end method

.method private final o1(Lkotlinx/coroutines/JobSupport$c;Lkotlinx/coroutines/w;Ljava/lang/Object;)Z
    .locals 6

    .line 1
    :cond_0
    iget-object v0, p2, Lkotlinx/coroutines/w;->e:Lkotlinx/coroutines/x;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    new-instance v3, Lkotlinx/coroutines/JobSupport$b;

    invoke-direct {v3, p0, p1, p2, p3}, Lkotlinx/coroutines/JobSupport$b;-><init>(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/JobSupport$c;Lkotlinx/coroutines/w;Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/c2$a;->f(Lkotlinx/coroutines/c2;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/j1;

    move-result-object v0

    .line 4
    sget-object v1, Lkotlinx/coroutines/p2;->a:Lkotlinx/coroutines/p2;

    if-eq v0, v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_1
    invoke-direct {p0, p2}, Lkotlinx/coroutines/JobSupport;->S0(Lkotlinx/coroutines/internal/s;)Lkotlinx/coroutines/w;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method private final p0(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1
    :cond_0
    instance-of v0, p1, Ljava/lang/Throwable;

    :goto_0
    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Throwable;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 2
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lkotlinx/coroutines/JobSupport;->X(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/c2;)V

    move-object p1, v0

    goto :goto_1

    :cond_1
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/r2;

    invoke-interface {p1}, Lkotlinx/coroutines/r2;->A()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    :cond_2
    :goto_1
    return-object p1
.end method

.method public static synthetic r0(Lkotlinx/coroutines/JobSupport;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Lkotlinx/coroutines/JobCancellationException;
    .locals 1

    if-nez p4, :cond_3

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 1
    :cond_1
    new-instance p3, Lkotlinx/coroutines/JobCancellationException;

    if-nez p1, :cond_2

    invoke-static {p0}, Lkotlinx/coroutines/JobSupport;->X(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-direct {p3, p1, p2, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/c2;)V

    return-object p3

    .line 2
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: defaultCancellationException"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final s0(Lkotlinx/coroutines/JobSupport$c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->D0()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_2
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport$c;->h()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_4
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport$c;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_6
    :goto_3
    instance-of v0, p2, Lkotlinx/coroutines/h0;

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/h0;

    goto :goto_4

    :cond_7
    move-object v0, v3

    :goto_4
    if-nez v0, :cond_8

    move-object v0, v3

    goto :goto_5

    :cond_8
    iget-object v0, v0, Lkotlinx/coroutines/h0;->a:Ljava/lang/Throwable;

    .line 5
    :goto_5
    monitor-enter p1

    .line 6
    :try_start_0
    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport$c;->f()Z

    move-result v4

    .line 7
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/JobSupport$c;->i(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v5

    .line 8
    invoke-direct {p0, p1, v5}, Lkotlinx/coroutines/JobSupport;->y0(Lkotlinx/coroutines/JobSupport$c;Ljava/util/List;)Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 9
    invoke-direct {p0, v6, v5}, Lkotlinx/coroutines/JobSupport;->b0(Ljava/lang/Throwable;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_9
    monitor-exit p1

    if-nez v6, :cond_a

    goto :goto_6

    :cond_a
    if-ne v6, v0, :cond_b

    goto :goto_6

    .line 11
    :cond_b
    new-instance p2, Lkotlinx/coroutines/h0;

    const/4 v0, 0x2

    invoke-direct {p2, v6, v2, v0, v3}, Lkotlinx/coroutines/h0;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_6
    if-eqz v6, :cond_e

    .line 12
    invoke-direct {p0, v6}, Lkotlinx/coroutines/JobSupport;->k0(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0, v6}, Lkotlinx/coroutines/JobSupport;->E0(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_7
    if-eqz v1, :cond_e

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    .line 13
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/h0;

    invoke-virtual {v0}, Lkotlinx/coroutines/h0;->b()Z

    :cond_e
    if-nez v4, :cond_f

    .line 14
    invoke-virtual {p0, v6}, Lkotlinx/coroutines/JobSupport;->W0(Ljava/lang/Throwable;)V

    .line 15
    :cond_f
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/JobSupport;->X0(Ljava/lang/Object;)V

    .line 16
    sget-object v0, Lkotlinx/coroutines/JobSupport;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p2}, Lkotlinx/coroutines/j2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 17
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v1

    if-eqz v1, :cond_11

    if-eqz v0, :cond_10

    goto :goto_8

    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_11
    :goto_8
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/JobSupport;->n0(Lkotlinx/coroutines/x1;Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p2

    .line 19
    monitor-exit p1

    throw p2
.end method

.method private final t0(Lkotlinx/coroutines/x1;)Lkotlinx/coroutines/w;
    .locals 2

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/w;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/w;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    invoke-interface {p1}, Lkotlinx/coroutines/x1;->e()Lkotlinx/coroutines/n2;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->S0(Lkotlinx/coroutines/internal/s;)Lkotlinx/coroutines/w;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method private final x0(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/h0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/h0;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lkotlinx/coroutines/h0;->a:Ljava/lang/Throwable;

    :goto_1
    return-object v1
.end method

.method private final y0(Lkotlinx/coroutines/JobSupport$c;Ljava/util/List;)Ljava/lang/Throwable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/JobSupport$c;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport$c;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lkotlinx/coroutines/JobSupport;->X(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/c2;)V

    return-object p1

    :cond_0
    return-object v1

    .line 4
    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    .line 5
    instance-of v3, v3, Ljava/util/concurrent/CancellationException;

    xor-int/2addr v3, v2

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    const/4 p1, 0x0

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 7
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-eqz v3, :cond_8

    .line 8
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Throwable;

    if-eq v4, v0, :cond_6

    .line 9
    instance-of v4, v4, Lkotlinx/coroutines/TimeoutCancellationException;

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_5

    move-object v1, v3

    :cond_7
    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_8

    return-object v1

    :cond_8
    return-object v0
.end method


# virtual methods
.method public A()Ljava/util/concurrent/CancellationException;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->D0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/JobSupport$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/JobSupport$c;

    invoke-virtual {v1}, Lkotlinx/coroutines/JobSupport$c;->d()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/h0;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/h0;

    iget-object v1, v1, Lkotlinx/coroutines/h0;->a:Ljava/lang/Throwable;

    goto :goto_0

    .line 4
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/x1;

    if-nez v1, :cond_4

    move-object v1, v2

    .line 5
    :goto_0
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_2
    if-nez v2, :cond_3

    new-instance v2, Lkotlinx/coroutines/JobCancellationException;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->g1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Parent job is "

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/c2;)V

    :cond_3
    return-object v2

    :cond_4
    const-string v1, "Cannot be cancelling child in this state: "

    .line 6
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public A0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final C0()Lkotlinx/coroutines/v;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/JobSupport;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/v;

    return-object v0
.end method

.method public final D0()Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/JobSupport;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/internal/b0;

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    check-cast v0, Lkotlinx/coroutines/internal/b0;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/b0;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final E(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport;->K0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/f2;->A(Lkotlin/coroutines/CoroutineContext;)V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->L0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method protected E0(Ljava/lang/Throwable;)Z
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public F0(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    throw p1
.end method

.method protected final G0(Lkotlinx/coroutines/c2;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/c2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->C0()Lkotlinx/coroutines/v;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    .line 2
    sget-object p1, Lkotlinx/coroutines/p2;->a:Lkotlinx/coroutines/p2;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->e1(Lkotlinx/coroutines/v;)V

    return-void

    .line 3
    :cond_3
    invoke-interface {p1}, Lkotlinx/coroutines/c2;->start()Z

    .line 4
    invoke-interface {p1, p0}, Lkotlinx/coroutines/c2;->U(Lkotlinx/coroutines/x;)Lkotlinx/coroutines/v;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->e1(Lkotlinx/coroutines/v;)V

    .line 6
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    invoke-interface {p1}, Lkotlinx/coroutines/j1;->dispose()V

    .line 8
    sget-object p1, Lkotlinx/coroutines/p2;->a:Lkotlinx/coroutines/p2;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->e1(Lkotlinx/coroutines/v;)V

    :cond_4
    return-void
.end method

.method public final I0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->D0()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/h0;

    return v0
.end method

.method protected J0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final O0(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->D0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlinx/coroutines/JobSupport;->m1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-static {}, Lkotlinx/coroutines/j2;->a()Lkotlinx/coroutines/internal/i0;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    sget-object v1, Lkotlinx/coroutines/j2;->b:Lkotlinx/coroutines/internal/i0;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    return v2

    .line 5
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/j2;->b()Lkotlinx/coroutines/internal/i0;

    move-result-object v1

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->c0(Ljava/lang/Object;)V

    return v2
.end method

.method public final P0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->D0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlinx/coroutines/JobSupport;->m1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-static {}, Lkotlinx/coroutines/j2;->a()Lkotlinx/coroutines/internal/i0;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 4
    invoke-static {}, Lkotlinx/coroutines/j2;->b()Lkotlinx/coroutines/internal/i0;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already complete or completing, but is being completed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->x0(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    .line 8
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final Q()Lkotlinx/coroutines/selects/c;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public R0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/w0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final U(Lkotlinx/coroutines/x;)Lkotlinx/coroutines/v;
    .locals 6
    .param p1    # Lkotlinx/coroutines/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v3, Lkotlinx/coroutines/w;

    invoke-direct {v3, p1}, Lkotlinx/coroutines/w;-><init>(Lkotlinx/coroutines/x;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/c2$a;->f(Lkotlinx/coroutines/c2;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/j1;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/v;

    return-object p1
.end method

.method protected W0(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method protected X0(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method protected Y0()V
    .locals 0

    return-void
.end method

.method public synthetic a(Ljava/lang/Throwable;)Z
    .locals 3
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Added since 1.2.0 for binary compatibility with versions <= 1.1.x"
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lkotlinx/coroutines/JobSupport;->X(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/c2;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0, p1, v1, v0, v1}, Lkotlinx/coroutines/JobSupport;->i1(Lkotlinx/coroutines/JobSupport;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->i0(Ljava/lang/Throwable;)V

    return v0
.end method

.method public b(Ljava/util/concurrent/CancellationException;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lkotlinx/coroutines/JobSupport;->X(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/c2;)V

    move-object p1, v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->i0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b1(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .param p1    # Lkotlinx/coroutines/selects/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/f<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->D0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lkotlinx/coroutines/selects/f;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 3
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/x1;

    if-nez v1, :cond_4

    .line 4
    invoke-interface {p1}, Lkotlinx/coroutines/selects/f;->n()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    instance-of v1, v0, Lkotlinx/coroutines/h0;

    if-eqz v1, :cond_2

    .line 6
    check-cast v0, Lkotlinx/coroutines/h0;

    iget-object p2, v0, Lkotlinx/coroutines/h0;->a:Ljava/lang/Throwable;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/selects/f;->r(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {v0}, Lkotlinx/coroutines/j2;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lkotlinx/coroutines/selects/f;->o()Lkotlin/coroutines/Continuation;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lb3/b;->d(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    :cond_3
    :goto_0
    return-void

    .line 8
    :cond_4
    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->f1(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lkotlinx/coroutines/y2;

    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/y2;-><init>(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->u(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/j1;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/coroutines/selects/f;->j(Lkotlinx/coroutines/j1;)V

    return-void
.end method

.method protected c0(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final c1(Lkotlinx/coroutines/i2;)V
    .locals 3
    .param p1    # Lkotlinx/coroutines/i2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->D0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/i2;

    if-eqz v1, :cond_2

    if-eq v0, p1, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v1, Lkotlinx/coroutines/JobSupport;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/j2;->c()Lkotlinx/coroutines/m1;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_2
    instance-of v1, v0, Lkotlinx/coroutines/x1;

    if-eqz v1, :cond_3

    .line 5
    check-cast v0, Lkotlinx/coroutines/x1;

    invoke-interface {v0}, Lkotlinx/coroutines/x1;->e()Lkotlinx/coroutines/n2;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/s;->X()Z

    :cond_3
    return-void
.end method

.method public synthetic cancel()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/c2$a;->a(Lkotlinx/coroutines/c2;)V

    return-void
.end method

.method public final d0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->D0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/x1;

    if-nez v1, :cond_4

    .line 3
    instance-of v1, v0, Lkotlinx/coroutines/h0;

    if-eqz v1, :cond_3

    .line 4
    check-cast v0, Lkotlinx/coroutines/h0;

    iget-object v0, v0, Lkotlinx/coroutines/h0;->a:Ljava/lang/Throwable;

    .line 5
    invoke-static {}, Lkotlinx/coroutines/v0;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    instance-of v1, p1, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v1, :cond_1

    throw v0

    .line 7
    :cond_1
    check-cast p1, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {v0, p1}, Lkotlinx/coroutines/internal/h0;->c(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    .line 8
    :cond_2
    throw v0

    .line 9
    :cond_3
    invoke-static {v0}, Lkotlinx/coroutines/j2;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4
    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->f1(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 11
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->f0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d1(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function2;)V
    .locals 6
    .param p1    # Lkotlinx/coroutines/selects/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/f<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->D0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/h0;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lkotlinx/coroutines/h0;

    iget-object p2, v0, Lkotlinx/coroutines/h0;->a:Ljava/lang/Throwable;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/selects/f;->r(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lkotlinx/coroutines/j2;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lkotlinx/coroutines/selects/f;->o()Lkotlin/coroutines/Continuation;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lb3/a;->g(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final e1(Lkotlinx/coroutines/v;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/v;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/JobSupport;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method public fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 0
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/c2$a;->d(Lkotlinx/coroutines/c2;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final g0(Ljava/lang/Throwable;)Z
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->h0(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;
    .locals 0
    .param p1    # Lkotlin/coroutines/CoroutineContext$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            ">(",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/c2$a;->e(Lkotlinx/coroutines/c2;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p1

    return-object p1
.end method

.method public final getKey()Lkotlin/coroutines/CoroutineContext$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/c2;->Q:Lkotlinx/coroutines/c2$b;

    return-object v0
.end method

.method public final h()Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lkotlinx/coroutines/c2;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/JobSupport$children$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/JobSupport$children$1;-><init>(Lkotlinx/coroutines/JobSupport;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->sequence(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public final h0(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lkotlinx/coroutines/j2;->a()Lkotlinx/coroutines/internal/i0;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->A0()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->j0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    sget-object v1, Lkotlinx/coroutines/j2;->b:Lkotlinx/coroutines/internal/i0;

    if-ne v0, v1, :cond_0

    return v2

    .line 5
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/j2;->a()Lkotlinx/coroutines/internal/i0;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 6
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->N0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/j2;->a()Lkotlinx/coroutines/internal/i0;

    move-result-object p1

    if-ne v0, p1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    sget-object p1, Lkotlinx/coroutines/j2;->b:Lkotlinx/coroutines/internal/i0;

    if-ne v0, p1, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/j2;->f()Lkotlinx/coroutines/internal/i0;

    move-result-object p1

    if-ne v0, p1, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->c0(Ljava/lang/Object;)V

    :goto_0
    return v2
.end method

.method protected final h1(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 2
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    if-nez p2, :cond_1

    invoke-static {p0}, Lkotlinx/coroutines/JobSupport;->X(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-direct {v0, p2, p1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/c2;)V

    :cond_2
    return-object v0
.end method

.method public final i()Ljava/lang/Throwable;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->D0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/x1;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->x0(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This job has not completed yet"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i0(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->h0(Ljava/lang/Object;)Z

    return-void
.end method

.method public isActive()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->D0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/x1;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/x1;

    invoke-interface {v0}, Lkotlinx/coroutines/x1;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCancelled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->D0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/h0;

    if-nez v1, :cond_1

    instance-of v1, v0, Lkotlinx/coroutines/JobSupport$c;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/JobSupport$c;

    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport$c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isCompleted()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->D0()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/x1;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final j(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1    # Lkotlinx/coroutines/selects/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/f<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->D0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lkotlinx/coroutines/selects/f;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 3
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/x1;

    if-nez v1, :cond_3

    .line 4
    invoke-interface {p1}, Lkotlinx/coroutines/selects/f;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {p1}, Lkotlinx/coroutines/selects/f;->o()Lkotlin/coroutines/Continuation;

    move-result-object p1

    invoke-static {p2, p1}, Lb3/b;->c(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    :cond_2
    return-void

    .line 6
    :cond_3
    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->f1(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lkotlinx/coroutines/z2;

    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/z2;-><init>(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->u(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/j1;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/coroutines/selects/f;->j(Lkotlinx/coroutines/j1;)V

    return-void
.end method

.method public final j1()Ljava/lang/String;
    .locals 2
    .annotation build Lkotlinx/coroutines/InternalCoroutinesApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->R0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->D0()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lkotlinx/coroutines/JobSupport;->g1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/j1;
    .locals 6
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/j1;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0, p3, p1}, Lkotlinx/coroutines/JobSupport;->Q0(Lkotlin/jvm/functions/Function1;Z)Lkotlinx/coroutines/i2;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->D0()Ljava/lang/Object;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lkotlinx/coroutines/m1;

    if-eqz v2, :cond_2

    .line 4
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/m1;

    invoke-virtual {v2}, Lkotlinx/coroutines/m1;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    sget-object v2, Lkotlinx/coroutines/JobSupport;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 6
    :cond_1
    invoke-direct {p0, v2}, Lkotlinx/coroutines/JobSupport;->Z0(Lkotlinx/coroutines/m1;)V

    goto :goto_0

    .line 7
    :cond_2
    instance-of v2, v1, Lkotlinx/coroutines/x1;

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    .line 8
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/x1;

    invoke-interface {v2}, Lkotlinx/coroutines/x1;->e()Lkotlinx/coroutines/n2;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    .line 9
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/i2;

    invoke-direct {p0, v1}, Lkotlinx/coroutines/JobSupport;->a1(Lkotlinx/coroutines/i2;)V

    goto :goto_0

    .line 10
    :cond_3
    sget-object v4, Lkotlinx/coroutines/p2;->a:Lkotlinx/coroutines/p2;

    if-eqz p1, :cond_8

    .line 11
    instance-of v5, v1, Lkotlinx/coroutines/JobSupport$c;

    if-eqz v5, :cond_8

    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/JobSupport$c;

    invoke-virtual {v3}, Lkotlinx/coroutines/JobSupport$c;->d()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 14
    instance-of v5, p3, Lkotlinx/coroutines/w;

    if-eqz v5, :cond_7

    .line 15
    move-object v5, v1

    check-cast v5, Lkotlinx/coroutines/JobSupport$c;

    invoke-virtual {v5}, Lkotlinx/coroutines/JobSupport$c;->g()Z

    move-result v5

    if-nez v5, :cond_7

    .line 16
    :cond_4
    invoke-direct {p0, v1, v2, v0}, Lkotlinx/coroutines/JobSupport;->a0(Ljava/lang/Object;Lkotlinx/coroutines/n2;Lkotlinx/coroutines/i2;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_5

    monitor-exit v1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_6

    .line 17
    monitor-exit v1

    return-object v0

    :cond_6
    move-object v4, v0

    .line 18
    :cond_7
    :try_start_1
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    :cond_8
    :goto_1
    if-eqz v3, :cond_a

    if-eqz p2, :cond_9

    .line 19
    invoke-interface {p3, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-object v4

    .line 20
    :cond_a
    invoke-direct {p0, v1, v2, v0}, Lkotlinx/coroutines/JobSupport;->a0(Ljava/lang/Object;Lkotlinx/coroutines/n2;Lkotlinx/coroutines/i2;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_b
    if-eqz p2, :cond_e

    .line 21
    instance-of p1, v1, Lkotlinx/coroutines/h0;

    if-eqz p1, :cond_c

    check-cast v1, Lkotlinx/coroutines/h0;

    goto :goto_2

    :cond_c
    move-object v1, v3

    :goto_2
    if-nez v1, :cond_d

    goto :goto_3

    :cond_d
    iget-object v3, v1, Lkotlinx/coroutines/h0;->a:Ljava/lang/Throwable;

    .line 22
    :goto_3
    invoke-interface {p3, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_e
    sget-object p1, Lkotlinx/coroutines/p2;->a:Lkotlinx/coroutines/p2;

    return-object p1
.end method

.method protected l0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "Job was cancelled"

    return-object v0
.end method

.method public final m()Ljava/util/concurrent/CancellationException;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->D0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/JobSupport$c;

    const-string v2, "Job is still new or active: "

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/JobSupport$c;

    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport$c;->d()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lkotlinx/coroutines/w0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " is cancelling"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/JobSupport;->h1(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/x1;

    if-nez v1, :cond_3

    .line 5
    instance-of v1, v0, Lkotlinx/coroutines/h0;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Lkotlinx/coroutines/h0;

    iget-object v0, v0, Lkotlinx/coroutines/h0;->a:Ljava/lang/Throwable;

    const/4 v1, 0x1

    invoke-static {p0, v0, v2, v1, v2}, Lkotlinx/coroutines/JobSupport;->i1(Lkotlinx/coroutines/JobSupport;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lkotlinx/coroutines/w0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, " has completed normally"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/c2;)V

    :goto_0
    return-object v0

    .line 7
    :cond_3
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public m0(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->h0(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->z0()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;
    .locals 0
    .param p1    # Lkotlin/coroutines/CoroutineContext$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "*>;)",
            "Lkotlin/coroutines/CoroutineContext;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/c2$a;->g(Lkotlinx/coroutines/c2;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    return-object p1
.end method

.method public final o(Lkotlinx/coroutines/r2;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/r2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->h0(Ljava/lang/Object;)Z

    return-void
.end method

.method public plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .locals 0
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/c2$a;->h(Lkotlinx/coroutines/c2;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    return-object p1
.end method

.method public final q0(Ljava/lang/String;Ljava/lang/Throwable;)Lkotlinx/coroutines/JobCancellationException;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    if-nez p1, :cond_0

    invoke-static {p0}, Lkotlinx/coroutines/JobSupport;->X(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-direct {v0, p1, p2, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/c2;)V

    return-object v0
.end method

.method public final start()Z
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->D0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->f1(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public t(Lkotlinx/coroutines/c2;)Lkotlinx/coroutines/c2;
    .locals 0
    .param p1    # Lkotlinx/coroutines/c2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Operator \'+\' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`."
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/c2$a;->i(Lkotlinx/coroutines/c2;Lkotlinx/coroutines/c2;)Lkotlinx/coroutines/c2;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->j1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/w0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/j1;
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/j1;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1, p1}, Lkotlinx/coroutines/JobSupport;->k(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/j1;

    move-result-object p1

    return-object p1
.end method

.method public final u0()Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->D0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/x1;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 3
    instance-of v1, v0, Lkotlinx/coroutines/h0;

    if-nez v1, :cond_0

    .line 4
    invoke-static {v0}, Lkotlinx/coroutines/j2;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    check-cast v0, Lkotlinx/coroutines/h0;

    iget-object v0, v0, Lkotlinx/coroutines/h0;->a:Ljava/lang/Throwable;

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This job has not completed yet"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final v0()Ljava/lang/Throwable;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->D0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/JobSupport$c;

    const-string v2, "Job is still new or active: "

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/JobSupport$c;

    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport$c;->d()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/x1;

    if-nez v1, :cond_3

    .line 5
    instance-of v1, v0, Lkotlinx/coroutines/h0;

    if-eqz v1, :cond_2

    check-cast v0, Lkotlinx/coroutines/h0;

    iget-object v0, v0, Lkotlinx/coroutines/h0;->a:Ljava/lang/Throwable;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 6
    :cond_3
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final w0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->D0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/h0;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/h0;

    invoke-virtual {v0}, Lkotlinx/coroutines/h0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public z0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
