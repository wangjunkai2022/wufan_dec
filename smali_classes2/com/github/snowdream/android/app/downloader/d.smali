.class public Lcom/github/snowdream/android/app/downloader/d;
.super Ljava/lang/Object;
.source "DownloadSettings.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lcom/github/snowdream/android/app/downloader/d;->a:I

    .line 3
    iput v0, p0, Lcom/github/snowdream/android/app/downloader/d;->b:I

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/d;->c:Ljava/lang/String;

    return-void
.end method
