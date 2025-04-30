.class public Lcom/ss/android/socialbase/downloader/exception/b;
.super Lcom/ss/android/socialbase/downloader/exception/BaseException;
.source "DownloadHttpException.java"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    .line 2
    iput p2, p0, Lcom/ss/android/socialbase/downloader/exception/b;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/socialbase/downloader/exception/b;->a:I

    return v0
.end method
