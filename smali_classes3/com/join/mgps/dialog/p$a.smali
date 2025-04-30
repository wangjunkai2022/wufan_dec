.class Lcom/join/mgps/dialog/p$a;
.super Ljava/lang/Object;
.source "BackupFinishDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/p;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/p;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/p$a;->a:Lcom/join/mgps/dialog/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/p$a;->a:Lcom/join/mgps/dialog/p;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
