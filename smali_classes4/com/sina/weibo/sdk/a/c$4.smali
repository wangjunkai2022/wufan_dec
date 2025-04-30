.class final synthetic Lcom/sina/weibo/sdk/a/c$4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic R:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/sina/weibo/sdk/a/c$b;->m()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sina/weibo/sdk/a/c$4;->R:[I

    const/4 v1, 0x1

    :try_start_0
    sget v2, Lcom/sina/weibo/sdk/a/c$b;->V:I

    sub-int/2addr v2, v1

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sina/weibo/sdk/a/c$4;->R:[I

    sget v2, Lcom/sina/weibo/sdk/a/c$b;->W:I

    sub-int/2addr v2, v1

    const/4 v1, 0x2

    aput v1, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
