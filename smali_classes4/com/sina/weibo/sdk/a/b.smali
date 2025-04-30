.class public final Lcom/sina/weibo/sdk/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/a/b$a;
    }
.end annotation


# instance fields
.field private J:Lcom/sina/weibo/sdk/a/a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sina/weibo/sdk/a/b;->J:Lcom/sina/weibo/sdk/a/a;

    .line 4
    new-instance v0, Lcom/sina/weibo/sdk/a/a;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/a/a;-><init>()V

    iput-object v0, p0, Lcom/sina/weibo/sdk/a/b;->J:Lcom/sina/weibo/sdk/a/a;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sina/weibo/sdk/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/sina/weibo/sdk/a/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/a/b;->J:Lcom/sina/weibo/sdk/a/a;

    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/a/a;->a(Lcom/sina/weibo/sdk/a/c;)V

    return-void
.end method
