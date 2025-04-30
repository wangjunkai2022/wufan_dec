.class Lcom/join/mgps/adapter/t$a;
.super Ljava/lang/Object;
.source "FightAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/t;->i(IILjava/util/List;Lcom/join/mgps/adapter/t$n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic b:Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

.field final synthetic c:Lcom/join/mgps/adapter/t;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/t;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/t$a;->c:Lcom/join/mgps/adapter/t;

    iput-object p2, p0, Lcom/join/mgps/adapter/t$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iput-object p3, p0, Lcom/join/mgps/adapter/t$a;->b:Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/t$a;->c:Lcom/join/mgps/adapter/t;

    iget-object v0, p0, Lcom/join/mgps/adapter/t$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/adapter/t$a;->b:Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    invoke-virtual {v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getDown_status()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/join/mgps/adapter/t;->c(Lcom/join/mgps/adapter/t;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    return-void
.end method
