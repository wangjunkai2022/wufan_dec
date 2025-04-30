.class final Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$onResume$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MustPalyReginActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$onResume$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/t0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/t0;",
        "",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.join.kotlin.ui.modleregin.MustPalyReginActivity$onResume$1$1"
    f = "MustPalyReginActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$onResume$1;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$onResume$1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$onResume$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$onResume$1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$onResume$1$1;

    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$onResume$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$onResume$1;

    invoke-direct {p1, v0, p2}, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$onResume$1$1;-><init>(Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$onResume$1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$onResume$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$onResume$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$onResume$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$onResume$1$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$onResume$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$onResume$1;

    iget-object p1, p1, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$onResume$1;->this$0:Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;->getVideoHelper()Lcom/join/android/app/component/video/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$onResume$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$onResume$1;

    iget-object p1, p1, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$onResume$1;->this$0:Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;->getVideoHelper()Lcom/join/android/app/component/video/c;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/join/android/app/component/video/c;->C(Z)V

    .line 4
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
