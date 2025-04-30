.class Lcom/papa/gsyvideoplayer/player/d$a;
.super Ljava/lang/Object;
.source "IjkPlayerManager.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnNativeInvokeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/player/d;->i(Landroid/content/Context;Landroid/os/Message;Ljava/util/List;Lcom/papa/gsyvideoplayer/cache/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/gsyvideoplayer/player/d;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/player/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/player/d$a;->a:Lcom/papa/gsyvideoplayer/player/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeInvoke(ILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
