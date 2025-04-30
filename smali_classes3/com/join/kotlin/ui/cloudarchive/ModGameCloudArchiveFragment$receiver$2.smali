.class final Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$receiver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ModGameCloudArchiveFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$MyReceiver;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0004\u001a\u00060\u0000R\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$MyReceiver;",
        "Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;",
        "invoke",
        "()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$MyReceiver;",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$receiver$2;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$MyReceiver;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$MyReceiver;

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$receiver$2;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;

    invoke-direct {v0, v1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$MyReceiver;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$receiver$2;->invoke()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$MyReceiver;

    move-result-object v0

    return-object v0
.end method
