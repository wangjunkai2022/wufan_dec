.class Lcom/join/mgps/fragment/GmaeFormPostFragment$j;
.super Ljava/lang/Object;
.source "GmaeFormPostFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/GmaeFormPostFragment;->playVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/GmaeFormPostFragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/GmaeFormPostFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$j;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$j;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    invoke-virtual {p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h1()V

    .line 2
    sget-object p1, Lcom/join/mgps/fragment/GmaeFormPostFragment;->P0:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string p2, "\u89c6\u9891\u64ad\u653e\u5931\u8d25"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
