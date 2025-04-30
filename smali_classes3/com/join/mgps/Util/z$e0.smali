.class Lcom/join/mgps/Util/z$e0;
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/join/mgps/Util/z;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/z;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/z$e0;->d:Lcom/join/mgps/Util/z;

    iput-object p2, p0, Lcom/join/mgps/Util/z$e0;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/join/mgps/Util/z$e0;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/join/mgps/Util/z$e0;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/Util/z$e0;->d:Lcom/join/mgps/Util/z;

    invoke-static {p1}, Lcom/join/mgps/Util/z;->c(Lcom/join/mgps/Util/z;)Lcom/join/android/app/common/dialog/c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/join/mgps/Util/z$e0$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/z$e0$a;-><init>(Lcom/join/mgps/Util/z$e0;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
