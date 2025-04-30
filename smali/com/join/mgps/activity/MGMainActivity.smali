.class public Lcom/join/mgps/activity/MGMainActivity;
.super Lcom/join/android/app/common/servcie/DownloadBaseActivity;
.source "MGMainActivity.java"

# interfaces
.implements Lcom/join/mgps/pref/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MGMainActivity$m0;,
        Lcom/join/mgps/activity/MGMainActivity$MediaCmd;,
        Lcom/join/mgps/activity/MGMainActivity$MessageReceiver;,
        Lcom/join/mgps/activity/MGMainActivity$n0;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c046f
.end annotation


# static fields
.field public static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field public static final KEY_MEDIACMD:Ljava/lang/String; = "key_mediacmd"

.field public static final KEY_MEDIACMDPARAMS:Ljava/lang/String; = "key_mediacmd_params"

.field public static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field public static final KEY_TITLE:Ljava/lang/String; = "title"

.field public static final MESSAGE_RECEIVED_ACTION:Ljava/lang/String; = "com.example.jpushdemo.MESSAGE_RECEIVED_ACTION"

.field private static MainAppInfoColorMain:I = -0x49494a

.field private static MainYelloColor:I = -0xb8b00

.field public static isForeground:Z


# instance fields
.field private LastOpHomePageButtonTime:J

.field private TAG:Ljava/lang/String;

.field private accountBean:Lcom/join/mgps/dto/AccountBean;

.field accountId:Landroid/widget/TextView;

.field private activityHasDes:Z

.field private adVipMainDialog:Lcom/join/mgps/dialog/c;

.field private allJsonStr:Ljava/lang/String;

.field private animation:Landroid/view/animation/Animation;

.field private animation2:Landroid/animation/ObjectAnimator;

.field private appUpdateDialog:Lcom/join/mgps/dialog/f;

.field avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

.field avatar1:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private backupNumber:I

.field bigCenterRound:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field biground:Landroid/widget/TextView;

.field bottom:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field button:Landroid/view/View;

.field cdp_down_progress:Lcom/join/mgps/customview/CircleDownloadProgressBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private checkHasSo:Z

.field choiceFragment:Lcom/join/kotlin/ui/findgame/FindGameMainFragment;

.field private classiFy:I

.field private classifyPrimaryIndex:I

.field close:Landroid/view/View;

.field coinFloatad:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private context:Landroid/content/Context;

.field private curActivty:Landroid/app/Activity;

.field currTabNumber:I

.field dialog:Landroidx/appcompat/app/AlertDialog$Builder;

.field dialogBack:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field dialogU:Landroid/app/Dialog;

.field discoverHuojian:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field discoverMessage:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field discoverNormal:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private downLoadFileName:Ljava/lang/String;

.field downloadLayout:Landroid/widget/LinearLayout;

.field public downloadLine:Landroid/widget/ImageView;

.field private downloadSpeedupCfgBean:Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

.field public downloadTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private downloadTasksMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field downloadTaskx:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private downloadUrl:Ljava/lang/String;

.field downlodingGameIcon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private exitTime:J

.field factory:Lcom/github/snowdream/android/app/downloader/b;

.field private fialePath:Ljava/lang/String;

.field fightFragment:Lcom/join/mgps/fragment/f0;

.field fightImage:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field fightSelect:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field fightText:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field flipCardAnimation:Lcom/join/mgps/Util/h0;

.field private fragmentManager:Landroidx/fragment/app/FragmentManager;

.field friendClient:Lcom/join/mgps/rpc/i;

.field gameName:Landroid/widget/TextView;

.field gdtAdVideo:Lcom/join/mgps/ad/e;

.field gdtDownLoadSpeedAd:Lcom/join/mgps/ad/e;

.field gdtGoldAdVideo:Lcom/join/mgps/ad/e;

.field gdtPspAd:Lcom/join/mgps/ad/e;

.field gifIcon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private handlerx:Landroid/os/Handler;

.field hasBackupIng:Z

.field private hasNet:Z

.field private hasNewDownload:Z

.field hasNewFinishedGameImage:Landroid/widget/ImageView;

.field hasPermiss:Z

.field hasPlug:Z

.field private hasResouse:Z

.field hasRom:Z

.field private hasRunFinishforFinishDialog:Z

.field private hasShowAd:Z

.field home_tab_default_layout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field home_tab_huojian_image:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field home_tab_monkey_image:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field home_tab_monkey_layout:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field imageLoading:Landroid/widget/ImageView;

.field imageView36:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field intentDateBean:Lcom/join/mgps/Util/IntentDateBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field intentDateBean22:Lcom/join/mgps/Util/IntentDateBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field invitePop:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

.field private isDestroyed:Z

.field private isFirst:Z

.field private isFirstCheck:Z

.field private isFirstCommendVersion:Z

.field private isMessageReceiverRegisted:Z

.field private isNotThisGame:Z

.field private isOpenExit:I

.field private isPapaMainFragmentHasNewData:Z

.field private isfirst35:Z

.field jPushIntentData:Lcom/join/mgps/dto/JPushIntentData;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field lastcheckDownService:J

.field layout_others:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private listTempZip:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listZip:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field listener:Lcom/github/snowdream/android/app/downloader/b$b;

.field private localGameOneDialog:Lcom/join/android/app/common/dialog/f;

.field private localGameThreeDialog:Lcom/join/android/app/common/dialog/j;

.field private localGameTwoDialog:Lcom/join/android/app/common/dialog/l;

.field private mAdReceived:Lcom/join/mgps/activity/MGMainActivity$m0;

.field private mAdVipEvent:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private mAddShortcutDialog:Lcom/join/android/app/common/dialog/c;

.field private mBitmap:Landroid/graphics/Bitmap;

.field mDialog:Landroid/app/Dialog;

.field private mMessageReceiver:Lcom/join/mgps/activity/MGMainActivity$MessageReceiver;

.field mPapaActivity:Lcom/join/mgps/activity/w1;

.field mRpcClient:Lcom/join/mgps/rpc/d;

.field private mainPos:Ljava/lang/String;

.field private messageNum:I

.field private messagebadge:Lq/rorbin/badgeview/a;

.field mgPapaMainFragment:Landroidx/fragment/app/Fragment;

.field mg_category_image:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mg_category_tabselect:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mg_category_text:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mg_chart_image:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mg_chart_tabselect:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mg_chart_text:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mg_emulator_image:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mg_emulator_tabselect:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mg_emulator_text:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mg_recom_image:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mg_recom_tabselect:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mg_recom_text:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field miniGameBadge:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private n:I

.field name:Landroid/widget/TextView;

.field name1:Landroid/widget/TextView;

.field needStopAnim:Z

.field netConnectException:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "connect_server_excption"
    .end annotation
.end field

.field netExcption:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "net_excption"
    .end annotation
.end field

.field notice_layout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field notice_text:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private num:I

.field numberInTab:Lcom/join/mgps/customview/LightningView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field papa_user_round:Landroid/widget/TextView;

.field private positionNum:I

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field private pspGameAdCfgBean:Lcom/join/mgps/dto/PspGameAdCfgBean;

.field r:Ljava/lang/Runnable;

.field private receiver:Lcom/join/mgps/activity/MGMainActivity$n0;

.field private recomDatabean:Lcom/join/mgps/dto/RecomDatabean;

.field recommendClient:Lcom/join/mgps/rpc/d;

.field red_point:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private reloadNumber:I

.field rpcAccountClient:Lcom/join/mgps/rpc/b;

.field rpcClient:Lcom/join/mgps/rpc/d;

.field rpcConsoleGameClient:Lcom/join/mgps/rpc/f;

.field rpcForumClient:Lcom/join/mgps/rpc/h;

.field scroll_text:Landroid/widget/TextView;

.field public scroll_text_layout:Lcom/join/mgps/customview/ScrollTextViewLayout;

.field private shortcutGameId:Ljava/lang/String;

.field private showInstallLayout:Z

.field private showInstallNoticeOrappDialog:Z

.field private showMonkey:Z

.field showText:Z

.field showUpdate:Z

.field private snkGameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field splash:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private startTime:J

.field private tableNum:I

.field private timeIsFinish:Z

.field timelastSnk:J

.field ttAdVideo:Lcom/join/mgps/ad/m;

.field ttDownLoadSpeedAd:Lcom/join/mgps/ad/m;

.field ttGoldAdVideo:Lcom/join/mgps/ad/m;

.field ttPspAd:Lcom/join/mgps/ad/m;

.field unreadMessageBadge:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field userCenterFragment:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

.field user_icon:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private videoStrategyPop:Lcom/papa91/VideoStrategyPop;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;-><init>()V

    .line 2
    const-class v0, Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/join/mgps/activity/MGMainActivity;->num:I

    .line 5
    iput v1, p0, Lcom/join/mgps/activity/MGMainActivity;->messageNum:I

    .line 6
    iput v1, p0, Lcom/join/mgps/activity/MGMainActivity;->n:I

    .line 7
    iput v1, p0, Lcom/join/mgps/activity/MGMainActivity;->tableNum:I

    const/4 v2, 0x3

    .line 8
    iput v2, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    .line 9
    iput v1, p0, Lcom/join/mgps/activity/MGMainActivity;->classiFy:I

    const/4 v2, 0x1

    .line 10
    iput v2, p0, Lcom/join/mgps/activity/MGMainActivity;->classifyPrimaryIndex:I

    .line 11
    iput v2, p0, Lcom/join/mgps/activity/MGMainActivity;->isOpenExit:I

    const-wide/16 v3, 0x0

    .line 12
    iput-wide v3, p0, Lcom/join/mgps/activity/MGMainActivity;->startTime:J

    .line 13
    iput-boolean v1, p0, Lcom/join/mgps/activity/MGMainActivity;->isNotThisGame:Z

    .line 14
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v5, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadTasksMap:Ljava/util/Map;

    .line 15
    iput-boolean v1, p0, Lcom/join/mgps/activity/MGMainActivity;->timeIsFinish:Z

    .line 16
    new-instance v5, Lcom/join/mgps/activity/MGMainActivity$k;

    invoke-direct {v5, p0}, Lcom/join/mgps/activity/MGMainActivity$k;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    iput-object v5, p0, Lcom/join/mgps/activity/MGMainActivity;->handler:Landroid/os/Handler;

    const-string v5, "MainPos"

    .line 17
    iput-object v5, p0, Lcom/join/mgps/activity/MGMainActivity;->mainPos:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadSpeedupCfgBean:Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->pspGameAdCfgBean:Lcom/join/mgps/dto/PspGameAdCfgBean;

    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 21
    iput-boolean v1, p0, Lcom/join/mgps/activity/MGMainActivity;->isfirst35:Z

    .line 22
    new-instance v5, Lcom/join/mgps/activity/MGMainActivity$a;

    invoke-direct {v5, p0}, Lcom/join/mgps/activity/MGMainActivity$a;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    iput-object v5, p0, Lcom/join/mgps/activity/MGMainActivity;->handlerx:Landroid/os/Handler;

    .line 23
    iput-boolean v1, p0, Lcom/join/mgps/activity/MGMainActivity;->hasPermiss:Z

    .line 24
    iput-boolean v1, p0, Lcom/join/mgps/activity/MGMainActivity;->showInstallNoticeOrappDialog:Z

    .line 25
    iput-boolean v1, p0, Lcom/join/mgps/activity/MGMainActivity;->hasRunFinishforFinishDialog:Z

    .line 26
    iput-boolean v1, p0, Lcom/join/mgps/activity/MGMainActivity;->hasBackupIng:Z

    .line 27
    iput v1, p0, Lcom/join/mgps/activity/MGMainActivity;->backupNumber:I

    const/4 v5, 0x5

    .line 28
    iput v5, p0, Lcom/join/mgps/activity/MGMainActivity;->reloadNumber:I

    .line 29
    iput-boolean v1, p0, Lcom/join/mgps/activity/MGMainActivity;->showUpdate:Z

    .line 30
    iput-wide v3, p0, Lcom/join/mgps/activity/MGMainActivity;->exitTime:J

    .line 31
    iput-boolean v1, p0, Lcom/join/mgps/activity/MGMainActivity;->activityHasDes:Z

    .line 32
    iput-boolean v1, p0, Lcom/join/mgps/activity/MGMainActivity;->isFirstCommendVersion:Z

    .line 33
    iput-boolean v2, p0, Lcom/join/mgps/activity/MGMainActivity;->showInstallLayout:Z

    .line 34
    iput-boolean v1, p0, Lcom/join/mgps/activity/MGMainActivity;->hasResouse:Z

    .line 35
    iput-boolean v1, p0, Lcom/join/mgps/activity/MGMainActivity;->checkHasSo:Z

    .line 36
    iput-boolean v1, p0, Lcom/join/mgps/activity/MGMainActivity;->hasNewDownload:Z

    const-string v5, ""

    .line 37
    iput-object v5, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadUrl:Ljava/lang/String;

    .line 38
    iput-object v5, p0, Lcom/join/mgps/activity/MGMainActivity;->downLoadFileName:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->factory:Lcom/github/snowdream/android/app/downloader/b;

    .line 40
    iput-boolean v2, p0, Lcom/join/mgps/activity/MGMainActivity;->showMonkey:Z

    .line 41
    iput-wide v3, p0, Lcom/join/mgps/activity/MGMainActivity;->lastcheckDownService:J

    .line 42
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/join/mgps/activity/MGMainActivity;->listTempZip:Ljava/util/List;

    .line 43
    iput-wide v3, p0, Lcom/join/mgps/activity/MGMainActivity;->timelastSnk:J

    .line 44
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/join/mgps/activity/MGMainActivity;->snkGameList:Ljava/util/List;

    .line 45
    iput-boolean v2, p0, Lcom/join/mgps/activity/MGMainActivity;->isFirstCheck:Z

    .line 46
    iput-object v5, p0, Lcom/join/mgps/activity/MGMainActivity;->allJsonStr:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadTaskx:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 48
    iput-boolean v1, p0, Lcom/join/mgps/activity/MGMainActivity;->showText:Z

    .line 49
    iput-boolean v1, p0, Lcom/join/mgps/activity/MGMainActivity;->needStopAnim:Z

    .line 50
    iput-boolean v1, p0, Lcom/join/mgps/activity/MGMainActivity;->hasRom:Z

    .line 51
    iput-boolean v1, p0, Lcom/join/mgps/activity/MGMainActivity;->hasPlug:Z

    .line 52
    new-instance v0, Lcom/join/mgps/activity/g1;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/g1;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->r:Ljava/lang/Runnable;

    const/4 v0, 0x4

    .line 53
    iput v0, p0, Lcom/join/mgps/activity/MGMainActivity;->currTabNumber:I

    return-void
.end method

.method public static synthetic D0(Lcom/join/mgps/activity/MGMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity;->lambda$onResume$4()V

    return-void
.end method

.method public static synthetic E0(Lcom/join/mgps/activity/MGMainActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->lambda$showupdateDialog$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic F0(Lcom/join/mgps/activity/MGMainActivity;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity;->lambda$showAddFriend$13(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic G0(Lcom/join/mgps/activity/MGMainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->lambda$toast$11(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic H0(Lcom/join/mgps/activity/MGMainActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->lambda$showVersionDownLoadHint$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic I0()V
    .locals 0

    invoke-static {}, Lcom/join/mgps/activity/MGMainActivity;->lambda$onFriendEvent$6()V

    return-void
.end method

.method public static synthetic J0(Lcom/join/mgps/activity/MGMainActivity;ZLcom/join/mgps/dto/FriendInviteBean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity;->lambda$onFriendInviteEvent$7(ZLcom/join/mgps/dto/FriendInviteBean;)V

    return-void
.end method

.method public static synthetic K0(Lcom/join/mgps/activity/MGMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity;->lambda$new$8()V

    return-void
.end method

.method public static synthetic L0(Lcom/join/mgps/activity/MGMainActivity;Lcom/join/mgps/db/tables/VideoWatchLogTable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->lambda$handleVideoAdWatchLogRecord$5(Lcom/join/mgps/db/tables/VideoWatchLogTable;)V

    return-void
.end method

.method public static synthetic M0(Lcom/join/mgps/activity/MGMainActivity;Lcom/join/mgps/dto/FriendInviteBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity;->lambda$invite$10(Lcom/join/mgps/dto/FriendInviteBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic N0(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/github/snowdream/android/app/downloader/DownloadTask;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->lambda$checkInstallApp$0(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/github/snowdream/android/app/downloader/DownloadTask;)I

    move-result p0

    return p0
.end method

.method public static synthetic O0(Lcom/join/mgps/activity/MGMainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->lambda$invite$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic P0(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/github/snowdream/android/app/downloader/DownloadTask;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->lambda$checkInstallApp$1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/github/snowdream/android/app/downloader/DownloadTask;)I

    move-result p0

    return p0
.end method

.method public static synthetic Q0(Lcom/join/mgps/activity/MGMainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->lambda$showAddFriend$12(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/MGMainActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/MGMainActivity;->timeIsFinish:Z

    return p0
.end method

.method static synthetic access$002(Lcom/join/mgps/activity/MGMainActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/MGMainActivity;->timeIsFinish:Z

    return p1
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/MGMainActivity;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/activity/MGMainActivity;->startTime:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/join/mgps/activity/MGMainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity;->initAdBroadcast()V

    return-void
.end method

.method static synthetic access$1100(Lcom/join/mgps/activity/MGMainActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGMainActivity;->fialePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/join/mgps/activity/MGMainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity;->downloadLayout()V

    return-void
.end method

.method static synthetic access$1300(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/android/app/common/dialog/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameTwoDialog:Lcom/join/android/app/common/dialog/l;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/join/mgps/activity/MGMainActivity;Lcom/join/android/app/common/dialog/l;)Lcom/join/android/app/common/dialog/l;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameTwoDialog:Lcom/join/android/app/common/dialog/l;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/android/app/common/dialog/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameThreeDialog:Lcom/join/android/app/common/dialog/j;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/join/mgps/activity/MGMainActivity;Lcom/join/android/app/common/dialog/j;)Lcom/join/android/app/common/dialog/j;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameThreeDialog:Lcom/join/android/app/common/dialog/j;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/join/mgps/activity/MGMainActivity;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGMainActivity;->curActivty:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/android/app/common/dialog/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameOneDialog:Lcom/join/android/app/common/dialog/f;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/join/mgps/activity/MGMainActivity;Lcom/join/android/app/common/dialog/f;)Lcom/join/android/app/common/dialog/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameOneDialog:Lcom/join/android/app/common/dialog/f;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/join/mgps/activity/MGMainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity;->changeText()V

    return-void
.end method

.method static synthetic access$1800(Lcom/join/mgps/activity/MGMainActivity;Ljava/util/List;I)Lcom/join/mgps/dto/PlayCfgBean;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity;->getAdConfig(Ljava/util/List;I)Lcom/join/mgps/dto/PlayCfgBean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/mgps/dto/AccountBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGMainActivity;->accountBean:Lcom/join/mgps/dto/AccountBean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/join/mgps/activity/MGMainActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGMainActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/mgps/dialog/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGMainActivity;->adVipMainDialog:Lcom/join/mgps/dialog/c;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/join/mgps/activity/MGMainActivity;Lcom/join/mgps/dialog/c;)Lcom/join/mgps/dialog/c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->adVipMainDialog:Lcom/join/mgps/dialog/c;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/join/mgps/activity/MGMainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->allJsonStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/join/mgps/activity/MGMainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity;->toStartGame()V

    return-void
.end method

.method static synthetic access$2400(Lcom/join/mgps/activity/MGMainActivity;)Lcom/papa91/VideoStrategyPop;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGMainActivity;->videoStrategyPop:Lcom/papa91/VideoStrategyPop;

    return-object p0
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/MGMainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity;->initApplicationV2()V

    return-void
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/MGMainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity;->queryDownTask()V

    return-void
.end method

.method static synthetic access$500(Lcom/join/mgps/activity/MGMainActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGMainActivity;->shortcutGameId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/join/mgps/activity/MGMainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->shortcutGameId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/join/mgps/activity/MGMainActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/MGMainActivity;->isNotThisGame:Z

    return p1
.end method

.method static synthetic access$700(Lcom/join/mgps/activity/MGMainActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    return p0
.end method

.method static synthetic access$702(Lcom/join/mgps/activity/MGMainActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    return p1
.end method

.method static synthetic access$800(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/mgps/activity/MGMainActivity$n0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGMainActivity;->receiver:Lcom/join/mgps/activity/MGMainActivity$n0;

    return-object p0
.end method

.method static synthetic access$802(Lcom/join/mgps/activity/MGMainActivity;Lcom/join/mgps/activity/MGMainActivity$n0;)Lcom/join/mgps/activity/MGMainActivity$n0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->receiver:Lcom/join/mgps/activity/MGMainActivity$n0;

    return-object p1
.end method

.method private accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    return-object p1
.end method

.method private changeText()V
    .locals 3

    .line 1
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/g0;->k(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->listZip:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameTwoDialog:Lcom/join/android/app/common/dialog/l;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5171\u627e\u5230"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity;->listZip:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u4e2azip\u6587\u4ef6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/dialog/l;->d(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameTwoDialog:Lcom/join/android/app/common/dialog/l;

    invoke-virtual {v0}, Lcom/join/android/app/common/dialog/l;->c()V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameTwoDialog:Lcom/join/android/app/common/dialog/l;

    if-eqz v0, :cond_2

    const-string v1, "\u672a\u627e\u5230\u6e38\u620f"

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/dialog/l;->d(Ljava/lang/String;)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameTwoDialog:Lcom/join/android/app/common/dialog/l;

    invoke-virtual {v0}, Lcom/join/android/app/common/dialog/l;->b()V

    :goto_1
    return-void
.end method

.method private clearSelection()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->home_tab_monkey_layout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->home_tab_default_layout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_recom_image:Landroid/widget/ImageView;

    const v2, 0x7f0807d6

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_recom_text:Landroid/widget/TextView;

    sget v2, Lcom/join/mgps/activity/MGMainActivity;->MainAppInfoColorMain:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_category_image:Landroid/widget/ImageView;

    const v2, 0x7f080c59

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_category_text:Landroid/widget/TextView;

    sget v2, Lcom/join/mgps/activity/MGMainActivity;->MainAppInfoColorMain:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_chart_text:Landroid/widget/TextView;

    sget v2, Lcom/join/mgps/activity/MGMainActivity;->MainAppInfoColorMain:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_emulator_image:Landroid/widget/ImageView;

    const v2, 0x7f08080d

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_emulator_text:Landroid/widget/TextView;

    sget v2, Lcom/join/mgps/activity/MGMainActivity;->MainAppInfoColorMain:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->unreadMessageBadge:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_emulator_text:Landroid/widget/TextView;

    const-string v1, "\u9996\u9875"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->animation2:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_emulator_image:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->fightImage:Landroid/widget/ImageView;

    const v1, 0x7f0807d9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->fightText:Landroid/widget/TextView;

    sget v1, Lcom/join/mgps/activity/MGMainActivity;->MainAppInfoColorMain:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private downloadLayout()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goMyGameManagerActivity(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->scroll_text_layout:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-virtual {v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->p()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->imageLoading:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isNewFinishedGame()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->hasNewFinishedGameImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private getAdConfig(Ljava/util/List;I)Lcom/join/mgps/dto/PlayCfgBean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PlayCfgBean;",
            ">;I)",
            "Lcom/join/mgps/dto/PlayCfgBean;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/PlayCfgBean;

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    move-result v1

    if-ne v1, p2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getArenaPluginInfo()V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "failed  "

    const-string v3, "getEMUVersionForArena"

    .line 1
    invoke-static/range {p0 .. p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/16 v5, 0x1388

    const/4 v7, 0x1

    .line 2
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual {v0, v9, v9, v8}, Lcom/join/mgps/Util/RequestBeanUtil;->getApkVersion(III)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 3
    iget-object v10, v1, Lcom/join/mgps/activity/MGMainActivity;->recommendClient:Lcom/join/mgps/rpc/d;

    invoke-interface {v10, v0}, Lcom/join/mgps/rpc/d;->C1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v10, :cond_4

    .line 4
    :try_start_1
    invoke-virtual {v10}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v0

    if-ne v0, v7, :cond_4

    .line 5
    invoke-virtual {v10}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ApkVersionbean;

    .line 7
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v12

    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v12

    .line 8
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    const-string v14, "tag_id"

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v14

    invoke-virtual {v14, v13}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 11
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_2

    .line 12
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-le v14, v7, :cond_0

    const/4 v14, 0x0

    .line 13
    :goto_1
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_0

    .line 14
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v15

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-virtual {v15, v4}, Lg1/b;->delete(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 15
    :cond_0
    :try_start_2
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/db/tables/EMUApkArenaTable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    :try_start_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getApk_name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setApk_name(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getDown_url()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setDown_url(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getLaunch_name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setLaunch_name(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getLogo()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setLogo(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getPackage_name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setPackage_name(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getRelease_date()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setRelease_date(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getSize()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setSize(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setTag_id(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getTeam_info()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setTeam_info(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getVer()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setVer(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_compatible()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setVer_compatible(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_info()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setVer_info(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getDown_type()I

    move-result v13

    invoke-virtual {v4, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setDown_type(I)V

    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getPlugin_md5()Lcom/join/mgps/dto/ApkVersionRemarkBean;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setRemark(Ljava/lang/String;)V

    if-eqz v12, :cond_1

    .line 30
    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    sget-object v13, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v0

    if-ne v0, v9, :cond_1

    .line 33
    invoke-virtual {v4}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->getDown_type()I

    move-result v0

    if-ne v0, v9, :cond_1

    .line 34
    invoke-virtual {v4}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->getApkPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    new-instance v13, Ljava/io/File;

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v13}, Lcom/join/android/app/common/utils/h;->h(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {v4, v0}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setApkPath(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v4, 0x0

    .line 37
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    :cond_1
    :goto_3
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v0

    invoke-virtual {v0, v4}, Lg1/b;->update(Ljava/lang/Object;)I

    .line 39
    invoke-static {v4}, Lcom/join/android/app/common/utils/h;->E(Lcom/join/mgps/db/tables/EMUApkArenaTable;)V

    goto/16 :goto_0

    .line 40
    :cond_2
    new-instance v4, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-direct {v4}, Lcom/join/mgps/db/tables/EMUApkArenaTable;-><init>()V

    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getApk_name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setApk_name(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getDown_url()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setDown_url(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getLaunch_name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setLaunch_name(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getLogo()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setLogo(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getPackage_name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setPackage_name(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getRelease_date()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setRelease_date(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getSize()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setSize(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setTag_id(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getTeam_info()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setTeam_info(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getVer()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setVer(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_compatible()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setVer_compatible(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_info()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setVer_info(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getDown_type()I

    move-result v13

    invoke-virtual {v4, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setDown_type(I)V

    .line 54
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getPlugin_md5()Lcom/join/mgps/dto/ApkVersionRemarkBean;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setRemark(Ljava/lang/String;)V

    if-eqz v12, :cond_3

    .line 55
    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 56
    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    sget-object v13, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v0

    if-ne v0, v9, :cond_3

    .line 58
    invoke-virtual {v4}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->getDown_type()I

    move-result v0

    if-ne v0, v9, :cond_3

    .line 59
    invoke-virtual {v4}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->getApkPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    new-instance v13, Ljava/io/File;

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v13}, Lcom/join/android/app/common/utils/h;->h(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {v4, v0}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setApkPath(Ljava/lang/String;)V

    .line 62
    :cond_3
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v0

    invoke-virtual {v0, v4}, Lg1/b;->k(Ljava/lang/Object;)I

    .line 63
    invoke-static {v4}, Lcom/join/android/app/common/utils/h;->E(Lcom/join/mgps/db/tables/EMUApkArenaTable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v10

    goto :goto_5

    :catch_2
    move-object v4, v10

    goto :goto_6

    :cond_4
    if-nez v10, :cond_6

    .line 64
    iget v0, v1, Lcom/join/mgps/activity/MGMainActivity;->reloadNumber:I

    if-lez v0, :cond_6

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/join/mgps/activity/MGMainActivity;->recomDatabean:Lcom/join/mgps/dto/RecomDatabean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget v0, v1, Lcom/join/mgps/activity/MGMainActivity;->reloadNumber:I

    sub-int/2addr v0, v7

    iput v0, v1, Lcom/join/mgps/activity/MGMainActivity;->reloadNumber:I

    .line 67
    :goto_4
    :try_start_5
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 68
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/activity/MGMainActivity;->getArenaPluginInfo()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_7

    :catchall_1
    move-exception v0

    const/4 v4, 0x0

    :goto_5
    if-nez v4, :cond_5

    .line 69
    iget v4, v1, Lcom/join/mgps/activity/MGMainActivity;->reloadNumber:I

    if-lez v4, :cond_5

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/join/mgps/activity/MGMainActivity;->recomDatabean:Lcom/join/mgps/dto/RecomDatabean;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget v2, v1, Lcom/join/mgps/activity/MGMainActivity;->reloadNumber:I

    sub-int/2addr v2, v7

    iput v2, v1, Lcom/join/mgps/activity/MGMainActivity;->reloadNumber:I

    .line 72
    :try_start_6
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 73
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/activity/MGMainActivity;->getArenaPluginInfo()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3

    .line 74
    :catch_3
    :cond_5
    throw v0

    :catch_4
    const/4 v4, 0x0

    :goto_6
    if-nez v4, :cond_6

    .line 75
    iget v0, v1, Lcom/join/mgps/activity/MGMainActivity;->reloadNumber:I

    if-lez v0, :cond_6

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/join/mgps/activity/MGMainActivity;->recomDatabean:Lcom/join/mgps/dto/RecomDatabean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget v0, v1, Lcom/join/mgps/activity/MGMainActivity;->reloadNumber:I

    sub-int/2addr v0, v7

    iput v0, v1, Lcom/join/mgps/activity/MGMainActivity;->reloadNumber:I

    goto :goto_4

    :catch_5
    :cond_6
    :goto_7
    return-void
.end method

.method private getLogincfgs()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/dto/RequestUidtagidTagdes;

    invoke-direct {v1}, Lcom/join/mgps/dto/RequestUidtagidTagdes;-><init>()V

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getDefalutRequestBean(Ljava/lang/Object;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/c;->O1()Lq1/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lq1/c;->P1(Lcom/join/mgps/dto/CommonRequestBean;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/MGMainActivity$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGMainActivity$d;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
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

.method private hideFragments(Landroidx/fragment/app/FragmentTransaction;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mgPapaMainFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->fightFragment:Lcom/join/mgps/fragment/f0;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mPapaActivity:Lcom/join/mgps/activity/w1;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->choiceFragment:Lcom/join/kotlin/ui/findgame/FindGameMainFragment;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->userCenterFragment:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_4
    return-void
.end method

.method private initAdBroadcast()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mAdReceived:Lcom/join/mgps/activity/MGMainActivity$m0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity$m0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity$m0;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mAdReceived:Lcom/join/mgps/activity/MGMainActivity$m0;

    .line 3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.tools.AdBroadcast"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->mAdReceived:Lcom/join/mgps/activity/MGMainActivity$m0;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private initApplicationV2()V
    .locals 4

    const-string v0, "55af129367e58e94ba0025b7"

    const-string v1, "channel_1028"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1
    invoke-static {p0, v0, v1, v2, v3}, Lcom/umeng/commonsdk/UMConfigure;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    sget-object v0, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->setPageCollectionMode(Lcom/umeng/analytics/MobclickAgent$PageMode;)V

    const-string v0, "563efaa5a8fe"

    const-string v1, "47378ac7ef1e9db5870c9cf62ee34a1d"

    .line 3
    invoke-static {p0, v0, v1}, Lcom/mob/MobSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Lcom/join/android/app/common/utils/h;->o(Landroid/content/Context;)V

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/a2;->b(Landroid/content/Context;)V

    .line 6
    :try_start_0
    new-instance v0, Lcom/join/android/app/common/http/MiitHelper;

    new-instance v1, Lcom/join/mgps/activity/MGMainActivity$f0;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGMainActivity$f0;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    invoke-direct {v0, v1}, Lcom/join/android/app/common/http/MiitHelper;-><init>(Lcom/join/android/app/common/http/MiitHelper$a;)V

    .line 7
    invoke-virtual {v0, p0}, Lcom/join/android/app/common/http/MiitHelper;->getDeviceIds(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initDefaultPluginInfo()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1100bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/join/mgps/dto/ApkVersionbean;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "getEMUVersion"

    const-string v2, "start"

    .line 4
    invoke-static {v1, v2}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "tag_id"

    const-string v3, "31"

    .line 6
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v4

    invoke-virtual {v4, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    .line 8
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v5

    invoke-virtual {v5, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    if-eqz v4, :cond_0

    .line 9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/ApkVersionbean;

    .line 11
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 12
    new-instance v6, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {v6, v5}, Lcom/join/mgps/db/tables/EMUApkTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 13
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v5

    invoke-virtual {v5, v6}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ApkVersionbean;

    .line 16
    invoke-virtual {v4}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 17
    new-instance v5, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-direct {v5, v4}, Lcom/join/mgps/db/tables/EMUApkArenaTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 18
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v4

    invoke-virtual {v4, v5}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_1

    .line 19
    :cond_5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "35"

    .line 20
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v4

    invoke-virtual {v4, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    .line 22
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v5

    invoke-virtual {v5, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    if-eqz v4, :cond_6

    .line 23
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_8

    :cond_6
    if-eqz v0, :cond_8

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/ApkVersionbean;

    .line 25
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 26
    new-instance v6, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {v6, v5}, Lcom/join/mgps/db/tables/EMUApkTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 27
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v5

    invoke-virtual {v5, v6}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_2

    :cond_8
    if-eqz v1, :cond_9

    .line 28
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    :cond_9
    if-eqz v0, :cond_b

    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ApkVersionbean;

    .line 30
    invoke-virtual {v4}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 31
    new-instance v5, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-direct {v5, v4}, Lcom/join/mgps/db/tables/EMUApkArenaTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 32
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v4

    invoke-virtual {v4, v5}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_3

    .line 33
    :cond_b
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "43"

    .line 34
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v4

    invoke-virtual {v4, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    .line 36
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v5

    invoke-virtual {v5, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    if-eqz v4, :cond_c

    .line 37
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_e

    :cond_c
    if-eqz v0, :cond_e

    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/ApkVersionbean;

    .line 39
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 40
    new-instance v6, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {v6, v5}, Lcom/join/mgps/db/tables/EMUApkTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 41
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v5

    invoke-virtual {v5, v6}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_4

    :cond_e
    if-eqz v1, :cond_f

    .line 42
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    :cond_f
    if-eqz v0, :cond_11

    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ApkVersionbean;

    .line 44
    invoke-virtual {v4}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 45
    new-instance v5, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-direct {v5, v4}, Lcom/join/mgps/db/tables/EMUApkArenaTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 46
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v4

    invoke-virtual {v4, v5}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_5

    .line 47
    :cond_11
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "33"

    .line 48
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v4

    invoke-virtual {v4, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    .line 50
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v5

    invoke-virtual {v5, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    if-eqz v4, :cond_12

    .line 51
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_14

    :cond_12
    if-eqz v0, :cond_14

    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/ApkVersionbean;

    .line 53
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 54
    new-instance v6, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {v6, v5}, Lcom/join/mgps/db/tables/EMUApkTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 55
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v5

    invoke-virtual {v5, v6}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_6

    :cond_14
    if-eqz v1, :cond_15

    .line 56
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_17

    :cond_15
    if-eqz v0, :cond_17

    .line 57
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ApkVersionbean;

    .line 58
    invoke-virtual {v4}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 59
    new-instance v5, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-direct {v5, v4}, Lcom/join/mgps/db/tables/EMUApkArenaTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 60
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v4

    invoke-virtual {v4, v5}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_7

    .line 61
    :cond_17
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "34"

    .line 62
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v4

    invoke-virtual {v4, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    .line 64
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v5

    invoke-virtual {v5, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    if-eqz v4, :cond_18

    .line 65
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1a

    :cond_18
    if-eqz v0, :cond_1a

    .line 66
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_19
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/ApkVersionbean;

    .line 67
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 68
    new-instance v6, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {v6, v5}, Lcom/join/mgps/db/tables/EMUApkTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 69
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v5

    invoke-virtual {v5, v6}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_8

    :cond_1a
    if-eqz v1, :cond_1b

    .line 70
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1d

    :cond_1b
    if-eqz v0, :cond_1d

    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ApkVersionbean;

    .line 72
    invoke-virtual {v4}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 73
    new-instance v5, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-direct {v5, v4}, Lcom/join/mgps/db/tables/EMUApkArenaTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 74
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v4

    invoke-virtual {v4, v5}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_9

    .line 75
    :cond_1d
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "51"

    .line 76
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v4

    invoke-virtual {v4, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    .line 78
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v5

    invoke-virtual {v5, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    if-eqz v4, :cond_1e

    .line 79
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_20

    :cond_1e
    if-eqz v0, :cond_20

    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1f
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/ApkVersionbean;

    .line 81
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 82
    new-instance v6, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {v6, v5}, Lcom/join/mgps/db/tables/EMUApkTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 83
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v5

    invoke-virtual {v5, v6}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_a

    :cond_20
    if-eqz v1, :cond_21

    .line 84
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_23

    :cond_21
    if-eqz v0, :cond_23

    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ApkVersionbean;

    .line 86
    invoke-virtual {v4}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 87
    new-instance v5, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-direct {v5, v4}, Lcom/join/mgps/db/tables/EMUApkArenaTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 88
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v4

    invoke-virtual {v4, v5}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_b

    .line 89
    :cond_23
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "53"

    .line 90
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v4

    invoke-virtual {v4, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    .line 92
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v5

    invoke-virtual {v5, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    if-eqz v4, :cond_24

    .line 93
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_26

    :cond_24
    if-eqz v0, :cond_26

    .line 94
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_25
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/ApkVersionbean;

    .line 95
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 96
    new-instance v6, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {v6, v5}, Lcom/join/mgps/db/tables/EMUApkTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 97
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v5

    invoke-virtual {v5, v6}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_c

    :cond_26
    if-eqz v1, :cond_27

    .line 98
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_29

    :cond_27
    if-eqz v0, :cond_29

    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ApkVersionbean;

    .line 100
    invoke-virtual {v4}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 101
    new-instance v5, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-direct {v5, v4}, Lcom/join/mgps/db/tables/EMUApkArenaTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 102
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v4

    invoke-virtual {v4, v5}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_d

    .line 103
    :cond_29
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "54"

    .line 104
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v4

    invoke-virtual {v4, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    .line 106
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v5

    invoke-virtual {v5, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    if-eqz v4, :cond_2a

    .line 107
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2c

    :cond_2a
    if-eqz v0, :cond_2c

    .line 108
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2b
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/ApkVersionbean;

    .line 109
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 110
    new-instance v6, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {v6, v5}, Lcom/join/mgps/db/tables/EMUApkTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 111
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v5

    invoke-virtual {v5, v6}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_e

    :cond_2c
    if-eqz v1, :cond_2d

    .line 112
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2f

    :cond_2d
    if-eqz v0, :cond_2f

    .line 113
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2e
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ApkVersionbean;

    .line 114
    invoke-virtual {v4}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 115
    new-instance v5, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-direct {v5, v4}, Lcom/join/mgps/db/tables/EMUApkArenaTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 116
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v4

    invoke-virtual {v4, v5}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_f

    .line 117
    :cond_2f
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "32"

    .line 118
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v4

    invoke-virtual {v4, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    .line 120
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v5

    invoke-virtual {v5, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    if-eqz v4, :cond_30

    .line 121
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_32

    :cond_30
    if-eqz v0, :cond_32

    .line 122
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_31
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/ApkVersionbean;

    .line 123
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 124
    new-instance v6, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {v6, v5}, Lcom/join/mgps/db/tables/EMUApkTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 125
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v5

    invoke-virtual {v5, v6}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_10

    :cond_32
    if-eqz v1, :cond_33

    .line 126
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_35

    :cond_33
    if-eqz v0, :cond_35

    .line 127
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_34
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ApkVersionbean;

    .line 128
    invoke-virtual {v4}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 129
    new-instance v5, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-direct {v5, v4}, Lcom/join/mgps/db/tables/EMUApkArenaTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 130
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v4

    invoke-virtual {v4, v5}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_11

    .line 131
    :cond_35
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "56"

    .line 132
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v4

    invoke-virtual {v4, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    .line 134
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v5

    invoke-virtual {v5, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    if-eqz v4, :cond_36

    .line 135
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_38

    :cond_36
    if-eqz v0, :cond_38

    .line 136
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_37
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/ApkVersionbean;

    .line 137
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 138
    new-instance v6, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {v6, v5}, Lcom/join/mgps/db/tables/EMUApkTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 139
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v5

    invoke-virtual {v5, v6}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_12

    :cond_38
    if-eqz v1, :cond_39

    .line 140
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3b

    :cond_39
    if-eqz v0, :cond_3b

    .line 141
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3a
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ApkVersionbean;

    .line 142
    invoke-virtual {v4}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 143
    new-instance v5, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-direct {v5, v4}, Lcom/join/mgps/db/tables/EMUApkArenaTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 144
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v4

    invoke-virtual {v4, v5}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_13

    .line 145
    :cond_3b
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "57"

    .line 146
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v4

    invoke-virtual {v4, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    .line 148
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v5

    invoke-virtual {v5, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    if-eqz v4, :cond_3c

    .line 149
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3e

    :cond_3c
    if-eqz v0, :cond_3e

    .line 150
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3d
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/ApkVersionbean;

    .line 151
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 152
    new-instance v6, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {v6, v5}, Lcom/join/mgps/db/tables/EMUApkTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 153
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v5

    invoke-virtual {v5, v6}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_14

    :cond_3e
    if-eqz v1, :cond_3f

    .line 154
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_41

    :cond_3f
    if-eqz v0, :cond_41

    .line 155
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_40
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ApkVersionbean;

    .line 156
    invoke-virtual {v4}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 157
    new-instance v5, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-direct {v5, v4}, Lcom/join/mgps/db/tables/EMUApkArenaTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 158
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v4

    invoke-virtual {v4, v5}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_15

    .line 159
    :cond_41
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "58"

    .line 160
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v4

    invoke-virtual {v4, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    .line 162
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v5

    invoke-virtual {v5, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    if-eqz v4, :cond_42

    .line 163
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_44

    :cond_42
    if-eqz v0, :cond_44

    .line 164
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_43
    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/ApkVersionbean;

    .line 165
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 166
    new-instance v6, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {v6, v5}, Lcom/join/mgps/db/tables/EMUApkTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 167
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v5

    invoke-virtual {v5, v6}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_16

    :cond_44
    if-eqz v1, :cond_45

    .line 168
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_47

    :cond_45
    if-eqz v0, :cond_47

    .line 169
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_46
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ApkVersionbean;

    .line 170
    invoke-virtual {v4}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 171
    new-instance v5, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-direct {v5, v4}, Lcom/join/mgps/db/tables/EMUApkArenaTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 172
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v4

    invoke-virtual {v4, v5}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_17

    .line 173
    :cond_47
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "60"

    .line 174
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v4

    invoke-virtual {v4, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    .line 176
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v5

    invoke-virtual {v5, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    if-eqz v4, :cond_48

    .line 177
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4a

    :cond_48
    if-eqz v0, :cond_4a

    .line 178
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_49
    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/ApkVersionbean;

    .line 179
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 180
    new-instance v6, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {v6, v5}, Lcom/join/mgps/db/tables/EMUApkTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 181
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v5

    invoke-virtual {v5, v6}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_18

    :cond_4a
    if-eqz v1, :cond_4b

    .line 182
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4d

    :cond_4b
    if-eqz v0, :cond_4d

    .line 183
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4c
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ApkVersionbean;

    .line 184
    invoke-virtual {v4}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 185
    new-instance v5, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-direct {v5, v4}, Lcom/join/mgps/db/tables/EMUApkArenaTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 186
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v4

    invoke-virtual {v4, v5}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_19

    .line 187
    :cond_4d
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "166"

    .line 188
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v2

    invoke-virtual {v2, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 190
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v4

    invoke-virtual {v4, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    if-eqz v2, :cond_4e

    .line 191
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_50

    :cond_4e
    if-eqz v0, :cond_50

    .line 192
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4f
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ApkVersionbean;

    .line 193
    invoke-virtual {v4}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 194
    new-instance v5, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {v5, v4}, Lcom/join/mgps/db/tables/EMUApkTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 195
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v4

    invoke-virtual {v4, v5}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_1a

    :cond_50
    if-eqz v1, :cond_51

    .line 196
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_53

    :cond_51
    if-eqz v0, :cond_53

    .line 197
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_52
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ApkVersionbean;

    .line 198
    invoke-virtual {v1}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 199
    new-instance v2, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-direct {v2, v1}, Lcom/join/mgps/db/tables/EMUApkArenaTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 200
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v1

    invoke-virtual {v1, v2}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_1b

    :cond_53
    return-void
.end method

.method private initGDTDownLoadSpeedAd(Ljava/lang/String;Z)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedupCfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-class v2, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadSpeedupCfgBean:Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->getPlay_cfg()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    .line 3
    invoke-direct {p0, v0, v2}, Lcom/join/mgps/activity/MGMainActivity;->getAdConfig(Ljava/util/List;I)Lcom/join/mgps/dto/PlayCfgBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v1

    move-object v6, v5

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->gdtDownLoadSpeedAd:Lcom/join/mgps/ad/e;

    if-nez v0, :cond_1

    invoke-static {v5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity$z;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p0

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/join/mgps/activity/MGMainActivity$z;-><init>(Lcom/join/mgps/activity/MGMainActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->gdtDownLoadSpeedAd:Lcom/join/mgps/ad/e;

    .line 8
    invoke-virtual {v0, p1}, Lcom/join/mgps/ad/c;->m(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->gdtDownLoadSpeedAd:Lcom/join/mgps/ad/e;

    invoke-virtual {p1}, Lcom/join/mgps/ad/e;->e()V

    :cond_1
    return-void
.end method

.method private initGDTPspAd(Z)V
    .locals 7

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->pspGameAdCfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-class v2, Lcom/join/mgps/dto/PspGameAdCfgBean;

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/PspGameAdCfgBean;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->pspGameAdCfgBean:Lcom/join/mgps/dto/PspGameAdCfgBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/PspGameAdCfgBean;->getPlay_cfg()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    .line 3
    invoke-direct {p0, v0, v2}, Lcom/join/mgps/activity/MGMainActivity;->getAdConfig(Ljava/util/List;I)Lcom/join/mgps/dto/PlayCfgBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v1

    move-object v4, v3

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->gdtPspAd:Lcom/join/mgps/ad/e;

    if-nez v0, :cond_1

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity$a0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity$a0;-><init>(Lcom/join/mgps/activity/MGMainActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v6, p0, Lcom/join/mgps/activity/MGMainActivity;->gdtPspAd:Lcom/join/mgps/ad/e;

    .line 8
    invoke-virtual {v6}, Lcom/join/mgps/ad/e;->e()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private initTTDownLoadSpeedAd(Ljava/lang/String;Z)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedupCfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-class v2, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadSpeedupCfgBean:Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->getPlay_cfg()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    .line 3
    invoke-direct {p0, v0, v2}, Lcom/join/mgps/activity/MGMainActivity;->getAdConfig(Ljava/util/List;I)Lcom/join/mgps/dto/PlayCfgBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v1

    move-object v6, v5

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->ttDownLoadSpeedAd:Lcom/join/mgps/ad/m;

    if-nez v0, :cond_1

    invoke-static {v5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity$x;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p0

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/join/mgps/activity/MGMainActivity$x;-><init>(Lcom/join/mgps/activity/MGMainActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->ttDownLoadSpeedAd:Lcom/join/mgps/ad/m;

    .line 8
    invoke-virtual {v0, p1}, Lcom/join/mgps/ad/c;->m(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->ttDownLoadSpeedAd:Lcom/join/mgps/ad/m;

    invoke-virtual {p1}, Lcom/join/mgps/ad/m;->e()V

    :cond_1
    return-void
.end method

.method private initTTPspAd(Z)V
    .locals 7

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->pspGameAdCfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-class v2, Lcom/join/mgps/dto/PspGameAdCfgBean;

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/PspGameAdCfgBean;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->pspGameAdCfgBean:Lcom/join/mgps/dto/PspGameAdCfgBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/PspGameAdCfgBean;->getPlay_cfg()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    .line 3
    invoke-direct {p0, v0, v2}, Lcom/join/mgps/activity/MGMainActivity;->getAdConfig(Ljava/util/List;I)Lcom/join/mgps/dto/PlayCfgBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v1

    move-object v4, v3

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->ttPspAd:Lcom/join/mgps/ad/m;

    if-nez v0, :cond_1

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    new-instance v6, Lcom/join/mgps/activity/MGMainActivity$y;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGMainActivity$y;-><init>(Lcom/join/mgps/activity/MGMainActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v6, p0, Lcom/join/mgps/activity/MGMainActivity;->ttPspAd:Lcom/join/mgps/ad/m;

    .line 8
    invoke-virtual {v6}, Lcom/join/mgps/ad/m;->e()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private initViewS()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0479

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090bd2

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->papa_user_round:Landroid/widget/TextView;

    const v1, 0x7f09015e

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->biground:Landroid/widget/TextView;

    const v1, 0x7f0903c0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f090dc7

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->scroll_text:Landroid/widget/TextView;

    const v1, 0x7f090dc8

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/customview/ScrollTextViewLayout;

    iput-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->scroll_text_layout:Lcom/join/mgps/customview/ScrollTextViewLayout;

    const v1, 0x7f090646

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->hasNewFinishedGameImage:Landroid/widget/ImageView;

    const v1, 0x7f0903c1

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadLine:Landroid/widget/ImageView;

    const v1, 0x7f0906a2

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->imageLoading:Landroid/widget/ImageView;

    const v1, 0x7f090297

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->coinFloatad:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f090bd0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->user_icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f090ee4

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 14
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 15
    iget-object v3, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/android/app/common/utils/j;->v(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 16
    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->layout_others:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/join/mgps/activity/MGMainActivity$f;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGMainActivity$f;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isLogined(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isModMainGame(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/join/mgps/dto/ModInfoBean;

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ModInfoBean;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static synthetic lambda$checkInstallApp$0(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/github/snowdream/android/app/downloader/DownloadTask;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    move-result-wide p0

    cmp-long v2, v0, p0

    if-gez v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$checkInstallApp$1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/github/snowdream/android/app/downloader/DownloadTask;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    move-result-wide p0

    cmp-long v2, v0, p0

    if-gez v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$handleVideoAdWatchLogRecord$5(Lcom/join/mgps/db/tables/VideoWatchLogTable;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/MGMainActivity;->videoAdWatchLog(Lcom/join/mgps/db/tables/VideoWatchLogTable;Z)V

    return-void
.end method

.method private synthetic lambda$invite$10(Lcom/join/mgps/dto/FriendInviteBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendInviteBean;->getFromAccountId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->reject(I)V

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wufan/friend/chat/c;->P()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->invitePop:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-virtual {p1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->dismiss()V

    return-void
.end method

.method private synthetic lambda$invite$9(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wufan/friend/chat/c;->O()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->invitePop:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-virtual {p1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$8()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->invitePop:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->P()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->invitePop:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-virtual {v0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->dismiss()V

    .line 4
    :cond_0
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->P()V

    return-void
.end method

.method private static synthetic lambda$onFriendEvent$6()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->C()V

    return-void
.end method

.method private synthetic lambda$onFriendInviteEvent$7(ZLcom/join/mgps/dto/FriendInviteBean;)V
    .locals 3

    const/high16 v0, 0x20000000

    if-nez p1, :cond_2

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/join/android/app/common/utils/j;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.showInvitePlay"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendInviteBean;->getFromAccountId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "userId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendInviteBean;->getFromNickname()Ljava/lang/String;

    move-result-object v0

    const-string v1, "userName"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendInviteBean;->getAvatar()Ljava/lang/String;

    move-result-object v0

    const-string v1, "userAvatar"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendInviteBean;->getLobbyRoomId()I

    move-result v0

    const-string v1, "roomId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendInviteBean;->getGameId()J

    move-result-wide v0

    const-string v2, "gameId"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 8
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendInviteBean;->getGameName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gameName"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendInviteBean;->getTimestamp()J

    move-result-wide v0

    const-string p2, "timestamp"

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/join/android/app/common/utils/j;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    invoke-static {p0}, Lcom/join/mgps/activity/FriendInviteActivity_;->E1(Landroid/content/Context;)Lcom/join/mgps/activity/FriendInviteActivity_$e;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/FriendInviteActivity_$e;->a(Lcom/join/mgps/dto/FriendInviteBean;)Lcom/join/mgps/activity/FriendInviteActivity_$e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/FriendInviteActivity_$e;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wufan/friend/chat/c;->Q()V

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/activity/FriendInviteActivity_;->E1(Landroid/content/Context;)Lcom/join/mgps/activity/FriendInviteActivity_$e;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/FriendInviteActivity_$e;->a(Lcom/join/mgps/dto/FriendInviteBean;)Lcom/join/mgps/activity/FriendInviteActivity_$e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/FriendInviteActivity_$e;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :goto_0
    return-void
.end method

.method private synthetic lambda$onResume$4()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->checkClipboard()V

    return-void
.end method

.method private synthetic lambda$showAddFriend$12(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showAddFriend$13(ILandroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->isLogined(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->isTourist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->add(I)V

    .line 3
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v0, "3"

    .line 4
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p2

    sget-object v0, Lcom/papa/sim/statistic/Event;->addFriends:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2, v0, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    .line 7
    :cond_1
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$showVersionDownLoadHint$2(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/MGMainActivity;->showUpdate:Z

    return-void
.end method

.method private synthetic lambda$showupdateDialog$3(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/MGMainActivity;->showUpdate:Z

    return-void
.end method

.method private synthetic lambda$toast$11(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method private loadIpAddress()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/sim/statistic/pref/b;->h()I

    .line 2
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 4
    new-instance v1, Lcom/join/mgps/dto/BaseRequestArgs;

    invoke-direct {v1}, Lcom/join/mgps/dto/BaseRequestArgs;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/BaseRequestArgs;->setUid(I)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object v1

    invoke-interface {v1, v0}, Lq1/h;->I(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/MGMainActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGMainActivity$c;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private onMygameSelected()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/tbruyelle/rxpermissions2/c;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/c;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/c;->r([Ljava/lang/String;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/MGMainActivity$g;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGMainActivity$g;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->B5(Lw2/g;)Lio/reactivex/disposables/b;
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

.method private queryDownTask()V
    .locals 6

    const-string v0, "temp_"

    :try_start_0
    const-string v1, "download"

    .line 1
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    .line 2
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 3
    invoke-virtual {v1, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "_id"

    .line 5
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    const-string v2, "title"

    .line 6
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string v2, "local_uri"

    .line 7
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bytes_so_far"

    .line 8
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string v3, "total_size"

    .line 9
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string v3, "status"

    .line 10
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "local_filename"

    .line 11
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 12
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "/"

    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 14
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 15
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ""

    .line 17
    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 18
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 20
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 21
    :cond_1
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto/16 :goto_0

    .line 22
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private saveImageFromUrl(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->u(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->C(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/core/g;->i(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/c;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/join/mgps/activity/MGMainActivity$l0;

    invoke-direct {p2, p0}, Lcom/join/mgps/activity/MGMainActivity$l0;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    .line 4
    invoke-static {}, Lcom/facebook/common/executors/a;->a()Lcom/facebook/common/executors/a;

    move-result-object v0

    .line 5
    invoke-interface {p1, p2, v0}, Lcom/facebook/datasource/c;->e(Lcom/facebook/datasource/e;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private show10Permiss()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->needShowPermissdialog()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->g()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    new-instance v1, Ljava/io/File;

    const-string v2, "test_canwhite.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->needShowPermissdialog()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->needShowPermissdialog()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method private showAdVipMainDialog(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/c;

    sget-object v1, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-virtual {v1}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/join/mgps/dialog/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->adVipMainDialog:Lcom/join/mgps/dialog/c;

    .line 2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->adVipMainDialog:Lcom/join/mgps/dialog/c;

    new-instance v0, Lcom/join/mgps/activity/MGMainActivity$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity$q;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/c;->h(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->adVipMainDialog:Lcom/join/mgps/dialog/c;

    new-instance v0, Lcom/join/mgps/activity/MGMainActivity$r;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity$r;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/c;->i(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->adVipMainDialog:Lcom/join/mgps/dialog/c;

    new-instance v0, Lcom/join/mgps/activity/MGMainActivity$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity$s;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/c;->j(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showVideoPopWin()V
    .locals 4

    .line 1
    sget-object v0, Lcom/MApplication;->u0:Lcom/join/mgps/dto/PublicVideoCfgBean;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->videoStrategyPop:Lcom/papa91/VideoStrategyPop;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->isShowVideo()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 4
    new-instance v1, Lcom/papa91/VideoStrategyPop;

    invoke-virtual {v0}, Lcom/join/mgps/dto/PublicVideoCfgBean;->getTimes()I

    move-result v2

    invoke-virtual {v0}, Lcom/join/mgps/dto/PublicVideoCfgBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/join/mgps/activity/MGMainActivity$t;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/MGMainActivity$t;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/papa91/VideoStrategyPop;-><init>(Landroid/app/Activity;ILjava/lang/String;Lcom/papa91/VideoStrategyPop$VideoPopListener;)V

    iput-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->videoStrategyPop:Lcom/papa91/VideoStrategyPop;

    .line 5
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->videoStrategyPop:Lcom/papa91/VideoStrategyPop;

    new-instance v1, Lcom/join/mgps/activity/MGMainActivity$u;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGMainActivity$u;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startAnimation(Lcom/join/mgps/Util/h0;Landroid/view/View;Lcom/join/mgps/Util/m0;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/Util/h0;->a()V

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-eqz p1, :cond_1

    if-nez v0, :cond_2

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0711b5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    move v0, p1

    .line 6
    :cond_2
    new-instance v1, Lcom/join/mgps/Util/h0;

    const/4 v2, 0x0

    const/high16 v3, 0x43340000    # 180.0f

    int-to-float p1, p1

    int-to-float v0, v0

    invoke-direct {v1, v2, v3, p1, v0}, Lcom/join/mgps/Util/h0;-><init>(FFFF)V

    .line 7
    invoke-virtual {v1, p3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x7d0

    .line 8
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p1, 0x0

    .line 9
    invoke-virtual {v1, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const/4 p1, -0x1

    .line 10
    invoke-virtual {v1, p1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 11
    new-instance p1, Lcom/join/mgps/activity/MGMainActivity$b0;

    invoke-direct {p1, p0}, Lcom/join/mgps/activity/MGMainActivity$b0;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    invoke-virtual {v1, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 12
    invoke-virtual {p2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 13
    iput-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->flipCardAnimation:Lcom/join/mgps/Util/h0;

    :goto_0
    return-void
.end method

.method private stopAlphBreathAnim()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->flipCardAnimation:Lcom/join/mgps/Util/h0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_0
    return-void
.end method

.method private toStartGame()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->allJsonStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->singleGameShowDialog()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->allJsonStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->allJsonStr:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->mAdVipEvent:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->d3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mAdVipEvent:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/join/mgps/activity/MGMainActivity$w;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGMainActivity$w;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method accountChange(Landroid/content/Intent;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->getRedPointData()V

    return-void
.end method

.method add(I)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/join/mgps/dto/FriendReqBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/FriendReqBean;-><init>()V

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendReqBean;->setUid(I)V

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/FriendReqBean;->setToken(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/FriendReqBean;->setRuid(I)V

    const-string p1, "\u563f\uff0c\u4ea4\u4e2a\u670b\u53cb\uff0c\u5c11\u5e74~(*^\u25bd^*)"

    .line 6
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/FriendReqBean;->setRequestInfo(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->p()Lcom/join/mgps/rpc/impl/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/rpc/impl/g;->o()Lq1/g;

    move-result-object p1

    invoke-interface {p1, v1}, Lq1/g;->b(Lcom/join/mgps/dto/FriendReqBean;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/activity/MGMainActivity$d0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity$d0;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method addSuccess(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u5df2\u53d1\u9001\u52a0\u597d\u53cb\u7533\u8bf7"

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->toast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method afterLogin()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.action_login_success"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->g()V

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity;->accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wufan/friend/chat/c;->L(ILjava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->autoSendAdd()V

    return-void
.end method

.method afterViews()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mRpcClient:Lcom/join/mgps/rpc/d;

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->p()Lcom/join/mgps/rpc/impl/g;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->friendClient:Lcom/join/mgps/rpc/i;

    .line 3
    iput-object p0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->md5FileTag()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    sput-object v0, Lcom/join/mgps/Util/u;->r:Ljava/lang/String;

    .line 7
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/high16 v2, 0x4000000

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 10
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v1, -0x80000000

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 12
    invoke-virtual {v0, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 14
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->firstShowUserPermiss()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->isFirst35()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->dialogBack:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    new-instance v0, Lcom/join/mgps/dialog/y1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/rpc/g;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/static/gy_yhxkxy.html"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/join/mgps/activity/MGMainActivity$v;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/MGMainActivity$v;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    invoke-direct {v0, p0, v2, v1, v3}, Lcom/join/mgps/dialog/y1;-><init>(Landroid/app/Activity;ILjava/lang/String;Lcom/join/mgps/dialog/y1$f;)V

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dialog/y1;->show()V

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->initApplicationData()V

    .line 20
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity;->initApplicationV2()V

    .line 21
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/MGMainActivity;->afterViewsInitData(Z)V

    .line 22
    invoke-static {v2, v1}, Lcom/mob/MobSDK;->submitPolicyGrantResult(ZLcom/mob/OperationCallback;)V

    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->onResume()V

    .line 24
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->getRootUrl()V

    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/pref/b;->D(Z)V

    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->firstShowUserPermiss()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/pref/b;->J(Z)V

    .line 28
    invoke-static {v2, v1}, Lcom/mob/MobSDK;->submitPolicyGrantResult(ZLcom/mob/OperationCallback;)V

    .line 29
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/MGMainActivity;->afterViewsInitData(Z)V

    :goto_1
    return-void
.end method

.method afterViewsInitData(Z)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "exitGamePackage"

    .line 4
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iput-boolean v1, p0, Lcom/BaseAppCompatActivity;->isBackHome:Z

    :cond_0
    const-string v3, "android.intent.category.LAUNCHER"

    .line 6
    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->finish()V

    return-void

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/join/mgps/activity/MGMainActivity$g0;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/MGMainActivity$g0;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->I()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/join/mgps/pref/h;->x0(J)V

    .line 12
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->accountBean:Lcom/join/mgps/dto/AccountBean;

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/join/mgps/activity/MGMainActivity;->hasPermiss:Z

    .line 14
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->rpcClient:Lcom/join/mgps/rpc/d;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadTasks:Ljava/util/List;

    .line 16
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->recommendClient:Lcom/join/mgps/rpc/d;

    .line 17
    invoke-static {p0}, Lcom/join/mgps/Util/b1;->b(Landroid/content/Context;)I

    move-result v0

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_4

    goto :goto_1

    .line 18
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/servcie/DownloadService_;->M(Landroid/content/Context;)Lcom/join/android/app/common/servcie/DownloadService_$l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 19
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "method afterViews() called."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->isShowSplash()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v3

    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MGmain method afterViews() called."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    const/4 v3, 0x3

    :try_start_0
    const-string v4, "clipboard"

    .line 21
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ClipboardManager;

    .line 22
    invoke-virtual {v4}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 23
    invoke-virtual {v4}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v5

    .line 24
    invoke-virtual {v5, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    .line 25
    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 26
    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 27
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-le v6, v7, :cond_5

    .line 28
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x77

    if-ne v6, v8, :cond_5

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x75

    if-ne v6, v8, :cond_5

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x66

    if-ne v6, v8, :cond_5

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x61

    if-ne v6, v8, :cond_5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x6e

    if-ne v6, v8, :cond_5

    .line 29
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 30
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/MGMainActivity;->getDetailData(Ljava/lang/String;)V

    const-string v5, ""

    .line 31
    invoke-virtual {v4, v5}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 32
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->saveUUID()V

    .line 34
    iget-object v4, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->isFirstCustomApk()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v4

    invoke-virtual {v4}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "1"

    if-eqz v4, :cond_a

    .line 35
    invoke-static {p0}, Lcom/join/mgps/Util/b1;->a(Landroid/content/Context;)Lcom/join/mgps/dto/FirstIntentData;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 36
    invoke-virtual {v4}, Lcom/join/mgps/dto/FirstIntentData;->isCustomApk()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v4}, Lcom/join/mgps/dto/FirstIntentData;->isAPKSplashImage()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_9

    .line 37
    invoke-virtual {v4}, Lcom/join/mgps/dto/FirstIntentData;->isCustomApk()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v6}, Lcom/join/mgps/pref/PrefDef_;->isFirstCustomApk()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v6

    invoke-virtual {v6}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v4}, Lcom/join/mgps/dto/FirstIntentData;->isIntent()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 38
    iget-object v6, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v6}, Lcom/join/mgps/pref/PrefDef_;->isFirstCustomApk()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v7}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 39
    invoke-virtual {v4}, Lcom/join/mgps/dto/FirstIntentData;->getIntentDateBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v6

    .line 40
    invoke-virtual {v6}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type()I

    move-result v7

    if-ne v7, v1, :cond_7

    invoke-virtual {v4}, Lcom/join/mgps/dto/FirstIntentData;->isGoDetail()Z

    move-result v7

    if-nez v7, :cond_7

    .line 41
    iget-object v4, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->showIndex()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_3

    .line 42
    :cond_7
    invoke-virtual {v4}, Lcom/join/mgps/dto/FirstIntentData;->isAutoDownload()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 43
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v4}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 44
    :cond_8
    new-instance v4, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {v4}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    const/16 v7, 0x86

    invoke-virtual {v4, v7}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 45
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v4

    invoke-virtual {v4, p0, v6}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    :cond_9
    :goto_3
    const/4 v4, 0x0

    .line 46
    :goto_4
    iget-object v6, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v6}, Lcom/join/mgps/pref/PrefDef_;->isFirstCustomApk()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v7}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    .line 47
    :goto_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "shortcutGameId"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/join/mgps/activity/MGMainActivity;->shortcutGameId:Ljava/lang/String;

    .line 48
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shortcutGameId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/join/mgps/activity/MGMainActivity;->shortcutGameId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v6, p0, Lcom/join/mgps/activity/MGMainActivity;->shortcutGameId:Ljava/lang/String;

    invoke-static {v6}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 50
    iget-object v6, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v6

    iget-object v7, p0, Lcom/join/mgps/activity/MGMainActivity;->shortcutGameId:Ljava/lang/String;

    iget-object v8, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v8

    invoke-virtual {v8}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v8

    const-string v9, "startByDeskIcon"

    invoke-virtual {v6, v9, v7, v8}, Lcom/papa/sim/statistic/p;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/join/mgps/activity/MGMainActivity$h0;

    invoke-direct {v7, p0}, Lcom/join/mgps/activity/MGMainActivity$h0;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    const-wide/16 v8, 0x5dc

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    :cond_b
    iget-object v6, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v6}, Lcom/join/mgps/pref/PrefDef_;->isFirstCommendVersion()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v6

    invoke-virtual {v6}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_c

    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v6

    invoke-virtual {v6}, Lg1/f;->d()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_c

    if-nez v4, :cond_c

    iget-object v6, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v6}, Lcom/join/mgps/pref/PrefDef_;->isFirst35()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v6

    invoke-virtual {v6}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 53
    iput-boolean v1, p0, Lcom/join/mgps/activity/MGMainActivity;->isFirstCommendVersion:Z

    .line 54
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/activity/recomend/RecomendActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/recomend/RecomendActivity_$IntentBuilder_;

    move-result-object v2

    const v6, 0x8627

    invoke-virtual {v2, v6}, Lcom/join/mgps/activity/recomend/RecomendActivity_$IntentBuilder_;->startForResult(I)Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    .line 55
    :cond_c
    iget-object v6, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v6}, Lcom/join/mgps/pref/PrefDef_;->thAdSwitchCfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v6

    invoke-virtual {v6}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 56
    invoke-static {v6}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 57
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v8

    const-class v9, Lcom/join/mgps/dto/ThAdSwitchDataBean;

    invoke-virtual {v8, v6, v9}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/ThAdSwitchDataBean;

    goto :goto_6

    :cond_d
    move-object v6, v7

    .line 58
    :goto_6
    iget-object v8, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v8}, Lcom/join/mgps/pref/PrefDef_;->isFirstCommendVersion()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8, v9}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    const/16 v8, 0x2710

    if-eqz v6, :cond_10

    .line 59
    invoke-virtual {v6}, Lcom/join/mgps/dto/ThAdSwitchDataBean;->getFx_ad_switch()I

    move-result v10

    if-ne v10, v1, :cond_10

    .line 60
    iget-object v10, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v10}, Lcom/join/mgps/pref/PrefDef_;->isFirstCommendVersion()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v10

    invoke-virtual {v10}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_12

    .line 61
    iget-object v4, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->isFirst35()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v4

    invoke-virtual {v4}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 62
    iput-boolean v1, p0, Lcom/join/mgps/activity/MGMainActivity;->isfirst35:Z

    .line 63
    iget-object v4, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->isFirst35()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v4

    invoke-virtual {v4, v9}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_7

    :cond_e
    const/4 v2, 0x1

    :goto_7
    if-eqz v2, :cond_f

    .line 64
    iget-object v4, p0, Lcom/join/mgps/activity/MGMainActivity;->shortcutGameId:Ljava/lang/String;

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 65
    invoke-static {p0}, Lcom/join/mgps/activity/SplashActivity_;->H(Landroid/content/Context;)Lcom/join/mgps/activity/SplashActivity_$b;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/join/mgps/activity/SplashActivity_$b;->a(Lcom/join/mgps/dto/ThAdSwitchDataBean;)Lcom/join/mgps/activity/SplashActivity_$b;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/join/mgps/activity/SplashActivity_$b;->startForResult(I)Lorg/androidannotations/api/builder/f;

    :cond_f
    move v4, v2

    goto :goto_9

    .line 66
    :cond_10
    iget-object v6, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v6}, Lcom/join/mgps/pref/PrefDef_;->isShowSplash()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v6

    invoke-virtual {v6}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v6}, Lcom/join/mgps/pref/PrefDef_;->isFirstCommendVersion()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v6

    invoke-virtual {v6}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_12

    .line 67
    iget-object v4, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->isFirst35()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v4

    invoke-virtual {v4}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 68
    iput-boolean v1, p0, Lcom/join/mgps/activity/MGMainActivity;->isfirst35:Z

    .line 69
    iget-object v4, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->isFirst35()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v4

    invoke-virtual {v4, v9}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    const/4 v4, 0x0

    goto :goto_8

    :cond_11
    const/4 v4, 0x1

    :goto_8
    if-eqz v4, :cond_12

    .line 70
    iget-object v6, p0, Lcom/join/mgps/activity/MGMainActivity;->shortcutGameId:Ljava/lang/String;

    invoke-static {v6}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 71
    iput-boolean v2, p0, Lcom/join/mgps/activity/MGMainActivity;->showInstallLayout:Z

    .line 72
    invoke-static {p0}, Lcom/join/mgps/activity/SplashActivity_;->H(Landroid/content/Context;)Lcom/join/mgps/activity/SplashActivity_$b;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/join/mgps/activity/SplashActivity_$b;->startForResult(I)Lorg/androidannotations/api/builder/f;

    :cond_12
    :goto_9
    const/16 v2, 0x8

    if-eqz v4, :cond_13

    .line 73
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->hideSplash()V

    goto :goto_a

    :cond_13
    if-eqz p1, :cond_14

    .line 74
    iget-boolean p1, p0, Lcom/join/mgps/activity/MGMainActivity;->isFirstCommendVersion:Z

    if-eqz p1, :cond_14

    goto :goto_a

    .line 75
    :cond_14
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->splash:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    :goto_a
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->firstNewSplash()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v6}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->init()V

    .line 78
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity;->initViewS()V

    :try_start_1
    const-string p1, "android.os.AsyncTask"

    .line 79
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    :catch_1
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 81
    :goto_b
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_15

    .line 83
    iput v3, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    goto :goto_c

    .line 84
    :cond_15
    iget-object v6, p0, Lcom/join/mgps/activity/MGMainActivity;->mainPos:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    if-nez v6, :cond_16

    .line 85
    iput v3, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    :cond_16
    const-string v6, "classiFy"

    .line 86
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/join/mgps/activity/MGMainActivity;->classiFy:I

    const-string v6, "classifyPrimaryIndex"

    .line 87
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/activity/MGMainActivity;->classifyPrimaryIndex:I

    .line 88
    :goto_c
    iget p1, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    if-nez p1, :cond_18

    .line 89
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->showIndex()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 90
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 p1, 0x7

    .line 91
    iput p1, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    goto :goto_d

    .line 92
    :cond_17
    iput v3, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    .line 93
    :cond_18
    :goto_d
    iput-boolean v1, p0, Lcom/join/mgps/activity/MGMainActivity;->isFirst:Z

    .line 94
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->shortcutGameId:Ljava/lang/String;

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_19

    iget-boolean p1, p0, Lcom/join/mgps/activity/MGMainActivity;->isNotThisGame:Z

    if-eqz p1, :cond_19

    .line 95
    iput v0, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    .line 96
    :cond_19
    iget p1, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->setTabSelect(I)V

    .line 97
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->registerMessageReceiver()V

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MGmain afterview finish"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/MGMainActivity;->getData(Z)V

    .line 100
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity;->getLogincfgs()V

    .line 101
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->f2(Landroid/content/Context;)V

    .line 102
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->getRedPointData()V

    .line 103
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->initJPushJoinDevice()V

    .line 104
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->jPushIntentData:Lcom/join/mgps/dto/JPushIntentData;

    if-eqz p1, :cond_1a

    .line 105
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/join/mgps/activity/MGMainActivity$i0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity$i0;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    :cond_1a
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/join/mgps/activity/MGMainActivity$j0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity$j0;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->splash:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-ne p1, v2, :cond_1b

    .line 108
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity;->show10Permiss()V

    .line 109
    :cond_1b
    invoke-virtual {p0, v7}, Lcom/join/mgps/activity/MGMainActivity;->updateStartGameTable(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method autoSendAdd()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->button:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->button:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method backSplitData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "_"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    aget-object v0, p1, v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/join/android/app/common/utils/j;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    aget-object p1, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-string p1, "-1"

    return-object p1
.end method

.method backUpGameFinish(Landroid/content/Intent;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.backup_game_finish"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->checkDownlodingNumber()V

    return-void
.end method

.method public callHomePageNewData(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "homeHasNewData"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/join/mgps/activity/MGMainActivity;->isPapaMainFragmentHasNewData:Z

    .line 2
    iget p1, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->refreshTabIcon()V

    :cond_0
    return-void
.end method

.method public callOnlineCoupon(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "localType"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->getOnlineCouponConfig(I)V

    return-void
.end method

.method public callbackClassify(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->setTabSelect(I)V

    return-void
.end method

.method public callbackClassifyTipsVisible(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public callbackDownloadCenterVisible(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->biground:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->checkDownlodingNumber()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->biground:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public callbackForumWelcome(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x3

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->setTabSelect(I)V

    return-void
.end method

.method public callbackFunChart(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->setTabSelect(I)V

    return-void
.end method

.method public callbackHome(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x7

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->setTabSelect(I)V

    return-void
.end method

.method public callbackPlayVideo(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public callbackUnReadMessage(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "UnReadMessage"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/activity/MGMainActivity;->messageNum:I

    return-void
.end method

.method checkClipboard()V
    .locals 3

    :try_start_0
    const-string v0, "clipboard"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/wufan/friend/chat/c;->l(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MGMainActivity;->showAddFriend(I)V

    const-string v1, ""

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method checkDownlodingNumber()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->O()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/MGMainActivity;->num:I

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lg1/f;->S(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/MGMainActivity;->n:I

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->W()I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGMainActivity;->updateLine(I)V

    .line 5
    iget v0, p0, Lcom/join/mgps/activity/MGMainActivity;->num:I

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGMainActivity;->updateDownloadingPoint(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/MGMainActivity;->n:I

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->updateNoOpenPoint()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->updateHidePoint()V

    :goto_0
    return-void
.end method

.method protected checkGameIsInstall(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/activity/MGMainActivity;->hasRom:Z

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/MGMainActivity;->hasPlug:Z

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 5
    iput-boolean v1, p0, Lcom/join/mgps/activity/MGMainActivity;->hasRom:Z

    .line 6
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ln1/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p1

    if-eqz p1, :cond_2

    new-array v2, v0, [Ljava/lang/String;

    .line 7
    invoke-static {p0, p1, v0, v2}, Lcom/join/android/app/common/utils/h;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->q0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iput-boolean v1, p0, Lcom/join/mgps/activity/MGMainActivity;->hasPlug:Z

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/join/mgps/activity/MGMainActivity;->hasPlug:Z

    goto :goto_1

    .line 10
    :cond_2
    iput-boolean v1, p0, Lcom/join/mgps/activity/MGMainActivity;->hasPlug:Z

    goto :goto_1

    .line 11
    :cond_3
    iput-boolean v0, p0, Lcom/join/mgps/activity/MGMainActivity;->hasRom:Z

    .line 12
    :goto_1
    iget-boolean p1, p0, Lcom/join/mgps/activity/MGMainActivity;->hasPlug:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/join/mgps/activity/MGMainActivity;->hasRom:Z

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method checkInstallApp()V
    .locals 12
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1}, Lg1/f;->v()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/join/android/app/common/utils/APKUtils;->m(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/android/app/common/utils/APKUtils$a;

    .line 6
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/join/android/app/common/utils/APKUtils$a;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v8}, Lcom/join/android/app/common/utils/APKUtils$a;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/join/android/app/common/utils/APKUtils$a;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v8}, Lcom/join/android/app/common/utils/APKUtils$a;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".papa"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_2
    const/4 v5, 0x1

    :cond_3
    if-eqz v5, :cond_0

    :cond_4
    if-eqz v5, :cond_6

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->insatllAppFirstData()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 8
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v2

    const-class v3, Lcom/join/mgps/dto/BootPageData;

    invoke-virtual {v2, v1, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BootPageData;

    if-eqz v1, :cond_a

    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/dto/BootPageData;->getGame_setup_boot()Lcom/join/mgps/dto/BootPageItem;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 10
    iget-boolean v1, p0, Lcom/join/mgps/activity/MGMainActivity;->activityHasDes:Z

    if-nez v1, :cond_5

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/activity/PapaPlugGuideActivity_;->I0(Landroid/content/Context;)Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;->a(I)Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;

    move-result-object v1

    const/16 v2, 0x2713

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;->startForResult(I)Lorg/androidannotations/api/builder/f;

    .line 12
    :cond_5
    iput-boolean v0, p0, Lcom/join/mgps/activity/MGMainActivity;->showInstallNoticeOrappDialog:Z

    goto :goto_1

    .line 13
    :cond_6
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->installApplastNoticeTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 15
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-gtz v8, :cond_8

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-nez v8, :cond_7

    :cond_8
    const/4 v2, 0x1

    goto :goto_0

    :cond_9
    const/4 v2, 0x0

    .line 16
    :goto_0
    iget-boolean v3, p0, Lcom/join/mgps/activity/MGMainActivity;->activityHasDes:Z

    if-nez v3, :cond_a

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 17
    sget-object v2, Lcom/join/mgps/activity/y0;->a:Lcom/join/mgps/activity/y0;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->lastShowNotInstallTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/join/mgps/Util/x;->t(J)Z

    move-result v2

    if-nez v2, :cond_a

    .line 19
    invoke-virtual {p0, v4, v1}, Lcom/join/mgps/activity/MGMainActivity;->showInstallAppDialogActivity(ILjava/util/List;)V

    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->lastShowNotInstallTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 21
    iput-boolean v0, p0, Lcom/join/mgps/activity/MGMainActivity;->showInstallNoticeOrappDialog:Z

    .line 22
    :cond_a
    :goto_1
    iget-boolean v1, p0, Lcom/join/mgps/activity/MGMainActivity;->showInstallNoticeOrappDialog:Z

    if-nez v1, :cond_c

    .line 23
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1}, Lg1/f;->Q()Ljava/util/List;

    move-result-object v1

    .line 24
    sget-object v2, Lcom/join/mgps/activity/z0;->a:Lcom/join/mgps/activity/z0;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v1, :cond_c

    .line 25
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->lastShowNotOpenTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/join/mgps/Util/x;->t(J)Z

    move-result v2

    if-nez v2, :cond_c

    .line 26
    iget-boolean v2, p0, Lcom/join/mgps/activity/MGMainActivity;->activityHasDes:Z

    if-nez v2, :cond_b

    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/MGMainActivity;->showInstallAppDialogActivity(ILjava/util/List;)V

    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->lastShowNotOpenTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 29
    :cond_b
    iput-boolean v0, p0, Lcom/join/mgps/activity/MGMainActivity;->showInstallNoticeOrappDialog:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_2
    const-string v1, "backupData"

    const-string v2, "\u63d0\u793a\u5f39\u7a97111"

    .line 31
    invoke-static {v1, v2}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-boolean v1, p0, Lcom/join/mgps/activity/MGMainActivity;->showInstallNoticeOrappDialog:Z

    if-nez v1, :cond_d

    iget v1, p0, Lcom/join/mgps/activity/MGMainActivity;->backupNumber:I

    if-lez v1, :cond_d

    .line 33
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MGMainActivity;->showBackupFinishDialog(I)V

    goto :goto_3

    .line 34
    :cond_d
    iput-boolean v0, p0, Lcom/join/mgps/activity/MGMainActivity;->hasRunFinishforFinishDialog:Z

    :goto_3
    return-void
.end method

.method checkPlugNeedUpdate()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x4b0L
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->d()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    return-void

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method checkPurchasedList()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    return-void
.end method

.method checkRealName()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x3e8L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastRealNameCheckTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/join/mgps/Util/x;->t(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastRealNameCheckTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    const/4 v1, 0x5

    new-instance v2, Lcom/join/mgps/activity/MGMainActivity$k0;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/MGMainActivity$k0;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    const-string v3, ""

    const-string v4, "ANDROID_SINGLE"

    invoke-static {v0, v1, v3, v4, v2}, Lcom/join/mgps/Util/UtilsMy;->p0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V

    :cond_0
    return-void
.end method

.method checkSNKGame()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->snkGameList:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->listTempZip:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    const-string v1, ""

    move-object v3, v1

    const/4 v2, 0x0

    .line 4
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/join/mgps/activity/MGMainActivity;->listZip:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/join/mgps/activity/MGMainActivity;->listZip:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "wufan2019"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {v4}, Lcom/join/mgps/Util/v0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 7
    :goto_1
    iget-object v6, p0, Lcom/join/mgps/activity/MGMainActivity;->snkGameList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 8
    iget-object v6, p0, Lcom/join/mgps/activity/MGMainActivity;->snkGameList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 9
    iget-object v5, p0, Lcom/join/mgps/activity/MGMainActivity;->listTempZip:Ljava/util/List;

    iget-object v6, p0, Lcom/join/mgps/activity/MGMainActivity;->listZip:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v3, v4

    goto :goto_2

    .line 11
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGMainActivity;->showCheckData(Ljava/util/List;)V

    return-void

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getSNKGameCheckRequestBean(Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->mRpcClient:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->A1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGMainActivity;->showCheckData(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 18
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameTwoDialog:Lcom/join/android/app/common/dialog/l;

    const-string v1, "\u672a\u68c0\u6d4b\u51fa\u6e38\u620f\uff01"

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/dialog/l;->d(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameTwoDialog:Lcom/join/android/app/common/dialog/l;

    invoke-virtual {v0}, Lcom/join/android/app/common/dialog/l;->b()V

    goto :goto_4

    .line 20
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameTwoDialog:Lcom/join/android/app/common/dialog/l;

    const-string v1, "\u7f51\u7edc\u94fe\u63a5\u5931\u8d25\uff0c\u672a\u68c0\u6d4b\u51fa\u6e38\u620f\uff01"

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/dialog/l;->d(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameTwoDialog:Lcom/join/android/app/common/dialog/l;

    invoke-virtual {v0}, Lcom/join/android/app/common/dialog/l;->b()V

    :cond_8
    :goto_4
    return-void
.end method

.method checkShowOldUserRecom(Z)V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->firstShowUserPermiss()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->userLastStartAPP()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/Util/x;->a(JJ)I

    move-result p1

    int-to-long v2, p1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->userLastStartAPP()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-eqz p1, :cond_0

    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/Util/x;->t(J)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p0, v2, v3}, Lcom/join/mgps/activity/MGMainActivity;->startIntentOldUserRecom(J)V

    return-void

    .line 7
    :cond_0
    iget-boolean p1, p0, Lcom/join/mgps/activity/MGMainActivity;->hasShowAd:Z

    if-nez p1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->showAdM()V

    :cond_1
    return-void
.end method

.method checkToken()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, ""

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getAccount_type()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 4
    new-instance v2, Lcom/join/mgps/dto/AccountUserInfoRequestBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;-><init>()V

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setUid(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setToken(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 8
    invoke-static {v2}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setSign(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/b;->h(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    .line 12
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/AccountBean;->setVip_level(I)V

    .line 14
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getSvip_level()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/AccountBean;->setSvip_level(I)V

    .line 15
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getVip_exp_time()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/join/mgps/dto/AccountBean;->setVip_exp_time(J)V

    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getIs_anchor()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/AccountBean;->setIs_anchor(I)V

    .line 17
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1, v2, p0}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v0

    const/16 v1, 0x2bd

    if-ne v0, v1, :cond_1

    const v0, 0x7f110267

    .line 19
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGMainActivity;->showMessage(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/b;->accountLoginOut(Landroid/content/Context;)V

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->touristLogin()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method clearOldCache(Lcom/join/mgps/dto/PopupAdBean;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getBig_pic()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getBig_pic()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getBig_pic()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getBig_pic()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/RecomDatabean;

    .line 6
    invoke-virtual {v4}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 7
    invoke-virtual {v4}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {v4}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/join/mgps/Util/u;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/join/mgps/Util/g0;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/u;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 12
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, p1, v2

    .line 14
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 16
    invoke-static {v3}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method delayChangeAdshow()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x7d0L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastShowTOUTIAOAd()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    return-void
.end method

.method delayLoadRewardAd(Lcom/join/mgps/ad/c;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
        delay = 0x12cL
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lcom/join/mgps/ad/c;->h(Z)V

    :cond_0
    return-void
.end method

.method delaydown(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0xbb8L
    .end annotation

    const-string v0, ""

    .line 1
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    return-void
.end method

.method downloadPermissGet(Landroid/content/Intent;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.download.permiss.get"
        }
    .end annotation

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->startBackups(Z)V

    return-void
.end method

.method downloaddelay(Landroid/content/Intent;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.download.delay.down"
        }
    .end annotation

    const-string v0, "downloadTastJson"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    const-class v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->delaydown(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method emuOnResume(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.emu.resume"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    const-class p1, Lcom/join/mgps/service/CommonService_;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->isRunService(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->updateHistory()V

    :cond_1
    :goto_0
    return-void
.end method

.method error(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method fightSelect()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGMainActivity;->setTabSelect(I)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->showDownNotice()V

    return-void
.end method

.method public full(Z)V
    .locals 2

    const/16 v0, 0x200

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 2
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 6
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void
.end method

.method getBootPageData()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
        delay = 0x5dcL
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/dto/BootPageRequestArgs;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/join/mgps/dto/BootPageRequestArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getBootPageData(Lcom/join/mgps/dto/BootPageRequestArgs;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->rpcClient:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->C(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/BootPageData;

    .line 8
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGMainActivity;->preLoadBootImage(Lcom/join/mgps/dto/BootPageData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getClassifyPrimaryIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/MGMainActivity;->classifyPrimaryIndex:I

    return v0
.end method

.method getData(Z)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x3e8L
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->setJPushJump()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->getdownloadTask()V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->getEMUVersion()V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity;->loadIpAddress()V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->setDefutDownloadPath()V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->isFirstRunApkBackupLong()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/k;->j(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/activity/MGMainActivity;->isfirst35:Z

    if-eqz v0, :cond_2

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/join/mgps/activity/MGMainActivity;->hasPermiss:Z

    .line 8
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGMainActivity;->startBackups(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->getHaveGameList()V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->insatllAppFirstData()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->getBootPageData()V

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->checkToken()V

    if-nez p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isFirstCommendVersion()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->shortcutGameId:Ljava/lang/String;

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->firstShowUserPermiss()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->checkRealName()V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->getHomePopupAd()V

    :cond_4
    return-void
.end method

.method getDetailData(Ljava/lang/String;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->rpcClient:Lcom/join/mgps/rpc/d;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->rpcClient:Lcom/join/mgps/rpc/d;

    .line 4
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    .line 6
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getAppDetialBean(Ljava/lang/String;ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/RecomRequestBean;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->rpcClient:Lcom/join/mgps/rpc/d;

    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/d;->e1(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showSharedGameDialog(Lcom/join/mgps/dto/CollectionBeanSub;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method getEMUVersion()V
    .locals 18
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "failed  "

    const-string v3, "0"

    const-string v4, "-1"

    .line 1
    iget-object v5, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v5}, Lcom/join/mgps/pref/PrefDef_;->plugHasUpdate()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v5

    invoke-virtual {v5}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_39

    sget-boolean v5, Lcom/join/mgps/service/CommonService;->I:Z

    if-eqz v5, :cond_0

    goto/16 :goto_22

    :cond_0
    const/4 v5, 0x1

    .line 2
    sput-boolean v5, Lcom/join/mgps/service/CommonService;->I:Z

    .line 3
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/activity/MGMainActivity;->initDefaultPluginInfo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 4
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v6

    const-string v7, "getEMUVersion"

    const/4 v8, 0x0

    if-eqz v6, :cond_37

    const/4 v6, 0x0

    .line 6
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v11

    invoke-virtual {v11}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v11, :cond_1

    .line 7
    :try_start_2
    invoke-virtual {v11}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v0

    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_1f

    :cond_1
    const/4 v11, 0x0

    .line 8
    :goto_2
    :try_start_3
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v12, v13, v13, v8, v11}, Lcom/join/mgps/Util/RequestBeanUtil;->getApkVersion(IIII)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v11

    .line 9
    iget-object v12, v1, Lcom/join/mgps/activity/MGMainActivity;->recommendClient:Lcom/join/mgps/rpc/d;

    invoke-interface {v12, v11}, Lcom/join/mgps/rpc/d;->r1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v11, :cond_35

    .line 10
    :try_start_4
    invoke-virtual {v11}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v12

    if-ne v12, v5, :cond_35

    const-string v12, "sucess"

    .line 11
    invoke-static {v7, v12}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v12, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v12}, Lcom/join/mgps/pref/PrefDef_;->plugHasUpdate()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v12

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v12, v14}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v11}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v12

    invoke-virtual {v12}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v12, :cond_2

    .line 14
    sput-boolean v8, Lcom/join/mgps/service/CommonService;->I:Z

    return-void

    .line 15
    :cond_2
    :try_start_5
    invoke-virtual {v11}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v12

    invoke-virtual {v12}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/join/mgps/dto/APKVersionMainBean;

    if-eqz v12, :cond_1b

    .line 16
    invoke-virtual {v12}, Lcom/join/mgps/dto/APKVersionMainBean;->getApp()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/join/mgps/dto/ApkVersionbean;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 17
    :try_start_6
    invoke-virtual {v12}, Lcom/join/mgps/dto/APKVersionMainBean;->getSimulator_run_ad_text_cfg()Ljava/util/List;

    move-result-object v15

    sput-object v15, Lcom/MApplication;->s0:Ljava/util/List;

    .line 18
    invoke-virtual {v12}, Lcom/join/mgps/dto/APKVersionMainBean;->getSingle_game_run_ad_text_cfg()Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;

    move-result-object v15

    sput-object v15, Lcom/MApplication;->t0:Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;

    .line 19
    invoke-virtual {v12}, Lcom/join/mgps/dto/APKVersionMainBean;->getPublic_video_cfg()Lcom/join/mgps/dto/PublicVideoCfgBean;

    move-result-object v15

    sput-object v15, Lcom/MApplication;->u0:Lcom/join/mgps/dto/PublicVideoCfgBean;

    .line 20
    sget-object v15, Lcom/MApplication;->t0:Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;

    if-eqz v15, :cond_3

    .line 21
    invoke-virtual {v15}, Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;->getCounts()I

    move-result v15

    sput v15, Lcom/MApplication;->v0:I

    .line 22
    :cond_3
    invoke-virtual {v12}, Lcom/join/mgps/dto/APKVersionMainBean;->getCfg()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_1c

    .line 23
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_1c

    .line 24
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/join/mgps/dto/HomeViewSwich;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v15, :cond_1c

    .line 25
    :try_start_7
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/join/mgps/dto/DownloadCfg;->getCfg_values()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/join/mgps/Util/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/join/mgps/activity/MGMainActivity;->backSplitData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 26
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 27
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/join/mgps/dto/DownloadCfg;->setCfg_values_express(Ljava/lang/String;)V

    goto :goto_3

    .line 28
    :cond_4
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v9

    const-string v10, "300"

    invoke-virtual {v9, v10}, Lcom/join/mgps/dto/DownloadCfg;->setCfg_values_express(Ljava/lang/String;)V

    .line 29
    :goto_3
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_size()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v9

    invoke-virtual {v9}, Lcom/join/mgps/dto/DownloadCfg;->getCfg_values()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/join/mgps/Util/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/join/mgps/activity/MGMainActivity;->backSplitData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 30
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 31
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_size()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/join/mgps/dto/DownloadCfg;->setCfg_values_express(Ljava/lang/String;)V

    goto :goto_4

    .line 32
    :cond_5
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_size()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v9

    const-string v10, "500"

    invoke-virtual {v9, v10}, Lcom/join/mgps/dto/DownloadCfg;->setCfg_values_express(Ljava/lang/String;)V

    .line 33
    :goto_4
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_cfg_net_game_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v9

    invoke-virtual {v9}, Lcom/join/mgps/dto/DownloadCfg;->getCfg_switch()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/join/mgps/Util/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/join/mgps/activity/MGMainActivity;->backSplitData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 34
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 35
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_cfg_net_game_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/join/mgps/dto/DownloadCfg;->setCfg_switch_express(Ljava/lang/String;)V

    goto :goto_5

    .line 36
    :cond_6
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_cfg_net_game_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/join/mgps/dto/DownloadCfg;->setCfg_switch_express(Ljava/lang/String;)V

    .line 37
    :goto_5
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_cfg_simulator_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v9

    invoke-virtual {v9}, Lcom/join/mgps/dto/DownloadCfg;->getCfg_switch()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/join/mgps/Util/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/join/mgps/activity/MGMainActivity;->backSplitData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 38
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 39
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_cfg_simulator_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/join/mgps/dto/DownloadCfg;->setCfg_switch_express(Ljava/lang/String;)V

    goto :goto_6

    .line 40
    :cond_7
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_cfg_simulator_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/join/mgps/dto/DownloadCfg;->setCfg_switch_express(Ljava/lang/String;)V

    .line 41
    :goto_6
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_cfg_stand_alone_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v9

    invoke-virtual {v9}, Lcom/join/mgps/dto/DownloadCfg;->getCfg_switch()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/join/mgps/Util/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/join/mgps/activity/MGMainActivity;->backSplitData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 42
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 43
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_cfg_stand_alone_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/join/mgps/dto/DownloadCfg;->setCfg_switch_express(Ljava/lang/String;)V

    goto :goto_7

    .line 44
    :cond_8
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_cfg_stand_alone_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/join/mgps/dto/DownloadCfg;->setCfg_switch_express(Ljava/lang/String;)V

    .line 45
    :goto_7
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_unrestricted_speed()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadCfg;->getCfg_values()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/join/mgps/Util/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/activity/MGMainActivity;->backSplitData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_unrestricted_speed()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/join/mgps/dto/DownloadCfg;->setCfg_values_express(Ljava/lang/String;)V

    .line 47
    iget-object v3, v1, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/join/mgps/pref/h;->N(Lcom/join/mgps/dto/HomeViewSwich;)V

    .line 48
    sput-object v15, Lcom/MApplication;->I:Lcom/join/mgps/dto/HomeViewSwich;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_8

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 49
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    :goto_8
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getAn_battle_switch()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 51
    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_switch()I

    move-result v3

    if-ne v3, v5, :cond_9

    .line 52
    iget-object v3, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->showAnBattle()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_9

    .line 53
    :cond_9
    iget-object v3, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->showAnBattle()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 54
    :goto_9
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getSeep_up_read_only_number_of_win()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 55
    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_switch()I

    move-result v4

    if-ne v4, v5, :cond_a

    .line 56
    iget-object v4, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCount()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_a

    .line 57
    :cond_a
    iget-object v3, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCount()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 58
    :goto_a
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getSeep_up_read_only_game_size()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 59
    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_switch()I

    move-result v4

    if-ne v4, v5, :cond_b

    .line 60
    iget-object v4, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpGameSize()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_b

    .line 61
    :cond_b
    iget-object v3, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpGameSize()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 62
    :goto_b
    iget-object v3, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpLastTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v3

    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 63
    invoke-static {v3, v4}, Lcom/join/mgps/Util/x;->t(J)Z

    move-result v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const-string v4, ""

    if-nez v3, :cond_c

    .line 64
    :try_start_9
    iget-object v3, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountCurrent()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 65
    iget-object v3, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountCurrentAD()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 66
    iget-object v3, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpGames()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 67
    :cond_c
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getPsp_ad_show_time()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 68
    iget-object v9, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v9}, Lcom/join/mgps/pref/PrefDef_;->pspAdShowTimeSwitch()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v9

    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_switch()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 69
    iget-object v9, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v9}, Lcom/join/mgps/pref/PrefDef_;->pspAdShowTime()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v9

    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 70
    :cond_d
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getRanking_menu()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 71
    iget-object v9, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v9}, Lcom/join/mgps/pref/PrefDef_;->rankingMenu()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v9

    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 72
    :cond_e
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getSeep_up_read_only_arc_ad_id()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 73
    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_switch()I

    move-result v9

    if-ne v9, v5, :cond_f

    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 74
    iget-object v9, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v9}, Lcom/join/mgps/pref/PrefDef_;->adIdArc()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v9

    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 75
    :cond_f
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getSeep_up_read_only_psp_ad_id()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 76
    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_switch()I

    move-result v9

    if-ne v9, v5, :cond_10

    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 77
    iget-object v9, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v9}, Lcom/join/mgps/pref/PrefDef_;->adIdPsp()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v9

    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 78
    :cond_10
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getSeep_up_read_only_down_ad_id()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 79
    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_switch()I

    move-result v9

    if-ne v9, v5, :cond_11

    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 80
    iget-object v9, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v9}, Lcom/join/mgps/pref/PrefDef_;->adIdDownloadSpeedUp()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v9

    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 81
    :cond_11
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getSeep_up_read_only_common_s_ad_id()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 82
    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_switch()I

    move-result v9

    if-ne v9, v5, :cond_12

    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_12

    .line 83
    iget-object v9, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v9}, Lcom/join/mgps/pref/PrefDef_;->adIdCommonV()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v9

    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 84
    :cond_12
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getSeep_up_read_only_common_h_ad_id()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 85
    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_switch()I

    move-result v9

    if-ne v9, v5, :cond_13

    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_13

    .line 86
    iget-object v9, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v9}, Lcom/join/mgps/pref/PrefDef_;->adIdCommonH()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v9

    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 87
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/activity/MGMainActivity;->initAdBroadcast()V

    .line 88
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getNick_name_modify_title()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 89
    iget-object v9, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v9}, Lcom/join/mgps/pref/PrefDef_;->changeNickNameNotice()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v9

    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 90
    :cond_14
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getGame_download_boot()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v3

    const/4 v9, -0x8

    if-eqz v3, :cond_15

    .line 91
    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v3

    .line 92
    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v10
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v10, :cond_15

    .line 93
    :try_start_a
    iget-object v10, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v10}, Lcom/join/mgps/pref/PrefDef_;->insatllAppFirst()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v10

    invoke-virtual {v10}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v10, v9, :cond_15

    .line 95
    iget-object v10, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v10}, Lcom/join/mgps/pref/PrefDef_;->insatllAppFirst()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_c

    :catch_2
    move-exception v0

    move-object v3, v0

    .line 96
    :try_start_b
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    :cond_15
    :goto_c
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getGame_performance_boot()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 98
    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v10
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v10, :cond_16

    .line 100
    :try_start_c
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 101
    iget-object v10, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v10}, Lcom/join/mgps/pref/PrefDef_;->runRomFirst()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v10

    invoke-virtual {v10}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v9, :cond_16

    .line 102
    iget-object v9, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v9}, Lcom/join/mgps/pref/PrefDef_;->runRomFirst()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_d

    :catch_3
    move-exception v0

    move-object v3, v0

    .line 103
    :try_start_d
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    :cond_16
    :goto_d
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getApp_down_wifi_status()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 105
    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v9
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v9, :cond_17

    .line 107
    :try_start_e
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 108
    iget-object v9, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v9}, Lcom/join/mgps/pref/PrefDef_;->wifiDownNumber()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v9

    invoke-virtual {v9}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_17

    .line 109
    iget-object v9, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v9}, Lcom/join/mgps/pref/PrefDef_;->wifiDownNumber()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_e

    :catch_4
    move-exception v0

    move-object v3, v0

    .line 110
    :try_start_f
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    :cond_17
    :goto_e
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getExt_game_upload_type()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 112
    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v9

    .line 113
    invoke-static {v9}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v9
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v9, :cond_18

    .line 114
    :try_start_10
    iget-object v9, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v9}, Lcom/join/mgps/pref/PrefDef_;->uploadType2()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v9

    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_f

    :catch_5
    move-exception v0

    move-object v3, v0

    .line 115
    :try_start_11
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    :cond_18
    :goto_f
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getWf_home_page_position()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 117
    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_switch()I

    move-result v9

    if-ne v9, v5, :cond_19

    .line 118
    iget-object v9, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v9}, Lcom/join/mgps/pref/PrefDef_;->showIndex()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v9

    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_10

    .line 119
    :cond_19
    iget-object v3, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->showIndex()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v3

    const-string v9, "2"

    invoke-virtual {v3, v9}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 120
    :goto_10
    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getMd5_file_tag()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 121
    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_switch()I

    move-result v9

    if-ne v9, v5, :cond_1a

    .line 122
    iget-object v4, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->md5FileTag()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 123
    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/join/mgps/Util/u;->r:Ljava/lang/String;

    goto :goto_11

    .line 124
    :cond_1a
    iget-object v3, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->md5FileTag()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 125
    :goto_11
    :try_start_12
    iget-object v3, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->emulatorStartAdCount()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v3

    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getEmulator_start_ad_count()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto :goto_12

    :catch_6
    move-exception v0

    move-object v3, v0

    .line 126
    :try_start_13
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    :goto_12
    iget-object v3, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->emulatorGoldenFingerUrl()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v3

    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getEmulator_golden_finger_url()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 128
    iget-object v3, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->emulatorOneSkillUrl()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v3

    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getEmulator_one_skill_url()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 129
    iget-object v3, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->emulatorCheckpointUrl()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v3

    invoke-virtual {v15}, Lcom/join/mgps/dto/HomeViewSwich;->getEmulator_checkpoint_url()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto :goto_13

    :catch_7
    move-exception v0

    move-object v3, v0

    .line 130
    :try_start_14
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13

    :cond_1b
    move-object v14, v6

    .line 131
    :cond_1c
    :goto_13
    invoke-virtual {v11}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v3
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    const-string v4, "_"

    if-ne v3, v5, :cond_1e

    .line 132
    :try_start_15
    invoke-static/range {p0 .. p0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v3

    .line 133
    invoke-virtual {v3}, Lcom/join/android/app/common/utils/j;->A()[Ljava/lang/String;

    move-result-object v3

    .line 134
    invoke-virtual {v14}, Lcom/join/mgps/dto/ApkVersionbean;->getVer()Ljava/lang/String;

    move-result-object v9

    .line 135
    invoke-virtual {v9, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v8

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 136
    invoke-virtual {v14}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_compatible()Ljava/lang/String;

    move-result-object v15

    .line 137
    invoke-virtual {v15, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, v8

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 138
    aget-object v16, v3, v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-gt v6, v10, :cond_1e

    .line 139
    new-instance v6, Lcom/join/mgps/dto/VersionDto;

    invoke-direct {v6}, Lcom/join/mgps/dto/VersionDto;-><init>()V

    .line 140
    invoke-virtual {v14}, Lcom/join/mgps/dto/ApkVersionbean;->getDown_url()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/join/mgps/dto/VersionDto;->setAndroidUrl(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v9, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v8

    .line 142
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v6, v9}, Lcom/join/mgps/dto/VersionDto;->setVersionNo(F)V

    .line 143
    invoke-virtual {v14}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_info()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/join/mgps/dto/VersionDto;->setInfo(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v14}, Lcom/join/mgps/dto/ApkVersionbean;->getHead_pic()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/join/mgps/dto/VersionDto;->setHead_pic(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v14}, Lcom/join/mgps/dto/ApkVersionbean;->getTow_tpl_back_ground_pic()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/join/mgps/dto/VersionDto;->setTow_tpl_back_ground_pic(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v14}, Lcom/join/mgps/dto/ApkVersionbean;->getTpl_type()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/join/mgps/dto/VersionDto;->setTpl_type(I)V

    .line 147
    aget-object v9, v3, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ge v9, v10, :cond_1e

    .line 148
    aget-object v3, v3, v8

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    int-to-float v9, v15

    cmpg-float v3, v3, v9

    if-gez v3, :cond_1d

    .line 149
    invoke-virtual {v1, v6, v5}, Lcom/join/mgps/activity/MGMainActivity;->showVersionDownLoadHint(Lcom/join/mgps/dto/VersionDto;Z)V

    goto :goto_14

    .line 150
    :cond_1d
    invoke-virtual {v1, v6, v8}, Lcom/join/mgps/activity/MGMainActivity;->showVersionDownLoadHint(Lcom/join/mgps/dto/VersionDto;Z)V

    .line 151
    :cond_1e
    :goto_14
    invoke-virtual {v12}, Lcom/join/mgps/dto/APKVersionMainBean;->getPlugin()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 152
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/ApkVersionbean;

    .line 153
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v9

    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v9

    if-eqz v9, :cond_1f

    .line 154
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getVer()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1f

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer_name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 155
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v10

    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getDown_type()I

    move-result v12

    if-eq v10, v12, :cond_1f

    .line 156
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v10

    invoke-virtual {v10, v9}, Lg1/b;->delete(Ljava/lang/Object;)I

    const/4 v9, 0x0

    .line 157
    :cond_1f
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v12, "tag_id"

    .line 158
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v12

    invoke-virtual {v12, v10}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v10

    const/16 v12, 0x9

    const/4 v13, 0x5

    if-eqz v10, :cond_2b

    .line 160
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_2b

    .line 161
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-le v14, v5, :cond_20

    const/4 v14, 0x0

    .line 162
    :goto_16
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_20

    .line 163
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v15

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {v15, v5}, Lg1/b;->delete(Ljava/lang/Object;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x1

    goto :goto_16

    .line 164
    :cond_20
    :try_start_16
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/db/tables/EMUApkTable;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_9
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 165
    :try_start_17
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getApk_name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/join/mgps/db/tables/EMUApkTable;->setApk_name(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getDown_url()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/join/mgps/db/tables/EMUApkTable;->setDown_url(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getLaunch_name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/join/mgps/db/tables/EMUApkTable;->setLaunch_name(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getLogo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/join/mgps/db/tables/EMUApkTable;->setLogo(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getPackage_name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/join/mgps/db/tables/EMUApkTable;->setPackage_name(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getRelease_date()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/join/mgps/db/tables/EMUApkTable;->setRelease_date(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getSize()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/join/mgps/db/tables/EMUApkTable;->setSize(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/join/mgps/db/tables/EMUApkTable;->setTag_id(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getTeam_info()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/join/mgps/db/tables/EMUApkTable;->setTeam_info(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getVer()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/join/mgps/db/tables/EMUApkTable;->setVer(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_compatible()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/join/mgps/db/tables/EMUApkTable;->setVer_compatible(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_info()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/join/mgps/db/tables/EMUApkTable;->setVer_info(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getDown_type()I

    move-result v10

    invoke-virtual {v5, v10}, Lcom/join/mgps/db/tables/EMUApkTable;->setDown_type(I)V

    .line 178
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getPlugin_md5()Lcom/join/mgps/dto/ApkVersionRemarkBean;

    move-result-object v10

    invoke-static {v10}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/join/mgps/db/tables/EMUApkTable;->setRemark(Ljava/lang/String;)V

    .line 179
    invoke-static {v1, v5}, Lcom/join/mgps/Util/UtilsMy;->r0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v10

    if-eqz v9, :cond_26

    .line 180
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_21

    .line 181
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v15}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_21

    .line 182
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_21

    .line 183
    invoke-virtual {v5}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v14

    if-ne v14, v15, :cond_21

    .line 184
    invoke-virtual {v5}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_21

    .line 185
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/io/File;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v15, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v14, v15}, Lcom/join/android/app/common/utils/h;->h(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    .line 186
    invoke-virtual {v5, v8}, Lcom/join/mgps/db/tables/EMUApkTable;->setApkPath(Ljava/lang/String;)V

    :cond_21
    if-eqz v10, :cond_23

    .line 187
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v8

    if-ne v8, v13, :cond_23

    .line 188
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getDown_url()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 190
    invoke-virtual {v9, v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 191
    :cond_22
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getApk_name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowName(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_info()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDescribe(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getLogo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPortraitURL(Ljava/lang/String;)V

    goto :goto_17

    .line 194
    :cond_23
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    if-nez v6, :cond_24

    .line 195
    invoke-virtual {v9, v13}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 196
    :cond_24
    :goto_17
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v6

    invoke-virtual {v6, v9}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    if-eq v6, v12, :cond_25

    if-eqz v10, :cond_29

    .line 198
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    if-ne v6, v13, :cond_29

    .line 199
    :cond_25
    iget-object v6, v1, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/join/android/app/common/utils/h;->G(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)V

    goto :goto_19

    :cond_26
    if-eqz v10, :cond_28

    .line 200
    invoke-virtual {v5}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_27

    .line 201
    iget-object v6, v1, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/String;

    invoke-static {v6, v5, v8, v9}, Lcom/join/android/app/common/utils/h;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 202
    iget-object v6, v1, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a2(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    goto :goto_19

    .line 203
    :cond_27
    iget-object v6, v1, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a2(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    goto :goto_19

    .line 204
    :cond_28
    iget-object v6, v1, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/String;

    invoke-static {v6, v5, v8, v9}, Lcom/join/android/app/common/utils/h;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 205
    iget-object v6, v1, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->Z1(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    goto :goto_19

    :catch_8
    move-exception v0

    move-object v6, v0

    goto :goto_18

    :catch_9
    move-exception v0

    move-object v6, v0

    const/4 v5, 0x0

    .line 206
    :goto_18
    :try_start_18
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    :cond_29
    :goto_19
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v6

    invoke-virtual {v6, v5}, Lg1/b;->update(Ljava/lang/Object;)I

    .line 208
    invoke-static {v5}, Lcom/join/android/app/common/utils/h;->F(Lcom/join/mgps/db/tables/EMUApkTable;)V

    :cond_2a
    :goto_1a
    const/4 v8, 0x2

    goto/16 :goto_1c

    .line 209
    :cond_2b
    new-instance v5, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {v5}, Lcom/join/mgps/db/tables/EMUApkTable;-><init>()V

    .line 210
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getApk_name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/join/mgps/db/tables/EMUApkTable;->setApk_name(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getDown_url()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/join/mgps/db/tables/EMUApkTable;->setDown_url(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getLaunch_name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/join/mgps/db/tables/EMUApkTable;->setLaunch_name(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getLogo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/join/mgps/db/tables/EMUApkTable;->setLogo(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getPackage_name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/join/mgps/db/tables/EMUApkTable;->setPackage_name(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getRelease_date()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/join/mgps/db/tables/EMUApkTable;->setRelease_date(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getSize()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/join/mgps/db/tables/EMUApkTable;->setSize(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/join/mgps/db/tables/EMUApkTable;->setTag_id(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getTeam_info()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/join/mgps/db/tables/EMUApkTable;->setTeam_info(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getVer()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/join/mgps/db/tables/EMUApkTable;->setVer(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_compatible()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/join/mgps/db/tables/EMUApkTable;->setVer_compatible(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_info()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/join/mgps/db/tables/EMUApkTable;->setVer_info(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getDown_type()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/join/mgps/db/tables/EMUApkTable;->setDown_type(I)V

    .line 223
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getPlugin_md5()Lcom/join/mgps/dto/ApkVersionRemarkBean;

    move-result-object v8

    invoke-static {v8}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/join/mgps/db/tables/EMUApkTable;->setRemark(Ljava/lang/String;)V

    .line 224
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v8

    invoke-virtual {v8, v5}, Lg1/b;->k(Ljava/lang/Object;)I

    .line 225
    invoke-static {v5}, Lcom/join/android/app/common/utils/h;->F(Lcom/join/mgps/db/tables/EMUApkTable;)V

    .line 226
    invoke-static {v1, v5}, Lcom/join/mgps/Util/UtilsMy;->r0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v8

    if-eqz v9, :cond_30

    .line 227
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2c

    .line 228
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v10

    sget-object v14, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v14}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2c

    .line 229
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v10

    const/4 v14, 0x2

    if-ne v10, v14, :cond_2c

    .line 230
    invoke-virtual {v5}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v10

    if-ne v10, v14, :cond_2c

    .line 231
    invoke-virtual {v5}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2c

    .line 232
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v10

    new-instance v14, Ljava/io/File;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v14}, Lcom/join/android/app/common/utils/h;->h(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    .line 233
    invoke-virtual {v5, v10}, Lcom/join/mgps/db/tables/EMUApkTable;->setApkPath(Ljava/lang/String;)V

    :cond_2c
    if-eqz v8, :cond_2d

    .line 234
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v10

    if-ne v10, v13, :cond_2d

    .line 235
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getDown_url()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v6}, Lcom/join/mgps/dto/ApkVersionbean;->getApk_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowName(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 238
    invoke-virtual {v9, v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_1b

    .line 239
    :cond_2d
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    if-nez v6, :cond_2e

    .line 240
    invoke-virtual {v9, v13}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 241
    :cond_2e
    :goto_1b
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v6

    invoke-virtual {v6, v9}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    if-eq v6, v12, :cond_2f

    if-eqz v8, :cond_2a

    .line 243
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    if-ne v6, v13, :cond_2a

    .line 244
    :cond_2f
    iget-object v6, v1, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/join/android/app/common/utils/h;->G(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)V

    goto/16 :goto_1a

    :cond_30
    if-eqz v8, :cond_32

    .line 245
    invoke-virtual {v5}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_31

    .line 246
    iget-object v6, v1, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/String;

    invoke-static {v6, v5, v9, v10}, Lcom/join/android/app/common/utils/h;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 247
    iget-object v6, v1, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a2(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    goto :goto_1c

    .line 248
    :cond_31
    iget-object v6, v1, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a2(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    goto :goto_1c

    :cond_32
    const/4 v8, 0x2

    .line 249
    iget-object v6, v1, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/String;

    invoke-static {v6, v5, v9, v10}, Lcom/join/android/app/common/utils/h;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 250
    iget-object v6, v1, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->Z1(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    :cond_33
    :goto_1c
    const/4 v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_15

    .line 251
    :cond_34
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v3

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v4

    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v5

    invoke-virtual {v5}, Lg1/b;->d()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Lcom/papa/sim/statistic/p;->w2(ZLjava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_a
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    goto :goto_1d

    :catchall_1
    move-exception v0

    move-object v3, v0

    move-object v6, v11

    goto/16 :goto_1

    :catch_a
    move-object v6, v11

    goto :goto_20

    :cond_35
    :goto_1d
    const/4 v3, 0x0

    .line 252
    sput-boolean v3, Lcom/join/mgps/service/CommonService;->I:Z

    if-nez v11, :cond_38

    .line 253
    iget v3, v1, Lcom/join/mgps/activity/MGMainActivity;->reloadNumber:I

    if-lez v3, :cond_38

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/join/mgps/activity/MGMainActivity;->recomDatabean:Lcom/join/mgps/dto/RecomDatabean;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget v2, v1, Lcom/join/mgps/activity/MGMainActivity;->reloadNumber:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/join/mgps/activity/MGMainActivity;->reloadNumber:I

    const-wide/16 v2, 0x1388

    .line 256
    :goto_1e
    :try_start_19
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/MGMainActivity;->getEMUVersion()V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_19} :catch_e

    goto :goto_21

    :catchall_2
    move-exception v0

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 258
    :goto_1f
    sput-boolean v4, Lcom/join/mgps/service/CommonService;->I:Z

    if-nez v6, :cond_36

    .line 259
    iget v4, v1, Lcom/join/mgps/activity/MGMainActivity;->reloadNumber:I

    if-lez v4, :cond_36

    .line 260
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/join/mgps/activity/MGMainActivity;->recomDatabean:Lcom/join/mgps/dto/RecomDatabean;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget v2, v1, Lcom/join/mgps/activity/MGMainActivity;->reloadNumber:I

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    iput v2, v1, Lcom/join/mgps/activity/MGMainActivity;->reloadNumber:I

    const-wide/16 v4, 0x1388

    .line 262
    :try_start_1a
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/MGMainActivity;->getEMUVersion()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1a} :catch_b

    .line 264
    :catch_b
    :cond_36
    throw v3

    :catch_c
    const/4 v6, 0x0

    :catch_d
    :goto_20
    const/4 v3, 0x0

    .line 265
    sput-boolean v3, Lcom/join/mgps/service/CommonService;->I:Z

    if-nez v6, :cond_38

    .line 266
    iget v3, v1, Lcom/join/mgps/activity/MGMainActivity;->reloadNumber:I

    if-lez v3, :cond_38

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/join/mgps/activity/MGMainActivity;->recomDatabean:Lcom/join/mgps/dto/RecomDatabean;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget v2, v1, Lcom/join/mgps/activity/MGMainActivity;->reloadNumber:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/join/mgps/activity/MGMainActivity;->reloadNumber:I

    const-wide/16 v2, 0x1388

    goto :goto_1e

    :cond_37
    const/4 v2, 0x0

    .line 269
    sput-boolean v2, Lcom/join/mgps/service/CommonService;->I:Z

    const-string v2, "nonet"

    .line 270
    invoke-static {v7, v2}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :catch_e
    :cond_38
    :goto_21
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/activity/MGMainActivity;->getArenaPluginInfo()V

    const/4 v2, 0x1

    .line 272
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/MGMainActivity;->getVideoAdCfg(Z)V

    :cond_39
    :goto_22
    return-void
.end method

.method getFriendInfo(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity$e0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity$e0;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method getHaveGameList()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->rpcConsoleGameClient:Lcom/join/mgps/rpc/f;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/join/mgps/rpc/impl/e;->b()Lcom/join/mgps/rpc/impl/e;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->rpcConsoleGameClient:Lcom/join/mgps/rpc/f;

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "uid"

    .line 7
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "token"

    .line 8
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->rpcConsoleGameClient:Lcom/join/mgps/rpc/f;

    invoke-interface {v0, v2}, Lcom/join/mgps/rpc/f;->a(Ljava/util/Map;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGMainActivity;->savePurchasedList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method getHomePopupAd()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v2

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getHomePopupAd(ZI)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity;->rpcClient:Lcom/join/mgps/rpc/d;

    invoke-interface {v2, v0}, Lcom/join/mgps/rpc/d;->J(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/PopupAdBean;

    .line 7
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGMainActivity;->showHomePopupAd(Lcom/join/mgps/dto/PopupAdBean;)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MGMainActivity;->showHomePopupAd(Lcom/join/mgps/dto/PopupAdBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MGMainActivity;->showHomePopupAd(Lcom/join/mgps/dto/PopupAdBean;)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MGMainActivity;->showHomePopupAd(Lcom/join/mgps/dto/PopupAdBean;)V

    :goto_1
    return-void
.end method

.method getOnlineCouponConfig(I)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    return-void
.end method

.method public getPositionNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    return v0
.end method

.method getRedPointData()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getGRedPointNum(I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->rpcClient:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->H1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/MessageRedPointBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean;->getMessages()Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean;->getMessages()Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean;->getData()Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean;->getMessages()Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean;->getData()Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    move-result-object v0

    sput-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_praise_surplus_number()I

    move-result v0

    sget-object v1, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_surplus_number()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getNotice_surplus_number()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getPraise_surplus_number()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getReplay_surplus_number()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/MApplication;->H:I

    if-lez v0, :cond_2

    .line 10
    iget v0, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->userCenterFragment:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->showNotif()V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->showRedPoint()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getRecomeAppwifi(II)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    return-object p1
.end method

.method getRootUrl()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/http/c;->e(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method getSNKGameInfo(I)V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/join/mgps/activity/MGMainActivity;->timelastSnk:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    return-void

    .line 3
    :cond_0
    iput-wide v0, p0, Lcom/join/mgps/activity/MGMainActivity;->timelastSnk:J

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/RequestBeanUtil;->getPreloadingADRequestBean()Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mRpcClient:Lcom/join/mgps/rpc/d;

    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/d;->V(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getCode()I

    move-result v0

    const/16 v1, 0x258

    if-ne v0, v1, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/SNKGameInfoBean;

    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->setSNKGameData(Lcom/join/mgps/dto/SNKGameInfoBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const-string p1, "\u7f51\u7edc\u5df2\u65ad\u5f00\uff0c\u8bf7\u8fde\u4e0a\u7f51\u7edc\u540e\u518d\u8bd5\uff01"

    .line 11
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showToast(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getSnkGameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->snkGameList:Ljava/util/List;

    return-object v0
.end method

.method getUpdateIntent(Landroid/content/Intent;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.appUpdate"
        }
    .end annotation

    const-string v0, "appUpdateBean"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/VersionDto;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/VersionDto;->isQiangzhi()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/MGMainActivity;->showVersionDownLoadHint(Lcom/join/mgps/dto/VersionDto;Z)V

    return-void
.end method

.method getVideoAdCfg(Z)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/join/mgps/dto/AccountBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/AccountBean;-><init>()V

    .line 4
    :cond_0
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 5
    new-instance v2, Lcom/join/mgps/dto/VideoAdCfgRequestArgs;

    invoke-direct {v2}, Lcom/join/mgps/dto/VideoAdCfgRequestArgs;-><init>()V

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/VideoAdCfgRequestArgs;->setUid(I)V

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/VideoAdCfgRequestArgs;->setToken(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 10
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v0

    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/rpc/impl/h;->q(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/VideoAdCfgBean;

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->arcadeGameAdCfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/VideoAdCfgBean;->getArcade_game_ad_cfg()Lcom/join/mgps/dto/ArcadeGameAdCfgBean;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/dto/BaseBean;->toJsonStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->singleGameAdCfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/VideoAdCfgBean;->getSingle_game_ad_cfg()Lcom/join/mgps/dto/SingleGameAdCfgBean;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/dto/BaseBean;->toJsonStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->pspGameAdCfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/VideoAdCfgBean;->getPsp_game_ad_cfg()Lcom/join/mgps/dto/PspGameAdCfgBean;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/dto/BaseBean;->toJsonStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->pspAdShowTimeSwitch()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/VideoAdCfgBean;->getPsp_game_ad_cfg()Lcom/join/mgps/dto/PspGameAdCfgBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PspGameAdCfgBean;->getSwitch_state()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->pspAdShowTime()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/VideoAdCfgBean;->getPsp_game_ad_cfg()Lcom/join/mgps/dto/PspGameAdCfgBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PspGameAdCfgBean;->getCount_down()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedupCfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/VideoAdCfgBean;->getDownload_speedup_cfg()Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/dto/BaseBean;->toJsonStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->mod_normal_ad_cfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/VideoAdCfgBean;->getMod_normal_ad_cfg()Lcom/join/mgps/dto/SingleGameAdCfgBean;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/dto/BaseBean;->toJsonStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->mod_enhance_ad_cfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/VideoAdCfgBean;->getMod_enhance_ad_cfg()Lcom/join/mgps/dto/SingleGameAdCfgBean;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/dto/BaseBean;->toJsonStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->simulator_path_cfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/VideoAdCfgBean;->getSimulator_path_cfg()Lcom/join/mgps/dto/SimulatorPathCfgBean;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/dto/BaseBean;->toJsonStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->simulator_fc_cfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/VideoAdCfgBean;->getSimulator_fc_cfg()Lcom/join/mgps/dto/SimulatorAdCfgBean;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/dto/BaseBean;->toJsonStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->simulator_gba_cfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/VideoAdCfgBean;->getSimulator_gba_cfg()Lcom/join/mgps/dto/SimulatorAdCfgBean;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/dto/BaseBean;->toJsonStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 24
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->simulator_psp_cfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/VideoAdCfgBean;->getSimulator_psp_cfg()Lcom/join/mgps/dto/SimulatorAdCfgBean;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/dto/BaseBean;->toJsonStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->simulator_jj_cfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/VideoAdCfgBean;->getSimulator_jj_cfg()Lcom/join/mgps/dto/SimulatorAdCfgBean;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/dto/BaseBean;->toJsonStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 26
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->simulator_gold_finger_cfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/VideoAdCfgBean;->getSimulator_gold_finger_cfg()Lcom/join/mgps/dto/SimulatorAdCfgBean;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/dto/BaseBean;->toJsonStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/dto/VideoAdCfgBean;->getDownload_speedup_cfg()Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/dto/VideoAdCfgBean;->getDownload_speedup_cfg()Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->getSwitch_state()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 29
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountAD()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/VideoAdCfgBean;->getDownload_speedup_cfg()Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->getSpeedup_times()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountAD()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_0

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountAD()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 32
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGMainActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_0
    if-eqz p1, :cond_7

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 33
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11029b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGMainActivity;->showToast(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_7

    .line 35
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->initAdVideoConfig()V

    goto :goto_3

    :goto_2
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->initAdVideoConfig()V

    .line 36
    :cond_5
    throw v0

    .line 37
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110206

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showToast(Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void
.end method

.method getdownloadTask()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
        delay = 0x3e8L
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->d()Ljava/util/List;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 2
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 4
    :goto_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGMainActivity;->getdownloadTaskUI(Ljava/util/List;)V

    return-void
.end method

.method getdownloadTaskUI(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadTasks:Ljava/util/List;

    if-eqz p1, :cond_5

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    const-string v2, "46"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 5
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/va/overmind/e;->D(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 7
    :cond_3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 8
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg1/f;->n(Ljava/lang/String;)V

    .line 9
    :cond_4
    :goto_3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadTasksMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    return-void
.end method

.method handleFailure(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/j;->w()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2
    instance-of v1, v0, Lcom/join/mgps/activity/GameMainActivity3;

    if-nez v1, :cond_8

    instance-of v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x10

    if-ne p1, v0, :cond_2

    const-string p1, "\u65e0\u6cd5\u52a0\u5165\uff0c\u4f60\u88ab\u7981\u6b62\u52a0\u5165\u8be5\u623f\u95f4"

    .line 4
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showToast(Ljava/lang/String;)V

    return-void

    :cond_2
    const/16 v0, 0x11

    if-ne p1, v0, :cond_3

    const-string p1, "\u8be5\u623f\u95f4\u4e3a\u6bd4\u8d5b\u4e13\u7528\u623f\u95f4,\u975e\u53c2\u8d5b\u9009\u624b\u65e0\u6cd5\u52a0\u5165"

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showToast(Ljava/lang/String;)V

    return-void

    :cond_3
    const/16 v0, 0x9

    if-ne p1, v0, :cond_4

    const-string p1, "\u623f\u95f4\u4eba\u6570\u5df2\u6ee1\u4f60\u65e0\u6cd5\u52a0\u5165\u623f\u95f4"

    .line 6
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showToast(Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 v0, 0x7

    if-ne p1, v0, :cond_5

    const-string p1, "\u5bc6\u7801\u8f93\u5165\u9519\u8bef\uff0c\u8bf7\u91cd\u8bd5!"

    .line 7
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showToast(Ljava/lang/String;)V

    return-void

    :cond_5
    const/16 v0, 0x8

    if-ne p1, v0, :cond_6

    const-string p1, "\u623f\u95f4\u5df2\u7ecf\u88ab\u89e3\u6563\uff01"

    .line 8
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showToast(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v1, Lcom/join/mgps/event/m;

    invoke-direct {v1, v0}, Lcom/join/mgps/event/m;-><init>(I)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void

    :cond_6
    const/16 v0, 0xb

    if-ne p1, v0, :cond_7

    const-string p1, "\u94dc\u677f\u4e0d\u8db3\uff0c\u65e0\u6cd5\u521b\u5efa\u623f\u95f4!"

    .line 10
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showToast(Ljava/lang/String;)V

    return-void

    :cond_7
    const/16 v0, 0xd

    if-ne p1, v0, :cond_8

    const-string p1, "\u94dc\u677f\u4e0d\u8db3\uff0c\u65e0\u6cd5\u52a0\u5165\u623f\u95f4"

    .line 11
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showToast(Ljava/lang/String;)V

    :cond_8
    :goto_0
    return-void
.end method

.method handleVideoAdWatchLogRecord()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
        delay = 0x1388L
    .end annotation

    .line 1
    invoke-static {}, Ln1/n0;->n()Ln1/n0;

    move-result-object v0

    invoke-virtual {v0}, Lg1/b;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/db/tables/VideoWatchLogTable;

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/join/mgps/activity/h1;

    invoke-direct {v3, p0, v1}, Lcom/join/mgps/activity/h1;-><init>(Lcom/join/mgps/activity/MGMainActivity;Lcom/join/mgps/db/tables/VideoWatchLogTable;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method hideRedPoint()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->red_point:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method hideSplash()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x514L
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity;->show10Permiss()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->splash:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method hideSplash2()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x514L
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity;->show10Permiss()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->splash:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method init()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/papa/sim/statistic/p;->o()V

    .line 5
    new-instance v1, Lcom/join/mgps/listener/d;

    invoke-direct {v1}, Lcom/join/mgps/listener/d;-><init>()V

    .line 6
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/p;->z2(Lcom/papa/sim/statistic/h;)V

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/p;->y2(Z)V

    .line 9
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/p;->x2(Z)V

    .line 10
    :cond_1
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/papa/sim/statistic/p;->C2(ILjava/lang/String;)V

    .line 11
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/service/CommonService_;->d2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$u1;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :catch_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->plugHasUpdate()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 13
    sput-boolean v2, Lcom/join/mgps/service/CommonService;->I:Z

    .line 14
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/p;->R1(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->jpushInit()V

    return-void
.end method

.method initAdVideoConfig()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/activity/MGMainActivity;->initTTDownLoadSpeedAd(Ljava/lang/String;Z)V

    .line 2
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/MGMainActivity;->initTTPspAd(Z)V

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/activity/MGMainActivity;->initGDTDownLoadSpeedAd(Ljava/lang/String;Z)V

    .line 4
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/MGMainActivity;->initGDTPspAd(Z)V

    return-void
.end method

.method initApplicationData()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    sget-object v0, Lcom/MApplication;->q:Lcom/MApplication;

    .line 2
    invoke-virtual {v0}, Lcom/MApplication;->r()V

    .line 3
    invoke-virtual {v0}, Lcom/MApplication;->y()V

    return-void
.end method

.method initCheckSNKGame(Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->snkGameList:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x0

    const-string v1, ""

    move-object v3, v1

    const/4 v2, 0x0

    .line 3
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "wufan2019"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static {v4}, Lcom/join/mgps/Util/v0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 6
    :goto_1
    iget-object v6, p0, Lcom/join/mgps/activity/MGMainActivity;->snkGameList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 7
    iget-object v6, p0, Lcom/join/mgps/activity/MGMainActivity;->snkGameList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8
    iget-object v5, p0, Lcom/join/mgps/activity/MGMainActivity;->listTempZip:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v3, v4

    goto :goto_2

    .line 10
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showCheckData(Ljava/util/List;)V

    return-void

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getSNKGameCheckRequestBean(Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mRpcClient:Lcom/join/mgps/rpc/d;

    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/d;->A1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showCheckData(Ljava/util/List;)V

    goto :goto_3

    .line 17
    :cond_5
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGMainActivity;->sanLocalGameIv(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "e:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_3
    return-void
.end method

.method public initGDTAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->gdtAdVideo:Lcom/join/mgps/ad/e;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity$n;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/activity/MGMainActivity$n;-><init>(Lcom/join/mgps/activity/MGMainActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->gdtAdVideo:Lcom/join/mgps/ad/e;

    .line 3
    invoke-virtual {v0, p3}, Lcom/join/mgps/ad/c;->m(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->gdtAdVideo:Lcom/join/mgps/ad/e;

    invoke-virtual {p1, p4}, Lcom/join/mgps/ad/c;->n(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->gdtAdVideo:Lcom/join/mgps/ad/e;

    invoke-virtual {p1, p5}, Lcom/join/mgps/ad/c;->o(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->gdtAdVideo:Lcom/join/mgps/ad/e;

    invoke-virtual {p1}, Lcom/join/mgps/ad/e;->e()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->gdtAdVideo:Lcom/join/mgps/ad/e;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Lcom/join/mgps/ad/e;->h(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public initGoldGDTAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->gdtGoldAdVideo:Lcom/join/mgps/ad/e;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity$p;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/activity/MGMainActivity$p;-><init>(Lcom/join/mgps/activity/MGMainActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->gdtGoldAdVideo:Lcom/join/mgps/ad/e;

    .line 3
    invoke-virtual {v0, p3}, Lcom/join/mgps/ad/c;->m(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->gdtGoldAdVideo:Lcom/join/mgps/ad/e;

    invoke-virtual {p1, p4}, Lcom/join/mgps/ad/c;->n(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->gdtGoldAdVideo:Lcom/join/mgps/ad/e;

    invoke-virtual {p1, p5}, Lcom/join/mgps/ad/c;->o(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->gdtGoldAdVideo:Lcom/join/mgps/ad/e;

    invoke-virtual {p1, p6}, Lcom/join/mgps/ad/c;->l(Ljava/util/Map;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->gdtGoldAdVideo:Lcom/join/mgps/ad/e;

    invoke-virtual {p1}, Lcom/join/mgps/ad/e;->e()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->gdtGoldAdVideo:Lcom/join/mgps/ad/e;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 9
    invoke-virtual {p1, p2}, Lcom/join/mgps/ad/e;->h(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public initGoldTTAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->ttGoldAdVideo:Lcom/join/mgps/ad/m;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity$o;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/activity/MGMainActivity$o;-><init>(Lcom/join/mgps/activity/MGMainActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->ttGoldAdVideo:Lcom/join/mgps/ad/m;

    .line 3
    invoke-virtual {v0, p3}, Lcom/join/mgps/ad/c;->m(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->ttGoldAdVideo:Lcom/join/mgps/ad/m;

    invoke-virtual {p1, p4}, Lcom/join/mgps/ad/c;->n(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->ttGoldAdVideo:Lcom/join/mgps/ad/m;

    invoke-virtual {p1, p5}, Lcom/join/mgps/ad/c;->o(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->ttGoldAdVideo:Lcom/join/mgps/ad/m;

    invoke-virtual {p1, p6}, Lcom/join/mgps/ad/c;->l(Ljava/util/Map;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->ttGoldAdVideo:Lcom/join/mgps/ad/m;

    invoke-virtual {p1}, Lcom/join/mgps/ad/m;->e()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->ttGoldAdVideo:Lcom/join/mgps/ad/m;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 9
    invoke-virtual {p1, p2}, Lcom/join/mgps/ad/m;->h(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method initJPushJoinDevice()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 6
    :cond_1
    new-instance v0, Lorg/springframework/util/LinkedMultiValueMap;

    invoke-direct {v0}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "token"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/b;->R(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/JPushJoinDeviceResult;

    invoke-virtual {v1}, Lcom/join/mgps/dto/JPushJoinDeviceResult;->isResult()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/JPushJoinDeviceResult;

    invoke-virtual {v0}, Lcom/join/mgps/dto/JPushJoinDeviceResult;->getMsg()Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public initTTAd(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->ttAdVideo:Lcom/join/mgps/ad/m;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity$m;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/activity/MGMainActivity$m;-><init>(Lcom/join/mgps/activity/MGMainActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->ttAdVideo:Lcom/join/mgps/ad/m;

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/ad/m;->e()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->ttAdVideo:Lcom/join/mgps/ad/m;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2}, Lcom/join/mgps/ad/m;->h(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method invite(Lcom/join/mgps/dto/FriendInviteBean;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->invitePop:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->invitePop:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-virtual {v0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->dismiss()V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    invoke-static {}, Lcom/join/android/app/common/utils/j;->w()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0537

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;->a(Landroid/app/Activity;Landroid/view/View;)Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;

    move-result-object v2

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v2, v3}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;->e(Z)Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;

    move-result-object v2

    const v3, 0x7f1204c4

    .line 8
    invoke-virtual {v2, v3}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;->d(I)Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;->b()Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/activity/MGMainActivity;->invitePop:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071235

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity;->invitePop:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0710c9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    const v2, 0x7f09003a

    .line 12
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/activity/b1;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/b1;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f09032e

    .line 13
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/activity/e1;

    invoke-direct {v3, p0, p1}, Lcom/join/mgps/activity/e1;-><init>(Lcom/join/mgps/activity/MGMainActivity;Lcom/join/mgps/dto/FriendInviteBean;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090126

    .line 14
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v2, p0, Lcom/join/mgps/activity/MGMainActivity;->avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v2, 0x7f090acd

    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/join/mgps/activity/MGMainActivity;->name:Landroid/widget/TextView;

    const v2, 0x7f09057f

    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->gameName:Landroid/widget/TextView;

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->name:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendInviteBean;->getFromNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->gameName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendInviteBean;->getGameName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendInviteBean;->getAvatar()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/join/android/app/common/utils/MyImageLoader;->w(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->invitePop:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->B(Landroid/view/View;II)V

    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->r:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3a98

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method isHomePopupAdCached(Lcom/join/mgps/dto/PopupAdBean;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getBig_pic()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getBig_pic()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getBig_pic()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getBig_pic()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/RecomDatabean;

    .line 5
    invoke-virtual {v5}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 6
    invoke-virtual {v5}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 7
    invoke-virtual {v5}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-static {v5}, Lcom/join/mgps/Util/k0;->n(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 9
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/MGMainActivity;->isHomePopupAdLocalCached(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    iget-object v6, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/join/mgps/Util/u;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    invoke-static {v5, p0, v6, v0}, Lcom/join/mgps/Util/k0;->f(Ljava/lang/String;Landroid/content/Context;Ljava/io/File;Lcom/join/mgps/Util/k0$f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-ne v4, v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-eqz p1, :cond_7

    .line 11
    :try_start_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getMore()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getMore()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getMore()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/RecomDatabean;

    if-eqz p1, :cond_7

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/join/mgps/Util/k0;->n(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 18
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->isHomePopupAdLocalCached(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    .line 19
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/u;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {p1, p0, v1, v0}, Lcom/join/mgps/Util/k0;->f(Ljava/lang/String;Landroid/content/Context;Ljava/io/File;Lcom/join/mgps/Util/k0$f;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :cond_6
    :goto_4
    and-int/lit8 v2, v2, 0x1

    goto :goto_6

    :catch_1
    move-exception p1

    move v1, v2

    .line 20
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :cond_7
    :goto_6
    move v1, v2

    :goto_7
    return v1
.end method

.method isHomePopupAdLocalCached(Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/u;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {p1}, Lcom/join/mgps/Util/g0;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public isRunService(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "activity"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const v0, 0x7fffffff

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 3
    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method jpushInit()V
    .locals 7

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/q0;->i(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->lastSendAppTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v6, v0, v4

    if-gtz v6, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->needsendRigeister()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method mg_category_tabselectClicked()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGMainActivity;->setTabSelect(I)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->showDownNotice()V

    return-void
.end method

.method mg_chart_tabselectClicked()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->notice_layout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGMainActivity;->setTabSelect(I)V

    return-void
.end method

.method mg_emulator_tabselect()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->showDownNotice()V

    .line 2
    iget v0, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mgPapaMainFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/join/mgps/activity/o2;

    if-eqz v2, :cond_1

    .line 4
    iget-boolean v2, p0, Lcom/join/mgps/activity/MGMainActivity;->isPapaMainFragmentHasNewData:Z

    if-eqz v2, :cond_0

    .line 5
    check-cast v0, Lcom/join/mgps/activity/o2;

    invoke-virtual {v0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->B0()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/MGMainActivity;->isPapaMainFragmentHasNewData:Z

    .line 7
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const/4 v2, 0x2

    .line 8
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setIsAutoRefresh(I)V

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/papa/sim/statistic/p;->C1(Lcom/papa/sim/statistic/Ext;)V

    goto :goto_0

    .line 10
    :cond_0
    check-cast v0, Lcom/join/mgps/activity/o2;

    invoke-virtual {v0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->g1()V

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MGMainActivity;->setTabSelect(I)V

    return-void
.end method

.method mg_recom_tabselectClicked()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x7

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGMainActivity;->setTabSelect(I)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->showDownNotice()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x8

    const/4 p3, 0x1

    const/16 v0, 0x2710

    if-ne p1, v0, :cond_0

    .line 2
    iput-boolean p3, p0, Lcom/join/mgps/activity/MGMainActivity;->showInstallLayout:Z

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->checkRealName()V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->getHomePopupAd()V

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity;->show10Permiss()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->splash:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x2712

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x2713

    if-ne p1, v0, :cond_3

    const-string p1, "backupData"

    const-string p2, "\u63d0\u793a\u5f39\u7a972222"

    .line 7
    invoke-static {p1, p2}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-boolean p1, p0, Lcom/join/mgps/activity/MGMainActivity;->showInstallNoticeOrappDialog:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/join/mgps/activity/MGMainActivity;->backupNumber:I

    if-lez p1, :cond_2

    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showBackupFinishDialog(I)V

    goto :goto_0

    .line 10
    :cond_2
    iput-boolean p3, p0, Lcom/join/mgps/activity/MGMainActivity;->hasRunFinishforFinishDialog:Z

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->showDownNotice()V

    goto :goto_1

    :cond_3
    const p3, 0x8627

    if-ne p1, p3, :cond_4

    .line 12
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity;->show10Permiss()V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->splash:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onAdVipEvent(Lcom/join/mgps/event/a;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/a;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->mAdVipEvent:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->singleGameShowDialog()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    new-instance v1, Lcom/join/mgps/dto/SingleGameAdBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/join/mgps/dto/SingleGameAdBean;-><init>(IJ)V

    .line 7
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->allJsonStr:Ljava/lang/String;

    .line 10
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity;->toStartGame()V

    return-void

    .line 11
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 12
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v1

    const-class v3, Ljava/util/HashMap;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const-class v5, Lcom/join/mgps/dto/SingleGameAdBean;

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructParametricType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 13
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    new-instance v0, Lcom/join/mgps/dto/SingleGameAdBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v2, v3, v4}, Lcom/join/mgps/dto/SingleGameAdBean;-><init>(IJ)V

    .line 16
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->allJsonStr:Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity;->toStartGame()V

    return-void

    .line 20
    :cond_2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/SingleGameAdBean;

    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/dto/SingleGameAdBean;->getCounts()I

    move-result v3

    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/dto/SingleGameAdBean;->getTime()J

    move-result-wide v4

    .line 23
    sget v0, Lcom/MApplication;->v0:I

    .line 24
    invoke-static {v4, v5}, Lcom/join/mgps/Util/x;->t(J)Z

    move-result v4

    const/4 v5, -0x1

    if-nez v4, :cond_3

    .line 25
    new-instance v0, Lcom/join/mgps/dto/SingleGameAdBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v5, v2, v3}, Lcom/join/mgps/dto/SingleGameAdBean;-><init>(IJ)V

    .line 26
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->allJsonStr:Ljava/lang/String;

    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->mAdVipEvent:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showAdVipMainDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-ne v3, v5, :cond_4

    .line 30
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity;->toStartGame()V

    return-void

    .line 31
    :cond_4
    new-instance v4, Lcom/join/mgps/dto/SingleGameAdBean;

    add-int/2addr v3, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v3, v5, v6}, Lcom/join/mgps/dto/SingleGameAdBean;-><init>(IJ)V

    .line 32
    invoke-interface {v1, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->allJsonStr:Ljava/lang/String;

    if-ne v3, v0, :cond_6

    .line 35
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->accountBean:Lcom/join/mgps/dto/AccountBean;

    .line 36
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getVip_exp_time()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gtz p1, :cond_5

    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->mAdVipEvent:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showAdVipMainDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_5
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity;->toStartGame()V

    goto :goto_0

    .line 40
    :cond_6
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity;->toStartGame()V

    :goto_0
    return-void
.end method

.method public onAddShortcutEvent(Lcom/join/mgps/event/b;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mPapaActivity:Lcom/join/mgps/activity/w1;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/join/mgps/activity/w1;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/event/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/w1;->K0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onArenaResponse(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->handleFailure(Lapp/mgsim/arena/ArenaResponse;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 2
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/p;->G1(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->firstShowUserPermiss()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mainPageShow"

    .line 4
    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->full(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->lastInstallApp()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 3
    sput-boolean p1, Lcom/MApplication;->y0:Z

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->platform()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p1

    const-string v1, "wufun"

    invoke-virtual {p1, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 6
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/join/mgps/activity/MGMainActivity;->hasNet:Z

    const-string p1, "hostPlatform"

    .line 7
    invoke-static {p0, p1, v1}, Lcom/join/mgps/mod/utils/PluginConfig;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "hostFlavor"

    const-string v1, "wufunNormal"

    .line 8
    invoke-static {p0, p1, v1}, Lcom/join/mgps/mod/utils/PluginConfig;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/join/android/app/mgsim/wufun/b;->n:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hostTargetVersion"

    invoke-static {p0, v0, p1}, Lcom/join/mgps/mod/utils/PluginConfig;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->handleVideoAdWatchLogRecord()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/activity/MGMainActivity;->activityHasDes:Z

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/papa/sim/statistic/p;->C2(ILjava/lang/String;)V

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/BaseAppCompatActivity;->isBackHome:Z

    if-nez v1, :cond_2

    .line 4
    iget-boolean v1, p0, Lcom/join/mgps/activity/MGMainActivity;->isMessageReceiverRegisted:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->mMessageReceiver:Lcom/join/mgps/activity/MGMainActivity$MessageReceiver;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/join/mgps/activity/MGMainActivity;->isMessageReceiverRegisted:Z

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->receiver:Lcom/join/mgps/activity/MGMainActivity$n0;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->mAdReceived:Lcom/join/mgps/activity/MGMainActivity$m0;

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {p0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
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
    sput-boolean v0, Lcom/MApplication;->p:Z

    .line 13
    iput-boolean v0, p0, Lcom/join/mgps/activity/MGMainActivity;->isDestroyed:Z

    .line 14
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    .line 15
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->Z()V

    .line 16
    invoke-static {}, Lcom/join/android/app/component/video/e;->d()V

    .line 17
    invoke-super {p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->onDestroy()V

    return-void
.end method

.method public onDownloadRuntimeEvent(Lcom/join/mgps/event/j;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/join/mgps/activity/MGMainActivity;->lastcheckDownService:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/activity/MGMainActivity;->lastcheckDownService:J

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/php25/PDownload/d;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->a3(Landroid/content/Context;)V

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->onDownloadRuntimeEvent(Lcom/join/mgps/event/j;)V

    return-void
.end method

.method public onDownloadRuntimeEvent(Lcom/join/mgps/event/p;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameOneDialog:Lcom/join/android/app/common/dialog/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 8
    iput-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameOneDialog:Lcom/join/android/app/common/dialog/f;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameTwoDialog:Lcom/join/android/app/common/dialog/l;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 11
    iput-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameTwoDialog:Lcom/join/android/app/common/dialog/l;

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameThreeDialog:Lcom/join/android/app/common/dialog/j;

    if-eqz v0, :cond_2

    .line 13
    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :catch_0
    iput-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameThreeDialog:Lcom/join/android/app/common/dialog/j;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/event/p;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->sanLocalGameIv(I)V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->updateWaterProgress()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGMainActivity;->updateStartGameTable(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/4 v3, 0x3

    if-eq p1, v3, :cond_7

    const/4 v2, 0x5

    if-eq p1, v2, :cond_5

    const/4 v4, 0x6

    if-eq p1, v4, :cond_4

    const/4 v4, 0x7

    if-eq p1, v4, :cond_3

    if-eq p1, v1, :cond_2

    const/16 v3, 0x30

    if-eq p1, v3, :cond_5

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x9

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/MGMainActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_1

    .line 7
    :pswitch_1
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/MGMainActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_1

    :pswitch_2
    if-nez v0, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-virtual {p0, v0, v4}, Lcom/join/mgps/activity/MGMainActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x4

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/MGMainActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {v0, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 11
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/MGMainActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {p0, v0, v4}, Lcom/join/mgps/activity/MGMainActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_1

    .line 13
    :cond_5
    :pswitch_3
    iget-boolean p1, p0, Lcom/join/mgps/activity/MGMainActivity;->isFirstCommendVersion:Z

    if-eqz p1, :cond_6

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->showDownNotice()V

    .line 15
    :cond_6
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/MGMainActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_1

    .line 16
    :cond_7
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/MGMainActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_1

    :cond_8
    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/MGMainActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onEventMainThread(Lcom/join/mgps/event/n;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->getRedPointData()V

    return-void
.end method

.method public onFavoriteChanged(IZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/BaseAppCompatActivity;->onFavoriteChanged(IZ)V

    return-void
.end method

.method public onFriendEvent(Lcom/join/mgps/event/m;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/event/m;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 p1, 0x0

    .line 48
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result p1

    .line 50
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/wufan/friend/chat/c;->L(ILjava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/event/m;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const-string p1, "\u5df2\u53d1\u9001\u5bf9\u6218\u9080\u8bf7\uff01"

    .line 53
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/event/m;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 55
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->startGameRoom(Lcom/join/mgps/event/m;)V

    goto :goto_0

    .line 56
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/event/m;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 57
    invoke-virtual {p1}, Lcom/join/mgps/event/m;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->reject(I)V

    goto :goto_0

    .line 58
    :cond_5
    invoke-virtual {p1}, Lcom/join/mgps/event/m;->a()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 59
    invoke-virtual {p1}, Lcom/join/mgps/event/m;->c()Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->checkGameIsInstall(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x2714

    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/MGMainActivity;->startDownloadActivity(Ljava/lang/String;I)V

    goto :goto_0

    .line 62
    :cond_6
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wufan/friend/chat/c;->O()V

    :cond_7
    :goto_0
    return-void
.end method

.method public onFriendEvent(Lcom/wufan/friend/chat/protocol/w1;)V
    .locals 9
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->y()I

    move-result v0

    const-string v1, "state"

    const-string v2, "com.join.android.app.mgsim.wufun.broadcast.onOnlineState"

    const-string v3, ""

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->F()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    const-string v6, "channel"

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/x1;->x2()Lcom/wufan/friend/chat/protocol/v0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/x1;->x2()Lcom/wufan/friend/chat/protocol/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/v0;->C0()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u767b\u5f55\u6210\u529f\uff01"

    .line 4
    filled-new-array {v6, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/wufan/friend/chat/c;->T(Z)V

    .line 6
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/wufan/friend/chat/c;->U(I)V

    goto/16 :goto_0

    :cond_1
    new-array v0, v4, [Ljava/lang/String;

    aput-object v6, v0, v7

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wufan/friend/chat/protocol/x1;->x2()Lcom/wufan/friend/chat/protocol/v0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wufan/friend/chat/protocol/v0;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->handler:Landroid/os/Handler;

    sget-object v6, Lcom/join/mgps/activity/x0;->a:Lcom/join/mgps/activity/x0;

    const-wide/16 v7, 0x2710

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->F()I

    move-result v0

    const/4 v6, 0x5

    if-ne v0, v6, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/x1;->getNotification()Lcom/wufan/friend/chat/protocol/y0;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/x1;->getNotification()Lcom/wufan/friend/chat/protocol/y0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/y0;->k2()Lcom/wufan/friend/chat/protocol/x;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/x1;->getNotification()Lcom/wufan/friend/chat/protocol/y0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/y0;->k2()Lcom/wufan/friend/chat/protocol/x;

    move-result-object v0

    .line 14
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/x;->g()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/wufan/friend/chat/protocol/a;->d()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v7

    invoke-virtual {v7}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 15
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/x;->getStateValue()I

    move-result v7

    invoke-virtual {v6, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17
    invoke-virtual {p0, v6}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 18
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v6

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/x;->getStateValue()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/wufan/friend/chat/c;->W(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->A1()I

    move-result v0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_4

    .line 21
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->M()V

    goto/16 :goto_1

    .line 22
    :cond_4
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->A1()I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 23
    :try_start_1
    new-instance v0, Lcom/join/mgps/dto/FriendInviteBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/FriendInviteBean;-><init>()V

    .line 24
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/x1;->getNotification()Lcom/wufan/friend/chat/protocol/y0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/y0;->g1()Lcom/wufan/friend/chat/protocol/g0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendInviteBean;->set(Lcom/wufan/friend/chat/protocol/g0;)V

    .line 25
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendInviteBean;->getAccountId()I

    move-result v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    if-ne v2, v1, :cond_7

    .line 27
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wufan/friend/chat/c;->R(Lcom/join/mgps/dto/FriendInviteBean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 29
    :cond_5
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->A1()I

    move-result v0

    const/16 v5, 0xa

    if-ne v0, v5, :cond_6

    .line 30
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 31
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/x1;->getNotification()Lcom/wufan/friend/chat/protocol/y0;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 32
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/x1;->getNotification()Lcom/wufan/friend/chat/protocol/y0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/y0;->K1()Lcom/wufan/friend/chat/protocol/q1;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 33
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/x1;->getNotification()Lcom/wufan/friend/chat/protocol/y0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/y0;->K1()Lcom/wufan/friend/chat/protocol/q1;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/q1;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGMainActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 35
    :cond_6
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->A1()I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 36
    :try_start_2
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/x1;->getNotification()Lcom/wufan/friend/chat/protocol/y0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/y0;->k2()Lcom/wufan/friend/chat/protocol/x;

    move-result-object v0

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/x;->g()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wufan/friend/chat/protocol/a;->d()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 38
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/x;->getStateValue()I

    move-result v2

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 41
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/x;->getStateValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/wufan/friend/chat/c;->W(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 44
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/x1;->J0()Lcom/wufan/friend/chat/protocol/k;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 45
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/x1;->J0()Lcom/wufan/friend/chat/protocol/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/k;->F0()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 46
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/x1;->J0()Lcom/wufan/friend/chat/protocol/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/k;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->toast(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public onFriendInviteEvent(Lcom/join/mgps/dto/FriendInviteBean;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    invoke-static {p0}, Lcom/join/android/app/common/utils/j;->G(Landroid/content/Context;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/join/mgps/activity/w0;

    invoke-direct {v2, p0, v0, p1}, Lcom/join/mgps/activity/w0;-><init>(Lcom/join/mgps/activity/MGMainActivity;ZLcom/join/mgps/dto/FriendInviteBean;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "DiscoveryFragment"

    .line 2
    invoke-static {p0, v0}, Lcom/join/android/app/component/video/a;->c0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->videoStrategyPop:Lcom/papa91/VideoStrategyPop;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget v0, p0, Lcom/join/mgps/activity/MGMainActivity;->isOpenExit:I

    if-ne v0, v1, :cond_4

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v2, p0, Lcom/join/mgps/activity/MGMainActivity;->exitTime:J

    sub-long/2addr p1, v2

    const-wide/16 v2, 0x7d0

    const/4 v0, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u518d\u6309\u4e00\u6b21\u9000\u51fa\u7a0b\u5e8f"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/join/mgps/activity/MGMainActivity;->exitTime:J

    goto :goto_1

    .line 8
    :cond_2
    sput-boolean v1, Lcom/MApplication;->y0:Z

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/papa/sim/statistic/p;->C2(ILjava/lang/String;)V

    .line 10
    :try_start_0
    iget-boolean p1, p0, Lcom/join/mgps/activity/MGMainActivity;->isMessageReceiverRegisted:Z

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->mMessageReceiver:Lcom/join/mgps/activity/MGMainActivity$MessageReceiver;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/activity/MGMainActivity;->isMessageReceiverRegisted:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->finish()V

    .line 15
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.join.android.app.mgsim.wufun.broadcast.appfinish"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    return v1

    .line 17
    :cond_4
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNetworkChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onNetworkChanged(I)V

    .line 2
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/join/mgps/activity/MGMainActivity;->hasNet:Z

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mainPos:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iput v0, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    :cond_1
    const-string v0, "classiFy"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/MGMainActivity;->classiFy:I

    const-string v0, "classifyPrimaryIndex"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/MGMainActivity;->classifyPrimaryIndex:I

    const-string v0, "intentDateBean"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/Util/IntentDateBean;

    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->setJPushJump()V

    .line 9
    iget p1, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->setTabSelect(I)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/join/mgps/activity/MGMainActivity;->isForeground:Z

    .line 2
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->firstShowUserPermiss()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->onPause()V

    return-void
.end method

.method public onRecivedIntentEvent(Lcom/join/kotlin/ui/findgame/data/IntentClassfyEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/data/IntentClassfyEvent;->getType()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/activity/MGMainActivity;->currTabNumber:I

    const/4 p1, 0x7

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->setTabSelect(I)V

    return-void
.end method

.method protected onResume()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyFragmentActivity1;->onResume()V

    .line 2
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->firstShowUserPermiss()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->hasNewFinishedGameImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isNewFinishedGame()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->hasNewFinishedGameImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->hasNewFinishedGameImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->accountBean:Lcom/join/mgps/dto/AccountBean;

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getVip_exp_time()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-lez v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mAdVipEvent:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_2

    .line 11
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity;->toStartGame()V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->adVipMainDialog:Lcom/join/mgps/dialog/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->adVipMainDialog:Lcom/join/mgps/dialog/c;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->adVipMainDialog:Lcom/join/mgps/dialog/c;

    .line 15
    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/join/mgps/activity/MGMainActivity$h;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/MGMainActivity$h;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->touristLogin()V

    const/4 v0, 0x1

    .line 17
    sput-boolean v0, Lcom/join/mgps/activity/MGMainActivity;->isForeground:Z

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->onresumData()V

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MGMainActivityonResume finish time ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->showDownNotice()V

    .line 21
    sget-object v2, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    if-eqz v2, :cond_4

    .line 22
    invoke-virtual {v2}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_praise_surplus_number()I

    move-result v2

    sget-object v3, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_surplus_number()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getNotice_surplus_number()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getPraise_surplus_number()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getReplay_surplus_number()I

    move-result v3

    add-int/2addr v2, v3

    sput v2, Lcom/MApplication;->H:I

    if-nez v2, :cond_4

    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->hideRedPoint()V

    .line 24
    :cond_4
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/wufan/friend/chat/c;->f(Landroid/app/Activity;)V

    .line 25
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/join/mgps/activity/f1;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/f1;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    iget-boolean v2, p0, Lcom/join/mgps/activity/MGMainActivity;->hasPermiss:Z

    if-nez v2, :cond_6

    .line 27
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    iput-boolean v1, p0, Lcom/join/mgps/activity/MGMainActivity;->hasPermiss:Z

    if-eqz v1, :cond_6

    .line 28
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MGMainActivity;->startBackups(Z)V

    .line 29
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->startPlayVideo()V

    .line 30
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->pullUpExtHelper()V

    return-void
.end method

.method public onToastEvent(Lcom/join/mgps/event/q;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/q;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/event/q;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showToast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method onresumData()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
        delay = 0x3e8L
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/p;->R1(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->checkDownlodingNumber()V

    .line 3
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->firstShowUserPermiss()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    const-string v0, "ym_test156"

    .line 5
    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->updateAndroidApp()V
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

.method preLoad(Lcom/join/mgps/dto/PopupAdBean;)V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getBig_pic()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getBig_pic()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getBig_pic()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getBig_pic()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/RecomDatabean;

    .line 5
    invoke-virtual {v4}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 6
    invoke-virtual {v4}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    invoke-virtual {v4}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/MGMainActivity;->isHomePopupAdLocalCached(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    iget-object v5, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/join/mgps/Util/u;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-static {v4, p0, v5, v0}, Lcom/join/mgps/Util/k0;->f(Ljava/lang/String;Landroid/content/Context;Ljava/io/File;Lcom/join/mgps/Util/k0$f;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getMore()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getMore()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getMore()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/RecomDatabean;

    if-eqz p1, :cond_4

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->isHomePopupAdLocalCached(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 17
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/u;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {p1, p0, v1, v0}, Lcom/join/mgps/Util/k0;->f(Ljava/lang/String;Landroid/content/Context;Ljava/io/File;Lcom/join/mgps/Util/k0$f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 18
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_3
    return-void
.end method

.method preLoadBootImage(Lcom/join/mgps/dto/BootPageData;)V
    .locals 7

    if-eqz p1, :cond_3

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->insatllAppFirstData()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/BootPageData;->getGame_setup_boot()Lcom/join/mgps/dto/BootPageItem;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/BootPageData;->getPerformance_boot()Lcom/join/mgps/dto/BootPageItem;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/BootPageItem;->getPic()[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 6
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/MGMainActivity;->isHomePopupAdLocalCached(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v6, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/join/mgps/Util/u;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    invoke-static {v5, p0, v6, v1}, Lcom/join/mgps/Util/k0;->f(Ljava/lang/String;Landroid/content/Context;Ljava/io/File;Lcom/join/mgps/Util/k0$f;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/BootPageItem;->getPic()[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    :goto_2
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 9
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/MGMainActivity;->isHomePopupAdLocalCached(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    .line 10
    :cond_2
    iget-object v4, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/join/mgps/Util/u;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-static {v3, p0, v4, v1}, Lcom/join/mgps/Util/k0;->f(Ljava/lang/String;Landroid/content/Context;Ljava/io/File;Lcom/join/mgps/Util/k0$f;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method preloadingAD()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getPreloadingADRequestBean()Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->recommendClient:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->v1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getCode()I

    move-result v1

    const/16 v2, 0x258

    if-ne v1, v2, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGMainActivity;->setADCacheData(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    return-void
.end method

.method pullUpExtHelper()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    return-void
.end method

.method public raseVipToMgsim(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/join/mgps/rpc/g;->k:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/member/vip_view/welfare/third_other_ad"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 3
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.join.mgps.activity.ShareWebActivity_"

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PAPA_EMU_INTENT_EXTRA_ACTION_FROM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "gameId"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "url"

    .line 9
    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.join.mgps.papa.share_webview_raiseVip"

    .line 10
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadTasks:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadTasksMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 8
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lg1/f;->N(Lcom/join/mgps/enums/Dtype;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isNewFinishedGame()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->hasNewFinishedGameImage:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->checkDownlodingNumber()V

    :cond_3
    return-void
.end method

.method receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/join/mgps/Util/t1;->e(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadTasks:Ljava/util/List;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->D3(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadTasksMap:Ljava/util/Map;

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 7
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadTasks:Ljava/util/List;

    if-eqz p2, :cond_2

    .line 8
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadTasksMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, ""

    const-string p2, "size"

    .line 10
    filled-new-array {p1, p2, p1, p2}, [Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainActivity;->scroll_text_layout:Lcom/join/mgps/customview/ScrollTextViewLayout;

    if-eqz p2, :cond_3

    .line 12
    invoke-virtual {p2, p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->setTextArray([Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->scroll_text_layout:Lcom/join/mgps/customview/ScrollTextViewLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/ScrollTextViewLayout;->setIsStop(Z)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->scroll_text_layout:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-virtual {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->n()V

    .line 15
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->checkDownlodingNumber()V

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    if-eq p2, v0, :cond_7

    const/4 v0, 0x7

    if-ne p2, v0, :cond_5

    goto :goto_1

    .line 16
    :cond_5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_6

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    const/4 p2, 0x6

    if-ne p1, p2, :cond_8

    .line 17
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->checkDownlodingNumber()V

    goto :goto_2

    .line 18
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->checkDownlodingNumber()V

    :cond_8
    :goto_2
    return-void
.end method

.method receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadTasksMap:Ljava/util/Map;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadTasks:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadTasks:Ljava/util/List;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadTasksMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadTasksMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 8
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_ver()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->checkDownlodingNumber()V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isNewFinishedGame()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->hasNewFinishedGameImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method receivedInitAdVideoConfig(Landroid/content/Intent;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.intent.initAdVideoConfig"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->initAdVideoConfig()V

    return-void
.end method

.method recivedShowToast(Landroid/content/Intent;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.intent.showtoast"
        }
    .end annotation

    const-string v0, "message"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method recveidDownLiveRes(Landroid/content/Intent;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.startDownloadLiveRes"
        }
    .end annotation

    const-string v0, "downLoadUrl"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "liveResLog"

    const-string v1, "recveidDownLiveRes"

    .line 2
    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/activity/MGMainActivity;->hasNewDownload:Z

    :cond_0
    return-void
.end method

.method recveidcoinfloat(Landroid/content/Intent;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.coinflote"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->coinFloatad:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    const-string v1, "coinFloatData"

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/RecomDatabean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const/16 p1, 0x8

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModleBean;->getAd_switch()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->clickFloatViewTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/c;->g(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->coinFloatad:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->coinFloatad:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->coinFloatad:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/facebook/drawee/drawable/r$c;->a:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {p1, v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->coinFloatad:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->coinFloatad:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v1, Lcom/join/mgps/activity/MGMainActivity$j;

    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/MGMainActivity$j;-><init>(Lcom/join/mgps/activity/MGMainActivity;Lcom/join/mgps/dto/RecomDatabean;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->coinFloatad:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->coinFloatad:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method refreshTabIcon()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/MGMainActivity;->isPapaMainFragmentHasNewData:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_emulator_image:Landroid/widget/ImageView;

    const v1, 0x7f0807f2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_emulator_text:Landroid/widget/TextView;

    const-string v1, "\u5237\u65b0\u63a8\u8350"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->unreadMessageBadge:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->animation2:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_emulator_image:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "rotation"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->animation2:Landroid/animation/ObjectAnimator;

    .line 7
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->animation2:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->animation2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_emulator_image:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v1

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_emulator_image:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    div-int/2addr v2, v1

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 12
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/join/mgps/activity/MGMainActivity;->LastOpHomePageButtonTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    .line 13
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setIsAutoRefresh(I)V

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/papa/sim/statistic/p;->C1(Lcom/papa/sim/statistic/Ext;)V

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/activity/MGMainActivity;->LastOpHomePageButtonTime:J

    goto :goto_0

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->animation2:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_emulator_image:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 20
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_emulator_image:Landroid/widget/ImageView;

    const v1, 0x7f08080e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_emulator_text:Landroid/widget/TextView;

    const-string v1, "\u9996\u9875"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->unreadMessageBadge:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x44340000    # 720.0f
    .end array-data
.end method

.method public registerMessageReceiver()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity$MessageReceiver;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity$MessageReceiver;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mMessageReceiver:Lcom/join/mgps/activity/MGMainActivity$MessageReceiver;

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/16 v1, 0x3e8

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v1, "com.example.jpushdemo.MESSAGE_RECEIVED_ACTION"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->mMessageReceiver:Lcom/join/mgps/activity/MGMainActivity$MessageReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/MGMainActivity;->isMessageReceiverRegisted:Z

    return-void
.end method

.method reject(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/ta/utdid2/android/utils/f;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "uid"

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "token"

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "friendId"

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->friendClient:Lcom/join/mgps/rpc/i;

    invoke-interface {p1, v0}, Lcom/join/mgps/rpc/i;->j(Ljava/util/Map;)Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method resetSelfSupportPrmopt()V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/j;->y()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->versionCode()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->noPromptDownload()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->versionCode()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method rewadCopper()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/Util/RequestBeanUtil;->vipMessage(I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->rpcClient:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->i0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/RewardBean;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGMainActivity;->toastData(Lcom/join/mgps/dto/RewardBean;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->papa_user_round:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method sanLocalGameIv(I)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-virtual {v0}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->curActivty:Landroid/app/Activity;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->snkGameList:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_3

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->curActivty:Landroid/app/Activity;

    if-nez v0, :cond_1

    instance-of v0, v0, Landroidx/fragment/app/FragmentActivity;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameOneDialog:Lcom/join/android/app/common/dialog/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    .line 5
    :try_start_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 6
    :try_start_2
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameOneDialog:Lcom/join/android/app/common/dialog/f;

    .line 7
    :cond_2
    new-instance v0, Lcom/join/android/app/common/dialog/f;

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->curActivty:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/join/android/app/common/dialog/f;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameOneDialog:Lcom/join/android/app/common/dialog/f;

    .line 8
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameOneDialog:Lcom/join/android/app/common/dialog/f;

    new-instance v0, Lcom/join/mgps/activity/MGMainActivity$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity$l;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    invoke-virtual {p1, v0}, Lcom/join/android/app/common/dialog/f;->f(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 10
    :cond_3
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/g0;->k(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->listZip:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->listZip:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/MGMainActivity;->initCheckSNKGame(Ljava/util/List;I)V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/join/mgps/activity/MGMainActivity;->isFirstCheck:Z

    .line 15
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->getSNKGameInfo(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method savePurchasedList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AppBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v0

    invoke-virtual {v0}, Lg1/b;->a()I

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AppBean;

    .line 3
    new-instance v1, Lcom/join/mgps/db/tables/PurchasedListTable;

    invoke-direct {v1, v0}, Lcom/join/mgps/db/tables/PurchasedListTable;-><init>(Lcom/join/mgps/dto/AppBean;)V

    .line 4
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v0

    invoke-virtual {v0, v1}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->e2(Landroid/content/Context;)V

    return-void
.end method

.method saveUUID()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".papakey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 7
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 8
    invoke-static {v1, v2, v0}, Lcom/join/mgps/Util/f0;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/pref/h;->w0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 11
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/pref/h;->H()Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-static {v4}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 13
    sget-object v4, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-static {v4, v0}, Lcom/join/mgps/Util/f0;->x(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 15
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 16
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 17
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 18
    invoke-static {v1, v2, v0}, Lcom/join/mgps/Util/f0;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/pref/h;->w0(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 20
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 21
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/pref/h;->w0(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method selectTableDelay()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x320L
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGMainActivity;->setTabSelect(I)V

    return-void
.end method

.method sendRegister(Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->sendRigester(Ljava/lang/String;)V

    return-void
.end method

.method sendRigester(Ljava/lang/String;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/RegisterRequestBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/RegisterRequestBean;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/RegisterRequestBean;->setReg_id(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/dto/RegisterRequestBean;->setTimes(J)V

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/RequestBeanUtil;->sendRegisterId(Lcom/join/mgps/dto/RegisterRequestBean;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->recommendClient:Lcom/join/mgps/rpc/d;

    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/d;->J1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CommentSendMessageResultBean;

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentSendMessageResultBean;->getVal()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentSendMessageResultBean;->getVal()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentSendMessageResultBean;->getVal()Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->needsendRigeister()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method sendVideoAdWatchLog(II)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/db/tables/VideoWatchLogTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/VideoWatchLogTable;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/VideoWatchLogTable;->setSceneType(I)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/join/mgps/db/tables/VideoWatchLogTable;->setSdkType(I)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/VideoWatchLogTable;->setUserId(I)V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/MGMainActivity;->videoAdWatchLog(Lcom/join/mgps/db/tables/VideoWatchLogTable;Z)V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->handleVideoAdWatchLogRecord()V

    return-void
.end method

.method serverConnectionException()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/manager/a;->h()Lcom/join/android/app/common/manager/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->netConnectException:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/join/android/app/common/manager/a;->j(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method setADCacheData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameHeadAd;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameHeadAd;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameHeadAd;->getMain()Lcom/join/mgps/dto/GameHeadAd$GameMain;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameHeadAd;->getSub()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameHeadAd;->getSub()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    sput-object p1, Lcom/MApplication;->p0:Lcom/join/mgps/dto/GameHeadAd;

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameHeadAd;->getMain()Lcom/join/mgps/dto/GameHeadAd$GameMain;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameHeadAd$GameMain;->getPic_remote()Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iamgeUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-direct {p0, p1, v0}, Lcom/join/mgps/activity/MGMainActivity;->saveImageFromUrl(Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public setClassifyPrimaryIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/MGMainActivity;->classifyPrimaryIndex:I

    return-void
.end method

.method setDefutDownloadPath()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/u;->e(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/Util/u;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/pref/h;->V(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity;->show10Permiss()V

    return-void
.end method

.method public setHomeTabImage(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/MGMainActivity;->showMonkey:Z

    if-eqz p1, :cond_0

    const p1, 0x7f01003e

    .line 2
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->home_tab_monkey_image:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    const p1, 0x7f01003d

    .line 4
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->home_tab_huojian_image:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f01003b

    .line 6
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->home_tab_monkey_image:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    const p1, 0x7f01003c

    .line 8
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->home_tab_huojian_image:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method setJPushJump()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x4

    const-string v4, "\u6e38\u620f\u672a\u4e0b\u8f7d,\u8bf7\u5148\u4e0b\u8f7d\u6e38\u620f."

    const-string v5, "gameId"

    const-string v6, "com.join.downloadbygameid.action.broadcast"

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 3
    :pswitch_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {p0, v1}, Lcom/join/mgps/Util/UtilsMy;->d0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_3

    .line 6
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 7
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 10
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 11
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 13
    invoke-static {p0, v1}, Lcom/join/mgps/Util/UtilsMy;->d0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_3

    .line 14
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 15
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 18
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 19
    :pswitch_2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "  checkupdate"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "info"

    invoke-static {v2, v0}, Lcom/join/mgps/Util/t0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {p0, v1}, Lcom/join/mgps/Util/UtilsMy;->d0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_3

    .line 23
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 24
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 27
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 28
    :pswitch_3
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    :goto_0
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 31
    invoke-virtual {v0, v7}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPid(I)V

    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/join/mgps/Util/i0;->w0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;Lcom/join/mgps/dto/ExtBean;)V

    goto/16 :goto_3

    .line 33
    :pswitch_4
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    :goto_1
    :try_start_2
    new-instance v0, Lcom/join/mgps/dto/ForumBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean;-><init>()V

    .line 36
    invoke-virtual {v0, v7}, Lcom/join/mgps/dto/ForumBean;->setFid(I)V

    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/join/mgps/Util/i0;->s0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean;Lcom/join/mgps/dto/ExtBean;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 39
    :pswitch_5
    invoke-static {p0}, Lcom/join/mgps/activity/GameInformationActivityV2_;->M1(Landroid/content/Context;)Lcom/join/mgps/activity/GameInformationActivityV2_$y;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/GameInformationActivityV2_$y;->c(Ljava/lang/String;)Lcom/join/mgps/activity/GameInformationActivityV2_$y;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/GameInformationActivityV2_$y;->b(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/GameInformationActivityV2_$y;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_3

    .line 40
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10800000

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 44
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u9519\u8bef"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 45
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 47
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 48
    :pswitch_7
    invoke-static {p0}, Lcom/join/mgps/activity/ShareWebActivity_;->O2(Landroid/content/Context;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ShareWebActivity_$f0;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_3

    .line 49
    :pswitch_8
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getTpl_type()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_9
    goto/16 :goto_3

    .line 50
    :pswitch_a
    invoke-static {p0}, Lcom/join/mgps/activity/MGInformationActivity_;->T0(Landroid/content/Context;)Lcom/join/mgps/activity/MGInformationActivity_$l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_3

    .line 51
    :pswitch_b
    invoke-static {p0}, Lcom/join/mgps/activity/GameDiscoverActivity_;->P0(Landroid/content/Context;)Lcom/join/mgps/activity/GameDiscoverActivity_$h;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_3

    .line 52
    :pswitch_c
    iput v1, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    goto/16 :goto_3

    .line 53
    :pswitch_d
    iput v2, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    goto/16 :goto_3

    .line 54
    :pswitch_e
    iput v3, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    goto/16 :goto_3

    :pswitch_f
    const/4 v0, 0x1

    .line 55
    :try_start_3
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 56
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    const/4 v1, 0x1

    :goto_2
    if-ne v1, v0, :cond_6

    .line 58
    invoke-static {p0}, Lcom/join/mgps/activity/ClassifyAndRankActivity_;->H0(Landroid/content/Context;)Lcom/join/mgps/activity/ClassifyAndRankActivity_$f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ClassifyAndRankActivity_$f;->b(I)Lcom/join/mgps/activity/ClassifyAndRankActivity_$f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_3

    .line 59
    :cond_6
    invoke-static {p0}, Lcom/join/mgps/activity/ClassifyGameActivity_;->e1(Landroid/content/Context;)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/join/mgps/activity/ClassifyGameActivity_$n;->a(I)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    move-result-object v0

    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->A1(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/ClassifyGameActivity_$n;->b(I)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    move-result-object v0

    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->B1(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ClassifyGameActivity_$n;->c(Ljava/lang/String;)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_3

    :pswitch_10
    const/4 v0, 0x7

    .line 60
    iput v0, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    goto :goto_3

    .line 61
    :pswitch_11
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getTpl_type()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getTpl_type()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 62
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getTpl_type()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_9

    if-eq v0, v2, :cond_8

    if-eq v0, v3, :cond_7

    goto :goto_3

    .line 63
    :cond_7
    invoke-static {p0}, Lcom/join/mgps/activity/CollectionModuleFourActivity_;->c1(Landroid/content/Context;)Lcom/join/mgps/activity/CollectionModuleFourActivity_$s;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CollectionModuleFourActivity_$s;->a(Ljava/lang/String;)Lcom/join/mgps/activity/CollectionModuleFourActivity_$s;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_3

    .line 64
    :cond_8
    invoke-static {p0}, Lcom/join/mgps/activity/CollectionModuleThreeActivity_;->N0(Landroid/content/Context;)Lcom/join/mgps/activity/CollectionModuleThreeActivity_$h;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CollectionModuleThreeActivity_$h;->a(Ljava/lang/String;)Lcom/join/mgps/activity/CollectionModuleThreeActivity_$h;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_3

    .line 65
    :cond_9
    invoke-static {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_;->e1(Landroid/content/Context;)Lcom/join/mgps/activity/CollectionModuleTwoActivity_$s;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$s;->a(Ljava/lang/String;)Lcom/join/mgps/activity/CollectionModuleTwoActivity_$s;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_3

    .line 66
    :pswitch_12
    :try_start_4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_9
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public setPapaMainFragmentLastPosition(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mgPapaMainFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/join/mgps/activity/o2;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/join/mgps/activity/o2;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->J1(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method setSNKGameData(Lcom/join/mgps/dto/SNKGameInfoBean;)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/SNKGameInfoBean;->getScanning_md5()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->snkGameList:Ljava/util/List;

    .line 2
    iget-boolean p1, p0, Lcom/join/mgps/activity/MGMainActivity;->isFirstCheck:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/activity/MGMainActivity;->isFirstCheck:Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    const-string v1, "downloadplato"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "plato"

    const-wide/16 v1, 0x0

    .line 5
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-lez p1, :cond_0

    .line 6
    sget-object p1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/join/mgps/Util/g0;->k(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/MGMainActivity;->initCheckSNKGame(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public setSnkGameList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->snkGameList:Ljava/util/List;

    return-void
.end method

.method public setTabSelect(I)V
    .locals 7

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity;->clearSelection()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/MGMainActivity;->hideFragments(Landroidx/fragment/app/FragmentTransaction;)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MGMainActivity;->updateStartGameTable(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->discoverNormal:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f090a50

    const/16 v3, 0x8

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_5

    .line 8
    :pswitch_0
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v4

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/papa/sim/statistic/p;->d2(Ljava/lang/String;)V

    .line 9
    iget-object v4, p0, Lcom/join/mgps/activity/MGMainActivity;->choiceFragment:Lcom/join/kotlin/ui/findgame/FindGameMainFragment;

    if-nez v4, :cond_1

    .line 10
    new-instance v4, Lcom/join/kotlin/ui/findgame/FindGameMainFragment;

    invoke-direct {v4}, Lcom/join/kotlin/ui/findgame/FindGameMainFragment;-><init>()V

    iput-object v4, p0, Lcom/join/mgps/activity/MGMainActivity;->choiceFragment:Lcom/join/kotlin/ui/findgame/FindGameMainFragment;

    .line 11
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 12
    iget v5, p0, Lcom/join/mgps/activity/MGMainActivity;->currTabNumber:I

    const-string v6, "currTabNumber"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13
    iget-object v5, p0, Lcom/join/mgps/activity/MGMainActivity;->choiceFragment:Lcom/join/kotlin/ui/findgame/FindGameMainFragment;

    invoke-virtual {v5, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 14
    iget-object v4, p0, Lcom/join/mgps/activity/MGMainActivity;->choiceFragment:Lcom/join/kotlin/ui/findgame/FindGameMainFragment;

    invoke-virtual {v0, v1, v4}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 16
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_recom_image:Landroid/widget/ImageView;

    const v4, 0x7f0807d7

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_recom_text:Landroid/widget/TextView;

    sget v4, Lcom/join/mgps/activity/MGMainActivity;->MainYelloColor:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->miniGameBadge:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    .line 19
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->hasShowMiniGameBadge()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 21
    :pswitch_1
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v4

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v5

    const-string v6, "findTab"

    invoke-virtual {v4, v5, v6}, Lcom/papa/sim/statistic/p;->f2(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v4, p0, Lcom/join/mgps/activity/MGMainActivity;->fightFragment:Lcom/join/mgps/fragment/f0;

    if-nez v4, :cond_2

    .line 23
    new-instance v4, Lcom/join/mgps/fragment/f0;

    invoke-direct {v4}, Lcom/join/mgps/fragment/f0;-><init>()V

    iput-object v4, p0, Lcom/join/mgps/activity/MGMainActivity;->fightFragment:Lcom/join/mgps/fragment/f0;

    .line 24
    invoke-virtual {v0, v1, v4}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->discoverNormal:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 26
    :cond_2
    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 27
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->fightImage:Landroid/widget/ImageView;

    const v4, 0x7f0807da

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->fightText:Landroid/widget/TextView;

    sget v4, Lcom/join/mgps/activity/MGMainActivity;->MainYelloColor:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 29
    :pswitch_2
    iget-object v4, p0, Lcom/join/mgps/activity/MGMainActivity;->home_tab_monkey_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 30
    iget-object v4, p0, Lcom/join/mgps/activity/MGMainActivity;->mgPapaMainFragment:Landroidx/fragment/app/Fragment;

    if-nez v4, :cond_3

    .line 31
    new-instance v4, Lcom/join/mgps/activity/o2;

    invoke-direct {v4}, Lcom/join/mgps/activity/o2;-><init>()V

    iput-object v4, p0, Lcom/join/mgps/activity/MGMainActivity;->mgPapaMainFragment:Landroidx/fragment/app/Fragment;

    .line 32
    invoke-virtual {v0, v1, v4}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_2

    .line 33
    :cond_3
    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 34
    :goto_2
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->shortcutGameId:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 35
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v4, Lcom/papa/sim/statistic/ExtFrom;->home:Lcom/papa/sim/statistic/ExtFrom;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/papa/sim/statistic/p;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->refreshTabIcon()V

    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_emulator_text:Landroid/widget/TextView;

    sget v4, Lcom/join/mgps/activity/MGMainActivity;->MainYelloColor:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 38
    :pswitch_3
    iget-object v4, p0, Lcom/join/mgps/activity/MGMainActivity;->mPapaActivity:Lcom/join/mgps/activity/w1;

    if-nez v4, :cond_5

    .line 39
    new-instance v4, Lcom/join/mgps/activity/y1;

    invoke-direct {v4}, Lcom/join/mgps/activity/y1;-><init>()V

    iput-object v4, p0, Lcom/join/mgps/activity/MGMainActivity;->mPapaActivity:Lcom/join/mgps/activity/w1;

    .line 40
    invoke-virtual {v0, v1, v4}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_3

    .line 41
    :cond_5
    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 42
    :goto_3
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v4, Lcom/papa/sim/statistic/Event;->enterMyGameTab:Lcom/papa/sim/statistic/Event;

    new-instance v5, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v5}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v1, v4, v5}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 43
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_chart_text:Landroid/widget/TextView;

    sget v4, Lcom/join/mgps/activity/MGMainActivity;->MainYelloColor:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->mPapaActivity:Lcom/join/mgps/activity/w1;

    invoke-virtual {v1}, Lcom/join/mgps/activity/w1;->X0()V

    goto :goto_5

    .line 45
    :pswitch_4
    iget-object v4, p0, Lcom/join/mgps/activity/MGMainActivity;->userCenterFragment:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    if-nez v4, :cond_6

    .line 46
    new-instance v4, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;

    invoke-direct {v4}, Lcom/join/mgps/activity/login/UsercenterFragmentNew_;-><init>()V

    iput-object v4, p0, Lcom/join/mgps/activity/MGMainActivity;->userCenterFragment:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 47
    invoke-virtual {v0, v1, v4}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_4

    .line 48
    :cond_6
    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 49
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->userCenterFragment:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    invoke-virtual {v1}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->refreshUserCenter()V

    .line 50
    :goto_4
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_category_image:Landroid/widget/ImageView;

    const v4, 0x7f080c5a

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_category_text:Landroid/widget/TextView;

    sget v4, Lcom/join/mgps/activity/MGMainActivity;->MainYelloColor:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->hideRedPoint()V

    .line 53
    :cond_7
    :goto_5
    :try_start_0
    iput p1, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    .line 54
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->biground:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 57
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->biground:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    const/4 v0, 0x3

    if-ne p1, v0, :cond_9

    goto :goto_8

    .line 59
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isNewFinishedGame()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 60
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->hasNewFinishedGameImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 61
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->hasNewFinishedGameImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    :goto_7
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->scroll_text_layout:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-virtual {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->m()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 63
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->scroll_text_layout:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-virtual {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->p()V

    .line 64
    :cond_b
    :goto_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->checkDownlodingNumber()V

    .line 65
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->startPlayVideo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    :goto_9
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->miniGameBadge:Landroid/widget/TextView;

    if-eqz p1, :cond_d

    .line 68
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->hasShowMiniGameBadge()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v2, 0x8

    :cond_c
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_d
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method setwifiStadu()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->getApSSID()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v2

    const-string v3, "12345678"

    invoke-virtual {v2, v0, v3}, Lcom/join/mgps/Util/WifiUtils;->createAPInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/join/mgps/Util/WifiUtils;->createWiFiAP(Landroid/net/wifi/WifiConfiguration;Z)V

    :cond_0
    return-void
.end method

.method showAdM()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/MGMainActivity;->showInstallLayout:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->checkInstallApp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method showAddFriend(I)V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    if-eq v1, p1, :cond_6

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_4

    .line 4
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f1204e2

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mDialog:Landroid/app/Dialog;

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 7
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 9
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c016e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090288

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->close:Landroid/view/View;

    const v1, 0x7f090205

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->button:Landroid/view/View;

    const v1, 0x7f090acd

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->name1:Landroid/widget/TextView;

    const v1, 0x7f090062

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->accountId:Landroid/widget/TextView;

    const v1, 0x7f090126

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->avatar1:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071279

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071266

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const/4 v4, -0x1

    if-nez v0, :cond_2

    const/4 v0, -0x1

    .line 20
    :cond_2
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    if-nez v1, :cond_3

    const/4 v1, -0x1

    .line 21
    :cond_3
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x11

    .line 22
    invoke-virtual {v2, v0}, Landroid/view/Window;->setGravity(I)V

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->close:Landroid/view/View;

    new-instance v1, Lcom/join/mgps/activity/c1;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/c1;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->button:Landroid/view/View;

    new-instance v1, Lcom/join/mgps/activity/d1;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/d1;-><init>(Lcom/join/mgps/activity/MGMainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->getFriendInfo(I)V

    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 27
    :cond_5
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->showInviteCode:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    :cond_6
    :goto_0
    return-void
.end method

.method showBackupFinishDialog(I)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/MGMainActivity;->activityHasDes:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-lez p1, :cond_1

    .line 2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.backup_game_finish"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method showCheckData(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const-string v0, "\u672a\u68c0\u6d4b\u51fa\u6e38\u620f\uff01"

    if-eqz p1, :cond_f

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 5
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 6
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v7, "#0.00"

    invoke-direct {v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 7
    :goto_1
    iget-object v8, p0, Lcom/join/mgps/activity/MGMainActivity;->listTempZip:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 8
    iget-object v8, p0, Lcom/join/mgps/activity/MGMainActivity;->listTempZip:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 9
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    move-result-object v10

    const-string v11, "/"

    .line 11
    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 12
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v11

    long-to-float v11, v11

    const/high16 v12, 0x44800000    # 1024.0f

    div-float/2addr v11, v12

    div-float/2addr v11, v12

    float-to-double v11, v11

    invoke-virtual {v6, v11, v12}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    .line 13
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 14
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getActual_size()J

    move-result-wide v6

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v11, v6, v9

    if-nez v11, :cond_3

    .line 15
    :cond_1
    invoke-interface {v2, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 16
    :cond_4
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameTwoDialog:Lcom/join/android/app/common/dialog/l;

    if-eqz p1, :cond_5

    .line 17
    invoke-virtual {p1, v0}, Lcom/join/android/app/common/dialog/l;->d(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameTwoDialog:Lcom/join/android/app/common/dialog/l;

    invoke-virtual {p1}, Lcom/join/android/app/common/dialog/l;->b()V

    return-void

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameThreeDialog:Lcom/join/android/app/common/dialog/j;

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 20
    :try_start_0
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :catch_0
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameThreeDialog:Lcom/join/android/app/common/dialog/j;

    .line 22
    :cond_6
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 23
    :cond_7
    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->h0(Ljava/util/Map;)Lcom/join/android/app/common/dialog/j;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameThreeDialog:Lcom/join/android/app/common/dialog/j;

    .line 24
    :try_start_1
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->curActivty:Landroid/app/Activity;

    if-eqz p1, :cond_9

    instance-of v1, p1, Lcom/join/mgps/activity/MGMainActivity;

    if-eqz v1, :cond_8

    goto :goto_3

    .line 25
    :cond_8
    instance-of v1, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_a

    .line 26
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    .line 27
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    goto :goto_4

    .line 28
    :cond_9
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    :cond_a
    :goto_4
    if-nez v0, :cond_b

    return-void

    .line 29
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameThreeDialog:Lcom/join/android/app/common/dialog/j;

    invoke-virtual {v0, v3, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 30
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    nop

    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->curActivty:Landroid/app/Activity;

    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_c

    .line 32
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    .line 33
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameThreeDialog:Lcom/join/android/app/common/dialog/j;

    invoke-virtual {p1, v3, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 35
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 36
    :cond_c
    :goto_5
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->firstShowUserPermiss()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_d

    .line 37
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    const-string v0, "onComparePage"

    invoke-static {p1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    :cond_d
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameTwoDialog:Lcom/join/android/app/common/dialog/l;

    if-eqz p1, :cond_e

    .line 39
    :try_start_2
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_e
    return-void

    .line 40
    :cond_f
    :goto_6
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameTwoDialog:Lcom/join/android/app/common/dialog/l;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 41
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameTwoDialog:Lcom/join/android/app/common/dialog/l;

    invoke-virtual {p1, v0}, Lcom/join/android/app/common/dialog/l;->d(Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->localGameTwoDialog:Lcom/join/android/app/common/dialog/l;

    invoke-virtual {p1}, Lcom/join/android/app/common/dialog/l;->b()V

    :cond_10
    return-void
.end method

.method showDownNotice()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x5dcL
    .end annotation

    return-void
.end method

.method showDownloadVideoAd(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastShowTOUTIAOAd()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedupCfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-class v2, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadSpeedupCfgBean:Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->getPlay_cfg()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadSpeedupCfgBean:Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->getPlay_cfg()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadSpeedupCfgBean:Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->getPlay_cfg()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/PlayCfgBean;

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/PlayCfgBean;->getProbability()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/join/mgps/ad/g;->b(Ljava/util/List;)I

    move-result v1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadSpeedupCfgBean:Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->getPlay_cfg()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/PlayCfgBean;

    if-eqz v0, :cond_6

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->ttDownLoadSpeedAd:Lcom/join/mgps/ad/m;

    if-nez v0, :cond_2

    .line 11
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/activity/MGMainActivity;->initTTDownLoadSpeedAd(Ljava/lang/String;Z)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v0, p0, p1}, Lcom/join/mgps/ad/c;->q(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->gdtDownLoadSpeedAd:Lcom/join/mgps/ad/e;

    if-nez v0, :cond_4

    .line 15
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/activity/MGMainActivity;->initGDTDownLoadSpeedAd(Ljava/lang/String;Z)V

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {v0, p0, p1}, Lcom/join/mgps/ad/c;->q(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 17
    :cond_5
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    :cond_6
    :goto_1
    return-void
.end method

.method public showGoldFingerVideo(Lcom/join/mgps/dto/PlayCfgBean;Ljava/lang/String;IIIZ)V
    .locals 8

    if-eqz p1, :cond_3

    .line 1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const-string v0, "state"

    invoke-interface {v6, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    const-string p6, "close"

    invoke-interface {v6, p6, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    move-result p5

    const/4 p6, 0x1

    if-ne p5, p6, :cond_1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->ttGoldAdVideo:Lcom/join/mgps/ad/m;

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v7}, Lcom/join/mgps/activity/MGMainActivity;->initGoldTTAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Z)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v6

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/ad/c;->s(Landroid/app/Activity;Ljava/lang/String;IILjava/util/Map;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    move-result p5

    const/4 p6, 0x2

    if-ne p5, p6, :cond_3

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->gdtGoldAdVideo:Lcom/join/mgps/ad/e;

    if-nez v0, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v7}, Lcom/join/mgps/activity/MGMainActivity;->initGoldGDTAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Z)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v6

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/ad/c;->s(Landroid/app/Activity;Ljava/lang/String;IILjava/util/Map;)V

    :cond_3
    :goto_0
    return-void
.end method

.method showHomePopupAd(Lcom/join/mgps/dto/PopupAdBean;)V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->homePopupAdLastTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 2
    iget-object v3, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->homePopupAdCount()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v3

    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3
    iget-object v4, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->homePopupAdLast()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v4

    invoke-virtual {v4}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4
    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/c;->g(J)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v4, ""

    const/4 v3, 0x0

    :cond_0
    if-nez p1, :cond_1

    .line 5
    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p1

    const-class v1, Lcom/join/mgps/dto/PopupAdBean;

    invoke-virtual {p1, v4, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PopupAdBean;

    :cond_1
    if-eqz p1, :cond_7

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getAd_switch()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getAd_switch()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 8
    invoke-static {p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getStart_up_counts()I

    move-result v2

    if-ge v3, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 11
    :cond_3
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->homePopupAdLast()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->homePopupAdCount()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->clearOldCache(Lcom/join/mgps/dto/PopupAdBean;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_5

    .line 14
    invoke-static {p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->preLoad(Lcom/join/mgps/dto/PopupAdBean;)V

    if-nez v3, :cond_4

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->isHomePopupAdCached(Lcom/join/mgps/dto/PopupAdBean;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    const/4 v2, 0x0

    :cond_6
    :goto_1
    if-eqz v2, :cond_7

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->homePopupAdLastTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->homePopupAdCount()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object p1

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/activity/MGMainActivity;->showInstallLayout:Z

    .line 20
    iget-boolean p1, p0, Lcom/join/mgps/activity/MGMainActivity;->activityHasDes:Z

    if-nez p1, :cond_7

    .line 21
    iput-boolean v4, p0, Lcom/join/mgps/activity/MGMainActivity;->hasShowAd:Z

    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/activity/HomePopupAdActivity_;->K0(Landroid/content/Context;)Lcom/join/mgps/activity/HomePopupAdActivity_$c;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/HomePopupAdActivity_$c;->a(Ljava/lang/String;)Lcom/join/mgps/activity/HomePopupAdActivity_$c;

    move-result-object p1

    const/16 v1, 0x2712

    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/HomePopupAdActivity_$c;->startForResult(I)Lorg/androidannotations/api/builder/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    :cond_7
    iget-boolean p1, p0, Lcom/join/mgps/activity/MGMainActivity;->hasShowAd:Z

    if-nez p1, :cond_8

    .line 25
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGMainActivity;->checkShowOldUserRecom(Z)V

    :cond_8
    return-void
.end method

.method showInputRoomPwdDialog(Lapp/mgsim/arena/ArenaRequest;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/input/a;

    const-string v1, "\u8bf7\u8f93\u5165\u623f\u95f4\u5bc6\u7801"

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/join/mgps/customview/input/a;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 2
    new-instance v1, Lcom/join/mgps/activity/MGMainActivity$c0;

    invoke-direct {v1, p0, v0, p1}, Lcom/join/mgps/activity/MGMainActivity$c0;-><init>(Lcom/join/mgps/activity/MGMainActivity;Lcom/join/mgps/customview/input/a;Lapp/mgsim/arena/ArenaRequest;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/input/a;->g(Lcom/join/mgps/customview/input/InputNumView$d;)V

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/input/a;->h()V

    return-void
.end method

.method showInstallAppDialogActivity(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/BaseAppCompatActivity;->hasDialog:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/activity/MGMainActivity;->showUpdate:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/join/mgps/Util/z;->Q(Landroid/content/Context;ILjava/util/List;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/BaseAppCompatActivity;->hasDialog:Z

    :cond_0
    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method showOnlineCouponDialog(Lcom/join/mgps/dto/OnlineCouponConfigBean;I)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/join/mgps/Util/z;->U(Landroid/content/Context;Lcom/join/mgps/dto/OnlineCouponConfigBean;I)V

    .line 2
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object p2, Lcom/papa/sim/statistic/Event;->homeSuccessUpRedBag:Lcom/papa/sim/statistic/Event;

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/p;->M1(Lcom/papa/sim/statistic/Event;I)V

    return-void
.end method

.method showPspVideoAd()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->pspGameAdCfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-class v2, Lcom/join/mgps/dto/PspGameAdCfgBean;

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/PspGameAdCfgBean;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->pspGameAdCfgBean:Lcom/join/mgps/dto/PspGameAdCfgBean;

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/PspGameAdCfgBean;->getPlay_cfg()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->pspGameAdCfgBean:Lcom/join/mgps/dto/PspGameAdCfgBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/PspGameAdCfgBean;->getPlay_cfg()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->pspGameAdCfgBean:Lcom/join/mgps/dto/PspGameAdCfgBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PspGameAdCfgBean;->getPlay_cfg()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/PlayCfgBean;

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/PlayCfgBean;->getProbability()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/join/mgps/ad/g;->b(Ljava/util/List;)I

    move-result v1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->pspGameAdCfgBean:Lcom/join/mgps/dto/PspGameAdCfgBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/PspGameAdCfgBean;->getPlay_cfg()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/PlayCfgBean;

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->ttPspAd:Lcom/join/mgps/ad/m;

    if-nez v0, :cond_2

    .line 10
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/MGMainActivity;->initTTPspAd(Z)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v0, p0}, Lcom/join/mgps/ad/c;->p(Landroid/app/Activity;)V

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->gdtPspAd:Lcom/join/mgps/ad/e;

    if-nez v0, :cond_4

    .line 14
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/MGMainActivity;->initGDTPspAd(Z)V

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {v0, p0}, Lcom/join/mgps/ad/c;->p(Landroid/app/Activity;)V

    goto :goto_1

    .line 16
    :cond_5
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    :cond_6
    :goto_1
    return-void
.end method

.method showRedPoint()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->red_point:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method showSharedGameDialog(Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/join/mgps/customview/t;

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    const v2, 0x7f120176

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0c0588

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const v1, 0x7f09058e

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    const v2, 0x7f090592

    .line 5
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09058f

    .line 6
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090b5c

    .line 7
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const v5, 0x7f0807b1

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :cond_2
    new-instance v1, Lcom/join/mgps/activity/MGMainActivity$e;

    invoke-direct {v1, p0, p1, v0}, Lcom/join/mgps/activity/MGMainActivity$e;-><init>(Lcom/join/mgps/activity/MGMainActivity;Lcom/join/mgps/dto/CollectionBeanSub;Lcom/join/mgps/customview/t;)V

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method public showVersionDownLoadHint(Lcom/join/mgps/dto/VersionDto;Z)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->wifiDownNumber()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->k(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-lez v0, :cond_1

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->wifiDownNumber()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object p2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/join/mgps/service/UpdateService_;->p(Landroid/content/Context;)Lcom/join/mgps/service/UpdateService_$a;

    move-result-object p2

    invoke-virtual {p1}, Lcom/join/mgps/dto/VersionDto;->getAndroidUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {p2, v1, v0}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/service/UpdateService_$a;

    const-string v0, "downNotInstall"

    invoke-virtual {p2, v0, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Z)Lorg/androidannotations/api/builder/e;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/service/UpdateService_$a;

    const-string v0, "papaUpdateinfo"

    invoke-virtual {p2, v0, p1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/io/Serializable;)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/service/UpdateService_$a;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const-string v1, "VersionXML"

    .line 5
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Mandatory"

    .line 7
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 8
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "VersionDto"

    .line 9
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->appUpdateDialog:Lcom/join/mgps/dialog/f;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->appUpdateDialog:Lcom/join/mgps/dialog/f;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 13
    :cond_2
    new-instance v0, Lcom/join/mgps/dialog/f;

    const v1, 0x7f12014a

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/join/mgps/dialog/f;-><init>(Landroid/content/Context;ILcom/join/mgps/dto/VersionDto;Z)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->appUpdateDialog:Lcom/join/mgps/dialog/f;

    .line 14
    new-instance p1, Lcom/join/mgps/activity/a1;

    invoke-direct {p1, p0}, Lcom/join/mgps/activity/a1;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->appUpdateDialog:Lcom/join/mgps/dialog/f;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 16
    iput-boolean v2, p0, Lcom/join/mgps/activity/MGMainActivity;->showUpdate:Z

    :goto_0
    return-void
.end method

.method showupdateDialog(Landroid/content/Intent;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.papa.broadcast.showUpdateDialog"
        }
    .end annotation

    const-string v0, "papaUpdateinfo"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/VersionDto;

    .line 2
    new-instance v0, Lcom/join/mgps/dialog/f;

    const v1, 0x7f12014a

    invoke-direct {v0, p0, v1, p1}, Lcom/join/mgps/dialog/f;-><init>(Landroid/content/Context;ILcom/join/mgps/dto/VersionDto;)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->appUpdateDialog:Lcom/join/mgps/dialog/f;

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->appUpdateDialog:Lcom/join/mgps/dialog/f;

    new-instance v0, Lcom/join/mgps/activity/v0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/v0;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/join/mgps/activity/MGMainActivity;->showUpdate:Z

    return-void
.end method

.method startAlphaBreathAnimation(Landroid/view/View;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x190L
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->flipCardAnimation:Lcom/join/mgps/Util/h0;

    new-instance v1, Lcom/join/mgps/Util/m0;

    const v2, 0x3f333333    # 0.7f

    invoke-direct {v1, v2}, Lcom/join/mgps/Util/m0;-><init>(F)V

    invoke-direct {p0, v0, p1, v1}, Lcom/join/mgps/activity/MGMainActivity;->startAnimation(Lcom/join/mgps/Util/h0;Landroid/view/View;Lcom/join/mgps/Util/m0;)V

    return-void
.end method

.method startBackups(Z)V
    .locals 18
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "  time"

    const-string v3, "wufan91/"

    const-string v4, ".downloadTask"

    const/4 v5, 0x0

    .line 1
    :try_start_0
    iget-boolean v6, v1, Lcom/join/mgps/activity/MGMainActivity;->hasBackupIng:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 2
    iput-boolean v5, v1, Lcom/join/mgps/activity/MGMainActivity;->hasBackupIng:Z

    return-void

    :cond_0
    const/4 v6, 0x1

    .line 3
    :try_start_1
    iput-boolean v6, v1, Lcom/join/mgps/activity/MGMainActivity;->hasBackupIng:Z

    .line 4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v9

    invoke-virtual {v9}, Lcom/join/mgps/pref/h;->g()Ljava/lang/String;

    move-result-object v9

    .line 7
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/q1;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v10

    .line 8
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v11, ""

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    :goto_0
    :try_start_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "/mgpapa/"

    const-string v6, "/wufan91/"

    if-eqz v16, :cond_4

    :try_start_3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/join/mgps/dto/Filepath;

    .line 9
    invoke-virtual/range {v16 .. v16}, Lcom/join/mgps/dto/Filepath;->isIslocal()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 10
    invoke-virtual/range {v16 .. v16}, Lcom/join/mgps/dto/Filepath;->getPathHome()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v17, v10

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/join/mgps/dto/Filepath;->getPathHome()Ljava/lang/String;

    move-result-object v12

    .line 12
    invoke-virtual/range {v16 .. v16}, Lcom/join/mgps/dto/Filepath;->getPathHome()Ljava/lang/String;

    move-result-object v14

    .line 13
    invoke-virtual/range {v16 .. v16}, Lcom/join/mgps/dto/Filepath;->getPathHome()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v10

    const-string v10, "/Android/data/"

    .line 14
    invoke-virtual {v12, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 15
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/join/mgps/dto/Filepath;->getPathRoot()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v12, v10

    .line 16
    :cond_2
    invoke-virtual {v15, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/join/mgps/dto/Filepath;->getPathRoot()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 18
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    move-object v15, v11

    :cond_3
    :goto_1
    move-object/from16 v10, v17

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    const-string v10, ".downloadTask_chajian"

    .line 19
    filled-new-array {v4, v10}, [Ljava/lang/String;

    move-result-object v10

    .line 20
    invoke-static {v12}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 21
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v12, v11, v7}, Lcom/join/mgps/Util/f0;->r(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 22
    :cond_5
    invoke-static {v13}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 23
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v13, v11, v7}, Lcom/join/mgps/Util/f0;->r(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 24
    :cond_6
    invoke-static {v14}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 25
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v14, v11, v7}, Lcom/join/mgps/Util/f0;->r(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 26
    :cond_7
    invoke-static {v15}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 27
    invoke-static {v15, v4, v7}, Lcom/join/mgps/Util/f0;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 28
    :cond_8
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 29
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v9, v4, v7}, Lcom/join/mgps/Util/f0;->r(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 30
    :cond_9
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v9, 0x2

    if-eqz v7, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 31
    :try_start_4
    invoke-static {v7}, Lcom/join/mgps/Util/f0;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 32
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v10

    const-class v11, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v10, v7, v11}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v7, :cond_a

    goto :goto_2

    .line 33
    :cond_a
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 34
    new-instance v10, Ljava/io/File;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 36
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    goto :goto_3

    .line 38
    :cond_b
    new-instance v11, Ljava/io/File;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_c

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 40
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 42
    :cond_c
    :goto_3
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_e

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v10

    if-ne v10, v9, :cond_e

    .line 43
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 44
    new-instance v9, Ljava/io/File;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v9, :cond_d

    goto/16 :goto_2

    .line 45
    :cond_d
    :try_start_5
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1e

    if-lt v9, v10, :cond_e

    .line 46
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v9

    .line 47
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 48
    invoke-virtual {v9, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 49
    array-length v11, v10

    const/4 v12, 0x1

    if-le v11, v12, :cond_e

    .line 50
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v12}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v12

    invoke-virtual {v12}, Lcom/join/mgps/pref/h;->g()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x1

    aget-object v10, v10, v12

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 51
    invoke-static {v9, v10}, Lcom/join/mgps/Util/f0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v7, v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v7, v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v9, v0

    .line 54
    :try_start_6
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    :cond_e
    :goto_4
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v7, v0

    .line 56
    :try_start_7
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 57
    :cond_f
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v3}, Lg1/f;->u()Ljava/util/List;

    move-result-object v3

    .line 58
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 59
    :cond_10
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 60
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 61
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 62
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 63
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 64
    :cond_12
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/16 v5, 0x9

    const-string v6, "  "

    const/4 v7, 0x5

    if-eqz v4, :cond_16

    :try_start_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v4, :cond_15

    .line 65
    :try_start_9
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v10

    if-ne v10, v9, :cond_15

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDtype()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_15

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDtype()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 66
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v10

    if-eq v10, v7, :cond_14

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v10

    if-ne v10, v5, :cond_15

    .line 67
    :cond_14
    iget-object v5, v1, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/String;

    invoke-static {v5, v4, v10, v11}, Lcom/join/android/app/common/utils/h;->r(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 68
    iget-object v5, v1, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v10

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/join/android/app/common/utils/h;->G(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)V

    .line 69
    :cond_15
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v5

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    if-nez v5, :cond_13

    const/4 v5, 0x1

    .line 70
    invoke-virtual {v4, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setOpen(Z)V

    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v5

    invoke-virtual {v5, v4}, Lg1/f;->c0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)I

    .line 73
    invoke-static {v4, v7}, Lcom/join/mgps/Util/UtilsMy;->g2(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_6

    :catch_2
    move-exception v0

    move-object v4, v0

    .line 74
    :try_start_a
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_6

    .line 75
    :cond_16
    :try_start_b
    invoke-static/range {p0 .. p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/join/android/app/common/utils/APKUtils;->m(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 76
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    invoke-virtual {v4}, Lg1/f;->o()Ljava/util/List;

    move-result-object v4

    .line 77
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 78
    :cond_17
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_19

    .line 79
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/join/android/app/common/utils/APKUtils$a;

    .line 80
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_18
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_17

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 81
    invoke-virtual {v10}, Lcom/join/android/app/common/utils/APKUtils$a;->c()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 82
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    .line 83
    :cond_19
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/join/android/app/common/utils/APKUtils$a;

    .line 85
    invoke-virtual {v9}, Lcom/join/android/app/common/utils/APKUtils$a;->c()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 86
    :cond_1a
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v4, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getAppDataBackRequest([Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v3

    .line 87
    iget-object v4, v1, Lcom/join/mgps/activity/MGMainActivity;->recommendClient:Lcom/join/mgps/rpc/d;

    invoke-interface {v4, v3}, Lcom/join/mgps/rpc/d;->H0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 88
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v4

    const/4 v9, 0x1

    if-ne v4, v9, :cond_27

    .line 89
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 92
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/SearchDataBean;

    .line 94
    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchDataBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    .line 95
    sget-object v9, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/16 v10, 0xb

    const/4 v11, 0x0

    if-eqz v9, :cond_20

    invoke-direct {v1, v4}, Lcom/join/mgps/activity/MGMainActivity;->isModMainGame(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v9

    if-nez v9, :cond_20

    .line 96
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v9

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/join/mgps/va/overmind/e;->D(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 97
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 98
    invoke-virtual {v4, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_a

    .line 99
    :cond_1b
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1c

    .line 100
    new-instance v11, Ljava/io/File;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_1c
    if-eqz v11, :cond_1d

    .line 101
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 102
    invoke-virtual {v4, v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_a

    .line 103
    :cond_1d
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v9

    if-ne v9, v7, :cond_1e

    .line 104
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v9

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lg1/f;->n(Ljava/lang/String;)V

    .line 105
    :cond_1e
    :goto_a
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v9

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v9

    if-nez v9, :cond_1f

    const/4 v9, 0x1

    .line 106
    invoke-virtual {v4, v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setOpen(Z)V

    .line 107
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v9

    invoke-virtual {v9, v4}, Lg1/f;->c0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)I

    .line 108
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-static {v4, v7}, Lcom/join/mgps/Util/UtilsMy;->g2(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 110
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    const/4 v9, 0x1

    goto/16 :goto_9

    .line 111
    :cond_20
    sget-object v9, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 113
    invoke-static/range {p0 .. p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v9

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v1, v12}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 114
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_22

    .line 115
    invoke-static/range {p0 .. p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v9

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v9

    .line 116
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_21

    invoke-virtual {v9}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v9

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ge v9, v10, :cond_21

    .line 117
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_25

    .line 118
    invoke-virtual {v4, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_b

    .line 119
    :cond_21
    invoke-virtual {v4, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_b

    .line 120
    :cond_22
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_23

    .line 121
    new-instance v11, Ljava/io/File;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_23
    if-eqz v11, :cond_24

    .line 122
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_24

    .line 123
    invoke-virtual {v4, v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_b

    .line 124
    :cond_24
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v9

    if-ne v9, v7, :cond_25

    .line 125
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v9

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lg1/f;->n(Ljava/lang/String;)V

    .line 126
    :cond_25
    :goto_b
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v9

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v9

    if-nez v9, :cond_1f

    const/4 v9, 0x1

    .line 127
    invoke-virtual {v4, v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setOpen(Z)V

    .line 128
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v10

    invoke-virtual {v10, v4}, Lg1/f;->c0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)I

    .line 129
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {v4, v7}, Lcom/join/mgps/Util/UtilsMy;->g2(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 131
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 132
    :cond_26
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_c

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 133
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_27
    const/4 v2, 0x0

    :goto_c
    if-nez v2, :cond_28

    .line 134
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_29

    .line 135
    :cond_28
    invoke-static/range {p0 .. p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/papa/sim/statistic/p;->Y0(Ljava/lang/String;II)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/MGMainActivity;->updateHistory()V

    .line 137
    :cond_29
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v1, Lcom/join/mgps/activity/MGMainActivity;->backupNumber:I

    .line 138
    iget-boolean v3, v1, Lcom/join/mgps/activity/MGMainActivity;->hasRunFinishforFinishDialog:Z

    if-eqz v3, :cond_2a

    .line 139
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/MGMainActivity;->showBackupFinishDialog(I)V

    :cond_2a
    if-eqz p1, :cond_2b

    .line 140
    iget-object v2, v1, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->c0(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 141
    iget-object v2, v1, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->isFirstRunApkBackupLong()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    :cond_2b
    const-string v2, "backupData"

    const-string v3, "\u6062\u590d\u5b8c\u6210"

    .line 142
    invoke-static {v2, v3}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/MGMainActivity;->checkPurchasedList()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    const/4 v2, 0x0

    goto :goto_d

    :catchall_0
    move-exception v0

    move-object v3, v0

    const/4 v2, 0x0

    goto :goto_e

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 144
    :try_start_d
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    const/4 v2, 0x0

    .line 145
    :goto_d
    iput-boolean v2, v1, Lcom/join/mgps/activity/MGMainActivity;->hasBackupIng:Z

    return-void

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    move-object v3, v0

    :goto_e
    iput-boolean v2, v1, Lcom/join/mgps/activity/MGMainActivity;->hasBackupIng:Z

    .line 146
    goto :goto_10

    :goto_f
    throw v3

    :goto_10
    goto :goto_f
.end method

.method public startDownloadActivity(Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-boolean p1, p0, Lcom/join/mgps/activity/MGMainActivity;->hasPlug:Z

    const-string v1, "hasPlug"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    iget-boolean p1, p0, Lcom/join/mgps/activity/MGMainActivity;->hasRom:Z

    const-string v1, "hasRom"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MGMainActivity_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method startGameRoom(Lcom/join/mgps/event/m;)V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0xc8L
    .end annotation

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/m;->d()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/event/m;->h()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/event/m;->f()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/event/m;->d()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/event/m;->i()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/event/m;->i()I

    move-result p1

    if-ne p1, v4, :cond_2

    const/4 v4, 0x3

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    .line 7
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->u3(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->l(I)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->h(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    .line 9
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getGameName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->d(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->i(Lcom/papa91/battle/protocol/GameRoom;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v4}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->k(I)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    const/high16 v0, 0x20000000

    .line 11
    invoke-virtual {p1, v0}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 12
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v0, "1"

    .line 13
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 17
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->JoinLobbyroom:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    :cond_4
    :goto_1
    return-void
.end method

.method startIntentOldUserRecom(J)V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 4
    new-instance v1, Lcom/join/kotlin/ui/userrecom/UserRecomRequestArgs;

    invoke-direct {v1}, Lcom/join/kotlin/ui/userrecom/UserRecomRequestArgs;-><init>()V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v3}, Lg1/f;->d()Ljava/util/List;

    move-result-object v3

    .line 7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {v4}, Lcom/join/android/app/common/utils/APKUtils;->E(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 10
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v5

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v4

    const-class v6, Lcom/join/mgps/dto/ModInfoBean;

    invoke-virtual {v5, v4, v6}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ModInfoBean;

    .line 11
    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v1, v2}, Lcom/join/kotlin/ui/userrecom/UserRecomRequestArgs;->setDownloadedGameIdList(Ljava/util/List;)V

    .line 13
    invoke-virtual {v1, p1, p2}, Lcom/join/kotlin/ui/userrecom/UserRecomRequestArgs;->setDuration(J)V

    .line 14
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/kotlin/ui/userrecom/UserRecomRequestArgs;->setUid(I)V

    .line 15
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 16
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v0

    invoke-interface {v1, v0}, Lq1/h;->V(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/MGMainActivity$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity$b;-><init>(Lcom/join/mgps/activity/MGMainActivity;J)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_2
    return-void
.end method

.method startLineAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadLine:Landroid/widget/ImageView;

    const v1, 0x7f080763

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f010030

    .line 2
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->animation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->imageLoading:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->imageLoading:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->animation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/join/mgps/activity/MGMainActivity$i;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGMainActivity$i;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method startLoadRecommendwifi()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGMainActivity;->getRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity;->rpcClient:Lcom/join/mgps/rpc/d;

    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/d;->I(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/RecomeWifiDatabean;

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomeWifiDatabean;->getGame_list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 8
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x2

    .line 9
    iput v2, v1, Landroid/os/Message;->what:I

    .line 10
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 13
    :goto_0
    throw v0

    :cond_0
    :goto_1
    return-void
.end method

.method startPlayVideo()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x190L
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mgPapaMainFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2

    .line 3
    instance-of v1, v0, Lcom/join/mgps/activity/g2;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/join/mgps/activity/g2;

    invoke-virtual {v0}, Lcom/join/mgps/activity/f2;->f0()V

    goto :goto_0

    .line 5
    :cond_0
    instance-of v1, v0, Lcom/join/mgps/activity/o2;

    if-eqz v1, :cond_2

    .line 6
    check-cast v0, Lcom/join/mgps/activity/o2;

    invoke-virtual {v0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->x0()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->fightFragment:Lcom/join/mgps/fragment/f0;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/fragment/c0;->T()V

    :cond_2
    :goto_0
    return-void
.end method

.method startShowRecommendwifi(Lcom/join/mgps/dto/RecomeWifiDatabean;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/MGMainActivity;->isDestroyed:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/mgps/activity/RecomWifiActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "data"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method stopLineAnimation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->imageLoading:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->imageLoading:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget v0, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    const/4 v1, 0x3

    const v2, 0x7f080765

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadLine:Landroid/widget/ImageView;

    const v1, 0x7f08076a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 7
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method toast(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/join/mgps/activity/i1;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/i1;-><init>(Lcom/join/mgps/activity/MGMainActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method toastData(Lcom/join/mgps/dto/RewardBean;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/RewardBean;->getOn_off()I

    :cond_0
    return-void
.end method

.method touristLogin()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
        delay = 0x3e8L
    .end annotation

    const-string v0, ""

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/MGMainActivity;->isLogined(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 4
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/TouristLoginRequestBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/TouristLoginRequestBean;-><init>()V

    const-string v2, "2"

    .line 5
    invoke-static {p0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/android/app/common/utils/j;->z()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setVersion(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setMac(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setSource(Ljava/lang/String;)V

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->touriseTUID()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setTuid(J)V

    .line 11
    invoke-static {v1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setSign(Ljava/lang/String;)V

    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/join/mgps/Util/b;->setLocalUserIcon(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    invoke-virtual {v1}, Lcom/join/mgps/dto/TouristLoginRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/b;->s(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v1

    if-nez v1, :cond_1

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 17
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method unreadnotify(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.action_unread_notify"
        }
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->updateStartGameTable(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method updateAndroidApp()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->v()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v2

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x5

    .line 6
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->g2(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method updateDownloadingPoint(I)V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->biground:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/16 p1, 0x8

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x64

    const v3, 0x7f070ddc

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge p1, v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->biground:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity;->biground:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->biground:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->biground:Landroid/widget/TextView;

    const v2, 0x7f080888

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->biground:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v1, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->biground:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 13
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070991

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 14
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/high16 v3, 0x40e00000    # 7.0f

    .line 15
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v4, v3, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 16
    invoke-virtual {v0, v1, v3, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity;->biground:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity;->biground:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->biground:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->biground:Landroid/widget/TextView;

    const v2, 0x7f0807cd

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->biground:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v4, v1, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 22
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->biground:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method updateHidePoint()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->stopLineAnimation()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->biground:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->biground:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->bigCenterRound:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method updateHistory()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/service/CommonService_;->d2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$u1;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    return-void
.end method

.method updateLine(I)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->scroll_text_layout:Lcom/join/mgps/customview/ScrollTextViewLayout;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    const/4 v2, 0x3

    const v3, 0x7f0809af

    if-eq v1, v2, :cond_3

    const/4 v2, 0x7

    if-eq v1, v2, :cond_3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v4, 0x5

    if-eq v1, v4, :cond_2

    if-eq v1, v2, :cond_2

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0809a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 5
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    if-nez p1, :cond_4

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->stopLineAnimation()V

    goto :goto_2

    .line 7
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadLine:Landroid/widget/ImageView;

    const v0, 0x7f080763

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->startLineAnimation()V

    :goto_2
    return-void
.end method

.method updateNoOpenPoint()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->biground:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainActivity;->stopLineAnimation()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->biground:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->biground:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080889

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->bigCenterRound:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->bigCenterRound:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->bigCenterRound:Landroid/widget/TextView;

    const v1, 0x7f0603b7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method updateStartGameTable(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 13

    .line 1
    :try_start_0
    iget v0, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v1, v0, :cond_14

    const/4 v4, 0x5

    if-ne v4, v0, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->d()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 4
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-gt v6, v7, :cond_1

    .line 7
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const-wide/16 v6, 0x0

    if-lez v5, :cond_9

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    if-ne v5, v1, :cond_3

    .line 10
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadTaskx:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    goto :goto_2

    .line 11
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-wide v8, v6

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v10

    if-ne v10, v1, :cond_4

    .line 13
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStartTime()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-gez v12, :cond_4

    .line 14
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStartTime()J

    move-result-wide v8

    .line 15
    iput-object v5, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadTaskx:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    goto :goto_1

    .line 16
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadTaskx:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p1, :cond_9

    .line 17
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object p1

    iget-object v5, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadTaskx:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 18
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    if-ne v5, v1, :cond_8

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->downlodingGameIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->cdp_down_progress:Lcom/join/mgps/customview/CircleDownloadProgressBar;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_chart_image:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->downlodingGameIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v5, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadTaskx:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->cdp_down_progress:Lcom/join/mgps/customview/CircleDownloadProgressBar;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v5

    long-to-int p1, v5

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/CircleDownloadProgressBar;->setProgress(I)V

    .line 24
    iget p1, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    if-eq v1, p1, :cond_6

    if-ne v4, p1, :cond_7

    .line 25
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->cdp_down_progress:Lcom/join/mgps/customview/CircleDownloadProgressBar;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_chart_image:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->downlodingGameIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    :cond_7
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity;->stopAlphBreathAnim()V

    return-void

    .line 29
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->downlodingGameIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->cdp_down_progress:Lcom/join/mgps/customview/CircleDownloadProgressBar;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_chart_image:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    :cond_9
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    iget-object v5, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-virtual {p1, v5}, Lg1/f;->T(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    const/4 v5, 0x0

    if-eqz p1, :cond_f

    .line 33
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_f

    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->numberInTab:Lcom/join/mgps/customview/LightningView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->downlodingGameIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->cdp_down_progress:Lcom/join/mgps/customview/CircleDownloadProgressBar;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 37
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity;->stopAlphBreathAnim()V

    .line 38
    iget v0, p0, Lcom/join/mgps/activity/MGMainActivity;->positionNum:I

    if-eq v1, v0, :cond_e

    if-ne v4, v0, :cond_a

    goto :goto_4

    .line 39
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-wide v0, v6

    :cond_b
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    cmp-long v8, v0, v6

    if-eqz v8, :cond_c

    .line 40
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    move-result-wide v8

    cmp-long v10, v0, v8

    if-gez v10, :cond_b

    .line 41
    :cond_c
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    move-result-wide v0

    move-object v5, v4

    goto :goto_3

    :cond_d
    if-eqz v5, :cond_15

    .line 42
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->gifIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 43
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->gifIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->startAlphaBreathAnimation(Landroid/view/View;)V

    .line 44
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->gifIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_chart_image:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 46
    :cond_e
    :goto_4
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->gifIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_chart_image:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 48
    :cond_f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-wide v0, v6

    :cond_10
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 49
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v9

    if-ne v9, v4, :cond_10

    cmp-long v9, v0, v6

    if-eqz v9, :cond_11

    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOpenTime()J

    move-result-wide v9

    cmp-long v11, v0, v9

    if-gez v11, :cond_10

    .line 50
    :cond_11
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOpenTime()J

    move-result-wide v0

    move-object v5, v8

    goto :goto_5

    :cond_12
    if-eqz v5, :cond_13

    .line 51
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->gifIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->gifIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_chart_image:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 54
    :cond_13
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->numberInTab:Lcom/join/mgps/customview/LightningView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 55
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_chart_image:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->gifIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity;->stopAlphBreathAnim()V

    goto :goto_7

    .line 58
    :cond_14
    :goto_6
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->gifIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->downlodingGameIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->cdp_down_progress:Lcom/join/mgps/customview/CircleDownloadProgressBar;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->numberInTab:Lcom/join/mgps/customview/LightningView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_chart_image:Landroid/widget/ImageView;

    const v0, 0x7f0807ef

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity;->mg_chart_image:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity;->stopAlphBreathAnim()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_15
    :goto_7
    return-void
.end method

.method updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 v0, 0x7

    if-eq p2, v0, :cond_2

    const/16 v0, 0x8

    if-eq p2, v0, :cond_2

    const/16 v0, 0x9

    if-eq p2, v0, :cond_2

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method updateWaterProgress()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadTaskx:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->downloadTaskx:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->cdp_down_progress:Lcom/join/mgps/customview/CircleDownloadProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/CircleDownloadProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method videoAdWatchLog(Lcom/join/mgps/db/tables/VideoWatchLogTable;Z)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 3
    new-instance v1, Lcom/join/mgps/dto/VideoAdWatchLogRequest;

    invoke-direct {v1}, Lcom/join/mgps/dto/VideoAdWatchLogRequest;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/VideoWatchLogTable;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/VideoAdWatchLogRequest;->setUid(I)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/VideoWatchLogTable;->getSdkType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/VideoAdWatchLogRequest;->setSdkType(I)V

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/VideoWatchLogTable;->getSceneType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/VideoAdWatchLogRequest;->setSceneType(I)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 9
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/rpc/impl/h;->e(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 12
    invoke-static {}, Ln1/n0;->n()Ln1/n0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lg1/b;->delete(Ljava/lang/Object;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity;->getVideoAdCfg(Z)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {}, Ln1/n0;->n()Ln1/n0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {}, Ln1/n0;->n()Ln1/n0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method
