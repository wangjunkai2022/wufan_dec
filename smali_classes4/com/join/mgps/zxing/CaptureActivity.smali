.class public Lcom/join/mgps/zxing/CaptureActivity;
.super Lcom/BaseActivity;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final l:F = 0.1f

.field private static final m:J = 0xc8L


# instance fields
.field private a:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;

.field private b:Lcom/join/mgps/zxing/view/ViewfinderView;

.field private c:Z

.field private d:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Lcom/join/mgps/zxing/decoding/g;

.field private g:Landroid/media/MediaPlayer;

.field private h:Z

.field private i:Z

.field private j:Landroid/widget/Button;

.field private final k:Landroid/media/MediaPlayer$OnCompletionListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/join/mgps/zxing/CaptureActivity$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/zxing/CaptureActivity$b;-><init>(Lcom/join/mgps/zxing/CaptureActivity;)V

    iput-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->k:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method private I0()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->g:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 3
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/zxing/CaptureActivity;->g:Landroid/media/MediaPlayer;

    .line 4
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->g:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/join/mgps/zxing/CaptureActivity;->k:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f100000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/zxing/CaptureActivity;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 8
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    .line 9
    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 10
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->g:Landroid/media/MediaPlayer;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->g:Landroid/media/MediaPlayer;

    :cond_0
    :goto_0
    return-void
.end method

.method private J0(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/mgps/zxing/camera/c;->c()Lcom/join/mgps/zxing/camera/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/zxing/camera/c;->h(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/zxing/CaptureActivity;->a:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;

    iget-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->d:Ljava/util/Vector;

    iget-object v1, p0, Lcom/join/mgps/zxing/CaptureActivity;->e:Ljava/lang/String;

    invoke-direct {p1, p0, v0, v1}, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;-><init>(Lcom/join/mgps/zxing/CaptureActivity;Ljava/util/Vector;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/join/mgps/zxing/CaptureActivity;->a:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;

    :catch_0
    :cond_0
    return-void
.end method

.method private K0()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->g:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->i:Z

    if-eqz v0, :cond_1

    const-string v0, "vibrator"

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0xc8

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_1
    return-void
.end method


# virtual methods
.method public E0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->b:Lcom/join/mgps/zxing/view/ViewfinderView;

    invoke-virtual {v0}, Lcom/join/mgps/zxing/view/ViewfinderView;->c()V

    return-void
.end method

.method public F0()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->a:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;

    return-object v0
.end method

.method public G0()Lcom/join/mgps/zxing/view/ViewfinderView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->b:Lcom/join/mgps/zxing/view/ViewfinderView;

    return-object v0
.end method

.method public H0(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/join/mgps/zxing/CaptureActivity;->f:Lcom/join/mgps/zxing/decoding/g;

    invoke-virtual {p2}, Lcom/join/mgps/zxing/decoding/g;->b()V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/zxing/CaptureActivity;->K0()V

    .line 3
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    const-string p2, "Scan failed!"

    .line 5
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "result"

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c060a

    .line 2
    invoke-virtual {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/zxing/camera/c;->g(Landroid/content/Context;)V

    const p1, 0x7f09128f

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/zxing/view/ViewfinderView;

    iput-object p1, p0, Lcom/join/mgps/zxing/CaptureActivity;->b:Lcom/join/mgps/zxing/view/ViewfinderView;

    const p1, 0x7f0901bd

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/join/mgps/zxing/CaptureActivity;->j:Landroid/widget/Button;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/zxing/CaptureActivity;->c:Z

    .line 7
    new-instance p1, Lcom/join/mgps/zxing/decoding/g;

    invoke-direct {p1, p0}, Lcom/join/mgps/zxing/decoding/g;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/join/mgps/zxing/CaptureActivity;->f:Lcom/join/mgps/zxing/decoding/g;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->f:Lcom/join/mgps/zxing/decoding/g;

    invoke-virtual {v0}, Lcom/join/mgps/zxing/decoding/g;->c()V

    .line 2
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->a:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->a()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->a:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;

    .line 5
    :cond_0
    invoke-static {}, Lcom/join/mgps/zxing/camera/c;->c()Lcom/join/mgps/zxing/camera/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/zxing/camera/c;->b()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    const v0, 0x7f090c48

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 3
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 4
    iget-boolean v1, p0, Lcom/join/mgps/zxing/CaptureActivity;->c:Z

    if-eqz v1, :cond_0

    .line 5
    invoke-direct {p0, v0}, Lcom/join/mgps/zxing/CaptureActivity;->J0(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v1, 0x3

    .line 7
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    :goto_0
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->d:Ljava/util/Vector;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->e:Ljava/lang/String;

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->h:Z

    const-string v1, "audio"

    .line 11
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 12
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Lcom/join/mgps/zxing/CaptureActivity;->h:Z

    .line 14
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/zxing/CaptureActivity;->I0()V

    .line 15
    iput-boolean v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->i:Z

    .line 16
    iget-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->j:Landroid/widget/Button;

    new-instance v1, Lcom/join/mgps/zxing/CaptureActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/zxing/CaptureActivity$a;-><init>(Lcom/join/mgps/zxing/CaptureActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->c:Z

    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/zxing/CaptureActivity;->J0(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/zxing/CaptureActivity;->c:Z

    return-void
.end method
