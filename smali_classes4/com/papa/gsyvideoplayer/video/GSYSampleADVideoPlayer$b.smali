.class public Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer$b;
.super Lcom/papa/gsyvideoplayer/model/b;
.source "GSYSampleADVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static e:I = 0x0

.field public static f:I = 0x1


# instance fields
.field private c:I

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer$b;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/papa/gsyvideoplayer/model/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget p1, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer$b;->e:I

    iput p1, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer$b;->c:I

    .line 4
    iput p3, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer$b;->c:I

    .line 5
    iput-boolean p4, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer$b;->d:Z

    return-void
.end method


# virtual methods
.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer$b;->d:Z

    return v0
.end method

.method public f(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer$b;->d:Z

    return-void
.end method

.method public g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer$b;->c:I

    return-void
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer$b;->c:I

    return v0
.end method
