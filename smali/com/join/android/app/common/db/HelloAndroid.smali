.class public Lcom/join/android/app/common/db/HelloAndroid;
.super Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;
.source "HelloAndroid.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity<",
        "Lcom/join/android/app/common/db/DatabaseHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/HelloAndroid;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "creating "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " at "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "onCreate"

    .line 4
    invoke-direct {p0, v0, p1}, Lcom/join/android/app/common/db/HelloAndroid;->a(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method
