.class Lcom/join/mgps/dialog/y1$c;
.super Ljava/lang/Object;
.source "UserPermissDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/y1;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/y1;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/y1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/y1$c;->a:Lcom/join/mgps/dialog/y1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/y1$c;->a:Lcom/join/mgps/dialog/y1;

    iget p1, p1, Lcom/join/mgps/dialog/y1;->e:I

    const/4 p2, 0x2

    const/4 p3, 0x1

    if-ne p1, p2, :cond_0

    .line 2
    new-instance p1, Lcom/join/mgps/dialog/y1;

    iget-object p2, p0, Lcom/join/mgps/dialog/y1$c;->a:Lcom/join/mgps/dialog/y1;

    iget-object p2, p2, Lcom/join/mgps/dialog/y1;->a:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/join/mgps/rpc/g;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/static/gy_yhxkxy.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/dialog/y1$c;->a:Lcom/join/mgps/dialog/y1;

    iget-object v1, v1, Lcom/join/mgps/dialog/y1;->f:Lcom/join/mgps/dialog/y1$f;

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/join/mgps/dialog/y1;-><init>(Landroid/app/Activity;ILjava/lang/String;Lcom/join/mgps/dialog/y1$f;)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dialog/y1;->show()V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/dialog/y1$c;->a:Lcom/join/mgps/dialog/y1;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return p3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
