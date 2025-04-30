.class public final Lcom/join/mgps/service/UpdateService_;
.super Lcom/join/mgps/service/UpdateService;
.source "UpdateService_.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/service/UpdateService_$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/service/UpdateService;-><init>()V

    return-void
.end method

.method public static p(Landroid/content/Context;)Lcom/join/mgps/service/UpdateService_$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/service/UpdateService_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/service/UpdateService_$a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
