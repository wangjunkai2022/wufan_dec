.class Lcom/ss/android/downloadlib/c/h$a;
.super Ljava/lang/Object;
.source "NotificationPusher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/ss/android/downloadlib/c/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ss/android/downloadlib/c/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/c/h;-><init>(Lcom/ss/android/downloadlib/c/h$1;)V

    sput-object v0, Lcom/ss/android/downloadlib/c/h$a;->a:Lcom/ss/android/downloadlib/c/h;

    return-void
.end method

.method static synthetic a()Lcom/ss/android/downloadlib/c/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/c/h$a;->a:Lcom/ss/android/downloadlib/c/h;

    return-object v0
.end method
