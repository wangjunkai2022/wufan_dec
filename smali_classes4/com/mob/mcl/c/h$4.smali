.class Lcom/mob/mcl/c/h$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mcl/c/h;->b(Lcom/mob/mcl/BusinessCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mcl/BusinessCallBack;

.field final synthetic b:Lcom/mob/mcl/c/h;


# direct methods
.method constructor <init>(Lcom/mob/mcl/c/h;Lcom/mob/mcl/BusinessCallBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mcl/c/h$4;->b:Lcom/mob/mcl/c/h;

    iput-object p2, p0, Lcom/mob/mcl/c/h$4;->a:Lcom/mob/mcl/BusinessCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/mcl/c/h$4;->b:Lcom/mob/mcl/c/h;

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    const/16 v2, 0xbb8

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/mob/mcl/c/h;->a(II)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    new-instance v2, Lcom/mob/mcl/c/h$4$1;

    invoke-direct {v2, p0, v0}, Lcom/mob/mcl/c/h$4$1;-><init>(Lcom/mob/mcl/c/h$4;Z)V

    invoke-static {v1, v2}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    if-nez v0, :cond_2

    .line 3
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->f()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/mob/mcl/c/h$4;->b:Lcom/mob/mcl/c/h;

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->g()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method
