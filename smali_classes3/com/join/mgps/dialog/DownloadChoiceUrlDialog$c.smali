.class Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$c;
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
.field final synthetic a:Lcom/join/mgps/dto/DownloadUrlBean;

.field final synthetic b:Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;Lcom/join/mgps/dto/DownloadUrlBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$c;->b:Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;

    iput-object p2, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$c;->a:Lcom/join/mgps/dto/DownloadUrlBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$c;->b:Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;

    iget-object p1, p1, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$c;->a:Lcom/join/mgps/dto/DownloadUrlBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadUrlBean;->getDown_source_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$c;->b:Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;

    iget-object v0, p1, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1}, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;->E0(Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;)Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$c;->b:Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
