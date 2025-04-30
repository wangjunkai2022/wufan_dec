.class public Lcom/sdk/f/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdk/f/g$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Z

.field public static c:Z

.field public static d:Z

.field public static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "installTime"

    sput-object v0, Lcom/sdk/f/g;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sdk/f/g;->b:Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/sdk/f/g;->c:Z

    sput-boolean v0, Lcom/sdk/f/g;->d:Z

    sput-boolean v0, Lcom/sdk/f/g;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
