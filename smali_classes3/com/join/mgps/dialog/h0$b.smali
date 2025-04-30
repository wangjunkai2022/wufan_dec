.class Lcom/join/mgps/dialog/h0$b;
.super Ljava/lang/Object;
.source "FightADDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/h0;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/h0;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/h0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/h0$b;->a:Lcom/join/mgps/dialog/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/h0$b;->a:Lcom/join/mgps/dialog/h0;

    invoke-static {p1}, Lcom/join/mgps/dialog/h0;->a(Lcom/join/mgps/dialog/h0;)Lcom/join/mgps/dialog/h0$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/h0$b;->a:Lcom/join/mgps/dialog/h0;

    invoke-static {p1}, Lcom/join/mgps/dialog/h0;->a(Lcom/join/mgps/dialog/h0;)Lcom/join/mgps/dialog/h0$c;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/dialog/h0$b;->a:Lcom/join/mgps/dialog/h0;

    invoke-interface {p1, v0}, Lcom/join/mgps/dialog/h0$c;->b(Lcom/join/mgps/dialog/h0;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/h0$b;->a:Lcom/join/mgps/dialog/h0;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void
.end method
