.class public Lcom/join/mgps/activity/ApFightActivity;
.super Lcom/BaseActivity;
.source "ApFightActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c01dc
.end annotation


# static fields
.field public static final REQUEST_CODE:I = 0x2329

.field public static final REQUEST_ZXING_CODE:I = 0x2711

.field public static final START_MODE_NETCLIENT:I = 0x2

.field public static final START_MODE_NETSERVER:I = 0x1

.field public static step:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private ap:Ljava/lang/String;

.field apBtnEnable:Z

.field apName:Ljava/lang/String;

.field ap_net_match_info_1p_frame:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ap_net_match_info_2p_frame:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field apfight_zxing_content_lay:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field back:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field beginAnimation:Landroid/view/animation/Animation;

.field btnAnimation:Landroid/view/animation/Animation;

.field clientBrandName:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field clientBtn:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field fightClientIcon:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private fightClientLoadingDialog:Lcom/join/mgps/dialog/a;

.field private fightConnectListener:Ll1/c;

.field private fightCreateServerDialog:Lcom/join/mgps/dialog/k0;

.field private fightDisconnectDialog:Lcom/join/mgps/dialog/l0;

.field private fightServerChoseDialog:Lcom/join/mgps/dialog/n0;

.field fightServerIcon:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field fightStart:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private gId:Ljava/lang/String;

.field private gName:Ljava/lang/String;

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field getSSID:Ljava/lang/String;

.field hint:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ipTxt:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ip_lay:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private isClient:Z

.field private isConnectSuccessed:Z

.field isGetPermission:Z

.field private isUsing:Z

.field isWifiConnectedBefore:Z

.field private isWranAp:Z

.field lastClick:J

.field lcon:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mPermissionHelper:Lru/alexbykov/nopermission/b;

.field mServerIp:Ljava/lang/String;

.field private mWifiApList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

.field mgFightClientManager:Lcom/join/mgps/helper/MGFightClientManager;

.field mgFightServerManager:Lcom/join/mgps/helper/MGFightServerManager;

.field mgWifiFightClientManger:Lcom/join/mgps/helper/MGWifiFightClientManger;

.field mgWifiFightServerManger:Lcom/join/mgps/helper/MGWifiFightServerManger;

.field mismatchDialog:Lcom/join/mgps/dialog/c2;

.field private mode:I

.field modeIconAP:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field modeIconWifi:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field modeSwitchEnable:Z

.field num:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field p1status_btn_around_img:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private plugin_num:Ljava/lang/String;

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field private romPath:Ljava/lang/String;

.field serverBrandName:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field serverBtn:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private specifiedSSID:Ljava/lang/String;

.field ssidTxt:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field statType:I

.field suiji:I

.field tipTxt1:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tipTxt2:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tipWifi:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field type:I

.field w:Lcom/join/mgps/dialog/b2;

.field waitHint:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private wifiInfo:Landroid/net/wifi/WifiInfo;

.field zxingBtn:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field zxingImg:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field zxingTip1:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field zxingTip2:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field zxing_lay:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field zxing_tip_lay:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->TAG:Ljava/lang/String;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->plugin_num:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiApList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, p0, Lcom/join/mgps/activity/ApFightActivity;->isClient:Z

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/activity/ApFightActivity;->isUsing:Z

    .line 8
    iput-boolean v1, p0, Lcom/join/mgps/activity/ApFightActivity;->isConnectSuccessed:Z

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->specifiedSSID:Ljava/lang/String;

    .line 10
    iput-boolean v2, p0, Lcom/join/mgps/activity/ApFightActivity;->modeSwitchEnable:Z

    .line 11
    iput-boolean v2, p0, Lcom/join/mgps/activity/ApFightActivity;->apBtnEnable:Z

    .line 12
    new-instance v2, Lcom/join/mgps/activity/ApFightActivity$e;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/ApFightActivity$e;-><init>(Lcom/join/mgps/activity/ApFightActivity;)V

    iput-object v2, p0, Lcom/join/mgps/activity/ApFightActivity;->fightConnectListener:Ll1/c;

    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->getSSID:Ljava/lang/String;

    .line 14
    iput-boolean v1, p0, Lcom/join/mgps/activity/ApFightActivity;->isGetPermission:Z

    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->ap:Ljava/lang/String;

    .line 16
    iput-boolean v1, p0, Lcom/join/mgps/activity/ApFightActivity;->isWranAp:Z

    .line 17
    iput-boolean v1, p0, Lcom/join/mgps/activity/ApFightActivity;->isWifiConnectedBefore:Z

    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/ApFightActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    return p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ApFightActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/Util/WifiUtils;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/join/mgps/activity/ApFightActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/ApFightActivity;->isConnectSuccessed:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/join/mgps/activity/ApFightActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity;->dismissShowClientLoading()V

    return-void
.end method

.method static synthetic access$1300(Lcom/join/mgps/activity/ApFightActivity;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/ApFightActivity;->showClientLoading(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/join/mgps/activity/ApFightActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ApFightActivity;->showConnectExceptionDialog(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/join/mgps/activity/ApFightActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity;->onSuccess()V

    return-void
.end method

.method static synthetic access$1600(Lcom/join/mgps/activity/ApFightActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity;->onDenied()V

    return-void
.end method

.method static synthetic access$1702(Lcom/join/mgps/activity/ApFightActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/ApFightActivity;->isWranAp:Z

    return p1
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ApFightActivity;->ap:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/ApFightActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ApFightActivity;->createZxingLay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightClientLoadingDialog:Lcom/join/mgps/dialog/a;

    return-object p0
.end method

.method static synthetic access$600(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/n0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightServerChoseDialog:Lcom/join/mgps/dialog/n0;

    return-object p0
.end method

.method static synthetic access$602(Lcom/join/mgps/activity/ApFightActivity;Lcom/join/mgps/dialog/n0;)Lcom/join/mgps/dialog/n0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightServerChoseDialog:Lcom/join/mgps/dialog/n0;

    return-object p1
.end method

.method static synthetic access$700(Lcom/join/mgps/activity/ApFightActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity;->resetClientBtn()V

    return-void
.end method

.method static synthetic access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/l0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightDisconnectDialog:Lcom/join/mgps/dialog/l0;

    return-object p0
.end method

.method static synthetic access$802(Lcom/join/mgps/activity/ApFightActivity;Lcom/join/mgps/dialog/l0;)Lcom/join/mgps/dialog/l0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightDisconnectDialog:Lcom/join/mgps/dialog/l0;

    return-object p1
.end method

.method static synthetic access$900(Lcom/join/mgps/activity/ApFightActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/ApFightActivity;->isClient:Z

    return p0
.end method

.method private checkWifiIp(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "192.168"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "10."

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "172."

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private createServer()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    if-nez v0, :cond_5

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const v2, 0x7f0808f6

    const-string v3, "\u6211\u662f\u4e3b\u673a"

    const-string v4, ""

    if-lt v0, v1, :cond_4

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "papa_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/activity/ApFightActivity;->suiji:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->ap:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->getWifiApStateInt()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isWranAp:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->getWifiApStateInt()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->getWifiApStateInt()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->closeServer()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->num:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->serverBrandName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightClientIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightServerManager:Lcom/join/mgps/helper/MGFightServerManager;

    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->ap:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/helper/MGFightServerManager;->startServer(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->showLoading()V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isUsing:Z

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 14
    new-instance v0, Lcom/join/mgps/customview/p;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/p;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->ap:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/p;->b(Ljava/lang/String;)V

    .line 17
    new-instance v1, Lcom/join/mgps/activity/ApFightActivity$j;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ApFightActivity$j;-><init>(Lcom/join/mgps/activity/ApFightActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/p;->a(Landroid/view/View$OnClickListener;)V

    .line 18
    new-instance v1, Lcom/join/mgps/activity/ApFightActivity$k;

    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/ApFightActivity$k;-><init>(Lcom/join/mgps/activity/ApFightActivity;Lcom/join/mgps/customview/p;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/p;->d(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_1
    return-void

    .line 19
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->closeServer()V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->num:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->serverBrandName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightClientIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightServerManager:Lcom/join/mgps/helper/MGFightServerManager;

    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/helper/MGFightServerManager;->startServer(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->showLoading()V

    goto :goto_2

    .line 25
    :cond_5
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->OpenWifi()V

    .line 27
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightServerManger:Lcom/join/mgps/helper/MGWifiFightServerManger;

    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/helper/MGWifiFightServerManger;->startServer(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private createZxingLay(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1, p0}, Lv1/a;->b(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->zxingImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->tipWifi:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1, p0}, Lv1/a;->b(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->zxingImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->tipWifi:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/join/mgps/activity/ApFightActivity$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity$d;-><init>(Lcom/join/mgps/activity/ApFightActivity;)V

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private dismissShowClientLoading()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightClientLoadingDialog:Lcom/join/mgps/dialog/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private getDeviceInfo()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tbruyelle/rxpermissions2/c;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/c;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/c;->r([Ljava/lang/String;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ApFightActivity$f;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ApFightActivity$f;-><init>(Lcom/join/mgps/activity/ApFightActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->B5(Lw2/g;)Lio/reactivex/disposables/b;

    return-void
.end method

.method private onDenied()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u4f60\u5df2\u62d2\u7edd\u6743\u9650\u7533\u8bf7\uff0c\u65e0\u6cd5\u5bf9\u6218\uff01"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method private onNeverAskAgain()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u4f60\u5df2\u62d2\u7edd\u6743\u9650\u7533\u8bf7\uff0c\u65e0\u6cd5\u5bf9\u6218\uff01"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method private onSuccess()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isGetPermission:Z

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/WifiUtils;->getApSSIDAll(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->getSSID:Ljava/lang/String;

    .line 3
    iget v1, p0, Lcom/join/mgps/activity/ApFightActivity;->type:I

    if-ne v1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->zxingBtn()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->clientBtn()V

    :goto_0
    return-void
.end method

.method private resetClientBtn()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    const v1, 0x7f080084

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    const v1, 0x7f08008c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private showClientLoading(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method showClientLoading() called.stage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightClientLoadingDialog:Lcom/join/mgps/dialog/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightClientLoadingDialog:Lcom/join/mgps/dialog/a;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4
    :cond_0
    new-instance v0, Lcom/join/mgps/dialog/a;

    const v1, 0x7f12014a

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightClientLoadingDialog:Lcom/join/mgps/dialog/a;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightClientLoadingDialog:Lcom/join/mgps/dialog/a;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightClientLoadingDialog:Lcom/join/mgps/dialog/a;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightClientLoadingDialog:Lcom/join/mgps/dialog/a;

    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightClientLoadingDialog:Lcom/join/mgps/dialog/a;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightClientLoadingDialog:Lcom/join/mgps/dialog/a;

    const-string p2, "\u6b63\u5728\u641c\u7d22\u6e38\u620f\u623f\u95f4,\u8bf7\u7a0d\u5019..."

    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/a;->a(Ljava/lang/String;)V

    .line 11
    sput v0, Lcom/join/mgps/activity/ApFightActivity;->step:I

    :catch_0
    :goto_0
    return-void
.end method

.method private showConnectExceptionDialog(I)V
    .locals 2

    const/4 v0, 0x1

    const v1, 0x7f12014a

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity;->dismissShowClientLoading()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->w:Lcom/join/mgps/dialog/b2;

    if-nez p1, :cond_1

    .line 3
    new-instance p1, Lcom/join/mgps/dialog/b2;

    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mServerIp:Ljava/lang/String;

    invoke-direct {p1, p0, v1, v0}, Lcom/join/mgps/dialog/b2;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->w:Lcom/join/mgps/dialog/b2;

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->w:Lcom/join/mgps/dialog/b2;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_7

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->w:Lcom/join/mgps/dialog/b2;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity;->dismissShowClientLoading()V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightDisconnectDialog:Lcom/join/mgps/dialog/l0;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 8
    :cond_3
    new-instance p1, Lcom/join/mgps/dialog/l0;

    invoke-direct {p1, p0, v1}, Lcom/join/mgps/dialog/l0;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightDisconnectDialog:Lcom/join/mgps/dialog/l0;

    .line 9
    :try_start_1
    sput v0, Lcom/join/mgps/activity/ApFightActivity;->step:I

    .line 10
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightDisconnectDialog:Lcom/join/mgps/dialog/l0;

    const-string v0, "\u672a\u641c\u7d22\u5230\u53ef\u7528\u623f\u95f4"

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/l0;->j(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightDisconnectDialog:Lcom/join/mgps/dialog/l0;

    const-string v0, "\u65e0\u6cd5\u641c\u7d22\u5230\u5c0f\u4f19\u4f34\u521b\u5efa\u7684\u70ed\u70b9\uff0c\u8bf7\u91cd\u8bd5"

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/l0;->f(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightDisconnectDialog:Lcom/join/mgps/dialog/l0;

    new-instance v0, Lcom/join/mgps/activity/ApFightActivity$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity$b;-><init>(Lcom/join/mgps/activity/ApFightActivity;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/l0;->h(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 14
    :cond_4
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity;->dismissShowClientLoading()V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightDisconnectDialog:Lcom/join/mgps/dialog/l0;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 16
    :cond_5
    new-instance p1, Lcom/join/mgps/dialog/l0;

    invoke-direct {p1, p0, v1}, Lcom/join/mgps/dialog/l0;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightDisconnectDialog:Lcom/join/mgps/dialog/l0;

    .line 17
    :try_start_2
    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isConnectSuccessed:Z

    if-eqz v0, :cond_6

    return-void

    :cond_6
    const/4 v0, 0x5

    .line 18
    sput v0, Lcom/join/mgps/activity/ApFightActivity;->step:I

    .line 19
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightDisconnectDialog:Lcom/join/mgps/dialog/l0;

    const-string v0, "\u52a0\u5165\u623f\u95f4\u5931\u8d25"

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/l0;->j(Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightDisconnectDialog:Lcom/join/mgps/dialog/l0;

    const-string v0, "\u8bf7\u786e\u8ba4\u624b\u673aWIFI\u529f\u80fd\u662f\u5426\u6253\u5f00\uff0c\u5e76\u8bf7\u786e\u4fdd\u672c\u673a\u70ed\u70b9\u5904\u4e8e\u5173\u95ed\u72b6\u6001\uff0c\u6216\u91cd\u65b0\u641c\u7d22\u623f\u95f4"

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/l0;->f(Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightDisconnectDialog:Lcom/join/mgps/dialog/l0;

    new-instance v0, Lcom/join/mgps/activity/ApFightActivity$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity$a;-><init>(Lcom/join/mgps/activity/ApFightActivity;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/l0;->h(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/join/mgps/activity/ApFightActivity;->isConnectSuccessed:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_7
    :goto_0
    return-void
.end method


# virtual methods
.method afterStartGame()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0xbb8L
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->closeServer()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method afterViews()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isWranAp:Z

    .line 4
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x384

    .line 5
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/join/mgps/activity/ApFightActivity;->suiji:I

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gName:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->romPath:Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->plugin_num:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gName:Ljava/lang/String;

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x6

    if-le v1, v4, :cond_0

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->gName:Ljava/lang/String;

    .line 13
    :cond_0
    new-instance v0, Lcom/join/mgps/helper/MGFightServerManager;

    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightConnectListener:Ll1/c;

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/helper/MGFightServerManager;-><init>(Landroid/content/Context;Ll1/c;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightServerManager:Lcom/join/mgps/helper/MGFightServerManager;

    .line 14
    new-instance v0, Lcom/join/mgps/helper/MGFightClientManager;

    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightConnectListener:Ll1/c;

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/helper/MGFightClientManager;-><init>(Landroid/content/Context;Ll1/c;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightClientManager:Lcom/join/mgps/helper/MGFightClientManager;

    .line 15
    new-instance v0, Lcom/join/mgps/helper/MGWifiFightServerManger;

    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightConnectListener:Ll1/c;

    iget-object v2, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/activity/ApFightActivity;->gName:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/join/mgps/helper/MGWifiFightServerManger;-><init>(Landroid/content/Context;Ll1/c;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightServerManger:Lcom/join/mgps/helper/MGWifiFightServerManger;

    .line 16
    new-instance v0, Lcom/join/mgps/helper/MGWifiFightClientManger;

    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightConnectListener:Ll1/c;

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/helper/MGWifiFightClientManger;-><init>(Landroid/content/Context;Ll1/c;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightClientManger:Lcom/join/mgps/helper/MGWifiFightClientManger;

    .line 17
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->lcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/join/mgps/activity/ApFightActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ApFightActivity$c;-><init>(Lcom/join/mgps/activity/ApFightActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f010037

    .line 19
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->beginAnimation:Landroid/view/animation/Animation;

    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->modeIconWifi:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->performClick()Z

    .line 21
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->btnAnimation:Landroid/view/animation/Animation;

    .line 22
    new-instance v0, Lru/alexbykov/nopermission/b;

    invoke-direct {v0, p0}, Lru/alexbykov/nopermission/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mPermissionHelper:Lru/alexbykov/nopermission/b;

    return-void
.end method

.method backClicked()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const-string v0, "a---------"

    .line 1
    invoke-static {v0}, Lcom/join/mgps/Util/t0;->g(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->hideFrame()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 5
    sput v0, Lcom/join/mgps/activity/ApFightActivity;->step:I

    .line 6
    iput-boolean v1, p0, Lcom/join/mgps/activity/ApFightActivity;->modeSwitchEnable:Z

    .line 7
    iget-boolean v1, p0, Lcom/join/mgps/activity/ApFightActivity;->isUsing:Z

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 9
    :cond_0
    iput-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isUsing:Z

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->waitHint:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->zxing_tip_lay:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->revertHint()V

    .line 13
    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isClient:Z

    if-nez v0, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->restoreServer()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    .line 15
    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isConnectSuccessed:Z

    if-nez v0, :cond_2

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->restoreClient()V

    :cond_3
    :goto_0
    return-void
.end method

.method clientBtn()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/join/mgps/activity/ApFightActivity;->lastClick:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/activity/ApFightActivity;->lastClick:J

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/WifiUtils;->getApSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_3

    iget v2, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    if-nez v2, :cond_3

    .line 5
    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isGetPermission:Z

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    const/4 v0, 0x2

    .line 6
    iput v0, p0, Lcom/join/mgps/activity/ApFightActivity;->type:I

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity;->getDeviceInfo()V

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/WifiUtils;->getApSSIDAll(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->getSSID:Ljava/lang/String;

    const-string v2, "unknown id"

    .line 9
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u4f60\u5df2\u62d2\u7edd\u6743\u9650\u7533\u8bf7\uff0c\u65e0\u6cd5\u5bf9\u6218\uff01"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    :cond_3
    const/16 v2, 0x1a

    if-lt v1, v2, :cond_5

    .line 11
    iget v3, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    if-nez v3, :cond_5

    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->k(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 12
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/join/mgps/activity/ApFightActivity;->gName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 13
    :cond_4
    new-instance v0, Lcom/join/mgps/customview/p;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/p;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "papa_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/ApFightActivity;->gName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/p;->c(Ljava/lang/String;)V

    .line 16
    new-instance v1, Lcom/join/mgps/activity/ApFightActivity$i;

    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/ApFightActivity$i;-><init>(Lcom/join/mgps/activity/ApFightActivity;Lcom/join/mgps/customview/p;)V

    const-string v2, "\u53bb\u8fde\u63a5"

    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/customview/p;->e(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void

    :cond_5
    if-ge v1, v2, :cond_6

    .line 17
    iget v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    if-eqz v0, :cond_6

    .line 18
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->OpenWifi()V

    .line 20
    :cond_6
    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->apBtnEnable:Z

    if-nez v0, :cond_8

    .line 21
    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isClient:Z

    if-eqz v0, :cond_7

    goto :goto_0

    .line 22
    :cond_7
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u4f60\u5df2\u7ecf\u662f\u4e3b\u673a"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 23
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->revertHint()V

    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lcom/join/mgps/activity/ApFightActivity;->statType:I

    .line 26
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/join/mgps/activity/ApFightActivity;->statType:I

    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v6

    iget-object v7, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

    invoke-virtual {v6, v7, p0}, Lg1/f;->H(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/papa/sim/statistic/p;->G(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 27
    iput-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isUsing:Z

    .line 28
    iput-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isClient:Z

    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->waitHint:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    if-nez v0, :cond_9

    .line 31
    invoke-direct {p0, v1, v2}, Lcom/join/mgps/activity/ApFightActivity;->showClientLoading(ILjava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightClientManager:Lcom/join/mgps/helper/MGFightClientManager;

    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/helper/MGFightClientManager;->setGameName(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightClientManager:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-virtual {v0}, Lcom/join/mgps/helper/MGFightClientManager;->connect()V

    goto :goto_1

    .line 34
    :cond_9
    invoke-static {p0}, Lcom/join/mgps/activity/FightWifiInputDialogActivity_;->G0(Landroid/content/Context;)Lcom/join/mgps/activity/FightWifiInputDialogActivity_$c;

    move-result-object v0

    const/16 v1, 0x2329

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/FightWifiInputDialogActivity_$c;->startForResult(I)Lorg/androidannotations/api/builder/f;

    :goto_1
    return-void
.end method

.method closeBeginAnim()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->p1status_btn_around_img:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->p1status_btn_around_img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method

.method public closeServer()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightServerManager:Lcom/join/mgps/helper/MGFightServerManager;

    invoke-virtual {v0}, Lcom/join/mgps/helper/MGFightServerManager;->disConnect()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightServerManager:Lcom/join/mgps/helper/MGFightServerManager;

    invoke-virtual {v0}, Lcom/join/mgps/helper/MGFightServerManager;->shutDown()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightServerManger:Lcom/join/mgps/helper/MGWifiFightServerManger;

    invoke-virtual {v0}, Lcom/join/mgps/helper/MGWifiFightServerManger;->disConnect()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightServerManger:Lcom/join/mgps/helper/MGWifiFightServerManger;

    invoke-virtual {v0}, Lcom/join/mgps/helper/MGWifiFightServerManger;->shutDownServer()V

    :goto_0
    return-void
.end method

.method public connectToChosen(Landroid/content/Intent;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "FIGHT_JOIN_SERVER"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightServerChoseDialog:Lcom/join/mgps/dialog/n0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightServerChoseDialog:Lcom/join/mgps/dialog/n0;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->wifiInfo:Landroid/net/wifi/WifiInfo;

    const-string v0, "ssid"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->specifiedSSID:Ljava/lang/String;

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "connect to specifiedSSID ::"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->specifiedSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->specifiedSSID:Ljava/lang/String;

    if-nez p1, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightServerChoseDialog:Lcom/join/mgps/dialog/n0;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->wifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, ""

    :goto_0
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->specifiedSSID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6b63\u5728\u8fdb\u5165\u623f\u95f4\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiApList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\u8bf7\u7a0d\u5019..."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/join/mgps/activity/ApFightActivity;->showClientLoading(ILjava/lang/String;)V

    .line 13
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightClientManager:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightClientManager;->connectToChosen()V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightServerChoseDialog:Lcom/join/mgps/dialog/n0;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 16
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6b63\u5728\u8fdb\u5165\u623f\u95f4"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->specifiedSSID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\u8bf7\u7a0d\u5019..."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/join/mgps/activity/ApFightActivity;->showClientLoading(ILjava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightClientManager:Lcom/join/mgps/helper/MGFightClientManager;

    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->specifiedSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/join/mgps/helper/MGFightClientManager;->connectToChosen(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightServerChoseDialog:Lcom/join/mgps/dialog/n0;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :goto_1
    return-void
.end method

.method disConnectWifiFightAPClient()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightClientManager:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-virtual {v0}, Lcom/join/mgps/helper/MGFightClientManager;->disConnect()V

    return-void
.end method

.method disConnectWifiFightClient()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightClientManger:Lcom/join/mgps/helper/MGWifiFightClientManger;

    invoke-virtual {v0}, Lcom/join/mgps/helper/MGWifiFightClientManger;->disConnect()V

    return-void
.end method

.method public dismissLoading()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightCreateServerDialog:Lcom/join/mgps/dialog/k0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method fightStartClicked()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->H(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightServerManager:Lcom/join/mgps/helper/MGFightServerManager;

    invoke-virtual {v0}, Lcom/join/mgps/helper/MGFightServerManager;->startGame()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightServerManger:Lcom/join/mgps/helper/MGWifiFightServerManger;

    invoke-virtual {v0}, Lcom/join/mgps/helper/MGWifiFightServerManger;->startGame()V

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->startGameServer()V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->afterStartGame()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method hideFrame()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->ap_net_match_info_1p_frame:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->ap_net_match_info_2p_frame:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method modeIconAP()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->modeSwitchEnable:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u6e38\u620f\u521b\u5efa\u6210\u529f\uff0c\u60a8\u5f53\u524d\u65e0\u6cd5\u5207\u6362\u6a21\u5f0f\u54e6~"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->restoreServer()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->modeIconWifi:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080855

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->modeIconAP:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080851

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->hint:Landroid/widget/TextView;

    const v1, 0x7f11002f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    .line 9
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity;->resetClientBtn()V

    :cond_1
    return-void
.end method

.method modeIconWifi()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->modeSwitchEnable:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u6e38\u620f\u521b\u5efa\u6210\u529f\uff0c\u60a8\u5f53\u524d\u65e0\u6cd5\u5207\u6362\u6a21\u5f0f\u54e6~"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->hint:Landroid/widget/TextView;

    const v1, 0x7f110467

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->modeIconWifi:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080854

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->modeIconAP:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080852

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity;->resetClientBtn()V

    .line 9
    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isClient:Z

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->closeServer()V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->restoreServer()V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->disConnectWifiFightAPClient()V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->restoreClient()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const-string v0, "\u6b63\u5728\u8fdb\u5165\u623f\u95f4,\u8bf7\u7a0d\u5019..."

    const/16 v2, 0x2329

    if-ne p1, v2, :cond_0

    const/16 v2, 0x232a

    if-ne p2, v2, :cond_0

    .line 3
    invoke-direct {p0, v1, v0}, Lcom/join/mgps/activity/ApFightActivity;->showClientLoading(ILjava/lang/String;)V

    .line 4
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "ip"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->mServerIp:Ljava/lang/String;

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightClientManger:Lcom/join/mgps/helper/MGWifiFightClientManger;

    iget-object p3, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lcom/join/mgps/helper/MGWifiFightClientManger;->connect(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const-string v2, "result"

    const/4 v3, -0x1

    if-ne p2, v3, :cond_2

    .line 6
    iget v4, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    if-ne v4, v1, :cond_2

    .line 7
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->mServerIp:Ljava/lang/String;

    .line 8
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ApFightActivity;->checkWifiIp(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-direct {p0, v1, v0}, Lcom/join/mgps/activity/ApFightActivity;->showClientLoading(ILjava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightClientManger:Lcom/join/mgps/helper/MGWifiFightClientManger;

    iget-object p2, p0, Lcom/join/mgps/activity/ApFightActivity;->mServerIp:Ljava/lang/String;

    iget-object p3, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/join/mgps/helper/MGWifiFightClientManger;->connect(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string p2, "\u60a8\u626b\u63cf\u7684\u4e0d\u662fWIFI\u6a21\u5f0f\u8054\u673a\u4e8c\u7ef4\u7801\u54e6~"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-ne p2, v3, :cond_5

    .line 12
    iget p2, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    if-nez p2, :cond_5

    .line 13
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "papa"

    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/join/mgps/activity/ApFightActivity;->gName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 15
    :cond_3
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string p2, "\u60a8\u626b\u63cf\u7684\u4e0d\u662f\u70ed\u70b9\u6a21\u5f0f\u8054\u673a\u4e8c\u7ef4\u7801\u54e6~"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p2, 0x0

    const-string p3, ""

    .line 16
    invoke-direct {p0, p2, p3}, Lcom/join/mgps/activity/ApFightActivity;->showClientLoading(ILjava/lang/String;)V

    .line 17
    iget-object p2, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightClientManager:Lcom/join/mgps/helper/MGFightClientManager;

    iget-object p3, p0, Lcom/join/mgps/activity/ApFightActivity;->gName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/join/mgps/helper/MGFightClientManager;->setGameName(Ljava/lang/String;)V

    .line 18
    iget-object p2, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightClientManager:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-virtual {p2, p1}, Lcom/join/mgps/helper/MGFightClientManager;->connect(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/16 p2, 0x59

    if-ne p1, p2, :cond_6

    .line 19
    iget p1, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    if-nez p1, :cond_6

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->clientBtn()V

    :cond_6
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->backClicked()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightServerManger:Lcom/join/mgps/helper/MGWifiFightServerManger;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/helper/MGWifiFightServerManger;->unregisterBroadCast()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightClientManger:Lcom/join/mgps/helper/MGWifiFightClientManger;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/helper/MGWifiFightClientManger;->unregisterBroadCast()V

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isClient:Z

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightServerManager:Lcom/join/mgps/helper/MGFightServerManager;

    invoke-virtual {v0}, Lcom/join/mgps/helper/MGFightServerManager;->disConnect()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightServerManager:Lcom/join/mgps/helper/MGFightServerManager;

    invoke-virtual {v0}, Lcom/join/mgps/helper/MGFightServerManager;->shutDown()V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->disConnectWifiFightAPClient()V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFightActivity()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightDisconnectDialog:Lcom/join/mgps/dialog/l0;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightClientManager:Lcom/join/mgps/helper/MGFightClientManager;

    if-eqz v0, :cond_4

    .line 13
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/helper/MGFightClientManager;->getmWifiapBroadcast()Lcom/join/mgps/broadcast/WifiapBroadcast;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :catch_0
    :cond_4
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const v0, 0x1869e

    if-eq p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mPermissionHelper:Lru/alexbykov/nopermission/b;

    invoke-virtual {v0, p1, p2, p3}, Lru/alexbykov/nopermission/b;->q(I[Ljava/lang/String;[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    aget p2, p3, p1

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "android.permission.ACCESS_WIFI_STATE"

    .line 5
    invoke-static {p0, p2}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "\u5bf9\u6218\u9700\u8981\u7f51\u7edc\u6743\u9650,\u8bf7\u6388\u6743\u7f51\u7edc\u6743\u9650(\u90e8\u5206\u624b\u673a\u663e\u793a\u7f51\u7edc\u4e0e\u5b9a\u4f4d\u6743\u9650)"

    .line 6
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    const-string p2, "\u6ca1\u6709\u83b7\u53d6\u5230\u6743\u9650,\u5bf9\u6218\u9700\u8981\u7f51\u7edc\u6743\u9650,\u8bf7\u6388\u6743\u7f51\u7edc\u6743\u9650(\u90e8\u5206\u624b\u673a\u663e\u793a\u7f51\u7edc\u4e0e\u5b9a\u4f4d\u6743\u9650)"

    .line 8
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->isWifiEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isWifiConnectedBefore()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->ssidBefore()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    invoke-virtual {v1}, Lcom/join/mgps/Util/WifiUtils;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ssid original is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    invoke-virtual {v1}, Lcom/join/mgps/Util/WifiUtils;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isWifiConnectedBefore:Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isWifiConnectedBefore()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightDisconnectDialog:Lcom/join/mgps/dialog/l0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFightActivity()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onStop()V

    return-void
.end method

.method openBeginAnim()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->p1status_btn_around_img:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->p1status_btn_around_img:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->btnAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method restoreClient()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->modeSwitchEnable:Z

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->apBtnEnable:Z

    .line 3
    iget v1, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->disConnectWifiFightAPClient()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->disConnectWifiFightClient()V

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightServerIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0808f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightClientIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity;->resetClientBtn()V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->zxingBtn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    const v3, 0x7f080090

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->serverBrandName:Landroid/widget/TextView;

    const-string v3, "\u6211\u662f\u4e3b\u673a"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->clientBrandName:Landroid/widget/TextView;

    const-string v3, "\u6211\u662f\u5ba2\u673a"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->revertHint()V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->waitHint:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->num:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->lcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method restoreServer()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->modeSwitchEnable:Z

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->apBtnEnable:Z

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightServerManger:Lcom/join/mgps/helper/MGWifiFightServerManger;

    invoke-virtual {v1}, Lcom/join/mgps/helper/MGWifiFightServerManger;->disConnect()V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightServerManger:Lcom/join/mgps/helper/MGWifiFightServerManger;

    invoke-virtual {v1}, Lcom/join/mgps/helper/MGWifiFightServerManger;->shutDown()V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    iget-object v2, p0, Lcom/join/mgps/activity/ApFightActivity;->apName:Ljava/lang/String;

    const-string v3, "12345678"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/join/mgps/Util/WifiUtils;->setHotSpot(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightServerManager:Lcom/join/mgps/helper/MGFightServerManager;

    invoke-virtual {v1}, Lcom/join/mgps/helper/MGFightServerManager;->disConnect()V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->mgFightServerManager:Lcom/join/mgps/helper/MGFightServerManager;

    invoke-virtual {v1}, Lcom/join/mgps/helper/MGFightServerManager;->shutDown()V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightServerManger:Lcom/join/mgps/helper/MGWifiFightServerManger;

    invoke-virtual {v1}, Lcom/join/mgps/helper/MGWifiFightServerManger;->shutDownServer()V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightStart:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightServerIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0808f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightClientIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->closeBeginAnim()V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->hideFrame()V

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->serverBrandName:Landroid/widget/TextView;

    const-string v2, "\u6211\u662f\u4e3b\u673a"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    const v2, 0x7f080090

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->clientBrandName:Landroid/widget/TextView;

    const-string v2, "\u6211\u662f\u5ba2\u673a"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity;->resetClientBtn()V

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->zxingBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->zxingBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->revertHint()V

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->lcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->num:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->waitHint:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/WifiUtils;->openWifi(Landroid/content/Context;)V

    return-void
.end method

.method revertHint()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->hint:Landroid/widget/TextView;

    const v1, 0x7f11002f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->hint:Landroid/widget/TextView;

    const v1, 0x7f110467

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method serverBtn()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/join/mgps/activity/ApFightActivity;->lastClick:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/activity/ApFightActivity;->lastClick:J

    .line 3
    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->apBtnEnable:Z

    if-nez v0, :cond_2

    .line 4
    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isClient:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u4f60\u5df2\u7ecf\u662f\u5ba2\u673a"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isUsing:Z

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aisUsing----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/join/mgps/activity/ApFightActivity;->isUsing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/t0;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isClient:Z

    .line 9
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/p;->C(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 11
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity;->createServer()V

    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/k0;

    const v1, 0x7f12014a

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/k0;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightCreateServerDialog:Lcom/join/mgps/dialog/k0;

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method showP1Frame()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->ap_net_match_info_1p_frame:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method showP2Frame()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->ap_net_match_info_2p_frame:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method startGameClient()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/ApFightActivity;->romPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/activity/ApFightActivity;->plugin_num:Ljava/lang/String;

    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_area_val()J

    move-result-wide v6

    iget-object v8, p0, Lcom/join/mgps/activity/ApFightActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v4, 0x2

    const-string v5, "192.168.43.1"

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/join/mgps/Util/UtilsMy;->i3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method startGameClientWifi()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/ApFightActivity;->romPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/activity/ApFightActivity;->plugin_num:Ljava/lang/String;

    iget-object v5, p0, Lcom/join/mgps/activity/ApFightActivity;->mServerIp:Ljava/lang/String;

    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_area_val()J

    move-result-wide v6

    iget-object v8, p0, Lcom/join/mgps/activity/ApFightActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v4, 0x2

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/join/mgps/Util/UtilsMy;->i3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method startGameServer()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/ApFightActivity;->romPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/activity/ApFightActivity;->plugin_num:Ljava/lang/String;

    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_area_val()J

    move-result-wide v6

    iget-object v8, p0, Lcom/join/mgps/activity/ApFightActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v4, 0x1

    const-string v5, ""

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/join/mgps/Util/UtilsMy;->i3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method zxingBtn()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/WifiUtils;->getApSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_2

    iget v3, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    if-nez v3, :cond_2

    .line 3
    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isGetPermission:Z

    if-nez v0, :cond_0

    if-nez v3, :cond_0

    .line 4
    iput v2, p0, Lcom/join/mgps/activity/ApFightActivity;->type:I

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity;->getDeviceInfo()V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/WifiUtils;->getApSSIDAll(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->getSSID:Ljava/lang/String;

    const-string v3, "unknown id"

    .line 7
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u4f60\u5df2\u62d2\u7edd\u6743\u9650\u7533\u8bf7\uff0c\u65e0\u6cd5\u5bf9\u6218\uff01"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    :cond_2
    const/16 v3, 0x1a

    if-lt v1, v3, :cond_4

    .line 9
    iget v1, p0, Lcom/join/mgps/activity/ApFightActivity;->mode:I

    if-nez v1, :cond_4

    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->k(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 11
    :cond_3
    new-instance v0, Lcom/join/mgps/customview/p;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/p;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "papa_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/ApFightActivity;->gName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/p;->c(Ljava/lang/String;)V

    .line 14
    new-instance v1, Lcom/join/mgps/activity/ApFightActivity$g;

    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/ApFightActivity$g;-><init>(Lcom/join/mgps/activity/ApFightActivity;Lcom/join/mgps/customview/p;)V

    const-string v2, "\u53bb\u8fde\u63a5"

    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/customview/p;->e(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void

    .line 15
    :cond_4
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->OpenWifi()V

    .line 17
    :cond_5
    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->apBtnEnable:Z

    if-nez v0, :cond_7

    .line 18
    iget-boolean v0, p0, Lcom/join/mgps/activity/ApFightActivity;->isClient:Z

    if-eqz v0, :cond_6

    goto :goto_0

    .line 19
    :cond_6
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u4f60\u5df2\u7ecf\u662f\u4e3b\u673a"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 20
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->revertHint()V

    .line 21
    iput-boolean v2, p0, Lcom/join/mgps/activity/ApFightActivity;->isUsing:Z

    .line 22
    iput-boolean v2, p0, Lcom/join/mgps/activity/ApFightActivity;->isClient:Z

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->waitHint:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    .line 24
    iput v0, p0, Lcom/join/mgps/activity/ApFightActivity;->statType:I

    .line 25
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/join/mgps/activity/ApFightActivity;->statType:I

    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    iget-object v5, p0, Lcom/join/mgps/activity/ApFightActivity;->gId:Ljava/lang/String;

    invoke-virtual {v4, v5, p0}, Lg1/f;->H(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/papa/sim/statistic/p;->G(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 26
    new-instance v0, Lcom/tbruyelle/rxpermissions2/c;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/c;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const-string v1, "android.permission.CAMERA"

    .line 27
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/c;->r([Ljava/lang/String;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ApFightActivity$h;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ApFightActivity$h;-><init>(Lcom/join/mgps/activity/ApFightActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->B5(Lw2/g;)Lio/reactivex/disposables/b;

    return-void
.end method

.method zxingCloseBtn()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->zxing_lay:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method zxingTipBtn()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->zxing_lay:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
