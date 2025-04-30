.class Lcom/mob/commons/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/m;->a(Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/mob/commons/m;


# direct methods
.method constructor <init>(Lcom/mob/commons/m;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/commons/m$1;->b:Lcom/mob/commons/m;

    iput-object p2, p0, Lcom/mob/commons/m$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/tools/utils/FileLocker;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/mob/commons/m$1;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
