.class final Lcom/mob/commons/s$1;
.super Lcom/mob/tools/utils/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/s;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mob/commons/s$1;->a:Z

    invoke-direct {p0}, Lcom/mob/tools/utils/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    const-string v0, "M-"

    .line 1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0043ghiihigl"

    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v0

    sget-object v1, Lcom/mob/commons/w;->h:Ljava/lang/String;

    sget-boolean v2, Lcom/mob/commons/n;->e:Z

    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/w;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 4
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v1

    sget-object v2, Lcom/mob/commons/w;->i:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/mob/commons/w;->b(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 5
    invoke-static {v1}, Lcom/mob/commons/s;->a(I)I

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 6
    invoke-static {}, Lcom/mob/commons/s;->g()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget-boolean v0, p0, Lcom/mob/commons/s$1;->a:Z

    invoke-static {v1, v0}, Lcom/mob/commons/s;->a(ZZ)V

    goto :goto_1

    .line 8
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/mob/commons/s$1;->a:Z

    invoke-static {v2, v0}, Lcom/mob/commons/s;->a(ZZ)V

    .line 9
    :goto_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p0, Lcom/mob/commons/s$1;->a:Z

    if-eqz v3, :cond_4

    const-string v3, "002Ydh=i"

    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    const-string v3, ""

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "init cfg over. py "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mob/commons/s;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void
.end method
