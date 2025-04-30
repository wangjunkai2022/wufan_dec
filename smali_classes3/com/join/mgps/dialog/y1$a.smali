.class Lcom/join/mgps/dialog/y1$a;
.super Ljava/lang/Object;
.source "UserPermissDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/join/mgps/dialog/y1$a;->a:Lcom/join/mgps/dialog/y1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/y1$a;->a:Lcom/join/mgps/dialog/y1;

    iget v0, p1, Lcom/join/mgps/dialog/y1;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/join/mgps/dialog/y1;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->disagreePrivacyProtocol:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 3
    new-instance p1, Lcom/join/mgps/dialog/y1;

    iget-object v0, p0, Lcom/join/mgps/dialog/y1$a;->a:Lcom/join/mgps/dialog/y1;

    iget-object v0, v0, Lcom/join/mgps/dialog/y1;->a:Landroid/app/Activity;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/rpc/g;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/static/gy_yszc.html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/dialog/y1$a;->a:Lcom/join/mgps/dialog/y1;

    iget-object v3, v3, Lcom/join/mgps/dialog/y1;->f:Lcom/join/mgps/dialog/y1$f;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/join/mgps/dialog/y1;-><init>(Landroid/app/Activity;ILjava/lang/String;Lcom/join/mgps/dialog/y1$f;)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dialog/y1;->show()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/join/mgps/dialog/y1;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->disagreeExitApp:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/dialog/y1$a;->a:Lcom/join/mgps/dialog/y1;

    iget-object p1, p1, Lcom/join/mgps/dialog/y1;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 7
    invoke-static {p1, v0}, Lcom/mob/MobSDK;->submitPolicyGrantResult(ZLcom/mob/OperationCallback;)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/dialog/y1$a;->a:Lcom/join/mgps/dialog/y1;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
