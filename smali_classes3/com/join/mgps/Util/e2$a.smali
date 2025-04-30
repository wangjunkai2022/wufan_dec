.class Lcom/join/mgps/Util/e2$a;
.super Ljava/lang/Object;
.source "TCUploadHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/e2;-><init>(Landroid/content/Context;Lcom/join/mgps/Util/e2$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/Util/e2;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/e2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/e2$a;->a:Lcom/join/mgps/Util/e2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/Util/e2$a;->a:Lcom/join/mgps/Util/e2;

    invoke-static {v0}, Lcom/join/mgps/Util/e2;->a(Lcom/join/mgps/Util/e2;)Lcom/join/mgps/Util/e2$e;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/join/mgps/Util/e2$a;->a:Lcom/join/mgps/Util/e2;

    invoke-static {v0}, Lcom/join/mgps/Util/e2;->a(Lcom/join/mgps/Util/e2;)Lcom/join/mgps/Util/e2$e;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/join/mgps/Util/e2$e;->N(ILjava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
