.class final Lcom/mob/commons/b$4;
.super Lcom/mob/tools/utils/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/b;->d(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/commons/b$4;->a:Ljava/lang/String;

    iput p2, p0, Lcom/mob/commons/b$4;->b:I

    invoke-direct {p0}, Lcom/mob/tools/utils/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

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

    iget-object v0, p0, Lcom/mob/commons/b$4;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget v1, p0, Lcom/mob/commons/b$4;->b:I

    invoke-static {v1}, Lcom/mob/commons/b;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {}, Lcom/mob/commons/b;->n()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/mob/commons/b;->n()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    throw v1
.end method
