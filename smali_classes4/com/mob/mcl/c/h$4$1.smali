.class Lcom/mob/mcl/c/h$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mcl/c/h$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/mob/mcl/c/h$4;


# direct methods
.method constructor <init>(Lcom/mob/mcl/c/h$4;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mcl/c/h$4$1;->b:Lcom/mob/mcl/c/h$4;

    iput-boolean p2, p0, Lcom/mob/mcl/c/h$4$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/mob/mcl/c/h$4$1;->b:Lcom/mob/mcl/c/h$4;

    iget-object p1, p1, Lcom/mob/mcl/c/h$4;->a:Lcom/mob/mcl/BusinessCallBack;

    if-eqz p1, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/mob/mcl/c/h$4$1;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/mob/mcl/BusinessCallBack;->callback(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
