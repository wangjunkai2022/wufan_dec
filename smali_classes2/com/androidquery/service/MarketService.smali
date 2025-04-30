.class public Lcom/androidquery/service/MarketService;
.super Ljava/lang/Object;
.source "MarketService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidquery/service/MarketService$Handler;
    }
.end annotation


# static fields
.field private static final BULLET:Ljava/lang/String; = "\u2022"

.field public static final MAJOR:I = 0x2

.field public static final MINOR:I = 0x1

.field public static final REVISION:I = 0x0

.field private static final SKIP_VERSION:Ljava/lang/String; = "aqs.skip"

.field private static ai:Landroid/content/pm/ApplicationInfo;

.field private static pi:Landroid/content/pm/PackageInfo;


# instance fields
.field private act:Landroid/app/Activity;

.field private aq:Lcom/androidquery/AQuery;

.field private completed:Z

.field private expire:J

.field private fetch:Z

.field private force:Z

.field private handler:Lcom/androidquery/service/MarketService$Handler;

.field private level:I

.field private locale:Ljava/lang/String;

.field private progress:I

.field private rateUrl:Ljava/lang/String;

.field private updateUrl:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xafc80

    .line 2
    iput-wide v0, p0, Lcom/androidquery/service/MarketService;->expire:J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/androidquery/service/MarketService;->level:I

    .line 4
    iput-object p1, p0, Lcom/androidquery/service/MarketService;->act:Landroid/app/Activity;

    .line 5
    new-instance v0, Lcom/androidquery/AQuery;

    invoke-direct {v0, p1}, Lcom/androidquery/AQuery;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/androidquery/service/MarketService;->aq:Lcom/androidquery/AQuery;

    .line 6
    new-instance p1, Lcom/androidquery/service/MarketService$Handler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/androidquery/service/MarketService$Handler;-><init>(Lcom/androidquery/service/MarketService;Lcom/androidquery/service/MarketService$Handler;)V

    iput-object p1, p0, Lcom/androidquery/service/MarketService;->handler:Lcom/androidquery/service/MarketService$Handler;

    .line 7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/androidquery/service/MarketService;->locale:Ljava/lang/String;

    .line 8
    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getMarketUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/androidquery/service/MarketService;->rateUrl:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/androidquery/service/MarketService;->updateUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/androidquery/service/MarketService;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/androidquery/service/MarketService;->act:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1(Lcom/androidquery/service/MarketService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/androidquery/service/MarketService;->fetch:Z

    return p0
.end method

.method static synthetic access$10(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/androidquery/service/MarketService;->openUrl(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$11(Lcom/androidquery/service/MarketService;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/androidquery/service/MarketService;->updateUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$12(Lcom/androidquery/service/MarketService;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/androidquery/service/MarketService;->version:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$13(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/androidquery/service/MarketService;->setSkipVersion(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/androidquery/service/MarketService;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/androidquery/service/MarketService;->fetch:Z

    return-void
.end method

.method static synthetic access$3(Lcom/androidquery/service/MarketService;)Lcom/androidquery/AQuery;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/androidquery/service/MarketService;->aq:Lcom/androidquery/AQuery;

    return-object p0
.end method

.method static synthetic access$4(Lcom/androidquery/service/MarketService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/androidquery/service/MarketService;->progress:I

    return p0
.end method

.method static synthetic access$5(Lcom/androidquery/service/MarketService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/androidquery/service/MarketService;->completed:Z

    return p0
.end method

.method static synthetic access$6(Lcom/androidquery/service/MarketService;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/androidquery/service/MarketService;->completed:Z

    return-void
.end method

.method static synthetic access$7(Lcom/androidquery/service/MarketService;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/androidquery/service/MarketService;->progress:I

    return-void
.end method

.method static synthetic access$8(Lcom/androidquery/service/MarketService;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getQueryUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$9(Lcom/androidquery/service/MarketService;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/androidquery/service/MarketService;->rateUrl:Ljava/lang/String;

    return-object p0
.end method

.method private getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/androidquery/service/MarketService;->act:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method private getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/androidquery/service/MarketService;->ai:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/androidquery/service/MarketService;->act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    sput-object v0, Lcom/androidquery/service/MarketService;->ai:Landroid/content/pm/ApplicationInfo;

    .line 3
    :cond_0
    sget-object v0, Lcom/androidquery/service/MarketService;->ai:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method private getHost()Ljava/lang/String;
    .locals 1

    const-string v0, "https://androidquery.appspot.com"

    return-object v0
.end method

.method private getMarketUrl()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "market://details?id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 3

    .line 1
    sget-object v0, Lcom/androidquery/service/MarketService;->pi:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/androidquery/service/MarketService;->act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getAppId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    sput-object v0, Lcom/androidquery/service/MarketService;->pi:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 4
    :cond_0
    :goto_0
    sget-object v0, Lcom/androidquery/service/MarketService;->pi:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method private getQueryUrl()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/api/market?app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&locale="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/androidquery/service/MarketService;->locale:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&version="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&code="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getVersionCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&aq="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0.26.7"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-boolean v1, p0, Lcom/androidquery/service/MarketService;->force:Z

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&force=true"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static getSkipVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "aqs.skip"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method private getVersionCode()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    return v0
.end method

.method private isActive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/service/MarketService;->act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static openUrl(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method private outdated(Ljava/lang/String;I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/androidquery/service/MarketService;->act:Landroid/app/Activity;

    invoke-static {v0}, Lcom/androidquery/service/MarketService;->getSkipVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getVersionCode()I

    move-result v2

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    if-gt v2, p2, :cond_1

    .line 6
    iget p2, p0, Lcom/androidquery/service/MarketService;->level:I

    invoke-direct {p0, v0, p1, p2}, Lcom/androidquery/service/MarketService;->requireUpdate(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method private static patchBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<small>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</small>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private requireUpdate(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5

    const-string v0, "\\."

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 4
    array-length v0, p1

    const/4 v3, 0x3

    if-lt v0, v3, :cond_6

    array-length v0, p2

    if-ge v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-eqz p3, :cond_2

    if-eq p3, v1, :cond_3

    if-eq p3, v0, :cond_4

    return v1

    .line 5
    :cond_2
    array-length p3, p1

    sub-int/2addr p3, v1

    aget-object p3, p1, p3

    array-length v4, p2

    sub-int/2addr v4, v1

    aget-object v4, p2, v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    return v1

    .line 6
    :cond_3
    array-length p3, p1

    sub-int/2addr p3, v0

    aget-object p3, p1, p3

    array-length v4, p2

    sub-int/2addr v4, v0

    aget-object v0, p2, v4

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    return v1

    .line 7
    :cond_4
    array-length p3, p1

    sub-int/2addr p3, v3

    aget-object p1, p1, p3

    array-length p3, p2

    sub-int/2addr p3, v3

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v2

    :cond_6
    :goto_0
    return v1

    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    return v1
.end method

.method private static setSkipVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "aqs.skip"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method protected callback(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p1, "version"

    const-string p3, "0"

    .line 1
    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    const-string v1, "code"

    .line 2
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getVersionCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0, p3, v0}, Lcom/androidquery/service/MarketService;->outdated(Ljava/lang/String;I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "outdated"

    invoke-static {v1, p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-boolean p1, p0, Lcom/androidquery/service/MarketService;->force:Z

    if-nez p1, :cond_1

    invoke-direct {p0, p3, v0}, Lcom/androidquery/service/MarketService;->outdated(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    :cond_1
    invoke-virtual {p0, p2}, Lcom/androidquery/service/MarketService;->showUpdateDialog(Lorg/json/JSONObject;)V

    :cond_2
    return-void
.end method

.method public checkVersion()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getQueryUrl()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/androidquery/callback/AjaxCallback;

    invoke-direct {v1}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AjaxCallback;

    const-class v2, Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lcom/androidquery/callback/AbstractAjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AjaxCallback;

    iget-object v2, p0, Lcom/androidquery/service/MarketService;->handler:Lcom/androidquery/service/MarketService$Handler;

    const-string v3, "marketCb"

    invoke-virtual {v0, v2, v3}, Lcom/androidquery/callback/AbstractAjaxCallback;->handler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AjaxCallback;

    iget-boolean v2, p0, Lcom/androidquery/service/MarketService;->force:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/androidquery/callback/AbstractAjaxCallback;->fileCache(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AjaxCallback;

    iget-wide v2, p0, Lcom/androidquery/service/MarketService;->expire:J

    invoke-virtual {v0, v2, v3}, Lcom/androidquery/callback/AbstractAjaxCallback;->expire(J)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/androidquery/service/MarketService;->aq:Lcom/androidquery/AQuery;

    iget v2, p0, Lcom/androidquery/service/MarketService;->progress:I

    invoke-virtual {v0, v2}, Lcom/androidquery/AbstractAQuery;->progress(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    check-cast v0, Lcom/androidquery/AQuery;

    invoke-virtual {v0, v1}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    return-void
.end method

.method public expire(J)Lcom/androidquery/service/MarketService;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/androidquery/service/MarketService;->expire:J

    return-object p0
.end method

.method public force(Z)Lcom/androidquery/service/MarketService;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/androidquery/service/MarketService;->force:Z

    return-object p0
.end method

.method public level(I)Lcom/androidquery/service/MarketService;
    .locals 0

    .line 1
    iput p1, p0, Lcom/androidquery/service/MarketService;->level:I

    return-object p0
.end method

.method public locale(Ljava/lang/String;)Lcom/androidquery/service/MarketService;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/androidquery/service/MarketService;->locale:Ljava/lang/String;

    return-object p0
.end method

.method public progress(I)Lcom/androidquery/service/MarketService;
    .locals 0

    .line 1
    iput p1, p0, Lcom/androidquery/service/MarketService;->progress:I

    return-object p0
.end method

.method public rateUrl(Ljava/lang/String;)Lcom/androidquery/service/MarketService;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/androidquery/service/MarketService;->rateUrl:Ljava/lang/String;

    return-object p0
.end method

.method protected showUpdateDialog(Lorg/json/JSONObject;)V
    .locals 8

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/androidquery/service/MarketService;->version:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "dialog"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "update"

    const-string v2, "Update"

    .line 4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "skip"

    const-string v3, "Skip"

    .line 5
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "rate"

    const-string v4, "Rate"

    .line 6
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "wbody"

    const-string v5, ""

    .line 7
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "title"

    const-string v7, "Update Available"

    .line 8
    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v4, v5}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "version"

    const/4 v6, 0x0

    .line 10
    invoke-virtual {p1, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/androidquery/service/MarketService;->version:Ljava/lang/String;

    .line 11
    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 12
    iget-object v4, p0, Lcom/androidquery/service/MarketService;->act:Landroid/app/Activity;

    .line 13
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {v7, p1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/androidquery/service/MarketService;->handler:Lcom/androidquery/service/MarketService$Handler;

    invoke-virtual {p1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/androidquery/service/MarketService;->handler:Lcom/androidquery/service/MarketService$Handler;

    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/androidquery/service/MarketService;->handler:Lcom/androidquery/service/MarketService$Handler;

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 20
    invoke-static {v5}, Lcom/androidquery/service/MarketService;->patchBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/androidquery/service/MarketService;->handler:Lcom/androidquery/service/MarketService$Handler;

    invoke-static {v0, v6, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Lcom/androidquery/service/MarketService;->aq:Lcom/androidquery/AQuery;

    invoke-virtual {v0, p1}, Lcom/androidquery/AbstractAQuery;->show(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;

    :cond_2
    :goto_0
    return-void
.end method

.method public updateUrl(Ljava/lang/String;)Lcom/androidquery/service/MarketService;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/androidquery/service/MarketService;->updateUrl:Ljava/lang/String;

    return-object p0
.end method
