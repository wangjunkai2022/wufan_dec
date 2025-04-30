.class public final Lcom/xinzhu/haunted/android/content/pm/h;
.super Ljava/lang/Object;
.source "HtPackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/haunted/android/content/pm/h$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "h"

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

    .line 1
    const-class v0, Landroid/content/pm/PackageInstaller;

    invoke-static {v0}, Lcom/xinzhu/haunted/d;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/xinzhu/haunted/android/content/pm/h;->b:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
