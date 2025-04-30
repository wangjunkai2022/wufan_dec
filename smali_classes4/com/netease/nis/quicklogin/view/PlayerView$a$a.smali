.class Lcom/netease/nis/quicklogin/view/PlayerView$a$a;
.super Ljava/lang/Object;
.source "PlayerView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/view/PlayerView$a;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/quicklogin/view/PlayerView$a;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/view/PlayerView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/view/PlayerView$a$a;->a:Lcom/netease/nis/quicklogin/view/PlayerView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/netease/nis/quicklogin/view/PlayerView$a$a;->a:Lcom/netease/nis/quicklogin/view/PlayerView$a;

    iget-object p1, p1, Lcom/netease/nis/quicklogin/view/PlayerView$a;->a:Lcom/netease/nis/quicklogin/view/PlayerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
