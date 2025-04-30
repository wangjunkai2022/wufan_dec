.class Lcom/BaseFragmentActivity$a;
.super Ljava/lang/Object;
.source "BaseFragmentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/BaseFragmentActivity;->onRecivied(Landroid/content/Intent;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/BaseFragmentActivity;


# direct methods
.method constructor <init>(Lcom/BaseFragmentActivity;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/BaseFragmentActivity$a;->c:Lcom/BaseFragmentActivity;

    iput-object p2, p0, Lcom/BaseFragmentActivity$a;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/BaseFragmentActivity$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/BaseFragmentActivity$a;->c:Lcom/BaseFragmentActivity;

    iget-object p2, p0, Lcom/BaseFragmentActivity$a;->a:Landroid/content/Intent;

    const-string v0, "gameId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/BaseFragmentActivity$a;->c:Lcom/BaseFragmentActivity;

    invoke-static {p1, p2, v0}, Lcom/BaseFragmentActivity;->access$500(Lcom/BaseFragmentActivity;Ljava/lang/String;Landroid/content/Context;)V

    .line 3
    iget-object p1, p0, Lcom/BaseFragmentActivity$a;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object p2, Lcom/papa/sim/statistic/Event;->Unzip_getpermission:Lcom/papa/sim/statistic/Event;

    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    return-void
.end method
