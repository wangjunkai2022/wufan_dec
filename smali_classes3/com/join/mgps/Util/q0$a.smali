.class Lcom/join/mgps/Util/q0$a;
.super Landroid/os/Handler;
.source "JPushUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/Util/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/Util/q0;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/q0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/q0$a;->a:Lcom/join/mgps/Util/q0;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/Util/q0$a;->a:Lcom/join/mgps/Util/q0;

    invoke-static {v0}, Lcom/join/mgps/Util/q0;->b(Lcom/join/mgps/Util/q0;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled msg - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/Util/q0$a;->a:Lcom/join/mgps/Util/q0;

    invoke-static {p1}, Lcom/join/mgps/Util/q0;->b(Lcom/join/mgps/Util/q0;)Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/Util/q0$a;->a:Lcom/join/mgps/Util/q0;

    invoke-static {p1}, Lcom/join/mgps/Util/q0;->b(Lcom/join/mgps/Util/q0;)Ljava/lang/String;

    :goto_0
    return-void
.end method
