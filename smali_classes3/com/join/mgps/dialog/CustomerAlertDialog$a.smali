.class Lcom/join/mgps/dialog/CustomerAlertDialog$a;
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
    iput-object p1, p0, Lcom/join/mgps/dialog/CustomerAlertDialog$a;->a:Lcom/join/mgps/dialog/CustomerAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/CustomerAlertDialog$a;->a:Lcom/join/mgps/dialog/CustomerAlertDialog;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismiss()V

    return-void
.end method
