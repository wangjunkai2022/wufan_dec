.class final Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CloudShareViewModle.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->loadLocalArchiveDatas(Landroid/content/Context;)V
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
    c = "com.join.kotlin.ui.cloudarchive.CloudShareViewModle$loadLocalArchiveDatas$1"
    f = "CloudShareViewModle.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field label:I

.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->$context:Landroid/content/Context;

    invoke-direct {p1, v0, v1, p2}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->label:I

    if-nez v0, :cond_6

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/e$a;->b()Lcom/join/mgps/va/overmind/e;

    move-result-object v1

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getModGameArchivePathData()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getModPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/va/overmind/e;->M(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    invoke-virtual {v1, v3}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->setInstallInExtPlug(Z)V

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/e$a;->b()Lcom/join/mgps/va/overmind/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/e;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getModGameArchivePathData()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    move-result-object v1

    .line 8
    iget-object v4, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getModGameArchivePathData()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getMainArchiveLocalPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "modGameArchivePathData.mainArchiveLocalPath"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v5, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->$context:Landroid/content/Context;

    .line 10
    iget-object v6, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .line 11
    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->loadLocalExtArchiveMain(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/lang/String;Landroid/content/Context;Ljava/util/List;)V

    .line 12
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getModGameArchivePathData()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getSubArchiveLocalPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "modGameArchivePathData.subArchiveLocalPath"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 14
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getModGameArchivePathData()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    move-result-object v4

    .line 15
    iget-object v5, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getModGameArchivePathData()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getSubArchiveLocalPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->$context:Landroid/content/Context;

    .line 17
    iget-object v6, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .line 18
    invoke-virtual {v0, v4, v5, v1, v6}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->loadLocalExtArchiveMain(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/lang/String;Landroid/content/Context;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_1
    if-nez v3, :cond_3

    .line 19
    iget-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getModGameArchivePathData()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->loadLocalArchive(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    :cond_3
    iget-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    if-eqz v2, :cond_4

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveDesc(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 22
    :cond_5
    sget-object v3, Lkotlinx/coroutines/v1;->a:Lkotlinx/coroutines/v1;

    invoke-static {}, Lkotlinx/coroutines/g1;->e()Lkotlinx/coroutines/m2;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1$1;

    const/4 v0, 0x0

    invoke-direct {v6, p0, p1, v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->e(Lkotlinx/coroutines/t0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/c2;

    .line 23
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
