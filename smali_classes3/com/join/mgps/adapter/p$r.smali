.class Lcom/join/mgps/adapter/p$r;
.super Ljava/lang/Object;
.source "DownloadCenterAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/p;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic b:Lcom/join/mgps/adapter/p;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/p$r;->b:Lcom/join/mgps/adapter/p;

    iput-object p2, p0, Lcom/join/mgps/adapter/p$r;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 1
    new-instance p1, Lcom/join/mgps/customview/t;

    iget-object v0, p0, Lcom/join/mgps/adapter/p$r;->b:Lcom/join/mgps/adapter/p;

    iget-object v0, v0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    const v1, 0x7f120176

    invoke-direct {p1, v0, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f0c011f

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f090365

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f09100a

    .line 4
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "\u5220\u9664\u4efb\u52a1"

    .line 5
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f09036e

    .line 6
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "\u4f60\u786e\u5b9a\u8981\u5220\u9664\u8be5\u5386\u53f2\u8bb0\u5f55\uff1f"

    .line 7
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    new-instance v1, Lcom/join/mgps/adapter/p$r$a;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/adapter/p$r$a;-><init>(Lcom/join/mgps/adapter/p$r;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09036b

    .line 9
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "\u5220\u9664"

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 11
    new-instance v1, Lcom/join/mgps/adapter/p$r$b;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/adapter/p$r$b;-><init>(Lcom/join/mgps/adapter/p$r;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1
.end method
