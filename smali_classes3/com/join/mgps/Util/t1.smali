.class public Lcom/join/mgps/Util/t1;
.super Ljava/lang/Object;
.source "ShortcutUtil.java"


# static fields
.field public static final a:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6

    if-nez p3, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f080690

    invoke-static {p3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p3

    :cond_0
    if-nez p3, :cond_1

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p0

    const-string p1, "\u521b\u5efa\u5931\u8d25\uff01"

    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/high16 v2, 0x4000000

    const-string v3, "shortcutGameId"

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    if-lt v0, v1, :cond_2

    const-string v0, "shortcut"

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 5
    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    const-class v4, Lcom/join/mgps/activity/MGMainActivity_;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 8
    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 10
    new-instance v2, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-direct {v2, p0, p1}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    invoke-static {p3}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p3

    .line 12
    invoke-virtual {p3, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    .line 13
    invoke-virtual {p1, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    .line 15
    new-instance p3, Landroid/content/Intent;

    const-class v1, Lcom/join/mgps/receiver/ShortcutReceiver;

    invoke-direct {p3, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x8000000

    invoke-static {p0, v5, p3, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 16
    invoke-virtual {p3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    .line 17
    invoke-static {p0, p2}, Lcom/join/mgps/Util/t1;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "duplicate"

    .line 19
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.NAME"

    .line 20
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    const/16 v1, 0x8e

    .line 21
    invoke-static {p3, v1, v1, p1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p3, "android.intent.extra.shortcut.ICON"

    .line 22
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 23
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    const-class p3, Lcom/join/mgps/activity/MGMainActivity_;

    invoke-virtual {p1, p0, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p3, "android.intent.category.LAUNCHER"

    .line 27
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "android.intent.extra.shortcut.INTENT"

    .line 28
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 30
    invoke-static {p0, p2}, Lcom/join/mgps/Util/t1;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    :cond_3
    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p3, Lcom/join/mgps/Util/t1$a;

    invoke-direct {p3, p0, p2}, Lcom/join/mgps/Util/t1$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/high16 v2, 0x4000000

    const-string v3, "shortcutGameId"

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    if-lt v0, v1, :cond_1

    const-string v0, "shortcut"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 3
    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    const-class v4, Lcom/join/mgps/activity/MGMainActivity_;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8
    new-instance v2, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-direct {v2, p0, p1}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    invoke-static {p3}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p3

    .line 10
    invoke-virtual {p3, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    .line 13
    new-instance p3, Landroid/content/Intent;

    const-class v1, Lcom/join/mgps/receiver/ShortcutReceiver;

    invoke-direct {p3, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x8000000

    invoke-static {p0, v5, p3, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 14
    invoke-virtual {p3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    .line 15
    invoke-static {p0, p2}, Lcom/join/mgps/Util/t1;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "duplicate"

    .line 17
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.NAME"

    .line 18
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    const/16 v1, 0x8e

    .line 19
    invoke-static {p3, v1, v1, p1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p3, "android.intent.extra.shortcut.ICON"

    .line 20
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 21
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    const-class p3, Lcom/join/mgps/activity/MGMainActivity_;

    invoke-virtual {p1, p0, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 23
    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p3, "android.intent.category.LAUNCHER"

    .line 25
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "android.intent.extra.shortcut.INTENT"

    .line 26
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 28
    invoke-static {p0, p2}, Lcom/join/mgps/Util/t1;->d(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    new-instance v1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->addedShortcutGames()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->addedShortcutGames()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->addedShortcutGames()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->addedShortcutGames()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->addedShortcutGames()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, ""

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 7
    :goto_0
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->addedShortcutGames()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
