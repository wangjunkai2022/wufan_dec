.class public Lcom/zxing/android/CaptureActivity;
.super Landroid/app/Activity;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field public static final m:Ljava/lang/String; = "RESULT"

.field private static final n:J = 0xc8L


# instance fields
.field private a:Lcom/zxing/android/decoding/CaptureActivityHandler;

.field private b:Lcom/zxing/android/view/ViewfinderView;

.field private c:Landroid/view/SurfaceView;

.field private d:Z

.field private e:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Lcom/zxing/android/decoding/h;

.field private h:Landroid/media/MediaPlayer;

.field private i:Z

.field private j:Z

.field k:Lcom/zxing/android/camera/c;

.field private final l:Landroid/media/MediaPlayer$OnCompletionListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    new-instance v0, Lcom/zxing/android/CaptureActivity$c;

    invoke-direct {v0, p0}, Lcom/zxing/android/CaptureActivity$c;-><init>(Lcom/zxing/android/CaptureActivity;)V

    iput-object v0, p0, Lcom/zxing/android/CaptureActivity;->l:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method private f()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/zxing/android/CaptureActivity;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->h:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 3
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/zxing/android/CaptureActivity;->h:Landroid/media/MediaPlayer;

    .line 4
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 5
    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->h:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/zxing/android/CaptureActivity;->l:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "qrbeep.ogg"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/zxing/android/CaptureActivity;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    .line 8
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    .line 9
    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 10
    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->h:Landroid/media/MediaPlayer;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 11
    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/zxing/android/CaptureActivity;->h:Landroid/media/MediaPlayer;

    :cond_0
    :goto_0
    return-void
.end method

.method private g(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->k:Lcom/zxing/android/camera/c;

    invoke-virtual {v0, p1}, Lcom/zxing/android/camera/c;->f(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object p1, p0, Lcom/zxing/android/CaptureActivity;->a:Lcom/zxing/android/decoding/CaptureActivityHandler;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/zxing/android/decoding/CaptureActivityHandler;

    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->e:Ljava/util/Vector;

    iget-object v1, p0, Lcom/zxing/android/CaptureActivity;->f:Ljava/lang/String;

    invoke-direct {p1, p0, v0, v1}, Lcom/zxing/android/decoding/CaptureActivityHandler;-><init>(Lcom/zxing/android/CaptureActivity;Ljava/util/Vector;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/zxing/android/CaptureActivity;->a:Lcom/zxing/android/decoding/CaptureActivityHandler;

    :catch_0
    :cond_0
    return-void
.end method

.method private h()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/zxing/android/CaptureActivity;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/zxing/android/CaptureActivity;->j:Z

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

.method private j(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7c7b\u578b:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n \u7ed3\u679c\uff1a"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5
    new-instance p2, Lcom/zxing/android/CaptureActivity$a;

    invoke-direct {p2, p0, p1}, Lcom/zxing/android/CaptureActivity$a;-><init>(Lcom/zxing/android/CaptureActivity;Lcom/google/zxing/Result;)V

    const-string p1, "\u786e\u5b9a"

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6
    new-instance p1, Lcom/zxing/android/CaptureActivity$b;

    invoke-direct {p1, p0}, Lcom/zxing/android/CaptureActivity$b;-><init>(Lcom/zxing/android/CaptureActivity;)V

    const-string p2, "\u91cd\u65b0\u626b\u63cf"

    invoke-virtual {v0, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    .line 7
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 8
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->b:Lcom/zxing/android/view/ViewfinderView;

    invoke-virtual {v0}, Lcom/zxing/android/view/ViewfinderView;->c()V

    return-void
.end method

.method public b()Lcom/zxing/android/camera/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->k:Lcom/zxing/android/camera/c;

    return-object v0
.end method

.method public c()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->a:Lcom/zxing/android/decoding/CaptureActivityHandler;

    return-object v0
.end method

.method public d()Lcom/zxing/android/view/ViewfinderView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->b:Lcom/zxing/android/view/ViewfinderView;

    return-object v0
.end method

.method public e(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/zxing/android/CaptureActivity;->g:Lcom/zxing/android/decoding/h;

    invoke-virtual {p2}, Lcom/zxing/android/decoding/h;->b()V

    .line 2
    invoke-direct {p0}, Lcom/zxing/android/CaptureActivity;->h()V

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

.method public i(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->a:Lcom/zxing/android/decoding/CaptureActivityHandler;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const p1, 0x7f0c0027

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f090f04

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    iput-object p1, p0, Lcom/zxing/android/CaptureActivity;->c:Landroid/view/SurfaceView;

    const p1, 0x7f091290

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zxing/android/view/ViewfinderView;

    iput-object p1, p0, Lcom/zxing/android/CaptureActivity;->b:Lcom/zxing/android/view/ViewfinderView;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/zxing/android/CaptureActivity;->d:Z

    .line 9
    new-instance p1, Lcom/zxing/android/decoding/h;

    invoke-direct {p1, p0}, Lcom/zxing/android/decoding/h;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/zxing/android/CaptureActivity;->g:Lcom/zxing/android/decoding/h;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->g:Lcom/zxing/android/decoding/h;

    invoke-virtual {v0}, Lcom/zxing/android/decoding/h;->c()V

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v0

    :cond_0
    const/16 v1, 0x50

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1b

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->a:Lcom/zxing/android/decoding/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/zxing/android/decoding/CaptureActivityHandler;->a()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/zxing/android/CaptureActivity;->a:Lcom/zxing/android/decoding/CaptureActivityHandler;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->k:Lcom/zxing/android/camera/c;

    invoke-virtual {v0}, Lcom/zxing/android/camera/c;->b()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 4
    :cond_0
    new-instance v0, Lcom/zxing/android/camera/c;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/zxing/android/camera/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zxing/android/CaptureActivity;->k:Lcom/zxing/android/camera/c;

    .line 5
    iget-object v2, p0, Lcom/zxing/android/CaptureActivity;->b:Lcom/zxing/android/view/ViewfinderView;

    invoke-virtual {v2, v0}, Lcom/zxing/android/view/ViewfinderView;->setCameraManager(Lcom/zxing/android/camera/c;)V

    .line 6
    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->c:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 7
    iget-boolean v2, p0, Lcom/zxing/android/CaptureActivity;->d:Z

    if-eqz v2, :cond_1

    .line 8
    invoke-direct {p0, v0}, Lcom/zxing/android/CaptureActivity;->g(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v2, 0x3

    .line 10
    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    :goto_0
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/zxing/android/CaptureActivity;->e:Ljava/util/Vector;

    .line 12
    iput-object v0, p0, Lcom/zxing/android/CaptureActivity;->f:Ljava/lang/String;

    .line 13
    iput-boolean v1, p0, Lcom/zxing/android/CaptureActivity;->i:Z

    const-string v0, "audio"

    .line 14
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 15
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/zxing/android/CaptureActivity;->i:Z

    .line 17
    :cond_2
    invoke-direct {p0}, Lcom/zxing/android/CaptureActivity;->f()V

    .line 18
    iput-boolean v1, p0, Lcom/zxing/android/CaptureActivity;->j:Z

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/zxing/android/CaptureActivity;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/zxing/android/CaptureActivity;->d:Z

    .line 3
    invoke-direct {p0, p1}, Lcom/zxing/android/CaptureActivity;->g(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/zxing/android/CaptureActivity;->d:Z

    return-void
.end method
