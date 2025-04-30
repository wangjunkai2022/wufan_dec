.class final Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog$adapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ChoiceArchiveDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/join/kotlin/ui/cloudarchive/adapter/ModChoiceArchiveAdapter;",
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
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/adapter/ModChoiceArchiveAdapter;",
        "invoke",
        "()Lcom/join/kotlin/ui/cloudarchive/adapter/ModChoiceArchiveAdapter;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog$adapter$2;->this$0:Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/join/kotlin/ui/cloudarchive/adapter/ModChoiceArchiveAdapter;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModChoiceArchiveAdapter;

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog$adapter$2;->this$0:Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/join/kotlin/ui/cloudarchive/adapter/ModChoiceArchiveAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog$adapter$2;->invoke()Lcom/join/kotlin/ui/cloudarchive/adapter/ModChoiceArchiveAdapter;

    move-result-object v0

    return-object v0
.end method
