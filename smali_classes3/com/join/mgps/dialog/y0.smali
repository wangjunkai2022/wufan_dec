.class public Lcom/join/mgps/dialog/y0;
.super Landroid/app/Dialog;
.source "LodingProgressDialog.java"


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Landroid/widget/TextView;

.field d:Lcom/join/mgps/customview/CircleDownloadProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/dialog/y0;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/dialog/y0;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/join/mgps/dialog/y0;->a:Z

    .line 12
    iput-boolean p1, p0, Lcom/join/mgps/dialog/y0;->a:Z

    .line 13
    iput-object p3, p0, Lcom/join/mgps/dialog/y0;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/join/mgps/dialog/y0;->a:Z

    .line 16
    iput-boolean p4, p0, Lcom/join/mgps/dialog/y0;->a:Z

    .line 17
    iput-object p3, p0, Lcom/join/mgps/dialog/y0;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/join/mgps/dialog/y0;->a:Z

    .line 9
    iput-boolean p3, p0, Lcom/join/mgps/dialog/y0;->a:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/dialog/y0;->a:Z

    return-void
.end method


# virtual methods
.method public a(I)Landroid/app/Dialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/y0;->d:Lcom/join/mgps/customview/CircleDownloadProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/CircleDownloadProgressBar;->setProgress(I)V

    :cond_0
    return-object p0
.end method

.method public b(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/y0;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/dialog/y0;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c03bf

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    iget-boolean p1, p0, Lcom/join/mgps/dialog/y0;->a:Z

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    const p1, 0x7f090f56

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/y0;->c:Landroid/widget/TextView;

    const p1, 0x7f090c59

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/CircleDownloadProgressBar;

    iput-object p1, p0, Lcom/join/mgps/dialog/y0;->d:Lcom/join/mgps/customview/CircleDownloadProgressBar;

    .line 6
    iget-object p1, p0, Lcom/join/mgps/dialog/y0;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/join/mgps/dialog/y0;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/dialog/y0;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
