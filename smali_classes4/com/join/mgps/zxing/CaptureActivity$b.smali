.class Lcom/join/mgps/zxing/CaptureActivity$b;
.super Ljava/lang/Object;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/zxing/CaptureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/zxing/CaptureActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/zxing/CaptureActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/zxing/CaptureActivity$b;->a:Lcom/join/mgps/zxing/CaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method
