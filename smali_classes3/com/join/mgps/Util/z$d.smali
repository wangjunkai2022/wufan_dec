.class Lcom/join/mgps/Util/z$d;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/z;->K(Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/join/mgps/dto/CommonGameInfoBean;

.field final synthetic c:Lcom/join/mgps/customview/t;

.field final synthetic d:Lcom/join/mgps/Util/z;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/z;Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/mgps/customview/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/z$d;->d:Lcom/join/mgps/Util/z;

    iput-object p2, p0, Lcom/join/mgps/Util/z$d;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/join/mgps/Util/z$d;->b:Lcom/join/mgps/dto/CommonGameInfoBean;

    iput-object p4, p0, Lcom/join/mgps/Util/z$d;->c:Lcom/join/mgps/customview/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/Util/z$d;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/join/mgps/Util/z$d;->b:Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->c3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/Util/z$d;->c:Lcom/join/mgps/customview/t;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/Util/z$d;->c:Lcom/join/mgps/customview/t;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
