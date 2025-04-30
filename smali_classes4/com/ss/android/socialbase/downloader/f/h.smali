.class Lcom/ss/android/socialbase/downloader/f/h;
.super Ljava/lang/Object;
.source "OutputStub.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/f/e;


# instance fields
.field private final a:Lcom/ss/android/socialbase/downloader/f/e;

.field private final b:Lcom/ss/android/socialbase/downloader/f/e;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/f/e;Lcom/ss/android/socialbase/downloader/f/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/h;->a:Lcom/ss/android/socialbase/downloader/f/e;

    .line 3
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/f/h;->b:Lcom/ss/android/socialbase/downloader/f/e;

    return-void
.end method


# virtual methods
.method public b(Lcom/ss/android/socialbase/downloader/f/a;)V
    .locals 1
    .param p1    # Lcom/ss/android/socialbase/downloader/f/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/h;->b:Lcom/ss/android/socialbase/downloader/f/e;

    iput-object v0, p1, Lcom/ss/android/socialbase/downloader/f/a;->b:Lcom/ss/android/socialbase/downloader/f/e;

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/h;->a:Lcom/ss/android/socialbase/downloader/f/e;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/f/e;->b(Lcom/ss/android/socialbase/downloader/f/a;)V

    return-void
.end method
