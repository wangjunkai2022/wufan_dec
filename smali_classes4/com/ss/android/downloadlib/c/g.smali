.class public Lcom/ss/android/downloadlib/c/g;
.super Lcom/ss/android/socialbase/appdownloader/c/a;
.source "NewDownloadDepend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/c/g$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "g"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/c/a;-><init>()V

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/c/g;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/ss/android/socialbase/appdownloader/c/l;
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/android/downloadlib/c/g$1;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/downloadlib/c/g$1;-><init>(Lcom/ss/android/downloadlib/c/g;Landroid/content/Context;)V

    return-object v0
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
