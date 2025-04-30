.class public Lcn/sharesdk/framework/authorize/a;
.super Ljava/lang/Object;
.source "AuthorizeParams.java"


# static fields
.field private static volatile a:Lcn/sharesdk/framework/authorize/a;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Z


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

.method public static c()Lcn/sharesdk/framework/authorize/a;
    .locals 2

    .line 1
    const-class v0, Lcn/sharesdk/framework/authorize/a;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcn/sharesdk/framework/authorize/a;->a:Lcn/sharesdk/framework/authorize/a;

    if-nez v1, :cond_1

    .line 3
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    sget-object v1, Lcn/sharesdk/framework/authorize/a;->a:Lcn/sharesdk/framework/authorize/a;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcn/sharesdk/framework/authorize/a;

    invoke-direct {v1}, Lcn/sharesdk/framework/authorize/a;-><init>()V

    sput-object v1, Lcn/sharesdk/framework/authorize/a;->a:Lcn/sharesdk/framework/authorize/a;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 7
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    sget-object v0, Lcn/sharesdk/framework/authorize/a;->a:Lcn/sharesdk/framework/authorize/a;

    return-object v0

    :catchall_1
    move-exception v1

    .line 9
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcn/sharesdk/framework/authorize/a;->b:Landroid/app/Activity;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcn/sharesdk/framework/authorize/a;->c:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/sharesdk/framework/authorize/a;->c:Z

    return v0
.end method

.method public b()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/a;->b:Landroid/app/Activity;

    return-object v0
.end method
