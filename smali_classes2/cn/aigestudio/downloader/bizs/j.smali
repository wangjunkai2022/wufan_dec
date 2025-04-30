.class Lcn/aigestudio/downloader/bizs/j;
.super Ljava/lang/Object;
.source "DLThreadInfo.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:J

.field d:J

.field volatile e:Z

.field volatile f:Z

.field volatile g:Z

.field volatile h:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/aigestudio/downloader/bizs/j;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcn/aigestudio/downloader/bizs/j;->b:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcn/aigestudio/downloader/bizs/j;->c:J

    .line 5
    iput-wide p5, p0, Lcn/aigestudio/downloader/bizs/j;->d:J

    return-void
.end method
