.class Lcom/join/mgps/dialog/DownloadHighSpeedingDialog$b;
.super Landroid/database/ContentObserver;
.source "DownloadHighSpeedingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog$b;->a:Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog$b;->a:Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;

    invoke-virtual {p1}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->isNavigationBarShow()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog$b;->a:Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;

    iget-object p1, p1, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->k:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog$b;->a:Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;

    invoke-static {v1}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->D0(Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;)I

    move-result v1

    .line 5
    invoke-static {}, Lcom/join/mgps/Util/i1;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-gt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 6
    :goto_0
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 7
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog$b;->a:Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;

    iget-object v0, v0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->k:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog$b;->a:Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;

    iget-object p1, p1, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->k:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 9
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 10
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog$b;->a:Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;

    iget-object v0, v0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->k:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method
