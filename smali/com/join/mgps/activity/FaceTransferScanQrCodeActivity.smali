.class public Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;
.super Lcom/join/mgps/baseactivity/BaseLoadingActivity;
.source "FaceTransferScanQrCodeActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$e;
    }
.end annotation


# static fields
.field private static final G:Ljava/lang/String;

.field private static final H:F = 0.1f

.field public static final I:I = 0x7b

.field private static final J:J = 0xc8L


# instance fields
.field private A:Z

.field B:Ljava/lang/Runnable;

.field C:Ljava/lang/Runnable;

.field D:Lcom/join/mgps/service/SocketClientService$a;

.field E:Landroid/content/ServiceConnection;

.field private final F:Landroid/media/MediaPlayer$OnCompletionListener;

.field private d:Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;

.field private e:Lcom/zxing/android/view/ViewfinderView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Z

.field private i:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Lcom/join/mgps/zxing/decoding/g;

.field private l:Landroid/media/MediaPlayer;

.field private m:Z

.field private n:Z

.field o:Landroid/content/Context;

.field p:Lcom/join/mgps/helper/ApWifiManager;

.field q:Lcom/join/mgps/Util/WifiUtils;

.field r:Lcom/join/mgps/Util/f;

.field s:Landroid/view/SurfaceView;

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field v:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$e;

.field w:Z

.field x:Z

.field y:Z

.field z:Lcom/zxing/android/camera/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->G:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->q:Lcom/join/mgps/Util/WifiUtils;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->r:Lcom/join/mgps/Util/f;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->t:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->u:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->v:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$e;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->w:Z

    .line 8
    iput-boolean v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->x:Z

    .line 9
    iput-boolean v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->y:Z

    .line 10
    new-instance v1, Lcom/join/mgps/activity/l;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/l;-><init>(Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;)V

    iput-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->B:Ljava/lang/Runnable;

    .line 11
    new-instance v1, Lcom/join/mgps/activity/k;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/k;-><init>(Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;)V

    iput-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->C:Ljava/lang/Runnable;

    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->D:Lcom/join/mgps/service/SocketClientService$a;

    .line 13
    new-instance v0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$b;-><init>(Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->E:Landroid/content/ServiceConnection;

    .line 14
    new-instance v0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$c;-><init>(Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->F:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public static synthetic J0(Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->Y0()V

    return-void
.end method

.method public static synthetic K0(Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->X0()V

    return-void
.end method

.method static synthetic L0()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->G:Ljava/lang/String;

    return-object v0
.end method

.method private R0()V
    .locals 2

    const-string v0, "android.permission.CAMERA"

    .line 1
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->c1()V

    return-void
.end method

.method private V0()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->l:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 3
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->l:Landroid/media/MediaPlayer;

    .line 4
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->l:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->F:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f100000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->l:Landroid/media/MediaPlayer;

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
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->l:Landroid/media/MediaPlayer;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->l:Landroid/media/MediaPlayer;

    :cond_0
    :goto_0
    return-void
.end method

.method private W0(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->z:Lcom/zxing/android/camera/c;

    invoke-virtual {v0, p1}, Lcom/zxing/android/camera/c;->f(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->d:Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;

    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->i:Ljava/util/Vector;

    iget-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->j:Ljava/lang/String;

    invoke-direct {p1, p0, v0, v1}, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;-><init>(Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;Ljava/util/Vector;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->d:Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;

    :catch_0
    :cond_0
    return-void
.end method

.method private synthetic X0()V
    .locals 2

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->A:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u624b\u52a8\u8fde\u63a5\u7f51\u7edc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic Y0()V
    .locals 4

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->A:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/r2;->h(Landroid/content/Context;)Lcom/join/mgps/Util/r2;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->t:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->u:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/join/mgps/Util/r2;->c(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/r2;->a(Landroid/net/wifi/WifiConfiguration;)Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->B:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private Z0()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->n:Z

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

.method private c1()V
    .locals 3

    const v0, 0x7f090c48

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->s:Landroid/view/SurfaceView;

    .line 2
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 3
    iget-boolean v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->h:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->W0(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v1, 0x3

    .line 6
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    :goto_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->i:Ljava/util/Vector;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->j:Ljava/lang/String;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->m:Z

    const-string v1, "audio"

    .line 10
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 11
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->m:Z

    .line 13
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->V0()V

    .line 14
    iput-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->n:Z

    return-void
.end method


# virtual methods
.method M0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->H0()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->p:Lcom/join/mgps/helper/ApWifiManager;

    iget-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->t:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/helper/ApWifiManager;->connectApWifi(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->B:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2ee0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method N0()V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/mgps/service/SocketClientService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->q:Lcom/join/mgps/Util/WifiUtils;

    invoke-virtual {v1}, Lcom/join/mgps/Util/WifiUtils;->getLocalIPAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".1"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connected2Service: host"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":::\u672c\u5730\u5730\u5740:::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "host"

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->E:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 9
    iput-boolean v2, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->y:Z

    return-void
.end method

.method public O0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->e:Lcom/zxing/android/view/ViewfinderView;

    invoke-virtual {v0}, Lcom/zxing/android/view/ViewfinderView;->c()V

    return-void
.end method

.method public P0()Lcom/zxing/android/camera/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->z:Lcom/zxing/android/camera/c;

    return-object v0
.end method

.method public Q0()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->d:Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;

    return-object v0
.end method

.method public S0()Lcom/zxing/android/view/ViewfinderView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->e:Lcom/zxing/android/view/ViewfinderView;

    return-object v0
.end method

.method T0()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/mgps/activity/GameTransferActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "Flag"

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public U0(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->k:Lcom/join/mgps/zxing/decoding/g;

    invoke-virtual {p2}, Lcom/join/mgps/zxing/decoding/g;->b()V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->Z0()V

    .line 3
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleDecode: \u626b\u63cf\u7ed3\u679c"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ""

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string p1, "Scan failed!"

    .line 6
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_0
    const-string p2, ":"

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 8
    array-length p2, p1

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDecode: \u626b\u63cf\u7ed3\u679c::::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":::::size::::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    const/4 p2, 0x1

    .line 10
    aget-object v0, p1, p2

    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->t:Ljava/lang/String;

    const/4 v0, 0x3

    .line 11
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->u:Ljava/lang/String;

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->q:Lcom/join/mgps/Util/WifiUtils;

    invoke-virtual {p1}, Lcom/join/mgps/Util/WifiUtils;->isWifiEnable()Z

    move-result p1

    if-nez p1, :cond_1

    .line 13
    iput-boolean p2, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->w:Z

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->r:Lcom/join/mgps/Util/f;

    invoke-virtual {p1}, Lcom/join/mgps/Util/f;->f()V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->q:Lcom/join/mgps/Util/WifiUtils;

    iget-object p2, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->o:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/WifiUtils;->openWifi(Landroid/content/Context;)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->M0()V

    .line 17
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->s:Landroid/view/SurfaceView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->e:Lcom/zxing/android/view/ViewfinderView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->a1()V

    goto :goto_1

    :cond_2
    const p1, 0x7f1100d9

    .line 20
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method a1()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    new-instance v1, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$e;-><init>(Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;)V

    iput-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->v:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$e;

    .line 6
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method b1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method d1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->v:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public getLoadingLayoutResID()I
    .locals 1

    const v0, 0x7f090dba

    return v0
.end method

.method public getLoadingMarginTop()I
    .locals 4

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HM 1SLTETD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    .line 3
    invoke-super {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->getLoadingMarginTop()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    double-to-int v0, v2

    return v0

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->getLoadingMarginTop()I

    move-result v0

    return v0
.end method

.method initView()V
    .locals 2

    const v0, 0x7f09128f

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zxing/android/view/ViewfinderView;

    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->e:Lcom/zxing/android/view/ViewfinderView;

    const v0, 0x7f091033

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f09013e

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->g:Landroid/widget/ImageView;

    .line 4
    new-instance v1, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$a;-><init>(Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->f:Landroid/widget/TextView;

    const v1, 0x7f1103ae

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->h:Z

    .line 7
    new-instance v0, Lcom/join/mgps/zxing/decoding/g;

    invoke-direct {v0, p0}, Lcom/join/mgps/zxing/decoding/g;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->k:Lcom/join/mgps/zxing/decoding/g;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Lcom/zxing/android/camera/c;

    invoke-direct {p1, p0}, Lcom/zxing/android/camera/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->z:Lcom/zxing/android/camera/c;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f11039b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->setLoadingHintMsg(Ljava/lang/String;)V

    const p1, 0x7f0c01d4

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->setContentView(I)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->o:Landroid/content/Context;

    .line 7
    new-instance p1, Lcom/join/mgps/helper/ApWifiManager;

    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->o:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/join/mgps/helper/ApWifiManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->p:Lcom/join/mgps/helper/ApWifiManager;

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->o:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->q:Lcom/join/mgps/Util/WifiUtils;

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->o:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/f;->i(Landroid/content/Context;)Lcom/join/mgps/Util/f;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->r:Lcom/join/mgps/Util/f;

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->E0()V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->initView()V

    .line 12
    invoke-direct {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->R0()V

    .line 13
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/c;->t(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->k:Lcom/join/mgps/zxing/decoding/g;

    invoke-virtual {v0}, Lcom/join/mgps/zxing/decoding/g;->c()V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->d1()V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->b1()V

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->y(Ljava/lang/Object;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->stopService()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->d:Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;->a()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->d:Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->z:Lcom/zxing/android/camera/c;

    invoke-virtual {v0}, Lcom/zxing/android/camera/c;->b()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    aget p2, p3, p1

    if-nez p2, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->c1()V

    goto :goto_0

    :cond_1
    const-string p2, "android.permission.CAMERA"

    .line 4
    invoke-static {p0, p2}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "\u626b\u63cf\u4e8c\u7ef4\u7801\u9700\u8981\u76f8\u673a\u6743\u9650,\u8bf7\u6388\u6743\u76f8\u673a\u6743\u9650"

    .line 5
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    const-string p2, "\u6ca1\u6709\u83b7\u53d6\u5230\u6743\u9650,\u8bf7\u6388\u6743\u76f8\u673a\u6743\u9650"

    .line 7
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

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

    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->z:Lcom/zxing/android/camera/c;

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->e:Lcom/zxing/android/view/ViewfinderView;

    invoke-virtual {v2, v0}, Lcom/zxing/android/view/ViewfinderView;->setCameraManager(Lcom/zxing/android/camera/c;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->s:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 7
    iget-boolean v2, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->h:Z

    if-eqz v2, :cond_1

    .line 8
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->W0(Landroid/view/SurfaceHolder;)V

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
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->i:Ljava/util/Vector;

    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->j:Ljava/lang/String;

    .line 13
    iput-boolean v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->m:Z

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
    iput-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->m:Z

    .line 17
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->V0()V

    .line 18
    iput-boolean v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->n:Z

    return-void
.end method

.method public onSocketStatusEvent(Lcom/join/mgps/socket/entity/f;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    .line 1
    sget-object v2, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->G:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v4, "onSocketStatusEvent: 0000"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    invoke-static {v1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget p1, p1, Lcom/join/mgps/socket/entity/f;->a:I

    if-eq p1, v5, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->stopService()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    new-array p1, v0, [Ljava/lang/String;

    aput-object v2, p1, v3

    const-string v0, "onSocketStatusEvent: \u6210\u529f"

    aput-object v0, p1, v5

    .line 5
    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 6
    iput-boolean v5, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->A:Z

    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/p;->i0(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->T0()V

    :goto_0
    return-void
.end method

.method stopService()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->y:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->E:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/mgps/service/SocketClientService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->h:Z

    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->W0(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->h:Z

    return-void
.end method
