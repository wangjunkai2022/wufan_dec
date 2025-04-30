.class public abstract Lcom/bytedance/pangle/servermanager/AbsServerManager;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field static final ACTIVITY_QUERY_BINDER:Ljava/lang/String; = "activity"

.field static final BUNDLE_BINDER:Ljava/lang/String; = "binder"

.field static final METHOD_QUERY_BINDER:Ljava/lang/String; = "query_binder"

.field static final PACKAGE_QUERY_BINDER:Ljava/lang/String; = "package"

.field static final SERVICE_QUERY_BINDER:Ljava/lang/String; = "service"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const-string p3, "query_binder"

    .line 1
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lcom/bytedance/pangle/servermanager/AbsServerManager;->onBind(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 4
    new-instance p3, Lcom/bytedance/pangle/servermanager/a;

    invoke-direct {p3, p1}, Lcom/bytedance/pangle/servermanager/a;-><init>(Landroid/os/IBinder;)V

    const-string p1, "binder"

    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onBind(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "package"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "service"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-static {}, Lcom/bytedance/pangle/service/a/a;->b()Lcom/bytedance/pangle/service/a/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    invoke-static {}, Lcom/bytedance/pangle/e/a;->b()Lcom/bytedance/pangle/e/a;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
