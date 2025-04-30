.class Lcom/join/mgps/dialog/r0$a;
.super Ljava/lang/Object;
.source "GDTAdVipDialog.java"

# interfaces
.implements Lcom/join/mgps/broadcast/NetBroadcastReceiver$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/r0;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/r0;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/r0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/r0$a;->a:Lcom/join/mgps/dialog/r0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/r0$a;->a:Lcom/join/mgps/dialog/r0;

    iget-boolean v1, p1, Lcom/join/mgps/dialog/r0;->t:Z

    if-eqz v1, :cond_0

    .line 2
    iput-boolean v0, p1, Lcom/join/mgps/dialog/r0;->t:Z

    .line 3
    invoke-static {p1}, Lcom/join/mgps/dialog/r0;->a(Lcom/join/mgps/dialog/r0;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/dialog/r0$a;->a:Lcom/join/mgps/dialog/r0;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/ad/a;->e(Landroid/content/Context;)Lcom/join/mgps/ad/a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/dialog/r0$a;->a:Lcom/join/mgps/dialog/r0;

    invoke-static {v0}, Lcom/join/mgps/dialog/r0;->b(Lcom/join/mgps/dialog/r0;)I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/dialog/r0$a;->a:Lcom/join/mgps/dialog/r0;

    invoke-static {v1}, Lcom/join/mgps/dialog/r0;->c(Lcom/join/mgps/dialog/r0;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/dialog/r0$a;->a:Lcom/join/mgps/dialog/r0;

    invoke-static {v2}, Lcom/join/mgps/dialog/r0;->d(Lcom/join/mgps/dialog/r0;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/dialog/r0$a;->a:Lcom/join/mgps/dialog/r0;

    iget-object v3, v3, Lcom/join/mgps/dialog/r0;->r:Lcom/join/mgps/ad/f;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/join/mgps/ad/a;->f(ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/ad/f;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/r0$a;->a:Lcom/join/mgps/dialog/r0;

    invoke-static {p1}, Lcom/join/mgps/dialog/r0;->e(Lcom/join/mgps/dialog/r0;)V

    return-void
.end method
