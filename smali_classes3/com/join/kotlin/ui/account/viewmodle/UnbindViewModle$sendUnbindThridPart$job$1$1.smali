.class final Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UnbindViewModle.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.join.kotlin.ui.account.viewmodle.UnbindViewModle$sendUnbindThridPart$job$1$1"
    f = "UnbindViewModle.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $result:Lkotlin/jvm/internal/Ref$ObjectRef;

.field label:I

.field final synthetic this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1;

    iput-object p2, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

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

    new-instance p1, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;

    iget-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1;

    iget-object v1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1, v0, v1, p2}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;-><init>(Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->label:I

    if-nez v0, :cond_7

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getError()I

    move-result p1

    if-nez p1, :cond_5

    .line 3
    iget-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "result.data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    iget-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1;

    iget-object p1, p1, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1;->$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    const-string v0, "AccountUtil_.getInstance_(context)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1;

    iget-object v0, v0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1;->this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getPlatform()Ljava/lang/String;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/join/kotlin/ui/account/modle/UnBindPlatform;->QQ_OPENID:Lcom/join/kotlin/ui/account/modle/UnBindPlatform;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "accountBean"

    if-eqz v1, :cond_0

    .line 7
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/AccountBean;->setIs_bind_qq(I)V

    goto :goto_0

    .line 8
    :cond_0
    sget-object v1, Lcom/join/kotlin/ui/account/modle/UnBindPlatform;->WEIXIN_OPENID:Lcom/join/kotlin/ui/account/modle/UnBindPlatform;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/AccountBean;->setIs_bind_wx(I)V

    goto :goto_0

    .line 10
    :cond_1
    sget-object v1, Lcom/join/kotlin/ui/account/modle/UnBindPlatform;->WB_OPENID:Lcom/join/kotlin/ui/account/modle/UnBindPlatform;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/AccountBean;->setIs_bind_wb(I)V

    .line 12
    :cond_2
    :goto_0
    invoke-static {}, Lcom/join/mgps/listener/a;->b()Lcom/join/mgps/listener/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/listener/a;->c()V

    .line 13
    iget-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1;

    iget-object p1, p1, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1;->$context:Landroid/content/Context;

    const-string v0, "\u89e3\u7ed1\u6210\u529f"

    invoke-static {p1, v0}, Lcom/psk/kotlin/ext/CommonExtKt;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1;

    iget-object p1, p1, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1;->this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getCallStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1;

    iget-object p1, p1, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1;->$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getMsg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {p1, v0}, Lcom/psk/kotlin/ext/CommonExtKt;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 16
    :cond_5
    iget-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1;

    iget-object p1, p1, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1;->$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getMsg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {p1, v0}, Lcom/psk/kotlin/ext/CommonExtKt;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
