.class Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;
.super Landroid/content/BroadcastReceiver;
.source "JCVideoPlayerStandard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;


# direct methods
.method constructor <init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "level"

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "scale"

    const/16 v2, 0x64

    .line 4
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    mul-int/lit8 p1, p1, 0x64

    .line 5
    div-int/2addr p1, p2

    const/16 p2, 0xf

    if-ge p1, p2, :cond_0

    .line 6
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->V0:Landroid/widget/ImageView;

    sget p2, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_battery_level_10:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x28

    if-lt p1, p2, :cond_1

    if-ge p1, v1, :cond_1

    .line 7
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->V0:Landroid/widget/ImageView;

    sget p2, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_battery_level_30:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x3c

    if-lt p1, v1, :cond_2

    if-ge p1, p2, :cond_2

    .line 8
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->V0:Landroid/widget/ImageView;

    sget p2, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_battery_level_50:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x50

    if-lt p1, p2, :cond_3

    if-ge p1, v1, :cond_3

    .line 9
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->V0:Landroid/widget/ImageView;

    sget p2, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_battery_level_70:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    const/16 p2, 0x5f

    if-lt p1, v1, :cond_4

    if-ge p1, p2, :cond_4

    .line 10
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->V0:Landroid/widget/ImageView;

    sget p2, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_battery_level_90:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_4
    if-lt p1, p2, :cond_5

    if-gt p1, v2, :cond_5

    .line 11
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->V0:Landroid/widget/ImageView;

    sget p2, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_battery_level_100:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 12
    :cond_5
    :goto_0
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    invoke-static {p2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->V(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;)Landroid/content/BroadcastReceiver;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 13
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    invoke-static {p1, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->W(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;Z)Z

    :cond_6
    return-void
.end method
