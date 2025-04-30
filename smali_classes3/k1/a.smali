.class public Lk1/a;
.super Ljava/lang/Object;
.source "GameOLItemBussnes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/join/mgps/dto/GameOLHeadAdBean;

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private e:Lcom/github/snowdream/android/app/downloader/DownloadTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lk1/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object v0
.end method

.method public b()Lcom/join/mgps/dto/GameOLHeadAdBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lk1/a;->c:Lcom/join/mgps/dto/GameOLHeadAdBean;

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk1/a;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lk1/a;->a:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk1/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk1/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method

.method public g(Lcom/join/mgps/dto/GameOLHeadAdBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk1/a;->c:Lcom/join/mgps/dto/GameOLHeadAdBean;

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lk1/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public i(I)V
    .locals 0

    .line 1
    iput p1, p0, Lk1/a;->a:I

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk1/a;->b:Ljava/lang/String;

    return-void
.end method
