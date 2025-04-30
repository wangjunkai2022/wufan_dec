.class public final Lcom/join/mgps/va/overmind/a;
.super Ljava/lang/Object;
.source "ArchiveUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/va/overmind/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0018\u0000 \u00042\u00020\u0001:\u0001\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/join/mgps/va/overmind/a;",
        "",
        "<init>",
        "()V",
        "b",
        "a",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static a:J

.field public static final b:Lcom/join/mgps/va/overmind/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/join/mgps/va/overmind/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/mgps/va/overmind/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/join/mgps/va/overmind/a;->b:Lcom/join/mgps/va/overmind/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/join/mgps/va/overmind/a;->a:J

    return-wide v0
.end method

.method public static final synthetic b(J)V
    .locals 0

    .line 1
    sput-wide p0, Lcom/join/mgps/va/overmind/a;->a:J

    return-void
.end method
