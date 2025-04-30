.class public final Lcom/xinzhu/haunted/android/os/m;
.super Ljava/lang/Object;
.source "HtIVibratorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/haunted/android/os/m$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "m"

.field public static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.os.IVibratorManagerService"

    .line 1
    invoke-static {v0}, Lcom/xinzhu/haunted/d;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/xinzhu/haunted/android/os/m;->b:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
