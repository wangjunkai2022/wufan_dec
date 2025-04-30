.class public Lcom/join/mgps/va/service/MessengerService;
.super Landroid/app/Service;
.source "MessengerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/va/service/MessengerService$IncomingHandler;
    }
.end annotation


# static fields
.field public static final A:I = 0x1f

.field public static final B:Ljava/lang/String; = "com.upload.wufun.screenshot"

.field private static final a:I = 0x1

.field private static final b:I = 0x2

.field private static final c:I = 0x3

.field private static final d:I = 0x4

.field private static final e:I = 0x5

.field private static final f:I = 0x6

.field private static final g:I = 0x7

.field private static final h:I = 0x8

.field private static final i:I = 0x9

.field private static final j:I = 0xa

.field private static final k:I = 0xb

.field private static final l:I = 0xc

.field private static final m:I = 0xd

.field private static final n:I = 0xe

.field public static final o:I = 0xf

.field public static final p:I = 0x10

.field public static final q:I = 0x11

.field public static final r:I = 0x12

.field public static final s:I = 0x13

.field public static final t:I = 0x14

.field public static final u:I = 0x15

.field public static final v:I = 0x1a

.field public static final w:I = 0x1b

.field public static final x:I = 0x1c

.field public static final y:I = 0x1d

.field public static final z:I = 0x1e


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/va/service/MessengerService;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/va/service/MessengerService;->c()I

    move-result p0

    return p0
.end method

.method private c()I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/va/service/MessengerService;->b()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public b()Lcom/join/mgps/dto/AccountBean;
    .locals 6

    const-string v0, ""

    const-string v1, "accountDataV2"

    :try_start_0
    const-string v2, "PrefDef"

    const/4 v3, 0x4

    .line 1
    invoke-virtual {p0, v2, v3}, Landroid/app/Service;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAccountData: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {v3}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-static {v3}, Lcom/join/mgps/Util/AESUtils;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountBean;

    return-object v0

    :cond_0
    const-string v3, "accountData"

    .line 6
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v3

    const-class v4, Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v3, v0, v4}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/AccountBean;

    .line 9
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v3, :cond_1

    .line 10
    invoke-static {v0}, Lcom/join/mgps/Util/AESUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object v3

    .line 11
    :cond_1
    new-instance v0, Lcom/join/mgps/dto/AccountBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/AccountBean;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    new-instance v0, Lcom/join/mgps/dto/AccountBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/AccountBean;-><init>()V

    return-object v0
.end method

.method public d(Z)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.overmind.sp.write.introduction.show"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expandIntroductionView_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/join/mgps/va/service/MessengerService;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "show"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.overmind.sp.write.mod"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "sp_key"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    instance-of p1, p2, Ljava/lang/Boolean;

    const-string v1, "sp_value"

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Lcom/join/mgps/dto/SpValue;

    check-cast p2, Ljava/lang/Boolean;

    invoke-direct {p1, p2}, Lcom/join/mgps/dto/SpValue;-><init>(Ljava/io/Serializable;)V

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 5
    :cond_0
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 6
    new-instance p1, Lcom/join/mgps/dto/SpValue;

    check-cast p2, Ljava/lang/Integer;

    invoke-direct {p1, p2}, Lcom/join/mgps/dto/SpValue;-><init>(Ljava/io/Serializable;)V

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 7
    :cond_1
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 8
    new-instance p1, Lcom/join/mgps/dto/SpValue;

    check-cast p2, Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/join/mgps/dto/SpValue;-><init>(Ljava/io/Serializable;)V

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 9
    :cond_2
    instance-of p1, p2, Ljava/lang/Float;

    if-eqz p1, :cond_3

    .line 10
    new-instance p1, Lcom/join/mgps/dto/SpValue;

    check-cast p2, Ljava/lang/Float;

    invoke-direct {p1, p2}, Lcom/join/mgps/dto/SpValue;-><init>(Ljava/io/Serializable;)V

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 11
    :cond_3
    instance-of p1, p2, Ljava/lang/Long;

    if-eqz p1, :cond_4

    .line 12
    new-instance p1, Lcom/join/mgps/dto/SpValue;

    check-cast p2, Ljava/lang/Long;

    invoke-direct {p1, p2}, Lcom/join/mgps/dto/SpValue;-><init>(Ljava/io/Serializable;)V

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 13
    :cond_4
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance p1, Landroid/os/Messenger;

    new-instance v0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;

    invoke-direct {v0, p0, p0}, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;-><init>(Lcom/join/mgps/va/service/MessengerService;Landroid/content/Context;)V

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method
