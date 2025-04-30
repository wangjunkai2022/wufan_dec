.class final Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$unZip$1;
.super Ljava/lang/Object;
.source "ModDataRequest.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->unZip(Lcom/join/mgps/db/tables/CloudArchiveTable;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "run",
        "()V",
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $table:Lcom/join/mgps/db/tables/CloudArchiveTable;

.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;Lcom/join/mgps/db/tables/CloudArchiveTable;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$unZip$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$unZip$1;->$table:Lcom/join/mgps/db/tables/CloudArchiveTable;

    iput-object p3, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$unZip$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$unZip$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$unZip$1;->$table:Lcom/join/mgps/db/tables/CloudArchiveTable;

    invoke-virtual {v1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getArchiveFolder()Ljava/lang/String;

    move-result-object v2

    const-string v3, "table.archiveFolder"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$unZip$1;->$context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->unzipToPath(Lcom/join/mgps/db/tables/CloudArchiveTable;Ljava/lang/String;Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$unZip$1;->$table:Lcom/join/mgps/db/tables/CloudArchiveTable;

    invoke-virtual {v0}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getMainArchiveLocalPath2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$unZip$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$unZip$1;->$table:Lcom/join/mgps/db/tables/CloudArchiveTable;

    invoke-virtual {v1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getMainArchiveLocalPath2()Ljava/lang/String;

    move-result-object v2

    const-string v3, "table.mainArchiveLocalPath2"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$unZip$1;->$context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->unzipToPath(Lcom/join/mgps/db/tables/CloudArchiveTable;Ljava/lang/String;Landroid/content/Context;)V

    .line 4
    :cond_2
    invoke-static {}, Ln1/g;->t()Ln1/g;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$unZip$1;->$table:Lcom/join/mgps/db/tables/CloudArchiveTable;

    invoke-virtual {v1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getGameId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$unZip$1;->$table:Lcom/join/mgps/db/tables/CloudArchiveTable;

    invoke-virtual {v2}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getArchiveId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/g;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/db/tables/CloudArchiveTable;

    move-result-object v0

    if-nez v0, :cond_3

    .line 6
    invoke-static {}, Ln1/g;->t()Ln1/g;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$unZip$1;->$table:Lcom/join/mgps/db/tables/CloudArchiveTable;

    invoke-virtual {v0, v1}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_2

    .line 7
    :cond_3
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$unZip$1;->$table:Lcom/join/mgps/db/tables/CloudArchiveTable;

    invoke-virtual {v0}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/db/tables/CloudArchiveTable;->setId(I)V

    .line 8
    invoke-static {}, Ln1/g;->t()Ln1/g;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$unZip$1;->$table:Lcom/join/mgps/db/tables/CloudArchiveTable;

    invoke-virtual {v0, v1}, Lg1/b;->update(Ljava/lang/Object;)I

    .line 9
    :goto_2
    sget-object v0, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/e$a;->b()Lcom/join/mgps/va/overmind/e;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$unZip$1;->$table:Lcom/join/mgps/db/tables/CloudArchiveTable;

    invoke-virtual {v1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$unZip$1;->$table:Lcom/join/mgps/db/tables/CloudArchiveTable;

    invoke-virtual {v2}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/va/overmind/e;->h(Ljava/lang/String;I)Z

    .line 10
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$unZip$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
