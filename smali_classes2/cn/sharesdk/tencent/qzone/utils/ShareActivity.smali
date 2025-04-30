.class public Lcn/sharesdk/tencent/qzone/utils/ShareActivity;
.super Lcom/mob/tools/FakeActivity;
.source "ShareActivity.java"


# instance fields
.field private adapter:Lcn/sharesdk/tencent/qzone/utils/d;

.field private pa:Lcn/sharesdk/framework/PlatformActionListener;

.field private resultFailed:Z

.field private resultOk:Z

.field private rv:Lcn/sharesdk/framework/authorize/RegisterView;

.field private scheme:Ljava/lang/String;

.field private uriScheme:Ljava/lang/String;

.field private useClient:Z

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/sharesdk/tencent/qzone/utils/ShareActivity;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->pa:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic access$100(Lcn/sharesdk/tencent/qzone/utils/ShareActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->uriScheme:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcn/sharesdk/tencent/qzone/utils/ShareActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->afterShare(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcn/sharesdk/tencent/qzone/utils/ShareActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->launchQZone(Ljava/lang/String;)V

    return-void
.end method

.method private afterShare(Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2
    :goto_0
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_1

    .line 3
    iput-boolean v1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->resultFailed:Z

    .line 4
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 5
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->pa:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to parse callback uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    return-void

    :cond_1
    const-string v4, "action"

    .line 6
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "share"

    .line 7
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "shareToQzone"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 8
    iput-boolean v1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->resultFailed:Z

    .line 9
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 10
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->pa:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    return-void

    :cond_2
    const-string v4, "result"

    .line 11
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cancel"

    .line 12
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 14
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->pa:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p1, v3, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    return-void

    :cond_3
    const-string v5, "complete"

    .line 15
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 16
    iput-boolean v1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->resultFailed:Z

    .line 17
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 18
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->pa:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "operation failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    return-void

    :cond_4
    const-string v4, "response"

    .line 19
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 21
    iput-boolean v1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->resultFailed:Z

    .line 22
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 23
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->pa:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "response empty"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    return-void

    .line 24
    :cond_5
    iput-boolean v1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->resultOk:Z

    .line 25
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 26
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->pa:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {v0, v3, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    return-void
.end method

.method private clientShare()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->scheme:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "pkg_name"

    .line 3
    iget-object v2, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const/high16 v1, 0x14000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->pa:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 8
    invoke-interface {v1, v2, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getAdapter()Lcn/sharesdk/tencent/qzone/utils/d;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    .line 2
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 4
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "QZoneWebShareAdapter"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 8
    instance-of v2, v1, Lcn/sharesdk/tencent/qzone/utils/d;

    if-nez v2, :cond_1

    return-object v0

    .line 9
    :cond_1
    check-cast v1, Lcn/sharesdk/tencent/qzone/utils/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_2
    :goto_0
    return-object v0

    :catchall_0
    move-exception v1

    .line 10
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private launchQZone(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 5
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/mob/tools/FakeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 6
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    return-void
.end method

.method private webShare()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->getBodyView()Lcn/sharesdk/framework/authorize/RegisterView;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->rv:Lcn/sharesdk/framework/authorize/RegisterView;

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ssdk_share_to_qzone"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->rv:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getTvTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 5
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->rv:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->adapter:Lcn/sharesdk/tencent/qzone/utils/d;

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->rv:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->d()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qzone/utils/d;->a(Landroid/widget/RelativeLayout;)V

    .line 7
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->adapter:Lcn/sharesdk/tencent/qzone/utils/d;

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->rv:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qzone/utils/d;->a(Landroid/webkit/WebView;)V

    .line 8
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->adapter:Lcn/sharesdk/tencent/qzone/utils/d;

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->rv:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qzone/utils/d;->a(Lcn/sharesdk/framework/TitleLayout;)V

    .line 9
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->adapter:Lcn/sharesdk/tencent/qzone/utils/d;

    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/utils/d;->a()V

    .line 10
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->rv:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 11
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->resultFailed:Z

    .line 14
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 15
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->pa:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "failed to load webpage, network disconnected."

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    return-void

    .line 16
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->rv:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getBodyView()Lcn/sharesdk/framework/authorize/RegisterView;
    .locals 5

    .line 1
    new-instance v0, Lcn/sharesdk/framework/authorize/RegisterView;

    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/sharesdk/framework/authorize/RegisterView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->a()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcn/sharesdk/tencent/qzone/utils/ShareActivity$1;

    invoke-direct {v2, p0}, Lcn/sharesdk/tencent/qzone/utils/ShareActivity$1;-><init>(Lcn/sharesdk/tencent/qzone/utils/ShareActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->webView:Landroid/webkit/WebView;

    .line 6
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 8
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 9
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 10
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 11
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 12
    iget-object v2, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    const-string v3, "database"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 15
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 16
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 17
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcn/sharesdk/tencent/qzone/utils/ShareActivity$2;

    invoke-direct {v2, p0}, Lcn/sharesdk/tencent/qzone/utils/ShareActivity$2;-><init>(Lcn/sharesdk/tencent/qzone/utils/ShareActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    return-void
.end method

.method public onCreate()V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "cn.sharesdk.tencent.qq.ReceiveActivity"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setUriScheme"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 2
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    .line 3
    iget-object v5, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->uriScheme:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "setPlatformActionListener"

    new-array v4, v3, [Ljava/lang/Class;

    .line 4
    const-class v5, Lcn/sharesdk/framework/PlatformActionListener;

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 5
    iget-object v3, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->pa:Lcn/sharesdk/framework/PlatformActionListener;

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-boolean v1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->useClient:Z

    if-eqz v1, :cond_0

    .line 7
    invoke-direct {p0}, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->clientShare()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->webShare()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 9
    :catchall_0
    :try_start_1
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->uriScheme:Ljava/lang/String;

    invoke-static {v1}, Lcn/sharesdk/tencent/qzone/ReceiveActivity;->a(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->pa:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-static {v1}, Lcn/sharesdk/tencent/qzone/ReceiveActivity;->a(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 11
    iget-boolean v1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->useClient:Z

    if-eqz v1, :cond_1

    .line 12
    invoke-direct {p0}, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->clientShare()V

    goto :goto_0

    .line 13
    :cond_1
    invoke-direct {p0}, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->webShare()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 14
    iget-object v2, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 15
    iget-object v2, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->pa:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v2, :cond_2

    const/16 v3, 0x9

    .line 16
    invoke-interface {v2, v0, v3, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->useClient:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->resultFailed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->resultOk:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->pa:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->adapter:Lcn/sharesdk/tencent/qzone/utils/d;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/utils/d;->b()V

    :cond_2
    return-void
.end method

.method public onFinish()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->adapter:Lcn/sharesdk/tencent/qzone/utils/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/utils/d;->h()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onFinish()Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->adapter:Lcn/sharesdk/tencent/qzone/utils/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/utils/d;->d()V

    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->adapter:Lcn/sharesdk/tencent/qzone/utils/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/utils/d;->g()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->adapter:Lcn/sharesdk/tencent/qzone/utils/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/utils/d;->e()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->adapter:Lcn/sharesdk/tencent/qzone/utils/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/utils/d;->c()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->adapter:Lcn/sharesdk/tencent/qzone/utils/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/utils/d;->f()V

    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/mob/tools/FakeActivity;->setActivity(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->adapter:Lcn/sharesdk/tencent/qzone/utils/d;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->getAdapter()Lcn/sharesdk/tencent/qzone/utils/d;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->adapter:Lcn/sharesdk/tencent/qzone/utils/d;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcn/sharesdk/tencent/qzone/utils/d;

    invoke-direct {v0}, Lcn/sharesdk/tencent/qzone/utils/d;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->adapter:Lcn/sharesdk/tencent/qzone/utils/d;

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->adapter:Lcn/sharesdk/tencent/qzone/utils/d;

    invoke-virtual {v0, p1}, Lcn/sharesdk/tencent/qzone/utils/d;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tencent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->uriScheme:Ljava/lang/String;

    return-void
.end method

.method public setScheme(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->scheme:Ljava/lang/String;

    .line 2
    iput-boolean p2, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->useClient:Z

    return-void
.end method

.method public setSharedCallback(Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->pa:Lcn/sharesdk/framework/PlatformActionListener;

    return-void
.end method
