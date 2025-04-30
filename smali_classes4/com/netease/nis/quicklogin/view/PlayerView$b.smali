.class Lcom/netease/nis/quicklogin/view/PlayerView$b;
.super Ljava/lang/Object;
.source "PlayerView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/view/PlayerView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/quicklogin/view/PlayerView;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/view/PlayerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/view/PlayerView$b;->a:Lcom/netease/nis/quicklogin/view/PlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/nis/quicklogin/view/PlayerView$b;->a:Lcom/netease/nis/quicklogin/view/PlayerView;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/view/PlayerView;->a(Lcom/netease/nis/quicklogin/view/PlayerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/nis/quicklogin/view/PlayerView$b;->a:Lcom/netease/nis/quicklogin/view/PlayerView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    :cond_0
    return-void
.end method
