.class public Lcom/cmic/sso/sdk/view/a;
.super Ljava/lang/Object;
.source "LoginProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmic/sso/sdk/view/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/cmic/sso/sdk/view/a;


# instance fields
.field private b:Lcom/cmic/sso/sdk/view/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/cmic/sso/sdk/view/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/cmic/sso/sdk/view/a;->a:Lcom/cmic/sso/sdk/view/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/cmic/sso/sdk/view/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/cmic/sso/sdk/view/a;->a:Lcom/cmic/sso/sdk/view/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/cmic/sso/sdk/view/a;

    invoke-direct {v1}, Lcom/cmic/sso/sdk/view/a;-><init>()V

    sput-object v1, Lcom/cmic/sso/sdk/view/a;->a:Lcom/cmic/sso/sdk/view/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/cmic/sso/sdk/view/a;->a:Lcom/cmic/sso/sdk/view/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/cmic/sso/sdk/view/a$a;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/cmic/sso/sdk/view/a;->b:Lcom/cmic/sso/sdk/view/a$a;

    return-void
.end method

.method public b()Lcom/cmic/sso/sdk/view/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/a;->b:Lcom/cmic/sso/sdk/view/a$a;

    return-object v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/a;->b:Lcom/cmic/sso/sdk/view/a$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/cmic/sso/sdk/view/a;->b:Lcom/cmic/sso/sdk/view/a$a;

    :cond_0
    return-void
.end method
