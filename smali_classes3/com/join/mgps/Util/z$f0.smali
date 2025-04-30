.class Lcom/join/mgps/Util/z$f0;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/z;->J(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/pref/PrefDef_;

.field final synthetic b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/join/mgps/Util/z;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/z;Lcom/join/mgps/pref/PrefDef_;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/z$f0;->e:Lcom/join/mgps/Util/z;

    iput-object p2, p0, Lcom/join/mgps/Util/z$f0;->a:Lcom/join/mgps/pref/PrefDef_;

    iput-object p3, p0, Lcom/join/mgps/Util/z$f0;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iput-object p4, p0, Lcom/join/mgps/Util/z$f0;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/join/mgps/Util/z$f0;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/Util/z$f0;->e:Lcom/join/mgps/Util/z;

    invoke-static {p1}, Lcom/join/mgps/Util/z;->c(Lcom/join/mgps/Util/z;)Lcom/join/android/app/common/dialog/c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 2
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/Util/z$f0;->a:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isNoShowAddShortcut()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/Util/z$f0;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/join/mgps/Util/z$f0;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/Util/z$f0;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    .line 7
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/Util/z$f0;->a:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isNoShowAddShortcut()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/Util/z$f0;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setNotCheckAddShortcut(Z)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/Util/z$f0;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/join/mgps/Util/z$f0;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/Util/z$f0;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lcom/join/mgps/Util/UtilsMy;->e3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;ILjava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/Util/z$f0;->e:Lcom/join/mgps/Util/z;

    invoke-static {p1}, Lcom/join/mgps/Util/z;->c(Lcom/join/mgps/Util/z;)Lcom/join/android/app/common/dialog/c;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    :try_start_1
    iget-object p1, p0, Lcom/join/mgps/Util/z$f0;->e:Lcom/join/mgps/Util/z;

    invoke-static {p1}, Lcom/join/mgps/Util/z;->c(Lcom/join/mgps/Util/z;)Lcom/join/android/app/common/dialog/c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 12
    :catch_1
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/Util/z$f0;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setNotCheckAddShortcut(Z)V

    return-void
.end method
