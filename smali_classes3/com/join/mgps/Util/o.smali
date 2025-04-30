.class public Lcom/join/mgps/Util/o;
.super Ljava/lang/Object;
.source "CheckInviteFightUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p0

    invoke-virtual {p0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static c(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "clipboard"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    .line 4
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 4

    .line 1
    instance-of v0, p0, Lcom/join/mgps/activity/ApFightActivity_;

    if-nez v0, :cond_5

    instance-of v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity_;

    if-nez v0, :cond_5

    instance-of v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity_;

    if-nez v0, :cond_5

    instance-of v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    if-nez v0, :cond_5

    instance-of v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity_;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->firstShowUserPermiss()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_5

    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/o;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5927\u5385\u5bf9\u6218"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "\u60a8\u662f\u6e38\u5ba2\u65e0\u6cd5\u8fdb\u5165\u6e38\u620f\u5927\u5385\uff0c\u8bf7\u5b8c\u5584\u8d26\u53f7"

    if-eqz v1, :cond_3

    .line 8
    :try_start_1
    invoke-static {p0}, Lcom/join/mgps/Util/o;->b(Landroid/content/Context;)V

    .line 9
    invoke-static {p0}, Lcom/join/mgps/Util/o;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity_;->i1(Landroid/content/Context;)Lcom/join/mgps/activity/CheckInviteDialogActivity_$o;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CheckInviteDialogActivity_$o;->a(Ljava/lang/String;)Lcom/join/mgps/activity/CheckInviteDialogActivity_$o;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    .line 12
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6253\u5f00"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x1f449

    invoke-static {v3}, Lcom/join/mgps/Util/o;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u609f\u996d\u6e38\u620f\u5385"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x1f448

    invoke-static {v3}, Lcom/join/mgps/Util/o;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    invoke-static {p0}, Lcom/join/mgps/Util/o;->b(Landroid/content/Context;)V

    .line 14
    invoke-static {p0}, Lcom/join/mgps/Util/o;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 15
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 16
    :cond_4
    invoke-static {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity_;->i1(Landroid/content/Context;)Lcom/join/mgps/activity/CheckInviteDialogActivity_$o;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CheckInviteDialogActivity_$o;->a(Ljava/lang/String;)Lcom/join/mgps/activity/CheckInviteDialogActivity_$o;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_5
    :goto_0
    return-void
.end method

.method static f(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/o;->a(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p0

    invoke-virtual {p0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
