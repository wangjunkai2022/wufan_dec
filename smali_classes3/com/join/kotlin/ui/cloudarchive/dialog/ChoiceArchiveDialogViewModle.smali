.class public final Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialogViewModle;
.super Landroidx/lifecycle/ViewModel;
.source "ChoiceArchiveDialogViewModle.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\"\u0010#J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J)\u0010\u0005\u001a\u00020\u00042!\u0010\u000b\u001a\u001d\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u00040\u0006R(\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R.\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00140\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u000f\u001a\u0004\u0008\u0017\u0010\u0011\"\u0004\u0008\u0018\u0010\u0013R\"\u0010\u0019\u001a\u00020\u00028\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR(\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010\u000f\u001a\u0004\u0008 \u0010\u0011\"\u0004\u0008!\u0010\u0013\u00a8\u0006$"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialogViewModle;",
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
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;",
        "dialogData",
        "Landroidx/lifecycle/MutableLiveData;",
        "getDialogData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setDialogData",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "",
        "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
        "archiveList",
        "getArchiveList",
        "setArchiveList",
        "listenr",
        "Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;",
        "getListenr",
        "()Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;",
        "setListenr",
        "(Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;)V",
        "archive",
        "getArchive",
        "setArchive",
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

.field private archiveList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;"
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

.field public listenr:Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialogViewModle;->archive:Landroidx/lifecycle/MutableLiveData;

    .line 3
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialogViewModle;->archiveList:Landroidx/lifecycle/MutableLiveData;

    .line 4
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialogViewModle;->dialogData:Landroidx/lifecycle/MutableLiveData;

    .line 5
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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialogViewModle;->archive:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getArchiveList()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialogViewModle;->archiveList:Landroidx/lifecycle/MutableLiveData;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialogViewModle;->dialogData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getListenr()Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialogViewModle;->listenr:Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;

    if-nez v0, :cond_0

    const-string v1, "listenr"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialogViewModle;->archive:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setArchiveList(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialogViewModle;->archiveList:Landroidx/lifecycle/MutableLiveData;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialogViewModle;->listenr:Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;

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
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialogViewModle$setClickCommentDialogListener$1;

    invoke-direct {v0, p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialogViewModle$setClickCommentDialogListener$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialogViewModle;->listenr:Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialogViewModle;->dialogData:Landroidx/lifecycle/MutableLiveData;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialogViewModle;->listenr:Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;

    return-void
.end method
