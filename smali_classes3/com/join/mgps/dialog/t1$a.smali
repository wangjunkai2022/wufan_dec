.class Lcom/join/mgps/dialog/t1$a;
.super Ljava/lang/Object;
.source "SimpleAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/t1;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/t1;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/t1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/t1$a;->a:Lcom/join/mgps/dialog/t1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/t1$a;->a:Lcom/join/mgps/dialog/t1;

    invoke-static {v0}, Lcom/join/mgps/dialog/t1;->a(Lcom/join/mgps/dialog/t1;)Lcom/join/mgps/dialog/t1$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/t1$a;->a:Lcom/join/mgps/dialog/t1;

    invoke-static {p1}, Lcom/join/mgps/dialog/t1;->a(Lcom/join/mgps/dialog/t1;)Lcom/join/mgps/dialog/t1$b;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/dialog/t1$a;->a:Lcom/join/mgps/dialog/t1;

    invoke-interface {p1, v0}, Lcom/join/mgps/dialog/t1$b;->b(Lcom/join/mgps/dialog/t1;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dialog/t1$a;->a:Lcom/join/mgps/dialog/t1;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    :goto_0
    return-void
.end method
