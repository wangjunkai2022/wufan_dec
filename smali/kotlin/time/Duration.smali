.class public final Lkotlin/time/Duration;
.super Ljava/lang/Object;
.source "Duration.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/Duration$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lkotlin/time/Duration;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u0000\n\u0002\u0008H\u0008\u0087@\u0018\u0000 \u00a6\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0002\u00a6\u0001B\u0015\u0008\u0000\u0012\u0006\u0010w\u001a\u00020\u000f\u00f8\u0001\u0000\u00a2\u0006\u0005\u0008\u00a5\u0001\u0010\tJ\u000f\u0010\u0005\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0016\u0010\n\u001a\u00020\u0000H\u0086\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001b\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0000H\u0086\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\rJ%\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fH\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001b\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0000H\u0086\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\rJ\u001e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0017H\u0086\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u001cH\u0086\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0019\u0010\u001dJ\u001e\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0017H\u0086\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001e\u0010\u001aJ\u001e\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u001cH\u0086\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001e\u0010\u001dJ\u001b\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\u000b\u001a\u00020\u0000H\u0086\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008 \u0010!J\r\u0010#\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\"\u0010\u0004J\r\u0010%\u001a\u00020\u0002\u00a2\u0006\u0004\u0008$\u0010\u0004J\r\u0010\'\u001a\u00020\u0002\u00a2\u0006\u0004\u0008&\u0010\u0004J\r\u0010)\u001a\u00020\u0002\u00a2\u0006\u0004\u0008(\u0010\u0004J\u001b\u0010,\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\u0000H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008*\u0010+J\u009d\u0001\u00109\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010-2u\u00106\u001aq\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(1\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(2\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(3\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(4\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(5\u0012\u0004\u0012\u00028\u00000.H\u0086\u0008\u00f8\u0001\u0002\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0004\u00087\u00108J\u0088\u0001\u00109\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010-2`\u00106\u001a\\\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(2\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(3\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(4\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(5\u0012\u0004\u0012\u00028\u00000:H\u0086\u0008\u00f8\u0001\u0002\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0004\u00087\u0010;Js\u00109\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010-2K\u00106\u001aG\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(3\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(4\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(5\u0012\u0004\u0012\u00028\u00000<H\u0086\u0008\u00f8\u0001\u0002\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0004\u00087\u0010=J^\u00109\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010-26\u00106\u001a2\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(4\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(5\u0012\u0004\u0012\u00028\u00000>H\u0086\u0008\u00f8\u0001\u0002\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0004\u00087\u0010?J\u0019\u0010E\u001a\u00020\u001c2\n\u0010B\u001a\u00060@j\u0002`A\u00a2\u0006\u0004\u0008C\u0010DJ\u0019\u0010H\u001a\u00020\u000f2\n\u0010B\u001a\u00060@j\u0002`A\u00a2\u0006\u0004\u0008F\u0010GJ\u0019\u0010K\u001a\u00020\u00172\n\u0010B\u001a\u00060@j\u0002`A\u00a2\u0006\u0004\u0008I\u0010JJ\u000f\u0010M\u001a\u00020\u000fH\u0007\u00a2\u0006\u0004\u0008L\u0010\tJ\u000f\u0010O\u001a\u00020\u000fH\u0007\u00a2\u0006\u0004\u0008N\u0010\tJ\u000f\u0010S\u001a\u00020PH\u0016\u00a2\u0006\u0004\u0008Q\u0010RJ\u0017\u0010W\u001a\u00020\u00172\u0006\u0010T\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008U\u0010VJ#\u0010S\u001a\u00020P2\n\u0010B\u001a\u00060@j\u0002`A2\u0008\u0008\u0002\u0010X\u001a\u00020\u0017\u00a2\u0006\u0004\u0008Q\u0010YJ\r\u0010[\u001a\u00020P\u00a2\u0006\u0004\u0008Z\u0010RJ\u0010\u0010^\u001a\u00020\u0017H\u00d6\u0001\u00a2\u0006\u0004\u0008\\\u0010]J\u001a\u0010b\u001a\u00020\u00022\u0008\u0010\u000b\u001a\u0004\u0018\u00010_H\u00d6\u0003\u00a2\u0006\u0004\u0008`\u0010aR\u001c\u0010f\u001a\u00020\u00178@@\u0001X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008d\u0010e\u001a\u0004\u0008c\u0010]R\u001c\u0010i\u001a\u00020\u000f8F@\u0007X\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008h\u0010e\u001a\u0004\u0008g\u0010\tR\u0017\u0010k\u001a\u00020\u00178\u00c2\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008j\u0010]R\u001c\u0010n\u001a\u00020\u000f8F@\u0007X\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008m\u0010e\u001a\u0004\u0008l\u0010\tR\u001c\u0010q\u001a\u00020\u000f8F@\u0007X\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008p\u0010e\u001a\u0004\u0008o\u0010\tR\u0019\u0010s\u001a\u00020\u00008F@\u0006\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u001a\u0004\u0008r\u0010\tR\u001c\u0010v\u001a\u00020\u000f8F@\u0007X\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008u\u0010e\u001a\u0004\u0008t\u0010\tR\u0016\u0010w\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008w\u0010xR\u001c\u0010|\u001a\u00020\u001c8F@\u0007X\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008{\u0010e\u001a\u0004\u0008y\u0010zR\u001c\u0010\u007f\u001a\u00020\u001c8F@\u0007X\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008~\u0010e\u001a\u0004\u0008}\u0010zR\u001f\u0010\u0082\u0001\u001a\u00020\u001c8F@\u0007X\u0087\u0004\u00a2\u0006\u000e\u0012\u0005\u0008\u0081\u0001\u0010e\u001a\u0005\u0008\u0080\u0001\u0010zR\u001f\u0010\u0085\u0001\u001a\u00020\u001c8F@\u0007X\u0087\u0004\u00a2\u0006\u000e\u0012\u0005\u0008\u0084\u0001\u0010e\u001a\u0005\u0008\u0083\u0001\u0010zR\u001f\u0010\u0088\u0001\u001a\u00020\u00178@@\u0001X\u0081\u0004\u00a2\u0006\u000e\u0012\u0005\u0008\u0087\u0001\u0010e\u001a\u0005\u0008\u0086\u0001\u0010]R\u0017\u0010T\u001a\u00020\u000f8B@\u0002X\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0089\u0001\u0010\tR\u001f\u0010\u008c\u0001\u001a\u00020\u00178@@\u0001X\u0081\u0004\u00a2\u0006\u000e\u0012\u0005\u0008\u008b\u0001\u0010e\u001a\u0005\u0008\u008a\u0001\u0010]R\u0019\u0010\u008f\u0001\u001a\u00020@8B@\u0002X\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u008d\u0001\u0010\u008e\u0001R\u001f\u0010\u0092\u0001\u001a\u00020\u001c8F@\u0007X\u0087\u0004\u00a2\u0006\u000e\u0012\u0005\u0008\u0091\u0001\u0010e\u001a\u0005\u0008\u0090\u0001\u0010zR\u001f\u0010\u0095\u0001\u001a\u00020\u00178@@\u0001X\u0081\u0004\u00a2\u0006\u000e\u0012\u0005\u0008\u0094\u0001\u0010e\u001a\u0005\u0008\u0093\u0001\u0010]R\u001f\u0010\u0098\u0001\u001a\u00020\u000f8F@\u0007X\u0087\u0004\u00a2\u0006\u000e\u0012\u0005\u0008\u0097\u0001\u0010e\u001a\u0005\u0008\u0096\u0001\u0010\tR\u001f\u0010\u009b\u0001\u001a\u00020\u000f8F@\u0007X\u0087\u0004\u00a2\u0006\u000e\u0012\u0005\u0008\u009a\u0001\u0010e\u001a\u0005\u0008\u0099\u0001\u0010\tR\u001f\u0010\u009e\u0001\u001a\u00020\u001c8F@\u0007X\u0087\u0004\u00a2\u0006\u000e\u0012\u0005\u0008\u009d\u0001\u0010e\u001a\u0005\u0008\u009c\u0001\u0010zR\u001f\u0010\u00a1\u0001\u001a\u00020\u000f8F@\u0007X\u0087\u0004\u00a2\u0006\u000e\u0012\u0005\u0008\u00a0\u0001\u0010e\u001a\u0005\u0008\u009f\u0001\u0010\tR\u001f\u0010\u00a4\u0001\u001a\u00020\u001c8F@\u0007X\u0087\u0004\u00a2\u0006\u000e\u0012\u0005\u0008\u00a3\u0001\u0010e\u001a\u0005\u0008\u00a2\u0001\u0010z\u00f8\u0001\u0000\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0002\u0008!\n\u0005\u0008\u009920\u0001\u00a8\u0006\u00a7\u0001"
    }
    d2 = {
        "Lkotlin/time/Duration;",
        "",
        "",
        "isInNanos-impl",
        "(J)Z",
        "isInNanos",
        "isInMillis-impl",
        "isInMillis",
        "unaryMinus-UwyO8pc",
        "(J)J",
        "unaryMinus",
        "other",
        "plus-LRDsOJo",
        "(JJ)J",
        "plus",
        "",
        "thisMillis",
        "otherNanos",
        "addValuesMixedRanges-UwyO8pc",
        "(JJJ)J",
        "addValuesMixedRanges",
        "minus-LRDsOJo",
        "minus",
        "",
        "scale",
        "times-UwyO8pc",
        "(JI)J",
        "times",
        "",
        "(JD)J",
        "div-UwyO8pc",
        "div",
        "div-LRDsOJo",
        "(JJ)D",
        "isNegative-impl",
        "isNegative",
        "isPositive-impl",
        "isPositive",
        "isInfinite-impl",
        "isInfinite",
        "isFinite-impl",
        "isFinite",
        "compareTo-LRDsOJo",
        "(JJ)I",
        "compareTo",
        "T",
        "Lkotlin/Function5;",
        "Lkotlin/ParameterName;",
        "name",
        "days",
        "hours",
        "minutes",
        "seconds",
        "nanoseconds",
        "action",
        "toComponents-impl",
        "(JLkotlin/jvm/functions/Function5;)Ljava/lang/Object;",
        "toComponents",
        "Lkotlin/Function4;",
        "(JLkotlin/jvm/functions/Function4;)Ljava/lang/Object;",
        "Lkotlin/Function3;",
        "(JLkotlin/jvm/functions/Function3;)Ljava/lang/Object;",
        "Lkotlin/Function2;",
        "(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "Ljava/util/concurrent/TimeUnit;",
        "Lkotlin/time/DurationUnit;",
        "unit",
        "toDouble-impl",
        "(JLjava/util/concurrent/TimeUnit;)D",
        "toDouble",
        "toLong-impl",
        "(JLjava/util/concurrent/TimeUnit;)J",
        "toLong",
        "toInt-impl",
        "(JLjava/util/concurrent/TimeUnit;)I",
        "toInt",
        "toLongNanoseconds-impl",
        "toLongNanoseconds",
        "toLongMilliseconds-impl",
        "toLongMilliseconds",
        "",
        "toString-impl",
        "(J)Ljava/lang/String;",
        "toString",
        "value",
        "precision-impl",
        "(JD)I",
        "precision",
        "decimals",
        "(JLjava/util/concurrent/TimeUnit;I)Ljava/lang/String;",
        "toIsoString-impl",
        "toIsoString",
        "hashCode-impl",
        "(J)I",
        "hashCode",
        "",
        "equals-impl",
        "(JLjava/lang/Object;)Z",
        "equals",
        "getSecondsComponent-impl",
        "getSecondsComponent$annotations",
        "()V",
        "secondsComponent",
        "getInWholeMicroseconds-impl",
        "getInWholeMicroseconds$annotations",
        "inWholeMicroseconds",
        "getUnitDiscriminator-impl",
        "unitDiscriminator",
        "getInWholeDays-impl",
        "getInWholeDays$annotations",
        "inWholeDays",
        "getInWholeHours-impl",
        "getInWholeHours$annotations",
        "inWholeHours",
        "getAbsoluteValue-UwyO8pc",
        "absoluteValue",
        "getInWholeMilliseconds-impl",
        "getInWholeMilliseconds$annotations",
        "inWholeMilliseconds",
        "rawValue",
        "J",
        "getInMicroseconds-impl",
        "(J)D",
        "getInMicroseconds$annotations",
        "inMicroseconds",
        "getInDays-impl",
        "getInDays$annotations",
        "inDays",
        "getInSeconds-impl",
        "getInSeconds$annotations",
        "inSeconds",
        "getInMilliseconds-impl",
        "getInMilliseconds$annotations",
        "inMilliseconds",
        "getNanosecondsComponent-impl",
        "getNanosecondsComponent$annotations",
        "nanosecondsComponent",
        "getValue-impl",
        "getHoursComponent-impl",
        "getHoursComponent$annotations",
        "hoursComponent",
        "getStorageUnit-impl",
        "(J)Ljava/util/concurrent/TimeUnit;",
        "storageUnit",
        "getInMinutes-impl",
        "getInMinutes$annotations",
        "inMinutes",
        "getMinutesComponent-impl",
        "getMinutesComponent$annotations",
        "minutesComponent",
        "getInWholeNanoseconds-impl",
        "getInWholeNanoseconds$annotations",
        "inWholeNanoseconds",
        "getInWholeSeconds-impl",
        "getInWholeSeconds$annotations",
        "inWholeSeconds",
        "getInHours-impl",
        "getInHours$annotations",
        "inHours",
        "getInWholeMinutes-impl",
        "getInWholeMinutes$annotations",
        "inWholeMinutes",
        "getInNanoseconds-impl",
        "getInNanoseconds$annotations",
        "inNanoseconds",
        "constructor-impl",
        "Companion",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "1.3"
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation

.annotation build Lkotlin/time/ExperimentalTime;
.end annotation


# static fields
.field public static final Companion:Lkotlin/time/Duration$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final INFINITE:J

.field private static final NEG_INFINITE:J

.field private static final ZERO:J


# instance fields
.field private final rawValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/time/Duration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/time/Duration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {v0, v1}, Lkotlin/time/Duration;->constructor-impl(J)J

    move-result-wide v0

    sput-wide v0, Lkotlin/time/Duration;->ZERO:J

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 2
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    move-result-wide v0

    sput-wide v0, Lkotlin/time/Duration;->INFINITE:J

    const-wide v0, -0x3fffffffffffffffL    # -2.0000000000000004

    .line 3
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    move-result-wide v0

    sput-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    return-void
.end method

.method private synthetic constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlin/time/Duration;->rawValue:J

    return-void
.end method

.method public static final synthetic access$getINFINITE$cp-UwyO8pc()J
    .locals 2

    .line 1
    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    return-wide v0
.end method

.method public static final synthetic access$getNEG_INFINITE$cp-UwyO8pc()J
    .locals 2

    .line 1
    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    return-wide v0
.end method

.method public static final synthetic access$getZERO$cp-UwyO8pc()J
    .locals 2

    .line 1
    sget-wide v0, Lkotlin/time/Duration;->ZERO:J

    return-wide v0
.end method

.method private static final addValuesMixedRanges-UwyO8pc(JJJ)J
    .locals 6

    .line 1
    invoke-static {p4, p5}, Lkotlin/time/DurationKt;->access$nanosToMillis(J)J

    move-result-wide p0

    add-long v0, p2, p0

    const-wide p2, -0x431bde82d7aL

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide p2, 0x431bde82d7aL

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    .line 2
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide p0

    sub-long/2addr p4, p0

    .line 3
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide p0

    add-long/2addr p0, p4

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->access$durationOfNanos(J)J

    move-result-wide p0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide v2, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v4, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 4
    invoke-static/range {v0 .. v5}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    move-result-wide p0

    :goto_1
    return-wide p0
.end method

.method public static final synthetic box-impl(J)Lkotlin/time/Duration;
    .locals 1

    new-instance v0, Lkotlin/time/Duration;

    invoke-direct {v0, p0, p1}, Lkotlin/time/Duration;-><init>(J)V

    return-object v0
.end method

.method public static compareTo-LRDsOJo(JJ)I
    .locals 5

    xor-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    long-to-int v1, v0

    and-int/lit8 v0, v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    long-to-int v0, p0

    and-int/lit8 v0, v0, 0x1

    long-to-int p3, p2

    and-int/lit8 p2, p3, 0x1

    sub-int/2addr v0, p2

    .line 2
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isNegative-impl(J)Z

    move-result p0

    if-eqz p0, :cond_1

    neg-int v0, v0

    :cond_1
    return v0

    :cond_2
    :goto_0
    cmp-long v0, p0, p2

    return v0
.end method

.method public static constructor-impl(J)J
    .locals 7

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInNanos-impl(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide v0, 0x3ffffffffffa14bfL    # 1.9999999999138678

    const-wide v2, -0x3ffffffffffa14bfL    # -2.0000000001722644

    .line 2
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    cmp-long v2, v0, v4

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ns is out of nanoseconds range"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    const-wide v2, -0x3fffffffffffffffL    # -2.0000000000000004

    .line 3
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_4

    cmp-long v2, v0, v4

    if-ltz v2, :cond_4

    const-wide v0, 0x431bde82d7aL

    const-wide v2, -0x431bde82d7aL

    .line 4
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    goto :goto_0

    :cond_2
    cmp-long v2, v0, v4

    if-gez v2, :cond_3

    :goto_0
    return-wide p0

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms is denormalized"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 5
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms is out of milliseconds range"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static final div-LRDsOJo(JJ)D
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getStorageUnit-impl(J)Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    invoke-static {p2, p3}, Lkotlin/time/Duration;->getStorageUnit-impl(J)Ljava/util/concurrent/TimeUnit;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/comparisons/ComparisonsKt;->maxOf(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide p0

    invoke-static {p2, p3, v0}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide p2

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public static final div-UwyO8pc(JD)J
    .locals 4

    .line 12
    invoke-static {p2, p3}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v0

    int-to-double v1, v0

    cmpg-double v3, v1, p2

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 13
    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->div-UwyO8pc(JI)J

    move-result-wide p0

    return-wide p0

    .line 14
    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getStorageUnit-impl(J)Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    .line 15
    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide p0

    div-double/2addr p0, p2

    .line 16
    invoke-static {p0, p1, v0}, Lkotlin/time/DurationKt;->toDuration(DLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final div-UwyO8pc(JI)J
    .locals 8

    if-nez p2, :cond_2

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isPositive-impl(J)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-wide p0, Lkotlin/time/Duration;->INFINITE:J

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isNegative-impl(J)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-wide p0, Lkotlin/time/Duration;->NEG_INFINITE:J

    :goto_0
    return-wide p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Dividing zero duration by zero yields an undefined result."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_2
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInNanos-impl(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide p0

    int-to-long v0, p2

    div-long/2addr p0, v0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->access$durationOfNanos(J)J

    move-result-wide p0

    return-wide p0

    .line 6
    :cond_3
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    invoke-static {p2}, Lkotlin/math/MathKt;->getSign(I)I

    move-result p2

    invoke-static {p0, p1, p2}, Lkotlin/time/Duration;->times-UwyO8pc(JI)J

    move-result-wide p0

    return-wide p0

    .line 8
    :cond_4
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    int-to-long v2, p2

    div-long/2addr v0, v2

    const-wide v4, 0x431bde82d7aL

    const-wide v6, -0x431bde82d7aL

    cmp-long p2, v6, v0

    if-lez p2, :cond_5

    goto :goto_1

    :cond_5
    cmp-long p2, v4, v0

    if-ltz p2, :cond_6

    .line 9
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide p0

    mul-long v4, v0, v2

    sub-long/2addr p0, v4

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide p0

    div-long/2addr p0, v2

    .line 10
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide v0

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfNanos(J)J

    move-result-wide p0

    return-wide p0

    .line 11
    :cond_6
    :goto_1
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static equals-impl(JLjava/lang/Object;)Z
    .locals 2

    instance-of v0, p2, Lkotlin/time/Duration;

    if-eqz v0, :cond_0

    check-cast p2, Lkotlin/time/Duration;

    invoke-virtual {p2}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v0

    cmp-long p2, p0, v0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final equals-impl0(JJ)Z
    .locals 1

    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final getAbsoluteValue-UwyO8pc(J)J
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isNegative-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    move-result-wide p0

    :cond_0
    return-wide p0
.end method

.method public static synthetic getHoursComponent$annotations()V
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    return-void
.end method

.method public static final getHoursComponent-impl(J)I
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeHours-impl(J)J

    move-result-wide p0

    const/16 v0, 0x18

    int-to-long v0, v0

    rem-long/2addr p0, v0

    long-to-int p0, p0

    :goto_0
    return p0
.end method

.method public static synthetic getInDays$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use inWholeDays property instead or convert toDouble(DAYS) if a double value is required."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "toDouble(DurationUnit.DAYS)"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getInDays-impl(J)D
    .locals 1

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic getInHours$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use inWholeHours property instead or convert toDouble(HOURS) if a double value is required."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "toDouble(DurationUnit.HOURS)"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getInHours-impl(J)D
    .locals 1

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic getInMicroseconds$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use inWholeMicroseconds property instead or convert toDouble(MICROSECONDS) if a double value is required."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "toDouble(DurationUnit.MICROSECONDS)"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getInMicroseconds-impl(J)D
    .locals 1

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic getInMilliseconds$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use inWholeMilliseconds property instead or convert toDouble(MILLISECONDS) if a double value is required."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "toDouble(DurationUnit.MILLISECONDS)"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getInMilliseconds-impl(J)D
    .locals 1

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic getInMinutes$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use inWholeMinutes property instead or convert toDouble(MINUTES) if a double value is required."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "toDouble(DurationUnit.MINUTES)"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getInMinutes-impl(J)D
    .locals 1

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic getInNanoseconds$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use inWholeNanoseconds property instead or convert toDouble(NANOSECONDS) if a double value is required."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "toDouble(DurationUnit.NANOSECONDS)"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getInNanoseconds-impl(J)D
    .locals 1

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic getInSeconds$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use inWholeSeconds property instead or convert toDouble(SECONDS) if a double value is required."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "toDouble(DurationUnit.SECONDS)"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getInSeconds-impl(J)D
    .locals 1

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic getInWholeDays$annotations()V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    return-void
.end method

.method public static final getInWholeDays-impl(J)J
    .locals 1

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic getInWholeHours$annotations()V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    return-void
.end method

.method public static final getInWholeHours-impl(J)J
    .locals 1

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic getInWholeMicroseconds$annotations()V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    return-void
.end method

.method public static final getInWholeMicroseconds-impl(J)J
    .locals 1

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic getInWholeMilliseconds$annotations()V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    return-void
.end method

.method public static final getInWholeMilliseconds-impl(J)J
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInMillis-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->isFinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static synthetic getInWholeMinutes$annotations()V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    return-void
.end method

.method public static final getInWholeMinutes-impl(J)J
    .locals 1

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic getInWholeNanoseconds$annotations()V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    return-void
.end method

.method public static final getInWholeNanoseconds-impl(J)J
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    .line 2
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInNanos-impl(J)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide p0, 0x8637bd05af6L

    cmp-long v2, v0, p0

    if-lez v2, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    const-wide p0, -0x8637bd05af6L

    cmp-long v2, v0, p0

    if-gez v2, :cond_2

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    .line 3
    :cond_2
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static synthetic getInWholeSeconds$annotations()V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    return-void
.end method

.method public static final getInWholeSeconds-impl(J)J
    .locals 1

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic getMinutesComponent$annotations()V
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    return-void
.end method

.method public static final getMinutesComponent-impl(J)I
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeMinutes-impl(J)J

    move-result-wide p0

    const/16 v0, 0x3c

    int-to-long v0, v0

    rem-long/2addr p0, v0

    long-to-int p0, p0

    :goto_0
    return p0
.end method

.method public static synthetic getNanosecondsComponent$annotations()V
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    return-void
.end method

.method public static final getNanosecondsComponent-impl(J)I
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInMillis-impl(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide p0

    const/16 v0, 0x3e8

    int-to-long v0, v0

    rem-long/2addr p0, v0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide p0

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide p0

    const v0, 0x3b9aca00

    int-to-long v0, v0

    rem-long/2addr p0, v0

    :goto_0
    long-to-int p0, p0

    :goto_1
    return p0
.end method

.method public static synthetic getSecondsComponent$annotations()V
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    return-void
.end method

.method public static final getSecondsComponent-impl(J)I
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    move-result-wide p0

    const/16 v0, 0x3c

    int-to-long v0, v0

    rem-long/2addr p0, v0

    long-to-int p0, p0

    :goto_0
    return p0
.end method

.method private static final getStorageUnit-impl(J)Ljava/util/concurrent/TimeUnit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInNanos-impl(J)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_0
    return-object p0
.end method

.method private static final getUnitDiscriminator-impl(J)I
    .locals 0

    long-to-int p1, p0

    and-int/lit8 p0, p1, 0x1

    return p0
.end method

.method private static final getValue-impl(J)J
    .locals 1

    const/4 v0, 0x1

    shr-long/2addr p0, v0

    return-wide p0
.end method

.method public static hashCode-impl(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static final isFinite-impl(J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static final isInMillis-impl(J)Z
    .locals 0

    long-to-int p1, p0

    const/4 p0, 0x1

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final isInNanos-impl(J)Z
    .locals 0

    long-to-int p1, p0

    const/4 p0, 0x1

    and-int/2addr p1, p0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isInfinite-impl(J)Z
    .locals 3

    .line 1
    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v2, p0, v0

    if-eqz v2, :cond_1

    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final isNegative-impl(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isPositive-impl(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final minus-LRDsOJo(JJ)J
    .locals 0

    .line 1
    invoke-static {p2, p3}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final plus-LRDsOJo(JJ)J
    .locals 7

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {p2, p3}, Lkotlin/time/Duration;->isFinite-impl(J)Z

    move-result v0

    if-nez v0, :cond_1

    xor-long/2addr p2, p0

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Summing infinite durations of different signs yields an undefined result."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-wide p0

    .line 4
    :cond_2
    invoke-static {p2, p3}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_3

    return-wide p2

    :cond_3
    long-to-int v0, p0

    and-int/lit8 v0, v0, 0x1

    long-to-int v1, p2

    and-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_5

    .line 5
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    invoke-static {p2, p3}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide p2

    add-long/2addr v0, p2

    .line 6
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInNanos-impl(J)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 7
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfNanosNormalized(J)J

    move-result-wide p0

    goto :goto_1

    .line 8
    :cond_4
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfMillisNormalized(J)J

    move-result-wide p0

    goto :goto_1

    .line 9
    :cond_5
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInMillis-impl(J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v3

    invoke-static {p2, p3}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v5

    move-wide v1, p0

    invoke-static/range {v1 .. v6}, Lkotlin/time/Duration;->addValuesMixedRanges-UwyO8pc(JJJ)J

    move-result-wide p0

    goto :goto_1

    .line 11
    :cond_6
    invoke-static {p2, p3}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v2

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v4

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Lkotlin/time/Duration;->addValuesMixedRanges-UwyO8pc(JJJ)J

    move-result-wide p0

    :goto_1
    return-wide p0
.end method

.method private static final precision-impl(JD)I
    .locals 2

    const/4 p0, 0x1

    int-to-double v0, p0

    cmpg-double p1, p2, v0

    if-gez p1, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    int-to-double v0, p1

    cmpg-double p1, p2, v0

    if-gez p1, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/16 p1, 0x64

    int-to-double v0, p1

    cmpg-double p1, p2, v0

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final times-UwyO8pc(JD)J
    .locals 4

    .line 19
    invoke-static {p2, p3}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v0

    int-to-double v1, v0

    cmpg-double v3, v1, p2

    if-nez v3, :cond_0

    .line 20
    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->times-UwyO8pc(JI)J

    move-result-wide p0

    return-wide p0

    .line 21
    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getStorageUnit-impl(J)Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    .line 22
    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide p0

    mul-double p0, p0, p2

    .line 23
    invoke-static {p0, p1, v0}, Lkotlin/time/DurationKt;->toDuration(DLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final times-UwyO8pc(JI)J
    .locals 13

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    if-lez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    move-result-wide p0

    :goto_0
    return-wide p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Multiplying infinite duration by zero yields an undefined result."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-nez p2, :cond_3

    .line 4
    sget-wide p0, Lkotlin/time/Duration;->ZERO:J

    return-wide p0

    .line 5
    :cond_3
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    int-to-long v2, p2

    mul-long v4, v0, v2

    .line 6
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInNanos-impl(J)Z

    move-result p0

    const-wide v6, 0x3fffffffffffffffL    # 1.9999999999999998

    const-wide v8, -0x3fffffffffffffffL    # -2.0000000000000004

    if-eqz p0, :cond_9

    const-wide/32 p0, 0x7fffffff

    const-wide/32 v10, -0x7fffffff

    cmp-long v12, v10, v0

    if-lez v12, :cond_4

    goto :goto_1

    :cond_4
    cmp-long v10, p0, v0

    if-ltz v10, :cond_5

    .line 7
    invoke-static {v4, v5}, Lkotlin/time/DurationKt;->access$durationOfNanos(J)J

    move-result-wide p0

    goto/16 :goto_2

    .line 8
    :cond_5
    :goto_1
    div-long p0, v4, v2

    cmp-long v10, p0, v0

    if-nez v10, :cond_6

    .line 9
    invoke-static {v4, v5}, Lkotlin/time/DurationKt;->access$durationOfNanosNormalized(J)J

    move-result-wide p0

    goto :goto_2

    .line 10
    :cond_6
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$nanosToMillis(J)J

    move-result-wide p0

    .line 11
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide v4

    sub-long v4, v0, v4

    mul-long v10, p0, v2

    mul-long v4, v4, v2

    .line 12
    invoke-static {v4, v5}, Lkotlin/time/DurationKt;->access$nanosToMillis(J)J

    move-result-wide v4

    add-long/2addr v4, v10

    .line 13
    div-long v2, v10, v2

    cmp-long v12, v2, p0

    if-nez v12, :cond_7

    xor-long p0, v4, v10

    const-wide/16 v2, 0x0

    cmp-long v10, p0, v2

    if-ltz v10, :cond_7

    .line 14
    new-instance p0, Lkotlin/ranges/LongRange;

    invoke-direct {p0, v8, v9, v6, v7}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    invoke-static {v4, v5, p0}, Lkotlin/ranges/RangesKt;->coerceIn(JLkotlin/ranges/ClosedRange;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    move-result-wide p0

    goto :goto_2

    .line 15
    :cond_7
    invoke-static {v0, v1}, Lkotlin/math/MathKt;->getSign(J)I

    move-result p0

    invoke-static {p2}, Lkotlin/math/MathKt;->getSign(I)I

    move-result p1

    mul-int p0, p0, p1

    if-lez p0, :cond_8

    sget-wide p0, Lkotlin/time/Duration;->INFINITE:J

    goto :goto_2

    :cond_8
    sget-wide p0, Lkotlin/time/Duration;->NEG_INFINITE:J

    goto :goto_2

    .line 16
    :cond_9
    div-long p0, v4, v2

    cmp-long v2, p0, v0

    if-nez v2, :cond_a

    .line 17
    new-instance p0, Lkotlin/ranges/LongRange;

    invoke-direct {p0, v8, v9, v6, v7}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    invoke-static {v4, v5, p0}, Lkotlin/ranges/RangesKt;->coerceIn(JLkotlin/ranges/ClosedRange;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    move-result-wide p0

    goto :goto_2

    .line 18
    :cond_a
    invoke-static {v0, v1}, Lkotlin/math/MathKt;->getSign(J)I

    move-result p0

    invoke-static {p2}, Lkotlin/math/MathKt;->getSign(I)I

    move-result p1

    mul-int p0, p0, p1

    if-lez p0, :cond_b

    sget-wide p0, Lkotlin/time/Duration;->INFINITE:J

    goto :goto_2

    :cond_b
    sget-wide p0, Lkotlin/time/Duration;->NEG_INFINITE:J

    :goto_2
    return-wide p0
.end method

.method public static final toComponents-impl(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 2
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final toComponents-impl(JLkotlin/jvm/functions/Function3;)Ljava/lang/Object;
    .locals 2
    .param p2    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toInt-impl(JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getSecondsComponent-impl(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, v0, v1, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final toComponents-impl(JLkotlin/jvm/functions/Function4;)Ljava/lang/Object;
    .locals 3
    .param p2    # Lkotlin/jvm/functions/Function4;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toInt-impl(JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getMinutesComponent-impl(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getSecondsComponent-impl(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, v0, v1, v2, p0}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final toComponents-impl(JLkotlin/jvm/functions/Function5;)Ljava/lang/Object;
    .locals 7
    .param p2    # Lkotlin/jvm/functions/Function5;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toInt-impl(JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getHoursComponent-impl(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getMinutesComponent-impl(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getSecondsComponent-impl(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, p2

    invoke-interface/range {v1 .. v6}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final toDouble-impl(JLjava/util/concurrent/TimeUnit;)D
    .locals 3
    .param p2    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 2
    :cond_0
    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long v2, p0, v0

    if-nez v2, :cond_1

    const-wide/high16 p0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getStorageUnit-impl(J)Ljava/util/concurrent/TimeUnit;

    move-result-object p0

    invoke-static {v0, v1, p0, p2}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnit(DLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final toInt-impl(JLjava/util/concurrent/TimeUnit;)I
    .locals 7
    .param p2    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2}, Lkotlin/time/Duration;->toLong-impl(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    const/high16 p0, -0x80000000

    int-to-long v3, p0

    const p0, 0x7fffffff

    int-to-long v5, p0

    invoke-static/range {v1 .. v6}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

.method public static final toIsoString-impl(J)Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isNegative-impl(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "PT"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getAbsoluteValue-UwyO8pc(J)J

    move-result-wide p0

    .line 5
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v1}, Lkotlin/time/Duration;->toInt-impl(JLjava/util/concurrent/TimeUnit;)I

    move-result v1

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getMinutesComponent-impl(J)I

    move-result v2

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getSecondsComponent-impl(J)I

    move-result v3

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result p0

    const/4 p1, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-nez v3, :cond_3

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v6, 0x1

    :goto_2
    if-nez v2, :cond_5

    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :cond_5
    :goto_3
    if-eqz v5, :cond_6

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    if-eqz p1, :cond_7

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    if-nez v6, :cond_8

    if-nez v5, :cond_c

    if-nez p1, :cond_c

    .line 8
    :cond_8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_b

    const/16 p1, 0x2e

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x9

    const/16 v2, 0x30

    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p1

    const v1, 0xf4240

    .line 11
    rem-int v1, p0, v1

    const-string v2, "this.append(value, startIndex, endIndex)"

    if-nez v1, :cond_9

    const/4 p0, 0x3

    invoke-virtual {v0, p1, v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 12
    :cond_9
    rem-int/lit16 p0, p0, 0x3e8

    if-nez p0, :cond_a

    const/4 p0, 0x6

    invoke-virtual {v0, p1, v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 13
    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    :goto_4
    const/16 p0, 0x53

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toLong-impl(JLjava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p2    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-wide p0, 0x7fffffffffffffffL

    goto :goto_0

    .line 2
    :cond_0
    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long v2, p0, v0

    if-nez v2, :cond_1

    const-wide/high16 p0, -0x8000000000000000L

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getStorageUnit-impl(J)Ljava/util/concurrent/TimeUnit;

    move-result-object p0

    invoke-static {v0, v1, p0, p2}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnit(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final toLongMilliseconds-impl(J)J
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use inWholeMilliseconds property instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this.inWholeMilliseconds"
            imports = {}
        .end subannotation
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final toLongNanoseconds-impl(J)J
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use inWholeNanoseconds property instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this.inWholeNanoseconds"
            imports = {}
        .end subannotation
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeNanoseconds-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static toString-impl(J)Ljava/lang/String;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-string p0, "0s"

    goto/16 :goto_4

    .line 1
    :cond_0
    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v2, p0, v0

    if-nez v2, :cond_1

    const-string p0, "Infinity"

    goto/16 :goto_4

    .line 2
    :cond_1
    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long v2, p0, v0

    if-nez v2, :cond_2

    const-string p0, "-Infinity"

    goto/16 :goto_4

    .line 3
    :cond_2
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getAbsoluteValue-UwyO8pc(J)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    const-wide v3, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const/4 v5, 0x0

    const/4 v6, 0x1

    cmpg-double v7, v0, v3

    if-gez v7, :cond_3

    .line 4
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_0
    const/4 v0, 0x0

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    int-to-double v3, v6

    cmpg-double v7, v0, v3

    if-gez v7, :cond_4

    const/4 v0, 0x7

    goto :goto_2

    :cond_4
    const-wide v3, 0x408f400000000000L    # 1000.0

    cmpg-double v7, v0, v3

    if-gez v7, :cond_5

    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    const-wide v2, 0x412e848000000000L    # 1000000.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_6

    .line 5
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_1

    :cond_6
    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    cmpg-double v4, v0, v2

    if-gez v4, :cond_7

    .line 6
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_1

    :cond_7
    const-wide v2, 0x426d1a94a2000000L    # 1.0E12

    cmpg-double v4, v0, v2

    if-gez v4, :cond_8

    .line 7
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_1

    :cond_8
    const-wide v2, 0x42cb48eb57e00000L    # 6.0E13

    cmpg-double v4, v0, v2

    if-gez v4, :cond_9

    .line 8
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    goto :goto_1

    :cond_9
    const-wide v2, 0x4329945ca2620000L    # 3.6E15

    cmpg-double v4, v0, v2

    if-gez v4, :cond_a

    .line 9
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    goto :goto_1

    :cond_a
    const-wide v2, 0x44476b344f2a78c0L    # 8.64E20

    cmpg-double v4, v0, v2

    if-gez v4, :cond_b

    .line 10
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    goto :goto_1

    .line 11
    :cond_b
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    .line 12
    :goto_2
    invoke-static {p0, p1, v2}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide v3

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v5, :cond_c

    .line 14
    invoke-static {v3, v4}, Lkotlin/time/FormatToDecimalsKt;->formatScientific(D)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_c
    if-lez v0, :cond_d

    .line 15
    invoke-static {v3, v4, v0}, Lkotlin/time/FormatToDecimalsKt;->formatUpToDecimals(DI)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 16
    :cond_d
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-static {p0, p1, v5, v6}, Lkotlin/time/Duration;->precision-impl(JD)I

    move-result p0

    invoke-static {v3, v4, p0}, Lkotlin/time/FormatToDecimalsKt;->formatToExactDecimals(DI)Ljava/lang/String;

    move-result-object p0

    .line 17
    :goto_3
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-static {v2}, Lkotlin/time/DurationUnitKt__DurationUnitKt;->shortName(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_4
    return-object p0
.end method

.method public static final toString-impl(JLjava/util/concurrent/TimeUnit;I)Ljava/lang/String;
    .locals 6
    .param p2    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 19
    invoke-static {p0, p1, p2}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide p0

    .line 20
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x42d6bcc41e900000L    # 1.0E14

    cmpg-double v5, v1, v3

    if-gez v5, :cond_2

    const/16 v1, 0xc

    invoke-static {p3, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p3

    invoke-static {p0, p1, p3}, Lkotlin/time/FormatToDecimalsKt;->formatToExactDecimals(DI)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 23
    :cond_2
    invoke-static {p0, p1}, Lkotlin/time/FormatToDecimalsKt;->formatScientific(D)Ljava/lang/String;

    move-result-object p0

    .line 24
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-static {p2}, Lkotlin/time/DurationUnitKt__DurationUnitKt;->shortName(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 26
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "decimals must be not negative, but was "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic toString-impl$default(JLjava/util/concurrent/TimeUnit;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lkotlin/time/Duration;->toString-impl(JLjava/util/concurrent/TimeUnit;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unaryMinus-UwyO8pc(J)J
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    neg-long v0, v0

    long-to-int p1, p0

    and-int/lit8 p0, p1, 0x1

    invoke-static {v0, v1, p0}, Lkotlin/time/DurationKt;->access$durationOf(JI)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lkotlin/time/Duration;

    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkotlin/time/Duration;->compareTo-LRDsOJo(J)I

    move-result p1

    return p1
.end method

.method public compareTo-LRDsOJo(J)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    invoke-static {v0, v1, p1, p2}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    invoke-static {v0, v1, p1}, Lkotlin/time/Duration;->equals-impl(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    invoke-static {v0, v1}, Lkotlin/time/Duration;->hashCode-impl(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    invoke-static {v0, v1}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()J
    .locals 2

    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    return-wide v0
.end method
