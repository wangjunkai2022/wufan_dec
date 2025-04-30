.class Lcom/join/mgps/dialog/CustomerAlertDialog$b;
.super Ljava/lang/Object;
.source "CustomerAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/CustomerAlertDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/CustomerAlertDialog;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/CustomerAlertDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/CustomerAlertDialog$b;->a:Lcom/join/mgps/dialog/CustomerAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    const-string v0, "ok"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/CustomerAlertDialog$b;->a:Lcom/join/mgps/dialog/CustomerAlertDialog;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismiss()V

    return-void
.end method
