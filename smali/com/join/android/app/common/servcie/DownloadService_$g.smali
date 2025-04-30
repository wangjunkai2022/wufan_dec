.class Lcom/join/android/app/common/servcie/DownloadService_$g;
.super Ljava/lang/Object;
.source "DownloadService_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/servcie/DownloadService_;->C(Lcom/join/mgps/dto/DetailResultBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/DetailResultBean;

.field final synthetic b:Lcom/join/android/app/common/servcie/DownloadService_;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/servcie/DownloadService_;Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/servcie/DownloadService_$g;->b:Lcom/join/android/app/common/servcie/DownloadService_;

    iput-object p2, p0, Lcom/join/android/app/common/servcie/DownloadService_$g;->a:Lcom/join/mgps/dto/DetailResultBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_$g;->b:Lcom/join/android/app/common/servcie/DownloadService_;

    iget-object v1, p0, Lcom/join/android/app/common/servcie/DownloadService_$g;->a:Lcom/join/mgps/dto/DetailResultBean;

    invoke-static {v0, v1}, Lcom/join/android/app/common/servcie/DownloadService_;->E(Lcom/join/android/app/common/servcie/DownloadService_;Lcom/join/mgps/dto/DetailResultBean;)V

    return-void
.end method
