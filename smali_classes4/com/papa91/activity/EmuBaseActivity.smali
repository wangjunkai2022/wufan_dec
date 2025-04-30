.class public Lcom/papa91/activity/EmuBaseActivity;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "EmuBaseActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/activity/EmuBaseActivity$ActionReceiver;,
        Lcom/papa91/activity/EmuBaseActivity$MenuType;,
        Lcom/papa91/activity/EmuBaseActivity$MenuViewReceiver;,
        Lcom/papa91/activity/EmuBaseActivity$GameReceiver;,
        Lcom/papa91/activity/EmuBaseActivity$PermissRecver;,
        Lcom/papa91/activity/EmuBaseActivity$IMReceive;,
        Lcom/papa91/activity/EmuBaseActivity$MyReceiver;,
        Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver;,
        Lcom/papa91/activity/EmuBaseActivity$RealNameResultReceiver;,
        Lcom/papa91/activity/EmuBaseActivity$ShareResultReceiver;,
        Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;,
        Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;
    }
.end annotation


# static fields
.field private static BBK_GIONEE_MAIN_NAME:Ljava/lang/String; = null

.field public static final BBK_IQOO:I = 0x1

.field public static final CLOSE_AD:I = 0xa

.field public static final COMPLAIN_PLAYER:I = 0xc

.field public static DEVICE_ID:Ljava/lang/String; = null

.field public static DEVICE_VERSION:Ljava/lang/String; = null

.field private static final EXIT_AD_KEY:I = 0x65

.field public static ExitAdImageFilePath:Ljava/lang/String; = null

.field public static final GIONEE_SOFTMANAGER:I = 0x2

.field public static GameID:Ljava/lang/String; = null

.field public static GroupID:Ljava/lang/String; = null

.field public static final LIKT_TYPE_TO_HTML5:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "EmuBaseActivity"

.field protected static final ON_NETWORK_ERROR_MSG:Ljava/lang/String; = "\u60a8\u7684\u7f51\u7edc\u6709\u70b9\u5dee\uff0c\u8bf7\u91cd\u8bd5"

.field protected static final ON_TOKER_LOST_MSG:Ljava/lang/String; = "\u9a8c\u8bc1\u5931\u8d25\u8bf7\u91cd\u65b0\u767b\u5f55"

.field private static final PAPA_EMU_INTENT_EXTRA_ACTION_FROM:Ljava/lang/String; = "PAPA_EMU_INTENT_EXTRA_ACTION_FROM"

.field public static final PAY_CHEAT:I = 0x6

.field public static final PAY_COIN:I = 0x4

.field public static final PAY_JOIN:I = 0x7

.field public static final PAY_SP:I = 0x3

.field public static final RAISE_VIP:I = 0xb

.field public static RoomID:Ljava/lang/String; = null

.field public static final SELECT_CHEAT:I = 0x5

.field public static final SELECT_COIN:I = 0x2

.field public static final SELECT_JOIN:I = 0x8

.field public static final SELECT_SP:I = 0x1

.field public static final SHOW_AD:I = 0x9

.field private static final TO_PREFECTURE_KEY:I = 0x64

.field private static UPDATA_APP_TOAST:Ljava/lang/String; = null

.field public static UserID:Ljava/lang/String; = null

.field public static Version:Ljava/lang/String; = null

.field public static final actionEmuintent:Ljava/lang/String; = "com.wufun.intent.activity.view.action.emuintent"

.field public static actionHandleEmptyMessage:Ljava/lang/String; = null

.field public static actionHandleExitGame:Ljava/lang/String; = null

.field public static actionHandleMessage:Ljava/lang/String; = null

.field public static actionHideMenu:Ljava/lang/String; = null

.field public static actionLoadRomFinish:Ljava/lang/String; = null

.field public static actionLoadStageCompleted:Ljava/lang/String; = null

.field public static actionOnOnlineState:Ljava/lang/String; = null

.field public static actionRecordEnd:Ljava/lang/String; = null

.field public static actionShowInvite:Ljava/lang/String; = null

.field public static actionShowMenu:Ljava/lang/String; = null

.field public static actionShowMenuCheat:Ljava/lang/String; = null

.field public static actionShowMenuGate:Ljava/lang/String; = null

.field public static actionShowMenuOnekey:Ljava/lang/String; = null

.field public static actionShowMenuPerformance:Ljava/lang/String; = null

.field public static actionShowMenuSlot:Ljava/lang/String; = null

.field public static actionShowMenuView:Ljava/lang/String; = null

.field public static actionShowShare:Ljava/lang/String; = null

.field public static final actionVip:Ljava/lang/String; = "com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success"

.field public static actionVipTip:Ljava/lang/String; = null

.field public static final actionVip_mha:Ljava/lang/String; = "com.join.android.app.mgsim.wufan.mha.broadcast.action_raise_vip_success"

.field public static final actionlogin:Ljava/lang/String; = "com.join.android.app.mgsim.wufun.broadcast.action_login_success"

.field public static final actionlogin_mha:Ljava/lang/String; = "com.join.android.app.mgsim.wufan.mha.broadcast.action_login_success"

.field public static final aidlStr:Ljava/lang/String; = "com.papa.mgsim.wufun.aidl.service"

.field public static appPackName:Ljava/lang/String; = "com.join.android.app.mgsim.wufun"

.field public static final appPackName_aso4:Ljava/lang/String; = "com.papa91.fc.aso4"

.field public static final appPackName_mgsim:Ljava/lang/String; = "com.join.android.app.mgsim.wufun"

.field public static final appPackName_mha:Ljava/lang/String; = "com.join.android.app.mgsim.wufun.mha"

.field public static assetsPath:Ljava/lang/String; = null

.field static autoSaveSlot:Lcom/papa91/view/AutoSaveSlot; = null

.field private static baseActivity:Lcom/papa91/activity/EmuBaseActivity; = null

.field protected static cheatInfos:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/CheatInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static className:Ljava/lang/String; = null

.field private static cmb:Landroid/content/ClipboardManager; = null

.field static context:Landroid/content/Context; = null

.field static dnsJson:Ljava/lang/String; = null

.field public static enableAudio:Ljava/lang/String; = null

.field public static fid:I = 0x0

.field protected static gameIsPause:Z = false

.field static generate_times:I = 0x0

.field static generatedTimes:I = 0x0

.field static getRewardConfig:I = 0x0

.field public static hasAd:Z = false

.field public static hasRewardBanana:Z = false

.field public static httpKeySign:Ljava/lang/String; = null

.field static in:Landroid/content/Intent; = null

.field static in1:Landroid/content/Intent; = null

.field static in2:Landroid/content/Intent; = null

.field static in3:Landroid/content/Intent; = null

.field static in5:Landroid/content/Intent; = null

.field static init_first_box_time:I = 0x0

.field static isNet:Z = false

.field public static keyVaule:[I = null

.field static left_device_play_reward_count:I = 0x0

.field static left_play_reward_count:I = 0x0

.field public static mDialog:Landroid/app/Dialog; = null

.field static mMessenger:Landroid/os/Messenger; = null

.field static mServiceConnection:Landroid/content/ServiceConnection; = null

.field static max_time_interval:I = 0x0

.field static min_time_interval:I = 0x0

.field public static netState:Ljava/lang/String; = null

.field private static payType:I = 0x0

.field public static final prefix:Ljava/lang/String; = "com.join.android.app.mgsim.wufun.broadcast"

.field static progressView:Lcom/papa91/view/DragProgressView;

.field static received_times:I

.field static rewardBananaDialog:Lcom/papa91/view/RewardBananaDialog;

.field static rewardConfig:Ljava/lang/String;

.field static reward_amount:I

.field static reward_left_count:I

.field static reward_times:I

.field public static romName:Ljava/lang/String;

.field public static romPath:Ljava/lang/String;

.field public static screenMOde:Ljava/lang/String;

.field public static server_ip:Ljava/lang/String;

.field protected static server_port:Ljava/lang/String;

.field public static soPath:Ljava/lang/String;

.field public static spLock:I

.field protected static startMode:I

.field static startRewardCount:Z

.field public static startTIme:J

.field private static systemSettingType:I

.field public static token:Ljava/lang/String;

.field static total_reward_amount:I

.field public static tourist:Z

.field public static ugcPath:Ljava/lang/String;

.field static unique_id:Ljava/lang/String;

.field static useIndependentEmu:Z

.field public static version:Ljava/lang/String;

.field public static vibriorMode:Ljava/lang/String;


# instance fields
.field protected AD_appId:Ljava/lang/String;

.field private APP_Version:I

.field protected accept:Landroid/widget/TextView;

.field private actionReceiver:Lcom/papa91/activity/EmuBaseActivity$ActionReceiver;

.field private adClosed:Z

.field protected adExitRootView:Landroid/widget/FrameLayout;

.field private adLoadError:Z

.field private adParent:Landroid/widget/RelativeLayout;

.field adResultReceiver:Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;

.field private adRoot:Landroid/widget/RelativeLayout;

.field alertTipDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

.field public allowPeripheralJoin:Z

.field private appCodeIsBigger160:Z

.field private appInfo:Landroid/content/pm/PackageInfo;

.field protected avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private btn_startRecord:Landroid/widget/Button;

.field private checkRealNameType:I

.field private crc_link_type_val:Ljava/lang/String;

.field protected gameName:Landroid/widget/TextView;

.field gameReceiver:Lcom/papa91/activity/EmuBaseActivity$GameReceiver;

.field private gameType:Ljava/lang/String;

.field getRewardConfigCount:I

.field protected handler:Landroid/os/Handler;

.field protected hasCheckRealName:Z

.field iMReceive:Lcom/papa91/activity/EmuBaseActivity$IMReceive;

.field private intentFilter:Landroid/content/IntentFilter;

.field protected invitePop:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

.field isArenaCheck:Z

.field isInBackground:Z

.field private isStartRecord:Z

.field protected jump_type:Ljava/lang/String;

.field limitTime:J

.field limitTimeRunnable:Ljava/lang/Runnable;

.field private link_type:Ljava/lang/String;

.field private link_type_val:Ljava/lang/String;

.field private loading_real_name:Z

.field protected m_SVIP:I

.field protected m_VIP:I

.field menuViewReceiver:Lcom/papa91/activity/EmuBaseActivity$MenuViewReceiver;

.field messData:Ljava/lang/String;

.field public messageDialog:Lcom/papa91/MessageVipCommonDialog;

.field protected miniRankTime:I

.field protected name:Landroid/widget/TextView;

.field private needCheckRealName:Z

.field netWorkReceiver:Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver;

.field public onAdShwoIsCloseMine:Z

.field protected onExitBannerId:Ljava/lang/String;

.field protected onLoadBannerId:Ljava/lang/String;

.field protected onMenuOpenBannerId:Ljava/lang/String;

.field protected paayReceiver:Lcom/papa91/paay/PaayReceiver;

.field payListener:Lcom/papa91/paay/PayListener;

.field perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

.field playTime:J

.field playTimeReceiver:Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;

.field protected rankAutoUpload:I

.field rankPlayTime:I

.field realNameDialog:Lcom/papa91/arc/dialog/RealNameDialog;

.field realnameResultReceiver:Lcom/papa91/activity/EmuBaseActivity$RealNameResultReceiver;

.field recver:Lcom/papa91/activity/EmuBaseActivity$PermissRecver;

.field rewardBananaTipDialog:Lcom/papa91/view/RewardBananaTipDialog;

.field selectListener:Lcom/papa91/paay/PayListener;

.field shareResultReceiver:Lcom/papa91/activity/EmuBaseActivity$ShareResultReceiver;

.field timer:Landroid/os/CountDownTimer;

.field private tpl_type:Ljava/lang/String;

.field private videoStrategyPop:Lcom/papa91/VideoStrategyPop;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->keyVaule:[I

    const-string v0, "1"

    .line 2
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->screenMOde:Ljava/lang/String;

    .line 3
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->enableAudio:Ljava/lang/String;

    .line 4
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->vibriorMode:Ljava/lang/String;

    const-string v0, "1.5.0"

    .line 5
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->version:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->fid:I

    const/4 v1, 0x0

    .line 7
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    .line 8
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->ugcPath:Ljava/lang/String;

    .line 9
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    const-string v2, "5369"

    .line 10
    sput-object v2, Lcom/papa91/activity/EmuBaseActivity;->server_port:Ljava/lang/String;

    const-string v2, "0"

    .line 11
    sput-object v2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 12
    sput-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 13
    sput-object v2, Lcom/papa91/activity/EmuBaseActivity;->Version:Ljava/lang/String;

    .line 14
    sput-object v2, Lcom/papa91/activity/EmuBaseActivity;->RoomID:Ljava/lang/String;

    .line 15
    sput-object v2, Lcom/papa91/activity/EmuBaseActivity;->GroupID:Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 16
    sput-wide v3, Lcom/papa91/activity/EmuBaseActivity;->startTIme:J

    .line 17
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->spLock:I

    .line 18
    sput-object v2, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    const/4 v2, 0x1

    .line 19
    sput-boolean v2, Lcom/papa91/activity/EmuBaseActivity;->tourist:Z

    const-string v3, "\u8bf7\u5148\u5c06\u556a\u556a\u6a21\u62df\u5668\u5347\u7ea71.6\u7248\u672c"

    .line 20
    sput-object v3, Lcom/papa91/activity/EmuBaseActivity;->UPDATA_APP_TOAST:Ljava/lang/String;

    .line 21
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->systemSettingType:I

    const-string v3, ""

    .line 22
    sput-object v3, Lcom/papa91/activity/EmuBaseActivity;->netState:Ljava/lang/String;

    .line 23
    sput-object v3, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_VERSION:Ljava/lang/String;

    .line 24
    sput-object v3, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_ID:Ljava/lang/String;

    .line 25
    sput-object v3, Lcom/papa91/activity/EmuBaseActivity;->httpKeySign:Ljava/lang/String;

    .line 26
    sput-object v3, Lcom/papa91/activity/EmuBaseActivity;->ExitAdImageFilePath:Ljava/lang/String;

    .line 27
    sput-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->hasAd:Z

    .line 28
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->className:Ljava/lang/String;

    const-string v4, "/mnt/sdcard/test/assets/"

    .line 29
    sput-object v4, Lcom/papa91/activity/EmuBaseActivity;->assetsPath:Ljava/lang/String;

    .line 30
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->soPath:Ljava/lang/String;

    .line 31
    sput-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->hasRewardBanana:Z

    .line 32
    sput-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->startRewardCount:Z

    .line 33
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->getRewardConfig:I

    .line 34
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->generatedTimes:I

    .line 35
    sput-object v3, Lcom/papa91/activity/EmuBaseActivity;->rewardConfig:Ljava/lang/String;

    .line 36
    sput-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->gameIsPause:Z

    .line 37
    sput-boolean v2, Lcom/papa91/activity/EmuBaseActivity;->isNet:Z

    .line 38
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->mDialog:Landroid/app/Dialog;

    .line 39
    sput-object v3, Lcom/papa91/activity/EmuBaseActivity;->dnsJson:Ljava/lang/String;

    .line 40
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.join.android.app.mgsim.wufun.loginNim"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->in:Landroid/content/Intent;

    .line 41
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.join.android.app.mgsim.wufun.loginOutNim"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->in5:Landroid/content/Intent;

    .line 42
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.join.android.app.mgsim.wufun.StartRecording"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->in1:Landroid/content/Intent;

    .line 43
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.join.android.app.mgsim.wufun.FinishRecording"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->in2:Landroid/content/Intent;

    .line 44
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.join.android.app.mgsim.wufun.SendTextMsg"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->in3:Landroid/content/Intent;

    .line 45
    sput-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->useIndependentEmu:Z

    const/4 v1, -0x1

    .line 46
    sput v1, Lcom/papa91/activity/EmuBaseActivity;->generate_times:I

    sput v0, Lcom/papa91/activity/EmuBaseActivity;->received_times:I

    sput v0, Lcom/papa91/activity/EmuBaseActivity;->reward_amount:I

    sput v0, Lcom/papa91/activity/EmuBaseActivity;->reward_times:I

    sput v0, Lcom/papa91/activity/EmuBaseActivity;->reward_left_count:I

    sput v0, Lcom/papa91/activity/EmuBaseActivity;->total_reward_amount:I

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.showMenuSlot"

    .line 47
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuSlot:Ljava/lang/String;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.showMenuCheat"

    .line 48
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuCheat:Ljava/lang/String;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.showMenuPerformance"

    .line 49
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuPerformance:Ljava/lang/String;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.showMenuGate"

    .line 50
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuGate:Ljava/lang/String;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.showMenuOnekey"

    .line 51
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuOnekey:Ljava/lang/String;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.showMenu"

    .line 52
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenu:Ljava/lang/String;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.HideMenu"

    .line 53
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionHideMenu:Ljava/lang/String;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.VipTip"

    .line 54
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionVipTip:Ljava/lang/String;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.ShowMenuView"

    .line 55
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuView:Ljava/lang/String;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.ShowShare"

    .line 56
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowShare:Ljava/lang/String;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.LoadRomFinish"

    .line 57
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionLoadRomFinish:Ljava/lang/String;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.LoadStageCompleted"

    .line 58
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionLoadStageCompleted:Ljava/lang/String;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.recordEnd"

    .line 59
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionRecordEnd:Ljava/lang/String;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.showInvitePlay"

    .line 60
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowInvite:Ljava/lang/String;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.onOnlineState"

    .line 61
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionOnOnlineState:Ljava/lang/String;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.onHandleMessage"

    .line 62
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionHandleMessage:Ljava/lang/String;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.onHandleEmptyMessage"

    .line 63
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionHandleEmptyMessage:Ljava/lang/String;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.onHandleExitGame"

    .line 64
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionHandleExitGame:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->appCodeIsBigger160:Z

    .line 3
    iput v0, p0, Lcom/papa91/activity/EmuBaseActivity;->m_SVIP:I

    .line 4
    iput v0, p0, Lcom/papa91/activity/EmuBaseActivity;->m_VIP:I

    .line 5
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->onAdShwoIsCloseMine:Z

    const-string v1, ""

    .line 6
    iput-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->messData:Ljava/lang/String;

    .line 7
    iput v0, p0, Lcom/papa91/activity/EmuBaseActivity;->APP_Version:I

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, p0, Lcom/papa91/activity/EmuBaseActivity;->allowPeripheralJoin:Z

    const/4 v3, 0x3

    .line 9
    iput v3, p0, Lcom/papa91/activity/EmuBaseActivity;->getRewardConfigCount:I

    .line 10
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->adLoadError:Z

    .line 11
    iput v0, p0, Lcom/papa91/activity/EmuBaseActivity;->miniRankTime:I

    .line 12
    iput v2, p0, Lcom/papa91/activity/EmuBaseActivity;->rankPlayTime:I

    .line 13
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->hasCheckRealName:Z

    .line 14
    iput-boolean v2, p0, Lcom/papa91/activity/EmuBaseActivity;->needCheckRealName:Z

    const/16 v2, 0xb

    .line 15
    iput v2, p0, Lcom/papa91/activity/EmuBaseActivity;->checkRealNameType:I

    .line 16
    new-instance v2, Lcom/papa91/activity/EmuBaseActivity$4;

    invoke-direct {v2, p0}, Lcom/papa91/activity/EmuBaseActivity$4;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    iput-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->handler:Landroid/os/Handler;

    .line 17
    new-instance v2, Lcom/papa91/activity/EmuBaseActivity$13;

    invoke-direct {v2, p0}, Lcom/papa91/activity/EmuBaseActivity$13;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    iput-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->payListener:Lcom/papa91/paay/PayListener;

    .line 18
    new-instance v2, Lcom/papa91/activity/EmuBaseActivity$14;

    invoke-direct {v2, p0}, Lcom/papa91/activity/EmuBaseActivity$14;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    iput-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->selectListener:Lcom/papa91/paay/PayListener;

    const/4 v2, 0x0

    .line 19
    iput-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;

    .line 20
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->isStartRecord:Z

    .line 21
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->isInBackground:Z

    .line 22
    new-instance v2, Lcom/papa91/activity/EmuBaseActivity$37;

    const-wide/16 v5, 0x3a98

    const-wide/16 v7, 0x3e8

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/papa91/activity/EmuBaseActivity$37;-><init>(Lcom/papa91/activity/EmuBaseActivity;JJ)V

    iput-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->timer:Landroid/os/CountDownTimer;

    const-wide/16 v2, 0x0

    .line 23
    iput-wide v2, p0, Lcom/papa91/activity/EmuBaseActivity;->playTime:J

    .line 24
    iput-wide v2, p0, Lcom/papa91/activity/EmuBaseActivity;->limitTime:J

    .line 25
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->isArenaCheck:Z

    .line 26
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$39;

    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$39;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->limitTimeRunnable:Ljava/lang/Runnable;

    .line 27
    iput-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->gameType:Ljava/lang/String;

    return-void
.end method

.method public static FinishRecord()V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->in2:Landroid/content/Intent;

    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    return-void
.end method

.method public static HideBottomMenu()V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->baseActivity:Lcom/papa91/activity/EmuBaseActivity;

    new-instance v1, Lcom/papa91/activity/EmuBaseActivity$12;

    invoke-direct {v1}, Lcom/papa91/activity/EmuBaseActivity$12;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static LoginNim()V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->in:Landroid/content/Intent;

    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    return-void
.end method

.method public static OutChatRoom()V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->in5:Landroid/content/Intent;

    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    return-void
.end method

.method public static native SendMessStatue(ILjava/lang/String;)I
.end method

.method public static SendTextMessage(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->in3:Landroid/content/Intent;

    const-string v1, "text"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2
    sget-object p0, Lcom/papa91/activity/EmuBaseActivity;->in3:Landroid/content/Intent;

    invoke-static {p0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    return-void
.end method

.method public static ShowSetNetWorkDialog()V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->baseActivity:Lcom/papa91/activity/EmuBaseActivity;

    new-instance v1, Lcom/papa91/activity/EmuBaseActivity$3;

    invoke-direct {v1}, Lcom/papa91/activity/EmuBaseActivity$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static StartRecording()V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->in1:Landroid/content/Intent;

    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    return-void
.end method

.method public static StartcomplainMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartcomplainMsg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.wufun.intent.activity.view.action.emuintent"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.DEFAULT"

    .line 9
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    new-instance v2, Lcom/papa91/common/MyJson;

    invoke-direct {v2}, Lcom/papa91/common/MyJson;-><init>()V

    :try_start_0
    const-string v3, "4"

    .line 11
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    const-string v3, "http"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "?"

    .line 12
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&game_id="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 14
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "?game_id="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    :goto_0
    const-string v3, "link_type"

    .line 15
    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "jump_type"

    .line 16
    invoke-virtual {v2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "link_type_val"

    .line 17
    invoke-virtual {v2, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "crc_link_type_val"

    .line 18
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "tpl_type"

    .line 19
    invoke-virtual {v2, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 21
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "intentDataJson"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    sget-object p0, Lcom/papa91/activity/EmuBaseActivity;->baseActivity:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const-string p0, "com.papa.intent.activity.view.action.emuintent"

    .line 24
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    sget-object p0, Lcom/papa91/activity/EmuBaseActivity;->baseActivity:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void
.end method

.method public static synthetic a(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/PopwindowBean;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->lambda$handleCheckNameResult$5(Lcom/papa91/arc/bean/PopwindowBean;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static acceptInvitePlay(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.acceptInvitePlay"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "accept"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$002(Lcom/papa91/activity/EmuBaseActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/activity/EmuBaseActivity;->needCheckRealName:Z

    return p1
.end method

.method static synthetic access$1002(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->link_type:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/papa91/activity/EmuBaseActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/activity/EmuBaseActivity;->checkRealNameType:I

    return p1
.end method

.method static synthetic access$1102(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->link_type_val:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->crc_link_type_val:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->tpl_type:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/papa91/activity/EmuBaseActivity;Landroid/app/Dialog;Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/papa91/activity/EmuBaseActivity;->handleButtonAction(Landroid/app/Dialog;Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/PopwindowBean;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->handleCheckNameResult(Lcom/papa91/arc/bean/PopwindowBean;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/papa91/activity/EmuBaseActivity;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/activity/EmuBaseActivity;->playCountDown(JZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->showVideoPopWin(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/papa91/activity/EmuBaseActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa91/activity/EmuBaseActivity;->adLoadError:Z

    return p0
.end method

.method static synthetic access$302(Lcom/papa91/activity/EmuBaseActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/activity/EmuBaseActivity;->adLoadError:Z

    return p1
.end method

.method static synthetic access$400(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p11}, Lcom/papa91/activity/EmuBaseActivity;->showVipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    return-void
.end method

.method static synthetic access$500()Lcom/papa91/activity/EmuBaseActivity;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->baseActivity:Lcom/papa91/activity/EmuBaseActivity;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .line 1
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->payType:I

    return v0
.end method

.method static synthetic access$700(Lcom/papa91/activity/EmuBaseActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/activity/EmuBaseActivity;->getSystemPaste()V

    return-void
.end method

.method static synthetic access$800(Lcom/papa91/activity/EmuBaseActivity;)Lcom/papa91/VideoStrategyPop;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/activity/EmuBaseActivity;->videoStrategyPop:Lcom/papa91/VideoStrategyPop;

    return-object p0
.end method

.method static synthetic access$900(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->getPermiss(Ljava/lang/String;)V

    return-void
.end method

.method public static native addEditCheat(Lorg/ppsspp/ppsspp/EditCheatInfo;)V
.end method

.method public static synthetic b(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/activity/EmuBaseActivity;->lambda$onCreate$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/Response;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->lambda$checkRealName$3(Lcom/papa91/arc/bean/Response;I)V

    return-void
.end method

.method static canShowRewardMenu()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->hasRewardBanana:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->startRewardCount:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static native cheatEnable(II)V
.end method

.method public static native checkCheatCode(Ljava/lang/String;Z)Z
.end method

.method public static clickAddCheatEvent(Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.click.addcheat"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "position"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static clickFreeCustomizeEvent(Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.click.freecustomize"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "position"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static complain(II)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xc

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 4
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 5
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->sendHandleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private static copyFolderReserveTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    .line 4
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 7
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    aget-object v1, p0, v0

    invoke-virtual {v1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 9
    invoke-virtual {v4, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static copyStates(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, ""

    const-string v4, "."

    const-string v5, "/"

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 5
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 6
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0x1400

    new-array v7, v0, [B

    if-eqz v6, :cond_b

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 8
    :goto_0
    array-length v0, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-ge v9, v0, :cond_b

    const/4 v10, -0x1

    .line 9
    :try_start_1
    new-instance v0, Ljava/io/File;

    aget-object v11, v6, v9

    invoke-direct {v0, v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".xml"

    .line 11
    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".json"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 12
    :cond_1
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 13
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object v13, v2

    goto :goto_1

    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_1
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v6, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 14
    :goto_2
    invoke-virtual {v11, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    if-eq v12, v10, :cond_3

    .line 15
    invoke-virtual {v0, v7, v8, v12}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    .line 16
    :cond_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 17
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 18
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    goto :goto_3

    .line 19
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v6, v9

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v6, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/papa91/activity/EmuBaseActivity;->copyStates(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_5
    :goto_3
    const/4 v11, 0x0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    .line 21
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 22
    :cond_6
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v12, ".png"

    if-eqz v11, :cond_7

    .line 23
    :try_start_3
    new-instance v0, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v6, v9

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    new-instance v11, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v6, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 25
    :cond_7
    new-instance v11, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v6, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v6, v9

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v11

    move-object v11, v13

    .line 27
    :goto_4
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    .line 30
    invoke-virtual {v13, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v13, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 32
    :try_start_4
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :catch_1
    const/4 v10, -0x1

    :goto_5
    const/4 v13, -0x1

    if-eq v10, v13, :cond_5

    .line 33
    :try_start_5
    new-instance v10, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_9

    .line 34
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 35
    new-instance v10, Ljava/io/FileOutputStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 36
    :goto_6
    invoke-virtual {v8, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v13, -0x1

    if-eq v1, v13, :cond_8

    const/4 v13, 0x0

    .line 37
    invoke-virtual {v10, v7, v13, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_6

    .line 38
    :cond_8
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    .line 39
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 40
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 41
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14, v15}, Ljava/io/File;->setLastModified(J)Z

    .line 42
    :cond_9
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    .line 43
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 44
    new-instance v8, Ljava/io/FileOutputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 45
    :goto_7
    invoke-virtual {v1, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    const/4 v10, -0x1

    if-eq v0, v10, :cond_a

    const/4 v11, 0x0

    .line 46
    invoke-virtual {v8, v7, v11, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_7

    :cond_a
    const/4 v11, 0x0

    .line 47
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 48
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 49
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :goto_8
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p0

    const/4 v8, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    return-void
.end method

.method private creatFrameLayout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->adRoot:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->adParent:Landroid/widget/RelativeLayout;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x3

    .line 4
    div-int/lit8 v0, v0, 0x4

    .line 5
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0xc8

    invoke-direct {v1, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x1

    .line 6
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 7
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->adParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->adRoot:Landroid/widget/RelativeLayout;

    .line 9
    sget v1, Lcom/papa91/mix/R$id;->ad_root:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 10
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 11
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->adRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "VIP\u514d\u5e7f\u544a"

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 15
    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->adRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    const/16 v3, 0xb

    .line 16
    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0x14

    const/4 v3, 0x0

    .line 17
    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v4, 0xa

    .line 18
    invoke-virtual {v1, v2, v4, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    sget v1, Lcom/papa91/mix/R$drawable;->baidu_ad_sponsor_back:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const v1, -0x3a3a3b

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41300000    # 11.0f

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 23
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->adParent:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->adRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 24
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->adParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 25
    new-instance v1, Lcom/papa91/activity/EmuBaseActivity$18;

    invoke-direct {v1, p0}, Lcom/papa91/activity/EmuBaseActivity$18;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->adParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->adParent:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public static createDir(Ljava/lang/String;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\u521b\u5efa\u76ee\u5f55\u5931\u8d25\uff0c\u76ee\u6807\u76ee\u5f55\u5df2\u5b58\u5728\uff01"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v2

    .line 4
    :cond_0
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u521b\u5efa\u76ee\u5f55\u6210\u529f\uff01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 8
    :cond_2
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\u521b\u5efa\u76ee\u5f55\u5931\u8d25\uff01"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v2
.end method

.method public static synthetic d(Lcom/papa91/activity/EmuBaseActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->lambda$showInvitePlayUiJava$1(Landroid/view/View;)V

    return-void
.end method

.method public static native deleteEditCheat(I)V
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static synthetic e(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/Request;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->lambda$checkRealName$4(Lcom/papa91/arc/bean/Request;I)V

    return-void
.end method

.method protected static emuLogCat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emulogcat"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "uid"

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "packageName"

    .line 4
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "version"

    .line 5
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "errorInfo"

    .line 6
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    return-void
.end method

.method public static emuOnResume()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.resume"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static native enableEidtCheat(I)V
.end method

.method public static exitActivity(I)V
    .locals 0

    const/4 p0, 0x2

    .line 1
    invoke-static {p0}, Lcom/papa91/activity/EmuBaseActivity;->sendGamePlay(I)V

    return-void
.end method

.method public static native exitDlgBack(I)V
.end method

.method protected static native exitEmu()I
.end method

.method public static synthetic f(Lcom/papa91/activity/EmuBaseActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/papa91/activity/EmuBaseActivity;->lambda$closeRealNameDialog$7()V

    return-void
.end method

.method private findAppVersionTo16()Z
    .locals 8

    const-string v0, "com.papa91.fc.aso4"

    const-string v1, "com.join.android.app.mgsim.wufun.mha"

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x4000

    .line 2
    :try_start_0
    sget-object v4, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/papa91/activity/EmuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v4, 0x0

    .line 3
    iput-object v4, p0, Lcom/papa91/activity/EmuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;

    .line 4
    :goto_0
    iget-object v4, p0, Lcom/papa91/activity/EmuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    .line 5
    :try_start_1
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/papa91/activity/EmuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;

    if-eqz v4, :cond_1

    .line 6
    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v7, 0x1f4

    if-lt v4, v7, :cond_0

    const/4 v5, 0x1

    .line 7
    :cond_0
    :try_start_2
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    nop

    goto :goto_1

    :catch_2
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 8
    :cond_2
    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v1, 0x1b

    if-lt v4, v1, :cond_3

    const/4 v5, 0x1

    :cond_3
    :goto_1
    if-nez v5, :cond_5

    .line 9
    :try_start_3
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_4

    .line 10
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;

    .line 11
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move v4, v0

    goto :goto_2

    :cond_4
    move v6, v5

    :goto_2
    move v5, v6

    .line 12
    :catch_3
    :cond_5
    iput v4, p0, Lcom/papa91/activity/EmuBaseActivity;->APP_Version:I

    return v5
.end method

.method public static firstLoadAutoSlot()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "firstLoadAutoSlot"

    .line 3
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static firstLoadAutoSlotSet()V
    .locals 3

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "firstLoadAutoSlot"

    const/4 v2, 0x0

    .line 4
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static freeLoadSlot()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "firstTimeFreeLoadSlot"

    const-string v3, ""

    .line 3
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public static freeLoadSlotSet()V
    .locals 4

    const-string v0, "firstTimeFreeLoadSlot"

    .line 1
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/papa91/activity/EmuBaseActivity;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, ""

    .line 3
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic g(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/ButtonBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->lambda$handleButtonAction$6(Lcom/papa91/arc/bean/ButtonBean;)V

    return-void
.end method

.method public static native gameCompleted()I
.end method

.method public static gameEndLocalBattle(JJJJ)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.gameendlocalbattle"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "gameId"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "uid"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "p2Uid"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "time"

    .line 5
    invoke-virtual {v0, p0, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 6
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected static gameOut(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.gameout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "uid"

    .line 3
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "sec"

    .line 4
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static gameStart160(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.gamestart160"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "uid"

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "startMode"

    .line 4
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static gameStartLocalBattle(JJJJ)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.gamestartlocalbattle"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "gameId"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "uid"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "p2Uid"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "time"

    .line 5
    invoke-virtual {v0, p0, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 6
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static getAllDNSUrl()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->dnsJson:Ljava/lang/String;

    return-object v0
.end method

.method public static native getCheatList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/ppsspp/ppsspp/CheatInfo;",
            ">;"
        }
    .end annotation
.end method

.method public static native getCheatList1(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lorg/ppsspp/ppsspp/CheatInfo;",
            ">;"
        }
    .end annotation
.end method

.method public static getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_preferences"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static native getEditCheatList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/ppsspp/ppsspp/EditCheatInfo;",
            ">;"
        }
    .end annotation
.end method

.method public static getExitAdPath()Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->hasAd:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->ExitAdImageFilePath:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getHostPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;

    return-object v0
.end method

.method static getIsAdult()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.show.realname.check"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->baseActivity:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static getNavBarOverride()Ljava/lang/String;
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 3
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "qemu.hw.mainkeys"

    aput-object v3, v2, v6

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    :catchall_0
    :cond_0
    return-object v1
.end method

.method public static getOnlineState()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.getOnlineState"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    return-void
.end method

.method public static getPaste()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->sendHandleEmptyMessage(I)V

    const-string v0, ""

    return-object v0
.end method

.method private getPermiss(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 3
    invoke-static {p0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const-string p1, "\u8bf7\u6388\u6743 \u5f55\u97f3\u6743\u9650"

    .line 4
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static getPhoneInfo()Ljava/lang/String;
    .locals 1

    const-string v0, "is_android"

    return-object v0
.end method

.method public static getRecordInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-string v0, ""

    if-eqz p0, :cond_8

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/"

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    .line 6
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    .line 7
    :goto_0
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_4

    add-int/lit8 v4, v2, 0x1

    move v5, v4

    .line 8
    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_3

    .line 9
    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    aget-object v8, v1, v5

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-lez v10, :cond_2

    .line 10
    aget-object v6, v1, v5

    .line 11
    aget-object v7, v1, v2

    aput-object v7, v1, v5

    .line 12
    aput-object v6, v1, v2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 13
    :goto_2
    array-length v4, v1

    if-ge v2, v4, :cond_8

    .line 14
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_7

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    goto/16 :goto_4

    .line 15
    :cond_5
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 18
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v6, v1, v2

    .line 19
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 20
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    .line 21
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const/4 v4, -0x1

    :goto_3
    if-eq v4, v5, :cond_7

    .line 22
    new-instance v5, Ljava/sql/Date;

    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/sql/Date;-><init>(J)V

    .line 23
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd HH:mm"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    const-string v7, ".png,"

    const-string v8, ","

    if-nez v4, :cond_6

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v1, v2

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v1, v2

    .line 26
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 27
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 28
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v1, v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v1, v2

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_8
    :goto_5
    return-object v0
.end method

.method private getSystemPaste()V
    .locals 7

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->cmb:Landroid/content/ClipboardManager;

    if-nez v0, :cond_0

    const-string v0, "clipboard"

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->cmb:Landroid/content/ClipboardManager;

    .line 3
    :cond_0
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->cmb:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, ""

    move-object v4, v3

    :goto_0
    if-ge v2, v1, :cond_2

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    .line 6
    invoke-virtual {v5, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-static {v4}, Lcom/papa91/activity/EmuBaseActivity;->setPasteForCheat(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private goWebView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "4"

    const-string v2, ""

    const-string v4, ""

    const-string v5, ""

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic h(Lcom/papa91/activity/EmuBaseActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->lambda$showInvitePlayUiJava$2(Landroid/view/View;)V

    return-void
.end method

.method private handleButtonAction(Landroid/app/Dialog;Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;I)V
    .locals 3

    if-eqz p3, :cond_6

    .line 1
    invoke-virtual {p3}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p3}, Lcom/papa91/arc/bean/ButtonBean;->getPopUpWindow()Lcom/papa91/arc/bean/PopwindowBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/papa91/arc/bean/PopwindowBean;->getType()I

    move-result p2

    if-ne v2, p2, :cond_0

    .line 3
    invoke-virtual {p3}, Lcom/papa91/arc/bean/ButtonBean;->getPopUpWindow()Lcom/papa91/arc/bean/PopwindowBean;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Lcom/papa91/activity/EmuBaseActivity;->showNativeRealName(Lcom/papa91/arc/bean/PopwindowBean;I)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Lcom/papa91/arc/dialog/PerfectWarmDialog;

    invoke-direct {p2, p0}, Lcom/papa91/arc/dialog/PerfectWarmDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/papa91/activity/EmuBaseActivity;->alertTipDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 5
    invoke-virtual {p3}, Lcom/papa91/arc/bean/ButtonBean;->getPopUpWindow()Lcom/papa91/arc/bean/PopwindowBean;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->setData(Lcom/papa91/arc/bean/PopwindowBean;)V

    .line 6
    iget-object p2, p0, Lcom/papa91/activity/EmuBaseActivity;->alertTipDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    new-instance p3, Lcom/papa91/activity/EmuBaseActivity$42;

    invoke-direct {p3, p0, p1, p4}, Lcom/papa91/activity/EmuBaseActivity$42;-><init>(Lcom/papa91/activity/EmuBaseActivity;Landroid/app/Dialog;I)V

    invoke-virtual {p2, p3}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->setListener(Lcom/papa91/arc/interfaces/IDialogListener;)Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 7
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->alertTipDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    invoke-virtual {p1}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->show()V

    goto :goto_0

    :cond_1
    const/4 p4, 0x4

    .line 8
    invoke-virtual {p3}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p4, v0, :cond_3

    .line 9
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 11
    :cond_2
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->exitEmu()I

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p3}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v2, p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/papa91/activity/e;

    invoke-direct {p2, p0, p3}, Lcom/papa91/activity/e;-><init>(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/ButtonBean;)V

    const-wide/16 p3, 0x64

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    const/4 p1, 0x3

    .line 14
    invoke-virtual {p3}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p1, p3, :cond_5

    .line 15
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 16
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->exitEmu()I

    goto :goto_0

    .line 17
    :cond_5
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 18
    :cond_6
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void
.end method

.method private handleCheckNameResult(Lcom/papa91/arc/bean/PopwindowBean;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->closeRealNameDialog()V
    return-void

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getPopup()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->showNativeRealName(Lcom/papa91/arc/bean/PopwindowBean;I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->isNoAge()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "antiAddtionWindowUp"

    const-string v1, "0"

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/papa91/activity/EmuBaseActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    new-instance v0, Lcom/papa91/arc/dialog/PerfectWarmDialog;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/PerfectWarmDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 8
    invoke-virtual {v0, p1}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->setData(Lcom/papa91/arc/bean/PopwindowBean;)V

    .line 9
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    new-instance v1, Lcom/papa91/activity/EmuBaseActivity$40;

    invoke-direct {v1, p0, p2}, Lcom/papa91/activity/EmuBaseActivity$40;-><init>(Lcom/papa91/activity/EmuBaseActivity;I)V

    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->setListener(Lcom/papa91/arc/interfaces/IDialogListener;)Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 10
    iget-object p2, p0, Lcom/papa91/activity/EmuBaseActivity;->perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    new-instance v0, Lcom/papa91/activity/a;

    invoke-direct {v0, p0, p1}, Lcom/papa91/activity/a;-><init>(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/PopwindowBean;)V

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 11
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    invoke-virtual {p1}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static hasNavBar(Landroid/content/Context;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_showNavigationBar"

    const-string v2, "bool"

    const-string v3, "android"

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 4
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->getNavBarOverride()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "0"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, p0

    :goto_0
    return v2

    .line 7
    :cond_2
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0
.end method

.method public static hideBottomUIMenu()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const/16 v2, 0xb

    if-le v0, v2, :cond_0

    if-ge v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->baseActivity:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    if-lt v0, v1, :cond_1

    .line 4
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->baseActivity:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1006

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static native httpPostMemberInfo()V
.end method

.method protected static native initEmu()I
.end method

.method protected static native initLaunchConfig([Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method private initSign()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_VERSION:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 5
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "gzRN53VWRF9BYUXomg2014"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/papa91/activity/EmuBaseActivity;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->httpKeySign:Ljava/lang/String;

    .line 7
    new-instance v0, Lcom/papa91/common/MyJson;

    invoke-direct {v0}, Lcom/papa91/common/MyJson;-><init>()V

    :try_start_1
    const-string v1, "version"

    .line 8
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceid"

    .line 9
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sign"

    .line 10
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->httpKeySign:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    new-instance v1, Lcom/papa91/common/MyJson;

    invoke-direct {v1}, Lcom/papa91/common/MyJson;-><init>()V

    .line 12
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "args"

    .line 13
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "messages"

    .line 14
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 15
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 16
    :goto_1
    new-instance v1, Lcom/papa91/utils/HttpUtils;

    invoke-direct {v1}, Lcom/papa91/utils/HttpUtils;-><init>()V

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/papa91/utils/HttpUtils;->EXIT_AD_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/advertisement/simulator_sign_out_ad"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/papa91/activity/EmuBaseActivity$19;

    invoke-direct {v3, p0}, Lcom/papa91/activity/EmuBaseActivity$19;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 19
    invoke-virtual {v1, v2, v0, v3}, Lcom/papa91/utils/HttpUtils;->sendRequestWithHttpClient(Ljava/lang/String;Ljava/lang/String;Lcom/papa91/utils/HttpFinishInterface;)V

    return-void
.end method

.method private isFirstReame(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/papa91/activity/EmuBaseActivity;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "true"

    .line 3
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :try_start_1
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public static isLogined()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNetworkConnected()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "connectivity"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isPathWriteable(Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p0, "test.txt"

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 4
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static isRewardConfigInited()Z
    .locals 2

    .line 1
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->getRewardConfig:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSettingSystemManage()I
    .locals 7

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->baseActivity:Lcom/papa91/activity/EmuBaseActivity;

    .line 2
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "BBK_GIONE_NUM_GUIDE"

    const/4 v2, 0x0

    .line 3
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 5
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x7

    if-le v3, v0, :cond_0

    return v2

    .line 7
    :cond_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "BBK"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "android.intent.category.LAUNCHER"

    const/4 v5, 0x0

    const-string v6, "android.intent.action.MAIN"

    if-eqz v1, :cond_3

    .line 9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 10
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->baseActivity:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 12
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.iqoo.secure"

    .line 15
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 16
    sput v4, Lcom/papa91/activity/EmuBaseActivity;->systemSettingType:I

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->BBK_GIONEE_MAIN_NAME:Ljava/lang/String;

    .line 18
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->systemSettingType:I

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    const-string v1, "GiONEE"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "GIONEE"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const-string v1, "OPPO"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x3

    return v0

    :cond_5
    const-string v1, "vivo"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v4

    :cond_6
    return v2

    .line 23
    :cond_7
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 24
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->baseActivity:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 26
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 27
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.gionee.softmanager"

    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v2, 0x2

    .line 30
    sput v2, Lcom/papa91/activity/EmuBaseActivity;->systemSettingType:I

    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->BBK_GIONEE_MAIN_NAME:Ljava/lang/String;

    .line 32
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->systemSettingType:I

    return v0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    return v2
.end method

.method public static native jMenuSaveState(I)I
.end method

.method private synthetic lambda$checkRealName$3(Lcom/papa91/arc/bean/Response;I)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/arc/bean/PopwindowBean;

    if-eqz p1, :cond_4

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->handleCheckNameResult(Lcom/papa91/arc/bean/PopwindowBean;I)V

    .line 4
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getEndDuration()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-lez v1, :cond_1

    const-wide/16 v3, 0x0

    .line 5
    iput-wide v3, p0, Lcom/papa91/activity/EmuBaseActivity;->playTime:J

    .line 6
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getEndDuration()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    if-ne p2, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v3, v4, v0}, Lcom/papa91/activity/EmuBaseActivity;->playCountDown(JZ)V

    :cond_1
    if-ne p2, v2, :cond_4

    .line 7
    invoke-direct {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->showRealNameResult(Lcom/papa91/arc/bean/PopwindowBean;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    .line 10
    :goto_0
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 11
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->loading_real_name:Z

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$checkRealName$4(Lcom/papa91/arc/bean/Request;I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/papa91/arc/http/HttpUtils;->checkRealName(Lcom/papa91/arc/bean/Request;)Lcom/papa91/arc/bean/Response;

    move-result-object p1

    .line 2
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->loading_real_name:Z

    .line 3
    new-instance v1, Lcom/papa91/activity/g;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa91/activity/g;-><init>(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/Response;I)V

    invoke-static {v1}, Lcom/papa91/arc/ext/ThreadManager;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->loading_real_name:Z

    :goto_0
    return-void
.end method

.method private synthetic lambda$closeRealNameDialog$7()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->alertTipDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/papa91/arc/view/BaseDialog;->dismiss()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/papa91/arc/view/BaseDialog;->dismiss()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->realNameDialog:Lcom/papa91/arc/dialog/RealNameDialog;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$handleButtonAction$6(Lcom/papa91/arc/bean/ButtonBean;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/papa91/arc/bean/ButtonBean;->getJumpLink()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->goWebView(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "clickKnowGoRealPage"

    const-string v0, "0"

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/papa91/activity/EmuBaseActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$handleCheckNameResult$5(Lcom/papa91/arc/bean/PopwindowBean;Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->isNoAge()Z

    move-result p2

    const-string v0, "0"

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getStatus()I

    move-result p2

    if-nez p2, :cond_0

    const-string p1, "nonageAstrictHint"

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/papa91/activity/EmuBaseActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getPopup()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    const-string p1, "realNameUpWindows"

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/papa91/activity/EmuBaseActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, ", dst="

    .line 1
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    :cond_1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "async state(oldVersion) src="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {v1, p2}, Lcom/papa91/activity/EmuBaseActivity;->copyStates(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {v1}, Lcom/papa91/arc/util/FileUtils;->deleteDirs(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :cond_2
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "async state src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/papa91/common/BaseAppConfig;->APP_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->copyStates(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/papa91/common/BaseAppConfig;->APP_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/papa91/activity/EmuBaseActivity;->copyStates(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private synthetic lambda$showInvitePlayUiJava$1(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->acceptInvitePlay(I)V

    .line 2
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->invitePop:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-virtual {p1}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->dismiss()V

    .line 3
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->timer:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method

.method private synthetic lambda$showInvitePlayUiJava$2(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->acceptInvitePlay(I)V

    .line 2
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->invitePop:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-virtual {p1}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->dismiss()V

    .line 3
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->timer:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method

.method public static loadAutoSlot(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/papa91/activity/EmuBaseActivity;->loadState(Ljava/lang/String;)I

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const-string p1, "readAutosave"

    invoke-static {p1, p0}, Lcom/papa91/activity/EmuBaseActivity;->sendEmuStat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    sget-object p0, Lcom/papa91/activity/EmuBaseActivity;->autoSaveSlot:Lcom/papa91/view/AutoSaveSlot;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/papa91/view/AutoSaveSlot;->start()V

    .line 4
    :cond_0
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->firstLoadAutoSlot()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->firstLoadAutoSlotSet()V

    .line 6
    sget-object p0, Lcom/papa91/activity/EmuBaseActivity;->autoSaveSlot:Lcom/papa91/view/AutoSaveSlot;

    invoke-virtual {p0}, Lcom/papa91/view/AutoSaveSlot;->showQuickLoadTip()V

    .line 7
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->showAutoRecordTips()V

    :cond_1
    return-void
.end method

.method public static loadRomCompleted()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionLoadRomFinish:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 3
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$35;

    invoke-direct {v0}, Lcom/papa91/activity/EmuBaseActivity$35;-><init>()V

    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->runOnUiThread1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static loadStageCompleted(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionLoadStageCompleted:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "message"

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    return-void
.end method

.method public static native loadStageData(I)V
.end method

.method public static native loadState(Ljava/lang/String;)I
.end method

.method public static native modifyEditCheat(ILorg/ppsspp/ppsspp/EditCheatInfo;)V
.end method

.method public static modifyRecordInfo(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    const-string v1, ""

    if-eqz v0, :cond_10

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto/16 :goto_8

    .line 2
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/"

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    .line 4
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    return-object v1

    .line 6
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v4, 0x0

    .line 7
    :goto_0
    array-length v6, v2

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ge v4, v6, :cond_4

    add-int/lit8 v6, v4, 0x1

    move v7, v6

    .line 8
    :goto_1
    array-length v8, v2

    if-ge v7, v8, :cond_3

    .line 9
    aget-object v8, v2, v4

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    aget-object v10, v2, v7

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-lez v12, :cond_2

    .line 10
    aget-object v8, v2, v7

    .line 11
    aget-object v9, v2, v4

    aput-object v9, v2, v7

    .line 12
    aput-object v8, v2, v4

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    move v4, v6

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "vba"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 14
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v4

    move-object v4, v0

    move-object/from16 v0, v18

    goto :goto_2

    :cond_5
    move-object v4, v0

    :goto_2
    if-eqz p2, :cond_6

    .line 15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_v2"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v6

    :cond_6
    const/4 v6, 0x0

    move-object v8, v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 17
    :goto_3
    array-length v11, v2

    if-ge v9, v11, :cond_f

    .line 18
    aget-object v11, v2, v9

    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_e

    aget-object v11, v2, v9

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    goto/16 :goto_6

    .line 19
    :cond_7
    aget-object v11, v2, v9

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 20
    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v11, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 21
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 22
    aget-object v13, v2, v9

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    aget-object v14, v2, v9

    .line 23
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    add-int/2addr v14, v7

    .line 24
    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, -0x1

    .line 25
    :try_start_0
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const/4 v13, -0x1

    :goto_4
    if-eq v13, v14, :cond_e

    .line 26
    new-instance v14, Ljava/sql/Date;

    aget-object v15, v2, v9

    move-object/from16 p0, v8

    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-direct {v14, v7, v8}, Ljava/sql/Date;-><init>(J)V

    .line 27
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd HH:mm"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v7, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ";"

    const-string v14, ","

    if-nez v13, :cond_8

    .line 29
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v2, v9

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v2, v9

    .line 30
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ".png,"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 31
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v8, p0

    move-object/from16 p2, v0

    move-object/from16 v16, v3

    move-object/from16 p1, v4

    goto/16 :goto_7

    :cond_8
    const/16 v13, 0x2f

    .line 32
    invoke-virtual {v11, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    if-nez v6, :cond_9

    .line 33
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v11, v5, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v6, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_9
    const-string v15, "TmpState"

    if-nez p0, :cond_a

    .line 34
    new-instance v5, Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    move-object/from16 v5, p0

    .line 35
    :goto_5
    new-instance v13, Ljava/io/File;

    move-object/from16 p2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    .line 37
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    :cond_b
    const/16 v0, 0x2f

    .line 38
    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 39
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x1

    add-int/2addr v0, v15

    .line 40
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v11, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ".png"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v16, v3

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 43
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 44
    aget-object v12, v2, v9

    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 45
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v17, v2, v9

    move-object/from16 p1, v4

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 46
    aget-object v12, v2, v9

    move-object/from16 v17, v5

    move-object v15, v6

    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    .line 47
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    aget-object v0, v2, v9

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 49
    aget-object v0, v2, v9

    invoke-virtual {v0, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 50
    invoke-virtual {v12, v5, v6}, Ljava/io/File;->setLastModified(J)Z

    .line 51
    :cond_c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 53
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 55
    invoke-virtual {v0, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 56
    invoke-virtual {v6, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    .line 57
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v10, v10, 0x1

    move-object v1, v0

    move-object v6, v15

    move-object/from16 v8, v17

    goto :goto_7

    :cond_e
    :goto_6
    move-object/from16 p2, v0

    move-object/from16 v16, v3

    move-object/from16 p1, v4

    move-object/from16 p0, v8

    move-object/from16 v8, p0

    :goto_7
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, p1

    move-object/from16 v0, p2

    move-object/from16 v3, v16

    const/4 v5, 0x0

    const/4 v7, 0x1

    goto/16 :goto_3

    :cond_f
    move-object/from16 p0, v8

    if-eqz v6, :cond_10

    if-eqz p0, :cond_10

    move-object/from16 v8, p0

    .line 59
    invoke-static {v8, v6}, Lcom/papa91/activity/EmuBaseActivity;->copyFolderReserveTime(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_8
    return-object v1
.end method

.method protected static netBattleMatchEfficiency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.netbattlematchefficiency"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "uid"

    .line 3
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "jsonData"

    .line 4
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected static native netSitDown(Z)V
.end method

.method public static onAutoSaveClick()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$33;

    invoke-direct {v0}, Lcom/papa91/activity/EmuBaseActivity$33;-><init>()V

    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->runOnUiThread1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onAutoSaveDoubleClick()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$34;

    invoke-direct {v0}, Lcom/papa91/activity/EmuBaseActivity$34;-><init>()V

    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->runOnUiThread1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onLoadCheatListData()V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->cheatInfos:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->cheatInfos:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    :goto_0
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->cheatInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->getCheatList1(I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->cheatInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static native onLoginFinish()V
.end method

.method public static openJavaEmuMenu(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity$MenuType;->slot:Lcom/papa91/activity/EmuBaseActivity$MenuType;

    invoke-virtual {v0}, Lcom/papa91/activity/EmuBaseActivity$MenuType;->getCode()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 2
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuSlot:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/papa91/activity/EmuBaseActivity;->openMenu(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity$MenuType;->cheating:Lcom/papa91/activity/EmuBaseActivity$MenuType;

    invoke-virtual {v0}, Lcom/papa91/activity/EmuBaseActivity$MenuType;->getCode()I

    move-result v0

    if-ne p0, v0, :cond_1

    .line 4
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuCheat:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/papa91/activity/EmuBaseActivity;->openMenu(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity$MenuType;->performance:Lcom/papa91/activity/EmuBaseActivity$MenuType;

    invoke-virtual {v0}, Lcom/papa91/activity/EmuBaseActivity$MenuType;->getCode()I

    move-result v0

    if-ne p0, v0, :cond_2

    .line 6
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuPerformance:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/papa91/activity/EmuBaseActivity;->openMenu(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity$MenuType;->vip:Lcom/papa91/activity/EmuBaseActivity$MenuType;

    invoke-virtual {v0}, Lcom/papa91/activity/EmuBaseActivity$MenuType;->getCode()I

    move-result v0

    if-ne p0, v0, :cond_3

    .line 8
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success"

    invoke-static {p0, v0}, Lcom/papa91/activity/EmuBaseActivity;->openMenu(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_3
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity$MenuType;->oneKey:Lcom/papa91/activity/EmuBaseActivity$MenuType;

    invoke-virtual {v0}, Lcom/papa91/activity/EmuBaseActivity$MenuType;->getCode()I

    move-result v0

    if-ne p0, v0, :cond_4

    .line 10
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuOnekey:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/papa91/activity/EmuBaseActivity;->openMenu(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_4
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity$MenuType;->gate:Lcom/papa91/activity/EmuBaseActivity$MenuType;

    invoke-virtual {v0}, Lcom/papa91/activity/EmuBaseActivity$MenuType;->getCode()I

    move-result v0

    if-ne p0, v0, :cond_5

    .line 12
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuGate:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/papa91/activity/EmuBaseActivity;->openMenu(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public static openMenu(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    return-void
.end method

.method public static pauseGame(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    sput-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->gameIsPause:Z

    .line 2
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$30;

    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$30;-><init>(I)V

    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->runOnUiThread1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static payCondition(I)V
    .locals 0

    .line 1
    sput p0, Lcom/papa91/activity/EmuBaseActivity;->payType:I

    const/4 p0, 0x2

    .line 2
    invoke-static {p0}, Lcom/papa91/activity/EmuBaseActivity;->sendHandleEmptyMessage(I)V

    return-void
.end method

.method private playCountDown(JZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->limitTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iput-wide p1, p0, Lcom/papa91/activity/EmuBaseActivity;->limitTime:J

    .line 3
    iput-boolean p3, p0, Lcom/papa91/activity/EmuBaseActivity;->isArenaCheck:Z

    .line 4
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/papa91/activity/EmuBaseActivity;->limitTimeRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static playTime(J)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.playtime"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    const-string v2, "gameId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sec"

    .line 4
    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static raiseVip(I)V
    .locals 3

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const-string p0, "4"

    const-string v0, "0"

    const-string v1, "http://anv3cjapi.5fun.com/member/battle_kick/index"

    const-string v2, ""

    .line 1
    invoke-static {p0, v0, v1, v2, v2}, Lcom/papa91/activity/EmuBaseActivity;->StartcomplainMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xb

    .line 3
    iput v1, v0, Landroid/os/Message;->what:I

    .line 4
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 5
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->sendHandleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static recordEnd(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionRecordEnd:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    div-int/lit8 p0, p0, 0x3c

    const-string v1, "_params_rank_play_time"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    return-void
.end method

.method protected static native requestOnInquiry(Ljava/lang/String;)V
.end method

.method protected static native requestOnPay(Ljava/lang/String;)V
.end method

.method protected static native requestOnsign(Ljava/lang/String;)V
.end method

.method public static rewardBananaEvent(Ljava/lang/String;Ljava/lang/String;III)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.reward.analytics"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "action"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "uniqueId"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "gameId"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "uid"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "amount"

    .line 6
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "times"

    .line 7
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "type"

    .line 8
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method static runOnUiThread1(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static native saveBindsFile()V
.end method

.method public static native saveSnap()V
.end method

.method public static selectCondition(I)V
    .locals 0

    .line 1
    sput p0, Lcom/papa91/activity/EmuBaseActivity;->payType:I

    const/4 p0, 0x1

    .line 2
    invoke-static {p0}, Lcom/papa91/activity/EmuBaseActivity;->sendHandleEmptyMessage(I)V

    return-void
.end method

.method public static send(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->getHostPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "packageName"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    const-string v1, "gameId"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x20

    .line 3
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5
    invoke-static {p0}, Lcom/papa91/activity/EmuBaseActivity;->sendInBridge(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static sendAddFriends(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.addFriends"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "from"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    return-void
.end method

.method public static varargs sendEmuStat(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.stat"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "event"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "gameId"

    .line 3
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "readAutosave"

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "onclickAutosave"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const-string p0, "pos"

    const/4 v1, 0x0

    .line 5
    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    :cond_1
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static sendFriendsApplication(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.friendsApplication"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "action"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    return-void
.end method

.method protected static sendGameExit()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionHandleExitGame:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static sendGamePlay(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.gamePlay"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "action"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    sget p0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    const-string v1, "startMode"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    sget-object p0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    const-string v1, "gameId"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    sget-object p0, Lcom/papa91/activity/EmuBaseActivity;->GroupID:Ljava/lang/String;

    const-string v1, "roomId"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    sget-object p0, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    const-string v1, "uid"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    return-void
.end method

.method public static sendHandleEmptyMessage(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.onHandleEmptyMessage"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "_what"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static sendHandleMessage(Landroid/os/Message;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.onHandleMessage"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "_message"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static sendInBridge(Landroid/content/Intent;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->useIndependentEmu:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 2
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xb

    .line 3
    iput v1, v0, Landroid/os/Message;->what:I

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 7
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v2, "action"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object p0, Lcom/papa91/activity/EmuBaseActivity;->className:Ljava/lang/String;

    const-string v2, "fromCls"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    :try_start_0
    sget-object p0, Lcom/papa91/activity/EmuBaseActivity;->mMessenger:Landroid/os/Messenger;

    if-eqz p0, :cond_2

    .line 11
    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object p0

    instance-of p0, p0, Lcom/papa91/activity/EmuBaseActivity;

    if-eqz p0, :cond_3

    .line 13
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->bindBridge()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static sendReceiveInvitation()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.receiveInvitation"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    return-void
.end method

.method public static sendStatEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "FCProduceBanner"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    const-string v0, ""

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, v0, v1, v1, p0}, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaEvent(Ljava/lang/String;Ljava/lang/String;III)Z

    :cond_0
    return-void
.end method

.method public static sendUmengEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "papa_broadcast_share_umengevent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "umengEvent"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "eventData"

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    return-void
.end method

.method public static native setAdResult(I)V
.end method

.method public static setAdVisible(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x9

    .line 2
    iput v0, p1, Landroid/os/Message;->what:I

    .line 3
    iput p0, p1, Landroid/os/Message;->arg1:I

    .line 4
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->sendHandleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v0, 0xa

    .line 6
    iput v0, p1, Landroid/os/Message;->what:I

    .line 7
    iput p0, p1, Landroid/os/Message;->arg1:I

    .line 8
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->sendHandleMessage(Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method public static setBBK_GOINEE_sysAPP()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->sendHandleEmptyMessage(I)V

    return-void
.end method

.method public static setBananaVisible(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$31;

    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$31;-><init>(Z)V

    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->runOnUiThread1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setBannerType(II)V
    .locals 0

    return-void
.end method

.method public static setEmuUIVisible(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$36;

    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$36;-><init>(I)V

    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->runOnUiThread1(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setFirestReame(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/papa91/activity/EmuBaseActivity;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method protected static native setJoyStickKey([I)V
.end method

.method protected static native setJson(Ljava/lang/String;)I
.end method

.method public static setOnlineState(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.setOnlineState"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    return-void
.end method

.method protected static native setPadVisible(II)I
.end method

.method protected static setPadVisible(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/papa91/activity/EmuBaseActivity;->setPadVisible(II)I

    return-void
.end method

.method protected static native setPasteForCheat(Ljava/lang/String;)V
.end method

.method public static native setPause(I)V
.end method

.method public static native setRewardResult(II)V
.end method

.method public static native setSPBind(III)V
.end method

.method public static native setSPVisible(Z)V
.end method

.method public static native setShareResult(II)V
.end method

.method protected static native setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native setUserState(I)V
.end method

.method protected static native setVipType(II)V
.end method

.method public static native showAutoRecordTips()V
.end method

.method protected static native showDailog(I)I
.end method

.method public static showExitDlg(IIIILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gameId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "level"

    .line 4
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "progress"

    .line 5
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "levelUrl"

    .line 6
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "time"

    .line 7
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "max"

    .line 8
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p0, 0x0

    new-array p0, p0, [I

    const-string p1, "battleUids"

    .line 9
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 10
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->getHostPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.join.mgps.activity.SimulatorExitPlayActivity_"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static native showInvitePlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public static showJavaMembTips(II)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionVipTip:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "tipid"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "charid"

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    return-void
.end method

.method public static showJavaShortCut(Z)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    new-instance p0, Landroid/content/Intent;

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenu:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Landroid/content/Intent;

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionHideMenu:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    :goto_0
    invoke-static {p0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    return-void
.end method

.method private showNativeRealName(Lcom/papa91/arc/bean/PopwindowBean;I)V
    .locals 2

    const-string v0, "realNameDisplayWindow"

    const-string v1, "0"

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/papa91/activity/EmuBaseActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/papa91/arc/dialog/RealNameDialog;

    new-instance v1, Lcom/papa91/activity/EmuBaseActivity$41;

    invoke-direct {v1, p0, p2}, Lcom/papa91/activity/EmuBaseActivity$41;-><init>(Lcom/papa91/activity/EmuBaseActivity;I)V

    invoke-direct {v0, p0, p1, v1}, Lcom/papa91/arc/dialog/RealNameDialog;-><init>(Landroid/content/Context;Lcom/papa91/arc/bean/PopwindowBean;Lcom/papa91/arc/interfaces/RealNameCallBack;)V

    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->realNameDialog:Lcom/papa91/arc/dialog/RealNameDialog;

    .line 3
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/papa91/arc/dialog/RealNameDialog;->show(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static showNetExitDlg(IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gameId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "level"

    .line 4
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "progress"

    .line 5
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "levelUrl"

    .line 6
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "time"

    .line 7
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "max"

    .line 8
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    :try_start_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ","

    .line 10
    invoke-virtual {p5, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 11
    array-length p1, p0

    if-eqz p1, :cond_1

    .line 12
    array-length p1, p0

    new-array p1, p1, [I

    const/4 p2, 0x0

    .line 13
    :goto_0
    array-length p3, p0

    if-ge p2, p3, :cond_0

    .line 14
    aget-object p3, p0, p2

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    aput p3, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "battleUids"

    .line 15
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 17
    :cond_1
    :goto_1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->getHostPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.join.mgps.activity.SimulatorExitPlayActivity_"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showRealNameResult(Lcom/papa91/arc/bean/PopwindowBean;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getEndDuration()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 2
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->isPopup()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "clickKnowGoRealPage"

    const-string v2, "0"

    .line 3
    invoke-virtual {p0, p1, v2}, Lcom/papa91/activity/EmuBaseActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->netSitDown(Z)V

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 6
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->netSitDown(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static showRewardDialog(Ljava/lang/String;II)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$21;

    invoke-direct {v0, p1, p0}, Lcom/papa91/activity/EmuBaseActivity$21;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showRewardDialog1(Ljava/lang/String;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaDialog:Lcom/papa91/view/RewardBananaDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaDialog:Lcom/papa91/view/RewardBananaDialog;

    invoke-virtual {v0}, Lcom/papa91/view/BaseDialog;->dismiss()V

    .line 3
    :cond_0
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaDialog:Lcom/papa91/view/RewardBananaDialog;

    .line 4
    :cond_1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaDialog:Lcom/papa91/view/RewardBananaDialog;

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$24;

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/papa91/mix/R$style;->Dialog:I

    invoke-direct {v0, v2, v3}, Lcom/papa91/activity/EmuBaseActivity$24;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaDialog:Lcom/papa91/view/RewardBananaDialog;

    .line 6
    new-instance v2, Lcom/papa91/activity/EmuBaseActivity$25;

    invoke-direct {v2}, Lcom/papa91/activity/EmuBaseActivity$25;-><init>()V

    invoke-virtual {v0, v2}, Lcom/papa91/view/RewardBananaDialog;->setListener(Lcom/papa91/view/RewardBananaDialog$OnRewardBananaListener;)V

    .line 7
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaDialog:Lcom/papa91/view/RewardBananaDialog;

    new-instance v2, Lcom/papa91/activity/EmuBaseActivity$26;

    invoke-direct {v2}, Lcom/papa91/activity/EmuBaseActivity$26;-><init>()V

    invoke-virtual {v0, v2}, Lcom/papa91/view/BaseDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 8
    :cond_2
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaDialog:Lcom/papa91/view/RewardBananaDialog;

    invoke-virtual {v0}, Lcom/papa91/view/RewardBananaDialog;->show()V

    const/4 v0, 0x1

    .line 9
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->setPause(I)V

    const/4 v7, 0x2

    .line 10
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 11
    :try_start_0
    new-instance v0, Lcom/papa91/common/MyJson;

    invoke-direct {v0, p0}, Lcom/papa91/common/MyJson;-><init>(Ljava/lang/String;)V

    const-string p0, "banana_reward_config"

    .line 12
    invoke-virtual {v0, p0, v1}, Lcom/papa91/common/MyJson;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 13
    new-instance v0, Lcom/papa91/common/MyJson;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/papa91/common/MyJson;-><init>(Ljava/lang/String;)V

    const-string p0, "max_reward_amount"

    .line 14
    invoke-virtual {v0, p0, v2}, Lcom/papa91/common/MyJson;->getInt(Ljava/lang/String;I)I

    const-string p0, "min_reward_amount"

    .line 15
    invoke-virtual {v0, p0, v2}, Lcom/papa91/common/MyJson;->getInt(Ljava/lang/String;I)I

    const-string p0, "max_reward_times"

    .line 16
    invoke-virtual {v0, p0, v2}, Lcom/papa91/common/MyJson;->getInt(Ljava/lang/String;I)I

    const-string p0, "min_reward_times"

    .line 17
    invoke-virtual {v0, p0, v2}, Lcom/papa91/common/MyJson;->getInt(Ljava/lang/String;I)I

    const-string p0, "left_play_reward_count"

    .line 18
    invoke-virtual {v0, p0, v2}, Lcom/papa91/common/MyJson;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/papa91/activity/EmuBaseActivity;->left_play_reward_count:I

    const-string p0, "left_device_play_reward_count"

    .line 19
    invoke-virtual {v0, p0, v2}, Lcom/papa91/common/MyJson;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/papa91/activity/EmuBaseActivity;->left_device_play_reward_count:I

    .line 20
    sget p0, Lcom/papa91/activity/EmuBaseActivity;->reward_left_count:I

    if-gez p0, :cond_3

    sput v2, Lcom/papa91/activity/EmuBaseActivity;->reward_left_count:I

    .line 21
    :cond_3
    sget p0, Lcom/papa91/activity/EmuBaseActivity;->reward_left_count:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 22
    :try_start_1
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->reward_amount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 23
    :try_start_2
    sget v2, Lcom/papa91/activity/EmuBaseActivity;->reward_times:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v10, v0

    move v0, p0

    move p0, v2

    move v2, v10

    goto :goto_0

    :catch_0
    move-exception v1

    move v10, v0

    move v0, p0

    move-object p0, v1

    move v1, v10

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    move-object v10, v0

    move v0, p0

    move-object p0, v10

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    const/4 v0, 0x0

    :goto_0
    move v6, p0

    move v3, v0

    move v5, v2

    goto :goto_3

    :catch_2
    move-exception p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 24
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v0

    move v5, v1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x0

    .line 25
    :goto_3
    sget-object p0, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaDialog:Lcom/papa91/view/RewardBananaDialog;

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_ID:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/papa91/view/RewardBananaDialog;->setAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaDialog:Lcom/papa91/view/RewardBananaDialog;

    sget-object v4, Lcom/papa91/activity/EmuBaseActivity;->unique_id:Ljava/lang/String;

    sget-object v8, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    sget v9, Lcom/papa91/activity/EmuBaseActivity;->total_reward_amount:I

    invoke-virtual/range {v2 .. v9}, Lcom/papa91/view/RewardBananaDialog;->setData(ILjava/lang/String;IIILjava/lang/String;I)V

    return-void
.end method

.method static showRewardMenu()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$29;

    invoke-direct {v0}, Lcom/papa91/activity/EmuBaseActivity$29;-><init>()V

    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->runOnUiThread1(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected static showRewardTipDialog()V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa91/view/RewardBananaTipDialog;

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/papa91/mix/R$style;->Dialog:I

    invoke-direct {v0, v1, v2}, Lcom/papa91/view/RewardBananaTipDialog;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance v1, Lcom/papa91/activity/EmuBaseActivity$22;

    invoke-direct {v1}, Lcom/papa91/activity/EmuBaseActivity$22;-><init>()V

    invoke-virtual {v0, v1}, Lcom/papa91/view/BaseDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3
    invoke-virtual {v0}, Lcom/papa91/view/RewardBananaTipDialog;->show()V

    const/4 v0, 0x1

    .line 4
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->setPause(I)V

    return-void
.end method

.method static showToast(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$32;

    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$32;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->runOnUiThread1(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showVideoPopWin(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->videoStrategyPop:Lcom/papa91/VideoStrategyPop;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/papa91/VideoStrategyPop;

    new-instance v1, Lcom/papa91/activity/EmuBaseActivity$6;

    invoke-direct {v1, p0}, Lcom/papa91/activity/EmuBaseActivity$6;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/papa91/VideoStrategyPop;-><init>(Landroid/app/Activity;ILjava/lang/String;Lcom/papa91/VideoStrategyPop$VideoPopListener;)V

    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->videoStrategyPop:Lcom/papa91/VideoStrategyPop;

    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x11

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 4
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->videoStrategyPop:Lcom/papa91/VideoStrategyPop;

    new-instance p2, Lcom/papa91/activity/EmuBaseActivity$7;

    invoke-direct {p2, p0}, Lcom/papa91/activity/EmuBaseActivity$7;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method private showVipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 13

    move-object v11, p0

    .line 1
    iget-object v0, v11, Lcom/papa91/activity/EmuBaseActivity;->messageDialog:Lcom/papa91/MessageVipCommonDialog;

    if-nez v0, :cond_0

    .line 2
    new-instance v12, Lcom/papa91/activity/EmuBaseActivity$8;

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->context:Landroid/content/Context;

    move-object v0, v12

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/papa91/activity/EmuBaseActivity$8;-><init>(Lcom/papa91/activity/EmuBaseActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v12, v11, Lcom/papa91/activity/EmuBaseActivity;->messageDialog:Lcom/papa91/MessageVipCommonDialog;

    .line 3
    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    .line 4
    iget-object v0, v11, Lcom/papa91/activity/EmuBaseActivity;->messageDialog:Lcom/papa91/MessageVipCommonDialog;

    new-instance v1, Lcom/papa91/activity/EmuBaseActivity$9;

    invoke-direct {v1, p0}, Lcom/papa91/activity/EmuBaseActivity$9;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/papa91/MessageVipCommonDialog;->setCancelBtn(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, v11, Lcom/papa91/activity/EmuBaseActivity;->messageDialog:Lcom/papa91/MessageVipCommonDialog;

    new-instance v1, Lcom/papa91/activity/EmuBaseActivity$10;

    invoke-direct {v1, p0}, Lcom/papa91/activity/EmuBaseActivity$10;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/papa91/MessageVipCommonDialog;->setImgListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, v11, Lcom/papa91/activity/EmuBaseActivity;->messageDialog:Lcom/papa91/MessageVipCommonDialog;

    new-instance v1, Lcom/papa91/activity/EmuBaseActivity$11;

    move-object p1, v1

    move-object p2, p0

    move/from16 p3, p8

    move/from16 p4, p9

    move/from16 p5, p10

    move/from16 p6, p11

    invoke-direct/range {p1 .. p6}, Lcom/papa91/activity/EmuBaseActivity$11;-><init>(Lcom/papa91/activity/EmuBaseActivity;IIII)V

    invoke-virtual {v0, v1}, Lcom/papa91/MessageVipCommonDialog;->setOkBtn(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public static sign()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->getHostPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.join.mgps.activity.login.LoginSplashActivity_"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static snapFinished(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionShowShare:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "imagePath"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    return-void
.end method

.method public static spVisibleState()Z
    .locals 3

    .line 1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_isSpVisible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static startAPPActivity()V
    .locals 5

    const-string v0, ""

    .line 1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v2, Landroid/content/ComponentName;

    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;

    const-string v4, "com.join.mgps.activity.ForumActivity_"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "fid"

    .line 5
    sget v4, Lcom/papa91/activity/EmuBaseActivity;->fid:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "name"

    .line 6
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "icon_src"

    .line 7
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "users"

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "posts"

    .line 9
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "add_time"

    .line 10
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 12
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "key_forum_bean"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.wufun.intent.activity.view.action.emuintent"

    .line 13
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->baseActivity:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startForumsActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->sendHandleEmptyMessage(I)V

    return-void
.end method

.method public static startForumsActivityForAd(II)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x65

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 4
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 5
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->sendHandleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static startRewardCount()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->startRewardCount:Z

    .line 2
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->showRewardMenu()V

    return-void
.end method

.method public static startShare(ILjava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->baseActivity:Lcom/papa91/activity/EmuBaseActivity;

    new-instance v1, Lcom/papa91/activity/EmuBaseActivity$2;

    invoke-direct {v1, p1, p0}, Lcom/papa91/activity/EmuBaseActivity$2;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static startShowAd(II)V
    .locals 1

    .line 1
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->baseActivity:Lcom/papa91/activity/EmuBaseActivity;

    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$1;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static startplayTime(I)V
    .locals 2

    int-to-long v0, p0

    .line 1
    invoke-static {v0, v1}, Lcom/papa91/activity/EmuBaseActivity;->playTime(J)Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startplayTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static startplayTime(J)V
    .locals 2

    .line 3
    invoke-static {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->playTime(J)Z

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startplayTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static toPrefecture(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x64

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 4
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->sendHandleMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected static unLockSP(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static uploadEfficiencyData()V
    .locals 0

    return-void
.end method


# virtual methods
.method public HttpPost_Memer()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected asyncConfig()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/papa91/activity/EmuBaseActivity$38;

    invoke-direct {v1, p0}, Lcom/papa91/activity/EmuBaseActivity$38;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected asyncFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, ".sav"

    const-string v1, ".srm"

    const-string v2, ".mcr"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/papa91/arc/util/FileUtils;->copyFolder(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    return-void
.end method

.method bindBridge()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->useIndependentEmu:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v1, Lcom/papa91/activity/EmuBaseActivity$20;

    invoke-direct {v1, p0}, Lcom/papa91/activity/EmuBaseActivity$20;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 5
    new-instance v2, Landroid/content/ComponentName;

    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->getHostPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.join.mgps.va.service.MessengerService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public bindService()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->gameStart()V

    .line 2
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->bindBridge()V

    return-void
.end method

.method public buySp()V
    .locals 4

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    new-instance v3, Lcom/papa91/activity/EmuBaseActivity$15;

    invoke-direct {v3, p0}, Lcom/papa91/activity/EmuBaseActivity$15;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/papa91/paay/PayCenter;->buySP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V

    return-void
.end method

.method protected checkRealName(I)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->isNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "\u8bf7\u8054\u7f51\u540e\u91cd\u8bd5\uff01"

    .line 2
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 3
    :cond_0
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/papa91/arc/http/HttpUtils;->init(Landroid/content/Context;)V

    .line 4
    iget-boolean v1, p0, Lcom/papa91/activity/EmuBaseActivity;->loading_real_name:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/papa91/activity/EmuBaseActivity;->loading_real_name:Z

    .line 6
    new-instance v1, Lcom/papa91/arc/bean/ReqRealNameArgs;

    invoke-direct {v1}, Lcom/papa91/arc/bean/ReqRealNameArgs;-><init>()V

    .line 7
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqRealNameArgs;->setUid(Ljava/lang/Integer;)V

    .line 8
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqRealNameArgs;->setUserToken(Ljava/lang/String;)V

    const-string v2, ""

    .line 9
    iget-object v3, p0, Lcom/papa91/activity/EmuBaseActivity;->gameType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xa

    if-ne p1, v2, :cond_2

    const-string v2, "FIGHT_LOBBY"

    .line 10
    iput-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->gameType:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v2, "SO_SIMULATOR"

    .line 11
    iput-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->gameType:Ljava/lang/String;

    .line 12
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->gameType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqRealNameArgs;->setGameType(Ljava/lang/String;)V

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqRealNameArgs;->setType(Ljava/lang/Integer;)V

    .line 14
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqRealNameArgs;->setGameId(Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqRealNameArgs;->setAction(Ljava/lang/Integer;)V

    const-string v2, "ANDROID"

    .line 16
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqRealNameArgs;->setPlatformType(Ljava/lang/String;)V

    .line 17
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/papa91/arc/bean/Request;->getRequest(Landroid/content/Context;Ljava/lang/Object;)Lcom/papa91/arc/bean/Request;

    move-result-object v1

    .line 18
    invoke-static {v1}, Lcom/papa91/arc/util/SignUtil;->getSignForAPP(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/Request;->setSign(Ljava/lang/String;)V

    .line 19
    new-instance v2, Lcom/papa91/activity/f;

    invoke-direct {v2, p0, v1, p1}, Lcom/papa91/activity/f;-><init>(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/Request;I)V

    invoke-static {v2}, Lcom/papa91/arc/ext/ThreadManager;->runOnWriteThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->loading_real_name:Z

    :goto_1
    return-void
.end method

.method protected closeRealNameDialog()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/activity/d;

    invoke-direct {v0, p0}, Lcom/papa91/activity/d;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public complainMsg(II)V
    .locals 3

    const-string v0, "4"

    .line 1
    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->link_type:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://anv3frapi.5fun.com/lobby/report?report_uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "&reported_uid="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->link_type_val:Ljava/lang/String;

    .line 3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/high16 p2, 0x10000000

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "com.wufun.intent.activity.view.action.emuintent"

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    new-instance v0, Lcom/papa91/common/MyJson;

    invoke-direct {v0}, Lcom/papa91/common/MyJson;-><init>()V

    :try_start_0
    const-string v1, "link_type"

    .line 8
    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->link_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "jump_type"

    .line 9
    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->jump_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "link_type_val"

    .line 10
    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->link_type_val:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 11
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 12
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intentDataJson"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public dealSDPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "/PSP"

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2
    :try_start_0
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;

    const/16 v3, 0x4000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x0

    .line 5
    :try_start_1
    new-instance v4, Lcom/papa91/common/MyJson;

    invoke-direct {v4, p1}, Lcom/papa91/common/MyJson;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    const-string p1, "romPath"

    const-string v3, ""

    .line 6
    invoke-virtual {v4, p1, v3}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v3, 0x29

    const-string v5, "ugcPath"

    if-ge v1, v3, :cond_1

    .line 7
    :try_start_3
    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    new-instance p1, Ljava/lang/String;

    sget-object p2, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object p1, Lcom/papa91/activity/EmuBaseActivity;->ugcPath:Ljava/lang/String;

    goto/16 :goto_3

    :cond_1
    const/16 v1, 0x2f

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    .line 10
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 11
    new-instance v3, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/papa91/activity/EmuBaseActivity;->ugcPath:Ljava/lang/String;

    .line 12
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    new-instance v3, Ljava/io/File;

    sget-object v6, Lcom/papa91/activity/EmuBaseActivity;->ugcPath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 15
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 16
    :cond_2
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    invoke-virtual {v7, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 19
    invoke-virtual {v3, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 20
    :try_start_4
    sget-object p2, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    new-instance p2, Ljava/lang/String;

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object p2, Lcom/papa91/activity/EmuBaseActivity;->ugcPath:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v3, v4

    goto :goto_2

    :catch_3
    move-exception p1

    .line 23
    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v4, v3

    .line 24
    :cond_3
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 25
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method destroyRewardInfo()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->generatedTimes:I

    const-string v1, ""

    .line 2
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->rewardConfig:Ljava/lang/String;

    .line 3
    sput-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->startRewardCount:Z

    const/4 v1, 0x3

    .line 4
    iput v1, p0, Lcom/papa91/activity/EmuBaseActivity;->getRewardConfigCount:I

    .line 5
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->getRewardConfig:I

    .line 6
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->left_play_reward_count:I

    .line 7
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaTipDialog:Lcom/papa91/view/RewardBananaTipDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaTipDialog:Lcom/papa91/view/RewardBananaTipDialog;

    invoke-virtual {v1}, Lcom/papa91/view/BaseDialog;->dismiss()V

    :cond_0
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaTipDialog:Lcom/papa91/view/RewardBananaTipDialog;

    .line 10
    sput-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->hasRewardBanana:Z

    return-void
.end method

.method gameStart()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/papa91/activity/EmuBaseActivity;->startTIme:J

    .line 2
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "_"

    if-nez v0, :cond_0

    .line 3
    :try_start_1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/papa91/activity/EmuBaseActivity;->gameStart15(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mgpapa/aidlservice/Game_start15_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->createDir(Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_0
    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/papa91/activity/EmuBaseActivity;->gameStart160(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mgpapa/aidlservice/Game_start160_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->createDir(Ljava/lang/String;)Z

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/papa91/activity/EmuBaseActivity;->gameStartBattle15(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mgpapa/aidlservice/Game_startBattle15_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->createDir(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method gameStart15(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.gamestart15"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "uid"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method gameStartBattle15(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.gamestartbattle15"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "uid"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public native getCurChar()I
.end method

.method public getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    :try_start_0
    const-string v1, "MD5"

    .line 1
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "UTF-8"

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 3
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    .line 5
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 6
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-string v3, "0"

    .line 7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 10
    :cond_0
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method protected getRewardConfig()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->getRewardConfig:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    sput v1, Lcom/papa91/activity/EmuBaseActivity;->getRewardConfig:I

    .line 4
    iget v0, p0, Lcom/papa91/activity/EmuBaseActivity;->getRewardConfigCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/papa91/activity/EmuBaseActivity;->getRewardConfigCount:I

    return-void
.end method

.method protected handleAdError(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected handleAdResult(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public native hasLifeCheck(J)Z
.end method

.method public hideMenuDialog()V
    .locals 0

    return-void
.end method

.method public initBanner(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method initReceiver()V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$5;

    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$5;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->paayReceiver:Lcom/papa91/paay/PaayReceiver;

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver;

    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->netWorkReceiver:Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver;

    .line 5
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$IMReceive;

    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$IMReceive;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->iMReceive:Lcom/papa91/activity/EmuBaseActivity$IMReceive;

    .line 7
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.join.mgps.activity.sendUI"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->iMReceive:Lcom/papa91/activity/EmuBaseActivity$IMReceive;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 9
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;

    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->playTimeReceiver:Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;

    .line 10
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.action_login_success"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.join.android.app.mgsim.wufan.mha.broadcast.action_login_success"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.join.android.app.mgsim.wufun.mha.broadcast.action_login_success"

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->playTimeReceiver:Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 14
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->paayReceiver:Lcom/papa91/paay/PaayReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.join.android.app.mgsim.broadcast.action_login_success"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 15
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$MyReceiver;

    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$MyReceiver;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 16
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "com.join.android.app.mgsim.wufan.mha.broadcast.action_raise_vip_success"

    .line 17
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 19
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$ShareResultReceiver;

    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$ShareResultReceiver;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->shareResultReceiver:Lcom/papa91/activity/EmuBaseActivity$ShareResultReceiver;

    .line 20
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.emu.share.result"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->shareResultReceiver:Lcom/papa91/activity/EmuBaseActivity$ShareResultReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 22
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$RealNameResultReceiver;

    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$RealNameResultReceiver;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->realnameResultReceiver:Lcom/papa91/activity/EmuBaseActivity$RealNameResultReceiver;

    .line 23
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.show.realname.check"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->realnameResultReceiver:Lcom/papa91/activity/EmuBaseActivity$RealNameResultReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 25
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;

    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->adResultReceiver:Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;

    .line 26
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.emu.ad.result"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->adResultReceiver:Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 28
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$GameReceiver;

    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$GameReceiver;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->gameReceiver:Lcom/papa91/activity/EmuBaseActivity$GameReceiver;

    .line 29
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 30
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionShowInvite:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionOnOnlineState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionHandleMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionHandleEmptyMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionHandleExitGame:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->gameReceiver:Lcom/papa91/activity/EmuBaseActivity$GameReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 36
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$MenuViewReceiver;

    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$MenuViewReceiver;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->menuViewReceiver:Lcom/papa91/activity/EmuBaseActivity$MenuViewReceiver;

    .line 37
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 38
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuCheat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuPerformance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuGate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuOnekey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionHideMenu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionVipTip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionShowShare:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionLoadRomFinish:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionLoadStageCompleted:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionRecordEnd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.join.android.app.mgsim.rank_record_upload_result"

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->menuViewReceiver:Lcom/papa91/activity/EmuBaseActivity$MenuViewReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$PermissRecver;

    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$PermissRecver;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->recver:Lcom/papa91/activity/EmuBaseActivity$PermissRecver;

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.wufun.get.permission.EMU"

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->recver:Lcom/papa91/activity/EmuBaseActivity$PermissRecver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->actionReceiver:Lcom/papa91/activity/EmuBaseActivity$ActionReceiver;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$ActionReceiver;

    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$ActionReceiver;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->actionReceiver:Lcom/papa91/activity/EmuBaseActivity$ActionReceiver;

    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.emu.realName.result"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->actionReceiver:Lcom/papa91/activity/EmuBaseActivity$ActionReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public loadRomFinish()V
    .locals 0

    return-void
.end method

.method protected loginFinish()V
    .locals 0

    return-void
.end method

.method protected needResumeGame()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onAfterActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/papa91/activity/EmuBaseActivity;->hasCheckRealName:Z

    if-nez p1, :cond_0

    sget p1, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 p1, 0xb

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->checkRealName(I)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/papa91/activity/EmuBaseActivity;->hasCheckRealName:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/papa91/activity/EmuBaseActivity;->needCheckRealName:Z

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, ""

    .line 1
    sput-object p0, Lcom/papa91/activity/EmuBaseActivity;->baseActivity:Lcom/papa91/activity/EmuBaseActivity;

    .line 2
    sput-object p0, Lcom/papa91/activity/EmuBaseActivity;->context:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Lcom/papa91/activity/EmuBaseActivity;->initSign()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 5
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 6
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->adExitRootView:Landroid/widget/FrameLayout;

    .line 7
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    .line 8
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 9
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->adExitRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    invoke-direct {p0}, Lcom/papa91/activity/EmuBaseActivity;->findAppVersionTo16()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/activity/EmuBaseActivity;->appCodeIsBigger160:Z

    .line 11
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->bindService()V

    .line 12
    new-instance p1, Ljava/io/File;

    sget-object v1, Lcom/papa91/common/BaseAppConfig;->ROM_PATH:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 13
    sget-object v1, Lcom/papa91/common/BaseAppConfig;->APK_PATH:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/papa91/common/BaseAppConfig;->APP_PATH:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15
    iget-object v4, p0, Lcom/papa91/activity/EmuBaseActivity;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/papa91/activity/h;

    invoke-direct {v5, p0, v2, v1, p1}, Lcom/papa91/activity/h;-><init>(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->initReceiver()V

    .line 17
    sget-boolean p1, Lcom/papa91/activity/EmuBaseActivity;->hasRewardBanana:Z

    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->setDefaultRewardConfig()V

    .line 19
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->getRewardConfig()V

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->updateAutoSlotData()V

    .line 21
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "jsonData"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_4

    .line 22
    :try_start_1
    new-instance v1, Lcom/papa91/common/MyJson;

    invoke-direct {v1, p1}, Lcom/papa91/common/MyJson;-><init>(Ljava/lang/String;)V

    const-string p1, "dnsJson"

    .line 23
    invoke-virtual {v1, p1, v0}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 25
    sput-object p1, Lcom/papa91/activity/EmuBaseActivity;->dnsJson:Ljava/lang/String;

    .line 26
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 27
    const-class v2, Lcom/papa91/common/DNSDataResult;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/common/DNSDataResult;

    .line 28
    invoke-virtual {p1}, Lcom/papa91/common/DNSDataResult;->getAppContent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/papa91/common/DNSDataResult;->getAppContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 29
    invoke-virtual {p1}, Lcom/papa91/common/DNSDataResult;->getAppContent()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/papa91/utils/HttpUtils;->EXIT_AD_URL:Ljava/lang/String;

    .line 30
    :cond_1
    invoke-virtual {p1}, Lcom/papa91/common/DNSDataResult;->getFightV3()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/papa91/common/DNSDataResult;->getFightV3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 31
    invoke-virtual {p1}, Lcom/papa91/common/DNSDataResult;->getFightV3()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/utils/HttpUtils;->REWARD_CONFIG_URL:Ljava/lang/String;

    .line 32
    :cond_2
    invoke-virtual {p1}, Lcom/papa91/common/DNSDataResult;->getGameUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 33
    invoke-virtual {p1}, Lcom/papa91/common/DNSDataResult;->getGameUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/utils/HttpUtils;->GAME_URL:Ljava/lang/String;

    .line 34
    :cond_3
    invoke-virtual {p1}, Lcom/papa91/common/DNSDataResult;->getAccountCertification()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 35
    invoke-virtual {p1}, Lcom/papa91/common/DNSDataResult;->getAccountCertification()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/papa91/utils/HttpUtils;->RealName_URL:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 36
    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 38
    :cond_4
    :goto_0
    invoke-static {v3}, Lcom/papa91/activity/EmuBaseActivity;->sendGamePlay(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->gameReceiver:Lcom/papa91/activity/EmuBaseActivity$GameReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->paayReceiver:Lcom/papa91/paay/PaayReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->playTimeReceiver:Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->netWorkReceiver:Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->recver:Lcom/papa91/activity/EmuBaseActivity$PermissRecver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->menuViewReceiver:Lcom/papa91/activity/EmuBaseActivity$MenuViewReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 7
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->shareResultReceiver:Lcom/papa91/activity/EmuBaseActivity$ShareResultReceiver;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->realnameResultReceiver:Lcom/papa91/activity/EmuBaseActivity$RealNameResultReceiver;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->adResultReceiver:Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 13
    :cond_2
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaDialog:Lcom/papa91/view/RewardBananaDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaDialog:Lcom/papa91/view/RewardBananaDialog;

    invoke-virtual {v0}, Lcom/papa91/view/BaseDialog;->dismiss()V

    .line 15
    :cond_3
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaDialog:Lcom/papa91/view/RewardBananaDialog;

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->actionReceiver:Lcom/papa91/activity/EmuBaseActivity$ActionReceiver;

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_5
    const/4 v0, 0x0

    .line 18
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->left_play_reward_count:I

    const/4 v2, -0x1

    .line 19
    sput v2, Lcom/papa91/activity/EmuBaseActivity;->generate_times:I

    .line 20
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->received_times:I

    const-string v0, ""

    .line 21
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->unique_id:Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->destroyRewardInfo()V

    .line 23
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->autoSaveSlot:Lcom/papa91/view/AutoSaveSlot;

    const/4 v0, 0x2

    .line 24
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->sendGamePlay(I)V

    .line 25
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->unbindBridge()V

    .line 26
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    return-void
.end method

.method protected onHandleEmuExit()V
    .locals 0

    return-void
.end method

.method protected onHandleGameExit(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected onHandleRealName(IZ)V
    .locals 3

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/papa91/activity/EmuBaseActivity;->playTime:J

    .line 2
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->closeRealNameDialog()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->hasCheckRealName:Z

    .line 4
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->checkRealName(I)V

    .line 6
    iput-boolean v2, p0, Lcom/papa91/activity/EmuBaseActivity;->hasCheckRealName:Z

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->checkRealName(I)V

    .line 8
    iput-boolean v2, p0, Lcom/papa91/activity/EmuBaseActivity;->hasCheckRealName:Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected onHandlerResultNameResult(Landroid/content/Intent;)V
    .locals 1

    const/16 p1, 0xb

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/papa91/activity/EmuBaseActivity;->onHandleRealName(IZ)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->videoStrategyPop:Lcom/papa91/VideoStrategyPop;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLoadStageCompleted(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method onMessengerConnected(Landroid/os/Messenger;)V
    .locals 0

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    const-string v0, ""

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v1, "jsonData"

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    :try_start_0
    new-instance v1, Lcom/papa91/common/MyJson;

    invoke-direct {v1, p1}, Lcom/papa91/common/MyJson;-><init>(Ljava/lang/String;)V

    const-string p1, "intentFrom"

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, p1, v2}, Lcom/papa91/common/MyJson;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v2, "romPath"

    .line 5
    invoke-virtual {v1, v2, v0}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    .line 6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/papa91/activity/EmuBaseActivity;->romName:Ljava/lang/String;

    :cond_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "netState"

    .line 8
    invoke-virtual {v1, p1, v0}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->loadState(Ljava/lang/String;)I

    .line 11
    invoke-static {v2}, Lcom/papa91/activity/EmuBaseActivity;->setPause(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->isInBackground:Z

    .line 3
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->canShowRewardMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/papa91/view/DragProgressView;->pause()V

    :cond_0
    return-void
.end method

.method protected onRankRecordEnd(I)V
    .locals 0

    return-void
.end method

.method protected onRankUploadResult(I)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->exitEmu()I

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->HttpPost_Memer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->isInBackground:Z

    .line 5
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->canShowRewardMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/papa91/view/DragProgressView;->resume()V

    .line 7
    :cond_0
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->emuOnResume()V

    .line 8
    iget-boolean v1, p0, Lcom/papa91/activity/EmuBaseActivity;->needCheckRealName:Z

    if-eqz v1, :cond_1

    .line 9
    iget v1, p0, Lcom/papa91/activity/EmuBaseActivity;->checkRealNameType:I

    invoke-virtual {p0, v1, v0}, Lcom/papa91/activity/EmuBaseActivity;->onHandleRealName(IZ)V

    .line 10
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->needCheckRealName:Z

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/papa91/activity/EmuBaseActivity;->isFirstReame(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->ugcPath:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/papa91/activity/EmuBaseActivity;->modifyRecordInfo(Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->ugcPath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/papa91/activity/EmuBaseActivity;->modifyRecordInfo(Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 4
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->ugcPath:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/papa91/activity/EmuBaseActivity;->modifyRecordInfo(Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/papa91/activity/EmuBaseActivity;->setFirestReame(Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public onVipChanged()V
    .locals 0

    return-void
.end method

.method public raseVipToMgsim(I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;

    const-string v2, "com.join.mgps.activity.ShareWebActivity_"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PAPA_EMU_INTENT_EXTRA_ACTION_FROM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gameId"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.join.mgps.papa.share_webview_raiseVip"

    .line 7
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public selectSpAndCheat(I)V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->appCodeIsBigger160:Z

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 3
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->payType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 4
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->UPDATA_APP_TOAST:Ljava/lang/String;

    const-string v1, "data"

    invoke-virtual {p1, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "isbuy"

    invoke-virtual {p1, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 6
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->UPDATA_APP_TOAST:Ljava/lang/String;

    const-string v1, "errorMsg"

    invoke-virtual {p1, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->requestOnInquiry(Ljava/lang/String;)V

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 8
    :pswitch_0
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    new-instance v6, Lcom/papa91/activity/EmuBaseActivity$17;

    invoke-direct {v6, p0}, Lcom/papa91/activity/EmuBaseActivity$17;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/papa91/paay/PayCenter;->lobbyPlayCheck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V

    goto :goto_0

    .line 9
    :pswitch_1
    sget-object v8, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    sget-object v9, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    sget-object v10, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    sget-object v12, Lcom/papa91/activity/EmuBaseActivity;->RoomID:Ljava/lang/String;

    new-instance v13, Lcom/papa91/activity/EmuBaseActivity$16;

    invoke-direct {v13, p0}, Lcom/papa91/activity/EmuBaseActivity$16;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    const-string v11, "client"

    move-object v7, p0

    invoke-static/range {v7 .. v13}, Lcom/papa91/paay/PayCenter;->startLobby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V

    goto :goto_0

    .line 10
    :pswitch_2
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->payListener:Lcom/papa91/paay/PayListener;

    invoke-static {p0, p1, v0, v1, v2}, Lcom/papa91/paay/PayCenter;->buyCheat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V

    goto :goto_0

    .line 11
    :pswitch_3
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->selectListener:Lcom/papa91/paay/PayListener;

    invoke-static {p0, p1, v0, v1, v2}, Lcom/papa91/paay/PayCenter;->inquiryCheat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V

    goto :goto_0

    .line 12
    :pswitch_4
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->payListener:Lcom/papa91/paay/PayListener;

    invoke-static {p0, p1, v0, v1, v2}, Lcom/papa91/paay/PayCenter;->buyCoin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V

    goto :goto_0

    .line 13
    :pswitch_5
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->payListener:Lcom/papa91/paay/PayListener;

    invoke-static {p0, p1, v0, v1, v2}, Lcom/papa91/paay/PayCenter;->buySP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V

    goto :goto_0

    .line 14
    :pswitch_6
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->selectListener:Lcom/papa91/paay/PayListener;

    invoke-static {p0, p1, v0, v1, v2}, Lcom/papa91/paay/PayCenter;->inquiryCoinInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V

    goto :goto_0

    .line 15
    :pswitch_7
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->selectListener:Lcom/papa91/paay/PayListener;

    invoke-static {p0, p1, v0, v1, v2}, Lcom/papa91/paay/PayCenter;->inquirySP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.commonpoint"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    const-string v2, "gameId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "position"

    .line 4
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "eventName"

    .line 5
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method sendEmuExitBroadcast(I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.emu.ad.result"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "adAction"

    const/16 v2, 0x64

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "exit"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public native setAutoSave(I)V
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/papa91/view/AutoSaveSlot;

    invoke-direct {v0, p0, p1}, Lcom/papa91/view/AutoSaveSlot;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->autoSaveSlot:Lcom/papa91/view/AutoSaveSlot;

    .line 2
    invoke-virtual {v0}, Lcom/papa91/view/AutoSaveSlot;->getView()Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/yatoooon/screenadaptation/e;->a()Lcom/yatoooon/screenadaptation/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yatoooon/screenadaptation/a;->f(Landroid/view/View;)V

    .line 4
    sget-boolean v1, Lcom/papa91/activity/EmuBaseActivity;->hasRewardBanana:Z

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Lcom/papa91/view/DragProgressView;

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/papa91/view/DragProgressView;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    const/16 v2, 0x8

    .line 6
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    new-instance v2, Lcom/papa91/activity/EmuBaseActivity$27;

    invoke-direct {v2, p0}, Lcom/papa91/activity/EmuBaseActivity$27;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    invoke-virtual {v1, v2}, Lcom/papa91/view/DragProgressView;->setOnProduceListener(Lcom/papa91/view/DragProgressView$OnProduceListener;)V

    .line 8
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    new-instance v2, Lcom/papa91/activity/EmuBaseActivity$28;

    invoke-direct {v2, p0}, Lcom/papa91/activity/EmuBaseActivity$28;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    invoke-virtual {v1, v2}, Lcom/papa91/view/DragProgressView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-static {}, Lcom/yatoooon/screenadaptation/e;->a()Lcom/yatoooon/screenadaptation/a;

    move-result-object v1

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    invoke-virtual {v1, v2}, Lcom/yatoooon/screenadaptation/a;->f(Landroid/view/View;)V

    .line 10
    new-instance v1, Lcom/papa91/view/FloatingDragger;

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    invoke-direct {v1, p0, v0, v2}, Lcom/papa91/view/FloatingDragger;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    .line 11
    invoke-virtual {v1}, Lcom/papa91/view/FloatingDragger;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-super {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method setDefaultRewardConfig()V
    .locals 16

    const-string v0, "init_first_box_time"

    const-string v1, "min_time_interval"

    const-string v2, "max_time_interval"

    const-string v3, "left_device_play_reward_count"

    const-string v4, "left_play_reward_count"

    const-string v5, "min_reward_times"

    const-string v6, "max_reward_times"

    const-string v7, "min_reward_amount"

    const-string v8, "max_reward_amount"

    const-string v9, "{    \"error\": 0,    \"msg\": \"success\",    \"data\": {        \"max_reward_amount\": 300,        \"min_reward_amount\": 100,        \"min_reward_times\": 2,        \"max_reward_times\": 8,        \"max_play_reward_count\": 30,        \"max_start_reward_count\": 10,        \"max_time_interval\": 90,        \"min_time_interval\": 30,        \"init_first_box_time\": 15,        \"reward_count\": 4,        \"left_reward_count\": 36,        \"start_reward_count\": 4,        \"left_start_reward_count\": 6,        \"play_reward_count\": 0,        \"left_play_reward_count\": 30,        \"left_game_start_reward_count\": 1,        \"left_device_start_reward_count\": 10,        \"left_device_play_reward_count\": 30,        \"total_reward_amount\": 0    }}"

    .line 1
    :try_start_0
    new-instance v10, Lcom/papa91/common/MyJson;

    invoke-direct {v10, v9}, Lcom/papa91/common/MyJson;-><init>(Ljava/lang/String;)V

    const-string v9, "error"

    const/4 v11, -0x1

    .line 2
    invoke-virtual {v10, v9, v11}, Lcom/papa91/common/MyJson;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string v11, "msg"

    .line 3
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v11, "data"

    const/4 v12, 0x0

    .line 4
    invoke-virtual {v10, v11, v12}, Lcom/papa91/common/MyJson;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    if-nez v9, :cond_9

    if-eqz v10, :cond_9

    .line 5
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    const/4 v11, 0x0

    if-eqz v9, :cond_0

    .line 6
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 7
    :goto_0
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 8
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 9
    :goto_1
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 10
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    .line 11
    :goto_2
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 12
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    .line 13
    :goto_3
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 14
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 15
    :cond_4
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 16
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/papa91/activity/EmuBaseActivity;->max_time_interval:I

    .line 17
    :cond_5
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 18
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/papa91/activity/EmuBaseActivity;->min_time_interval:I

    .line 19
    :cond_6
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 20
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/papa91/activity/EmuBaseActivity;->init_first_box_time:I

    .line 21
    :cond_7
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 22
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/papa91/activity/EmuBaseActivity;->left_device_play_reward_count:I

    .line 23
    :cond_8
    sput v11, Lcom/papa91/activity/EmuBaseActivity;->left_play_reward_count:I

    .line 24
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->left_device_play_reward_count:I

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/papa91/activity/EmuBaseActivity;->reward_left_count:I

    .line 25
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->total_reward_amount:I

    sput v0, Lcom/papa91/activity/EmuBaseActivity;->total_reward_amount:I

    .line 26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 27
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 28
    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    invoke-virtual {v1, v7, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    invoke-virtual {v1, v6, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 31
    invoke-virtual {v1, v5, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    invoke-virtual {v1, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 33
    sget v2, Lcom/papa91/activity/EmuBaseActivity;->left_device_play_reward_count:I

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "banana_reward_config"

    .line 34
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->rewardConfig:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_4
    return-void
.end method

.method setRewardResult1(IIII)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-le p3, v0, :cond_1

    if-nez p4, :cond_0

    .line 1
    sget p4, Lcom/papa91/activity/EmuBaseActivity;->total_reward_amount:I

    .line 2
    :cond_0
    new-instance p1, Lcom/papa91/view/RewardBananaResultDialog;

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v1, Lcom/papa91/mix/R$style;->Dialog:I

    invoke-direct {p1, p3, v1}, Lcom/papa91/view/RewardBananaResultDialog;-><init>(Landroid/content/Context;I)V

    .line 3
    new-instance p3, Lcom/papa91/activity/EmuBaseActivity$23;

    invoke-direct {p3, p0}, Lcom/papa91/activity/EmuBaseActivity$23;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    invoke-virtual {p1, p3}, Lcom/papa91/view/BaseDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4
    invoke-virtual {p1, p2, p4}, Lcom/papa91/view/RewardBananaResultDialog;->show(II)V

    .line 5
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->setPause(I)V

    :cond_1
    return-void
.end method

.method public setRootAdViewParentVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->adParent:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected setUserStateUi(I)V
    .locals 0

    return-void
.end method

.method protected showInvitePlayUi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method showInvitePlayUiJava(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->invitePop:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->timer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 3
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->invitePop:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-virtual {v0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->dismiss()V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/papa91/arc/util/SystemInfoUtils;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/util/SystemInfoUtils;

    invoke-static {}, Lcom/papa91/arc/util/SystemInfoUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->invitePop:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    if-nez v1, :cond_2

    .line 6
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/papa91/mix/R$layout;->pop_friend_invite_emu:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;->build(Landroid/app/Activity;Landroid/view/View;)Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v2, v3}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;->setOutsideTouchDismiss(Z)Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;

    move-result-object v2

    sget v3, Lcom/papa91/mix/R$style;->animationFromRight:I

    .line 9
    invoke-virtual {v2, v3}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;->setAnimationStyle(I)Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;->createPopupWindow()Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    move-result-object v2

    iput-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->invitePop:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/papa91/mix/R$dimen;->wdp560:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 12
    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->invitePop:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/papa91/mix/R$dimen;->wdp136:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 13
    sget v2, Lcom/papa91/mix/R$id;->accept:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->accept:Landroid/widget/TextView;

    .line 14
    new-instance v3, Lcom/papa91/activity/b;

    invoke-direct {v3, p0}, Lcom/papa91/activity/b;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    sget v2, Lcom/papa91/mix/R$id;->decline:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/papa91/activity/c;

    invoke-direct {v3, p0}, Lcom/papa91/activity/c;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    sget v2, Lcom/papa91/mix/R$id;->avatar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 17
    sget v2, Lcom/papa91/mix/R$id;->name:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->name:Landroid/widget/TextView;

    .line 18
    sget v2, Lcom/papa91/mix/R$id;->gameName:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->gameName:Landroid/widget/TextView;

    .line 19
    :cond_2
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->name:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->gameName:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 22
    iget-object p2, p0, Lcom/papa91/activity/EmuBaseActivity;->avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 23
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->invitePop:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/papa91/mix/R$dimen;->wdp40:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->showAtAnchorView(Landroid/view/View;IIII)V

    .line 24
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->timer:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public showMenuCheating()V
    .locals 0

    return-void
.end method

.method public showMenuGate()V
    .locals 0

    return-void
.end method

.method public showMenuOnekey()V
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

.method public showMenuView(Z)V
    .locals 0

    return-void
.end method

.method public showShare(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showVipTip(II)V
    .locals 0

    return-void
.end method

.method public startAdActivity(II)V
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->link_type:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->link_type_val:Ljava/lang/String;

    .line 3
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/high16 p2, 0x10000000

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "com.wufun.intent.activity.view.action.emuintent"

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    new-instance v0, Lcom/papa91/common/MyJson;

    invoke-direct {v0}, Lcom/papa91/common/MyJson;-><init>()V

    :try_start_0
    const-string v1, "link_type"

    .line 8
    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->link_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "jump_type"

    .line 9
    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->jump_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "link_type_val"

    .line 10
    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->link_type_val:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "crc_link_type_val"

    .line 11
    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->crc_link_type_val:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "tpl_type"

    .line 12
    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->tpl_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 13
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 14
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intentDataJson"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string p2, "com.papa.intent.activity.view.action.emuintent"

    .line 17
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 19
    :goto_1
    iget-boolean p1, p0, Lcom/papa91/activity/EmuBaseActivity;->onAdShwoIsCloseMine:Z

    if-eqz p1, :cond_1

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public startBBK_GOINEE_sysAPP()V
    .locals 3

    .line 1
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->systemSettingType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->BBK_GIONEE_MAIN_NAME:Ljava/lang/String;

    const-string v2, "com.gionee.softmanager"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->BBK_GIONEE_MAIN_NAME:Ljava/lang/String;

    const-string v2, "com.iqoo.secure"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 8
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method startPrefecture(I)V
    .locals 5

    const-string v0, ""

    .line 1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v2, Landroid/content/ComponentName;

    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;

    const-string v4, "com.join.mgps.activity.ForumActivity_"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "fid"

    .line 5
    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "name"

    .line 6
    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "icon_src"

    .line 7
    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "users"

    .line 8
    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "posts"

    .line 9
    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "add_time"

    .line 10
    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 12
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_forum_bean"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 14
    iput v3, p1, Landroid/os/Message;->what:I

    .line 15
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method unbindBridge()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->useIndependentEmu:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    :try_start_0
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method updateAutoSlotData()V
    .locals 3

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->autoSaveSlot:Lcom/papa91/view/AutoSaveSlot;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->ugcPath:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    const-string v2, "/"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_1
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->autoSaveSlot:Lcom/papa91/view/AutoSaveSlot;

    invoke-virtual {v1, v0}, Lcom/papa91/view/AutoSaveSlot;->setUgcPath(Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->autoSaveSlot:Lcom/papa91/view/AutoSaveSlot;

    iget v1, p0, Lcom/papa91/activity/EmuBaseActivity;->m_VIP:I

    invoke-virtual {v0, v1}, Lcom/papa91/view/AutoSaveSlot;->setVipLevel(I)V

    return-void
.end method
