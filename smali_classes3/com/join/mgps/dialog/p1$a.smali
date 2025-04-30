.class Lcom/join/mgps/dialog/p1$a;
.super Ljava/lang/Object;
.source "PaiWeiRuleDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/p1;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/p1;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/p1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/p1$a;->a:Lcom/join/mgps/dialog/p1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/p1$a;->a:Lcom/join/mgps/dialog/p1;

    invoke-static {p1}, Lcom/join/mgps/dialog/p1;->a(Lcom/join/mgps/dialog/p1;)Lcom/join/mgps/dialog/p1$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/p1$a;->a:Lcom/join/mgps/dialog/p1;

    invoke-static {p1}, Lcom/join/mgps/dialog/p1;->a(Lcom/join/mgps/dialog/p1;)Lcom/join/mgps/dialog/p1$b;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/dialog/p1$a;->a:Lcom/join/mgps/dialog/p1;

    invoke-interface {p1, v0}, Lcom/join/mgps/dialog/p1$b;->a(Lcom/join/mgps/dialog/p1;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/p1$a;->a:Lcom/join/mgps/dialog/p1;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void
.end method
