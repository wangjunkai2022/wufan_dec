.class public Lcom/androidquery/util/Progress;
.super Ljava/lang/Object;
.source "Progress.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private act:Landroid/app/Activity;

.field private bytes:I

.field private current:I

.field private pb:Landroid/widget/ProgressBar;

.field private pd:Landroid/app/ProgressDialog;

.field private unknown:Z

.field private url:Ljava/lang/String;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    instance-of v0, p1, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Landroid/app/ProgressDialog;

    iput-object p1, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 6
    :cond_1
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 7
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/androidquery/util/Progress;->act:Landroid/app/Activity;

    goto :goto_0

    .line 8
    :cond_2
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_3

    .line 9
    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/androidquery/util/Progress;->view:Landroid/view/View;

    :cond_3
    :goto_0
    return-void
.end method

.method private dismiss(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/androidquery/AQuery;

    iget-object v1, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v1, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Lcom/androidquery/AbstractAQuery;->dismiss(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/androidquery/util/Progress;->act:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 6
    iget-object v0, p0, Lcom/androidquery/util/Progress;->act:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    const v2, 0x40ff0001

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, v2, p1}, Landroid/widget/ProgressBar;->setTag(ILjava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/androidquery/util/Progress;->view:Landroid/view/View;

    :cond_3
    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 p1, 0x0

    .line 14
    invoke-virtual {v0, v2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 15
    iget-object p1, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x8

    .line 16
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method private showProgress(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 4

    if-eqz p1, :cond_6

    .line 1
    instance-of v0, p1, Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    .line 3
    instance-of v2, p1, Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    check-cast p1, Landroid/widget/ProgressBar;

    goto :goto_0

    :cond_0
    move-object p1, v3

    :goto_0
    const v2, 0x40ff0001

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {v0, v2, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_6

    .line 7
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 p2, 0x64

    .line 8
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 10
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 11
    :cond_2
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz p1, :cond_6

    .line 12
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0x8

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 14
    :cond_3
    instance-of p2, p1, Landroid/app/Dialog;

    if-eqz p2, :cond_5

    .line 15
    check-cast p1, Landroid/app/Dialog;

    .line 16
    new-instance p2, Lcom/androidquery/AQuery;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    if-eqz p3, :cond_4

    .line 17
    invoke-virtual {p2, p1}, Lcom/androidquery/AbstractAQuery;->show(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;

    goto :goto_1

    .line 18
    :cond_4
    invoke-virtual {p2, p1}, Lcom/androidquery/AbstractAQuery;->dismiss(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;

    goto :goto_1

    .line 19
    :cond_5
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_6

    .line 20
    check-cast p1, Landroid/app/Activity;

    .line 21
    invoke-virtual {p1, p3}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 22
    invoke-virtual {p1, p3}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    if-eqz p3, :cond_6

    .line 23
    invoke-virtual {p1, v1}, Landroid/app/Activity;->setProgress(I)V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public done()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/androidquery/util/Progress;->act:Landroid/app/Activity;

    if-eqz v0, :cond_2

    const/16 v1, 0x270f

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    :cond_2
    return-void
.end method

.method public hide(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/androidquery/util/AQUtility;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/androidquery/util/Progress;->dismiss(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/androidquery/util/Progress;->url:Ljava/lang/String;

    .line 4
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->post(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public increment(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v2, p0, Lcom/androidquery/util/Progress;->unknown:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_3

    .line 4
    iget-boolean v2, p0, Lcom/androidquery/util/Progress;->unknown:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, p1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/androidquery/util/Progress;->act:Landroid/app/Activity;

    if-eqz v0, :cond_6

    .line 6
    iget-boolean v1, p0, Lcom/androidquery/util/Progress;->unknown:Z

    if-eqz v1, :cond_4

    .line 7
    iget p1, p0, Lcom/androidquery/util/Progress;->current:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/androidquery/util/Progress;->current:I

    goto :goto_2

    .line 8
    :cond_4
    iget v1, p0, Lcom/androidquery/util/Progress;->current:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/androidquery/util/Progress;->current:I

    mul-int/lit16 v1, v1, 0x2710

    .line 9
    iget p1, p0, Lcom/androidquery/util/Progress;->bytes:I

    div-int p1, v1, p1

    :goto_2
    const/16 v1, 0x270f

    if-le p1, v1, :cond_5

    const/16 p1, 0x270f

    .line 10
    :cond_5
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgress(I)V

    :cond_6
    return-void
.end method

.method public reset()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    const/16 v1, 0x2710

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 6
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/androidquery/util/Progress;->act:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setProgress(I)V

    .line 9
    :cond_2
    iput-boolean v2, p0, Lcom/androidquery/util/Progress;->unknown:Z

    .line 10
    iput v2, p0, Lcom/androidquery/util/Progress;->current:I

    .line 11
    iput v1, p0, Lcom/androidquery/util/Progress;->bytes:I

    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/util/Progress;->url:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/androidquery/util/Progress;->dismiss(Ljava/lang/String;)V

    return-void
.end method

.method public setBytes(I)V
    .locals 2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/androidquery/util/Progress;->unknown:Z

    const/16 p1, 0x2710

    .line 2
    :cond_0
    iput p1, p0, Lcom/androidquery/util/Progress;->bytes:I

    .line 3
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 5
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 8
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMax(I)V

    :cond_2
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/androidquery/util/Progress;->reset()V

    .line 2
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/androidquery/AQuery;

    iget-object v1, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    .line 4
    iget-object v1, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Lcom/androidquery/AbstractAQuery;->show(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/androidquery/util/Progress;->act:Landroid/app/Activity;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 7
    iget-object v0, p0, Lcom/androidquery/util/Progress;->act:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x40ff0001

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0, v2, p1}, Landroid/widget/ProgressBar;->setTag(ILjava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/androidquery/util/Progress;->view:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0, v2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lcom/androidquery/util/Progress;->view:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method
