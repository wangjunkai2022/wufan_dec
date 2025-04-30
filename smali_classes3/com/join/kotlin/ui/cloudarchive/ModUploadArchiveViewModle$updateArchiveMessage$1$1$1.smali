.class public final Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1$1;
.super Ljava/lang/Object;
.source "ModUploadArchiveViewModle.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResponseModel<",
        "*>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0001J,\u0010\u0008\u001a\u00020\u00072\u0010\u0010\u0004\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u00032\u0010\u0010\u0006\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0005H\u0016J\"\u0010\u000b\u001a\u00020\u00072\u0010\u0010\u0004\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u00032\u0006\u0010\n\u001a\u00020\tH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1$1",
        "Lretrofit2/Callback;",
        "Lcom/join/mgps/dto/ResponseModel;",
        "Lretrofit2/Call;",
        "call",
        "Lretrofit2/Response;",
        "response",
        "",
        "onResponse",
        "",
        "t",
        "onFailure",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "*>;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-direct {p1}, Lcom/join/mgps/dto/ResponseModel;-><init>()V

    const/16 p2, 0x1f4

    .line 2
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ResponseModel;->setCode(I)V

    const-string p2, "\u5f02\u5e38"

    .line 3
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ResponseModel;->setMessage(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;

    iget-object p2, p2, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;

    iget-object p2, p2, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getResponseReult()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .param p1    # Lretrofit2/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lretrofit2/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "*>;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;

    iget-object p2, p2, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;

    iget-object p2, p2, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getResponseReult()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result p1

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_1

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;

    const/16 v0, 0xa

    .line 6
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;

    iget-object v1, v1, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;

    iget-object v1, v1, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;->$archiveData:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 7
    invoke-direct {p2, v0, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;-><init>(ILcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 8
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/c0;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-direct {p1}, Lcom/join/mgps/dto/ResponseModel;-><init>()V

    const/16 p2, 0x1f4

    .line 10
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ResponseModel;->setCode(I)V

    const-string p2, "\u5f02\u5e38"

    .line 11
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ResponseModel;->setMessage(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;

    iget-object p2, p2, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;

    iget-object p2, p2, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getResponseReult()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
