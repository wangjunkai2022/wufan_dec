.class public abstract Lorg/ppsspp/ppsspp/NativeActivity;
.super Landroid/app/Activity;
.source "NativeActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/papa91/arc/view/MenuViewListener;
.implements Lorg/ppsspp/ppsspp/NativeGLView$a;


# static fields
.field public static final BBK_IQOO:I = 0x1

.field public static final CLOSE_AD:I = 0xa

.field public static final COMPLAIN_PLAYER:I = 0xc

.field public static DEVICE_ID:Ljava/lang/String; = null

.field public static DEVICE_VERSION:Ljava/lang/String; = null

.field private static final EXIT_AD_KEY:I = 0x65

.field public static ExitAdImageFilePath:Ljava/lang/String; = null

.field public static final GIONEE_SOFTMANAGER:I = 0x2

.field public static GameID:Ljava/lang/String; = null

.field public static final LIKT_TYPE_TO_HTML5:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "EmuBaseActivity"

.field private static final PAPA_EMU_INTENT_EXTRA_ACTION_FROM:Ljava/lang/String; = "PAPA_EMU_INTENT_EXTRA_ACTION_FROM"

.field public static final PAY_CHEAT:I = 0x6

.field public static final PAY_COIN:I = 0x4

.field public static final PAY_JOIN:I = 0x7

.field public static final PAY_SP:I = 0x3

.field public static final RAISE_VIP:I = 0xb

.field public static final REQUEST_CODE_CAMERA_PERMISSION:I = 0x3

.field public static final REQUEST_CODE_LOCATION_PERMISSION:I = 0x2

.field public static final REQUEST_CODE_STORAGE_PERMISSION:I = 0x1

.field private static RESULT_LOAD_IMAGE:I = 0x1

.field public static RoomID:Ljava/lang/String; = null

.field public static final SELECT_CHEAT:I = 0x5

.field public static final SELECT_COIN:I = 0x2

.field public static final SELECT_JOIN:I = 0x8

.field public static final SELECT_SP:I = 0x1

.field public static final SHOW_AD:I = 0x9

.field private static TAG:Ljava/lang/String; = "PPSSPPNativeActivity"

.field private static final TO_PREFECTURE_KEY:I = 0x64

.field public static UserID:Ljava/lang/String; = null

.field public static final VIVO_FILLET:I = 0x8

.field public static final VIVO_NOTCH:I = 0x20

.field public static Version:Ljava/lang/String; = null

.field static actionEmuintent:Ljava/lang/String; = null

.field public static appPackName:Ljava/lang/String; = null

.field public static final appPackName_aso4:Ljava/lang/String; = "com.papa91.fc.aso4"

.field public static final appPackName_mgsim:Ljava/lang/String; = "com.join.android.app.mgsim"

.field public static final appPackName_mha:Ljava/lang/String; = "com.join.android.app.mgsim.mha"

.field public static assetsPath:Ljava/lang/String; = null

.field public static channelId:Ljava/lang/String; = null

.field public static className:Ljava/lang/String; = null

.field public static commandParameter:Ljava/lang/String; = null

.field public static enableAudio:Ljava/lang/String; = null

.field public static fid:I = 0x0

.field public static hasAd:Z = false

.field public static httpKeySign:Ljava/lang/String; = null

.field protected static initialized:Z = false

.field public static is_copy:Z = false

.field private static javaGL:Z = true

.field public static keyVaule:[I

.field private static mCameraHelper:Lorg/ppsspp/ppsspp/c;

.field private static mLocationHelper:Lorg/ppsspp/ppsspp/e;

.field public static m_VIP:I

.field private static payType:I

.field private static final permissionsForCamera:[Ljava/lang/String;

.field private static final permissionsForLocation:[Ljava/lang/String;

.field private static final permissionsForStorage:[Ljava/lang/String;

.field public static pspAdShowTime:J

.field public static pspAdShowTimeSwitch:J

.field public static romName:Ljava/lang/String;

.field public static romPath:Ljava/lang/String;

.field public static runCommand:Ljava/lang/String;

.field public static screenMOde:Ljava/lang/String;

.field public static server_ip:Ljava/lang/String;

.field protected static server_port:Ljava/lang/String;

.field public static soPath:Ljava/lang/String;

.field public static spLock:I

.field protected static startMode:I

.field public static startTIme:J

.field private static systemSettingType:I

.field public static token:Ljava/lang/String;

.field public static tourist:Z

.field public static ugcPath:Ljava/lang/String;

.field public static version:Ljava/lang/String;

.field public static vibriorMode:Ljava/lang/String;


# instance fields
.field protected AD_appId:Ljava/lang/String;

.field private APP_Version:I

.field protected adExitRootView:Landroid/widget/FrameLayout;

.field public allowPeripheralJoin:Z

.field private appCodeIsBigger160:Z

.field private audioFocusChangeListener:Lorg/ppsspp/ppsspp/a;

.field private audioManager:Landroid/media/AudioManager;

.field private bFirstCreated:Z

.field private badOrientationCount:I

.field private crc_link_type_val:Ljava/lang/String;

.field private densityDpi:F

.field private desiredSize:Landroid/graphics/Point;

.field fullScreenCfg:I

.field private fullScreenFlag:Z

.field private gpixelHeight:I

.field private gpixelWidth:I

.field private hideHandler:Landroid/os/Handler;

.field private hideRunnable:Ljava/lang/Runnable;

.field private inputPlayerA:Lorg/ppsspp/ppsspp/d;

.field private inputPlayerADesc:Ljava/lang/String;

.field private inputPlayerB:Lorg/ppsspp/ppsspp/d;

.field private inputPlayerC:Lorg/ppsspp/ppsspp/d;

.field private isXperiaPlay:Z

.field protected jstring:Ljava/lang/String;

.field private jump_type:Ljava/lang/String;

.field private link_type:Ljava/lang/String;

.field private link_type_val:Ljava/lang/String;

.field private mEmulationRunner:Ljava/lang/Runnable;

.field private mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

.field private mRenderLoopThread:Ljava/lang/Thread;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceView:Lorg/ppsspp/ppsspp/NativeSurfaceView;

.field protected m_SVIP:I

.field protected menuView:Lcom/papa91/arc/view/MenuView;

.field messData:Ljava/lang/String;

.field protected nativeRenderer:Lorg/ppsspp/ppsspp/NativeRenderer;

.field public onAdShwoIsCloseMine:Z

.field protected onExitBannerId:Ljava/lang/String;

.field protected onLoadBannerId:Ljava/lang/String;

.field protected onMenuOpenBannerId:Ljava/lang/String;

.field private optimalFramesPerBuffer:I

.field private optimalSampleRate:I

.field private pixelHeight:I

.field private pixelWidth:I

.field private powerManager:Landroid/os/PowerManager;

.field private refreshRate:F

.field protected rootView:Landroid/widget/RelativeLayout;

.field private shortcutParam:Ljava/lang/String;

.field protected shuttingDown:Z

.field private sustainedPerfSupported:Z

.field private tpl_type:Ljava/lang/String;

.field protected uiHider:Lcom/papa91/wrapper/SystemUiHider;

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->permissionsForStorage:[Ljava/lang/String;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->permissionsForLocation:[Ljava/lang/String;

    const-string v0, "android.permission.CAMERA"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->permissionsForCamera:[Ljava/lang/String;

    const-string v0, ""

    .line 4
    sput-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    const-string v1, "0"

    .line 5
    sput-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 6
    sput-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    const-string v2, "com.join.android.app.mgsim.wufun"

    .line 7
    sput-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->appPackName:Ljava/lang/String;

    const/4 v2, 0x0

    .line 8
    sput v2, Lorg/ppsspp/ppsspp/NativeActivity;->payType:I

    const/4 v3, 0x4

    new-array v3, v3, [I

    .line 9
    sput-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->keyVaule:[I

    const-string v3, "1"

    .line 10
    sput-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->screenMOde:Ljava/lang/String;

    .line 11
    sput-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->enableAudio:Ljava/lang/String;

    .line 12
    sput-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->vibriorMode:Ljava/lang/String;

    const-string v3, "1.5.0"

    .line 13
    sput-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->version:Ljava/lang/String;

    .line 14
    sput v2, Lorg/ppsspp/ppsspp/NativeActivity;->fid:I

    const/4 v3, 0x0

    .line 15
    sput-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->ugcPath:Ljava/lang/String;

    .line 16
    sput v2, Lorg/ppsspp/ppsspp/NativeActivity;->startMode:I

    const-string v4, "5369"

    .line 17
    sput-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->server_port:Ljava/lang/String;

    .line 18
    sput-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->Version:Ljava/lang/String;

    .line 19
    sput-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->RoomID:Ljava/lang/String;

    const-wide/16 v4, 0x0

    .line 20
    sput-wide v4, Lorg/ppsspp/ppsspp/NativeActivity;->startTIme:J

    .line 21
    sput v2, Lorg/ppsspp/ppsspp/NativeActivity;->spLock:I

    .line 22
    sput-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->token:Ljava/lang/String;

    const/4 v1, 0x1

    .line 23
    sput-boolean v1, Lorg/ppsspp/ppsspp/NativeActivity;->tourist:Z

    .line 24
    sput v2, Lorg/ppsspp/ppsspp/NativeActivity;->systemSettingType:I

    .line 25
    sput v2, Lorg/ppsspp/ppsspp/NativeActivity;->m_VIP:I

    .line 26
    sput-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->DEVICE_VERSION:Ljava/lang/String;

    .line 27
    sput-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->DEVICE_ID:Ljava/lang/String;

    .line 28
    sput-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->httpKeySign:Ljava/lang/String;

    .line 29
    sput-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->ExitAdImageFilePath:Ljava/lang/String;

    .line 30
    sput-boolean v2, Lorg/ppsspp/ppsspp/NativeActivity;->hasAd:Z

    const-string v1, "com.papa.intent.activity.view.action.emuintent"

    .line 31
    sput-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->actionEmuintent:Ljava/lang/String;

    .line 32
    sput-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->className:Ljava/lang/String;

    const-string v1, "/mnt/sdcard/test/assets/"

    .line 33
    sput-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->assetsPath:Ljava/lang/String;

    .line 34
    sput-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->soPath:Ljava/lang/String;

    .line 35
    sput-wide v4, Lorg/ppsspp/ppsspp/NativeActivity;->pspAdShowTime:J

    .line 36
    sput-wide v4, Lorg/ppsspp/ppsspp/NativeActivity;->pspAdShowTimeSwitch:J

    .line 37
    sput-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->channelId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mRenderLoopThread:Ljava/lang/Thread;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->shortcutParam:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->bFirstCreated:Z

    .line 5
    iput-boolean v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->appCodeIsBigger160:Z

    .line 6
    iput v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->m_SVIP:I

    .line 7
    iput-boolean v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->onAdShwoIsCloseMine:Z

    .line 8
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->messData:Ljava/lang/String;

    .line 9
    iput v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->APP_Version:I

    const/4 v2, 0x1

    .line 10
    iput-boolean v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->allowPeripheralJoin:Z

    .line 11
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->jstring:Ljava/lang/String;

    .line 12
    new-instance v0, Lorg/ppsspp/ppsspp/NativeActivity$a;

    invoke-direct {v0, p0}, Lorg/ppsspp/ppsspp/NativeActivity$a;-><init>(Lorg/ppsspp/ppsspp/NativeActivity;)V

    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mEmulationRunner:Ljava/lang/Runnable;

    .line 13
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->desiredSize:Landroid/graphics/Point;

    .line 14
    iput v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->badOrientationCount:I

    .line 15
    iput-boolean v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->fullScreenFlag:Z

    .line 16
    iput v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->fullScreenCfg:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/ppsspp/ppsspp/NativeActivity;)Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$200(Lorg/ppsspp/ppsspp/NativeActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->updateSystemUiVisibility()V

    return-void
.end method

.method private applyCompat()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    .line 2
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    const/16 v1, 0x1706

    goto :goto_0

    :cond_0
    const/16 v1, 0x707

    .line 4
    :goto_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private clearHiderListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->uiHider:Lcom/papa91/wrapper/SystemUiHider;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/papa91/wrapper/SystemUiHider;->setOnVisibilityChangeListener(Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->hideHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->hideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private createDialogBuilderNew()Landroid/app/AlertDialog$Builder;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x10302d1

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance v1, Lorg/ppsspp/ppsspp/NativeActivity$d;

    invoke-direct {v1, p0}, Lorg/ppsspp/ppsspp/NativeActivity$d;-><init>(Lorg/ppsspp/ppsspp/NativeActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method private createDialogBuilderWithDeviceTheme()Landroid/app/AlertDialog$Builder;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method private createDialogBuilderWithDeviceThemeAndUiVisibility()Landroid/app/AlertDialog$Builder;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance v1, Lorg/ppsspp/ppsspp/NativeActivity$c;

    invoke-direct {v1, p0}, Lorg/ppsspp/ppsspp/NativeActivity$c;-><init>(Lorg/ppsspp/ppsspp/NativeActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method private createDialogBuilderWithTheme()Landroid/app/AlertDialog$Builder;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method private detectOpenGLES20()Z
    .locals 2

    const-string v0, "activity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    .line 3
    iget v0, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private detectOpenGLES30()Z
    .locals 2

    const-string v0, "activity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    .line 3
    iget v0, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v1, 0x30000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private detectOptimalAudioSettings()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->audioManager:Landroid/media/AudioManager;

    const-string v1, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->optimalFramesPerBuffer:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    :try_start_1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->audioManager:Landroid/media/AudioManager;

    const-string v1, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->optimalSampleRate:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public static gainAudioFocus(Landroid/media/AudioManager;Lorg/ppsspp/ppsspp/a;)V
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_0
    return-void
.end method

.method public static getInputDesc(Landroid/view/InputDevice;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/InputDevice;->getMotionRanges()Ljava/util/List;

    move-result-object p0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputDevice$MotionRange;

    .line 6
    invoke-virtual {v1}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getInputDeviceState(Landroid/view/InputEvent;)Lorg/ppsspp/ppsspp/d;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->inputPlayerA:Lorg/ppsspp/ppsspp/d;

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeActivity;->getInputDesc(Landroid/view/InputDevice;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->inputPlayerADesc:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Input player A registered: desc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->inputPlayerADesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    new-instance v0, Lorg/ppsspp/ppsspp/d;

    invoke-direct {v0, p1}, Lorg/ppsspp/ppsspp/d;-><init>(Landroid/view/InputDevice;)V

    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->inputPlayerA:Lorg/ppsspp/ppsspp/d;

    .line 6
    :cond_1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->inputPlayerA:Lorg/ppsspp/ppsspp/d;

    invoke-virtual {v0}, Lorg/ppsspp/ppsspp/d;->a()Landroid/view/InputDevice;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 7
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->inputPlayerA:Lorg/ppsspp/ppsspp/d;

    return-object p1

    .line 8
    :cond_2
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->inputPlayerB:Lorg/ppsspp/ppsspp/d;

    if-nez v0, :cond_3

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Input player B registered: desc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeActivity;->getInputDesc(Landroid/view/InputDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    new-instance v0, Lorg/ppsspp/ppsspp/d;

    invoke-direct {v0, p1}, Lorg/ppsspp/ppsspp/d;-><init>(Landroid/view/InputDevice;)V

    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->inputPlayerB:Lorg/ppsspp/ppsspp/d;

    .line 11
    :cond_3
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->inputPlayerB:Lorg/ppsspp/ppsspp/d;

    invoke-virtual {v0}, Lorg/ppsspp/ppsspp/d;->a()Landroid/view/InputDevice;

    move-result-object v0

    if-ne v0, p1, :cond_4

    .line 12
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->inputPlayerB:Lorg/ppsspp/ppsspp/d;

    return-object p1

    .line 13
    :cond_4
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->inputPlayerC:Lorg/ppsspp/ppsspp/d;

    if-nez v0, :cond_5

    .line 14
    new-instance v0, Lorg/ppsspp/ppsspp/d;

    invoke-direct {v0, p1}, Lorg/ppsspp/ppsspp/d;-><init>(Landroid/view/InputDevice;)V

    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->inputPlayerC:Lorg/ppsspp/ppsspp/d;

    .line 15
    :cond_5
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->inputPlayerC:Lorg/ppsspp/ppsspp/d;

    invoke-virtual {v0}, Lorg/ppsspp/ppsspp/d;->a()Landroid/view/InputDevice;

    move-result-object v0

    if-ne v0, p1, :cond_6

    .line 16
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->inputPlayerC:Lorg/ppsspp/ppsspp/d;

    return-object p1

    .line 17
    :cond_6
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->inputPlayerA:Lorg/ppsspp/ppsspp/d;

    return-object p1
.end method

.method private declared-synchronized joinRenderLoopThread()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    sget-boolean v0, Lorg/ppsspp/ppsspp/NativeActivity;->javaGL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mRenderLoopThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->exitEGLRenderLoop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mRenderLoopThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mRenderLoopThread:Ljava/lang/Thread;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static loseAudioFocus(Landroid/media/AudioManager;Lorg/ppsspp/ppsspp/a;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    return-void
.end method

.method private updateHider()V
    .locals 2

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->fullScreenFlag:Z

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lcom/papa91/wrapper/Wrapper;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 3
    :goto_0
    iput v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->fullScreenCfg:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->fullScreenCfg:I

    .line 5
    :goto_1
    iget v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->fullScreenCfg:I

    if-eqz v0, :cond_3

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->hideHandler:Landroid/os/Handler;

    .line 7
    new-instance v0, Lorg/ppsspp/ppsspp/NativeActivity$g;

    invoke-direct {v0, p0}, Lorg/ppsspp/ppsspp/NativeActivity$g;-><init>(Lorg/ppsspp/ppsspp/NativeActivity;)V

    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->hideRunnable:Ljava/lang/Runnable;

    const v0, 0x1020002

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->fullScreenCfg:I

    invoke-static {p0, v0, v1}, Lcom/papa91/wrapper/SystemUiHider;->getInstance(Landroid/app/Activity;Landroid/view/View;I)Lcom/papa91/wrapper/SystemUiHider;

    move-result-object v0

    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->uiHider:Lcom/papa91/wrapper/SystemUiHider;

    .line 9
    invoke-virtual {v0}, Lcom/papa91/wrapper/SystemUiHider;->setup()V

    .line 10
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->uiHider:Lcom/papa91/wrapper/SystemUiHider;

    new-instance v1, Lorg/ppsspp/ppsspp/NativeActivity$h;

    invoke-direct {v1, p0}, Lorg/ppsspp/ppsspp/NativeActivity$h;-><init>(Lorg/ppsspp/ppsspp/NativeActivity;)V

    invoke-virtual {v0, v1}, Lcom/papa91/wrapper/SystemUiHider;->setOnVisibilityChangeListener(Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;)V

    .line 11
    :cond_3
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->uiHider:Lcom/papa91/wrapper/SystemUiHider;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/papa91/wrapper/SystemUiHider;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->uiHider:Lcom/papa91/wrapper/SystemUiHider;

    invoke-virtual {v0}, Lcom/papa91/wrapper/SystemUiHider;->hide()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method private updateScreenRotation(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    const/4 p1, 0x6

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method private updateSustainedPerformanceMode()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->sustainedPerfSupported:Z

    if-eqz v0, :cond_1

    const-string v0, "sustainedPerformanceMode"

    .line 2
    invoke-static {v0}, Lorg/ppsspp/ppsspp/NativeApp;->queryConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/Window;->setSustainedPerformanceMode(Z)V

    goto :goto_1

    .line 5
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid perf mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    return-void
.end method

.method private updateSystemUiVisibility()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->useLowProfileButtons()Z

    move-result v0

    .line 2
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->useImmersive()Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit16 v0, v0, 0x1002

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->updateDisplayMeasurements()V

    return-void
.end method

.method private useImmersive()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "immersiveMode"

    .line 2
    invoke-static {v0}, Lorg/ppsspp/ppsspp/NativeApp;->queryConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public Initialize()V
    .locals 12

    const-string v0, "audio"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->audioManager:Landroid/media/AudioManager;

    .line 2
    new-instance v0, Lorg/ppsspp/ppsspp/a;

    invoke-direct {v0}, Lorg/ppsspp/ppsspp/a;-><init>()V

    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->audioFocusChangeListener:Lorg/ppsspp/ppsspp/a;

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 4
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->detectOptimalAudioSettings()V

    :cond_0
    const-string v1, "power"

    .line 5
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->powerManager:Landroid/os/PowerManager;

    const/16 v2, 0x18

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    .line 6
    invoke-virtual {v1}, Landroid/os/PowerManager;->isSustainedPerformanceModeSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iput-boolean v3, p0, Lorg/ppsspp/ppsspp/NativeActivity;->sustainedPerfSupported:Z

    const-string v1, "sustained_perf_supported"

    const-string v2, "1"

    .line 8
    invoke-static {v1, v2}, Lorg/ppsspp/ppsspp/NativeApp;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_1
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->isLandscape()Z

    move-result v1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Landscape: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 13
    :try_start_0
    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "uimode"

    .line 14
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/UiModeManager;

    .line 15
    invoke-virtual {v2}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    const/4 v5, 0x4

    if-eq v2, v5, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    .line 16
    :goto_0
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->IsXperiaPlay()Z

    move-result v3

    iput-boolean v3, p0, Lorg/ppsspp/ppsspp/NativeActivity;->isXperiaPlay:Z

    .line 17
    invoke-virtual {p0, v1}, Lorg/ppsspp/ppsspp/NativeActivity;->getApplicationLibraryDir(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v7

    .line 18
    new-instance v3, Ljava/io/File;

    invoke-static {p0}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 21
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto :goto_1

    :cond_4
    move-object v5, v4

    .line 22
    :goto_1
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 26
    iget v9, p0, Lorg/ppsspp/ppsspp/NativeActivity;->optimalFramesPerBuffer:I

    iget v10, p0, Lorg/ppsspp/ppsspp/NativeActivity;->optimalSampleRate:I

    invoke-static {v9, v10}, Lorg/ppsspp/ppsspp/NativeApp;->audioConfig(II)V

    .line 27
    iget-object v9, p0, Lorg/ppsspp/ppsspp/NativeActivity;->shortcutParam:Ljava/lang/String;

    sget-object v11, Landroid/os/Build;->BOARD:Ljava/lang/String;

    move v10, v0

    invoke-static/range {v1 .. v11}, Lorg/ppsspp/ppsspp/NativeApp;->init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "androidJavaGL"

    .line 28
    invoke-static {v1}, Lorg/ppsspp/ppsspp/NativeApp;->queryConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/ppsspp/ppsspp/NativeActivity;->javaGL:Z

    .line 29
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->sendInitialGrants()V

    .line 30
    invoke-static {p0}, Lorg/ppsspp/ppsspp/PowerSaveModeReceiver;->e(Landroid/app/Activity;)V

    const/16 v1, 0x9

    if-lt v0, v1, :cond_5

    const-string v1, "Initialize"

    .line 31
    invoke-direct {p0, v1}, Lorg/ppsspp/ppsspp/NativeActivity;->updateScreenRotation(Ljava/lang/String;)V

    .line 32
    :cond_5
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->detectOpenGLES20()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_2

    .line 33
    :cond_6
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->detectOpenGLES30()Z

    :goto_2
    const-string v1, "vibrator"

    .line 34
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->vibrator:Landroid/os/Vibrator;

    const/16 v1, 0xb

    if-lt v0, v1, :cond_7

    .line 35
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->checkForVibrator()V

    .line 36
    :cond_7
    new-instance v2, Lorg/ppsspp/ppsspp/e;

    invoke-direct {v2, p0}, Lorg/ppsspp/ppsspp/e;-><init>(Landroid/content/Context;)V

    sput-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->mLocationHelper:Lorg/ppsspp/ppsspp/e;

    if-lt v0, v1, :cond_8

    .line 37
    new-instance v0, Lorg/ppsspp/ppsspp/c;

    invoke-direct {v0, p0}, Lorg/ppsspp/ppsspp/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->mCameraHelper:Lorg/ppsspp/ppsspp/c;

    :cond_8
    return-void

    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to locate assets, aborting..."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public IsXperiaPlay()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "R800a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "R800i"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "R800x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "R800at"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SO-01D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "zeus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method askForPermissions([Ljava/lang/String;I)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_3

    .line 2
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    .line 3
    invoke-virtual {p0, v3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method protected attachMenu()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->rootView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/papa91/arc/view/MenuView;

    invoke-direct {v0, p0}, Lcom/papa91/arc/view/MenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 4
    iget-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->rootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    invoke-virtual {v0, p0}, Lcom/papa91/arc/view/MenuView;->setMenuViewListener(Lcom/papa91/arc/view/MenuViewListener;)V

    :cond_0
    return-void
.end method

.method public checkForVibrator()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->vibrator:Landroid/os/Vibrator;

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_5

    iget-boolean v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->isXperiaPlay:Z

    if-nez v0, :cond_5

    .line 2
    invoke-direct {p0, p1}, Lorg/ppsspp/ppsspp/NativeActivity;->getInputDeviceState(Landroid/view/InputEvent;)Lorg/ppsspp/ppsspp/d;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x52

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 5
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v2

    const/16 v5, 0x201

    if-eq v2, v5, :cond_2

    const/16 v5, 0x401

    if-eq v2, v5, :cond_2

    const v5, 0x1000010

    if-eq v2, v5, :cond_2

    move v3, v1

    :cond_2
    if-nez v3, :cond_5

    .line 6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {v0, p1}, Lorg/ppsspp/ppsspp/d;->e(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v4

    .line 8
    :cond_4
    invoke-virtual {v0, p1}, Lorg/ppsspp/ppsspp/d;->d(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v4

    .line 9
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected declared-synchronized ensureRenderLoop()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-boolean v0, Lorg/ppsspp/ppsspp/NativeActivity;->javaGL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mSurface:Landroid/view/Surface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mRenderLoopThread:Ljava/lang/Thread;

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mEmulationRunner:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mRenderLoopThread:Ljava/lang/Thread;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public exit()V
    .locals 0

    return-void
.end method

.method public native exitEGLRenderLoop()V
.end method

.method public forum()V
    .locals 0

    return-void
.end method

.method public gameOnPause()V
    .locals 0

    return-void
.end method

.method public gameOnResume()V
    .locals 0

    return-void
.end method

.method getApplicationLibraryDir(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    const-class v0, Landroid/content/pm/ApplicationInfo;

    const-string v1, "nativeLibraryDir"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/lib"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getChangeDiskState()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->NeedChangeDisk()Z

    move-result v0

    return v0
.end method

.method public getDesiredBackbufferSize(Landroid/graphics/Point;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->computeDesiredBackbufferDimensions()V

    .line 2
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->getDesiredBackbufferWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 3
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->getDesiredBackbufferHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public getInt(Ljava/lang/String;Landroid/app/Activity;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->isXiaomi()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    const-string v0, "android.os.SystemProperties"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Class;

    .line 4
    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v1

    .line 5
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "getInt"

    .line 6
    invoke-virtual {p2, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v1

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    .line 9
    invoke-virtual {v2, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return v1
.end method

.method public getMode(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->amplification()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->narrow()V

    :cond_2
    :goto_0
    return-void
.end method

.method getRenderer()Lorg/ppsspp/ppsspp/NativeRenderer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->nativeRenderer:Lorg/ppsspp/ppsspp/NativeRenderer;

    return-object v0
.end method

.method public hasNotchAtHuawei()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.huawei.android.util.HwNotchSizeUtil"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hasNotchInScreen"

    new-array v3, v0, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :catchall_0
    return v0
.end method

.method public hasNotchAtOPPO()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasNotchAtVivo()Z
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.util.FtFeature"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isFeatureSupport"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 3
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x20

    .line 4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :catchall_0
    return v0
.end method

.method public hasNotchScreen(Landroid/app/Activity;)Z
    .locals 2

    const-string v0, "ro.miui.notch"

    .line 1
    invoke-virtual {p0, v0, p1}, Lorg/ppsspp/ppsspp/NativeActivity;->getInt(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->hasNotchAtHuawei()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->hasNotchAtOPPO()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->hasNotchAtVivo()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/ppsspp/ppsspp/NativeActivity;->isAndroidP(Landroid/app/Activity;)Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method protected hideUiDelayed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->hideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->hideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->fullScreenCfg:I

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->hideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->hideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public inputBox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x11

    .line 3
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 4
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x2

    const/16 v5, 0x14

    .line 5
    invoke-virtual {v3, v4, v5, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 6
    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    .line 7
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 8
    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 10
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge p2, v4, :cond_0

    .line 11
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/16 v4, 0xe

    if-ge p2, v4, :cond_1

    .line 12
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->createDialogBuilderWithTheme()Landroid/app/AlertDialog$Builder;

    move-result-object p2

    goto :goto_0

    :cond_1
    if-ge p2, v2, :cond_2

    .line 13
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->createDialogBuilderWithDeviceTheme()Landroid/app/AlertDialog$Builder;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/16 v2, 0x17

    if-ge p2, v2, :cond_3

    .line 14
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->createDialogBuilderWithDeviceThemeAndUiVisibility()Landroid/app/AlertDialog$Builder;

    move-result-object p2

    goto :goto_0

    .line 15
    :cond_3
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->createDialogBuilderNew()Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 16
    :goto_0
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 17
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lorg/ppsspp/ppsspp/NativeActivity$f;

    invoke-direct {v0, p0, p1, v1}, Lorg/ppsspp/ppsspp/NativeActivity$f;-><init>(Lorg/ppsspp/ppsspp/NativeActivity;Ljava/lang/String;Landroid/widget/EditText;)V

    .line 18
    invoke-virtual {p2, p3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lorg/ppsspp/ppsspp/NativeActivity$e;

    invoke-direct {p2, p0}, Lorg/ppsspp/ppsspp/NativeActivity$e;-><init>(Lorg/ppsspp/ppsspp/NativeActivity;)V

    const-string p3, "Cancel"

    .line 19
    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 21
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 22
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public isAndroidP(Landroid/app/Activity;)Landroid/view/DisplayCutout;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isRankGame()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowOnekey()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isXiaomi()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Xiaomi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public keysSetting()V
    .locals 0

    return-void
.end method

.method public loadRom()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    sget v0, Lorg/ppsspp/ppsspp/NativeActivity;->RESULT_LOAD_IMAGE:I

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string p1, "_data"

    .line 4
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 6
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 p3, 0x0

    .line 7
    aget-object p1, p1, p3

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 8
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    const-string p2, "bgImage_updated"

    .line 10
    invoke-static {p2, p1}, Lorg/ppsspp/ppsspp/NativeApp;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->updateSystemUiVisibility()V

    .line 4
    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p1, p1

    iput p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->densityDpi:F

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Lorg/ppsspp/ppsspp/TextRenderer;->init(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->shuttingDown:Z

    .line 4
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->registerCallbacks()V

    .line 5
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->updateDisplayMeasurements()V

    .line 6
    sget-boolean v0, Lorg/ppsspp/ppsspp/NativeActivity;->initialized:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->jstring:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->jstring:Ljava/lang/String;

    invoke-static {v0}, Lorg/ppsspp/ppsspp/NativeApp;->setJson(Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->Initialize()V

    .line 10
    sput-boolean v1, Lorg/ppsspp/ppsspp/NativeActivity;->initialized:Z

    :cond_1
    const-string v0, "onCreate"

    .line 11
    invoke-direct {p0, v0}, Lorg/ppsspp/ppsspp/NativeActivity;->updateScreenRotation(Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->updateSustainedPerformanceMode()V

    const/4 v0, 0x3

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 14
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->audioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->audioFocusChangeListener:Lorg/ppsspp/ppsspp/a;

    invoke-static {v0, v2}, Lorg/ppsspp/ppsspp/NativeActivity;->gainAudioFocus(Landroid/media/AudioManager;Lorg/ppsspp/ppsspp/a;)V

    .line 15
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->audioInit()V

    .line 16
    sget-boolean v0, Lorg/ppsspp/ppsspp/NativeActivity;->javaGL:Z

    if-eqz v0, :cond_3

    .line 17
    new-instance v0, Lorg/ppsspp/ppsspp/NativeGLView;

    invoke-direct {v0, p0}, Lorg/ppsspp/ppsspp/NativeGLView;-><init>(Lorg/ppsspp/ppsspp/NativeActivity;)V

    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    .line 18
    new-instance v0, Lorg/ppsspp/ppsspp/NativeRenderer;

    invoke-direct {v0, p0}, Lorg/ppsspp/ppsspp/NativeRenderer;-><init>(Lorg/ppsspp/ppsspp/NativeActivity;)V

    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->nativeRenderer:Lorg/ppsspp/ppsspp/NativeRenderer;

    .line 19
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 20
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 21
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "OUYA"

    if-ne v0, v3, :cond_2

    .line 22
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 23
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    new-instance v2, Lorg/ppsspp/ppsspp/g;

    invoke-direct {v2}, Lorg/ppsspp/ppsspp/g;-><init>()V

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 24
    :cond_2
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    iget-object v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->nativeRenderer:Lorg/ppsspp/ppsspp/NativeRenderer;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    new-array v0, v1, [Landroid/view/View;

    .line 25
    iget-object v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    aput-object v2, v0, p1

    invoke-virtual {p0, v0}, Lorg/ppsspp/ppsspp/NativeActivity;->wrapMenu([Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 26
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    invoke-virtual {p1, v1}, Landroid/opengl/GLSurfaceView;->setFocusable(Z)V

    .line 27
    invoke-static {}, Lcom/yatoooon/screenadaptation/e;->a()Lcom/yatoooon/screenadaptation/a;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yatoooon/screenadaptation/a;->f(Landroid/view/View;)V

    goto :goto_0

    .line 28
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_4

    .line 29
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->updateSystemUiVisibility()V

    const/16 v2, 0x13

    if-lt v0, v2, :cond_4

    .line 30
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->setupSystemUiCallback()V

    .line 31
    :cond_4
    new-instance v0, Lorg/ppsspp/ppsspp/NativeSurfaceView;

    invoke-direct {v0, p0}, Lorg/ppsspp/ppsspp/NativeSurfaceView;-><init>(Lorg/ppsspp/ppsspp/NativeActivity;)V

    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mSurfaceView:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    .line 32
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    new-array v0, v1, [Landroid/view/View;

    .line 33
    iget-object v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mSurfaceView:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    aput-object v2, v0, p1

    invoke-virtual {p0, v0}, Lorg/ppsspp/ppsspp/NativeActivity;->wrapMenu([Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 34
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mSurfaceView:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 35
    invoke-static {}, Lcom/yatoooon/screenadaptation/e;->a()Lcom/yatoooon/screenadaptation/a;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yatoooon/screenadaptation/a;->f(Landroid/view/View;)V

    .line 36
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->ensureRenderLoop()V

    .line 37
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_5

    const-string p1, "window"

    .line 38
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 39
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 40
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 41
    iget p1, v0, Landroid/graphics/Point;->x:I

    iput p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->gpixelWidth:I

    .line 42
    iget p1, v0, Landroid/graphics/Point;->y:I

    iput p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->gpixelHeight:I

    :cond_5
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    sget-boolean v0, Lorg/ppsspp/ppsspp/NativeActivity;->javaGL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->nativeRenderer:Lorg/ppsspp/ppsspp/NativeRenderer;

    invoke-virtual {v0}, Lorg/ppsspp/ppsspp/NativeRenderer;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc8

    :cond_0
    const-wide/16 v2, 0xa

    .line 4
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 5
    iget-object v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->nativeRenderer:Lorg/ppsspp/ppsspp/NativeRenderer;

    invoke-virtual {v2}, Lorg/ppsspp/ppsspp/NativeRenderer;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    if-gtz v0, :cond_0

    .line 6
    :cond_1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    invoke-virtual {v0}, Lorg/ppsspp/ppsspp/NativeGLView;->f()V

    .line 7
    iput-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    .line 8
    iput-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->audioFocusChangeListener:Lorg/ppsspp/ppsspp/a;

    .line 9
    iput-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->audioManager:Landroid/media/AudioManager;

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mSurfaceView:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    invoke-virtual {v0}, Lorg/ppsspp/ppsspp/NativeSurfaceView;->f()V

    .line 11
    iput-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mSurfaceView:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    .line 12
    :goto_1
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->audioShutdown()V

    .line 13
    iget-boolean v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->shuttingDown:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    :cond_3
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->unregisterCallbacks()V

    .line 15
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->shutdown()V

    const/4 v0, 0x0

    .line 16
    sput-boolean v0, Lorg/ppsspp/ppsspp/NativeActivity;->initialized:Z

    :cond_4
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const v1, 0x1000010

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v0, v2, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lorg/ppsspp/ppsspp/NativeActivity;->getInputDeviceState(Landroid/view/InputEvent;)Lorg/ppsspp/ppsspp/d;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lorg/ppsspp/ppsspp/d;->c(Landroid/view/MotionEvent;)Z

    return v1

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_3

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, p1}, Lorg/ppsspp/ppsspp/NativeApp;->mouseWheelEvent(FF)Z

    :cond_3
    return v1

    .line 9
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x4

    if-eq p1, v3, :cond_3

    const/16 v3, 0x52

    if-eq p1, v3, :cond_2

    const/16 v3, 0x54

    if-eq p1, v3, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 2
    :pswitch_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v2

    const v3, 0x1000010

    if-ne v2, v3, :cond_1

    .line 3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 4
    :cond_1
    :goto_1
    invoke-static {v1, p1, v0}, Lorg/ppsspp/ppsspp/NativeApp;->keyDown(IIZ)Z

    move-result p1

    return p1

    :cond_2
    return v2

    .line 5
    :cond_3
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->exit()V

    return v2

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x52

    if-eq p1, v0, :cond_1

    const/16 v0, 0x54

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v0

    const v1, 0x1000010

    if-ne v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    :goto_0
    invoke-static {v2, p1}, Lorg/ppsspp/ppsspp/NativeApp;->keyUp(II)Z

    move-result p1

    return p1

    .line 4
    :cond_1
    invoke-static {v2, p1}, Lorg/ppsspp/ppsspp/NativeApp;->keyUp(II)Z

    return v1

    .line 5
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p1, 0x3ec

    .line 6
    invoke-static {v2, p1}, Lorg/ppsspp/ppsspp/NativeApp;->keyUp(II)Z

    goto :goto_1

    .line 7
    :cond_3
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->isAtTopLevel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 9
    :cond_4
    invoke-static {v2, p1}, Lorg/ppsspp/ppsspp/NativeApp;->keyUp(II)Z

    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->audioFocusChangeListener:Lorg/ppsspp/ppsspp/a;

    invoke-static {v0, v1}, Lorg/ppsspp/ppsspp/NativeActivity;->loseAudioFocus(Landroid/media/AudioManager;Lorg/ppsspp/ppsspp/a;)V

    .line 3
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->pause()V

    .line 4
    sget-boolean v0, Lorg/ppsspp/ppsspp/NativeActivity;->javaGL:Z

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mSurfaceView:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    invoke-virtual {v0}, Lorg/ppsspp/ppsspp/NativeSurfaceView;->g()V

    .line 6
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->joinRenderLoopThread()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lorg/ppsspp/ppsspp/NativeGLView;->onPause()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRankFinish(I)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->mCameraHelper:Lorg/ppsspp/ppsspp/c;

    if-eqz p1, :cond_4

    invoke-virtual {p0, p2, p3}, Lorg/ppsspp/ppsspp/NativeActivity;->permissionsGranted([Ljava/lang/String;[I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2
    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->mCameraHelper:Lorg/ppsspp/ppsspp/c;

    invoke-virtual {p1}, Lorg/ppsspp/ppsspp/c;->e()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p2, p3}, Lorg/ppsspp/ppsspp/NativeActivity;->permissionsGranted([Ljava/lang/String;[I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4
    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->mLocationHelper:Lorg/ppsspp/ppsspp/e;

    invoke-virtual {p1}, Lorg/ppsspp/ppsspp/e;->a()V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0, p2, p3}, Lorg/ppsspp/ppsspp/NativeActivity;->permissionsGranted([Ljava/lang/String;[I)Z

    move-result p1

    const-string p2, "storage"

    if-eqz p1, :cond_3

    const-string p1, "permission_granted"

    .line 6
    invoke-static {p1, p2}, Lorg/ppsspp/ppsspp/NativeApp;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->loadRom()V

    goto :goto_0

    :cond_3
    const-string p1, "permission_denied"

    .line 8
    invoke-static {p1, p2}, Lorg/ppsspp/ppsspp/NativeApp;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->updateSustainedPerformanceMode()V

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 4
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->updateSystemUiVisibility()V

    .line 5
    :cond_0
    sget-boolean v1, Lorg/ppsspp/ppsspp/NativeActivity;->javaGL:Z

    if-nez v1, :cond_1

    const/16 v1, 0x9

    if-lt v0, v1, :cond_2

    :cond_1
    const-string v0, "onResume"

    .line 6
    invoke-direct {p0, v0}, Lorg/ppsspp/ppsspp/NativeActivity;->updateScreenRotation(Ljava/lang/String;)V

    .line 7
    :cond_2
    sget-boolean v0, Lorg/ppsspp/ppsspp/NativeActivity;->javaGL:Z

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {v0}, Lorg/ppsspp/ppsspp/NativeGLView;->onResume()V

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mSurfaceView:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v0}, Lorg/ppsspp/ppsspp/NativeSurfaceView;->h()V

    .line 12
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->audioFocusChangeListener:Lorg/ppsspp/ppsspp/a;

    invoke-static {v0, v1}, Lorg/ppsspp/ppsspp/NativeActivity;->gainAudioFocus(Landroid/media/AudioManager;Lorg/ppsspp/ppsspp/a;)V

    .line 13
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->resume()V

    .line 14
    sget-boolean v0, Lorg/ppsspp/ppsspp/NativeActivity;->javaGL:Z

    if-nez v0, :cond_5

    .line 15
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->ensureRenderLoop()V

    :cond_5
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onTimerTick(J)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->applyCompat()V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 3
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->updateSustainedPerformanceMode()V

    return-void
.end method

.method public onWindowFocusChangedCall(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->uiHider:Lcom/papa91/wrapper/SystemUiHider;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->fullScreenFlag:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/papa91/wrapper/SystemUiHider;->hide()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/papa91/wrapper/SystemUiHider;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method permissionsGranted([Ljava/lang/String;[I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 2
    aget v2, p2, v1

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public processCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 1
    sget-boolean v0, Lorg/ppsspp/ppsspp/NativeActivity;->javaGL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mSurfaceView:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    :goto_0
    const-string v1, "launchBrowser"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.intent.action.VIEW"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 3
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    return v3

    :cond_1
    const-string v1, "launchEmail"

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v5, " "

    if-eqz v1, :cond_2

    .line 7
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.SENDTO"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "mailto:email@gmail.com?subject=Your app is...&body=great! Or?"

    const-string v0, "%20"

    .line 8
    invoke-virtual {p2, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p2, "E-mail the app author!"

    .line 11
    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v4

    :catch_1
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    return v3

    :cond_2
    const-string v1, "bgImage_browse"

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    :try_start_2
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.PICK"

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 15
    sget p2, Lorg/ppsspp/ppsspp/NativeActivity;->RESULT_LOAD_IMAGE:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return v4

    :catch_2
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    return v3

    :cond_3
    const-string v1, "sharejpeg"

    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v6, "android.intent.action.SEND"

    if-eqz v1, :cond_4

    .line 18
    :try_start_3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "image/jpeg"

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.STREAM"

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "Share Picture"

    .line 21
    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return v4

    :catch_3
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    return v3

    :cond_4
    const-string v1, "sharetext"

    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 24
    :try_start_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "text/plain"

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    .line 26
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    invoke-virtual {p1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    return v4

    :catch_4
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    return v3

    :cond_5
    const-string v1, "showTwitter"

    .line 30
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 31
    :try_start_5
    new-instance p1, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "twitter://user?screen_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_1

    .line 32
    :catch_5
    :try_start_6
    new-instance p1, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://twitter.com/#!/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :goto_1
    return v4

    :catch_6
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    return v3

    :cond_6
    const-string v1, "launchMarket"

    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    return v3

    :cond_7
    const-string v1, "toast"

    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 36
    invoke-static {p0, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v4

    :cond_8
    const-string v1, "showKeyboard"

    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "input_method"

    const/4 v6, 0x2

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    .line 39
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 40
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2, v6, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    return v4

    :cond_9
    const-string v1, "hideKeyboard"

    .line 41
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    .line 42
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 43
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2, v6, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    return v4

    :cond_a
    const-string v1, "inputbox"

    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_d

    const-string p1, ":"

    .line 45
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 46
    aget-object p2, p1, v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_b

    .line 47
    aget-object p2, p1, v3

    goto :goto_2

    :cond_b
    const-string p2, "Input"

    .line 48
    :goto_2
    array-length v0, p1

    if-le v0, v4, :cond_c

    .line 49
    aget-object v2, p1, v4

    .line 50
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Launching inputbox: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "OK"

    .line 51
    invoke-virtual {p0, p2, v2, p1}, Lorg/ppsspp/ppsspp/NativeActivity;->inputBox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_d
    const-string v1, "vibrate"

    .line 52
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x3

    if-eqz v1, :cond_13

    const/4 p1, -0x1

    if-eq p2, v2, :cond_e

    .line 53
    :try_start_7
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_3

    :catch_7
    :cond_e
    const/4 p2, -0x1

    :goto_3
    if-eqz v0, :cond_12

    const/4 v1, -0x3

    if-eq p2, v1, :cond_11

    const/4 v1, -0x2

    if-eq p2, v1, :cond_10

    if-eq p2, p1, :cond_f

    goto :goto_4

    .line 54
    :cond_f
    invoke-virtual {v0, v5, v6}, Landroid/view/SurfaceView;->performHapticFeedback(II)Z

    goto :goto_4

    .line 55
    :cond_10
    invoke-virtual {v0, v4, v6}, Landroid/view/SurfaceView;->performHapticFeedback(II)Z

    goto :goto_4

    .line 56
    :cond_11
    invoke-virtual {v0, v3, v6}, Landroid/view/SurfaceView;->performHapticFeedback(II)Z

    :cond_12
    :goto_4
    return v4

    :cond_13
    const-string v0, "finish"

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 58
    iput-boolean v4, p0, Lorg/ppsspp/ppsspp/NativeActivity;->shuttingDown:Z

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_5

    :cond_14
    const-string v0, "rotate"

    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 61
    sget-boolean p1, Lorg/ppsspp/ppsspp/NativeActivity;->javaGL:Z

    if-eqz p1, :cond_15

    .line 62
    invoke-direct {p0, v0}, Lorg/ppsspp/ppsspp/NativeActivity;->updateScreenRotation(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 63
    :cond_15
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x9

    if-lt p1, p2, :cond_22

    .line 64
    invoke-direct {p0, v0}, Lorg/ppsspp/ppsspp/NativeActivity;->updateScreenRotation(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_16
    const-string v0, "sustainedPerfMode"

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 66
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->updateSustainedPerformanceMode()V

    goto/16 :goto_5

    :cond_17
    const-string v0, "immersive"

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 68
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_22

    .line 69
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->updateSystemUiVisibility()V

    goto/16 :goto_5

    :cond_18
    const-string v0, "recreate"

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 71
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->recreate()V

    goto/16 :goto_5

    :cond_19
    const-string v0, "graphics_restart"

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 73
    iput-boolean v4, p0, Lorg/ppsspp/ppsspp/NativeActivity;->shuttingDown:Z

    .line 74
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->recreate()V

    goto/16 :goto_5

    :cond_1a
    const-string v0, "ask_permission"

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "storage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 76
    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->permissionsForStorage:[Ljava/lang/String;

    invoke-virtual {p0, p1, v4}, Lorg/ppsspp/ppsspp/NativeActivity;->askForPermissions([Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1b

    const-string p1, "permission_pending"

    .line 77
    invoke-static {p1, v0}, Lorg/ppsspp/ppsspp/NativeApp;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1b
    const-string p1, "permission_granted"

    .line 78
    invoke-static {p1, v0}, Lorg/ppsspp/ppsspp/NativeApp;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1c
    const-string v0, "gps_command"

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string p1, "open"

    .line 80
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 81
    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->permissionsForLocation:[Ljava/lang/String;

    invoke-virtual {p0, p1, v6}, Lorg/ppsspp/ppsspp/NativeActivity;->askForPermissions([Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_22

    .line 82
    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->mLocationHelper:Lorg/ppsspp/ppsspp/e;

    invoke-virtual {p1}, Lorg/ppsspp/ppsspp/e;->a()V

    goto :goto_5

    :cond_1d
    const-string p1, "close"

    .line 83
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 84
    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->mLocationHelper:Lorg/ppsspp/ppsspp/e;

    invoke-virtual {p1}, Lorg/ppsspp/ppsspp/e;->b()V

    goto :goto_5

    :cond_1e
    const-string v0, "camera_command"

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string p1, "startVideo"

    .line 86
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 87
    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->mCameraHelper:Lorg/ppsspp/ppsspp/c;

    if-eqz p1, :cond_22

    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->permissionsForCamera:[Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lorg/ppsspp/ppsspp/NativeActivity;->askForPermissions([Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_22

    .line 88
    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->mCameraHelper:Lorg/ppsspp/ppsspp/c;

    invoke-virtual {p1}, Lorg/ppsspp/ppsspp/c;->e()V

    goto :goto_5

    .line 89
    :cond_1f
    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->mCameraHelper:Lorg/ppsspp/ppsspp/c;

    if-eqz p1, :cond_22

    const-string p1, "stopVideo"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 90
    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->mCameraHelper:Lorg/ppsspp/ppsspp/c;

    invoke-virtual {p1}, Lorg/ppsspp/ppsspp/c;->f()V

    goto :goto_5

    :cond_20
    const-string v0, "uistate"

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v0, "ingame"

    .line 93
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/16 v0, 0x80

    if-eqz p2, :cond_21

    .line 94
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_5

    .line 95
    :cond_21
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_22
    :goto_5
    return v3
.end method

.method public quickSlot()V
    .locals 0

    return-void
.end method

.method public recreate()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->recreate()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public native registerCallbacks()V
.end method

.method public reload()V
    .locals 0

    return-void
.end method

.method public native runEGLRenderLoop(Landroid/view/Surface;)Z
.end method

.method public sendInitialGrants()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const-string v1, "storage"

    if-nez v0, :cond_0

    const-string v0, "permission_granted"

    .line 3
    invoke-static {v0, v1}, Lorg/ppsspp/ppsspp/NativeApp;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "permission_denied"

    .line 4
    invoke-static {v0, v1}, Lorg/ppsspp/ppsspp/NativeApp;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setShortcutParam(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    :cond_0
    iput-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->shortcutParam:Ljava/lang/String;

    return-void
.end method

.method public setSystemUiHide(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->fullScreenFlag:Z

    .line 2
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->updateHider()V

    .line 3
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->uiHider:Lcom/papa91/wrapper/SystemUiHider;

    if-eqz p1, :cond_1

    .line 4
    iget-boolean v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->fullScreenFlag:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/papa91/wrapper/SystemUiHider;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->uiHider:Lcom/papa91/wrapper/SystemUiHider;

    invoke-virtual {p1}, Lcom/papa91/wrapper/SystemUiHider;->hide()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/wrapper/SystemUiHider;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method setupSystemUiCallback()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/ppsspp/ppsspp/NativeActivity$b;

    invoke-direct {v1, p0}, Lorg/ppsspp/ppsspp/NativeActivity$b;-><init>(Lorg/ppsspp/ppsspp/NativeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public showMenuCheating()V
    .locals 0

    return-void
.end method

.method public showMenuPerformance()V
    .locals 0

    return-void
.end method

.method public showMenuSlot()V
    .locals 0

    return-void
.end method

.method public showTimeLimitedDialog1()V
    .locals 0

    return-void
.end method

.method public showTimeLimitedDialog2()V
    .locals 0

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceChanged: isCreating:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " holder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->desiredSize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_0

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-lez v0, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "holder.isCreating = true, ignoring. width="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " height="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " desWidth="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->desiredSize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " desHeight="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->desiredSize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface changed. Resolution: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {p3, p4, p2}, Lorg/ppsspp/ppsspp/NativeApp;->backbufferResize(III)V

    .line 6
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mSurface:Landroid/view/Surface;

    .line 7
    sget-boolean p2, Lorg/ppsspp/ppsspp/NativeActivity;->javaGL:Z

    if-nez p2, :cond_2

    if-nez p1, :cond_1

    .line 8
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->joinRenderLoopThread()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->ensureRenderLoop()V

    .line 10
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->updateSustainedPerformanceMode()V

    .line 11
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->updateDisplayMeasurements()V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->bFirstCreated:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_1

    .line 3
    invoke-virtual {p0, p0}, Lorg/ppsspp/ppsspp/NativeActivity;->hasNotchScreen(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->gpixelWidth:I

    sub-int/2addr v0, v2

    .line 5
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lorg/ppsspp/ppsspp/NativeActivity;->gpixelHeight:I

    sub-int/2addr v2, v3

    .line 6
    iget v4, p0, Lorg/ppsspp/ppsspp/NativeActivity;->gpixelWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v4, v0

    iput v4, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelWidth:I

    .line 7
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v3, v2

    iput v3, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelHeight:I

    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->gpixelWidth:I

    iput v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelWidth:I

    .line 9
    iget v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->gpixelHeight:I

    iput v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelHeight:I

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelWidth:I

    .line 11
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelHeight:I

    .line 12
    :goto_0
    iput-boolean v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->bFirstCreated:Z

    .line 13
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/16 v3, 0x9

    if-ne v0, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v3, 0x1

    .line 14
    :goto_2
    iget v4, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelHeight:I

    iget v5, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelWidth:I

    if-le v4, v5, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    .line 15
    :goto_3
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-ge v5, v6, :cond_6

    iget v7, p0, Lorg/ppsspp/ppsspp/NativeActivity;->badOrientationCount:I

    const/4 v8, 0x3

    if-ge v7, v8, :cond_6

    if-eq v3, v4, :cond_6

    const/4 v7, -0x1

    if-eq v0, v7, :cond_6

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad orientation detected (w="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelWidth:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " h="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelHeight:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "! Recreating activity."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->badOrientationCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->badOrientationCount:I

    .line 18
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->recreate()V

    return-void

    :cond_6
    if-ne v3, v4, :cond_7

    .line 19
    iput v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->badOrientationCount:I

    goto :goto_5

    .line 20
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad orientation detected but ignored"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v5, v6, :cond_8

    const-string v2, " (sdk version)"

    goto :goto_4

    :cond_8
    const-string v2, ""

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelWidth:I

    iget v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelHeight:I

    if-ge v1, v2, :cond_9

    .line 22
    iput v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelWidth:I

    .line 23
    iput v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelHeight:I

    .line 24
    :cond_9
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surface created. pixelWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pixelHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " holder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    iget v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelWidth:I

    iget v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelHeight:I

    iget v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->densityDpi:F

    float-to-int v2, v2

    iget v3, p0, Lorg/ppsspp/ppsspp/NativeActivity;->refreshRate:F

    invoke-static {v0, v1, v2, v3}, Lorg/ppsspp/ppsspp/NativeApp;->setDisplayParameters(IIIF)V

    .line 26
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->desiredSize:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Lorg/ppsspp/ppsspp/NativeActivity;->getDesiredBackbufferSize(Landroid/graphics/Point;)V

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting fixed size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->desiredSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->desiredSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->desiredSize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-interface {p1, v1, v0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mSurface:Landroid/view/Surface;

    .line 2
    sget-boolean v0, Lorg/ppsspp/ppsspp/NativeActivity;->javaGL:Z

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->joinRenderLoopThread()V

    .line 4
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    return-void
.end method

.method public native unregisterCallbacks()V
.end method

.method public updateDisplayMeasurements()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->useImmersive()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 6
    :goto_0
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    iput v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->densityDpi:F

    .line 7
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    iput v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->refreshRate:F

    .line 8
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, p0, Lorg/ppsspp/ppsspp/NativeActivity;->densityDpi:F

    float-to-int v3, v3

    invoke-static {v2, v1, v3, v0}, Lorg/ppsspp/ppsspp/NativeApp;->setDisplayParameters(IIIF)V

    return-void
.end method

.method public useLowProfileButtons()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public vibrate(Z)V
    .locals 0

    return-void
.end method

.method public voice(Z)V
    .locals 0

    return-void
.end method

.method varargs wrapMenu([Landroid/view/View;)Landroid/view/View;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    aget-object p1, p1, v1

    return-object p1

    .line 3
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->rootView:Landroid/widget/RelativeLayout;

    .line 5
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_5

    .line 6
    aget-object v2, p1, v1

    .line 7
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 8
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    instance-of v3, v2, Lcom/papa91/arc/view/MenuView;

    if-eqz v3, :cond_2

    .line 10
    check-cast v2, Lcom/papa91/arc/view/MenuView;

    iput-object v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 11
    invoke-virtual {v2, p0}, Lcom/papa91/arc/view/MenuView;->setMenuViewListener(Lcom/papa91/arc/view/MenuViewListener;)V

    goto :goto_1

    .line 12
    :cond_2
    instance-of v3, v2, Lorg/ppsspp/ppsspp/NativeGLView;

    if-eqz v3, :cond_3

    .line 13
    check-cast v2, Lorg/ppsspp/ppsspp/NativeGLView;

    invoke-virtual {v2, p0}, Lorg/ppsspp/ppsspp/NativeGLView;->setListener(Lorg/ppsspp/ppsspp/NativeGLView$a;)V

    goto :goto_1

    .line 14
    :cond_3
    instance-of v3, v2, Lorg/ppsspp/ppsspp/NativeSurfaceView;

    if-eqz v3, :cond_4

    .line 15
    check-cast v2, Lorg/ppsspp/ppsspp/NativeSurfaceView;

    invoke-virtual {v2, p0}, Lorg/ppsspp/ppsspp/NativeSurfaceView;->setListener(Lorg/ppsspp/ppsspp/NativeGLView$a;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method
