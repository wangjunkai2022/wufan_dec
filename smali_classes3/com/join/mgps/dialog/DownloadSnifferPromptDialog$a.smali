.class Lcom/join/mgps/dialog/DownloadSnifferPromptDialog$a;
.super Landroid/database/ContentObserver;
.source "DownloadSnifferPromptDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog$a;->a:Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "navigationbar_is_min"

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge p1, v2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog$a;->a:Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog$a;->a:Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    :goto_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog$a;->a:Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;

    iget-object p1, p1, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 5
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 6
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog$a;->a:Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;

    iget-object v0, v0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->i:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog$a;->a:Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;

    iget-object p1, p1, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog$a;->a:Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;

    invoke-static {v0}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->E0(Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 9
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog$a;->a:Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;

    iget-object v0, v0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->i:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method
