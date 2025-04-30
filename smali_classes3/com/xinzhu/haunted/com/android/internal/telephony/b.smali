.class public final Lcom/xinzhu/haunted/com/android/internal/telephony/b;
.super Ljava/lang/Object;
.source "HtIPhoneSubInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/haunted/com/android/internal/telephony/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "b"

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

    const-string v0, "com.android.internal.telephony.IPhoneSubInfo"

    .line 1
    invoke-static {v0}, Lcom/xinzhu/haunted/d;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/xinzhu/haunted/com/android/internal/telephony/b;->b:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
