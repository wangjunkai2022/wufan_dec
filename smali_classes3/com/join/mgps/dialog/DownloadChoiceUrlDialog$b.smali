.class Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$b;
.super Ljava/lang/Object;
.source "DownloadChoiceUrlDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$b;->a:Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$b;->a:Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;

    iget-object p1, p1, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$b;->a:Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;

    iget-object p1, p1, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/DownloadUrlBean;

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadUrlBean;->getIs_confirm()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$b;->a:Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;

    iget-object v1, v1, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadUrlBean;->getDown_source_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$b;->a:Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;

    iget-object v1, v0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;->E0(Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$b;->a:Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
