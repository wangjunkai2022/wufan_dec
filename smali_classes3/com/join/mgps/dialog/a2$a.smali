.class Lcom/join/mgps/dialog/a2$a;
.super Ljava/lang/Object;
.source "WhiteBackDialogDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/a2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/a2;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/a2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/a2$a;->a:Lcom/join/mgps/dialog/a2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/a2$a;->a:Lcom/join/mgps/dialog/a2;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
