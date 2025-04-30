.class final Lcom/mob/commons/e$1;
.super Lcom/mob/tools/utils/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/e;->b(Lcom/mob/commons/MobProduct;)Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/MobProduct;


# direct methods
.method constructor <init>(Lcom/mob/commons/MobProduct;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/commons/e$1;->a:Lcom/mob/commons/MobProduct;

    invoke-direct {p0}, Lcom/mob/tools/utils/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    const-string v0, "002j7fg"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/commons/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/mob/commons/e;->a(Z)Z

    .line 3
    invoke-static {}, Lcom/mob/commons/b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    const-wide/16 v1, 0x1388

    .line 4
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 5
    invoke-static {}, Lcom/mob/commons/b;->d()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_0

    :catchall_0
    nop

    .line 6
    :cond_1
    :goto_0
    invoke-static {}, Lcom/mob/commons/b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lcom/mob/commons/e;->c()Lcom/mob/commons/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/commons/e$1;->a:Lcom/mob/commons/MobProduct;

    invoke-virtual {v0, v1}, Lcom/mob/commons/a;->a(Lcom/mob/commons/MobProduct;)V

    :cond_2
    return-void
.end method
