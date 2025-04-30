.class Lcom/ss/android/socialbase/downloader/h/g$b;
.super Ljava/lang/Object;
.source "ThreadWithHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/h/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/Runnable;

.field public b:J

.field final synthetic c:Lcom/ss/android/socialbase/downloader/h/g;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/h/g;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/h/g$b;->c:Lcom/ss/android/socialbase/downloader/h/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/h/g$b;->a:Ljava/lang/Runnable;

    .line 3
    iput-wide p3, p0, Lcom/ss/android/socialbase/downloader/h/g$b;->b:J

    return-void
.end method
