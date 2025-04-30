.class public Lkotlinx/coroutines/q;
.super Lkotlinx/coroutines/d1;
.source "CancellableContinuationImpl.kt"

# interfaces
.implements Lkotlinx/coroutines/p;
.implements Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/d1<",
        "TT;>;",
        "Lkotlinx/coroutines/p<",
        "TT;>;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCancellableContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 4 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,593:1\n196#1,2:599\n198#1,8:602\n196#1,10:610\n1#2:594\n155#3,2:595\n155#3,2:597\n351#3,2:620\n351#3,2:622\n155#3,2:629\n155#3,2:631\n155#3,2:633\n22#4:601\n13#4:628\n57#5,2:624\n57#5,2:626\n57#5,2:635\n*S KotlinDebug\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n*L\n212#1:599,2\n212#1:602,8\n215#1:610,10\n141#1:595,2\n174#1:597,2\n236#1:620,2\n246#1:622,2\n335#1:629,2\n425#1:631,2\n460#1:633,2\n212#1:601\n310#1:628\n289#1:624,2\n299#1:626,2\n536#1:635,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00b8\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0001\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0011\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u00060\u0004j\u0002`\u0005B \u0012\r\u0010\u0081\u0001\u001a\u0008\u0012\u0004\u0012\u00028\u00000~\u0012\u0006\u0010-\u001a\u00020\'\u00a2\u0006\u0006\u0008\u0086\u0001\u0010\u0087\u0001J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001e\u0010\u0010\u001a\u00020\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0082\u0008\u00a2\u0006\u0004\u0008\u0010\u0010\u0011JB\u0010\u0017\u001a\u00020\u000e2\'\u0010\u0016\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\t\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u000e0\u0012j\u0002`\u00152\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0008J\u000f\u0010\u001a\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0008J\u0011\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJB\u0010\"\u001a\u00020\u000e2\'\u0010\u0016\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\t\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u000e0\u0012j\u0002`\u00152\u0008\u0010!\u001a\u0004\u0018\u00010 H\u0002\u00a2\u0006\u0004\u0008\"\u0010#J8\u0010%\u001a\u00020$2\'\u0010\u0016\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\t\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u000e0\u0012j\u0002`\u0015H\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u0017\u0010)\u001a\u00020\u000e2\u0006\u0010(\u001a\u00020\'H\u0002\u00a2\u0006\u0004\u0008)\u0010*JZ\u00100\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020+2\u0008\u0010,\u001a\u0004\u0018\u00010 2\u0006\u0010-\u001a\u00020\'2#\u0010.\u001a\u001f\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00122\u0008\u0010/\u001a\u0004\u0018\u00010 H\u0002\u00a2\u0006\u0004\u00080\u00101JH\u00102\u001a\u00020\u000e2\u0008\u0010,\u001a\u0004\u0018\u00010 2\u0006\u0010-\u001a\u00020\'2%\u0008\u0002\u0010.\u001a\u001f\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0012H\u0002\u00a2\u0006\u0004\u00082\u00103JJ\u00105\u001a\u0004\u0018\u0001042\u0008\u0010,\u001a\u0004\u0018\u00010 2\u0008\u0010/\u001a\u0004\u0018\u00010 2#\u0010.\u001a\u001f\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0012H\u0002\u00a2\u0006\u0004\u00085\u00106J\u0019\u00108\u001a\u0002072\u0008\u0010,\u001a\u0004\u0018\u00010 H\u0002\u00a2\u0006\u0004\u00088\u00109J\u000f\u0010:\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008:\u0010\u001fJ\u000f\u0010;\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008;\u0010\u001fJ\u000f\u0010<\u001a\u00020\u0006H\u0001\u00a2\u0006\u0004\u0008<\u0010\u0008J\u0017\u0010?\u001a\n\u0018\u00010=j\u0004\u0018\u0001`>H\u0016\u00a2\u0006\u0004\u0008?\u0010@J\u0011\u0010A\u001a\u0004\u0018\u00010 H\u0010\u00a2\u0006\u0004\u0008A\u0010BJ!\u0010D\u001a\u00020\u000e2\u0008\u0010C\u001a\u0004\u0018\u00010 2\u0006\u0010\n\u001a\u00020\tH\u0010\u00a2\u0006\u0004\u0008D\u0010EJ\u0019\u0010F\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008F\u0010\u000cJ\u0017\u0010G\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\tH\u0000\u00a2\u0006\u0004\u0008G\u0010HJ\u001f\u0010I\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020$2\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008I\u0010JJ8\u0010K\u001a\u00020\u000e2!\u0010.\u001a\u001d\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u000e0\u00122\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008K\u0010\u0018J\u0017\u0010N\u001a\u00020\t2\u0006\u0010M\u001a\u00020LH\u0016\u00a2\u0006\u0004\u0008N\u0010OJ\u0011\u0010P\u001a\u0004\u0018\u00010 H\u0001\u00a2\u0006\u0004\u0008P\u0010BJ \u0010S\u001a\u00020\u000e2\u000c\u0010R\u001a\u0008\u0012\u0004\u0012\u00028\u00000QH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008S\u0010TJ<\u0010V\u001a\u00020\u000e2\u0006\u0010U\u001a\u00028\u00002#\u0010.\u001a\u001f\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u0008V\u0010WJ8\u0010X\u001a\u00020\u000e2\'\u0010\u0016\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\t\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u000e0\u0012j\u0002`\u0015H\u0016\u00a2\u0006\u0004\u0008X\u0010YJ\u000f\u0010Z\u001a\u00020\u000eH\u0000\u00a2\u0006\u0004\u0008Z\u0010\u001fJ#\u0010[\u001a\u0004\u0018\u00010 2\u0006\u0010U\u001a\u00028\u00002\u0008\u0010/\u001a\u0004\u0018\u00010 H\u0016\u00a2\u0006\u0004\u0008[\u0010\\JH\u0010]\u001a\u0004\u0018\u00010 2\u0006\u0010U\u001a\u00028\u00002\u0008\u0010/\u001a\u0004\u0018\u00010 2#\u0010.\u001a\u001f\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u0008]\u0010^J\u0019\u0010`\u001a\u0004\u0018\u00010 2\u0006\u0010_\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008`\u0010aJ\u0017\u0010c\u001a\u00020\u000e2\u0006\u0010b\u001a\u00020 H\u0016\u00a2\u0006\u0004\u0008c\u0010TJ\u001b\u0010e\u001a\u00020\u000e*\u00020d2\u0006\u0010U\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008e\u0010fJ\u001b\u0010g\u001a\u00020\u000e*\u00020d2\u0006\u0010_\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008g\u0010hJ\u001f\u0010i\u001a\u00028\u0001\"\u0004\u0008\u0001\u0010\u00012\u0008\u0010!\u001a\u0004\u0018\u00010 H\u0010\u00a2\u0006\u0004\u0008i\u0010jJ\u001b\u0010k\u001a\u0004\u0018\u00010\t2\u0008\u0010!\u001a\u0004\u0018\u00010 H\u0010\u00a2\u0006\u0004\u0008k\u0010lJ\u000f\u0010n\u001a\u00020mH\u0016\u00a2\u0006\u0004\u0008n\u0010oJ\u000f\u0010p\u001a\u00020mH\u0014\u00a2\u0006\u0004\u0008p\u0010oR\u001e\u0010s\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00058V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008q\u0010rR\u001c\u0010y\u001a\u00020t8\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008u\u0010v\u001a\u0004\u0008w\u0010xR\u0016\u0010z\u001a\u00020\u00068V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008z\u0010\u0008R\u0016\u0010{\u001a\u00020\u00068V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008{\u0010\u0008R\u0018\u0010}\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008k\u0010|R$\u0010\u0081\u0001\u001a\u0008\u0012\u0004\u0012\u00028\u00000~8\u0000@\u0000X\u0080\u0004\u00a2\u0006\r\n\u0004\u0008D\u0010\u007f\u001a\u0005\u0008u\u0010\u0080\u0001R\u0018\u0010\u0082\u0001\u001a\u00020\u00068V@\u0016X\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0082\u0001\u0010\u0008R\u0018\u0010\u0084\u0001\u001a\u00020m8B@\u0002X\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0083\u0001\u0010oR\u0019\u0010!\u001a\u0004\u0018\u00010 8@@\u0000X\u0080\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0085\u0001\u0010B\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0088\u0001"
    }
    d2 = {
        "Lkotlinx/coroutines/q;",
        "T",
        "Lkotlinx/coroutines/d1;",
        "Lkotlinx/coroutines/p;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "Lkotlinx/coroutines/internal/CoroutineStackFrame;",
        "",
        "C",
        "()Z",
        "",
        "cause",
        "r",
        "(Ljava/lang/Throwable;)Z",
        "Lkotlin/Function0;",
        "",
        "block",
        "n",
        "(Lkotlin/jvm/functions/Function0;)V",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "Lkotlinx/coroutines/CompletionHandler;",
        "handler",
        "k",
        "(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V",
        "R",
        "P",
        "Lkotlinx/coroutines/j1;",
        "B",
        "()Lkotlinx/coroutines/j1;",
        "H",
        "()V",
        "",
        "state",
        "E",
        "(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V",
        "Lkotlinx/coroutines/n;",
        "D",
        "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/n;",
        "",
        "mode",
        "v",
        "(I)V",
        "Lkotlinx/coroutines/q2;",
        "proposedUpdate",
        "resumeMode",
        "onCancellation",
        "idempotent",
        "O",
        "(Lkotlinx/coroutines/q2;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Object;",
        "J",
        "(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V",
        "Lkotlinx/coroutines/internal/i0;",
        "Q",
        "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/i0;",
        "",
        "j",
        "(Ljava/lang/Object;)Ljava/lang/Void;",
        "u",
        "N",
        "I",
        "Ljava/lang/StackTraceElement;",
        "Lkotlinx/coroutines/internal/StackTraceElement;",
        "getStackTraceElement",
        "()Ljava/lang/StackTraceElement;",
        "i",
        "()Ljava/lang/Object;",
        "takenState",
        "d",
        "(Ljava/lang/Object;Ljava/lang/Throwable;)V",
        "a",
        "G",
        "(Ljava/lang/Throwable;)V",
        "m",
        "(Lkotlinx/coroutines/n;Ljava/lang/Throwable;)V",
        "o",
        "Lkotlinx/coroutines/c2;",
        "parent",
        "w",
        "(Lkotlinx/coroutines/c2;)Ljava/lang/Throwable;",
        "x",
        "Lkotlin/Result;",
        "result",
        "resumeWith",
        "(Ljava/lang/Object;)V",
        "value",
        "y",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
        "l",
        "(Lkotlin/jvm/functions/Function1;)V",
        "t",
        "c",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "L",
        "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "exception",
        "p",
        "(Ljava/lang/Throwable;)Ljava/lang/Object;",
        "token",
        "V",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "M",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V",
        "q",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Throwable;)V",
        "g",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "f",
        "(Ljava/lang/Object;)Ljava/lang/Throwable;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "F",
        "getCallerFrame",
        "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "callerFrame",
        "Lkotlin/coroutines/CoroutineContext;",
        "e",
        "Lkotlin/coroutines/CoroutineContext;",
        "getContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "context",
        "isActive",
        "isCancelled",
        "Lkotlinx/coroutines/j1;",
        "parentHandle",
        "Lkotlin/coroutines/Continuation;",
        "Lkotlin/coroutines/Continuation;",
        "()Lkotlin/coroutines/Continuation;",
        "delegate",
        "isCompleted",
        "A",
        "stateDebugRepresentation",
        "z",
        "<init>",
        "(Lkotlin/coroutines/Continuation;I)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation

.annotation build Lkotlin/PublishedApi;
.end annotation


# static fields
.field private static final synthetic g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final synthetic h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _decision:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic _state:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Lkotlin/coroutines/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:Lkotlinx/coroutines/j1;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/q;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/q;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v0, Lkotlinx/coroutines/q;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/q;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/Continuation;I)V
    .locals 2
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lkotlinx/coroutines/d1;-><init>(I)V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/q;->d:Lkotlin/coroutines/Continuation;

    .line 3
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_2
    :goto_1
    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/q;->e:Lkotlin/coroutines/CoroutineContext;

    .line 5
    iput v1, p0, Lkotlinx/coroutines/q;->_decision:I

    .line 6
    sget-object p1, Lkotlinx/coroutines/d;->a:Lkotlinx/coroutines/d;

    iput-object p1, p0, Lkotlinx/coroutines/q;->_state:Ljava/lang/Object;

    return-void
.end method

.method private final A()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/q;->z()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/q2;

    if-eqz v1, :cond_0

    const-string v0, "Active"

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, v0, Lkotlinx/coroutines/t;

    if-eqz v0, :cond_1

    const-string v0, "Cancelled"

    goto :goto_0

    :cond_1
    const-string v0, "Completed"

    :goto_0
    return-object v0
.end method

.method private final B()Lkotlinx/coroutines/j1;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/q;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/c2;->Q:Lkotlinx/coroutines/c2$b;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/c2;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    new-instance v4, Lkotlinx/coroutines/u;

    invoke-direct {v4, p0}, Lkotlinx/coroutines/u;-><init>(Lkotlinx/coroutines/q;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 3
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/c2$a;->f(Lkotlinx/coroutines/c2;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/j1;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lkotlinx/coroutines/q;->f:Lkotlinx/coroutines/j1;

    return-object v0
.end method

.method private final C()Z
    .locals 1

    .line 1
    iget v0, p0, Lkotlinx/coroutines/d1;->c:I

    invoke-static {v0}, Lkotlinx/coroutines/e1;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/q;->d:Lkotlin/coroutines/Continuation;

    check-cast v0, Lkotlinx/coroutines/internal/j;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/j;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final D(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/n;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/n;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/n;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/z1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/z1;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private final E(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", already has "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final H()V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/q;->d:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Lkotlinx/coroutines/internal/j;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/internal/j;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/j;->z(Lkotlinx/coroutines/p;)Ljava/lang/Throwable;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_2

    return-void

    .line 2
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/q;->t()V

    .line 3
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/q;->a(Ljava/lang/Throwable;)Z

    return-void
.end method

.method private final J(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/q;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/q2;

    if-eqz v1, :cond_1

    .line 3
    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/q2;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lkotlinx/coroutines/q;->O(Lkotlinx/coroutines/q2;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    sget-object v2, Lkotlinx/coroutines/q;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/q;->u()V

    .line 6
    invoke-direct {p0, p2}, Lkotlinx/coroutines/q;->v(I)V

    return-void

    .line 7
    :cond_1
    instance-of p2, v0, Lkotlinx/coroutines/t;

    if-eqz p2, :cond_3

    .line 8
    check-cast v0, Lkotlinx/coroutines/t;

    invoke-virtual {v0}, Lkotlinx/coroutines/t;->c()Z

    move-result p2

    if-eqz p2, :cond_3

    if-nez p3, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    iget-object p1, v0, Lkotlinx/coroutines/h0;->a:Ljava/lang/Throwable;

    invoke-virtual {p0, p3, p1}, Lkotlinx/coroutines/q;->o(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    .line 10
    :cond_3
    invoke-direct {p0, p1}, Lkotlinx/coroutines/q;->j(Ljava/lang/Object;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method static synthetic K(Lkotlinx/coroutines/q;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/q;->J(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: resumeImpl"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final O(Lkotlinx/coroutines/q2;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/q2;",
            "Ljava/lang/Object;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lkotlinx/coroutines/h0;

    if-eqz v0, :cond_5

    .line 2
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_2
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result p1

    if-eqz p1, :cond_a

    if-nez p4, :cond_3

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    :goto_2
    if-eqz p3, :cond_4

    goto :goto_4

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_5
    invoke-static {p3}, Lkotlinx/coroutines/e1;->c(I)Z

    move-result p3

    if-nez p3, :cond_6

    if-nez p5, :cond_6

    goto :goto_4

    :cond_6
    if-nez p4, :cond_8

    .line 5
    instance-of p3, p1, Lkotlinx/coroutines/n;

    if-eqz p3, :cond_7

    instance-of p3, p1, Lkotlinx/coroutines/f;

    if-eqz p3, :cond_8

    :cond_7
    if-eqz p5, :cond_a

    .line 6
    :cond_8
    new-instance p3, Lkotlinx/coroutines/g0;

    instance-of v0, p1, Lkotlinx/coroutines/n;

    if-eqz v0, :cond_9

    check-cast p1, Lkotlinx/coroutines/n;

    goto :goto_3

    :cond_9
    const/4 p1, 0x0

    :goto_3
    move-object v2, p1

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p3

    move-object v1, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/g0;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/n;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p2, p3

    :cond_a
    :goto_4
    return-object p2
.end method

.method private final P()Z
    .locals 4

    .line 1
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/q;->_decision:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    return v1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already resumed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    sget-object v0, Lkotlinx/coroutines/q;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method

.method private final Q(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/i0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/internal/i0;"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/q;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/q2;

    if-eqz v1, :cond_1

    .line 3
    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/q2;

    iget v5, p0, Lkotlinx/coroutines/d1;->c:I

    move-object v2, p0

    move-object v4, p1

    move-object v6, p3

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lkotlinx/coroutines/q;->O(Lkotlinx/coroutines/q2;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    sget-object v2, Lkotlinx/coroutines/q;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/q;->u()V

    .line 6
    sget-object p1, Lkotlinx/coroutines/r;->d:Lkotlinx/coroutines/internal/i0;

    return-object p1

    .line 7
    :cond_1
    instance-of p3, v0, Lkotlinx/coroutines/g0;

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    if-eqz p2, :cond_4

    .line 8
    check-cast v0, Lkotlinx/coroutines/g0;

    iget-object p3, v0, Lkotlinx/coroutines/g0;->d:Ljava/lang/Object;

    if-ne p3, p2, :cond_4

    .line 9
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, v0, Lkotlinx/coroutines/g0;->a:Ljava/lang/Object;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_3
    :goto_1
    sget-object v1, Lkotlinx/coroutines/r;->d:Lkotlinx/coroutines/internal/i0;

    :cond_4
    return-object v1
.end method

.method private final R()Z
    .locals 3

    .line 1
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/q;->_decision:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    return v1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already suspended"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    sget-object v0, Lkotlinx/coroutines/q;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method

.method private final j(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1

    const-string v0, "Already resumed, but proposed with update "

    .line 1
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final k(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/q;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    .line 3
    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    const-string v1, "Exception in invokeOnCancellation handler for "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p2, v0}, Lkotlinx/coroutines/q0;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private final n(Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/q;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 3
    new-instance v1, Lkotlinx/coroutines/CompletionHandlerException;

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-static {v0, v1}, Lkotlinx/coroutines/q0;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private final r(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/q;->C()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/q;->d:Lkotlin/coroutines/Continuation;

    check-cast v0, Lkotlinx/coroutines/internal/j;

    .line 3
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/j;->t(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method private final u()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/q;->C()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/q;->t()V

    :cond_0
    return-void
.end method

.method private final v(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/q;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/e1;->a(Lkotlinx/coroutines/d1;I)V

    return-void
.end method


# virtual methods
.method protected F()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "CancellableContinuation"

    return-object v0
.end method

.method public final G(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/q;->r(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/q;->a(Ljava/lang/Throwable;)Z

    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/q;->u()V

    return-void
.end method

.method public final I()Z
    .locals 4
    .annotation build Lkotlin/jvm/JvmName;
        name = "resetStateReusable"
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lkotlinx/coroutines/d1;->c:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2
    :cond_2
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lkotlinx/coroutines/q;->f:Lkotlinx/coroutines/j1;

    sget-object v3, Lkotlinx/coroutines/p2;->a:Lkotlinx/coroutines/p2;

    if-eq v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3
    :cond_5
    :goto_3
    iget-object v0, p0, Lkotlinx/coroutines/q;->_state:Ljava/lang/Object;

    .line 4
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v3

    if-eqz v3, :cond_7

    instance-of v3, v0, Lkotlinx/coroutines/q2;

    xor-int/2addr v3, v1

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 5
    :cond_7
    :goto_4
    instance-of v3, v0, Lkotlinx/coroutines/g0;

    if-eqz v3, :cond_8

    check-cast v0, Lkotlinx/coroutines/g0;

    iget-object v0, v0, Lkotlinx/coroutines/g0;->d:Ljava/lang/Object;

    if-eqz v0, :cond_8

    .line 6
    invoke-virtual {p0}, Lkotlinx/coroutines/q;->t()V

    return v2

    .line 7
    :cond_8
    iput v2, p0, Lkotlinx/coroutines/q;->_decision:I

    .line 8
    sget-object v0, Lkotlinx/coroutines/d;->a:Lkotlinx/coroutines/d;

    iput-object v0, p0, Lkotlinx/coroutines/q;->_state:Ljava/lang/Object;

    return v1
.end method

.method public L(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/q;->Q(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/i0;

    move-result-object p1

    return-object p1
.end method

.method public M(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V
    .locals 6
    .param p1    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/q;->d:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Lkotlinx/coroutines/internal/j;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/internal/j;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    iget-object v2, v0, Lkotlinx/coroutines/internal/j;->d:Lkotlinx/coroutines/CoroutineDispatcher;

    :goto_1
    if-ne v2, p1, :cond_2

    const/4 p1, 0x4

    const/4 v2, 0x4

    goto :goto_2

    :cond_2
    iget p1, p0, Lkotlinx/coroutines/d1;->c:I

    move v2, p1

    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/q;->K(Lkotlinx/coroutines/q;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public N()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/q;->B()Lkotlinx/coroutines/j1;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/q;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Lkotlinx/coroutines/j1;->dispose()V

    .line 4
    sget-object v0, Lkotlinx/coroutines/p2;->a:Lkotlinx/coroutines/p2;

    iput-object v0, p0, Lkotlinx/coroutines/q;->f:Lkotlinx/coroutines/j1;

    :cond_1
    return-void
.end method

.method public V(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lkotlinx/coroutines/r;->d:Lkotlinx/coroutines/internal/i0;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_2
    :goto_1
    iget p1, p0, Lkotlinx/coroutines/d1;->c:I

    invoke-direct {p0, p1}, Lkotlinx/coroutines/q;->v(I)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)Z
    .locals 4
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/q;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/q2;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    new-instance v1, Lkotlinx/coroutines/t;

    instance-of v2, v0, Lkotlinx/coroutines/n;

    invoke-direct {v1, p0, p1, v2}, Lkotlinx/coroutines/t;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/Throwable;Z)V

    .line 4
    sget-object v3, Lkotlinx/coroutines/q;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 5
    check-cast v0, Lkotlinx/coroutines/n;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/q;->m(Lkotlinx/coroutines/n;Ljava/lang/Throwable;)V

    .line 6
    :goto_2
    invoke-direct {p0}, Lkotlinx/coroutines/q;->u()V

    .line 7
    iget p1, p0, Lkotlinx/coroutines/d1;->c:I

    invoke-direct {p0, p1}, Lkotlinx/coroutines/q;->v(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lkotlinx/coroutines/q;->Q(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/i0;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :cond_0
    iget-object p1, p0, Lkotlinx/coroutines/q;->_state:Ljava/lang/Object;

    .line 2
    instance-of v0, p1, Lkotlinx/coroutines/q2;

    if-nez v0, :cond_4

    .line 3
    instance-of v0, p1, Lkotlinx/coroutines/h0;

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/g0;

    if-eqz v0, :cond_3

    .line 5
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/g0;

    invoke-virtual {v0}, Lkotlinx/coroutines/g0;->h()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v1, v0

    move-object v6, p2

    .line 6
    invoke-static/range {v1 .. v8}, Lkotlinx/coroutines/g0;->g(Lkotlinx/coroutines/g0;Ljava/lang/Object;Lkotlinx/coroutines/n;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Lkotlinx/coroutines/g0;

    move-result-object v1

    .line 7
    sget-object v2, Lkotlinx/coroutines/q;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {v0, p0, p2}, Lkotlinx/coroutines/g0;->i(Lkotlinx/coroutines/q;Ljava/lang/Throwable;)V

    return-void

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must be called at most once"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    sget-object v8, Lkotlinx/coroutines/q;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v9, Lkotlinx/coroutines/g0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/g0;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/n;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v8, p0, p1, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not completed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public final e()Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/q;->d:Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lkotlinx/coroutines/d1;->f(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/q;->e()Lkotlin/coroutines/Continuation;

    move-result-object v0

    .line 2
    invoke-static {}, Lkotlinx/coroutines/v0;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    check-cast v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {p1, v0}, Lkotlinx/coroutines/internal/h0;->c(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/g0;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/g0;

    iget-object p1, p1, Lkotlinx/coroutines/g0;->a:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/q;->d:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/q;->e:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/q;->z()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/q;->z()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/q2;

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/q;->z()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/t;

    return v0
.end method

.method public isCompleted()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/q;->z()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/q2;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public l(Lkotlin/jvm/functions/Function1;)V
    .locals 11
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
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/q;->D(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/n;

    move-result-object v8

    .line 2
    :cond_0
    :goto_0
    iget-object v9, p0, Lkotlinx/coroutines/q;->_state:Ljava/lang/Object;

    .line 3
    instance-of v0, v9, Lkotlinx/coroutines/d;

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lkotlinx/coroutines/q;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, v9, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_1
    instance-of v0, v9, Lkotlinx/coroutines/n;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, v9}, Lkotlinx/coroutines/q;->E(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_2
    instance-of v0, v9, Lkotlinx/coroutines/h0;

    if-eqz v0, :cond_7

    .line 7
    move-object v1, v9

    check-cast v1, Lkotlinx/coroutines/h0;

    invoke-virtual {v1}, Lkotlinx/coroutines/h0;->b()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, p1, v9}, Lkotlinx/coroutines/q;->E(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    .line 8
    :cond_3
    instance-of v2, v9, Lkotlinx/coroutines/t;

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_5

    goto :goto_2

    .line 9
    :cond_5
    iget-object v2, v1, Lkotlinx/coroutines/h0;->a:Ljava/lang/Throwable;

    :goto_2
    invoke-direct {p0, p1, v2}, Lkotlinx/coroutines/q;->k(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    :cond_6
    return-void

    .line 10
    :cond_7
    instance-of v0, v9, Lkotlinx/coroutines/g0;

    if-eqz v0, :cond_b

    .line 11
    move-object v0, v9

    check-cast v0, Lkotlinx/coroutines/g0;

    iget-object v1, v0, Lkotlinx/coroutines/g0;->b:Lkotlinx/coroutines/n;

    if-eqz v1, :cond_8

    invoke-direct {p0, p1, v9}, Lkotlinx/coroutines/q;->E(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    .line 12
    :cond_8
    instance-of v1, v8, Lkotlinx/coroutines/f;

    if-eqz v1, :cond_9

    return-void

    .line 13
    :cond_9
    invoke-virtual {v0}, Lkotlinx/coroutines/g0;->h()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 14
    iget-object v0, v0, Lkotlinx/coroutines/g0;->e:Ljava/lang/Throwable;

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/q;->k(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    return-void

    :cond_a
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1d

    const/4 v7, 0x0

    move-object v2, v8

    .line 15
    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/g0;->g(Lkotlinx/coroutines/g0;Ljava/lang/Object;Lkotlinx/coroutines/n;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Lkotlinx/coroutines/g0;

    move-result-object v0

    .line 16
    sget-object v1, Lkotlinx/coroutines/q;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v9, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 17
    :cond_b
    instance-of v0, v8, Lkotlinx/coroutines/f;

    if-eqz v0, :cond_c

    return-void

    .line 18
    :cond_c
    new-instance v10, Lkotlinx/coroutines/g0;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, v10

    move-object v1, v9

    move-object v2, v8

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/g0;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/n;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 19
    sget-object v0, Lkotlinx/coroutines/q;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, v9, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final m(Lkotlinx/coroutines/n;Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Lkotlinx/coroutines/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/o;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/q;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    .line 3
    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    const-string v1, "Exception in invokeOnCancellation handler for "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p2, v0}, Lkotlinx/coroutines/q0;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final o(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
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
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/q;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    .line 3
    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    const-string v1, "Exception in resume onCancellation handler for "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p2, v0}, Lkotlinx/coroutines/q0;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public p(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/h0;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lkotlinx/coroutines/h0;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v0, v3, v3}, Lkotlinx/coroutines/q;->Q(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/i0;

    move-result-object p1

    return-object p1
.end method

.method public q(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Throwable;)V
    .locals 9
    .param p1    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/q;->d:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Lkotlinx/coroutines/internal/j;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/internal/j;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 2
    :goto_0
    new-instance v4, Lkotlinx/coroutines/h0;

    const/4 v1, 0x0

    const/4 v3, 0x2

    invoke-direct {v4, p2, v1, v3, v2}, Lkotlinx/coroutines/h0;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lkotlinx/coroutines/internal/j;->d:Lkotlinx/coroutines/CoroutineDispatcher;

    :goto_1
    if-ne v2, p1, :cond_2

    const/4 p1, 0x4

    const/4 v5, 0x4

    goto :goto_2

    :cond_2
    iget p1, p0, Lkotlinx/coroutines/d1;->c:I

    move v5, p1

    :goto_2
    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/q;->K(Lkotlinx/coroutines/q;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1, p0}, Lkotlinx/coroutines/m0;->c(Ljava/lang/Object;Lkotlinx/coroutines/p;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lkotlinx/coroutines/d1;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/q;->K(Lkotlinx/coroutines/q;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public final t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/q;->f:Lkotlinx/coroutines/j1;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/j1;->dispose()V

    .line 3
    sget-object v0, Lkotlinx/coroutines/p2;->a:Lkotlinx/coroutines/p2;

    iput-object v0, p0, Lkotlinx/coroutines/q;->f:Lkotlinx/coroutines/j1;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/coroutines/q;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/q;->d:Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlinx/coroutines/w0;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lkotlinx/coroutines/q;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/w0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w(Lkotlinx/coroutines/c2;)Ljava/lang/Throwable;
    .locals 0
    .param p1    # Lkotlinx/coroutines/c2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-interface {p1}, Lkotlinx/coroutines/c2;->m()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1
.end method

.method public final x()Ljava/lang/Object;
    .locals 3
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/q;->C()Z

    move-result v0

    .line 2
    invoke-direct {p0}, Lkotlinx/coroutines/q;->R()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lkotlinx/coroutines/q;->f:Lkotlinx/coroutines/j1;

    if-nez v1, :cond_0

    .line 4
    invoke-direct {p0}, Lkotlinx/coroutines/q;->B()Lkotlinx/coroutines/j1;

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lkotlinx/coroutines/q;->H()V

    .line 6
    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 7
    invoke-direct {p0}, Lkotlinx/coroutines/q;->H()V

    .line 8
    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/q;->z()Ljava/lang/Object;

    move-result-object v0

    .line 9
    instance-of v1, v0, Lkotlinx/coroutines/h0;

    if-eqz v1, :cond_5

    check-cast v0, Lkotlinx/coroutines/h0;

    iget-object v0, v0, Lkotlinx/coroutines/h0;->a:Ljava/lang/Throwable;

    .line 10
    invoke-static {}, Lkotlinx/coroutines/v0;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    invoke-static {v0, p0}, Lkotlinx/coroutines/internal/h0;->c(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v0

    :cond_4
    throw v0

    .line 12
    :cond_5
    iget v1, p0, Lkotlinx/coroutines/d1;->c:I

    invoke-static {v1}, Lkotlinx/coroutines/e1;->c(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 13
    invoke-virtual {p0}, Lkotlinx/coroutines/q;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/c2;->Q:Lkotlinx/coroutines/c2$b;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/c2;

    if-eqz v1, :cond_7

    .line 14
    invoke-interface {v1}, Lkotlinx/coroutines/c2;->isActive()Z

    move-result v2

    if-nez v2, :cond_7

    .line 15
    invoke-interface {v1}, Lkotlinx/coroutines/c2;->m()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    .line 16
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/q;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 17
    invoke-static {}, Lkotlinx/coroutines/v0;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    invoke-static {v1, p0}, Lkotlinx/coroutines/internal/h0;->c(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_6
    throw v1

    .line 19
    :cond_7
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/q;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public y(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lkotlinx/coroutines/d1;->c:I

    invoke-direct {p0, p1, v0, p2}, Lkotlinx/coroutines/q;->J(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final z()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/q;->_state:Ljava/lang/Object;

    return-object v0
.end method
