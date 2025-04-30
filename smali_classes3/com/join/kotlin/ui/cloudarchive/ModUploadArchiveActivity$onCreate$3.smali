.class final Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$3;
.super Ljava/lang/Object;
.source "ModUploadArchiveActivity.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u00032\u0016\u0010\u0002\u001a\u0012\u0012\u0002\u0008\u0003 \u0001*\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lcom/join/mgps/dto/ResponseModel;",
        "kotlin.jvm.PlatformType",
        "it",
        "",
        "onChanged",
        "(Lcom/join/mgps/dto/ResponseModel;)V",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$3;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/join/mgps/dto/ResponseModel;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ResponseModel<",
            "*>;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$3;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDialog()Lcom/join/mgps/dialog/y0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_4

    .line 5
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$3;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->isFromGame()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "2"

    goto :goto_1

    :cond_2
    const-string p1, "1"

    .line 6
    :goto_1
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$3;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;

    invoke-static {v1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    .line 7
    sget-object v2, Lcom/papa/sim/statistic/Event;->postArchiveSuccess:Lcom/papa/sim/statistic/Event;

    .line 8
    new-instance v3, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v4, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$3;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;

    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v3, v0}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    .line 9
    invoke-virtual {v1, v2, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 10
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$3;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u53d1\u5e03\u6210\u529f\uff01\u7cfb\u7edf\u81ea\u52a8\u5ba1\u6838\u4e2d"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$3;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->finish()V

    goto :goto_3

    .line 12
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$3;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;

    invoke-static {v1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {v1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$3;->onChanged(Lcom/join/mgps/dto/ResponseModel;)V

    return-void
.end method
