.class public Lcom/bytedance/sdk/openadsdk/downloadnew/d$e;
.super Ljava/lang/Object;
.source "TTDownloadVisitor.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadWithConnection(ILjava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;)",
            "Lcom/ss/android/socialbase/downloader/network/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/downloadnew/c;->a(Ljava/lang/String;Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/downloadnew/c$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p2, Lcom/bytedance/sdk/openadsdk/downloadnew/d$e$1;

    invoke-direct {p2, p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/d$e$1;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/d$e;Lcom/bytedance/sdk/openadsdk/downloadnew/c$a;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
