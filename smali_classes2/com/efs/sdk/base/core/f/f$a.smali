.class public final Lcom/efs/sdk/base/core/f/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/base/core/f/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/efs/sdk/base/core/f/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/efs/sdk/base/core/f/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/efs/sdk/base/core/f/f;-><init>(B)V

    sput-object v0, Lcom/efs/sdk/base/core/f/f$a;->a:Lcom/efs/sdk/base/core/f/f;

    return-void
.end method

.method public static synthetic a()Lcom/efs/sdk/base/core/f/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/efs/sdk/base/core/f/f$a;->a:Lcom/efs/sdk/base/core/f/f;

    return-object v0
.end method
