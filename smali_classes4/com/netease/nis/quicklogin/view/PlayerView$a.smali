.class Lcom/netease/nis/quicklogin/view/PlayerView$a;
.super Ljava/lang/Object;
.source "PlayerView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/view/PlayerView;->d()V
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
    iput-object p1, p0, Lcom/netease/nis/quicklogin/view/PlayerView$a;->a:Lcom/netease/nis/quicklogin/view/PlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/nis/quicklogin/view/PlayerView$a$a;

    invoke-direct {v0, p0}, Lcom/netease/nis/quicklogin/view/PlayerView$a$a;-><init>(Lcom/netease/nis/quicklogin/view/PlayerView$a;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method
