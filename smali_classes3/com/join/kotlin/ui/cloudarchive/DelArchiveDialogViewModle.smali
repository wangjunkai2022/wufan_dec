.class public final Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;
.super Landroidx/lifecycle/ViewModel;
.source "DelArchiveDialogViewModle.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008&\u0010\'J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J)\u0010\u0005\u001a\u00020\u00042!\u0010\u000b\u001a\u001d\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u00040\u0006J\u0016\u0010\u0010\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eR\"\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R(\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR(\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010\u001a\u001a\u0004\u0008!\u0010\u001c\"\u0004\u0008\"\u0010\u001eR(\u0010$\u001a\u0008\u0012\u0004\u0012\u00020#0\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010\u001a\u001a\u0004\u0008$\u0010\u001c\"\u0004\u0008%\u0010\u001e\u00a8\u0006("
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;",
        "listener",
        "",
        "setClickCommentDialogListener",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "code",
        "listenerx",
        "Landroid/content/Context;",
        "context",
        "",
        "type",
        "commentArchive",
        "listenr",
        "Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;",
        "getListenr",
        "()Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;",
        "setListenr",
        "(Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;)V",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;",
        "dialogData",
        "Landroidx/lifecycle/MutableLiveData;",
        "getDialogData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setDialogData",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
        "archive",
        "getArchive",
        "setArchive",
        "",
        "isCommitLoding",
        "setCommitLoding",
        "<init>",
        "()V",
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
.field private archive:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dialogData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isCommitLoding:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public listenr:Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->archive:Landroidx/lifecycle/MutableLiveData;

    .line 3
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->dialogData:Landroidx/lifecycle/MutableLiveData;

    .line 4
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->isCommitLoding:Landroidx/lifecycle/MutableLiveData;

    .line 5
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->dialogData:Landroidx/lifecycle/MutableLiveData;

    new-instance v9, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    const-string v2, "\u63d0\u793a"

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v9}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final commentArchive(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->isCommitLoding:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->archive:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v3, "archive.value!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 3
    new-instance v2, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v2}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 4
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 5
    new-instance v3, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;

    invoke-direct {v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;-><init>()V

    .line 6
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;->setArchiveId(Ljava/lang/String;)V

    .line 7
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;->setGameId(Ljava/lang/String;)V

    .line 8
    iget-object v4, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->isCommitLoding:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v4, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v3, p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;->setCommentType(Ljava/lang/String;)V

    .line 10
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    const-string v4, "AccountUtil_.getInstance_(context)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    const-string v4, "AccountUtil_.getInstance_(context).accountData"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;->setUid(I)V

    .line 11
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 12
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v1

    const-string v3, "RpcGameClientImpl.newInstance()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object v1

    invoke-virtual {v2}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v2

    invoke-interface {v1, v2}, Lq1/h;->J(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object v1

    .line 13
    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle$commentArchive$1;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle$commentArchive$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final getArchive()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->archive:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getDialogData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->dialogData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getListenr()Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->listenr:Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;

    if-nez v0, :cond_0

    const-string v1, "listenr"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final isCommitLoding()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->isCommitLoding:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final setArchive(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->archive:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setClickCommentDialogListener(Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->listenr:Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;

    return-void
.end method

.method public final setClickCommentDialogListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listenerx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle$setClickCommentDialogListener$1;

    invoke-direct {v0, p1}, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle$setClickCommentDialogListener$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->listenr:Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;

    return-void
.end method

.method public final setCommitLoding(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->isCommitLoding:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setDialogData(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->dialogData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setListenr(Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->listenr:Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;

    return-void
.end method
