.class Lcom/netease/nis/quicklogin/view/PlayerView$c;
.super Ljava/lang/Object;
.source "PlayerView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/view/PlayerView;->c()V
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
    iput-object p1, p0, Lcom/netease/nis/quicklogin/view/PlayerView$c;->a:Lcom/netease/nis/quicklogin/view/PlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[PlayerView#monitorOnErrorListener] onError what:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " extra:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/netease/nis/quicklogin/view/PlayerView$c;->a:Lcom/netease/nis/quicklogin/view/PlayerView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u65e0\u6cd5\u64ad\u653e\u6b64\u89c6\u9891,\u8bf7\u68c0\u67e5\u89c6\u9891\u6587\u4ef6\u662f\u5426\u635f\u574f"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 3
    iget-object p1, p0, Lcom/netease/nis/quicklogin/view/PlayerView$c;->a:Lcom/netease/nis/quicklogin/view/PlayerView;

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/view/PlayerView;->e()V

    const/4 p1, 0x1

    return p1
.end method
